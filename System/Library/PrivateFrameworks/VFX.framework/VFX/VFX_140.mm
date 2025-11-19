uint64_t sub_1AFBBD7D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AFBBD824(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 720);
  v4 = *(a2 + 424);
  v18 = *(a2 + 432);
  v5 = *(a2 + 440);
  sub_1AF442324(a2, v19);
  v6 = v19[336];
  v7 = v25;
  ObjectType = swift_getObjectType();
  v9 = v20;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = v21 + v22 * v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1AF58D38C(v19);
  sub_1AF6F34C4(v9, v11, 0, 4, ObjectType);
  sub_1AF6F353C(v4, v18, v5, 0);
  sub_1AF442324(a2, v19);
  v12 = v20;
  v13 = v22 - v22 * *(a2 + 512) + v21;
  sub_1AF58D38C(v19);
  sub_1AF6F458C(v12, v13, 0, 6);
  v14 = swift_unknownObjectRetain();
  sub_1AF6F463C(v14, v18, v5, 0);
  swift_unknownObjectRelease();
  sub_1AF442324(a2, v19);
  v15 = v23;
  v16 = v24 + 96;
  sub_1AF58D38C(v19);
  sub_1AF6F46F4(v3, v15, v16);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1AFBBD9B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC07A9C(0, v1, 0);
    v3 = a1;
    v4 = 0;
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = 24 * v6;
    v8 = 32;
    do
    {
      v9 = *(v3 + v8);
      v10 = *(v15 + 24);
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        v14 = *(v3 + v8);
        sub_1AFC07A9C(v10 > 1, v6 + 1, 1);
        v9 = v14;
        v3 = a1;
      }

      *(v15 + 16) = v11;
      v12 = v15 + v7;
      v7 += 24;
      *(v12 + 32) = v9;
      *(v12 + 48) = v4;
      v8 += 16;
      v6 = v11;
      v4 += *(&v9 + 1);
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1AFBBDAEC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBBDC14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBBEC1C();
  *a1 = result;
  return result;
}

void sub_1AFBBDC44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  v5 = 0xE700000000000000;
  v6 = 0x6F666E49676F6CLL;
  if (v2 != 5)
  {
    v6 = 0x6963697473616C65;
    v5 = 0xEA00000000007974;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001AFF23D10;
  if (v2 != 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0x80000001AFF23D30;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001AFF23CF0;
  if (v2 != 1)
  {
    v9 = 0x654C6E6F62626972;
    v10 = 0xEC0000006874676ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AFBBDD34()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6F666E49676F6CLL;
  if (v1 != 5)
  {
    v3 = 0x6963697473616C65;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x654C6E6F62626972;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBBDE20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBBEC1C();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBBDE48(uint64_t a1)
{
  v2 = sub_1AFBBF944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBBDE84(uint64_t a1)
{
  v2 = sub_1AFBBF944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBBDEC0(void *a1)
{
  v3 = v1;
  sub_1AFBBF998(0, &qword_1EB643288, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFBBF944();
  sub_1AFDFF3F8();
  v13 = *v3;
  v12[7] = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    if ((v3[2] & 1) == 0)
    {
      v12[1] = 1;
      sub_1AFDFE8F8();
    }

    v12[6] = 2;
    sub_1AFDFE8E8();
    v12[5] = 3;
    sub_1AFDFE8C8();
    v12[4] = 4;
    sub_1AFDFE8C8();
    v12[3] = 5;
    sub_1AFDFE8C8();
    v12[2] = 6;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBBE10C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFBBEC68(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

double sub_1AFBBE160@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 1065353216;
  *(a1 + 24) = 257;
  *(a1 + 26) = 0;
  *(a1 + 28) = 0;
  return result;
}

uint64_t sub_1AFBBE198(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, float a9, float a10, char a11, uint64_t a12, char a13)
{
  v16 = a5;
  v18 = result;
  if (*a4 != -1 || a4[1])
  {
    v19 = HIDWORD(a5);
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v144 = qword_1ED73B840;
    v145 = 0;
    v146 = 2;
    v147 = 0;
    v148 = 2;
    v149 = 0;
    sub_1AF705094(1, v118);
    sub_1AFA1CF6C();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    *(v20 + 56) = &type metadata for EmitterReference;
    *(v20 + 64) = &off_1F2563D20;
    *(v20 + 32) = v16;
    v21 = v20 + 32;
    *(v20 + 36) = v19;
    sub_1AF5FDBF0(v119);
    sub_1AFA3B5D4(v118);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
    swift_deallocClassInstance();
    v140[0] = v119[0];
    v140[1] = v119[1];
    v141 = v120;
    sub_1AF6B06C0(a6, v140, 0x200000000, v121);
    if (a7)
    {
      sub_1AF7F6D40(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AFE431C0;
      sub_1AFDFE218();

      v113 = 0xD000000000000026;
      v114 = 0x80000001AFF4A970;
      if (*&v121[0])
      {
        v23 = v125;
      }

      else
      {
        v23 = 0;
      }

      v133 = v23;
      v24 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v24);

      v25 = v113;
      v26 = v114;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 32) = v25;
      *(v22 + 40) = v26;
      sub_1AFDFF258();
    }

    if (!a2)
    {
LABEL_107:
      sub_1AF5D1564(v121);
      return sub_1AFA3B5D4(v119);
    }

    if (!*&v121[0])
    {
      return sub_1AFA3B5D4(v119);
    }

    v27 = v122;
    v28 = v123;
    v112 = v124;
    v29 = v125;
    if (a11)
    {
      v30 = *(a12 + 32);
      v142[0] = *(a12 + 16);
      v142[1] = v30;
      v143 = *(a12 + 48);
      sub_1AF6B06C0(a6, v142, 0x200000000, &v126);
      if (!v126)
      {
        goto LABEL_22;
      }

      v136 = v129;
      v137 = v130;
      v138 = v131;
      v133 = v126;
      v139 = v132;
      v134 = v127;
      v135 = v128;
      v31 = sub_1AF6B92C4();
      v33 = v32;
      sub_1AF5D1564(&v126);
      if (v33)
      {
        goto LABEL_22;
      }

      sub_1AF3D0E88(v31, &v113);
      if (v115 << 40 == 0x20000000000)
      {
        goto LABEL_22;
      }

      a8 = v116;
      if (!v116)
      {
        v34 = v117;
        if (v117 <= 1)
        {
          v34 = 1;
        }

        a8 = a3 / v34;
      }
    }

    if (a8 >= 2)
    {
      v35 = a8 * v29;
      if (a8 * v29 <= a2)
      {
        if (v29)
        {
          v53 = 0;
          v54 = v18 + 4;
          v55 = v18[2];
          v56 = *(v112 + 144) + 32;
          do
          {
            v58 = v53;
            v59 = v27;
            v60 = v28;
            if (v28)
            {
              while (1)
              {
                v63 = v59[2];
                if (v58 >= v63)
                {
                  v64 = *v59;
                  if (v58 < v63 - v64 + v59[1])
                  {
                    break;
                  }
                }

                v59 += 12;
                if (!--v60)
                {
                  goto LABEL_52;
                }
              }

              v65 = *(v59 + 2);
              if (v65)
              {
                v66 = *(v65 + 8 * (v58 - v63));
              }

              else
              {
                v66 = v58 + v64 - v63;
              }

              v62 = *(*(v59 + 5) + 188);
              v61 = 16 * v66;
            }

            else
            {
LABEL_52:
              v61 = -16;
              v62 = -1;
            }

            v53 = v58 + 1;
            v67 = *(v56 + 8 * v62);
            v68 = (*(v67 + 48) + 32);
            do
            {
              v69 = *v68;
              v68 += 5;
            }

            while (v69 != &type metadata for Position);
            v70 = v58 * a8;
            if (v55)
            {
              v71 = 0;
              v72 = v55;
              while (1)
              {
                while (1)
                {
                  v57 = v71 + (v72 - v71) / 2;
                  v73 = &v54[3 * v57];
                  v74 = v73[2];
                  if (v70 >= v74)
                  {
                    break;
                  }

                  v72 = v71 + (v72 - v71) / 2;
                  if (v71 >= v57)
                  {
                    goto LABEL_49;
                  }
                }

                if (v70 < v73[1] + v74)
                {
                  break;
                }

                v71 = v57 + 1;
                if (v57 + 1 >= v72)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
LABEL_49:
              v57 = 0;
            }

            *(v54[3 * v57] + 16 * (v70 - v54[3 * v57 + 2])) = *(*(v68 - 2) + *(v67 + 128) + v61);
          }

          while (v53 != v29);
          if (a9 > 0.00000011921)
          {
            v75 = 0;
            v76 = a9 / (a8 - 1);
            v77 = 1.0 - a10;
            do
            {
              v78 = v75 * a8;
              v79 = v18[2];
              do
              {
                v80 = v78 + 1;
                if (v79)
                {
                  v81 = 0;
                  v82 = v79;
                  do
                  {
                    while (1)
                    {
                      v83 = v81 + (v82 - v81) / 2;
                      v84 = &v54[3 * v83];
                      v85 = v84[2];
                      if (v78 >= v85)
                      {
                        break;
                      }

                      v82 = v81 + (v82 - v81) / 2;
                      if (v81 >= v83)
                      {
                        goto LABEL_80;
                      }
                    }

                    if (v78 < v84[1] + v85)
                    {
                      goto LABEL_81;
                    }

                    v81 = v83 + 1;
                  }

                  while (v83 + 1 < v82);
LABEL_80:
                  v83 = 0;
                  v85 = v18[6];
LABEL_81:
                  v86 = 0;
                  v87 = v54[3 * v83];
                  v88 = v79;
                  do
                  {
                    while (1)
                    {
                      v89 = v86 + (v88 - v86) / 2;
                      v90 = &v54[3 * v89];
                      v91 = v90[2];
                      if (v80 >= v91)
                      {
                        break;
                      }

                      v88 = v86 + (v88 - v86) / 2;
                      if (v86 >= v89)
                      {
                        goto LABEL_86;
                      }
                    }

                    if (v80 < v90[1] + v91)
                    {
                      goto LABEL_87;
                    }

                    v86 = v89 + 1;
                  }

                  while (v89 + 1 < v88);
LABEL_86:
                  v89 = 0;
LABEL_87:
                  v92 = v54[3 * v89];
                }

                else
                {
                  v89 = 0;
                  v92 = v18[4];
                  v85 = v18[6];
                  v87 = v92;
                }

                v93 = v78 - v85;
                v94 = v80 - v54[3 * v89 + 2];
                v95 = *(v92 + 16 * v94);
                v96 = *(v87 + 16 * v93);
                v97 = vsubq_f32(v95, v96);
                v98 = vmulq_f32(v97, v97);
                v99 = v98.f32[2] + vaddv_f32(*v98.f32);
                if (v99 > 0.000001)
                {
                  v100 = sqrtf(v99);
                  if (v76 < v100)
                  {
                    v101 = v76 / v100;
                    *v95.f32 = vadd_f32(*v96.f32, vmul_n_f32(*v97.f32, v101));
                    v95.f32[2] = v96.f32[2] + (v97.f32[2] * v101);
                    v95.i32[3] = 1.0;
                    *(v92 + 16 * v94) = v95;
                  }

                  if (a10 != 0.0 && v99 < ((v76 * v76) + 0.01))
                  {
                    v96.i64[0] = vaddq_f32(vmulq_n_f32(v96, a10), vmulq_n_f32(v95, v77)).u64[0];
                    v96.i64[1] = __PAIR64__(1.0, (v96.f32[2] * a10) + vmuls_lane_f32(v77, v95, 2));
                    *(v92 + 16 * v94) = v96;
                  }
                }

                v78 = v80;
              }

              while (v80 != a8 - 1 + v75 * a8);
              ++v75;
            }

            while (v75 != v29);
          }
        }

        if ((a13 & 1) != 0 && v35 < a2)
        {
          v102 = v18 + 4;
          v103 = v18[2];
          do
          {
            if (v103)
            {
              v105 = 0;
              v106 = v103;
              while (1)
              {
                while (1)
                {
                  v104 = v105 + (v106 - v105) / 2;
                  v107 = &v102[3 * v104];
                  v108 = v107[2];
                  if (v35 >= v108)
                  {
                    break;
                  }

                  v106 = v105 + (v106 - v105) / 2;
                  if (v105 >= v104)
                  {
                    goto LABEL_98;
                  }
                }

                if (v35 < v107[1] + v108)
                {
                  break;
                }

                v105 = v104 + 1;
                if (v104 + 1 >= v106)
                {
                  goto LABEL_98;
                }
              }
            }

            else
            {
LABEL_98:
              v104 = 0;
            }

            *(v102[3 * v104] + 16 * (v35 - v102[3 * v104 + 2])) = xmmword_1AFE201A0;
            ++v35;
          }

          while (v35 != a2);
          goto LABEL_107;
        }

LABEL_109:
        sub_1AFA3B5D4(v119);
        return sub_1AF5D1564(v121);
      }
    }

LABEL_22:
    if (a13)
    {
      v36 = 0;
      v37 = v18 + 4;
      v38 = v18[2];
      do
      {
        if (v38)
        {
          v40 = 0;
          v41 = v38;
          while (1)
          {
            while (1)
            {
              v39 = v40 + (v41 - v40) / 2;
              v42 = &v37[3 * v39];
              v43 = v42[2];
              if (v36 >= v43)
              {
                break;
              }

              v41 = v40 + (v41 - v40) / 2;
              if (v40 >= v39)
              {
                goto LABEL_24;
              }
            }

            if (v36 < v42[1] + v43)
            {
              break;
            }

            v40 = v39 + 1;
            if (v39 + 1 >= v41)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
LABEL_24:
          v39 = 0;
        }

        *(v37[3 * v39] + 16 * (v36 - v37[3 * v39 + 2])) = xmmword_1AFE201A0;
        ++v36;
      }

      while (v36 != a2);
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  if (a7)
  {
    sub_1AF7F6D40(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1AFE431C0;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 32) = 0xD000000000000039;
    *(v44 + 40) = 0x80000001AFF4A9A0;
    sub_1AFDFF258();
  }

  if ((a13 & 1) != 0 && a2)
  {
    v45 = 0;
    v46 = v18 + 4;
    v47 = v18[2];
    do
    {
      if (v47)
      {
        v49 = 0;
        v50 = v47;
        while (1)
        {
          while (1)
          {
            v48 = v49 + (v50 - v49) / 2;
            v51 = &v46[3 * v48];
            v52 = v51[2];
            if (v45 >= v52)
            {
              break;
            }

            v50 = v49 + (v50 - v49) / 2;
            if (v49 >= v48)
            {
              goto LABEL_38;
            }
          }

          if (v45 < v51[1] + v52)
          {
            break;
          }

          v49 = v48 + 1;
          if (v48 + 1 >= v50)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        v48 = 0;
      }

      *(v46[3 * v48] + 16 * (v45 - v46[3 * v48 + 2])) = xmmword_1AFE201A0;
      ++v45;
    }

    while (v45 != a2);
  }

  return result;
}

uint64_t sub_1AFBBEB44()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleRibbonRenderer;
  *(inited + 40) = &off_1F2551780;
  sub_1AF6B8120(inited, MEMORY[0x1E69E7CC0], v4);
  swift_setDeallocating();
  v2 = v4[1];
  *(v0 + 16) = v4[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  return v0;
}

uint64_t sub_1AFBBEC1C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBBEC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBBF998(0, &qword_1EB643278, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBBF944();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v28 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v11 = v25;
  sub_1AF7F6D40(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  v28 = 1;
  sub_1AF7A2D30();
  sub_1AFDFE6E8();
  if (v27)
  {
    v12 = 0;
  }

  else
  {
    v12 = v25;
  }

  v29 = (v27 | v26) & 1;
  LOBYTE(v25) = 2;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v25) = 3;
  v15 = sub_1AFDFE718();
  LOBYTE(v25) = 4;
  v24 = sub_1AFDFE718();
  LOBYTE(v25) = 5;
  v23 = sub_1AFDFE718();
  LOBYTE(v25) = 6;
  v17 = sub_1AFDFE6C8();
  v22 = v15 & 1;
  v24 &= 1u;
  v18 = v23 & 1;
  (*(v7 + 8))(v10, v6);
  if ((v17 & 0x100000000) != 0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *&v17;
  }

  v20 = v29;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v20;
  *(a2 + 20) = v14;
  *(a2 + 24) = v22;
  *(a2 + 25) = v24;
  *(a2 + 26) = v18;
  *(a2 + 28) = v19;
  return result;
}

uint64_t sub_1AFBBEFC8(uint64_t a1)
{
  v2 = *a1;

  v3 = *(a1 + 8);

  sub_1AF3CFF34(v3, &v112);

  v5 = v114;
  LODWORD(v6) = v114;
  if (v114 == 2)
  {
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = 1;
    v10 = 0.0;
    v11 = 1.0;
    v12 = 0xFFFFFFFFLL;
    v5 = 1;
    LOBYTE(v13) = 1;
  }

  else
  {
    v9 = BYTE8(v113);
    v6 = *(&v113 + 1) >> 8;
    v12 = v112;
    v8 = v113;
    v13 = v114 >> 8;
    v7 = v114 >> 16;
    v4 = v114 >> 24;
    v11 = *(&v113 + 3);
    v10 = *(&v114 + 1);
  }

  v83 = v12;
  v84 = v8;
  v135[0] = v12;
  v135[1] = v8;
  v81 = v13;
  v82 = v9;
  v136 = v9;
  v137 = v6;
  v138 = BYTE2(v6);
  v139 = v11;
  v140 = v5;
  v141 = v13;
  v142 = v7;
  v143 = v4;
  v144 = v10;
  if (v11 < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  if (v10 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10;
  }

  v16 = MEMORY[0x1E69E7CA0];
  v17 = &qword_1AFE43000;
  v18 = MEMORY[0x1E69E6158];
  if (v7)
  {
    sub_1AF7F6D40(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    *(v19 + 56) = v18;
    *(v19 + 32) = 0xD00000000000001DLL;
    *(v19 + 40) = 0x80000001AFF4A950;
    sub_1AFDFF258();
  }

  v20 = *(a1 + 104);
  v126 = *(a1 + 88);
  v127 = v20;
  v128 = *(a1 + 120);
  sub_1AF829104(v109);
  v124[0] = v109[0];
  v124[1] = v109[1];
  v125 = v110;
  sub_1AF6B06C0(v2, v124, 0x200000000, v111);
  v105 = *&v111[32];
  v106 = *&v111[48];
  v107 = *&v111[64];
  v108 = *&v111[80];
  v21 = *v111;
  v22 = *&v111[80];
  if (!*v111)
  {
    v22 = 0;
  }

  v86 = v22;
  v103 = *v111;
  v104 = *&v111[16];
  if (v7)
  {
    sub_1AF7F6D40(0, &qword_1ED722EE0, v16 + 8, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AFE431C0;
    v112 = 0;
    *&v113 = 0xE000000000000000;
    sub_1AFDFE218();

    v112 = 0xD000000000000026;
    *&v113 = 0x80000001AFF4A920;
    if (*v111)
    {
      v24 = *&v111[80];
    }

    else
    {
      v24 = 0;
    }

    *&v97 = v24;
    v25 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v25);

    v26 = v112;
    v27 = v113;
    *(v23 + 56) = v18;
    *(v23 + 32) = v26;
    *(v23 + 40) = v27;
    sub_1AFDFF258();

    v21 = *v111;
  }

  if (!v21)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_37;
  }

  v77 = v5;
  v78 = v7;
  v28 = *&v111[40];
  v29 = *&v111[56];
  v30 = *&v111[64];
  v31 = *&v111[72];
  v32 = *&v111[80];
  v119 = *&v111[8];
  v120 = *&v111[24];

  sub_1AF5D15C0(v111, &v112);
  v33 = sub_1AF427BD4(0, v29 & ~(v29 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v80 = v2;
  if (v32 >= 1 && v29)
  {
    v93 = *(v31 + 32);
    v34 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v35 = 0;
    v121 = v21;
    v122 = v119;
    v123 = v120;
    v36 = (v28 + 24);
    v87 = v34;
    do
    {
      v89 = v33;
      v91 = v35;
      v38 = *(v36 - 6);
      v37 = *(v36 - 5);
      v39 = *(v36 - 1);
      v40 = *v36;
      v41 = v36[1];
      v42 = v36[2];
      if (v34)
      {
        v43 = *(v42 + 376);

        os_unfair_lock_lock(v43);
        os_unfair_lock_lock(*(v42 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v93);
      v44 = *(v31 + 64);
      v145[0] = *(v31 + 48);
      v145[1] = v44;
      v146 = *(v31 + 80);
      v45 = *(*(*(*(v42 + 40) + 16) + 32) + 16) + 1;
      *(v31 + 48) = ecs_stack_allocator_allocate(*(v31 + 32), 48 * v45, 8);
      *(v31 + 56) = v45;
      *(v31 + 72) = 0;
      *(v31 + 80) = 0;
      *(v31 + 64) = 0;
      v46 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v39, v40, v41, v31);
      if (v46)
      {
        v47 = v46 + 16 * v38;
      }

      else
      {
        v47 = 0;
      }

      v33 = v89;
      v49 = *(v89 + 2);
      v48 = *(v89 + 3);
      if (v49 >= v48 >> 1)
      {
        v33 = sub_1AF427BD4(v48 > 1, v49 + 1, 1, v89);
      }

      *(v33 + 2) = v49 + 1;
      v50 = &v33[16 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = v37 - v38;
      v35 = v91;
      sub_1AF630994(v31, &v121, v145);
      sub_1AF62D29C(v42);
      ecs_stack_allocator_pop_snapshot(v93);
      v34 = v87;
      if (v87)
      {
        os_unfair_lock_unlock(*(v42 + 344));
        os_unfair_lock_unlock(*(v42 + 376));
      }

      v36 += 6;
      --v29;
    }

    while (v29);
  }

  v51 = sub_1AFBBD9B8(v33);
  LOBYTE(v7) = v78;
  sub_1AFBBE198(v51, v52, v86, v135, v83, v80, v78 & 1, v84, v14, v15, v82 & 1, v85, v81 & 1);

  sub_1AF5D1564(v111);
  v18 = MEMORY[0x1E69E6158];
  v17 = &qword_1AFE43000;
  v16 = MEMORY[0x1E69E7CA0];
  if (v77)
  {
LABEL_37:
    if (v86 >= 1)
    {
      if (*v111)
      {
        v115 = *&v111[40];
        v116 = *&v111[56];
        v117 = *&v111[72];
        v112 = *v111;
        v118 = *&v111[88];
        v113 = *&v111[8];
        v114 = *&v111[24];
        v99 = v105;
        v100 = v106;
        v101 = v107;
        v102 = v108;
        v97 = v103;
        v98 = v104;
        sub_1AF5DD298(&v97, v95);
        v53 = sub_1AF6BA3C8(&type metadata for Velocity, &off_1F2530AF8, 0);
        sub_1AF5D1564(v111);
        if (v53)
        {
          if (v102 > 0)
          {
            v92 = *(&v100 + 1);
            if (*(&v100 + 1))
            {
              v79 = v7;
              v54 = *(&v101 + 1);
              v94 = *(*(&v101 + 1) + 32);
              v55 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v88 = *(&v99 + 1);
              v129 = v97;
              v130 = DWORD2(v97);
              v131 = BYTE12(v97);
              v132 = v98;
              v133 = BYTE8(v98);
              v134 = v99;
              sub_1AF5DD298(&v97, v95);
              v56 = 0;
              v90 = v55;
              do
              {
                v57 = (v88 + 48 * v56);
                v59 = *v57;
                v58 = v57[1];
                v60 = *(v57 + 2);
                v61 = *(v57 + 4);
                v62 = *(v57 + 5);
                if (v55)
                {
                  v63 = *(v62 + 376);

                  os_unfair_lock_lock(v63);
                  os_unfair_lock_lock(*(v62 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v94);
                v64 = *(v54 + 64);
                v95[0] = *(v54 + 48);
                v95[1] = v64;
                v96 = *(v54 + 80);
                v65 = *(*(*(*(v62 + 40) + 16) + 32) + 16) + 1;
                *(v54 + 48) = ecs_stack_allocator_allocate(*(v54 + 32), 48 * v65, 8);
                *(v54 + 56) = v65;
                *(v54 + 72) = 0;
                *(v54 + 80) = 0;
                *(v54 + 64) = 0;
                if (v60)
                {
                  v55 = v90;
                  if (v61)
                  {
                    v66 = 0;
                    v67 = *(v62 + 48) + 32;
                    do
                    {
                      v68 = v67;
                      do
                      {
                        v69 = *v68;
                        v68 += 5;
                      }

                      while (v69 != &type metadata for Velocity);
                      v70 = (&(*(v68 - 2))[*(v60 + 8 * v66)].Kind + *(v62 + 128));
                      *v70 = 0;
                      v70[1] = 0;
                      ++v66;
                    }

                    while (v66 != v61);
                  }
                }

                else
                {
                  v55 = v90;
                  if (v59 != v58)
                  {
                    v71 = *(v62 + 48) + 32;
                    do
                    {
                      v72 = v71;
                      do
                      {
                        v73 = *v72;
                        v72 += 5;
                      }

                      while (v73 != &type metadata for Velocity);
                      v74 = (&(*(v72 - 2))[v59].Kind + *(v62 + 128));
                      *v74 = 0;
                      v74[1] = 0;
                      ++v59;
                    }

                    while (v59 != v58);
                  }
                }

                sub_1AF630994(v54, &v129, v95);
                sub_1AF62D29C(v62);
                ecs_stack_allocator_pop_snapshot(v94);
                if (v55)
                {
                  os_unfair_lock_unlock(*(v62 + 344));
                  os_unfair_lock_unlock(*(v62 + 376));
                }

                ++v56;
              }

              while (v56 != v92);
              sub_1AF5D1564(v111);
              LOBYTE(v7) = v79;
              v18 = MEMORY[0x1E69E6158];
              v17 = &qword_1AFE43000;
              v16 = MEMORY[0x1E69E7CA0];
            }
          }
        }
      }
    }
  }

LABEL_62:
  if (v7)
  {
    sub_1AF7F6D40(0, &qword_1ED722EE0, v16 + 8, MEMORY[0x1E69E6F90]);
    v75 = swift_allocObject();
    *(v75 + 16) = *(v17 + 28);
    *(v75 + 56) = v18;
    *(v75 + 32) = 0xD000000000000010;
    *(v75 + 40) = 0x80000001AFF4A900;
    sub_1AFDFF258();
    sub_1AF5D1564(v111);

    sub_1AFA3B5D4(v109);
  }

  else
  {
    sub_1AF5D1564(v111);

    return sub_1AFA3B5D4(v109);
  }
}

unint64_t sub_1AFBBF944()
{
  result = qword_1EB643280;
  if (!qword_1EB643280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643280);
  }

  return result;
}

void sub_1AFBBF998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFBBF944();
    v7 = a3(a1, &type metadata for ParticleRibbonTrails.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFBBFA10()
{
  result = qword_1EB643290;
  if (!qword_1EB643290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643290);
  }

  return result;
}

unint64_t sub_1AFBBFA68()
{
  result = qword_1EB643298;
  if (!qword_1EB643298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643298);
  }

  return result;
}

unint64_t sub_1AFBBFAC0()
{
  result = qword_1EB6432A0;
  if (!qword_1EB6432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6432A0);
  }

  return result;
}

uint64_t sub_1AFBBFB14(uint64_t result)
{
  if (result)
  {
    sub_1AFDFD078();

    return sub_1AFDFCFD8();
  }

  return result;
}

uint64_t sub_1AFBBFB94(uint64_t result)
{
  if (result)
  {
    v2 = *(*v1 + 16);
    if (-result < 1)
    {
      if (-result < -v2)
      {
        v3 = 0;
        return sub_1AF64C690(v3, v2);
      }
    }

    else if (!v2)
    {
      v3 = 0;
      return sub_1AF64C690(v3, v2);
    }

    v3 = v2 - result;
    return sub_1AF64C690(v3, v2);
  }

  return result;
}

uint64_t sub_1AFBBFBD8(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v2 + 7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64C5AC(0, *(v8 + 2));
    v9 = *v6;
  }

  else
  {
    v9 = sub_1AFC855D4(0, *(v8 + 3) >> 1);

    *v6 = v9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v9 + 3) >> 1)
  {
    if (*(v9 + 2) <= a1)
    {
      v11 = a1;
    }

    else
    {
      v11 = *(v9 + 2);
    }

    result = sub_1AF420E8C(result, v11, 0, v9);
    v9 = result;
  }

  v3[7] = v9;
  v12 = v3[6];
  if (*(v12 + 16))
  {
    v27 = *(v12 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AFC0DB20(v12);
      v12 = result;
    }

    v13 = 0;
    v14 = v12 + 32;
    v15 = v27;
    while (1)
    {
      v16 = *(v14 + 4 * v13);
      v17 = v16 + 0.0;
      v18 = truncf(v16);
      if ((LODWORD(v16) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v16 - v18;
      }

      if ((*(v14 + 4 * v13) & 0x7FFFFFFFu) < 0x7F800000)
      {
        v17 = v18;
      }

      *(v14 + 4 * v13) = v19;
      v3[6] = v12;
      v20 = v17;
      if (v17)
      {
        break;
      }

LABEL_14:
      if (++v13 == v15)
      {
        return result;
      }
    }

    while (1)
    {
      v21 = *(v9 + 2);
      if (v21 == a1)
      {
        break;
      }

      v22 = *(v9 + 3);
      if (v21 >= v22 >> 1)
      {
        result = sub_1AF420E8C(v22 > 1, v21 + 1, 1, v9);
        v15 = v27;
        v9 = result;
      }

      *(v9 + 2) = v21 + 1;
      *&v9[4 * v21 + 32] = v13;
      *v6 = v9;
      if (!--v20)
      {
        goto LABEL_14;
      }
    }
  }

  else if (a1)
  {
    v23 = *(a2 + 72);
    v24 = *(*v3 + 16);
    v25 = *(v9 + 2);
    do
    {
      v26 = *(v9 + 3);
      if (v25 >= v26 >> 1)
      {
        result = sub_1AF420E8C(v26 > 1, v25 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v25 + 1;
      *&v9[4 * v25 + 32] = v23 % v24;
      ++v23;
      ++v25;
      --a1;
    }

    while (a1);
    *v6 = v9;
  }

  return result;
}

uint64_t sub_1AFBBFE00(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 == 0xFFFFFFFF)
  {
    return v8;
  }

  sub_1AF3CF5A0(a1, &v6);

  v2 = v7;
  if ((v7 & 0xFF00000000) == 0x200000000)
  {
    goto LABEL_8;
  }

  if ((v7 & 0x100000000) != 0)
  {
    sub_1AF65D974(&type metadata for Color, &off_1F252CA88);
    if ((v2 & 0x10000000000) == 0)
    {
LABEL_5:
      if ((v2 & 0x1000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_14:
      sub_1AF65D974(&type metadata for Orientation, &off_1F252C8A8);
      if ((v2 & 0x100000000000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((v7 & 0x10000000000) == 0)
  {
    goto LABEL_5;
  }

  sub_1AF65D974(&type metadata for Velocity, &off_1F2530AF8);
  if ((v2 & 0x1000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x100000000000000) != 0)
  {
LABEL_7:
    sub_1AF65D974(&type metadata for Scale3, &off_1F252F998);
  }

LABEL_8:

  v3 = sub_1AF67CACC(&type metadata for ParticleRespawn, &off_1F2567300, a1);

  if (v3)
  {

    v4 = sub_1AF67CACC(&type metadata for ParticleSpawnOverDistance, &off_1F2567640, a1);

    if (v4)
    {
      sub_1AF65D974(&type metadata for ParticleParentID, &off_1F252D8C8);
      sub_1AF65D974(&type metadata for ParticleRibbonLength, &off_1F252D8A8);
    }
  }

  return v8;
}

uint64_t sub_1AFBBFF9C(uint64_t result, unint64_t a2)
{
  *result = xmmword_1AFEA2810;
  *(result + 16) = 0;
  *(result + 32) = xmmword_1AFE21F00;
  *(result + 48) = xmmword_1AFE21F00;
  *(result + 64) = 0;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 97) = 0u;
  if (a2 != 0xFFFFFFFF)
  {
    v3 = result;

    v4 = sub_1AF3D1058(a2);

    v5 = 0.0;
    if ((v4 & 0x100000000) == 0)
    {
      v5 = *&v4;
      *(v3 + 4) = v4;
    }

    v6 = sub_1AF3D0F7C(a2);

    if ((v6 & 0x100000000) == 0)
    {
      v7 = *&v6;
      if (*&v6 < 0.0)
      {
        v7 = INFINITY;
      }

      *(v3 + 8) = v5 + v7;
    }
  }

  return result;
}

double sub_1AFBC0088@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFEA2810;
  *(a1 + 16) = 0;
  *(a1 + 32) = xmmword_1AFE21F00;
  *(a1 + 48) = xmmword_1AFE21F00;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  return result;
}

BOOL sub_1AFBC00BC(uint64_t a1, uint64_t *a2, float a3)
{
  v5 = *a2;
  v6 = *(a2 + 3);
  v7 = *(a2 + 2);

  v8 = v7 == -1 && v6 == 0;
  if (!v8 && (v7 & 0x80000000) == 0 && *(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v7 && ((v9 = (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7), v6 == -1) || v9[2] == v6))
  {
    v13 = sub_1AF685EC0(*(*(v5 + 144) + 8 * *v9 + 32), *(v9 + 2), 8);
    v15 = v14;

    if ((v15 & 1) == 0 && *(a1 + 104) != v13)
    {
      *(a1 + 104) = v13;
      if (v13)
      {
        *(a1 + 72) = 0;
        *a1 = *(a1 + 4);
      }
    }
  }

  else
  {
  }

  v10 = *(a1 + 4);
  v11 = *a1 + a3;
  *a1 = v11;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  return v10 <= v11 && v11 <= *(a1 + 8);
}

uint64_t sub_1AFBC0204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x566E776170736572 && a2 == 0xEC00000065756C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFBC0290(uint64_t a1)
{
  v2 = sub_1AFBCBCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC02CC(uint64_t a1)
{
  v2 = sub_1AFBCBCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC0308@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  sub_1AFBCBCFC(0, &qword_1EB633138, sub_1AFBCBCA8, &type metadata for ParticleRespawn.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCBCA8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v14;
  v11 = sub_1AFDFE748();
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  return result;
}

uint64_t sub_1AFBC04B4(void *a1)
{
  sub_1AFBCBCFC(0, &qword_1EB643308, sub_1AFBCBCA8, &type metadata for ParticleRespawn.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCBCA8();
  sub_1AFDFF3F8();
  sub_1AFDFE8F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFBC0634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D695479616C6564 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFBC06C4(uint64_t a1)
{
  v2 = sub_1AFBCBC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC0700(uint64_t a1)
{
  v2 = sub_1AFBCBC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC07F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFBC087C(uint64_t a1)
{
  v2 = sub_1AFBCBC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC08B8(uint64_t a1)
{
  v2 = sub_1AFBCBC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC0944@<X0>(void *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, _DWORD *a6@<X8>)
{
  v20 = a6;
  sub_1AFBCBCFC(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v19 - v12;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3B8();
  if (v6)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v15 = v19;
  v14 = v20;
  sub_1AFDFE738();
  v17 = v16;
  (*(v15 + 8))(v13, v10);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v14 = v17;
  return result;
}

uint64_t sub_1AFBC0B38(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AFBCBCFC(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AFBC0C98()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC0D14()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC0D6C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

void sub_1AFBC0DC0(uint64_t a1@<X8>)
{
  strcpy(a1, "rateOverTime");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1AFBC0E04@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AFBC0E5C(uint64_t a1)
{
  v2 = sub_1AFBCB8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC0E98(uint64_t a1)
{
  v2 = sub_1AFBCB8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC0ED4(unint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[3] = a2;
  swift_retain_n();
  sub_1AF66F154(a1, a2, a2, a1, sub_1AFBCB8D4, v5);
}

uint64_t sub_1AFBC104C(uint64_t *a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v4 = v3;
  v5 = a1[1];

  v6 = sub_1AF3D0100(v5);

  if ((v6 & 0x100000000) != 0)
  {
    v7 = 10.0;
  }

  else
  {
    v7 = *&v6;
  }

  sub_1AF68A8E0(a1, v9);

  sub_1AF68A5B4(v5, v2, a1, v2, v4, v7);

  sub_1AF688940(a1);
}

uint64_t sub_1AFBC1130(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x776F6C6C6F66;
  v3 = *a1;
  v4 = 0x7261656E696CLL;
  if (v3 == 1)
  {
    v4 = 0x776F6C6C6F66;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x80000001AFF24410;
  }

  if (*a2 != 1)
  {
    v2 = 0x7261656E696CLL;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0x80000001AFF24410;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AFBC1220()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC12C0()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBC134C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC13E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6F54();
  *a1 = result;
  return result;
}

void sub_1AFBC1418(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x776F6C6C6F66;
  if (v2 != 1)
  {
    v4 = 0x7261656E696CLL;
    v3 = 0xE600000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001AFF24410;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1AFBC1474()
{
  v1 = 0x776F6C6C6F66;
  if (*v0 != 1)
  {
    v1 = 0x7261656E696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1AFBC14CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6F54();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBC14F4(uint64_t a1)
{
  v2 = sub_1AFBCB944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC1530(uint64_t a1)
{
  v2 = sub_1AFBCB944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC156C(void *a1)
{
  sub_1AFBCBCFC(0, &qword_1EB6432D8, sub_1AFBCB944, &type metadata for ParticleSpawnOverDistance.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCB944();
  sub_1AFDFF3F8();
  v10[15] = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFBC1708(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v7 = (v3 + 36);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      if ((v8 != -1 || v9 != 0) && (v8 & 0x80000000) == 0 && v6[1] > v8)
      {
        v11 = (*v6 + 12 * v8);
        if ((v9 == -1 || v11[2] == v9) && *(*(*(a2 + 144) + 8 * *v11 + 32) + 120) == 1)
        {
          v12 = *(*(*(a2 + 88) + 8 * *(v11 + 3) + 32) + 16);
          v13 = *(v12 + 128);
          if (*(v13 + 16))
          {
            result = sub_1AF449CB8(&type metadata for EmitterShape);
            if ((v14 & 1) != 0 && *(*(v12 + 24) + 16 * *(*(v13 + 56) + 8 * result) + 32) == &type metadata for EmitterShape)
            {
              *a3 = 1;
            }
          }
        }
      }

      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1AFBC1840(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, float a5, float a6)
{
  v7 = v6;
  result = sub_1AFBC00BC(a1, a2, a5);
  if ((result & 1) == 0)
  {
    return result;
  }

  if (a6 <= 0.0)
  {
    *(a1 + 32) = xmmword_1AFE21F00;
    *(a1 + 48) = xmmword_1AFE21F00;
    return result;
  }

  v15 = *(a2 + 8);
  if (sub_1AF67CACC(&type metadata for ParticleSubSpawn, &off_1F25667C0, v15))
  {
    result = sub_1AF68AB84(v15, a4, a1, a5, a6);
    v16 = *(a1 + 64);
    if (v16 >= 1)
    {
      v17 = *(a2 + 32);
      sub_1AF68A8E0(a2, &v124);
      sub_1AF68B32C(v17, a4, v16, a1, a2);
      result = sub_1AF688940(a2);
      *(a1 + 64) = *(a1 + 64) - v16;
    }

    return result;
  }

  v18 = *(a2 + 32);
  sub_1AF3C9244(v18, v132);
  if (v134)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v93 = v19;
      swift_once();
      v19 = v93;
    }

    v124 = 0;
    return sub_1AF0D4F18(v19, &v124, 0xD000000000000042, 0x80000001AFF4ABE0);
  }

  v104 = v133;
  v105 = *(a1 + 32);
  v20 = sub_1AF6DD690(v105);
  if (v20)
  {
    v21 = vsubq_f32(v105, v104);
    v22 = vmulq_f32(v21, v21);
    v23 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32));
    v24 = 0.0;
    if (a3)
    {
      v24 = 0.25;
    }

    v25 = (v23 * a6) - v24;
    v26 = *(a1 + 48);
    v27 = v105;
  }

  else
  {
    v27 = v104;
    *(a1 + 32) = v104;
    *(a1 + 48) = v104;
    v25 = 0.0;
    v26 = v104;
  }

  v106 = v27;
  v28 = vsubq_f32(v27, v26);
  v28.n128_u32[3] = 0;
  v29 = v27.f32[2];
  v120 = v28;
  result = sub_1AF6DD6CC(v28);
  if (result)
  {
    v30.i64[0] = 0x3F0000003F000000;
    v30.i64[1] = 0x3F0000003F000000;
    v31.i64[0] = vmulq_f32(vsubq_f32(v104, v106), v30).u64[0];
    *&v31.i32[2] = (v104.f32[2] - v29) * 0.5;
    v31.i32[3] = 0;
  }

  else
  {
    v32 = vsub_f32(*v106.f32, *v104.f32);
    v33 = sqrtf(((v29 - v104.f32[2]) * (v29 - v104.f32[2])) + vaddv_f32(vmul_f32(v32, v32))) * 0.5;
    v34 = vmulq_f32(v120, v120);
    v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
    v35 = vdupq_lane_s32(*v34.f32, 0);
    v35.i32[3] = 0;
    v36 = vrsqrteq_f32(v35);
    v37 = vmulq_f32(v36, vrsqrtsq_f32(v35, vmulq_f32(v36, v36)));
    v38 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v34.f32[0] != 0.0)), 0x1FuLL));
    v38.i32[3] = 0;
    v31 = vbslq_s8(vcltzq_s32(v38), vmulq_f32(v120, vmulq_n_f32(vmulq_f32(v37, vrsqrtsq_f32(v35, vmulq_f32(v37, v37))), v33)), v120);
  }

  if ((LODWORD(v25) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v121 = v31;
    v39 = v25;
    if (v25 >= 1)
    {
      sub_1AF68A8E0(a2, &v124);
      sub_1AF68B32C(v18, a4, v25, a1, a2);
      sub_1AF688940(a2);
    }

    v95 = a4;
    v40 = floorf(v25);
    if (v40 <= 0.0)
    {
      v42 = 0.0;
      v41 = v39;
      if ((v20 & a3 & 1) == 0)
      {
LABEL_30:
        v43 = *(a2 + 104);
        v149[0] = *(a2 + 88);
        v149[1] = v43;
        v150 = *(a2 + 120);
        result = *&v149[0];
        v155 = *&v149[0];
        v156 = DWORD2(v149[0]);
        v157 = BYTE12(v149[0]);
        v158 = v43 & 0xFFFFFFFFFFFFFFF7;
        v159 = BYTE8(v43);
        v160 = v150;
        if (v41 < 1)
        {
          return result;
        }

        v94 = v39;

        sub_1AF6B06C0(v95, &v155, 0x200000000, &v135);
        if (v135)
        {
          if (v142 >= 1)
          {
            v101 = v139;
            if (v139)
            {
              v96 = v142 - 1;
              v44 = 0;
              v100 = vaddq_f32(v106, v121);
              v45 = v42 / v40;
              v99 = v138;
              v46 = v141;
              v122 = *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v118 = *(v141 + 32);
              v47 = v142 - v41;
              v143 = v135;
              v144 = v136;
              v145 = v137;
              v98 = vsubq_f32(v104, v106);
              v48 = v104;
              v48.i32[3] = 1.0;
              v116 = v48;
              v49.i64[0] = vsubq_f32(v104, v104).u64[0];
              *&v49.i32[2] = v104.f32[2] - v104.f32[2];
              v49.i32[3] = 1.0;
              v48.f32[0] = v45;
              v112 = v48;
              v114 = v49;
              v97 = a3;
              do
              {
                v109 = v44;
                v110 = v7;
                v50 = (v99 + 48 * v44);
                v103 = *v50;
                v51 = v50[2];
                v102 = v50[1];
                v52 = *(v50 + 2);
                v53 = *(v50 + 3);
                v55 = *(v50 + 4);
                v54 = *(v50 + 5);
                if (v122)
                {
                  v56 = *(v54 + 376);

                  os_unfair_lock_lock(v56);
                  os_unfair_lock_lock(*(v54 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v118);
                v57 = *(v46 + 64);
                v153[0] = *(v46 + 48);
                v153[1] = v57;
                v154 = *(v46 + 80);
                v58 = *(*(*(*(v54 + 40) + 16) + 32) + 16) + 1;
                *(v46 + 48) = ecs_stack_allocator_allocate(*(v46 + 32), 48 * v58, 8);
                *(v46 + 56) = v58;
                *(v46 + 72) = 0;
                *(v46 + 80) = 0;
                *(v46 + 64) = 0;
                v59 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v52, v53, v55, v46);
                if (v60)
                {
                  v61 = v110;
                  v63 = v107;
                  v62 = v108;
                  v64 = v112;
                }

                else
                {
                  v61 = v110;
                  v63 = v107;
                  v62 = v108;
                  v64 = v112;
                  if (v103 != v102)
                  {
                    v65 = v102 - v103;
                    v66 = (v59 + 16 * v103);
                    do
                    {
                      if (v51 >= v47)
                      {
                        if (v96 == v51 && (v97 & 1) != 0)
                        {
                          *v66 = v116;
                          if (*(a1 + 112))
                          {
                            v67 = -1;
                          }

                          else
                          {
                            v67 = 0;
                          }

                          *v66 = vbslq_s8(vdupq_n_s32(v67), v114, v116);
                        }

                        else
                        {
                          *(a1 + 48) = *(a1 + 32);
                          if ((v97 & 0x100) != 0)
                          {
                            v68 = vmlaq_n_f32(v106, v98, v64.f32[0]);
                            v68.i32[3] = v63.i32[3];
                            v63 = v68;
                          }

                          else
                          {
                            v68 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v100, v64.f32[0] * ((1.0 - v64.f32[0]) + (1.0 - v64.f32[0]))), v106, (1.0 - v64.f32[0]) * (1.0 - v64.f32[0])), v104, v64.f32[0] * v64.f32[0]);
                            v68.i32[3] = v62.i32[3];
                            v62 = v68;
                          }

                          *(a1 + 32) = v68;
                          v69 = v68;
                          v69.i32[3] = 1.0;
                          *v66 = v69;
                          if (*(a1 + 112) == 1)
                          {
                            v70 = vsubq_f32(v68, v104);
                            v70.i32[3] = 1.0;
                            *v66 = v70;
                          }

                          v64.f32[0] = v45 + v64.f32[0];
                        }
                      }

                      ++v51;
                      ++v66;
                      --v65;
                    }

                    while (v65);
                  }
                }

                v107 = v63;
                v108 = v62;
                v112 = v64;
                sub_1AF630994(v46, &v143, v153);
                v7 = v61;
                sub_1AF62D29C(v54);
                ecs_stack_allocator_pop_snapshot(v118);
                if (v122)
                {
                  os_unfair_lock_unlock(*(v54 + 344));
                  os_unfair_lock_unlock(*(v54 + 376));
                }

                v44 = v109 + 1;
              }

              while (v109 + 1 != v101);
            }
          }

          sub_1AF5D1564(&v135);
        }

        if (v94 < 1)
        {
          return sub_1AF692DB0(v149);
        }

        sub_1AF6B06C0(v95, v149, 0x200000000, &v124);
        if (!v124)
        {
          return sub_1AF692DB0(v149);
        }

        if (v131 <= 0 || (v113 = v128) == 0)
        {
LABEL_83:
          sub_1AF692DB0(v149);
          return sub_1AF5D1564(&v124);
        }

        v71 = 0;
        v111 = v127;
        v72 = v130;
        v123 = *(v129 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v119 = *(v130 + 32);
        v146 = v124;
        v147 = v125;
        v148 = v126;
        while (1)
        {
          v73 = v7;
          v74 = (v111 + 48 * v71);
          v115 = *v74;
          v117 = v74[1];
          v75 = *(v74 + 2);
          v76 = *(v74 + 3);
          v77 = *(v74 + 4);
          v78 = *(v74 + 5);
          if (v123)
          {
            v79 = *(v78 + 376);

            os_unfair_lock_lock(v79);
            os_unfair_lock_lock(*(v78 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v119);
          v80 = *(v72 + 64);
          v151[0] = *(v72 + 48);
          v151[1] = v80;
          v152 = *(v72 + 80);
          v81 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;
          *(v72 + 48) = ecs_stack_allocator_allocate(*(v72 + 32), 48 * v81, 8);
          *(v72 + 56) = v81;
          *(v72 + 72) = 0;
          *(v72 + 80) = 0;
          *(v72 + 64) = 0;
          v82 = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, v75, v76, v77, v72);
          if ((v83 & 1) != 0 || v115 == v117)
          {
            goto LABEL_80;
          }

          v84 = *(a1 + 104);
          if (v84 >= 0xFFFFFFFFLL)
          {
            v84 = 0xFFFFFFFFLL;
          }

          v85 = v84 & ~(v84 >> 63);
          v86 = v117 - v115;
          if ((v117 - v115) > 7)
          {
            v87 = (v86 & 0xFFFFFFFFFFFFFFF8) + v115;
            v88 = vdupq_n_s32(v85);
            v89 = (v82 + 4 * v115 + 16);
            v90 = v86 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v89[-1] = v88;
              *v89 = v88;
              v89 += 2;
              v90 -= 8;
            }

            while (v90);
            if (v86 == (v86 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_80;
            }
          }

          else
          {
            v87 = v115;
          }

          v91 = v117 - v87;
          v92 = (v82 + 4 * v87);
          do
          {
            *v92++ = v85;
            --v91;
          }

          while (v91);
LABEL_80:
          sub_1AF630994(v72, &v146, v151);
          v7 = v73;
          sub_1AF62D29C(v78);
          ecs_stack_allocator_pop_snapshot(v119);
          if (v123)
          {
            os_unfair_lock_unlock(*(v78 + 344));
            os_unfair_lock_unlock(*(v78 + 376));
          }

          if (++v71 == v113)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else
    {
      v41 = v25;
      v42 = v40 / v25;
      if ((v20 & a3 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v41 = v39 + 1;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1AFBC2210(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1AFBCAD74(a1);
  sub_1AF688940(a1);
  return v2;
}

uint64_t sub_1AFBC225C(uint64_t a1)
{

  sub_1AFB93E58();
  v2 = *(a1 + 8);

  sub_1AF3CFE48(v2);

  sub_1AFCC2690(v2, sub_1AFBCB240);
}

uint64_t sub_1AFBC2374(unint64_t a1, uint64_t a2)
{
  v5[2] = a1;
  v5[3] = a2;
  swift_retain_n();
  sub_1AF66F154(a1, a2, a2, a1, sub_1AFBCC624, v5);
}

void sub_1AFBC23FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AFBC7964(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 4) = v4 & 1;
    *(a2 + 5) = HIBYTE(v4) & 1;
  }
}

uint64_t sub_1AFBC249C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697461727564;
  if (v2 != 1)
  {
    v4 = 0x6954746165706572;
    v3 = 0xEA0000000000656DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265764F65746172;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC000000656D6954;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F697461727564;
  if (*a2 != 1)
  {
    v8 = 0x6954746165706572;
    v7 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265764F65746172;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC000000656D6954;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFBC25AC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC265C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFBC26F8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFBC27A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6F08();
  *a1 = result;
  return result;
}

void sub_1AFBC27D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D6954;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461727564;
  if (v2 != 1)
  {
    v5 = 0x6954746165706572;
    v4 = 0xEA0000000000656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265764F65746172;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AFBC2840()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x6954746165706572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265764F65746172;
  }
}

uint64_t sub_1AFBC28A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6F08();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBC28D0(uint64_t a1)
{
  v2 = sub_1AFBCB998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC290C(uint64_t a1)
{
  v2 = sub_1AFBCB998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC2948(void *a1)
{
  v3 = v1;
  sub_1AFBCBCFC(0, &qword_1EB6432E0, sub_1AFBCB998, &type metadata for ParticleVariableSpawn.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCB998();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AFBCBACC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  sub_1AFBCB9EC(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v14 = v3[1];
    v13 = 1;
    sub_1AFDFE918();
    v14 = v3[2];
    v13 = 2;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBC2BA4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBC76B0(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AFBC2C20@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFEA2820;
  result = 2.00000047;
  *(a1 + 16) = 0x400000003F800000;
  return result;
}

uint64_t sub_1AFBC2C3C(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float a5)
{
  v5 = *(a3 + 12);
  v6 = *(a3 + 8);
  v7 = v6 == -1 && v5 == 0;
  if (!v7 && (v6 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v6)
  {
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v6);
    if (v5 == -1 || v8[2] == v5)
    {
      v14 = *(v8 + 2);
      v15 = *(*(a2 + 144) + 8 * *v8 + 32);
      v16 = *(v15 + 48);
      v17 = (v16 + 32);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 5;
        v20 = *v17;
        v17 += 5;
        if (v20 == &type metadata for ParticleSpawnState)
        {
          v21 = &(*(v19 - 2))[8 * v14] + *(v15 + 128);
          sub_1AF68A8E0(a3, &v24);
          sub_1AFBC2E5C(v21, a4, a5, a1, a3);
          return sub_1AF688940(a3);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v23 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v23);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFEA2C60);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFBC2E5C(uint64_t a1, float *a2, float a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[4];
  v10 = a2[5];
  v11 = *a5;
  v12 = *(a5 + 12);
  v13 = *(a5 + 8);

  v14 = v13 == -1 && v12 == 0;
  if (!v14 && (v13 & 0x80000000) == 0 && *(v11 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v13 && ((v15 = (*(v11 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v13), v12 == -1) || v15[2] == v12))
  {
    v25 = sub_1AF685EC0(*(*(v11 + 144) + 8 * *v15 + 32), *(v15 + 2), 8);
    v27 = v26;

    if ((v27 & 1) == 0 && *(a1 + 104) != v25)
    {
      *(a1 + 104) = v25;
      if (v25)
      {
        *(a1 + 72) = 0;
        *a1 = *(a1 + 4);
      }
    }
  }

  else
  {
  }

  v17 = *a1;
  v18 = *(a1 + 4);
  v19 = *a1 + a3;
  *a1 = v19;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (v18 <= v19 && v19 <= *(a1 + 8))
  {
    if (v17 <= v18)
    {
      v20 = a2[2];
      v21 = a2[3];
      if (v20 != v21)
      {
        result = sub_1AF9DCEDC(v20, v21);
      }

      *(a1 + 12) = v18 + v20;
      v22 = *a2;
      v23 = a2[1];
      if (*a2 != v23)
      {
        result = sub_1AF9DCEDC(v22, v23);
      }

      *(a1 + 16) = v22;
    }

    if (*(a1 + 12) <= v19)
    {
      if (v9 == v10)
      {
        v24 = v9 + v19;
      }

      else
      {
        result = sub_1AF9DCEDC(v9, v10);
        v24 = v19 + v28;
      }

      *(a1 + 4) = v24;
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    v29 = *(a1 + 16);
    if (v29 > 0.0)
    {
      v30 = (v29 * a3) + *(a1 + 64);
      *(a1 + 64) = v30;
      v31 = v30;
      if (v30 >= 1)
      {
        result = sub_1AFB7F308(v30, a1, a5);
        *(a1 + 64) = *(a1 + 64) - v31;
      }
    }
  }

  return result;
}

uint64_t sub_1AFBC3098(uint64_t *a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v4 = v3;
  v5 = a1[1];

  v6 = sub_1AF3CFFFC(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = HIDWORD(v10);
  if (v12)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = *&v10;
  }

  if (v12)
  {
    LODWORD(v13) = 0x40000000;
    v15 = 1.0;
  }

  else
  {
    v15 = *&v8;
  }

  if (v12)
  {
    v16 = 2.0;
  }

  else
  {
    v16 = *(&v8 + 1);
  }

  if (v12)
  {
    v17 = 10.0;
  }

  else
  {
    v17 = *&v6;
  }

  if (v12)
  {
    v18 = 20.0;
  }

  else
  {
    v18 = *(&v6 + 1);
  }

  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v14;
  LODWORD(v22[5]) = v13;
  v19 = a1[4];

  sub_1AF68A8E0(a1, v21);
  sub_1AF689E94(v19, v2, v2, a1, v22, v4);
  sub_1AF688940(a1);
}

uint64_t sub_1AFBC31C8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AFBCBCFC(0, &qword_1EB6432E8, sub_1AFBCBA78, &type metadata for ParticleBurstSpawn.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCBA78();
  sub_1AFDFF3F8();
  v13[0] = a2;
  v13[1] = a3;
  sub_1AFBCBACC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AFBCBB20(&qword_1EB63F010);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AFBC33B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFBC3438(uint64_t a1)
{
  v2 = sub_1AFBCBA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC3474(uint64_t a1)
{
  v2 = sub_1AFBCBA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AFBC34B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AFBC7494(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double sub_1AFBC3518@<D0>(_OWORD *a1@<X8>)
{
  *&result = 10;
  *a1 = xmmword_1AFE4C600;
  return result;
}

unint64_t sub_1AFBC3528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  result = sub_1AFBC00BC(a1, a2, a6);
  if (result)
  {
    v13 = *(a2 + 32);
    v14 = *(a2 + 36);
    if ((v13 != -1 || v14 != 0) && (v13 & 0x80000000) == 0)
    {
      v16 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
      if (v16 > v13)
      {
        v17 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v18 = (v17 + 12 * v13);
        if (v14 == -1 || v18[2] == v14)
        {
          v20 = *(v18 + 2);
          v21 = *v18;
          v22 = *(a3 + 144) + 32;
          v23 = *(v22 + 8 * v21);
          v24 = *(v23 + 48);
          v25 = (v24 + 32);
          v26 = *(v24 + 16) + 1;
          while (--v26)
          {
            v27 = v25 + 5;
            v28 = *v25;
            v25 += 5;
            if (v28 == &type metadata for EmitterRuntime)
            {
              v29 = (&(*(v27 - 2))[53 * v20].Kind + *(v23 + 128));
              v30 = *(a2 + 12);
              v31 = *(a2 + 8);
              if ((v31 != -1 || v30 != 0) && (v31 & 0x80000000) == 0 && v16 > v31)
              {
                v33 = (v17 + 12 * v31);
                v34 = *(v33 + 2);
                if (v30 == -1 || v33[2] == v30)
                {
                  v35 = *(v22 + 8 * *v33);
                  v36 = *(v35 + 48);
                  v37 = (v36 + 32);
                  v38 = *(v36 + 16) + 1;
                  while (--v38)
                  {
                    v39 = v37 + 5;
                    v40 = *v37;
                    v37 += 5;
                    if (v40 == &type metadata for ParticleSubSpawn.State)
                    {
                      v41 = (&(*(v39 - 2))[4 * v34].Kind + *(v35 + 128));

                      sub_1AF68A8E0(a2, v43);
                      sub_1AFBC3890(v41, a4, a5, v29, a1, a2);
                      goto LABEL_34;
                    }
                  }
                }
              }

              if (!*(a1 + 72) && *a1 <= (*(a1 + 4) + a6))
              {
                result = a5 - a4;
                if (a5 != a4)
                {
                  result = sub_1AF9CEE0C(result);
                  a5 = result + a4;
                }

                if (a5 >= 1)
                {

                  sub_1AF68A8E0(a2, v43);
                  sub_1AFB7F308(a5, a1, a2);
LABEL_34:
                  sub_1AF688940(a2);
                }
              }

              return result;
            }
          }
        }
      }
    }

    v44 = 0;
    v45 = 0xE000000000000000;

    sub_1AF68A8E0(a2, v43);
    sub_1AFDFE218();
    v43[0] = v44;
    v43[1] = v45;
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v42 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v42);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

    sub_1AF688940(a2);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFBC3890(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = a1[6];
  v37 = a1 + 6;
  v12 = *(v11 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v11 + 3) >> 1)
  {
    if (v12 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v12;
    }

    v11 = sub_1AF41FDF8(isUniquelyReferenced_nonNull_native, v14, 0, v11);
  }

  *v37 = v11;
  result = v10 - v12;
  if (v10 >= v12)
  {
    if (v12 < v10)
    {
      result = sub_1AF490FD0(result, 0);
    }
  }

  else
  {
    result = sub_1AFBBFB94(v12 - v10);
  }

  v16 = *(v9 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *v37;
    v20 = a3 - a2;
    v38 = a2 - a3;
    do
    {
      v21 = a3;
      if (a3 != a2)
      {
        v22 = a4[1];
        v23 = a4[2];
        v24 = 9 * __ROR8__(5 * v23, 57);
        v25 = a4[3] ^ v22;
        v26 = a4[4] ^ v23;
        v27 = v25 ^ v23;
        v28 = v26 ^ v22;
        a4[1] = v28;
        a4[2] = v25 ^ v23;
        v29 = __ROR8__(v26, 19);
        v30 = v25 ^ (v23 << 17);
        a4[3] = v30;
        a4[4] = v29;
        v31 = (v24 * v20) >> 64;
        if (v20 > v24 * v20 && v38 % v20 > v24 * v20)
        {
          do
          {
            v32 = 9 * __ROR8__(5 * v27, 57);
            v33 = v28 ^ v30;
            v34 = v27 ^ v29;
            v30 ^= v28 ^ (v27 << 17);
            v27 ^= v33;
            v28 ^= v34;
            v29 = __ROR8__(v34, 19);
          }

          while (v38 % v20 > v32 * v20);
          a4[1] = v28;
          a4[2] = v27;
          v31 = (v32 * v20) >> 64;
          a4[3] = v30;
          a4[4] = v29;
        }

        v21 = v31 + a2;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AFC0DB20(v19);
        v19 = result;
      }

      *(v19 + 4 * v18 + 32) = v21;
      v17 += v21;
      ++v18;
    }

    while (v18 != v16);
    *v37 = v19;
    if (v17 > 0)
    {
      return sub_1AFB7F308(v17, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1AFBC3AC8(void *a1, unint64_t a2, uint64_t a3, float a4, float a5)
{
  sub_1AFBCBCFC(0, &qword_1EB6432F0, sub_1AFBCBBAC, &type metadata for ParticlePeriodicBurstSpawn.CodingKeys, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCBBAC();
  sub_1AFDFF3F8();
  v19 = a2;
  v20 = a3;
  v21 = 0;
  sub_1AFBCBACC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AFBCBB20(&qword_1EB63F010);
  v16 = v18[1];
  sub_1AFDFE918();
  if (!v16)
  {
    v19 = __PAIR64__(LODWORD(a5), LODWORD(a4));
    v21 = 1;
    sub_1AFBCBACC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    sub_1AFBCB9EC(&qword_1EB6398A0);
    sub_1AFDFE918();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1AFBC3D4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6954746165706572;
  }

  else
  {
    v3 = 0x746E756F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v5 = 0x6954746165706572;
  }

  else
  {
    v5 = 0x746E756F63;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFBC3DF4()
{
  if (*v0)
  {
    return 0x6954746165706572;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1AFBC3E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6954746165706572 && a2 == 0xEA0000000000656DLL)
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

uint64_t sub_1AFBC3F10(uint64_t a1)
{
  v2 = sub_1AFBCBBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC3F4C(uint64_t a1)
{
  v2 = sub_1AFBCBBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC3F88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a1;
  v9[3] = a2;
  swift_retain_n();
  sub_1AF66F154(a1, a2, a2, a1, a5, v9);
}

void sub_1AFBC4004(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1AFBC7B74(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 20) = v7;
  }
}

double sub_1AFBC4074@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE4C600;
  result = 2.00000047;
  *(a1 + 16) = 0x400000003F800000;
  return result;
}

uint64_t sub_1AFBC4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, float a6, float a7, float a8)
{
  v10 = *(a3 + 32);
  v9 = *(a3 + 36);
  v11 = v10 == -1 && v9 == 0;
  if (!v11 && (v10 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v10)
  {
    v12 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v10);
    if (v9 == -1 || v12[2] == v9)
    {
      v20 = *(v12 + 2);
      v21 = *(*(a2 + 144) + 8 * *v12 + 32);
      v22 = *(v21 + 48);
      v23 = (v22 + 32);
      v24 = *(v22 + 16) + 1;
      while (--v24)
      {
        v25 = v23 + 5;
        v26 = *v23;
        v23 += 5;
        if (v26 == &type metadata for EmitterRuntime)
        {
          v27 = &(*(v25 - 2))[53 * v20] + *(v21 + 128);
          sub_1AF68A8E0(a3, v30);
          sub_1AFBC42F4(a6, a7, a8, v27, a4, a5, a1, a3);
          return sub_1AF688940(a3);
        }
      }
    }
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1AF68A8E0(a3, v30);
  sub_1AFDFE218();
  v30[0] = v31;
  v30[1] = v32;
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v29 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v29);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a3);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AFBC42F4(float a1, float a2, float a3, uint64_t a4, uint64_t a5, Swift::Int a6, uint64_t a7, uint64_t a8)
{
  v15 = *a8;
  v16 = *(a8 + 12);
  v17 = *(a8 + 8);

  v18 = v17 == -1 && v16 == 0;
  if (!v18 && (v17 & 0x80000000) == 0 && *(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v17 && ((v19 = (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v17), v16 == -1) || v19[2] == v16))
  {
    v25 = sub_1AF685EC0(*(*(v15 + 144) + 8 * *v19 + 32), *(v19 + 2), 8);
    v27 = v26;

    if ((v27 & 1) == 0 && *(a7 + 104) != v25)
    {
      *(a7 + 104) = v25;
      if (v25)
      {
        *(a7 + 72) = 0;
        *a7 = *(a7 + 4);
      }
    }
  }

  else
  {
  }

  v22 = *a7;
  v21 = *(a7 + 4);
  v23 = *a7 + a1;
  *a7 = v23;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  if (v21 <= v23 && v23 <= *(a7 + 8))
  {
    if (v22 <= v21)
    {
      *(a7 + 12) = v21;
      if (v21 > v23)
      {
LABEL_19:
        *(a7 + 80) = 0;
        *(a7 + 88) = 0;
        *(a7 + 96) = 0;
        result = a6 - a5;
        if (a6 != a5)
        {
          result = sub_1AF9CEE0C(result);
          a6 = result + a5;
        }

        if (a6 >= 1)
        {
          return sub_1AFB7F308(a6, a7, a8);
        }

        return result;
      }
    }

    else if (*(a7 + 12) > v23)
    {
      goto LABEL_19;
    }

    if (a2 != a3)
    {
      sub_1AF9DCEDC(a2, a3);
      a2 = v24;
    }

    *(a7 + 4) = v23 + a2;
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1AFBC44F8(uint64_t *a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v4 = v3;
  v5 = a1[1];

  v6 = sub_1AF3D0324(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = *&v10;
  }

  if (v12)
  {
    v14 = 2.0;
  }

  else
  {
    v14 = *(&v10 + 1);
  }

  if (v12)
  {
    v6 = 10;
    v8 = 20;
  }

  sub_1AF68A8E0(a1, v16);
  sub_1AF68A98C(v5, v2, v2, a1, v6, v8, v4, v13, v14);
  sub_1AF688940(a1);
}

double sub_1AFBC46E8@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = v1;
  return result;
}

void sub_1AFBC470C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = a4[1];
  v13 = *a4;
  v14 = v13 == -1 && v12 == 0;
  if (v14 || (v13 & 0x80000000) != 0 || *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v13 || (v12 != -1 ? (v15 = *(*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v13 + 8) == v12) : (v15 = 1), !v15))
  {
    v88 = 0;
    v23 = 1;
    v20 = 0uLL;
    v19 = 0uLL;
    v22 = 0uLL;
    v21 = 0uLL;
    goto LABEL_16;
  }

  v78 = *(a1 + 24);
  v80 = *(a1 + 8);
  v16 = a6;
  sub_1AFB95040(*(a3 + 32), &v98);
  v93 = v98;
  v17 = v13 | (v12 << 32);
  v18 = v99;
  sub_1AFB95C50(v17, &v100);
  v20 = v100;
  v19 = v101;
  v22 = v102;
  v21 = v103;
  v23 = v104;
  if (v18)
  {
    if (v104)
    {
      v88 = 0;
      a6 = v16;
      v11 = v78;
      v10 = v80;
      goto LABEL_16;
    }
  }

  else if (v104)
  {
    v23 = v18;
    v20 = v93.columns[0];
    v19 = v93.columns[1];
    v22 = v93.columns[2];
    v21 = v93.columns[3];
  }

  else
  {
    v23 = 0;
    v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], v100.f32[0]), v93.columns[1], *v100.f32, 1), v93.columns[2], v100, 2), v93.columns[3], v100, 3);
    v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], v101.f32[0]), v93.columns[1], *v101.f32, 1), v93.columns[2], v101, 2), v93.columns[3], v101, 3);
    v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], v102.f32[0]), v93.columns[1], *v102.f32, 1), v93.columns[2], v102, 2), v93.columns[3], v102, 3);
    v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], v103.f32[0]), v93.columns[1], *v103.f32, 1), v93.columns[2], v103, 2), v93.columns[3], v103, 3);
  }

  a6 = v16;
  v11 = v78;
  v10 = v80;
  v39 = vmulq_f32(v20, v20);
  v40 = vmulq_f32(v19, v19);
  v41 = vmulq_f32(v22, v22);
  v42 = vzip2q_s32(v39, v41);
  v43 = vzip1q_s32(vzip1q_s32(v39, v41), v40);
  v44 = vtrn2q_s32(v39, v40);
  v44.i32[2] = v41.i32[1];
  v45 = vaddq_f32(vzip1q_s32(v42, vdupq_laneq_s32(v40, 2)), vaddq_f32(v43, v44));
  v40.i64[0] = 0x80000000800000;
  v40.i64[1] = 0x80000000800000;
  v46 = vcgeq_f32(v40, v45);
  v45.i32[3] = 0;
  v47 = vrsqrteq_f32(v45);
  v48 = vmulq_f32(v47, vrsqrtsq_f32(v45, vmulq_f32(v47, v47)));
  v49 = v46;
  v49.i32[3] = 0;
  v50 = vbslq_s8(vcltzq_s32(v49), v45, vmulq_f32(v48, vrsqrtsq_f32(v45, vmulq_f32(v48, v48))));
  v51 = vmulq_n_f32(v20, v50.f32[0]);
  v52 = vmulq_lane_f32(v19, *v50.f32, 1);
  v53 = vmulq_laneq_f32(v22, v50, 2);
  v54 = vuzp1q_s32(v53, v53);
  v55 = vuzp1q_s32(v52, v52);
  v56 = v51;
  if (v46.i32[0])
  {
    v57 = vmlaq_f32(vmulq_f32(vextq_s8(v54, v53, 0xCuLL), vnegq_f32(v52)), v53, vextq_s8(v55, v52, 0xCuLL));
    v56 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
  }

  v58 = vuzp1q_s32(v51, v51);
  v59 = v52;
  if (v46.i32[1])
  {
    v60 = vmlaq_f32(vmulq_f32(vextq_s8(v58, v51, 0xCuLL), vnegq_f32(v53)), v51, vextq_s8(v54, v53, 0xCuLL));
    v59 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
  }

  if (v46.i32[2])
  {
    v61 = vmlaq_f32(vmulq_f32(vextq_s8(v55, v52, 0xCuLL), vnegq_f32(v51)), v52, vextq_s8(v58, v51, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
  }

  v62 = (*v56.i32 + *&v59.i32[1]) + v53.f32[2];
  if (v62 <= 0.0)
  {
    if (*v56.i32 < *&v59.i32[1] || *v56.i32 < v53.f32[2])
    {
      if (*&v59.i32[1] <= v53.f32[2])
      {
        v74 = vzip2q_s32(v56, v59).u64[0];
        v75 = __PAIR64__(v56.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v53.f32[2] + 1.0) - *v56.i32) - *&v59.i32[1])));
        v76 = vdup_lane_s32(*v59.i8, 0);
        v77 = vsub_f32(*v56.i8, v76);
        v76.i32[0] = v75.i32[0];
        v76.i32[0] = vmul_f32(v75, v76).u32[0];
        v76.i32[1] = v77.i32[1];
        *v64.f32 = vadd_f32(v74, *v53.f32);
        *&v64.u32[2] = v76;
        v65 = 0.5 / v75.f32[0];
        goto LABEL_42;
      }

      v69 = sqrtf(((*&v59.i32[1] + 1.0) - *v56.i32) - v53.f32[2]);
      v73.f32[0] = *&v56.i32[1] + *v59.i32;
      v68 = vzip2q_s32(v56, v59).u64[0];
      v73.f32[1] = v69 * v69;
      *&v73.u32[2] = vext_s8(vadd_f32(*v53.f32, v68), vsub_f32(*v53.f32, v68), 4uLL);
    }

    else
    {
      v69 = sqrtf(((*v56.i32 + 1.0) - *&v59.i32[1]) - v53.f32[2]);
      v73.f32[0] = v69 * v69;
      v70 = *&v56.i32[1] + *v59.i32;
      v71 = vzip2q_s32(v56, v59).u64[0];
      LODWORD(v72) = vadd_f32(v71, *v53.f32).u32[0];
      HIDWORD(v72) = vsub_f32(v71, *&v53).i32[1];
      v73.f32[1] = v70;
      v73.i64[1] = v72;
    }

    v66 = vmulq_n_f32(v73, 0.5 / v69).u8[0];
    goto LABEL_51;
  }

  v63 = sqrtf(v62 + 1.0);
  *v64.f32 = vsub_f32(*&vzip2q_s32(v59, vuzp1q_s32(v59, v53)), *&vtrn2q_s32(v53, vzip2q_s32(v53, v56)));
  v64.f32[2] = *&v56.i32[1] - *v59.i32;
  v64.f32[3] = v63 * v63;
  v65 = 0.5 / v63;
LABEL_42:
  v66 = vmulq_n_f32(v64, v65).u8[0];
LABEL_51:
  v88 = v66;
LABEL_16:
  v130[0] = v20;
  v130[1] = v19;
  v130[2] = v22;
  v130[3] = v21;
  v131 = v23;
  if (!*(*a5 + 16))
  {
LABEL_30:
    *(a1 + 8) = v10;
    *(a1 + 24) = v11;
    return;
  }

  v79 = v11;
  v81 = v10;
  v87 = *(a4 + 20);
  v85 = *(a6 + 96);
  v86 = *(a6 + 88);
  sub_1AFB93E58();
  v25 = v24;
  v26 = *(a3 + 104);
  v121[0] = *(a3 + 88);
  v121[1] = v26;
  v122 = *(a3 + 120);
  sub_1AF6B06C0(a2, v121, 0x200000000, &v105);
  v84 = v105;
  if (!v105)
  {
LABEL_29:
    v11 = v79;
    v10 = v81;
    goto LABEL_30;
  }

  v27 = v109;
  v28 = v111;
  v113 = v106;
  v114 = v107;
  v82 = v112;
  v83 = v110;
  if (v112 < 1 || !v109)
  {
LABEL_28:
    sub_1AF5D1564(&v105);
    goto LABEL_29;
  }

  v97 = *(v110 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v29 = *(v111 + 32);
  v30 = (v108 + 24);
  while (1)
  {
    v32 = *(v30 - 6);
    v31 = *(v30 - 5);
    v33 = *(v30 - 4);
    v95 = *(v30 - 1);
    v34 = v30[2];
    v92 = v30[1];
    v94 = *v30;
    v96 = v7;
    if (v97)
    {
      v35 = *(v34 + 376);

      os_unfair_lock_lock(v35);
      os_unfair_lock_lock(*(v34 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v29);
    v36 = *(v28 + 64);
    v123[0] = *(v28 + 48);
    v123[1] = v36;
    v124 = *(v28 + 80);
    v37 = *(*(*(*(v34 + 40) + 16) + 32) + 16) + 1;
    *(v28 + 48) = ecs_stack_allocator_allocate(*(v28 + 32), 48 * v37, 8);
    *(v28 + 56) = v37;
    *(v28 + 72) = 0;
    *(v28 + 80) = 0;
    *(v28 + 64) = 0;
    LOBYTE(v118) = 1;
    v125[0] = v83;
    v125[1] = v34;
    v125[2] = v28;
    v125[3] = v33;
    v125[4] = (v31 - v32 + v33);
    v125[5] = v82;
    v125[6] = v32;
    v125[7] = v31;
    v125[8] = 0;
    v125[9] = 0;
    v126 = 1;
    v127 = v95;
    v128 = v94;
    v129 = v92;
    sub_1AFBC4DE4(v125, v86, v85, a5, v87 == 2, a1, v130, a4, v25, v38, v88);
    if (v96)
    {
      break;
    }

    v115 = v84;
    v116 = v113;
    v117 = v114;
    sub_1AF630994(v28, &v115, v123);
    v7 = 0;
    sub_1AF62D29C(v34);
    ecs_stack_allocator_pop_snapshot(v29);
    if (v97)
    {
      os_unfair_lock_unlock(*(v34 + 344));
      os_unfair_lock_unlock(*(v34 + 376));
    }

    v30 += 6;
    if (!--v27)
    {
      goto LABEL_28;
    }
  }

  v118 = v84;
  v119 = v113;
  v120 = v114;
  sub_1AF630994(v28, &v118, v123);
  sub_1AF62D29C(v34);
  ecs_stack_allocator_pop_snapshot(v29);
  os_unfair_lock_unlock(*(v34 + 344));
  os_unfair_lock_unlock(*(v34 + 376));
  __break(1u);
}

uint64_t sub_1AFBC4DE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, float32x4_t *a7, uint64_t a8, float a9, float32x4_t a10, char a11)
{
  v92 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v91 = sub_1AF9C5D30();
  v19 = v18;
  v90 = sub_1AF9C5D1C();
  v99 = v20;
  v89 = sub_1AF9C5D44();
  v97 = v21;
  v88 = sub_1AF9C5D58();
  v95 = v22;
  v87 = sub_1AF9C5E74();
  v93 = v23;
  v24 = sub_1AF9C5CF4();
  v98 = v25;
  result = sub_1AF9C5EFC();
  v29 = *(a1 + 24);
  v28 = *(a1 + 32);
  if (v29 <= a2)
  {
    v30 = a2;
  }

  else
  {
    v30 = *(a1 + 24);
  }

  if (v28 >= a3)
  {
    v28 = a3;
  }

  if (v28 >= v30)
  {
    v31 = v28 - v30;
    if (v31)
    {
      v32 = 0;
      v33 = *(a1 + 48) - v29 + v30;
      v34 = *(a8 + 12);
      v35 = *(a8 + 15);
      v36 = *(a8 + 14);
      v37 = *(a8 + 13);
      v38 = vdupq_laneq_s32(a10, 3);
      _S2 = a10.i32[3];
      v40 = 16 * v33;
      v41 = v24 + 16 * v33;
      v42 = 4 * v30 - 4 * a2 + 32;
      v43 = v92 + 16 * v33;
      v44 = vextq_s8(vuzp1q_s32(a10, a10), a10, 0xCuLL);
      v45 = vnegq_f32(a10);
      v46 = v91 + 16 * v33;
      v47 = v90 + 16 * v33;
      v48 = 4 * v33;
      v49 = v89 + 4 * v33;
      v50 = v88 + 8 * v33;
      v51 = v87 + v40;
      result += v48;
      while (1)
      {
        v53 = *(a4[7] + v42 + 4 * v32);
        v54 = a4[2];
        if (v54)
        {
          if ((v19 & 1) == 0 && *(v54 + 16) > v53)
          {
            break;
          }
        }

        v66 = *(*a4 + 16 * v53 + 32);
        if (a7[4].i8[0])
        {
          v66.i32[3] = 1.0;
          *(v43 + 16 * v32) = v66;
        }

        else
        {
          v67 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7[3], a7[2], v66, 2), a7[1], *v66.f32, 1), *a7, v66.f32[0]);
          v67.i32[3] = 1.0;
          *(v43 + 16 * v32) = v67;
        }

LABEL_22:
        if (v34)
        {
          v68 = a4[3];
          if (v68)
          {
            if (*(v68 + 16) && (v99 & 1) == 0)
            {
              *(v47 + 16 * v32) = *(v68 + 16 * v53 + 32);
            }
          }
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_36;
        }

        v69 = a4[4];
        if (!v69 || !*(v69 + 16))
        {
          goto LABEL_36;
        }

        if ((v97 & 1) == 0)
        {
          *(v49 + 4 * v32) = *(v69 + 16 * v53 + 32);
LABEL_36:
          if (v36)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }

        if (v95)
        {
          if ((v93 & 1) == 0)
          {
            *(v51 + 16 * v32) = *(v69 + 16 * v53 + 32);
            if (v36)
            {
              goto LABEL_37;
            }

            goto LABEL_43;
          }

          goto LABEL_36;
        }

        *(v50 + 8 * v32) = *(v69 + 16 * v53 + 32);
        if (v36)
        {
LABEL_37:
          v70 = a4[1];
          if (v70 && *(v70 + 16) && (v98 & 1) == 0)
          {
            _Q18 = *(v70 + 16 * v53 + 32);
            if ((a11 & 1) == 0)
            {
              v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q18, _Q18), _Q18, 0xCuLL), v45), _Q18, v44);
              __asm { FMLA            S20, S2, V18.S[3] }

              _Q18 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(a10, _Q18, 3), v38, _Q18), vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL));
              _Q18.i32[3] = _S20;
            }

            *(v41 + 16 * v32) = _Q18;
          }
        }

LABEL_43:
        if ((v27 & 1) == 0)
        {
          v78 = a4[5];
          if (*(v78 + 16) > v53)
          {
            v52 = *(v78 + 4 * v53 + 32);
          }

          else
          {
            v52 = 0;
          }

          *(result + 4 * v32) = v52;
        }

        if (v31 == ++v32)
        {
          return result;
        }
      }

      v55 = *(*a4 + 16 * v53 + 32);
      v56 = *(v54 + 16 * v53 + 32);
      if (a5)
      {
        v58 = a6[1];
        v57 = a6[2];
        v59 = a6[3] ^ v58;
        v60 = a6[4] ^ v57;
        a6[1] = v60 ^ v58;
        a6[2] = v59 ^ v57;
        a6[3] = v59 ^ (v57 << 17);
        a6[4] = __ROR8__(v60, 19);
        v61 = vcvts_n_f32_u64((9 * ((((5 * v57) >> 32) >> 25) | (640 * v57))) & 0xFFFFFFLL, 0x18uLL) * a9;
        v62 = *a7;
        v63 = a7[1];
        v64 = a7[2];
        v65 = vmuls_lane_f32(v61, v56, 2);
        if (a7[4].i8[0])
        {
          v55.i64[0] = vaddq_f32(v55, vmulq_n_f32(v56, v61)).u64[0];
          v55.f32[2] = v55.f32[2] + v65;
          goto LABEL_47;
        }

        v79 = 0;
        v80 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(a7[3], v64, v55.f32[2] + v65), v63, v55.f32[1] + vmuls_lane_f32(v61, *v56.f32, 1)), v62, v55.f32[0] + (v61 * v56.f32[0]));
        v80.i32[3] = 1.0;
        *(v43 + 16 * v32) = v80;
        if ((v37 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v62 = *a7;
        v63 = a7[1];
        v64 = a7[2];
        if (a7[4].i8[0])
        {
LABEL_47:
          v55.i32[3] = 1.0;
          *(v43 + 16 * v32) = v55;
          v79 = 1;
          if ((v37 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_54;
        }

        v79 = 0;
        v81 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a7[3], v64, v55, 2), v63, *v55.f32, 1), v62, v55.f32[0]);
        v81.i32[3] = 1.0;
        *(v43 + 16 * v32) = v81;
        if ((v37 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

LABEL_54:
      v82 = *(a8 + 16);
      v83 = v82 * v56.f32[0];
      if (v79)
      {
        v84 = vmul_n_f32(*&vextq_s8(v56, v56, 4uLL), v82);
        *&v85 = __PAIR64__(v84.u32[0], LODWORD(v83));
        *(&v85 + 1) = v84.u32[1];
        *(v46 + 16 * v32) = v85;
      }

      else
      {
        v86 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v64, vmuls_lane_f32(v82, v56, 2)), v63, vmuls_lane_f32(v82, *v56.f32, 1)), v62, v83);
        v86.i32[3] = 0;
        *(v46 + 16 * v32) = v86;
      }

      goto LABEL_22;
    }
  }

  return result;
}

double sub_1AFBC5294@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1065353216;
  *(a1 + 16) = 1065353216;
  *(a1 + 20) = 0;
  return result;
}

uint64_t sub_1AFBC52D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6EBC();
  *a1 = result;
  return result;
}

void sub_1AFBC5308(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E45746E65726170;
  v5 = 0xE400000000000000;
  v6 = 1701080941;
  if (v2 != 6)
  {
    v6 = 0x5374697265686E69;
    v5 = 0xEC000000656C6163;
  }

  v7 = 0x80000001AFF23530;
  v8 = 0xD000000000000012;
  if (v2 != 4)
  {
    v8 = 0x797469636F6C6576;
    v7 = 0xEE00726F74636146;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000726F6C6FLL;
  v10 = 0x4374697265686E69;
  if (v2 != 2)
  {
    v10 = 0x5674697265686E69;
    v9 = 0xEF797469636F6C65;
  }

  if (*v1)
  {
    v4 = 0x6C696261626F7270;
    v3 = 0xEB00000000797469;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1AFBC543C()
{
  v1 = *v0;
  v2 = 0x6E45746E65726170;
  v3 = 1701080941;
  if (v1 != 6)
  {
    v3 = 0x5374697265686E69;
  }

  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x797469636F6C6576;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4374697265686E69;
  if (v1 != 2)
  {
    v5 = 0x5674697265686E69;
  }

  if (*v0)
  {
    v2 = 0x6C696261626F7270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFBC556C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBC6EBC();
  *a1 = result;
  return result;
}

uint64_t sub_1AFBC5594(uint64_t a1)
{
  v2 = sub_1AFBCB288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBC55D0(uint64_t a1)
{
  v2 = sub_1AFBCB288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBC560C(void *a1)
{
  v3 = v1;
  sub_1AFBCBCFC(0, &qword_1EB6432A8, sub_1AFBCB288, &type metadata for ParticleSubSpawn.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCB288();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v14) = 2;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 4;
    sub_1AFDFE8C8();
    LOBYTE(v14) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v14) = *(v3 + 20);
    v13 = 6;
    sub_1AF51CC00();
    sub_1AFDFE918();
    LOBYTE(v14) = 7;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AFBC5898@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBC7124(a1, v5);
  if (!v2)
  {
    result = v5[0];
    *a2 = *v5;
    *(a2 + 13) = *(&v5[1] + 5);
  }

  return result;
}

void sub_1AFBC58F4(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[7];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[12];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  v10 = *(v4 + 40);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_1AFBC5ABC()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED73B840;
  v16 = 0;
  v17 = 2;
  v18 = 0;
  v19 = 2;
  v20 = 0;
  sub_1AFCC51A4(1, 2, v7);
  v1 = v7[1];
  *(v0 + 16) = v7[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v8;
  sub_1AF7049B8(1, v9);
  sub_1AFBCB350(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleSubSpawn.State;
  *(inited + 40) = &off_1F2566870;
  sub_1AF5D1EC0(inited, v10);
  sub_1AFBCB3A4(v9, &qword_1ED723D90, &type metadata for ParticleSubSpawn, &off_1F2566840);
  swift_setDeallocating();
  v3 = v10[1];
  *(v0 + 56) = v10[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v11;
  sub_1AF7049CC(1, v12);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = &type metadata for ParticleSubSpawn;
  *(v4 + 40) = &off_1F25667C0;
  sub_1AF5D1EC0(v4, v13);
  sub_1AFBCB3A4(v12, &qword_1ED723D98, &type metadata for ParticleSubSpawn.State, &off_1F25668F8);
  swift_setDeallocating();
  v5 = v13[1];
  *(v0 + 96) = v13[0];
  *(v0 + 112) = v5;
  *(v0 + 128) = v14;
  return v0;
}

uint64_t sub_1AFBC5CA0()
{
  v0 = swift_allocObject();
  sub_1AFBC5ABC();
  return v0;
}

void sub_1AFBC5D08(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v141 = sub_1AF9C5D30();
  v127 = v7;
  if (*(a2 + 12) == 1)
  {
    v128 = sub_1AF9C5D1C();
    v126 = v8;
  }

  else
  {
    v128 = 0;
    v126 = 1;
  }

  if (*(a2 + 14) == 1)
  {
    v9 = sub_1AF9C5CF4();
    v125 = v10;
  }

  else
  {
    v9 = 0;
    v125 = 1;
  }

  if (*(a2 + 15) == 1)
  {
    v11 = sub_1AF9C5D44();
    v13 = v12;
    if (*(a2 + 15) == 1)
    {
      v14 = sub_1AF9C5D58();
      v123 = v15;
      if (*(a2 + 15) == 1)
      {
        v16 = sub_1AF9C5E74();
        v118 = v17;
        goto LABEL_15;
      }

      v16 = 0;
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v123 = 1;
    }
  }

  else
  {
    v14 = 0;
    v11 = 0;
    v16 = 0;
    v123 = 1;
    v13 = 1;
  }

  v118 = 1;
LABEL_15:
  v18 = sub_1AF9C5E38();
  v21 = v20;
  v22 = *(a2 + 8);
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  v124 = v24;
  if (v22 >= 1.0)
  {
    v67 = v23 - v24;
    if (v23 == v24)
    {
      return;
    }

    v68 = 0;
    v117 = v141 + 16 * v24;
    v115 = v9 + 16 * v24;
    v113 = v128 + 16 * v24;
    v111 = v11 + 4 * v24;
    v69 = v16 + 16 * v24;
    v120 = v18 + 4 * v24;
    v70 = v6 + 16 * v24;
    v107 = v69;
    v109 = v14 + 8 * v24;
    while (1)
    {
      v140 = v145;
      v144 = *(v70 + 16 * v68);
      v72 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_1AF42250C(0, *(v72 + 2) + 1, 1, v72);
        *a3 = v72;
      }

      v75 = *(v72 + 2);
      v74 = *(v72 + 3);
      if (v75 >= v74 >> 1)
      {
        v72 = sub_1AF42250C(v74 > 1, v75 + 1, 1, v72);
        *a3 = v72;
      }

      v76 = v144;
      v76.i32[3] = v140;
      *(v72 + 2) = v75 + 1;
      v145 = v140;
      *&v72[16 * v75 + 32] = v76;
      if ((v127 & 1) == 0)
      {
        v77 = a3[2];
        if (v77)
        {
          v135 = *(v117 + 16 * v68);
          v78 = swift_isUniquelyReferenced_nonNull_native();
          a3[2] = v77;
          if ((v78 & 1) == 0)
          {
            v77 = sub_1AF42250C(0, *(v77 + 2) + 1, 1, v77);
            a3[2] = v77;
          }

          v80 = *(v77 + 2);
          v79 = *(v77 + 3);
          if (v80 >= v79 >> 1)
          {
            v77 = sub_1AF42250C(v79 > 1, v80 + 1, 1, v77);
            a3[2] = v77;
          }

          v76 = v121;
          v81 = v135;
          v81.i32[3] = v121.i32[3];
          *(v77 + 2) = v80 + 1;
          *&v77[16 * v80 + 32] = v81;
          v121 = v81;
        }
      }

      if ((v125 & 1) == 0)
      {
        v82 = a3[1];
        if (v82)
        {
          v136 = *(v115 + 16 * v68);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          a3[1] = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_1AF42458C(0, *(v82 + 2) + 1, 1, v82);
            a3[1] = v82;
          }

          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            v82 = sub_1AF42458C(v84 > 1, v85 + 1, 1, v82);
            a3[1] = v82;
          }

          *(v82 + 2) = v85 + 1;
          v76 = v136;
          *&v82[16 * v85 + 32] = v136;
        }
      }

      if ((v126 & 1) == 0)
      {
        v86 = a3[3];
        if (v86)
        {
          v137 = *(v113 + 16 * v68);
          v87 = swift_isUniquelyReferenced_nonNull_native();
          a3[3] = v86;
          if ((v87 & 1) == 0)
          {
            v86 = sub_1AF42053C(0, *(v86 + 2) + 1, 1, v86);
            a3[3] = v86;
          }

          v89 = *(v86 + 2);
          v88 = *(v86 + 3);
          if (v89 >= v88 >> 1)
          {
            v86 = sub_1AF42053C(v88 > 1, v89 + 1, 1, v86);
            a3[3] = v86;
          }

          *(v86 + 2) = v89 + 1;
          v76 = v137;
          *&v86[16 * v89 + 32] = v137;
        }
      }

      if (v13)
      {
        if (v123)
        {
          if (v118)
          {
            goto LABEL_127;
          }

          v90 = a3[4];
          if (!v90)
          {
            goto LABEL_127;
          }

          v76 = *(v107 + 16 * v68);
LABEL_121:
          v139 = v76;
          v96 = swift_isUniquelyReferenced_nonNull_native();
          a3[4] = v90;
          if ((v96 & 1) == 0)
          {
            v90 = sub_1AF42250C(0, *(v90 + 2) + 1, 1, v90);
            a3[4] = v90;
          }

          v93 = *(v90 + 2);
          v97 = *(v90 + 3);
          v94 = v93 + 1;
          if (v93 >= v97 >> 1)
          {
            v90 = sub_1AF42250C(v97 > 1, v93 + 1, 1, v90);
            a3[4] = v90;
          }

          v95 = v139;
LABEL_126:
          *(v90 + 2) = v94;
          *&v90[16 * v93 + 32] = v95;
          goto LABEL_127;
        }

        v90 = a3[4];
        if (v90)
        {
          v76.i64[0] = *(v109 + 8 * v68);
          goto LABEL_121;
        }
      }

      else
      {
        v90 = a3[4];
        if (v90)
        {
          v76.i32[0] = *(v111 + 4 * v68);
          v138 = *v76.i8;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          a3[4] = v90;
          if ((v91 & 1) == 0)
          {
            v90 = sub_1AF42250C(0, *(v90 + 2) + 1, 1, v90);
            a3[4] = v90;
          }

          v93 = *(v90 + 2);
          v92 = *(v90 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v90 = sub_1AF42250C(v92 > 1, v93 + 1, 1, v90);
            a3[4] = v90;
          }

          v95 = vdupq_lane_s32(v138, 0);
          v95.i32[3] = 0;
          goto LABEL_126;
        }
      }

LABEL_127:
      if (v21)
      {
        v98 = a3[5];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        a3[5] = v98;
        if ((v99 & 1) == 0)
        {
          v98 = sub_1AF42447C(0, *(v98 + 2) + 1, 1, v98);
          a3[5] = v98;
        }

        v101 = *(v98 + 2);
        v100 = *(v98 + 3);
        v102 = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          v98 = sub_1AF42447C(v100 > 1, v101 + 1, 1, v98);
          a3[5] = v98;
        }

        v71 = v124 + v68;
      }

      else
      {
        v71 = *(v120 + 4 * v68);
        v98 = a3[5];
        v103 = swift_isUniquelyReferenced_nonNull_native();
        a3[5] = v98;
        if ((v103 & 1) == 0)
        {
          v98 = sub_1AF42447C(0, *(v98 + 2) + 1, 1, v98);
          a3[5] = v98;
        }

        v101 = *(v98 + 2);
        v104 = *(v98 + 3);
        v102 = v101 + 1;
        if (v101 >= v104 >> 1)
        {
          v98 = sub_1AF42447C(v104 > 1, v101 + 1, 1, v98);
          a3[5] = v98;
        }
      }

      *(v98 + 2) = v102;
      *&v98[4 * v101 + 32] = v71;
      if (v67 == ++v68)
      {
        return;
      }
    }
  }

  v25 = v23 - v24;
  if (v23 != v24)
  {
    v26 = 0;
    v114 = v141 + 16 * v24;
    v112 = v9 + 16 * v24;
    v110 = v128 + 16 * v24;
    v108 = v11 + 4 * v24;
    v119 = v18 + 4 * v24;
    v122 = v6 + 16 * v24;
    v105 = v16 + 16 * v24;
    v106 = v14 + 8 * v24;
    do
    {
      if (v22 <= 0.0)
      {
        v27 = v19;
      }

      else
      {
        v129 = v19;
        v28 = drand48();
        if (v22 > v28)
        {
          v142 = *(v122 + 16 * v26);
          v29 = *a3;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v29;
          if ((v30 & 1) == 0)
          {
            v29 = sub_1AF42250C(0, *(v29 + 2) + 1, 1, v29);
            *a3 = v29;
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          v33 = v142;
          v34 = v129.i32[3];
          if (v32 >= v31 >> 1)
          {
            v64 = sub_1AF42250C(v31 > 1, v32 + 1, 1, v29);
            v34 = v129.i32[3];
            v33 = v142;
            v29 = v64;
            *a3 = v64;
          }

          v33.i32[3] = v34;
          v143 = v33;
          *(v29 + 2) = v32 + 1;
          *&v29[16 * v32 + 32] = v33;
          if ((v127 & 1) == 0)
          {
            v35 = a3[2];
            if (v35)
            {
              v130 = *(v114 + 16 * v26);
              v36 = swift_isUniquelyReferenced_nonNull_native();
              a3[2] = v35;
              if ((v36 & 1) == 0)
              {
                v35 = sub_1AF42250C(0, *(v35 + 2) + 1, 1, v35);
                a3[2] = v35;
              }

              v38 = *(v35 + 2);
              v37 = *(v35 + 3);
              if (v38 >= v37 >> 1)
              {
                v35 = sub_1AF42250C(v37 > 1, v38 + 1, 1, v35);
                a3[2] = v35;
              }

              v33 = v116;
              v39 = v130;
              v39.i32[3] = v116.i32[3];
              *(v35 + 2) = v38 + 1;
              *&v35[16 * v38 + 32] = v39;
              v116 = v39;
            }
          }

          if ((v125 & 1) == 0)
          {
            v40 = a3[1];
            if (v40)
            {
              v131 = *(v112 + 16 * v26);
              v41 = swift_isUniquelyReferenced_nonNull_native();
              a3[1] = v40;
              if ((v41 & 1) == 0)
              {
                v40 = sub_1AF42458C(0, *(v40 + 2) + 1, 1, v40);
                a3[1] = v40;
              }

              v43 = *(v40 + 2);
              v42 = *(v40 + 3);
              if (v43 >= v42 >> 1)
              {
                v40 = sub_1AF42458C(v42 > 1, v43 + 1, 1, v40);
                a3[1] = v40;
              }

              *(v40 + 2) = v43 + 1;
              v33 = v131;
              *&v40[16 * v43 + 32] = v131;
            }
          }

          if ((v126 & 1) == 0)
          {
            v44 = a3[3];
            if (v44)
            {
              v132 = *(v110 + 16 * v26);
              v45 = swift_isUniquelyReferenced_nonNull_native();
              a3[3] = v44;
              if ((v45 & 1) == 0)
              {
                v44 = sub_1AF42053C(0, *(v44 + 2) + 1, 1, v44);
                a3[3] = v44;
              }

              v47 = *(v44 + 2);
              v46 = *(v44 + 3);
              if (v47 >= v46 >> 1)
              {
                v44 = sub_1AF42053C(v46 > 1, v47 + 1, 1, v44);
                a3[3] = v44;
              }

              *(v44 + 2) = v47 + 1;
              v33 = v132;
              *&v44[16 * v47 + 32] = v132;
            }
          }

          if (v13)
          {
            if (v123)
            {
              if ((v118 & 1) == 0)
              {
                v48 = a3[4];
                if (v48)
                {
                  v33 = *(v105 + 16 * v26);
                  goto LABEL_61;
                }
              }

LABEL_67:
              if (v21)
              {
                v56 = a3[5];
                v57 = swift_isUniquelyReferenced_nonNull_native();
                a3[5] = v56;
                if ((v57 & 1) == 0)
                {
                  v56 = sub_1AF42447C(0, *(v56 + 2) + 1, 1, v56);
                  a3[5] = v56;
                }

                v59 = *(v56 + 2);
                v58 = *(v56 + 3);
                v60 = v59 + 1;
                v27 = v143;
                if (v59 >= v58 >> 1)
                {
                  v65 = sub_1AF42447C(v58 > 1, v59 + 1, 1, v56);
                  v27 = v143;
                  v56 = v65;
                  a3[5] = v65;
                }

                v61 = v124 + v26;
              }

              else
              {
                v61 = *(v119 + 4 * v26);
                v56 = a3[5];
                v62 = swift_isUniquelyReferenced_nonNull_native();
                a3[5] = v56;
                if ((v62 & 1) == 0)
                {
                  v56 = sub_1AF42447C(0, *(v56 + 2) + 1, 1, v56);
                  a3[5] = v56;
                }

                v59 = *(v56 + 2);
                v63 = *(v56 + 3);
                v60 = v59 + 1;
                v27 = v143;
                if (v59 >= v63 >> 1)
                {
                  v66 = sub_1AF42447C(v63 > 1, v59 + 1, 1, v56);
                  v27 = v143;
                  v56 = v66;
                  a3[5] = v66;
                }
              }

              *(v56 + 2) = v60;
              *&v56[4 * v59 + 32] = v61;
              goto LABEL_19;
            }

            v48 = a3[4];
            if (!v48)
            {
              goto LABEL_67;
            }

            v33.i64[0] = *(v106 + 8 * v26);
LABEL_61:
            v134 = v33;
            v54 = swift_isUniquelyReferenced_nonNull_native();
            a3[4] = v48;
            if ((v54 & 1) == 0)
            {
              v48 = sub_1AF42250C(0, *(v48 + 2) + 1, 1, v48);
              a3[4] = v48;
            }

            v51 = *(v48 + 2);
            v55 = *(v48 + 3);
            v52 = v51 + 1;
            if (v51 >= v55 >> 1)
            {
              v48 = sub_1AF42250C(v55 > 1, v51 + 1, 1, v48);
              a3[4] = v48;
            }

            v53 = v134;
          }

          else
          {
            v48 = a3[4];
            if (!v48)
            {
              goto LABEL_67;
            }

            v33.i32[0] = *(v108 + 4 * v26);
            v133 = *v33.i8;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            a3[4] = v48;
            if ((v49 & 1) == 0)
            {
              v48 = sub_1AF42250C(0, *(v48 + 2) + 1, 1, v48);
              a3[4] = v48;
            }

            v51 = *(v48 + 2);
            v50 = *(v48 + 3);
            v52 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v48 = sub_1AF42250C(v50 > 1, v51 + 1, 1, v48);
              a3[4] = v48;
            }

            v53 = vdupq_lane_s32(v133, 0);
            v53.i32[3] = 0;
          }

          *(v48 + 2) = v52;
          *&v48[16 * v51 + 32] = v53;
          goto LABEL_67;
        }

        v27 = v129;
      }

LABEL_19:
      ++v26;
      v19 = v27;
    }

    while (v25 != v26);
  }
}

uint64_t sub_1AFBC6970(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

uint64_t sub_1AFBC6A98()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  sub_1AFCC51A4(1, 2, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t destroy for ParticleSubSpawn.State()
{
}

void *initializeWithCopy for ParticleSubSpawn.State(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  return a1;
}

void *assignWithCopy for ParticleSubSpawn.State(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  return a1;
}

_OWORD *assignWithTake for ParticleSubSpawn.State(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for ParticleSubSpawn(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleSubSpawn(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSubSpawn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFBC6EBC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBC6F08()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBC6F54()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFBC6FA0(uint64_t result, uint64_t a2, float a3, float a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = *(v4 + 16);
    v8 = (result + 48);
    v9 = *(result + 48);
    v10 = *(v9 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v9 + 3) >> 1)
    {
      if (v10 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = v10;
      }

      v9 = sub_1AF41FDF8(isUniquelyReferenced_nonNull_native, v12, 0, v9);
    }

    *v8 = v9;
    result = v7 - v10;
    if (v7 >= v10)
    {
      if (v10 < v7)
      {
        result = sub_1AF490FD0(result, 0);
      }
    }

    else
    {
      result = sub_1AFBBFB94(v10 - v7);
    }

    v13 = *(v4 + 16);
    if (v13)
    {
      v14 = *v8;

      v15 = 0;
      for (i = 0; i != v13; ++i)
      {
        v22 = *(v4 + 16 * i + 32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1AFC0DB20(v14);
        }

        v17 = &v14[4 * i];
        v18 = vmulq_n_f32(v22, a3);
        v18.i32[2] = vmuls_lane_f32(a3, v22, 2);
        v19 = vmulq_f32(v18, v18);
        v19.f32[0] = (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) * a4) + *(v17 + 8);
        *(v17 + 8) = v19.i32[0];
        v15 += v19.f32[0];
      }

      *v8 = v14;
      v20 = v15;
    }

    else
    {
      v20 = 0.0;
    }

    *(a2 + 64) = v20 + *(a2 + 64);
  }

  return result;
}

uint64_t sub_1AFBC7124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFBCBCFC(0, &qword_1EB633B10, sub_1AFBCB288, &type metadata for ParticleSubSpawn.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[3];
  v30 = a1;
  sub_1AF441150(a1, v11);
  sub_1AFBCB288();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
  }

  v12 = v7;
  v31 = 0;
  sub_1AF47FEB4();
  v13 = v6;
  sub_1AFDFE768();
  v14 = v32;
  LOBYTE(v32) = 1;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v32) = 2;
  v17 = sub_1AFDFE718();
  LOBYTE(v32) = 3;
  v29 = sub_1AFDFE718();
  LOBYTE(v32) = 4;
  v28 = sub_1AFDFE718();
  LOBYTE(v32) = 5;
  sub_1AFDFE738();
  v19 = v18;
  v31 = 6;
  sub_1AF51CBAC();
  sub_1AFDFE768();
  v20 = v32;
  LOBYTE(v32) = 7;
  v21 = sub_1AFDFE6A8();
  v27 = v17 & 1;
  v22 = v29 & 1;
  v23 = v28 & 1;
  v24 = v21;
  (*(v12 + 8))(v10, v13);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v30);
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 12) = v27;
  *(a2 + 13) = v22;
  *(a2 + 14) = v23;
  *(a2 + 15) = v24 & 1;
  *(a2 + 16) = v19;
  *(a2 + 20) = v20;
  return result;
}

void *sub_1AFBC7494(void *a1)
{
  sub_1AFBCBCFC(0, &unk_1ED722FB0, sub_1AFBCBA78, &type metadata for ParticleBurstSpawn.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AFBCBA78();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AFBCBACC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AFBCBB20(&qword_1ED723198);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

uint64_t sub_1AFBC76B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AFBCBCFC(0, &qword_1EB630A88, sub_1AFBCB998, &type metadata for ParticleVariableSpawn.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCB998();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  sub_1AFBCBACC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v18 = 0;
  sub_1AFBCB9EC(&qword_1ED7231A0);
  v11 = v17;
  sub_1AFDFE768();
  v12 = v19;
  v18 = 1;
  sub_1AFDFE768();
  v13 = v19;
  v18 = 2;
  sub_1AFDFE768();
  (*(v10 + 8))(v9, v11);
  v14 = v19;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  return result;
}

float sub_1AFBC7964(void *a1)
{
  sub_1AFBCBCFC(0, &qword_1EB632840, sub_1AFBCB944, &type metadata for ParticleSpawnOverDistance.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCB944();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE6A8();
    v12[13] = 2;
    sub_1AFDFE6A8();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

float sub_1AFBC7B74(void *a1)
{
  sub_1AFBCBCFC(0, &qword_1EB6330D8, sub_1AFBCBBAC, &type metadata for ParticlePeriodicBurstSpawn.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBCBBAC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AFBCBACC(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v12 = 0;
    sub_1AFBCBB20(&qword_1ED723198);
    sub_1AFDFE768();
    sub_1AFBCBACC(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v12 = 1;
    sub_1AFBCB9EC(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = *&v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

void sub_1AFBC7E40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 + 20);
  if (((*(*a6 + 104))(*(a4 + 20)) & 1) == 0)
  {
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a5;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64D8A4(0, *(v12 + 2));
  }

  else
  {
    v13 = sub_1AFC85A0C(0, *(v12 + 3) >> 1);

    *a5 = v13;
  }

  if (*(a4 + 12) == 1)
  {
    v14 = a5 + 3;
    if (!a5[3])
    {
      *v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v14;
    if (v15)
    {
      sub_1AF64D5B0(0, *(v16 + 16));
    }

    else
    {
      v17 = sub_1AFC85750(0, *(v16 + 24) >> 1);

      *v14 = v17;
    }
  }

  if (*(a4 + 15) == 1)
  {
    v18 = a5 + 4;
    if (!a5[4])
    {
      *v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    if (v19)
    {
      sub_1AF64D8A4(0, *(v20 + 16));
    }

    else
    {
      v21 = sub_1AFC85A0C(0, *(v20 + 24) >> 1);

      *v18 = v21;
    }
  }

  v22 = a5 + 2;
  if (!a5[2])
  {
    *v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  if (v23)
  {
    sub_1AF64D8A4(0, *(v24 + 16));
    if (v10 == 3)
    {
      goto LABEL_24;
    }

LABEL_23:
    if (*(a4 + 14) != 1)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v25 = sub_1AFC85A0C(0, *(v24 + 24) >> 1);

  *v22 = v25;
  if (v10 != 3)
  {
    goto LABEL_23;
  }

LABEL_24:
  v26 = a5 + 1;
  if (!a5[1])
  {
    *v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v26;
  if (v27)
  {
    sub_1AF64D988(0, *(v28 + 16));
  }

  else
  {
    v29 = sub_1AFC85E80(0, *(v28 + 24) >> 1);

    *v26 = v29;
  }

LABEL_29:
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v31 = a5[5];
  v223 = a5;
  if (v30)
  {
    sub_1AF64C528(0, *(v31 + 16));
  }

  else
  {
    v32 = sub_1AFC85E6C(0, *(v31 + 24) >> 1);

    a5[5] = v32;
  }

  v33 = *a4;
  v34 = a4[1];
  if (!sub_1AF67CACC(&type metadata for EmitterRuntime, &off_1F25635C8, v33 | (v34 << 32)))
  {
    return;
  }

  v35 = sub_1AF6496EC(a3);

  v36 = sub_1AF693B94(v35, &type metadata for IsSubEntityOf);
  v38 = v37;

  if ((v38 & 1) == 0 && __PAIR64__(v34, v33) == v36)
  {
    return;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      if (qword_1ED72D720 != -1)
      {
        swift_once();
      }

      v261 = qword_1ED73B840;
      v262 = 0;
      v263 = 2;
      v264 = 0;
      v265 = 2;
      v266 = 0;
      sub_1AF8291B8(&v245);
      sub_1AFBCB414(0, &qword_1ED726A10, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1AFE431C0;
      *(v39 + 56) = &type metadata for EmitterReference;
      *(v39 + 64) = &off_1F2563D20;
      *(v39 + 32) = v33;
      v40 = v39 + 32;
      *(v39 + 36) = v34;
      sub_1AF5FDBF0(v248);
      sub_1AFBCB3A4(&v245, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
      swift_deallocClassInstance();
      *&v250 = *v248;
      DWORD2(v250) = *&v248[8];
      BYTE12(v250) = v248[12];
      *&v251 = *&v248[16] | 8;
      BYTE8(v251) = v248[24];
      v252 = *&v248[32];
      sub_1AF6B06C0(a7, &v250, 0x200000000, v239);
      if (*v239)
      {
        v195 = v242;
        if (v242 > 0)
        {
          v192 = *(&v240 + 1);
          if (*(&v240 + 1))
          {
            v189 = *&v239[40];
            v41 = *(&v241 + 1);
            v186 = v241;
            v42 = *(v241 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v215 = *(*(&v241 + 1) + 32);
            *v249 = *v239;
            *&v249[8] = *&v239[8];
            *&v249[24] = *&v239[24];
            v232 = *&v239[32];
            v233 = v240;
            v234 = v241;
            v235 = v242;
            v230 = *v239;
            v231 = *&v239[16];
            sub_1AF5DD298(&v230, &v253);
            v43 = 0;
            v183 = v42;
            v226 = v41;
            while (1)
            {
              v211 = v43;
              v44 = (v189 + 48 * v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = v44[2];
              v48 = *(v44 + 2);
              v49 = *(v44 + 3);
              v50 = *(v44 + 4);
              v51 = *(v44 + 5);
              if (v42)
              {
                v52 = *(v51 + 376);

                os_unfair_lock_lock(v52);
                os_unfair_lock_lock(*(v51 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v215);
              v203 = *(v41 + 4);
              v207 = *(v41 + 3);
              v199 = v41[10];
              v219 = v51;
              v53 = *(*(*(*(v51 + 40) + 16) + 32) + 16) + 1;
              v41[6] = ecs_stack_allocator_allocate(v41[4], 48 * v53, 8);
              v41[7] = v53;
              v54 = v219;
              v41[9] = 0;
              v41[10] = 0;
              v41[8] = 0;
              LOBYTE(v237[0]) = 1;
              *&v253 = v186;
              *(&v253 + 1) = v219;
              *&v254 = v41;
              *(&v254 + 1) = v47;
              *&v255 = (v46 - v45 + v47);
              *(&v255 + 1) = v195;
              *&v256 = v45;
              *(&v256 + 1) = v46;
              v257 = 0uLL;
              LOBYTE(v258) = 1;
              *(&v258 + 1) = v48;
              v259 = v49;
              v260 = v50;
              sub_1AFBC5D08(&v253, a4, v223);
              v55 = v41[6];
              v56 = v41[8];
              if (!v56)
              {
                v79 = v41[7];
                v80 = v41[4];
                v81 = v211;
                goto LABEL_76;
              }

              for (i = 0; i != v56; ++i)
              {
                v59 = v55;
                v60 = (v55 + 48 * i);
                v61 = *v60;
                v62 = v60[4];
                v63 = v226[9];
                if (v63)
                {
                  v64 = v61 == v63;
                }

                else
                {
                  v64 = 0;
                }

                if (v64)
                {
                  goto LABEL_48;
                }

                v65 = *v249;
                if (!*(*v249 + 22))
                {
                  goto LABEL_48;
                }

                v66 = v60[2];
                v67 = *v249 + 41;
                v68 = *(*v249 + 18);
                if (v68 >= 0x10)
                {
                  v69 = (v67 + *(*v249 + 16));
                  v70 = v68 >> 4;
                  v71 = *v249 + 41;
                  while (*v69 != v61)
                  {
                    ++v71;
                    v69 += 2;
                    if (!--v70)
                    {
                      goto LABEL_64;
                    }
                  }

                  v72 = *(v71 + *(*v249 + 20));
                  v73 = v72 > 5;
                  v74 = (1 << v72) & 0x23;
                  if (v73 || v74 == 0)
                  {
LABEL_48:

                    v62(v58);

                    goto LABEL_49;
                  }
                }

LABEL_64:
                if (swift_conformsToProtocol2() && v66)
                {
                  if (sub_1AF5FC8D8(v66))
                  {
                    goto LABEL_48;
                  }

                  v76 = *(v65 + 18);
                  if (v76 < 0x10)
                  {
                    goto LABEL_48;
                  }

                  v77 = (v67 + *(v65 + 16));
                  v78 = 16 * (v76 >> 4);
                  while (*v77 != v66)
                  {
                    v77 += 2;
                    v78 -= 16;
                    if (!v78)
                    {
                      goto LABEL_48;
                    }
                  }
                }

LABEL_49:
                v55 = v59;
              }

              v41 = v226;
              v79 = v226[7];
              v55 = v226[6];
              v80 = v226[4];
              v81 = v211;
              if (v226[8] >= 1)
              {
                swift_arrayDestroy();
              }

              v42 = v183;
              v54 = v219;
LABEL_76:
              ecs_stack_allocator_deallocate(v80, v55, 48 * v79);
              *(v41 + 3) = v207;
              *(v41 + 4) = v203;
              v41[10] = v199;
              sub_1AF62D29C(v54);
              ecs_stack_allocator_pop_snapshot(v215);
              if (v42)
              {
                os_unfair_lock_unlock(*(v54 + 344));
                os_unfair_lock_unlock(*(v54 + 376));
              }

              v43 = v81 + 1;
              if (v43 == v192)
              {
                goto LABEL_186;
              }
            }
          }

          goto LABEL_185;
        }

        goto LABEL_181;
      }

LABEL_180:
      sub_1AFBCB3A4(v248, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
      return;
    }

    if (*(a7 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) == 1 && !*(a7 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16))
    {
      return;
    }

    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v261 = qword_1ED73B840;
    v262 = 0;
    v263 = 2;
    v264 = 0;
    v265 = 2;
    v266 = 0;
    sub_1AF8291B8(&v245);
    sub_1AFBCB414(0, &qword_1ED726A10, MEMORY[0x1E69E6F90]);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1AFE431C0;
    *(v124 + 56) = &type metadata for EmitterReference;
    *(v124 + 64) = &off_1F2563D20;
    *(v124 + 32) = v33;
    v125 = v124 + 32;
    *(v124 + 36) = v34;
    sub_1AF5FDBF0(v248);
    sub_1AFBCB3A4(&v245, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v125);
    swift_deallocClassInstance();
    *&v250 = *v248;
    DWORD2(v250) = *&v248[8];
    BYTE12(v250) = v248[12];
    *&v251 = *&v248[16] | 0x10;
    BYTE8(v251) = v248[24];
    v252 = *&v248[32];
    sub_1AF6B06C0(a7, &v250, 0x200000000, v239);
    if (!*v239)
    {
      goto LABEL_180;
    }

    v197 = v242;
    if (v242 > 0)
    {
      v194 = *(&v240 + 1);
      if (!*(&v240 + 1))
      {
LABEL_185:
        v255 = *&v239[32];
        v256 = v240;
        v257 = v241;
        v258 = v242;
        v253 = *v239;
        v254 = *&v239[16];
        sub_1AF5DD298(&v253, &v230);
LABEL_186:
        sub_1AFBCB3A4(v248, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
        sub_1AF5D1564(v239);
        goto LABEL_187;
      }

      v191 = *&v239[40];
      v126 = *(&v241 + 1);
      v188 = v241;
      v127 = *(v241 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v217 = *(*(&v241 + 1) + 32);
      *v249 = *v239;
      *&v249[8] = *&v239[8];
      *&v249[24] = *&v239[24];
      v232 = *&v239[32];
      v233 = v240;
      v234 = v241;
      v235 = v242;
      v230 = *v239;
      v231 = *&v239[16];
      sub_1AF5DD298(&v230, &v253);
      v128 = 0;
      v185 = v127;
      v228 = v126;
LABEL_132:
      v213 = v128;
      v129 = (v191 + 48 * v128);
      v130 = *v129;
      v131 = v129[1];
      v132 = v129[2];
      v133 = *(v129 + 2);
      v134 = *(v129 + 3);
      v135 = *(v129 + 4);
      v136 = *(v129 + 5);
      if (v127)
      {
        v137 = *(v136 + 376);

        os_unfair_lock_lock(v137);
        os_unfair_lock_lock(*(v136 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v217);
      v205 = *(v126 + 4);
      v209 = *(v126 + 3);
      v201 = v126[10];
      v221 = v136;
      v138 = *(*(*(*(v136 + 40) + 16) + 32) + 16) + 1;
      v126[6] = ecs_stack_allocator_allocate(v126[4], 48 * v138, 8);
      v126[7] = v138;
      v139 = v221;
      v126[9] = 0;
      v126[10] = 0;
      v126[8] = 0;
      LOBYTE(v237[0]) = 1;
      *&v253 = v188;
      *(&v253 + 1) = v221;
      *&v254 = v126;
      *(&v254 + 1) = v132;
      *&v255 = (v131 - v130 + v132);
      *(&v255 + 1) = v197;
      *&v256 = v130;
      *(&v256 + 1) = v131;
      v257 = 0uLL;
      LOBYTE(v258) = 1;
      *(&v258 + 1) = v133;
      v259 = v134;
      v260 = v135;
      sub_1AFBC5D08(&v253, a4, v223);
      v140 = v126[6];
      v141 = v126[8];
      if (!v141)
      {
        v163 = v126[7];
        v164 = v126[4];
        goto LABEL_165;
      }

      v142 = 0;
      while (1)
      {
        v144 = v140;
        v145 = (v140 + 48 * v142);
        v146 = *v145;
        v147 = v145[4];
        v148 = v228[9];
        if (v148)
        {
          v149 = v146 == v148;
        }

        else
        {
          v149 = 0;
        }

        if (!v149)
        {
          v150 = *v249;
          if (*(*v249 + 22))
          {
            v151 = v145[2];
            v152 = *v249 + 41;
            v153 = *(*v249 + 18);
            if (v153 < 0x10)
            {
              goto LABEL_153;
            }

            v154 = (v152 + *(*v249 + 16));
            v155 = v153 >> 4;
            v156 = *v249 + 41;
            while (*v154 != v146)
            {
              ++v156;
              v154 += 2;
              if (!--v155)
              {
                goto LABEL_153;
              }
            }

            v157 = *(v156 + *(*v249 + 20));
            v73 = v157 > 5;
            v158 = (1 << v157) & 0x23;
            if (!v73 && v158 != 0)
            {
LABEL_153:
              if (!swift_conformsToProtocol2() || !v151)
              {
                goto LABEL_138;
              }

              if ((sub_1AF5FC8D8(v151) & 1) == 0)
              {
                v160 = *(v150 + 18);
                if (v160 >= 0x10)
                {
                  v161 = (v152 + *(v150 + 16));
                  v162 = 16 * (v160 >> 4);
                  while (*v161 != v151)
                  {
                    v161 += 2;
                    v162 -= 16;
                    if (!v162)
                    {
                      goto LABEL_137;
                    }
                  }

                  goto LABEL_138;
                }
              }
            }
          }
        }

LABEL_137:

        v147(v143);

LABEL_138:
        ++v142;
        v140 = v144;
        if (v142 == v141)
        {
          v126 = v228;
          v163 = v228[7];
          v140 = v228[6];
          v164 = v228[4];
          if (v228[8] >= 1)
          {
            swift_arrayDestroy();
          }

          v127 = v185;
          v139 = v221;
LABEL_165:
          ecs_stack_allocator_deallocate(v164, v140, 48 * v163);
          *(v126 + 3) = v209;
          *(v126 + 4) = v205;
          v126[10] = v201;
          sub_1AF62D29C(v139);
          ecs_stack_allocator_pop_snapshot(v217);
          if (v127)
          {
            os_unfair_lock_unlock(*(v139 + 344));
            os_unfair_lock_unlock(*(v139 + 376));
          }

          v128 = v213 + 1;
          if (v213 + 1 == v194)
          {
            goto LABEL_186;
          }

          goto LABEL_132;
        }
      }
    }

LABEL_181:
    sub_1AFBCB3A4(v248, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
LABEL_187:
    sub_1AF5D1564(v239);
    return;
  }

  if (v10 == 2)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v261 = qword_1ED73B840;
    v262 = 0;
    v263 = 2;
    v264 = 0;
    v265 = 2;
    v266 = 0;
    sub_1AF8291B8(&v245);
    sub_1AFBCB414(0, &qword_1ED726A10, MEMORY[0x1E69E6F90]);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1AFE431C0;
    *(v82 + 56) = &type metadata for EmitterReference;
    *(v82 + 64) = &off_1F2563D20;
    *(v82 + 32) = v33;
    v83 = v82 + 32;
    *(v82 + 36) = v34;
    sub_1AF5FDBF0(v248);
    sub_1AFBCB3A4(&v245, &unk_1EB632BE0, &type metadata for Particle, &off_1F252D788);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v83);
    swift_deallocClassInstance();
    v250 = *v248;
    v251 = *&v248[16];
    v252 = *&v248[32];
    sub_1AF6B06C0(a7, &v250, 0x200000000, v239);
    if (!*v239)
    {
      goto LABEL_180;
    }

    v196 = v242;
    if (v242 <= 0)
    {
      goto LABEL_181;
    }

    v193 = *(&v240 + 1);
    if (!*(&v240 + 1))
    {
      goto LABEL_181;
    }

    v190 = *&v239[40];
    v84 = *(&v241 + 1);
    v187 = v241;
    v85 = *(v241 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v216 = *(*(&v241 + 1) + 32);
    *v249 = *v239;
    *&v249[8] = *&v239[8];
    *&v249[24] = *&v239[24];
    v232 = *&v239[32];
    v233 = v240;
    v234 = v241;
    v235 = v242;
    v230 = *v239;
    v231 = *&v239[16];
    sub_1AF5DD298(&v230, &v253);
    v86 = 0;
    v184 = v85;
    v227 = v84;
LABEL_88:
    v212 = v86;
    v87 = (v190 + 48 * v86);
    v88 = *v87;
    v89 = v87[1];
    v90 = v87[2];
    v91 = *(v87 + 2);
    v92 = *(v87 + 3);
    v93 = *(v87 + 4);
    v94 = *(v87 + 5);
    if (v85)
    {
      v95 = *(v94 + 376);

      os_unfair_lock_lock(v95);
      os_unfair_lock_lock(*(v94 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v216);
    v204 = *(v84 + 4);
    v208 = *(v84 + 3);
    v200 = v84[10];
    v220 = v94;
    v96 = *(*(*(*(v94 + 40) + 16) + 32) + 16) + 1;
    v84[6] = ecs_stack_allocator_allocate(v84[4], 48 * v96, 8);
    v84[7] = v96;
    v97 = v220;
    v84[9] = 0;
    v84[10] = 0;
    v84[8] = 0;
    LOBYTE(v237[0]) = 1;
    *&v253 = v187;
    *(&v253 + 1) = v220;
    *&v254 = v84;
    *(&v254 + 1) = v90;
    *&v255 = (v89 - v88 + v90);
    *(&v255 + 1) = v196;
    *&v256 = v88;
    *(&v256 + 1) = v89;
    v257 = 0uLL;
    LOBYTE(v258) = 1;
    *(&v258 + 1) = v91;
    v259 = v92;
    v260 = v93;
    sub_1AFBC5D08(&v253, a4, v223);
    v98 = v84[6];
    v99 = v84[8];
    if (!v99)
    {
      v121 = v84[7];
      v122 = v84[4];
      v123 = v212;
      goto LABEL_121;
    }

    v100 = 0;
    while (1)
    {
      v102 = v98;
      v103 = (v98 + 48 * v100);
      v104 = *v103;
      v105 = v103[4];
      v106 = v227[9];
      if (v106)
      {
        v107 = v104 == v106;
      }

      else
      {
        v107 = 0;
      }

      if (!v107)
      {
        v108 = *v249;
        if (*(*v249 + 22))
        {
          v109 = v103[2];
          v110 = *v249 + 41;
          v111 = *(*v249 + 18);
          if (v111 < 0x10)
          {
            goto LABEL_109;
          }

          v112 = (v110 + *(*v249 + 16));
          v113 = v111 >> 4;
          v114 = *v249 + 41;
          while (*v112 != v104)
          {
            ++v114;
            v112 += 2;
            if (!--v113)
            {
              goto LABEL_109;
            }
          }

          v115 = *(v114 + *(*v249 + 20));
          v73 = v115 > 5;
          v116 = (1 << v115) & 0x23;
          if (!v73 && v116 != 0)
          {
LABEL_109:
            if (!swift_conformsToProtocol2() || !v109)
            {
              goto LABEL_94;
            }

            if ((sub_1AF5FC8D8(v109) & 1) == 0)
            {
              v118 = *(v108 + 18);
              if (v118 >= 0x10)
              {
                v119 = (v110 + *(v108 + 16));
                v120 = 16 * (v118 >> 4);
                while (*v119 != v109)
                {
                  v119 += 2;
                  v120 -= 16;
                  if (!v120)
                  {
                    goto LABEL_93;
                  }
                }

                goto LABEL_94;
              }
            }
          }
        }
      }

LABEL_93:

      v105(v101);

LABEL_94:
      ++v100;
      v98 = v102;
      if (v100 == v99)
      {
        v84 = v227;
        v121 = v227[7];
        v98 = v227[6];
        v122 = v227[4];
        v123 = v212;
        if (v227[8] >= 1)
        {
          swift_arrayDestroy();
        }

        v85 = v184;
        v97 = v220;
LABEL_121:
        ecs_stack_allocator_deallocate(v122, v98, 48 * v121);
        *(v84 + 3) = v208;
        *(v84 + 4) = v204;
        v84[10] = v200;
        sub_1AF62D29C(v97);
        ecs_stack_allocator_pop_snapshot(v216);
        if (v85)
        {
          os_unfair_lock_unlock(*(v97 + 344));
          os_unfair_lock_unlock(*(v97 + 376));
        }

        v86 = v123 + 1;
        if (v86 == v193)
        {
          goto LABEL_186;
        }

        goto LABEL_88;
      }
    }
  }

  v165 = *(a4 + 2);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v261 = qword_1ED73B840;
  v262 = 0;
  v263 = 2;
  v264 = 0;
  v265 = 2;
  v266 = 0;
  sub_1AF5C9198(v236);
  sub_1AFBCB414(0, &qword_1ED726A10, MEMORY[0x1E69E6F90]);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_1AFE431C0;
  *(v166 + 56) = &type metadata for EmitterReference;
  *(v166 + 64) = &off_1F2563D20;
  *(v166 + 32) = v33;
  v167 = v166 + 32;
  *(v166 + 36) = v34;
  sub_1AF5FDBF0(v237);
  sub_1AFBCB484(v236);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v167);
  swift_deallocClassInstance();
  *v249 = v237[0];
  *&v249[16] = v237[1];
  *&v249[32] = v238;
  sub_1AF6B06C0(a7, v249, 0x200000000, v239);
  v206 = *v239;
  if (!*v239)
  {
    sub_1AFBCB484(v237);
    return;
  }

  v168 = *&v239[40];
  v169 = *(&v240 + 1);
  v170 = *(&v241 + 1);
  v243 = *&v239[8];
  v244 = *&v239[24];
  v198 = v242;
  v202 = v241;
  if (v242 <= 0 || !*(&v240 + 1))
  {
    sub_1AFBCB484(v237);
    goto LABEL_187;
  }

  v171 = *(*(&v241 + 1) + 32);
  v229 = *(v241 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v232 = *&v239[32];
  v233 = v240;
  v234 = v241;
  v235 = v242;
  v230 = *v239;
  v231 = *&v239[16];
  sub_1AF5DD298(&v230, &v253);
  v172 = (v168 + 24);
  v173 = v7;
  while (1)
  {
    v175 = *(v172 - 6);
    v174 = *(v172 - 5);
    v176 = *(v172 - 4);
    v214 = *v172;
    v218 = *(v172 - 1);
    v177 = v172[2];
    v210 = v172[1];
    v222 = v169;
    if (v229)
    {
      v178 = *(v177 + 376);

      os_unfair_lock_lock(v178);
      os_unfair_lock_lock(*(v177 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v171);
    v179 = *(v170 + 64);
    v250 = *(v170 + 48);
    v251 = v179;
    v252 = *(v170 + 80);
    v180 = *(v170 + 32);
    v181 = v171;
    v182 = *(*(*(*(v177 + 40) + 16) + 32) + 16) + 1;

    *(v170 + 48) = ecs_stack_allocator_allocate(v180, 48 * v182, 8);
    *(v170 + 56) = v182;
    *(v170 + 72) = 0;
    *(v170 + 80) = 0;
    *(v170 + 64) = 0;

    LOBYTE(v245) = 1;
    *&v253 = v202;
    *(&v253 + 1) = v177;
    *&v254 = v170;
    *(&v254 + 1) = v176;
    *&v255 = (v174 - v175 + v176);
    *(&v255 + 1) = v198;
    *&v256 = v175;
    *(&v256 + 1) = v174;
    v257 = 0uLL;
    LOBYTE(v258) = 1;
    *(&v258 + 1) = v218;
    v259 = v214;
    v260 = v210;
    sub_1AFD1118C(&v253, v223, a4, v165);
    if (v173)
    {
      break;
    }

    *v248 = v206;
    *&v248[8] = v243;
    *&v248[24] = v244;
    sub_1AF630994(v170, v248, &v250);
    v173 = 0;
    sub_1AF62D29C(v177);
    ecs_stack_allocator_pop_snapshot(v181);
    v171 = v181;
    if (v229)
    {
      os_unfair_lock_unlock(*(v177 + 344));
      os_unfair_lock_unlock(*(v177 + 376));
    }

    v172 += 6;
    v169 = v222 - 1;
    if (v222 == 1)
    {
      sub_1AFBCB484(v237);
      sub_1AF5D1564(v239);
      sub_1AF5D1564(v239);
      return;
    }
  }

  v245 = v206;
  v246 = v243;
  v247 = v244;
  sub_1AF630994(v170, &v245, &v250);
  sub_1AF62D29C(v177);
  ecs_stack_allocator_pop_snapshot(v181);
  os_unfair_lock_unlock(*(v177 + 344));
  os_unfair_lock_unlock(*(v177 + 376));
  __break(1u);
}

void sub_1AFBC94A0(uint64_t a1)
{
  v3 = *(v1 + 32);
  v49[0] = *(v1 + 16);
  v49[1] = v3;
  v50 = *(v1 + 48);
  sub_1AF6B06C0(a1, v49, 0x200000000, &v28);
  v21 = v28;
  if (v28)
  {
    v4 = v31;
    v5 = v32;
    v6 = v34;
    v36 = v29;
    v37 = v30;
    v19 = v35;
    v20 = v33;
    if (v35 > 0 && v32)
    {
      v7 = *(v34 + 32);
      v8 = *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF5D15C0(&v28, v44);
      v9 = (v4 + 24);
      v18 = a1;
      v17 = v8;
      do
      {
        v27 = v5;
        v10 = *(v9 - 6);
        v11 = *(v9 - 4);
        v25 = *v9;
        v26 = *(v9 - 1);
        v12 = v9[2];
        v23 = *(v9 - 5);
        v24 = v9[1];
        if (v8)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v7);
        v14 = *(v6 + 64);
        v42[0] = *(v6 + 48);
        v42[1] = v14;
        v43 = *(v6 + 80);
        v15 = *(v6 + 32);
        v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;

        *(v6 + 48) = ecs_stack_allocator_allocate(v15, 48 * v16, 8);
        *(v6 + 56) = v16;
        *(v6 + 72) = 0;
        *(v6 + 80) = 0;
        *(v6 + 64) = 0;

        LOBYTE(v38) = 1;
        v44[0] = v20;
        v44[1] = v12;
        v44[2] = v6;
        v44[3] = v11;
        v44[4] = (v23 - v10 + v11);
        v44[5] = v19;
        v44[6] = v10;
        v44[7] = v23;
        v44[8] = 0;
        v44[9] = 0;
        v45 = 1;
        v46 = v26;
        v47 = v25;
        v48 = v24;

        sub_1AFD29DB0(v44, v22, v18);

        v39 = v21;
        v40 = v36;
        v41 = v37;
        sub_1AF630994(v6, &v39, v42);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v7);
        v8 = v17;
        if (v17)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        v9 += 6;
        v5 = v27 - 1;
      }

      while (v27 != 1);
      sub_1AF5D1564(&v28);
      sub_1AF5D1564(&v28);
    }

    else
    {
      sub_1AF5D1564(&v28);
    }
  }
}

void sub_1AFBC97D4(uint64_t a1)
{
  v2 = a1;
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) == 1 && *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16) == 0)
  {
    v4 = *(v1 + 32);
    v225[0] = *(v1 + 16);
    v225[1] = v4;
    v226 = *(v1 + 48);
    sub_1AF6B06C0(a1, v225, 0x200000000, v202);
    if (*&v202[0])
    {
      if (v205 > 0)
      {
        v182 = *(&v203 + 1);
        if (*(&v203 + 1))
        {
          v169 = v2;
          v180 = *(&v202[2] + 1);
          v5 = *(&v204 + 1);
          v6 = *(v204 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v7 = *(*(&v204 + 1) + 32);
          v216 = *&v202[0];
          v217 = *(v202 + 8);
          v218 = *(&v202[1] + 8);
          v212 = v202[2];
          v213 = v203;
          v214 = v204;
          v215 = v205;
          v210 = v202[0];
          v211 = v202[1];
          sub_1AF5DD298(&v210, v206);
          v8 = 0;
          v9 = MEMORY[0x1E69E7CC0];
          v179 = v6;
          v10 = 0;
          v177 = v7;
          while (1)
          {
            v11 = v8;
            v12 = (v180 + 48 * v8);
            v187 = *v12;
            v185 = v10;
            v186 = v12[1];
            v13 = *(v12 + 2);
            v14 = *(v12 + 3);
            v15 = *(v12 + 4);
            v16 = *(v12 + 5);
            if (v6)
            {
              v17 = *(v16 + 376);

              os_unfair_lock_lock(v17);
              os_unfair_lock_lock(*(v16 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v7);
            v18 = *(v5 + 64);
            v223[0] = *(v5 + 48);
            v223[1] = v18;
            v224 = *(v5 + 80);
            v19 = *(v5 + 32);
            v20 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
            v191 = v16;

            *(v5 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
            *(v5 + 56) = v20;
            *(v5 + 72) = 0;
            *(v5 + 80) = 0;
            *(v5 + 64) = 0;

            sub_1AF64B110(&type metadata for ParticleSubSpawn, &off_1F2566840, v13, v14, v15, v5);
            v21 = sub_1AF64B110(&type metadata for ParticleSubSpawn.State, &off_1F25668F8, v13, v14, v15, v5);
            if (!v13)
            {
              break;
            }

            if (v15)
            {
              v22 = (v21 + 24);
              do
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v24 = *(v22 - 3);
                if (isUniquelyReferenced_nonNull_native)
                {
                  v25 = *(v24 + 2);
                  v26 = swift_isUniquelyReferenced_nonNull_native();
                  *(v22 - 3) = v24;
                  if ((v26 & 1) == 0)
                  {
                    v24 = sub_1AF42250C(0, v25, 1, v24);
                    *(v22 - 3) = v24;
                  }

                  if (v25)
                  {
                    v27 = *(v24 + 2) - v25;
                    memmove(v24 + 32, &v24[16 * v25 + 32], 16 * v27);
                    *(v24 + 2) = v27;
                  }

                  *(v22 - 3) = v24;
                  if (*(v22 - 2))
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  v28 = v9;
                  if (*(v24 + 3) >= 2uLL)
                  {
                    sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                    v28 = swift_allocObject();
                    v29 = j__malloc_size_0(v28);
                    v30 = v29 - 32;
                    if (v29 < 32)
                    {
                      v30 = v29 - 17;
                    }

                    v28[2] = 0;
                    v28[3] = 2 * (v30 >> 4);
                  }

                  *(v22 - 3) = v28;

                  if (*(v22 - 2))
                  {
LABEL_31:
                    v31 = swift_isUniquelyReferenced_nonNull_native();
                    v32 = *(v22 - 2);
                    if (v31)
                    {
                      v33 = *(v32 + 2);
                      v34 = swift_isUniquelyReferenced_nonNull_native();
                      *(v22 - 2) = v32;
                      if ((v34 & 1) == 0)
                      {
                        v32 = sub_1AF42458C(0, v33, 1, v32);
                        *(v22 - 2) = v32;
                      }

                      if (v33)
                      {
                        v35 = *(v32 + 2) - v33;
                        memmove(v32 + 32, &v32[16 * v33 + 32], 16 * v35);
                        *(v32 + 2) = v35;
                      }

                      *(v22 - 2) = v32;
                    }

                    else
                    {
                      v36 = v9;
                      if (*(v32 + 3) >= 2uLL)
                      {
                        sub_1AFBCB350(0, &qword_1EB638540, type metadata accessor for simd_quatf);
                        v36 = swift_allocObject();
                        v37 = j__malloc_size_0(v36);
                        v38 = v37 - 32;
                        if (v37 < 32)
                        {
                          v38 = v37 - 17;
                        }

                        v36[2] = 0;
                        v36[3] = 2 * (v38 >> 4);
                      }

                      *(v22 - 2) = v36;
                    }
                  }
                }

                v39 = v22 - 1;
                if (*(v22 - 1))
                {
                  v40 = swift_isUniquelyReferenced_nonNull_native();
                  v41 = *v39;
                  if (!v40)
                  {
                    v44 = v9;
                    if (*(v41 + 3) >= 2uLL)
                    {
                      sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                      v44 = swift_allocObject();
                      v45 = j__malloc_size_0(v44);
                      v46 = v45 - 32;
                      if (v45 < 32)
                      {
                        v46 = v45 - 17;
                      }

                      v44[2] = 0;
                      v44[3] = 2 * (v46 >> 4);
                    }

                    *v39 = v44;

                    if (!*v22)
                    {
                      goto LABEL_63;
                    }

LABEL_54:
                    v47 = swift_isUniquelyReferenced_nonNull_native();
                    v48 = *v22;
                    if (v47)
                    {
                      v49 = *(v48 + 2);
                      v50 = swift_isUniquelyReferenced_nonNull_native();
                      *v22 = v48;
                      if ((v50 & 1) == 0)
                      {
                        v48 = sub_1AF42053C(0, v49, 1, v48);
                        *v22 = v48;
                      }

                      sub_1AF64F028(0, v49, 0);
                      *v22 = v48;
                    }

                    else
                    {
                      v51 = v9;
                      if (*(v48 + 3) >= 2uLL)
                      {
                        sub_1AFBCB2DC(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
                        v51 = swift_allocObject();
                        v52 = j__malloc_size_0(v51);
                        v53 = v52 - 32;
                        if (v52 < 32)
                        {
                          v53 = v52 - 17;
                        }

                        v51[2] = 0;
                        v51[3] = 2 * (v53 >> 4);
                      }

                      *v22 = v51;
                    }

                    goto LABEL_63;
                  }

                  v42 = *(v41 + 2);
                  v43 = swift_isUniquelyReferenced_nonNull_native();
                  *v39 = v41;
                  if ((v43 & 1) == 0)
                  {
                    v41 = sub_1AF42250C(0, v42, 1, v41);
                    *v39 = v41;
                  }

                  sub_1AF64F028(0, v42, 0);
                  *v39 = v41;
                }

                if (*v22)
                {
                  goto LABEL_54;
                }

LABEL_63:
                v54 = (v22 + 1);
                if (v22[1])
                {
                  v55 = swift_isUniquelyReferenced_nonNull_native();
                  v56 = *v54;
                  if (v55)
                  {
                    sub_1AF64D8A4(0, *(v56 + 16));
                  }

                  else
                  {
                    v57 = v9;
                    if (*(v56 + 24) >= 2uLL)
                    {
                      sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                      v57 = swift_allocObject();
                      v58 = j__malloc_size_0(v57);
                      v59 = v58 - 32;
                      if (v58 < 32)
                      {
                        v59 = v58 - 17;
                      }

                      v57[2] = 0;
                      v57[3] = 2 * (v59 >> 4);
                    }

                    *v54 = v57;
                  }
                }

                v60 = swift_isUniquelyReferenced_nonNull_native();
                v61 = v22[2];
                if (v60)
                {
                  sub_1AF64C528(0, *(v61 + 2));
                }

                else
                {
                  v62 = v9;
                  if (*(v61 + 3) >= 2uLL)
                  {
                    sub_1AF602734(0, &qword_1EB630928, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
                    v62 = swift_allocObject();
                    v63 = j__malloc_size_0(v62);
                    v64 = v63 - 32;
                    if (v63 < 32)
                    {
                      v64 = v63 - 29;
                    }

                    v62[2] = 0;
                    v62[3] = 2 * (v64 >> 2);
                  }

                  v22[2] = v62;
                }

                v22 += 8;
                --v15;
              }

              while (v15);
            }

LABEL_78:
            v10 = v185;
            sub_1AF630994(v5, &v216, v223);
            sub_1AF62D29C(v191);
            v7 = v177;
            ecs_stack_allocator_pop_snapshot(v177);
            v6 = v179;
            if (v179)
            {
              os_unfair_lock_unlock(*(v191 + 344));
              os_unfair_lock_unlock(*(v191 + 376));
            }

            v8 = v11 + 1;
            if (v11 + 1 == v182)
            {
              sub_1AF5D1564(v202);
              sub_1AF5D1564(v202);
              v2 = v169;
              v1 = v171;
              goto LABEL_141;
            }
          }

          if (v187 == v186)
          {
            goto LABEL_78;
          }

          v65 = v186 - v187;
          v66 = v21 + (v187 << 6);
          while (1)
          {
            v67 = swift_isUniquelyReferenced_nonNull_native();
            v68 = *v66;
            if (v67)
            {
              v69 = *(v68 + 2);
              v70 = swift_isUniquelyReferenced_nonNull_native();
              *v66 = v68;
              if ((v70 & 1) == 0)
              {
                v68 = sub_1AF42250C(0, v69, 1, v68);
                *v66 = v68;
              }

              if (v69)
              {
                v71 = *(v68 + 2) - v69;
                memmove(v68 + 32, &v68[16 * v69 + 32], 16 * v71);
                *(v68 + 2) = v71;
              }

              *v66 = v68;
              if (!*(v66 + 8))
              {
                goto LABEL_106;
              }
            }

            else
            {
              v72 = v9;
              if (*(v68 + 3) >= 2uLL)
              {
                sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                v72 = swift_allocObject();
                v73 = j__malloc_size_0(v72);
                v74 = v73 - 32;
                if (v73 < 32)
                {
                  v74 = v73 - 17;
                }

                v72[2] = 0;
                v72[3] = 2 * (v74 >> 4);
              }

              *v66 = v72;

              if (!*(v66 + 8))
              {
                goto LABEL_106;
              }
            }

            v75 = swift_isUniquelyReferenced_nonNull_native();
            v76 = *(v66 + 8);
            if (v75)
            {
              v77 = *(v76 + 2);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v66 + 8) = v76;
              if ((v78 & 1) == 0)
              {
                v76 = sub_1AF42458C(0, v77, 1, v76);
                *(v66 + 8) = v76;
              }

              if (v77)
              {
                v79 = *(v76 + 2) - v77;
                memmove(v76 + 32, &v76[16 * v77 + 32], 16 * v79);
                *(v76 + 2) = v79;
              }

              *(v66 + 8) = v76;
            }

            else
            {
              v80 = v9;
              if (*(v76 + 3) >= 2uLL)
              {
                sub_1AFBCB350(0, &qword_1EB638540, type metadata accessor for simd_quatf);
                v80 = swift_allocObject();
                v81 = j__malloc_size_0(v80);
                v82 = v81 - 32;
                if (v81 < 32)
                {
                  v82 = v81 - 17;
                }

                v80[2] = 0;
                v80[3] = 2 * (v82 >> 4);
              }

              *(v66 + 8) = v80;
            }

LABEL_106:
            v83 = (v66 + 16);
            if (*(v66 + 16))
            {
              v84 = swift_isUniquelyReferenced_nonNull_native();
              v85 = *v83;
              if (v84)
              {
                v86 = *(v85 + 2);
                v87 = swift_isUniquelyReferenced_nonNull_native();
                *v83 = v85;
                if ((v87 & 1) == 0)
                {
                  v85 = sub_1AF42250C(0, v86, 1, v85);
                  *v83 = v85;
                }

                sub_1AF64F028(0, v86, 0);
                *v83 = v85;
              }

              else
              {
                v88 = v9;
                if (*(v85 + 3) >= 2uLL)
                {
                  sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                  v88 = swift_allocObject();
                  v89 = j__malloc_size_0(v88);
                  v90 = v89 - 32;
                  if (v89 < 32)
                  {
                    v90 = v89 - 17;
                  }

                  v88[2] = 0;
                  v88[3] = 2 * (v90 >> 4);
                }

                *v83 = v88;
              }
            }

            v91 = (v66 + 24);
            if (*(v66 + 24))
            {
              v92 = swift_isUniquelyReferenced_nonNull_native();
              v93 = *v91;
              if (v92)
              {
                sub_1AF64D5B0(0, *(v93 + 16));
              }

              else
              {
                v94 = v9;
                if (*(v93 + 24) >= 2uLL)
                {
                  sub_1AFBCB2DC(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
                  v94 = swift_allocObject();
                  v95 = j__malloc_size_0(v94);
                  v96 = v95 - 32;
                  if (v95 < 32)
                  {
                    v96 = v95 - 17;
                  }

                  v94[2] = 0;
                  v94[3] = 2 * (v96 >> 4);
                }

                *v91 = v94;
              }
            }

            v97 = (v66 + 32);
            if (*(v66 + 32))
            {
              v98 = swift_isUniquelyReferenced_nonNull_native();
              v99 = *v97;
              if (v98)
              {
                sub_1AF64D8A4(0, *(v99 + 16));
              }

              else
              {
                v100 = v9;
                if (*(v99 + 24) >= 2uLL)
                {
                  sub_1AFBCB2DC(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
                  v100 = swift_allocObject();
                  v101 = j__malloc_size_0(v100);
                  v102 = v101 - 32;
                  if (v101 < 32)
                  {
                    v102 = v101 - 17;
                  }

                  v100[2] = 0;
                  v100[3] = 2 * (v102 >> 4);
                }

                *v97 = v100;
              }
            }

            v103 = swift_isUniquelyReferenced_nonNull_native();
            v104 = *(v66 + 40);
            if (v103)
            {
              sub_1AF64C528(0, *(v104 + 16));
            }

            else
            {
              v105 = v9;
              if (*(v104 + 24) >= 2uLL)
              {
                sub_1AF602734(0, &qword_1EB630928, MEMORY[0x1E69E7668], MEMORY[0x1E69E6F90]);
                v105 = swift_allocObject();
                v106 = j__malloc_size_0(v105);
                v107 = v106 - 32;
                if (v106 < 32)
                {
                  v107 = v106 - 29;
                }

                v105[2] = 0;
                v105[3] = 2 * (v107 >> 2);
              }

              *(v66 + 40) = v105;
            }

            v66 += 64;
            if (!--v65)
            {
              goto LABEL_78;
            }
          }
        }
      }

      sub_1AF5D1564(v202);
    }

    v1 = v171;
  }

LABEL_141:
  v221[0] = *(v1 + 56);
  v221[1] = *(v1 + 72);
  v222 = *(v1 + 88);
  sub_1AF6B06C0(v2, v221, 0x200000000, v206);
  if (*&v206[0])
  {
    v170 = v2;
    if (v209 >= 1 && v208)
    {
      v108 = v207;
      v109 = v207 + 48 * v208;
      v172 = v109;
      do
      {
        v110 = *(v108 + 40);
        v111 = *(v110 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v111);
        os_unfair_lock_lock(*(v110 + 344));
        v112 = *(v110 + 24);

        *&v212 = 0;
        v210 = 0u;
        v211 = 0u;
        v196 = 0;
        v194 = 0u;
        v195 = 0u;
        v113 = sub_1AF65A4B4(v112, &type metadata for ParticleSubSpawn.State, &off_1F25668F8, 0, 0, &v210, &v194);

        sub_1AF5DD41C(&v194);
        sub_1AF5DD41C(&v210);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v113);
        }

        else
        {
          v178 = v108;
          v114 = *(v110 + 232);
          v115 = *(v110 + 240);
          v116 = *(v110 + 120);
          v192 = *(v110 + 28);
          v190 = *(v110 + 32);
          v117 = *(v110 + 16);
          v118 = *(v110 + 40);
          v119 = *(v118 + 200);
          v188 = *(*(v117 + 88) + 8 * v113 + 32);

          if ((v119 & 1) != 0 || *(v188 + 200) == 1)
          {
            *(v117 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v118 = *(v110 + 40);
          }

          v120 = *(v110 + 256);
          sub_1AF5B4FCC(v118, v114, v115, 0, v110);
          v181 = *(v110 + 256);
          v183 = v120;
          v121 = v181 - v120;
          if (v181 == v120)
          {
            v122 = 0;
          }

          else
          {
            v122 = v120;
          }

          *&v194 = v122;
          v123 = *(*(v110 + 40) + 24);
          v124 = *(v123 + 16);
          if (v124)
          {
            v125 = v123 + 32;

            for (i = 0; i != v124; ++i)
            {
              v127 = v125 + 40 * i;
              if ((*(v127 + 32) & 1) == 0)
              {
                v128 = *(v188 + 24);
                v129 = *(v128 + 16);
                if (v129)
                {
                  v130 = (v128 + 32);
                  while (*v130 != *v127)
                  {
                    v130 += 5;
                    if (!--v129)
                    {
                      goto LABEL_156;
                    }
                  }
                }

                else
                {
LABEL_156:
                  sub_1AF640BC8();
                }
              }
            }
          }

          if (*(v117 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v117 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v110 + 72) * v121);
          }

          if (*(v110 + 184))
          {
            v131 = 0;
          }

          else
          {
            v131 = *(v110 + 168);
          }

          *&v219[0] = 0;

          MEMORY[0x1EEE9AC00](v132, v133);
          v134 = v192;
          v135 = v190;
          DWORD2(v211) = -1;
          *&v212 = v183;
          *(&v212 + 1) = v181;
          *&v213 = v183;
          *(&v213 + 1) = v181;
          *&v210 = v183;
          *(&v210 + 1) = v181;
          *&v211 = v131;
          if (v121 < 1)
          {

            v108 = v178;
          }

          else
          {
            v108 = v178;
            do
            {
              LOBYTE(v201[0]) = v135;
              sub_1AF6248A8(v113, v134 | (v135 << 32), v116, v117, &v210, sub_1AF5C5E08);
              v135 = v190;
              v134 = v192;
            }

            while ((*(&v210 + 1) - v210) > 0);
          }

          v136 = *(v110 + 192);
          if (v136)
          {
            v137 = *(v110 + 208);
            sub_1AF75D364(v183, v181, v136);
            sub_1AF75D364(v183, v181, v137);
          }

          v109 = v172;
        }

        v108 += 48;
        os_unfair_lock_unlock(*(v110 + 344));
        os_unfair_lock_unlock(*(v110 + 376));
      }

      while (v108 != v109);
    }

    sub_1AF5D1564(v206);
    v2 = v170;
  }

  v138 = *(v171 + 112);
  v219[0] = *(v171 + 96);
  v219[1] = v138;
  v220 = *(v171 + 128);
  sub_1AF6B06C0(v2, v219, 0x200000000, &v210);
  if (v210)
  {
    if (v215 >= 1 && *(&v213 + 1))
    {
      v139 = *(&v212 + 1);
      v140 = *(&v212 + 1) + 48 * *(&v213 + 1);
      v173 = v140;
      do
      {
        v141 = *(v139 + 40);
        v142 = *(v141 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v142);
        os_unfair_lock_lock(*(v141 + 344));
        v143 = *(v141 + 24);

        v196 = 0;
        v194 = 0u;
        v195 = 0u;
        memset(v201, 0, 40);
        v144 = sub_1AF65A4B4(v143, 0, 0, &type metadata for ParticleSubSpawn.State, &off_1F25668F8, &v194, v201);

        sub_1AF5DD41C(v201);
        sub_1AF5DD41C(&v194);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v144);
        }

        else
        {
          v146 = *(v141 + 232);
          v145 = *(v141 + 240);
          v175 = *(v141 + 120);
          v189 = *(v141 + 28);
          v147 = *(v141 + 32);
          v148 = *(v141 + 16);
          v149 = *(v141 + 40);
          v150 = *(v149 + 200);
          v193 = *(*(v148 + 88) + 8 * v144 + 32);

          if ((v150 & 1) != 0 || *(v193 + 200) == 1)
          {
            *(v148 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v149 = *(v141 + 40);
          }

          v176 = v147;
          v151 = v189;
          v152 = *(v141 + 256);
          sub_1AF5B4FCC(v149, v146, v145, 0, v141);
          v184 = *(v141 + 256);
          v153 = v184 - v152;
          if (v184 == v152)
          {
            v154 = 0;
          }

          else
          {
            v154 = v152;
          }

          v201[0] = v154;
          v155 = *(*(v141 + 40) + 24);
          v156 = *(v155 + 16);
          if (v156)
          {
            v174 = v139;
            v157 = v155 + 32;

            v158 = 0;
            v159 = v184 - v152;
            do
            {
              v160 = v157 + 40 * v158;
              if ((*(v160 + 32) & 1) == 0)
              {
                v161 = *(v193 + 24);
                v162 = *(v161 + 16);
                if (v162)
                {
                  v163 = (v161 + 32);
                  while (*v163 != *v160)
                  {
                    v163 += 5;
                    if (!--v162)
                    {
                      goto LABEL_194;
                    }
                  }
                }

                else
                {
LABEL_194:
                  sub_1AF640BC8();
                  v159 = v184 - v152;
                }
              }

              ++v158;
            }

            while (v158 != v156);
            v153 = v159;

            v139 = v174;
            v151 = v189;
          }

          if (*(v148 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v148 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v141 + 72) * v153);
          }

          if (*(v141 + 184))
          {
            v164 = 0;
          }

          else
          {
            v164 = *(v141 + 168);
          }

          v200 = 0;

          MEMORY[0x1EEE9AC00](v165, v166);
          *(&v194 + 1) = v184;
          *&v195 = v164;
          DWORD2(v195) = -1;
          v196 = v152;
          v197 = v184;
          v198 = v152;
          v199 = v184;
          *&v194 = v152;
          if (v153 >= 1)
          {
            do
            {
              sub_1AF6248A8(v144, v151 | (v176 << 32), v175, v148, &v194, sub_1AF5C44B0);
            }

            while ((*(&v194 + 1) - v194) > 0);
          }

          v167 = *(v141 + 192);
          if (v167)
          {
            v168 = *(v141 + 208);
            sub_1AF75D364(v152, v184, v167);
            sub_1AF75D364(v152, v184, v168);
          }

          v140 = v173;
        }

        v139 += 48;
        os_unfair_lock_unlock(*(v141 + 344));
        os_unfair_lock_unlock(*(v141 + 376));
      }

      while (v139 != v140);
    }

    sub_1AF5D1564(&v210);
  }
}

uint64_t sub_1AFBCAD74(uint64_t a1)
{
  v3 = *a1;

  v6 = 0;
  if (sub_1AF685DC0(*(a1 + 32), v3, v3, &v6))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    sub_1AF681280(*(a1 + 8), v3, &v6);

    return v1;
  }

  return result;
}

uint64_t sub_1AFBCAEE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81);

  if (v3 == 1)
  {
    sub_1AFB93E58();
    v5 = v4;
    v7 = *(a1 + 8);
    v6 = *(a1 + 12);

    v8 = sub_1AF3CFD5C(v7 | (v6 << 32));
    v10 = v9;
    v12 = v11;

    if (v12)
    {
      v8 = 10;
      v10 = 20;
    }

    if ((v7 != -1 || v6) && (v7 & 0x80000000) == 0 && *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v7)
    {
      v13 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v7);
      v14 = *(v13 + 2);
      if (v6 == -1 || v13[2] == v6)
      {
        v15 = *(*(v2 + 144) + 8 * *v13 + 32);
        v16 = *(v15 + 48);
        v17 = (v16 + 32);
        v18 = *(v16 + 16) + 1;
        while (--v18)
        {
          v19 = v17 + 5;
          v20 = *v17;
          v17 += 5;
          if (v20 == &type metadata for ParticleSpawnState)
          {
            v21 = &(*(v19 - 2))[8 * v14] + *(v15 + 128);
            sub_1AF68A8E0(a1, v24);

            sub_1AFBC3528(v21, a1, v2, v8, v10, v5);

            sub_1AF688940(a1);
          }
        }
      }
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1AF68A8E0(a1, v24);

    sub_1AFDFE218();
    v24[0] = v25;
    v24[1] = v26;
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v23 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v23);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFEA2C60);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    sub_1AF688940(a1);

    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_1AFBCB1EC()
{
  result = qword_1EB6341C0;
  if (!qword_1EB6341C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341C0);
  }

  return result;
}

uint64_t sub_1AFBCB240(uint64_t a1)
{
  if (*(v1 + 37))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AFBC1840(a1, *(v1 + 24), v2 | *(v1 + 36), *(v1 + 40), *(v1 + 16), *(v1 + 32));
}

unint64_t sub_1AFBCB288()
{
  result = qword_1EB6341D8;
  if (!qword_1EB6341D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341D8);
  }

  return result;
}

void sub_1AFBCB2DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AFBCBCFC(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFBCB350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AFBCB3A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AFBCBACC(0, a2, a3, a4, type metadata accessor for Query1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFBCB414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF5C5358(255, &qword_1ED72C1D0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFBCB484(uint64_t a1)
{
  sub_1AF9B41F4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleSpawnState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSpawnState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ParticleSpawnOverDistance(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleSpawnOverDistance(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSpawnOverDistance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFBCB6F8()
{
  result = qword_1EB6432B0;
  if (!qword_1EB6432B0)
  {
    sub_1AF602734(255, &qword_1EB6432B8, &type metadata for ParticleSubSpawn.Mode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6432B0);
  }

  return result;
}

unint64_t sub_1AFBCB778()
{
  result = qword_1EB6432C0;
  if (!qword_1EB6432C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6432C0);
  }

  return result;
}

unint64_t sub_1AFBCB7D0()
{
  result = qword_1EB6432C8;
  if (!qword_1EB6432C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6432C8);
  }

  return result;
}

unint64_t sub_1AFBCB828()
{
  result = qword_1EB6341C8;
  if (!qword_1EB6341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341C8);
  }

  return result;
}

unint64_t sub_1AFBCB880()
{
  result = qword_1EB6341D0;
  if (!qword_1EB6341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6341D0);
  }

  return result;
}

unint64_t sub_1AFBCB8F0()
{
  result = qword_1EB633568;
  if (!qword_1EB633568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633568);
  }

  return result;
}

unint64_t sub_1AFBCB944()
{
  result = qword_1EB632C80;
  if (!qword_1EB632C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632C80);
  }

  return result;
}

unint64_t sub_1AFBCB998()
{
  result = qword_1EB631750;
  if (!qword_1EB631750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631750);
  }

  return result;
}

uint64_t sub_1AFBCB9EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFBCBACC(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFBCBA78()
{
  result = qword_1ED725308;
  if (!qword_1ED725308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725308);
  }

  return result;
}

void sub_1AFBCBACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFBCBB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFBCBACC(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFBCBBAC()
{
  result = qword_1EB633438;
  if (!qword_1EB633438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633438);
  }

  return result;
}

unint64_t sub_1AFBCBC00()
{
  result = qword_1EB631770;
  if (!qword_1EB631770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631770);
  }

  return result;
}

unint64_t sub_1AFBCBC54()
{
  result = qword_1EB633658;
  if (!qword_1EB633658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633658);
  }

  return result;
}

unint64_t sub_1AFBCBCA8()
{
  result = qword_1EB633790;
  if (!qword_1EB633790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633790);
  }

  return result;
}

void sub_1AFBCBCFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFBCBDE8()
{
  result = qword_1EB643310;
  if (!qword_1EB643310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643310);
  }

  return result;
}

unint64_t sub_1AFBCBE40()
{
  result = qword_1EB643318;
  if (!qword_1EB643318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643318);
  }

  return result;
}

unint64_t sub_1AFBCBE98()
{
  result = qword_1EB643320;
  if (!qword_1EB643320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643320);
  }

  return result;
}

unint64_t sub_1AFBCBEF0()
{
  result = qword_1EB643328;
  if (!qword_1EB643328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643328);
  }

  return result;
}

unint64_t sub_1AFBCBF48()
{
  result = qword_1EB643330;
  if (!qword_1EB643330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643330);
  }

  return result;
}

unint64_t sub_1AFBCBFA0()
{
  result = qword_1EB643338;
  if (!qword_1EB643338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643338);
  }

  return result;
}

unint64_t sub_1AFBCBFF8()
{
  result = qword_1EB643340;
  if (!qword_1EB643340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643340);
  }

  return result;
}

unint64_t sub_1AFBCC050()
{
  result = qword_1EB643348;
  if (!qword_1EB643348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643348);
  }

  return result;
}

unint64_t sub_1AFBCC0A8()
{
  result = qword_1EB633780;
  if (!qword_1EB633780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633780);
  }

  return result;
}

unint64_t sub_1AFBCC100()
{
  result = qword_1EB633788;
  if (!qword_1EB633788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633788);
  }

  return result;
}

unint64_t sub_1AFBCC158()
{
  result = qword_1EB633648;
  if (!qword_1EB633648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633648);
  }

  return result;
}

unint64_t sub_1AFBCC1B0()
{
  result = qword_1EB633650;
  if (!qword_1EB633650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633650);
  }

  return result;
}

unint64_t sub_1AFBCC208()
{
  result = qword_1EB631760;
  if (!qword_1EB631760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631760);
  }

  return result;
}

unint64_t sub_1AFBCC260()
{
  result = qword_1EB631768;
  if (!qword_1EB631768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631768);
  }

  return result;
}

unint64_t sub_1AFBCC2B8()
{
  result = qword_1EB633428;
  if (!qword_1EB633428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633428);
  }

  return result;
}

unint64_t sub_1AFBCC310()
{
  result = qword_1EB633430;
  if (!qword_1EB633430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633430);
  }

  return result;
}

unint64_t sub_1AFBCC368()
{
  result = qword_1ED7252F8;
  if (!qword_1ED7252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7252F8);
  }

  return result;
}

unint64_t sub_1AFBCC3C0()
{
  result = qword_1ED725300;
  if (!qword_1ED725300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725300);
  }

  return result;
}

unint64_t sub_1AFBCC418()
{
  result = qword_1EB631740;
  if (!qword_1EB631740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631740);
  }

  return result;
}

unint64_t sub_1AFBCC470()
{
  result = qword_1EB631748;
  if (!qword_1EB631748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631748);
  }

  return result;
}

unint64_t sub_1AFBCC4C8()
{
  result = qword_1EB632C70;
  if (!qword_1EB632C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632C70);
  }

  return result;
}

unint64_t sub_1AFBCC520()
{
  result = qword_1EB632C78;
  if (!qword_1EB632C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632C78);
  }

  return result;
}

unint64_t sub_1AFBCC578()
{
  result = qword_1EB633558;
  if (!qword_1EB633558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633558);
  }

  return result;
}

unint64_t sub_1AFBCC5D0()
{
  result = qword_1EB633560;
  if (!qword_1EB633560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633560);
  }

  return result;
}

uint64_t sub_1AFBCC644()
{
  sub_1AF44596C(v0, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(v3);
  if (Strong)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1AFBCC6B4(void *a1)
{
  if (a1)
  {
    swift_unknownObjectWeakInit();
    v8[1] = &off_1F256A470;
    swift_unknownObjectWeakAssign();
    v3 = [a1 identifier];
    v4 = sub_1AFDFCEF8();
    v6 = v5;

    v8[2] = v4;
    v8[3] = v6;
    return sub_1AF9B3A74(v8, v1);
  }

  else
  {
    sub_1AF4459C8(v1);
    v1[1] = 0;
    swift_unknownObjectWeakInit();
    v1[1] = 0;
    result = swift_unknownObjectWeakAssign();
    v1[2] = 0x3E6C6C756E3CLL;
    v1[3] = 0xE600000000000000;
  }

  return result;
}

int64_t sub_1AFBCC794(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return 0;
  }

  v4 = 0;
  result = v2 - 1;
  v6 = a1 + 32;
  while (result - v4 != 1)
  {
    if (*(v6 + 4 * (v4 + (result - v4) / 2)) <= a2)
    {
      v4 += (result - v4) / 2;
    }

    else
    {
      result = v4 + (result - v4) / 2;
    }

    if (v4 >= result)
    {
      return 0;
    }
  }

  if (*(v6 + 4 * result) >= a2)
  {
    if (*(v6 + 4 * v4) <= a2)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFBCC838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFBDA85C();
  *a1 = result;
  return result;
}

void sub_1AFBCC868(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697469736F70;
  v5 = 0xEC00000073656369;
  v6 = 0x646E49746E696F6ALL;
  if (v2 != 6)
  {
    v6 = 0x696557746E696F6ALL;
    v5 = 0xEC00000073746867;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F6C6F63;
  if (v2 != 4)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6C616D726F6ELL;
  if (v2 != 2)
  {
    v10 = 0x7461746E6569726FLL;
    v9 = 0xEB000000006E6F69;
  }

  if (*v1)
  {
    v4 = 0x797469636F6C6576;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *sub_1AFBCC980@<X0>(void *a1@<X8>)
{
  result = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = 0x636143746E696F50;
  a1[2] = 0xEA00000000006568;
  a1[3] = 0;
  return result;
}

uint64_t sub_1AFBCCA8C(__int16 a1)
{
  if (a1)
  {
    MEMORY[0x1B2718AE0](0x6E6F697469736F70, 0xEA00000000002C73);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B2718AE0](0x2C736C616D726F6ELL, 0xE800000000000000);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  MEMORY[0x1B2718AE0](0x2C73726F6C6F63, 0xE700000000000000);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    MEMORY[0x1B2718AE0](0x2C73746E696F6ALL, 0xE700000000000000);
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_12:
  MEMORY[0x1B2718AE0](745764469, 0xE400000000000000);
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((a1 & 0x400) != 0)
  {
LABEL_7:
    MEMORY[0x1B2718AE0](0x656C676E61697274, 0xEA00000000002C73);
  }

LABEL_8:
  v2 = sub_1AF8FD3D4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

uint64_t sub_1AFBCCD4C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AFBCCDA4(uint64_t a1)
{
  v2 = sub_1AFBDDC14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBCCDE0(uint64_t a1)
{
  v2 = sub_1AFBDDC14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBCCE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1AFBDEAB4(0, &qword_1EB643390, sub_1AFBDDC14, &type metadata for PointCacheFromModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v14 = 0;
  swift_unknownObjectWeakInit();
  v14 = 0;
  swift_unknownObjectWeakAssign();
  v15 = 0x3E6C6C756E3CLL;
  v16 = 0xE600000000000000;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDC14();
  sub_1AFDFF3B8();
  if (!v2)
  {
    v10 = v19;
    sub_1AF9B3A20();
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    sub_1AF9B3A74(v12, v13);
    sub_1AF585A9C(v13, v10);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF585AF8(v13);
}

uint64_t sub_1AFBCD044(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6433A0, sub_1AFBDDC14, &type metadata for PointCacheFromModel.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDC14();
  sub_1AFDFF3F8();
  sub_1AF9B3AD0();
  sub_1AFDFE918();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1AFBCD218@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  result[2] = 0x3E6C6C756E3CLL;
  result[3] = 0xE600000000000000;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

uint64_t sub_1AFBCD264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFBDA158(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = v7;
    *(a2 + 24) = v8;
  }

  return result;
}

uint64_t sub_1AFBCD2D4(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v17 = a5;
  v18 = a3;
  HIDWORD(v16) = a4;
  sub_1AFBDEAB4(0, &qword_1EB6433C0, sub_1AFBDDC68, &type metadata for PointCacheGenerator.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDC68();
  sub_1AFDFF3F8();
  v20 = a2;
  v19 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v5)
  {
    v14 = HIDWORD(v16);
    LOBYTE(v20) = 1;
    sub_1AFDFE8F8();
    LOBYTE(v20) = v14;
    v19 = 2;
    sub_1AF51C984();
    sub_1AFDFE918();
    LOWORD(v20) = HIWORD(v14);
    v19 = 3;
    sub_1AFBDDD10();
    sub_1AFDFE918();
    LOBYTE(v20) = 4;
    sub_1AFDFE998();
  }

  return (*(v10 + 8))(v13, v9);
}

double sub_1AFBCD530@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xFFFFFFFFLL;
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 1000;
  *(a1 + 16) = 2;
  *(a1 + 18) = 23;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AFBCD5F4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AFBCD64C(uint64_t a1)
{
  v2 = sub_1AFBDDD64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFBCD688(uint64_t a1)
{
  v2 = sub_1AFBDDD64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFBCD6C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AFBDA414(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AFBCD6F4(void *a1)
{
  sub_1AFBDEAB4(0, &qword_1EB6433E0, sub_1AFBDDD64, &type metadata for REMeshAssetPointCache.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFBDDD64();
  sub_1AFDFF3F8();
  sub_1AFDFE8B8();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1AFBCD85C@<X0>(void *a1@<X8>)
{
  result = sub_1AF42D33C(MEMORY[0x1E69E7CC0]);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = result;
  return result;
}

void sub_1AFBCD894(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + 32);
  v89[0] = *(v3 + 16);
  v89[1] = v8;
  v90 = *(v3 + 48);
  sub_1AF6B06C0(a1, v89, 0x200000000, &v27);
  if (v27)
  {
    v85 = v30;
    v86 = v31;
    v87 = v32;
    v83 = v28;
    v84 = v29;
    v88 = v33;
    v82 = v27;
    MEMORY[0x1EEE9AC00](v9, v10);
    v23 = a1;
    v24 = a2;
    LOBYTE(v25) = a3;
    sub_1AF5D5DA0(sub_1AFBD9A20, v22);
    sub_1AFBDD920(&v27, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v11 = *(v3 + 112);
  v80[0] = *(v3 + 96);
  v80[1] = v11;
  v81 = *(v3 + 128);
  sub_1AF6B06C0(a1, v80, 0x200000000, &v34);
  if (v34)
  {
    v76 = v37;
    v77 = v38;
    v78 = v39;
    v74 = v35;
    v75 = v36;
    v79 = v40;
    v73 = v34;
    MEMORY[0x1EEE9AC00](v12, v13);
    v23 = a1;
    v24 = a1;
    v25 = a2;
    v26 = a3;
    sub_1AF5D5DCC(sub_1AFBD99FC, v22);
    sub_1AFBDD920(&v34, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  if (a2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = sub_1AF12E2AC(Strong);

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 resourceManager];
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = *(v3 + 72);
          v71[0] = *(v3 + 56);
          v71[1] = v19;
          v72 = *(v3 + 88);
          sub_1AF6B06C0(a1, v71, 0x200000000, &v41);
          if (v41)
          {
            v67 = v44;
            v68 = v45;
            v69 = v46;
            v65 = v42;
            v66 = v43;
            v70 = v47;
            v64 = v41;
            v20 = v18;
            sub_1AFD21948(&v64, v20);

            sub_1AFBDD920(&v41, &qword_1ED725EA0, &type metadata for QueryResult);
          }

          else
          {
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v21 = *(v4 + 152);
  v62[0] = *(v4 + 136);
  v62[1] = v21;
  v63 = *(v4 + 168);
  sub_1AF6B06C0(a1, v62, 0x200000000, &v48);
  if (v48)
  {
    v58 = v51;
    v59 = v52;
    v60 = v53;
    v56 = v49;
    v57 = v50;
    v61 = v54;
    v55 = v48;
    sub_1AFD06F94(&v55);
    sub_1AFBDD920(&v48, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

uint64_t sub_1AFBCDC4C(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  os_unfair_lock_unlock(*(v4 + 40));
  v6 = v1[12];
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v6);

  sub_1AF6B1B20(a1, v7, v6);
  os_unfair_lock_unlock(*(v4 + 40));
  v8 = v1[17];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v4 + 40));
  v10 = v1[7];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v4 + 40));
  swift_getObjectType();
  return sub_1AF6D6B58();
}

uint64_t sub_1AFBCDE64(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v48 = a3;
  v49 = sub_1AFDFC128();
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  v12 = a2[3];
  if (a2[4])
  {
    v13 = a2[5];
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v11, v12, ObjectType, v13);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF2C630);
    MEMORY[0x1B2718AE0](v11, v12);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2C660);
    v15 = v50;
    v16 = v51;
    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v50 = 0;
    sub_1AF0D4F18(v17, &v50, v15, v16);

    sub_1AFDFC018();
  }

  sub_1AFDFBFD8();
  v18 = sub_1AFDFCF98();
  v20 = v19;

  v21 = v18 == 0x656863616370 && v20 == 0xE600000000000000;
  if (v21 || (sub_1AFDFEE28() & 1) != 0)
  {

    v22 = sub_1AFDFC148();
    v24 = v5;
    if (!v5)
    {
      v25 = v22;
      v26 = v23;
      sub_1AFBDA8A8(v22, v23, v48, v47);
      (*(v7 + 8))(v10, v49);
      return sub_1AF439ED8(v25, v26);
    }

    goto LABEL_22;
  }

  v27 = v18 == 6513249 && v20 == 0xE300000000000000;
  if (v27 || (sub_1AFDFEE28() & 1) != 0)
  {

    sub_1AF6E513C();
    if (!v5)
    {
      return (*(v7 + 8))(v10, v49);
    }

    v24 = v5;
LABEL_22:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF4AE80);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    v29 = v50;
    v28 = v51;
    v30 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v45 = v30;
      swift_once();
      v30 = v45;
    }

    v50 = 0;
    sub_1AF0D4F18(v30, &v50, v29, v28);

    return (*(v7 + 8))(v10, v49);
  }

  v32 = v18 == 7957616 && v20 == 0xE300000000000000;
  if (v32 || (sub_1AFDFEE28() & 1) != 0 || (v18 == 1887005808 ? (v33 = v20 == 0xE400000000000000) : (v33 = 0), v33))
  {
  }

  else
  {
    v34 = sub_1AFDFEE28();

    if ((v34 & 1) == 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1AFDFE218();

      v50 = 0xD000000000000013;
      v51 = 0x80000001AFF4AE40;
      v35 = sub_1AFDFBFD8();
      MEMORY[0x1B2718AE0](v35);

      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AE60);
      v37 = v50;
      v36 = v51;
      v38 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v46 = v38;
        swift_once();
        v38 = v46;
      }

      v50 = 0;
      sub_1AF0D4F18(v38, &v50, v37, v36);

      return (*(v7 + 8))(v10, v49);
    }
  }

  v39 = sub_1AFDFC148();
  v24 = v5;
  if (v5)
  {
    goto LABEL_22;
  }

  v41 = v39;
  v42 = v40;
  v43 = sub_1AFDFC028();
  sub_1AFBE3F9C(v41, v42, v43, v44, v48, v47);
  (*(v7 + 8))(v10, v49);

  return sub_1AF439ED8(v41, v42);
}

uint64_t sub_1AFBCE4E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AF42C7DC(MEMORY[0x1E69E7CC0]);

  *a3 = v11;
  a3[3] = 0;
  result = sub_1AF3CA3E4(*a2);
  if (v13)
  {
    sub_1AFBCE5BC(a3, result, v13, *(a2 + 8), *(a2 + 16), *(a2 + 18), *(a2 + 24), a5, a6);
    if (v6)
    {
    }
  }

  return result;
}

uint64_t sub_1AFBCE5BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v273 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v9 = a4 < 1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = a2;
    if (!a2 || *(a2 + 48) < 1)
    {
      sub_1AFBDC950();
      swift_allocError();
      *v18 = 0;
      return swift_willThrow();
    }

    v11 = a5;
    v244 = result;
    *(result + 24) = a4;
    v250 = a7 + 0x76E15D3EFEFDCBBFLL;
    v251 = 0xC5004E441C522FB3 * a7 - 0x3AFFB1BBE3ADD04DLL;
    v252 = 0x77710069854EE241 - a7;
    v253 = 0x39109BB02ACBE635 * a7;
    v12 = 3 * a4;
    if (a6)
    {
      v19 = 12 * a4;
      v20 = *(a9 + 16);

      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v20, (4 * v12), 0);
      if (BufferWithLength)
      {
        v22 = BufferWithLength;
        v23 = sub_1AFDFCEC8();
        [v22 setLabel_];

        v24 = 30;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v260 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4AFD0);
        MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
        v39 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v39);

        MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
        type metadata accessor for MTLResourceOptions(0);
        sub_1AFDFE458();
        v40 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v259 = 0;
        sub_1AF0D4F18(v40, &v259, 0, 0xE000000000000000);

        v259 = 0;
        v260 = 0xE000000000000000;
        sub_1AFDFE218();

        v259 = 0xD000000000000010;
        v260 = 0x80000001AFF4AEC0;
        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF4AFD0);
        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
        v41 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v41);

        v42 = v259;
        v43 = v260;
        v44 = sub_1AFDFDA08();
        v259 = 0;
        sub_1AF0D4F18(v44, &v259, v42, v43);

        v22 = 0;
        v19 = 0;
        v24 = 0;
        v10 = a2;
      }

      sub_1AF8264B8(v22, 0, v19, v24, 0x6E6F697469736F70, 0xE800000000000000);
      v11 = a5;
      if ((a6 & 2) != 0)
      {
LABEL_9:
        v13 = 4 * v12;
        v14 = CFXGPUDeviceCreateBufferWithLength(*(a9 + 16), (4 * v12), 0);
        if (v14)
        {
          v15 = v14;
          v16 = sub_1AFDFCEC8();
          [v15 setLabel_];

          v17 = 30;
        }

        else
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v259 = 0;
          v260 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
          MEMORY[0x1B2718AE0](0x6E2D656863616370, 0xEE00736C616D726FLL);
          MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
          v25 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v25);

          MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
          type metadata accessor for MTLResourceOptions(0);
          sub_1AFDFE458();
          v26 = v259;
          v27 = v260;
          v28 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v211 = v28;
            swift_once();
            v28 = v211;
          }

          v259 = 0;
          sub_1AF0D4F18(v28, &v259, v26, v27);

          v259 = 0;
          v260 = 0xE000000000000000;
          sub_1AFDFE218();

          v259 = 0xD000000000000010;
          v260 = 0x80000001AFF4AEC0;
          MEMORY[0x1B2718AE0](0x6E2D656863616370, 0xEE00736C616D726FLL);
          MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
          v29 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v29);

          v30 = v259;
          v31 = v260;
          v32 = sub_1AFDFDA08();
          v259 = 0;
          sub_1AF0D4F18(v32, &v259, v30, v31);

          v15 = 0;
          v13 = 0;
          v17 = 0;
          v10 = a2;
        }

        sub_1AF8264B8(v15, 0, v13, v17, 0x6C616D726F6ELL, 0xE600000000000000);
        v11 = a5;
        if ((a6 & 4) != 0)
        {
LABEL_20:
          v33 = 16 * a4;
          v34 = CFXGPUDeviceCreateBufferWithLength(*(a9 + 16), (16 * a4), 0);
          if (v34)
          {
            v35 = v34;
            v36 = sub_1AFDFCEC8();
            [v35 setLabel_];

            v37 = 31;
            v38 = v244;
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v259 = 0;
            v260 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
            MEMORY[0x1B2718AE0](0x632D656863616370, 0xED000073726F6C6FLL);
            MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
            v47 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v47);

            MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
            type metadata accessor for MTLResourceOptions(0);
            sub_1AFDFE458();
            v48 = v259;
            v49 = v260;
            v50 = sub_1AFDFDA08();
            v38 = v244;
            if (qword_1ED731058 != -1)
            {
              v212 = v50;
              swift_once();
              v50 = v212;
            }

            v259 = 0;
            sub_1AF0D4F18(v50, &v259, v48, v49);

            v259 = 0;
            v260 = 0xE000000000000000;
            sub_1AFDFE218();

            v259 = 0xD000000000000010;
            v260 = 0x80000001AFF4AEC0;
            MEMORY[0x1B2718AE0](0x632D656863616370, 0xED000073726F6C6FLL);
            MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
            v51 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v51);

            v52 = v259;
            v53 = v260;
            v54 = sub_1AFDFDA08();
            v259 = 0;
            sub_1AF0D4F18(v54, &v259, v52, v53);

            v35 = 0;
            v33 = 0;
            v37 = 0;
            v10 = a2;
          }

          sub_1AF8264B8(v35, 0, v33, v37, 0x726F6C6F63, 0xE500000000000000);
          v45 = sub_1AFBDC9A4(a3);
          v46 = v55;
          v11 = a5;
          if ((a6 & 0x10) == 0)
          {
LABEL_54:

            sub_1AFBDCC00(v84, &v254);
            v245 = v254;
            v85 = *(v254 + 16);
            v226 = *(v257 + 16);
            v86 = 0;
            if ((v46 & 1) != 0 || !sub_1AF65A128(v45))
            {
              v222 = 0;
              v223 = 0;
              v242 = 1;
              v220 = 0;
              v221 = 0;
              v87 = 0;
            }

            else
            {
              sub_1AF8E60EC(v45, 1, v266);
              if (v268)
              {
                v270[0] = v266[0];
                v270[1] = v266[1];
                v270[2] = v266[2];
                v271 = v267;
                v272 = v268;
                sub_1AF478700(v270, 1, 1, v269);
                v86 = v269[0];
                v223 = v269[1];
                v221 = v269[2];
                v220 = v269[3];
                v222 = v269[4];
                v242 = v269[5];
                v87 = v269[6];
              }

              else
              {
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v259 = 0;
                v260 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0x2065727574786554, 0xE900000000000027);
                v108 = sub_1AF3C9078(v45);
                if (v109)
                {
                  v110 = v109;
                }

                else
                {
                  v115 = sub_1AFDFEA08();
                  MEMORY[0x1B2718AE0](v115);

                  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
                  v108 = 0x5B64656D616E6E55;
                  v110 = 0xE800000000000000;
                }

                MEMORY[0x1B2718AE0](v108, v110);

                MEMORY[0x1B2718AE0](0xD00000000000002ELL, 0x80000001AFF4AF60);
                v116 = v259;
                v117 = v260;
                v118 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  v213 = v118;
                  swift_once();
                  v118 = v213;
                }

                v259 = 0;
                sub_1AF0D4F18(v118, &v259, v116, v117);

                v222 = 0;
                v223 = 0;
                v242 = 1;
                v220 = 0;
                v221 = 0;
                v87 = 0;
                v11 = a5;
              }
            }

            v88 = *v38;
            if (!*(*v38 + 16))
            {
              v237 = 0;
              v238 = 0;
              v236 = 0;
              v225 = 0;
              v102 = 1;
              v95 = 1;
              v101 = 1;
              goto LABEL_70;
            }

            v89 = sub_1AF419914(0x6E6F697469736F70, 0xE800000000000000);
            v90 = a4;
            if ((v91 & 1) != 0 && (v92 = *(v88 + 56) + 32 * v89, *(v92 + 24) == 30))
            {
              v94 = *v92;
              v93 = *(v92 + 8);
              if ([swift_unknownObjectRetain_n() storageMode] == 2)
              {
                swift_unknownObjectRelease_n();
                v237 = 0;
                v95 = 1;
              }

              else
              {
                v111 = [v94 contents];
                v112 = v94;
                swift_unknownObjectRelease();
                v95 = 0;
                v237 = &v111[v93];
                v11 = a5;
              }

              v90 = a4;
              if (!*(v88 + 16))
              {
                goto LABEL_86;
              }
            }

            else
            {
              v237 = 0;
              v95 = 1;
              if (!*(v88 + 16))
              {
LABEL_86:
                v238 = 0;
                v236 = 0;
                v225 = 0;
                v102 = 1;
                v101 = 1;
                goto LABEL_101;
              }
            }

            v96 = sub_1AF419914(0x6C616D726F6ELL, 0xE600000000000000);
            if ((v97 & 1) != 0 && (v98 = *(v88 + 56) + 32 * v96, *(v98 + 24) == 30))
            {
              v100 = *v98;
              v99 = *(v98 + 8);
              if ([swift_unknownObjectRetain_n() storageMode] == 2)
              {
                swift_unknownObjectRelease_n();
                v236 = 0;
                v101 = 1;
              }

              else
              {
                v113 = [v100 contents];
                v114 = v100;
                swift_unknownObjectRelease();
                v101 = 0;
                v236 = &v113[v99];
                v11 = a5;
              }

              v90 = a4;
              if (!*(v88 + 16))
              {
                goto LABEL_89;
              }
            }

            else
            {
              v236 = 0;
              v101 = 1;
              if (!*(v88 + 16))
              {
LABEL_89:
                v238 = 0;
                v225 = 0;
                v102 = 1;
                goto LABEL_101;
              }
            }

            v103 = sub_1AF419914(0x726F6C6F63, 0xE500000000000000);
            if ((v104 & 1) != 0 && (v105 = *(v88 + 56) + 32 * v103, *(v105 + 24) == 31))
            {
              v106 = *v105;
              v107 = *(v105 + 8);
              if ([swift_unknownObjectRetain_n() storageMode] == 2)
              {
                swift_unknownObjectRelease_n();
                v238 = 0;
                v102 = 1;
              }

              else
              {
                v119 = [v106 contents];
                v120 = v106;
                swift_unknownObjectRelease();
                v102 = 0;
                v238 = &v119[v107];
                v11 = a5;
              }

              v90 = a4;
              if (!*(v88 + 16))
              {
                goto LABEL_100;
              }
            }

            else
            {
              v238 = 0;
              v102 = 1;
              if (!*(v88 + 16))
              {
                goto LABEL_100;
              }
            }

            v121 = sub_1AF419914(0x646E49746E696F6ALL, 0xEC00000073656369);
            if (v122)
            {
              v123 = *(v88 + 56) + 32 * v121;
              if (*(v123 + 24) == 18)
              {
                v124 = *v123;
                v125 = *(v123 + 8);
                if ([swift_unknownObjectRetain_n() storageMode] != 2)
                {
                  v209 = [v124 contents];
                  v210 = v124;
                  swift_unknownObjectRelease();
                  v241 = 0;
                  v225 = &v209[v125];
                  v11 = a5;
LABEL_71:
                  v90 = a4;
                  if (!*(v88 + 16))
                  {
                    goto LABEL_106;
                  }

LABEL_102:
                  v126 = sub_1AF419914(0x696557746E696F6ALL, 0xEC00000073746867);
                  if (v127)
                  {
                    v128 = *(v88 + 56) + 32 * v126;
                    if (*(v128 + 24) == 31)
                    {
                      v129 = *v128;
                      v130 = *(v128 + 8);
                      if ([swift_unknownObjectRetain_n() storageMode] == 2)
                      {
                        swift_unknownObjectRelease_n();
                        v224 = 0;
                        v131 = 1;
                      }

                      else
                      {
                        v207 = [v129 contents];
                        v208 = v129;
                        swift_unknownObjectRelease();
                        v131 = 0;
                        v224 = &v207[v130];
                        v11 = a5;
                      }

                      v90 = a4;
                      goto LABEL_107;
                    }
                  }

LABEL_106:
                  v224 = 0;
                  v131 = 1;
LABEL_107:
                  v132 = 0;
                  v217 = -v85;
                  v218 = v245 + 32;
                  v133 = vdup_n_s32(0x3E95F61Au);
                  v134 = vdup_n_s32(0x3EB504F3u);
                  v135 = v242;
                  while (1)
                  {
                    if (v11)
                    {
                      if (v11 == 1)
                      {
                        if ((a6 & 0x400) == 0)
                        {
                          v137 = v251;
                          v138 = 9 * __ROR8__(5 * v251, 57);
                          v139 = v252 ^ v250;
                          v140 = v253 ^ v251;
                          v141 = v252 ^ v250 ^ v251;
                          v142 = v253 ^ v251 ^ v250;
                          v250 = v142;
                          v251 = v141;
                          v143 = __ROR8__(v140, 19);
                          v144 = v139 ^ (v137 << 17);
                          v252 = v144;
                          v253 = v143;
                          v145 = (v138 * v85) >> 64;
                          if (v85 > v138 * v85 && v217 % v85 > v138 * v85)
                          {
                            do
                            {
                              v146 = 9 * __ROR8__(5 * v141, 57);
                              v147 = v142 ^ v144;
                              v148 = v141 ^ v143;
                              v144 ^= v142 ^ (v141 << 17);
                              v141 ^= v147;
                              v142 ^= v148;
                              v143 = __ROR8__(v148, 19);
                            }

                            while (v217 % v85 > v146 * v85);
                            v250 = v142;
                            v251 = v141;
                            v145 = (v146 * v85) >> 64;
                            v252 = v144;
                            v253 = v143;
                          }

                          v149 = *(*(&v254 + 1) + 16 * v145 + 32);
                          v150 = *(v255 + 16 * v145 + 32);
                          if (v95)
                          {
                            goto LABEL_121;
                          }

                          v151 = *(v218 + 16 * v145);
                          goto LABEL_143;
                        }

                        v156 = sub_1AF9CEE0C(v226);
                        v157 = v156;
                        v158 = v252 ^ v250 ^ v251;
                        v159 = v253 ^ v251 ^ v250;
                        v160 = vcvts_n_f32_u64((9 * ((((5 * v251) >> 32) >> 25) | (640 * v251))) & 0xFFFFFF, 0x18uLL);
                        v161 = v159 ^ v252 ^ v250 ^ (v251 << 17);
                        v162 = v158 ^ __ROR8__(v253 ^ v251, 19);
                        v250 = v162 ^ v159;
                        v251 = v161 ^ v158;
                        v252 = v161 ^ (v158 << 17);
                        v253 = __ROR8__(v162, 19);
                        v163 = sqrtf(vcvts_n_f32_u64((9 * ((((5 * v158) >> 32) >> 25) | (640 * v158))) & 0xFFFFFFLL, 0x18uLL));
                        *&v164 = 1.0 - v163;
                        *&v165 = (1.0 - v160) * v163;
                        *&v166 = v160 * v163;
                        v227 = *&v165;
                        v228 = *&v164;
                        v167.i64[0] = __PAIR64__(v165, v164);
                        v229 = v166;
                        v167.i64[1] = v166;
                        v247 = v167;
                      }

                      else
                      {
                        v153 = v258;
                        v154 = *(v258 + 16);
                        if (v154)
                        {
                          v155 = *(v258 + 4 * v154 + 28);
                        }

                        else
                        {
                          v155 = 0.0;
                        }

                        sub_1AF9DCEDC(0.0, v155);
                        v157 = sub_1AFBCC794(v153, v179);
                        v180 = vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL);
                        v181 = sqrtf(vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL));
                        *&v182 = v180 * v181;
                        v227 = (1.0 - v180) * v181;
                        v228 = 1.0 - v181;
                        v167.f32[0] = 1.0 - v181;
                        v167.f32[1] = v227;
                        v229 = v182;
                        v167.i64[1] = v182;
                        v247 = v167;
                        v156 = v157;
                      }

                      *&v183 = sub_1AFBD0A54(v156, v167);
                      v230 = v183;
                      *&v184 = sub_1AFBD0AC4(v157, v247);
                      v232 = v184;
                      *v185.i64 = sub_1AFBD0B90(v157, v247);
                      v234 = v185;
                      v186 = (v257 + 24 * v157);
                      v187 = *(v256 + 32 + 8 * v186[4]);
                      v188 = *(v256 + 32 + 8 * v186[5]);
                      v189 = *(v256 + 32 + 8 * v186[6]);
                      v176 = sub_1AFBD0BD0(v157, v247).n128_u64[0];
                      v178 = v190;
                      if ((v95 & 1) == 0)
                      {
                        v191 = &v237[12 * v132];
                        *v191 = v230;
                        *(v191 + 2) = DWORD2(v230);
                      }

                      v90 = a4;
                      v135 = v242;
                      if (v101)
                      {
                        if ((v102 & 1) == 0)
                        {
                          goto LABEL_139;
                        }
                      }

                      else
                      {
                        v192 = &v236[12 * v132];
                        *v192 = v232;
                        *(v192 + 2) = DWORD2(v232);
                        if ((v102 & 1) == 0)
                        {
LABEL_139:
                          if (v242 == 1)
                          {
                            v193 = v238;
                            v194 = v234;
                            goto LABEL_156;
                          }

                          v249 = v190;
                          v259 = v86;
                          v260 = v223;
                          v195 = COERCE_DOUBLE(vadd_f32(vadd_f32(vmul_n_f32(v187, v228), vmul_n_f32(v188, v227)), vmul_n_f32(v189, *&v229)));
                          v261 = v221;
                          v262 = v220;
                          v263 = v222;
                          v264 = v242;
                          v265 = v87;
                          v196 = v176;
                          *v197.i64 = (v242)(&v259, v195);
                          v198 = v197;
                          v176 = v196;
                          v194 = vmulq_f32(v234, v198);
                          v178 = v249;
                          goto LABEL_155;
                        }
                      }
                    }

                    else
                    {
                      if ((a6 & 0x400) == 0)
                      {
                        v152 = 16 * (v132 % v85);
                        v149 = *(*(&v254 + 1) + v152 + 32);
                        v150 = *(v255 + v152 + 32);
                        if (v95)
                        {
LABEL_121:
                          if (v101)
                          {
                            goto LABEL_122;
                          }

LABEL_144:
                          v200 = &v236[12 * v132];
                          *v200 = v149;
                          *(v200 + 2) = DWORD2(v149);
                          if ((v102 & 1) == 0)
                          {
LABEL_145:
                            if (v135 == 1)
                            {
                              *&v238[16 * v132] = v150;
                            }

                            else
                            {
                              v259 = v86;
                              v260 = v223;
                              v261 = v221;
                              v262 = v220;
                              v263 = v222;
                              v264 = v135;
                              v265 = v87;
                              v246 = v150;
                              *v136.i64 = v135(&v259);
                              *&v238[16 * v132] = vmulq_f32(v246, v136);
                            }

                            goto LABEL_109;
                          }

                          goto LABEL_109;
                        }

                        v151 = *(v218 + 16 * (v132 % v85));
LABEL_143:
                        v199 = &v237[12 * v132];
                        *v199 = v151;
                        *(v199 + 2) = DWORD2(v151);
                        if (v101)
                        {
LABEL_122:
                          if ((v102 & 1) == 0)
                          {
                            goto LABEL_145;
                          }

                          goto LABEL_109;
                        }

                        goto LABEL_144;
                      }

                      v168 = sub_1AF9CEE0C(v226);
                      *&v169 = sub_1AFBD0A54(v168, xmmword_1AFEA3D60);
                      v231 = v169;
                      *&v170 = sub_1AFBD0AC4(v168, xmmword_1AFEA3D60);
                      v233 = v170;
                      *v171.i64 = sub_1AFBD0B90(v168, xmmword_1AFEA3D60);
                      v248 = v171;
                      v172 = (v257 + 24 * v168);
                      v173 = *(v256 + 32 + 8 * v172[4]);
                      v174 = *(v256 + 32 + 8 * v172[5]);
                      v175 = *(v256 + 32 + 8 * v172[6]);
                      v176 = sub_1AFBD0BD0(v168, xmmword_1AFEA3D60).n128_u64[0];
                      v178 = v177;
                      if (v95)
                      {
                        v135 = v242;
                        if (v101)
                        {
                          goto LABEL_129;
                        }
                      }

                      else
                      {
                        v201 = &v237[12 * v132];
                        *v201 = v231;
                        *(v201 + 2) = DWORD2(v231);
                        v135 = v242;
                        if (v101)
                        {
LABEL_129:
                          v11 = a5;
                          if ((v102 & 1) == 0)
                          {
                            goto LABEL_152;
                          }

                          goto LABEL_149;
                        }
                      }

                      v202 = &v236[12 * v132];
                      *v202 = v233;
                      *(v202 + 2) = DWORD2(v233);
                      v11 = a5;
                      if ((v102 & 1) == 0)
                      {
LABEL_152:
                        if (v135 == 1)
                        {
                          v193 = v238;
                          v194 = v248;
                          goto LABEL_156;
                        }

                        v235 = v177;
                        v259 = v86;
                        v260 = v223;
                        v203 = COERCE_DOUBLE(vadd_f32(vadd_f32(vmul_f32(v173, v133), vmul_f32(v174, v134)), vmul_f32(v175, v134)));
                        v261 = v221;
                        v262 = v220;
                        v263 = v222;
                        v264 = v135;
                        v265 = v87;
                        v204 = v176;
                        *v205.i64 = (v135)(&v259, v203);
                        v206 = v205;
                        v176 = v204;
                        v194 = vmulq_f32(v248, v206);
                        v178 = v235;
LABEL_155:
                        v193 = v238;
LABEL_156:
                        *&v193[16 * v132] = v194;
                        if (v241)
                        {
LABEL_150:
                          if (v131)
                          {
                            goto LABEL_109;
                          }

LABEL_158:
                          *&v224[16 * v132] = v178;
                          goto LABEL_109;
                        }

                        goto LABEL_157;
                      }
                    }

LABEL_149:
                    if (v241)
                    {
                      goto LABEL_150;
                    }

LABEL_157:
                    *&v225[8 * v132] = v176;
                    if ((v131 & 1) == 0)
                    {
                      goto LABEL_158;
                    }

LABEL_109:
                    if (++v132 == v90)
                    {
                      sub_1AFBDD8F0(&v254);
                    }
                  }
                }

                swift_unknownObjectRelease_n();
                v225 = 0;
LABEL_70:
                v241 = 1;
                goto LABEL_71;
              }
            }

LABEL_100:
            v225 = 0;
LABEL_101:
            v241 = 1;
            if (!*(v88 + 16))
            {
              goto LABEL_106;
            }

            goto LABEL_102;
          }

LABEL_37:
          v56 = *(v10 + 24);
          if (v56 && sub_1AF8C3410(9, *(v10 + 16), v56))
          {
            v57 = *(a9 + 16);
            v58 = CFXGPUDeviceCreateBufferWithLength(v57, (8 * a4), 0);
            if (v58)
            {
              v59 = v58;
              v60 = sub_1AFDFCEC8();
              [v59 setLabel_];

              v61 = 8 * a4;
              v62 = 18;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v259 = 0;
              v260 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AF90);
              MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
              v63 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v63);

              MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
              type metadata accessor for MTLResourceOptions(0);
              sub_1AFDFE458();
              v64 = v259;
              v65 = v260;
              v66 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v214 = v66;
                swift_once();
                v66 = v214;
              }

              v259 = 0;
              sub_1AF0D4F18(v66, &v259, v64, v65);

              v259 = 0;
              v260 = 0xE000000000000000;
              sub_1AFDFE218();

              v259 = 0xD000000000000010;
              v260 = 0x80000001AFF4AEC0;
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AF90);
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
              v67 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v67);

              v68 = v259;
              v69 = v260;
              v70 = sub_1AFDFDA08();
              v259 = 0;
              sub_1AF0D4F18(v70, &v259, v68, v69);

              v59 = 0;
              v61 = 0;
              v62 = 0;
            }

            sub_1AF8264B8(v59, 0, v61, v62, 0x646E49746E696F6ALL, 0xEC00000073656369);
            v71 = CFXGPUDeviceCreateBufferWithLength(v57, (16 * a4), 0);
            if (v71)
            {
              v72 = v71;
              v73 = sub_1AFDFCEC8();
              [v72 setLabel_];

              v74 = 16 * a4;
              v75 = 31;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v259 = 0;
              v260 = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AFB0);
              MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
              v76 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v76);

              MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
              type metadata accessor for MTLResourceOptions(0);
              sub_1AFDFE458();
              v77 = v259;
              v78 = v260;
              v79 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                v215 = v79;
                swift_once();
                v79 = v215;
              }

              v259 = 0;
              sub_1AF0D4F18(v79, &v259, v77, v78);

              v259 = 0;
              v260 = 0xE000000000000000;
              sub_1AFDFE218();

              v259 = 0xD000000000000010;
              v260 = 0x80000001AFF4AEC0;
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AFB0);
              MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF4AEE0);
              v80 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v80);

              v81 = v259;
              v82 = v260;
              v83 = sub_1AFDFDA08();
              v259 = 0;
              sub_1AF0D4F18(v83, &v259, v81, v82);

              v72 = 0;
              v74 = 0;
              v75 = 0;
            }

            sub_1AF8264B8(v72, 0, v74, v75, 0x696557746E696F6ALL, 0xEC00000073746867);
            v11 = a5;
          }

          goto LABEL_54;
        }

LABEL_29:
        v45 = 0;
        v46 = 1;
        v38 = v244;
        if ((a6 & 0x10) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_37;
      }
    }

    else
    {

      if ((a6 & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    if ((a6 & 4) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  return result;
}