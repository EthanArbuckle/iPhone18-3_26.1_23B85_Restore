uint64_t sub_1AFB78590()
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
  sub_1AFCC39D0(1, 2, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t sub_1AFB78658(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  if (a2 && a3)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2++;
      *a4++ = *(result + 4 * v6) * a5;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1AFB78684(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  if (a2 && a3)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2++;
      *a4 = *a4 + (*(result + 4 * v6) * a5);
      ++a4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

unint64_t sub_1AFB786B8()
{
  result = qword_1ED725460;
  if (!qword_1ED725460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725460);
  }

  return result;
}

double sub_1AFB78748@<D0>(uint64_t a1@<X8>)
{
  *&result = 512;
  *a1 = xmmword_1AFE9E060;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1AFB78760(uint64_t a1, float32x4_t *a2, uint64_t a3, void *a4, __n128 a5)
{
  v130 = a2[1];
  v131 = *a2;
  v128 = a2[3];
  v129 = a2[2];
  v126 = a2[5];
  v127 = a2[4];
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  result = sub_1AF9C5D44();
  if (v12)
  {
    result = sub_1AF9C5D58();
    if (v14)
    {
      result = sub_1AF9C5E74();
      if (v16)
      {
        v17 = v9 - v8;
        v19 = v130;
        v18 = v131;
        v21 = v128;
        v20 = v129;
        v23 = v126;
        v22 = v127;
        if (v9 != v8)
        {
          v24 = (v10 + 16 * v8);
          do
          {
            v25 = *v24;
            v25.i32[3] = a5.n128_i32[3];
            v132[0] = v18;
            v132[1] = v19;
            v132[2] = v20;
            v132[3] = v21;
            v132[4] = v22;
            v132[5] = v23;
            result = sub_1AFB78CC4(v132, v25);
            if (!result)
            {
              *(a3 + 4 * (*a4)++) = v7;
            }

            LODWORD(v7) = v7 + 1;
            ++v24;
            --v17;
            v19 = v130;
            v18 = v131;
            v21 = v128;
            v20 = v129;
            v23 = v126;
            v22 = v127;
          }

          while (v17);
        }
      }

      else
      {
        v85 = v9 - v8;
        if (v9 != v8)
        {
          v86 = vabsq_f32(v131);
          v87 = vabsq_f32(v130);
          v88 = vabsq_f32(v129);
          v89 = vabsq_f32(v128);
          v90 = vabsq_f32(v127);
          v91 = vabsq_f32(v126);
          v92 = (result + 16 * v8);
          v93 = (v10 + 16 * v8);
          v94.i64[0] = 0x3F0000003F000000;
          v94.i64[1] = 0x3F0000003F000000;
          do
          {
            v95 = v15.i32[3];
            v15 = *v93;
            v15.i32[3] = v95;
            v96 = v15;
            v96.i32[3] = 1.0;
            v97.i64[0] = vmulq_f32(vmulq_n_f32(*v92, a5.n128_f32[0]), v94).u64[0];
            v97.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a5.n128_f32[0], *v92, 2) * 0.5);
            v98 = vmulq_f32(v131, v96);
            v99 = vmulq_f32(v86, v97);
            v64 = vaddv_f32(vadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL))) <= -vaddv_f32(vadd_f32(*v99.i8, *&vextq_s8(v99, v99, 8uLL)));
            v100 = vmulq_f32(v130, v96);
            v101 = vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)));
            v102 = vmulq_f32(v87, v97);
            v103 = -vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL)));
            v104 = v64 || v101 <= v103;
            v105 = vmulq_f32(v129, v96);
            v106 = vaddv_f32(vadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)));
            v107 = vmulq_f32(v88, v97);
            v108 = -vaddv_f32(vadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)));
            v109 = v104 || v106 <= v108;
            v110 = vmulq_f32(v128, v96);
            v111 = vaddv_f32(vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL)));
            v112 = vmulq_f32(v89, v97);
            v113 = -vaddv_f32(vadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL)));
            v114 = v109 || v111 <= v113;
            v115 = vmulq_f32(v127, v96);
            v116 = vaddv_f32(vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)));
            v117 = vmulq_f32(v90, v97);
            v118 = -vaddv_f32(vadd_f32(*v117.i8, *&vextq_s8(v117, v117, 8uLL)));
            v119 = v114 || v116 <= v118;
            v120 = vmulq_f32(v126, v96);
            v121 = vaddv_f32(vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)));
            v122 = vmulq_f32(v91, v97);
            v123 = -vaddv_f32(vadd_f32(*v122.i8, *&vextq_s8(v122, v122, 8uLL)));
            if (!v119 && v121 > v123)
            {
              *(a3 + 4 * (*a4)++) = v7;
            }

            LODWORD(v7) = v7 + 1;
            ++v92;
            ++v93;
            --v85;
          }

          while (v85);
        }
      }
    }

    else
    {
      v47 = v9 - v8;
      if (v9 != v8)
      {
        v48 = vabsq_f32(v131);
        v49 = vabsq_f32(v130);
        v50 = vabsq_f32(v129);
        v51 = vabsq_f32(v128);
        v52 = (result + 8 * v8);
        v53 = vabsq_f32(v127);
        v54 = vabsq_f32(v126);
        v55 = (v10 + 16 * v8);
        do
        {
          v56.i64[1] = v13.i64[1];
          v13 = *v55;
          v13.i32[3] = v56.i32[3];
          *v56.f32 = vmul_f32(vmul_n_f32(*v52, a5.n128_f32[0]), 0x3F0000003F000000);
          v57 = v13;
          v57.i32[3] = 1.0;
          v58 = vmulq_f32(v131, v57);
          v59 = vmulq_f32(v48, v56);
          v64 = vaddv_f32(vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL))) <= -vaddv_f32(vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)));
          v60 = vmulq_f32(v130, v57);
          v61 = vaddv_f32(vadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)));
          v62 = vmulq_f32(v49, v56);
          v63 = -vaddv_f32(vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)));
          v64 = v64 || v61 <= v63;
          v65 = vmulq_f32(v129, v57);
          v66 = vaddv_f32(vadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL)));
          v67 = vmulq_f32(v50, v56);
          v68 = -vaddv_f32(vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL)));
          v69 = v64 || v66 <= v68;
          v70 = vmulq_f32(v128, v57);
          v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
          v72 = vmulq_f32(v51, v56);
          v73 = -vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
          v74 = v69 || v71 <= v73;
          v75 = vmulq_f32(v127, v57);
          v76 = vaddv_f32(vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL)));
          v77 = vmulq_f32(v53, v56);
          v78 = -vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)));
          v79 = v74 || v76 <= v78;
          v80 = vmulq_f32(v126, v57);
          v81 = vaddv_f32(vadd_f32(*v80.i8, *&vextq_s8(v80, v80, 8uLL)));
          v82 = vmulq_f32(v54, v56);
          v83 = -vaddv_f32(vadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)));
          if (!v79 && v81 > v83)
          {
            *(a3 + 4 * (*a4)++) = v7;
          }

          LODWORD(v7) = v7 + 1;
          ++v52;
          ++v55;
          --v47;
        }

        while (v47);
      }
    }
  }

  else
  {
    v26 = v9 - v8;
    if (v9 != v8)
    {
      v27 = (result + 4 * v8);
      v28 = (v10 + 16 * v8);
      do
      {
        v29 = *v28;
        v30 = -(*v27 * a5.n128_f32[0]);
        v31 = vmulq_f32(*v28, v131);
        v34 = (v131.f32[3] + (v31.f32[2] + vaddv_f32(*v31.f32))) < v30;
        v32 = vmulq_f32(*v28, v130);
        v33 = v130.f32[3] + (v32.f32[2] + vaddv_f32(*v32.f32));
        v34 = v34 || v33 < v30;
        v35 = vmulq_f32(v29, v129);
        v36 = v129.f32[3] + (v35.f32[2] + vaddv_f32(*v35.f32));
        v37 = v34 || v36 < v30;
        v38 = vmulq_f32(v29, v128);
        v39 = v128.f32[3] + (v38.f32[2] + vaddv_f32(*v38.f32));
        v40 = v37 || v39 < v30;
        v41 = vmulq_f32(v29, v127);
        v42 = v127.f32[3] + (v41.f32[2] + vaddv_f32(*v41.f32));
        v43 = v40 || v42 < v30;
        v44 = vmulq_f32(v29, v126);
        v45 = v126.f32[3] + (v44.f32[2] + vaddv_f32(*v44.f32));
        if (!v43 && v45 >= v30)
        {
          *(a3 + 4 * (*a4)++) = v7;
        }

        LODWORD(v7) = v7 + 1;
        ++v27;
        ++v28;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

BOOL sub_1AFB78CC4(float32x4_t *a1, float32x4_t a2)
{
  v2 = vmulq_f32(*a1, a2);
  if ((COERCE_FLOAT(HIDWORD(*a1)) + (v2.f32[2] + vaddv_f32(*v2.f32))) < 0.0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 1;
  do
  {
    v6 = v4;
    if (v4 == 5)
    {
      break;
    }

    v7 = vmulq_f32(v5[v4], a2);
    v8 = COERCE_FLOAT(HIDWORD(*&v5[v4++])) + (v7.f32[2] + vaddv_f32(*v7.f32));
  }

  while (v8 >= 0.0);
  return v6 < 5;
}

uint64_t sub_1AFB78D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = v8 - v9;
    if (v8 != v9)
    {
      v11 = *(a1 + 40);
      if (v10 < 8)
      {
        goto LABEL_12;
      }

      if (a2 + 4 * (v9 + a3) < (result + 4 * v8) && result + 4 * v9 < (a2 + 4 * (v8 + a3)))
      {
        goto LABEL_12;
      }

      v13 = v9 + (v10 & 0xFFFFFFFFFFFFFFF8);
      v14 = 4 * v9;
      v15 = (4 * v9 + result + 16);
      v16 = (v14 + 4 * a3 + a2 + 16);
      v17 = v10 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v18 = vaddq_f32(*v16, vmulq_n_f32(vcvtq_f32_u32(*v15), v11));
        v16[-1] = vaddq_f32(v16[-1], vmulq_n_f32(vcvtq_f32_u32(v15[-1]), v11));
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      if (v10 != (v10 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_12:
        v19 = (a2 + 4 * v9 + 4 * a3);
        v20 = v8 - v9;
        v21 = (result + 4 * v9);
        do
        {
          v22 = *v21++;
          *v19 = *v19 + (v11 * v22);
          ++v19;
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

unint64_t sub_1AFB78E98()
{
  result = qword_1EB642DA8;
  if (!qword_1EB642DA8)
  {
    sub_1AF82352C(255, &qword_1EB642DB0, &type metadata for ParticleSortMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DA8);
  }

  return result;
}

unint64_t sub_1AFB78F18()
{
  result = qword_1EB631D58;
  if (!qword_1EB631D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631D58);
  }

  return result;
}

unint64_t sub_1AFB78F70()
{
  result = qword_1EB642DB8;
  if (!qword_1EB642DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DB8);
  }

  return result;
}

unint64_t sub_1AFB78FC8()
{
  result = qword_1EB642DC0;
  if (!qword_1EB642DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DC0);
  }

  return result;
}

unint64_t sub_1AFB79020()
{
  result = qword_1EB642DC8;
  if (!qword_1EB642DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DC8);
  }

  return result;
}

unint64_t sub_1AFB79078()
{
  result = qword_1EB642DD0;
  if (!qword_1EB642DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DD0);
  }

  return result;
}

unint64_t sub_1AFB790D0()
{
  result = qword_1EB6333F8;
  if (!qword_1EB6333F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6333F8);
  }

  return result;
}

uint64_t sub_1AFB79158@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB79288(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AFB79194(unint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      v3 = __clz(__rbit64(v1));
      v4 = ((1 << v3) & v1) != 0 ? ~(1 << v3) : -1;
      v5 = sub_1AFB79288(v3);
      result = 0;
      if (v5 == 28)
      {
        break;
      }

      v1 &= v4;
      v2 = sub_1AFDFCF88();
      MEMORY[0x1B2718AE0](v2);

      if (!v1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AFB79288(uint64_t result)
{
  if (result >= 0x1Cu)
  {
    return 28;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AFB7929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1 == 1936941421 && a2 == 0xE400000000000000;
  if (v8 || (v3 = a2, v4 = a1, (sub_1AFDFEE28() & 1) != 0))
  {
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = *(*(v9 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v4 == 0x726F6C6F63 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v10 = *(*(v20 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v4 == 1702521203 && v3 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
      __break(1u);
      goto LABEL_80;
    }

LABEL_23:
    v10 = *(*(v21 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6431657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v10 = *(*(v22 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
LABEL_86:
    v5 = 0xE900000000000073;
    if ((v4 != 0x695F746E65726170 || v3 != 0xE900000000000064) && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_94;
    }

    v32 = swift_conformsToProtocol2();
    if (!v32)
    {
      __break(1u);
      goto LABEL_153;
    }

    v33 = *(*(v32 + 8) + 32);
    goto LABEL_91;
  }

  if (v4 == 0x6432657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
      goto LABEL_93;
    }

    v10 = *(*(v23 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6433657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_23;
  }

  if (v4 == 0x746567726174 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v24 = swift_conformsToProtocol2();
    if (!v24)
    {
      __break(1u);
      goto LABEL_105;
    }

    v10 = *(*(v24 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x797469636F6C6576 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
      __break(1u);
      goto LABEL_111;
    }

    v10 = *(*(v25 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6E6F697469736F70 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v26 = swift_conformsToProtocol2();
    if (!v26)
    {
      __break(1u);
      goto LABEL_117;
    }

    v10 = *(*(v26 + 8) + 32);
    goto LABEL_8;
  }

  v6 = 0xEA00000000003161;
  v5 = 0x7461645F72657375;
  if (v4 == 0x7461645F72657375 && v3 == 0xEA00000000003161 || (sub_1AFDFEE28() & 1) != 0)
  {
    v27 = swift_conformsToProtocol2();
    if (!v27)
    {
      __break(1u);
      goto LABEL_123;
    }

    v10 = *(*(v27 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x7461645F72657375 && v3 == 0xEA00000000003261 || (sub_1AFDFEE28() & 1) != 0)
  {
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
      __break(1u);
      goto LABEL_129;
    }

    v10 = *(*(v28 + 8) + 32);
    goto LABEL_8;
  }

LABEL_68:
  if (v4 == v5 && v3 == v6 + 512 || (sub_1AFDFEE28() & 1) != 0)
  {
    v29 = swift_conformsToProtocol2();
    if (!v29)
    {
      __break(1u);
      goto LABEL_135;
    }

    v10 = *(*(v29 + 8) + 32);
    goto LABEL_8;
  }

LABEL_74:
  if (v4 == v5 && v3 == v6 + 768 || (sub_1AFDFEE28() & 1) != 0)
  {
    v30 = swift_conformsToProtocol2();
    if (!v30)
    {
      __break(1u);
      goto LABEL_141;
    }

    v10 = *(*(v30 + 8) + 32);
    goto LABEL_8;
  }

LABEL_80:
  if ((v4 != 25705 || v3 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_86;
  }

  v31 = swift_conformsToProtocol2();
  if (!v31)
  {
    __break(1u);
    goto LABEL_147;
  }

  v10 = *(*(v31 + 8) + 32);
LABEL_8:
  v11 = v10();
  v3 = v11;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_92:

      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      if (v4 == 6645601 && v3 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v34 = swift_conformsToProtocol2();
        if (v34)
        {
          v33 = *(*(v34 + 8) + 32);
          goto LABEL_91;
        }

        __break(1u);
      }

      else
      {
        if (v4 == 0x7461746E6569726FLL && v3 == 0xEB000000006E6F69 || (sub_1AFDFEE28() & 1) != 0)
        {
          v35 = swift_conformsToProtocol2();
          if (v35)
          {
            v33 = *(*(v35 + 8) + 32);
            goto LABEL_91;
          }

          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

LABEL_105:
        if (v4 == 0x73656E6867756F72 && v3 == v5 || (sub_1AFDFEE28() & 1) != 0)
        {
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            v33 = *(*(v36 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_165;
        }

LABEL_111:
        if (v4 == 0x73656E6C6174656DLL && v3 == v5 || (sub_1AFDFEE28() & 1) != 0)
        {
          v37 = swift_conformsToProtocol2();
          if (v37)
          {
            v33 = *(*(v37 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_166;
        }

LABEL_117:
        if (v4 == 0x6E6F697373696D65 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v38 = swift_conformsToProtocol2();
          if (v38)
          {
            v33 = *(*(v38 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_167;
        }

LABEL_123:
        if (v4 == 0x665F7261656E696CLL && v3 == 0xED0000726F746361 || (sub_1AFDFEE28() & 1) != 0)
        {
          v39 = swift_conformsToProtocol2();
          if (v39)
          {
            v33 = *(*(v39 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_168;
        }

LABEL_129:
        if (v4 == 0x5F72616C75676E61 && v3 == 0xEE00726F74636166 || (sub_1AFDFEE28() & 1) != 0)
        {
          v40 = swift_conformsToProtocol2();
          if (v40)
          {
            v33 = *(*(v40 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_169;
        }

LABEL_135:
        if (v4 == 0x746F766970 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v41 = swift_conformsToProtocol2();
          if (v41)
          {
            v33 = *(*(v41 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_170;
        }

LABEL_141:
        if (v4 == 0x656C676E61 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v42 = swift_conformsToProtocol2();
          if (v42)
          {
            v33 = *(*(v42 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_171;
        }

LABEL_147:
        if (v4 == 0xD000000000000010 && 0x80000001AFF49B20 == v3 || (sub_1AFDFEE28() & 1) != 0)
        {
          v43 = swift_conformsToProtocol2();
          if (v43)
          {
            v33 = *(*(v43 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_172;
        }

LABEL_153:
        if (v4 == 0x5F65727574786574 && v3 == 0xED0000656D617266 || (sub_1AFDFEE28() & 1) != 0)
        {
          v44 = swift_conformsToProtocol2();
          if (v44)
          {
            v33 = *(*(v44 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_173;
        }
      }

      if (v4 == 0x65765F656C676E61 && v3 == 0xEE00797469636F6CLL || (sub_1AFDFEE28() & 1) != 0)
      {
        v45 = swift_conformsToProtocol2();
        if (v45)
        {
          v33 = *(*(v45 + 8) + 32);
          goto LABEL_91;
        }

        __break(1u);
        goto LABEL_180;
      }

LABEL_174:
      if (v4 == 0x726F66736E617274 && v3 == v5 - 6 || (sub_1AFDFEE28() & 1) != 0)
      {
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
LABEL_186:
          v14 = 0;
          v13 = 0;
          v15 = 0;
          v19 = 0;
          v46 = 0u;
          goto LABEL_13;
        }

        v33 = *(*(result + 8) + 32);
        goto LABEL_91;
      }

LABEL_180:
      if (v4 != 1684366707 || v3 != 0xE400000000000000)
      {
        result = sub_1AFDFEE28();
        if ((result & 1) == 0)
        {
          goto LABEL_186;
        }
      }

      result = swift_conformsToProtocol2();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v33 = *(*(result + 8) + 32);
LABEL_91:
      v3 = v33();
      if (sub_1AF449CFC())
      {
        goto LABEL_10;
      }
    }
  }

  if (!sub_1AFDFE108())
  {
    goto LABEL_92;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) == 0)
  {
    v12 = *(v3 + 32);

    goto LABEL_12;
  }

LABEL_39:
  v12 = MEMORY[0x1B2719C70](0, v3);
LABEL_12:

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v46 = *(v12 + 32);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  v17 = *(v12 + 58);

  v19 = v16 | (v17 << 16);
LABEL_13:
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v46;
  *(a3 + 32) = v15;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_1AFB7A1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 32;
  do
  {
    v6 = (v5 + v4++);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 <= -65 || v7 >= 65)
      {
        goto LABEL_6;
      }

      if ((v7 & 0x80000000) == 0)
      {
        break;
      }

      if (v7 != -64)
      {
        v9 = 1uLL >> -v7;
        goto LABEL_14;
      }

LABEL_6:
      if (v1 == v4)
      {
        return result;
      }

      ++v4;
    }

    if (v7 == 64)
    {
      goto LABEL_6;
    }

    v9 = 1 << v7;
LABEL_14:
    result |= v9;
  }

  while (v1 != v4);
  return result;
}

uint64_t sub_1AFB7A238(ValueMetadata *a1)
{
  if (a1 == &type metadata for Position)
  {
    return 0;
  }

  if (a1 == &type metadata for Scale1)
  {
    return 1;
  }

  if (a1 == &type metadata for Scale2)
  {
    return 2;
  }

  if (a1 == &type metadata for Scale3)
  {
    return 3;
  }

  if (a1 == &type metadata for Velocity)
  {
    return 4;
  }

  if (a1 == &type metadata for Color)
  {
    return 5;
  }

  if (a1 == &type metadata for Orientation)
  {
    return 6;
  }

  if (a1 == &type metadata for ParticleTextureFrame)
  {
    return 7;
  }

  if (a1 == &type metadata for ParticleAngle)
  {
    return 8;
  }

  if (a1 == &type metadata for ParticlePivot)
  {
    return 9;
  }

  if (a1 == &type metadata for ParticleTarget)
  {
    return 10;
  }

  if (a1 == &type metadata for ParticleRibbonLength)
  {
    return 11;
  }

  if (a1 == &type metadata for AngularVelocity)
  {
    return 12;
  }

  if (a1 == &type metadata for ParticleAngleVelocity)
  {
    return 13;
  }

  if (a1 == &type metadata for LinearFactor)
  {
    return 14;
  }

  if (a1 == &type metadata for AngularFactor)
  {
    return 15;
  }

  if (a1 == &type metadata for ParticleAge)
  {
    return 16;
  }

  if (a1 == &type metadata for ParticleLifetime)
  {
    return 17;
  }

  if (a1 == &type metadata for Mass)
  {
    return 18;
  }

  if (a1 == &type metadata for ParticleID)
  {
    return 26;
  }

  if (a1 == &type metadata for ParticleParentID)
  {
    return 27;
  }

  if (a1 == &type metadata for ParticleRoughness)
  {
    return 19;
  }

  if (a1 == &type metadata for ParticleMetalness)
  {
    return 20;
  }

  if (a1 == &type metadata for ParticleEmission)
  {
    return 21;
  }

  if (a1 == &type metadata for UserData1)
  {
    return 22;
  }

  if (a1 == &type metadata for UserData2)
  {
    return 23;
  }

  if (a1 == &type metadata for UserData3)
  {
    return 24;
  }

  if (a1 == &type metadata for UserData4)
  {
    return 25;
  }

  return 28;
}

uint64_t sub_1AFB7A4DC(uint64_t a1)
{
  v2 = sub_1AFB7A1B0(MEMORY[0x1E69E7CC0]);
  v3 = *(*(a1 + 16) + 32);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v7 = sub_1AFB7A238(*v5);
      if (v7 != 28 && (v7 - 65) >= 0x7Fu)
      {
        if ((v7 & 0x80) != 0)
        {
          if (v7 > 0xC0u)
          {
            v6 = 1uLL >> -v7;
            goto LABEL_4;
          }
        }

        else if (v7 < 0x40u)
        {
          v6 = 1 << v7;
LABEL_4:
          if ((v6 & ~v2) == 0)
          {
            v6 = 0;
          }

          v2 |= v6;
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t sub_1AFB7A5C0()
{
  if (swift_dynamicCastMetatype())
  {
    return 0x7373616D5F746567;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x6F6C6F635F746567;
  }

  v1 = swift_dynamicCastMetatype();
  result = 0x657A69735F746567;
  if (!v1)
  {
    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x677261745F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C65765F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x69736F705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x64695F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657261705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6567615F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6569726F5F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x67756F725F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6174656D5F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x73696D655F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000011;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000012;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6F7669705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6C676E615F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000014;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000011;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000012;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6E6172745F746567;
    }

    else if (swift_dynamicCastMetatype())
    {
      return 0x646565735F746567;
    }

    else
    {
      sub_1AFDFE218();

      v2 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v2);

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1AFB7AD00()
{
  result = qword_1EB642DD8;
  if (!qword_1EB642DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DD8);
  }

  return result;
}

unint64_t sub_1AFB7AD58()
{
  result = qword_1EB642DE0;
  if (!qword_1EB642DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DE0);
  }

  return result;
}

unint64_t sub_1AFB7ADB0()
{
  result = qword_1EB642DE8;
  if (!qword_1EB642DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DE8);
  }

  return result;
}

unint64_t sub_1AFB7AE08()
{
  result = qword_1EB642DF0;
  if (!qword_1EB642DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleStoredData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleStoredData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AFB7AFB0()
{
  result = qword_1EB642DF8;
  if (!qword_1EB642DF8)
  {
    sub_1AFB7B008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642DF8);
  }

  return result;
}

void sub_1AFB7B008()
{
  if (!qword_1EB642E00)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642E00);
    }
  }
}

unint64_t sub_1AFB7B05C()
{
  result = qword_1EB642E08;
  if (!qword_1EB642E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642E08);
  }

  return result;
}

uint64_t sub_1AFB7B0BC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vminv_u16(vmovn_s32(vceqq_f32(v7, v8)));
    v11 = v5-- != 0;
  }

  while ((v9 & 1) != 0 && v11);
  return v9 & 1;
}

BOOL sub_1AFB7B128(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = v8;
    v11 = v5-- != 0;
    result = v7 == v9;
  }

  while (v7 == v9 && v11);
  return result;
}

uint64_t sub_1AFB7B184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v5 = a1 + i;
      v6 = a2 + i;
      v7 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v7 || *(a1 + i + 48) != *(a2 + i + 48))
      {
        break;
      }

      if (*(v5 + 64))
      {
        if (!*(v6 + 64))
        {
          return 0;
        }
      }

      else
      {
        if (*(v5 + 56) == *(v6 + 56))
        {
          v4 = *(v6 + 64);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7B210(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 4;
    v4 = a1 + 4;
    do
    {
      v5 = v4[-2].i64[0];
      v6 = v4[-2].i64[1];
      v7 = v4[-1].u8[0];
      v8 = v4[3];
      v19[2] = v4[2];
      v19[3] = v8;
      v20 = v4[4].i8[0];
      v9 = v4[1];
      v19[0] = *v4;
      v19[1] = v9;
      v10 = v3[-2].i64[0];
      v11 = v3[-2].i64[1];
      v12 = v3[-1].i8[0];
      v13 = *v3;
      v14 = v3[1];
      v15 = v3[2];
      v16 = v3[3];
      v22 = v3[4].i8[0];
      v21[2] = v15;
      v21[3] = v16;
      v21[0] = v13;
      v21[1] = v14;
      if (v7 == 1)
      {
        if ((v12 & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1AFDFEE28() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v10)
        {
          v12 = 1;
        }

        if (v12)
        {
          return 0;
        }
      }

      v17 = sub_1AF87C134(v19, v21);
      sub_1AF4456D0(v5, v6, v7);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v4 += 7;
      v3 += 7;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AFB7B338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[3];
      v9 = *(v3 + 40);
      v11 = *v4;
      v10 = v4[1];
      v13 = v4[2];
      v12 = v4[3];
      v14 = *(v4 + 40);
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v11)
        {
          return 0;
        }
      }

      else
      {
        v20 = *(v4 + 40);
        v21 = *(v3 + 40);
        v19 = v4[1];
        v15 = v4[3];
        v16 = sub_1AFDFEE28();
        result = 0;
        if ((v16 & 1) == 0)
        {
          return result;
        }

        LODWORD(v12) = v15;
        v10 = v19;
        v14 = v20;
        v9 = v21;
        if (v5 != v11)
        {
          return result;
        }
      }

      if (v9)
      {
        result = 0;
        if (v6 == v10)
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        if (v18 & 1) == 0 || v7 != v13 || ((v12 ^ v8))
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if ((v14 & 1) != 0 || v6 != v10 || v7 != v13)
        {
          return result;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AFB7B474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 72);
  v4 = a1 + 40;
  do
  {
    if (*(v4 - 8) != *(v3 - 5))
    {
      return 0;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v7 = *(v4 + 32);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    if (*(v4 + 8))
    {
      if (v6 == v9)
      {
        v11 = *(v3 - 24);
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1 || v5 != v8)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((*(v3 - 3) & 1) != 0 || *v4 != *(v3 - 4) || v6 != v9 || v5 != v8)
      {
        return result;
      }
    }

    v20 = v2;
    v14 = *(v7 + 16);
    v15 = *(v7 + 24);
    v16 = *(v10 + 16);
    v17 = *(v10 + 24);

    v18 = sub_1AFDFDFD8();
    if (v18 != sub_1AFDFDFD8())
    {
      goto LABEL_29;
    }

    if (v14 == v16 && v15 == v17)
    {
    }

    else
    {
      if ((sub_1AFDFEE28() & 1) == 0)
      {
LABEL_29:

        return 0;
      }

      v19 = sub_1AFDFEE28();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    v4 += 48;
    v3 += 6;
    v2 = v20 - 1;
  }

  while (v20 != 1);
  return 1;
}

uint64_t sub_1AFB7B688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v6 = v5;
    v7 = *v3 ^ *v4;
    if (v7)
    {
      break;
    }

    --v5;
    ++v4;
    ++v3;
  }

  while (v6);
  return (v7 ^ 1) & 1;
}

BOOL sub_1AFB7B6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B750(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t sub_1AFB7B864(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  v5 = *&v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_f32(v7, v8);
    v11 = v5-- != 0;
  }

  while ((v9.i8[0] & v9.i8[4] & 1) != 0 && v11);
  return v9.i8[0] & v9.i8[4] & 1;
}

uint64_t sub_1AFB7B8D0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vmovn_s32(vceqq_f32(v7, v8));
    v11 = v5-- != 0;
  }

  while (((v9.i8[0] & v9.i8[2]) & v9.i8[4] & 1) != 0 && v11);
  return (v9.i8[0] & v9.i8[2]) & v9.i8[4] & 1;
}

uint64_t sub_1AFB7B948(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1AFDFEE28() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7B9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = v28 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v20 = *(v10 + 16);
      v18 = v10 + 16;
      v19 = v20;
      v28[0] = *(v18 + 56);
      v28[1] = v18;
      v21 = (v18 - 8);
      v22 = v14 - 1;
      do
      {
        v19(v13, v16, v4, v11);
        (v19)(v7, v17, v4);
        sub_1AFB924D4();
        v23 = sub_1AFDFCE58();
        v24 = *v21;
        (*v21)(v7, v4);
        v24(v13, v4);
        v26 = v22-- != 0;
        if ((v23 & 1) == 0)
        {
          break;
        }

        v17 += v28[0];
        v16 += v28[0];
      }

      while (v26);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1AFB7BBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  do
  {
    v5 = 0;
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v6 + 16);
    v10 = *(v6 + 17);
    v11 = a2 + 32 + 24 * v3;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 17);
    v16 = 1;
    while (!v16)
    {
      result = 0;
      v16 = 0;
      if (v5 == 1)
      {
        return result;
      }

LABEL_7:
      ++v5;
    }

    v29 = v8;
    v18 = *(&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
    v30 = v13;
    v19 = *(&v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
    v16 = v18 == v19;
    if (v5 != 1)
    {
      goto LABEL_7;
    }

    if (v18 != v19)
    {
      return 0;
    }

    v20 = 0;
    v21 = 1;
    while (2)
    {
      if (!v21)
      {
        result = 0;
        v21 = 0;
        if (v20 == 1)
        {
          return result;
        }

LABEL_13:
        ++v20;
        continue;
      }

      break;
    }

    v27 = v7;
    v22 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v20 & 1)));
    v28 = v12;
    v23 = *(&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v20 & 1)));
    v21 = v22 == v23;
    if (v20 != 1)
    {
      goto LABEL_13;
    }

    v24 = v9 ^ v14;
    if (v22 != v23 || v24 != 0 || v10 != v15)
    {
      return 0;
    }

    ++v3;
    result = 1;
  }

  while (v3 != v2);
  return result;
}

uint64_t sub_1AFB7BCF0(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  v5 = *&v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_s32(v7, v8);
    v11 = v5-- != 0;
  }

  while ((v9.i8[0] & v9.i8[4] & 1) != 0 && v11);
  return v9.i8[0] & v9.i8[4] & 1;
}

uint64_t sub_1AFB7BD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 80;
    v4 = (a1 + 40);
    while (1)
    {
      v6 = v4[1];
      v18 = v4[2];
      v8 = *(v3 - 32);
      v7 = *(v3 - 24);
      v17 = v4;
      if ((*(v4 - 1) != *(v3 - 48) || *v4 != *(v3 - 40)) && (sub_1AFDFEE28() & 1) == 0)
      {
        break;
      }

      v15 = v3;

      v16 = v6;
      sub_1AF687F90(v6, v18);

      v9 = v8;
      sub_1AF687F90(v8, v7);
      v10 = sub_1AF7FE65C();
      v12 = v11;
      if (v10 == sub_1AF7FE65C() && v12 == v13)
      {

        sub_1AF687FE4(v9, v7);

        sub_1AF687FE4(v16, v18);
      }

      else
      {
        v5 = sub_1AFDFEE28();

        sub_1AF687FE4(v9, v7);

        sub_1AF687FE4(v16, v18);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 = v15 + 56;
      v4 = v17 + 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7BFB0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  ++*(a4 + 536);
  if (a6)
  {
    v9 = a2;
    sub_1AFB93CB8(a1, a2 | ((HIDWORD(a2) & 1) << 32), &v57);

    v11 = v58;
    *(a4 + 56) = v57;
    *(a4 + 72) = v11;
    *(a4 + 88) = v59;
    if ((a2 & 0x100000000) != 0)
    {
      v12 = 0x200000000;
    }

    else
    {
      v12 = v9;
    }

    sub_1AF6B06C0(a5, &v57, v12, &v60);
    if (v60)
    {
      v67 = v60;
      v70 = v63;
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v68 = v61;
      v69 = v62;
      sub_1AF6B8EAC(0);
      sub_1AFB91B88(&v60, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    }

    v74 = v57;
    v75 = DWORD2(v57);
    v76 = BYTE12(v57);
    v77 = v58 | 0x10;
    v78 = BYTE8(v58);
    v79 = v59;

    sub_1AF6234A4(&v74);
    sub_1AF692DB0(&v57);
    if (*(*(a4 + 256) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v55[0] = *(a4 + 256);
      sub_1AFB92608();
      sub_1AFDFE4B8();
      *(a4 + 256) = v55[0];
    }

    *(a4 + 272) = 0;
    *(a4 + 280) = 0;
    swift_unknownObjectRelease();
    *(a4 + 464) = 0;
    *(a4 + 472) = 0;
    *(a4 + 480) = 0;
    swift_unknownObjectRelease();
    *(a4 + 528) = 0;
    *(a4 + 488) = 0u;
    *(a4 + 504) = 0u;
    swift_unknownObjectRelease();
    *(a4 + 344) = 0u;
    *(a4 + 360) = 0u;
    swift_unknownObjectRelease();
    *(a4 + 456) = 0;
    *(a4 + 424) = 0u;
    *(a4 + 440) = 0u;
  }

  v45 = a3;
  v46 = a4;
  v48 = *(*a3 + 16);
  if (v48)
  {
    v13 = 0;
    v14 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v47 = *a3 + 32;
    while (1)
    {
      v15 = (v47 + 8 * v13);
      v16 = v15[1];
      v17 = *v15;
      v18 = v17 == -1 && v16 == 0;
      v19 = v18;
      if (v18 || (v17 & 0x80000000) != 0)
      {
        break;
      }

      v20 = MEMORY[0x1E69E7CC0];
      if (v14[1] <= v17)
      {
        goto LABEL_22;
      }

      v37 = (*v14 + 12 * v17);
      if (v16 != -1 && v37[2] != v16)
      {
        goto LABEL_22;
      }

      if (*(*(*(a5 + 144) + 8 * *v37 + 32) + 120))
      {

LABEL_22:
        v21 = *(v20 + 16);
        if (v21)
        {
          v49 = v13;
          v22 = 0;
          v51 = v20 + 32;
          do
          {
            if (!v19 && (v17 & 0x80000000) == 0 && v14[1] > v17)
            {
              v23 = (*v14 + 12 * v17);
              v24 = *(v23 + 2);
              if (v16 == -1 || v23[2] == v16)
              {
                v25 = *(*(a5 + 144) + 8 * *v23 + 32);
                v26 = *(v25 + 48);
                v28 = *(v26 + 16);
                v27 = v26 + 16;
                v29 = *(v51 + 16 * v22);
                v30 = v28 + 1;
                while (--v30)
                {
                  v31 = (v27 + 40);
                  v32 = *(v27 + 16);
                  v27 += 40;
                  if (v32 == *(v51 + 16 * v22))
                  {
                    v33 = *(v31 - 1);
                    if (v33 <= 1)
                    {
                      v33 = 1;
                    }

                    v34 = *(v25 + 128) + *v31 + v33 * v24;
                    v56 = *(v51 + 16 * v22);
                    v35 = sub_1AF585714(v55);
                    sub_1AF641154(v34, v29, v35);
                    sub_1AF5C5358(0, &qword_1ED72FFF0);
                    sub_1AF5C5358(0, qword_1ED7247F0);
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      v54 = 0;
                      v52 = 0u;
                      v53 = 0u;
                      goto LABEL_26;
                    }

                    if (!*(&v53 + 1))
                    {
                      goto LABEL_26;
                    }

                    sub_1AF0FBA54(&v52, v55);
                    v36 = v56;
                    sub_1AF441150(v55, v56);
                    (*(*(&v36 + 1) + 16))(v17 | (v16 << 32), a5, v36);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
                    goto LABEL_27;
                  }
                }
              }
            }

            v52 = 0u;
            v53 = 0u;
            v54 = 0;
LABEL_26:
            sub_1AFB93108(&v52, &qword_1ED7224E8, qword_1ED7247F0, &protocol descriptor for ParticleComponentSpawner);
LABEL_27:
            ++v22;
          }

          while (v22 != v21);

          v13 = v49;
        }

        else
        {
        }
      }

      if (++v13 == v48)
      {
        goto LABEL_52;
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

LABEL_52:
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 161) = 1;
  *(v46 + 49) = *(v45 + 72) & 1 | (*(v45 + 48) != 0);
  *(v46 + 216) = 0;
  *(v46 + 224) = 0;
  *(v46 + 208) = 0;
  *(v46 + 232) = 1;
  *(v46 + 552) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v46 + 560);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64C528(0, *(v40 + 16));
  }

  else
  {
    v41 = sub_1AFC85E6C(0, *(v40 + 24) >> 1);

    *(v46 + 560) = v41;
  }

  v42 = sub_1AF3C9600(a1);
  if ((v42 & 0xFF00000000) == 0x200000000)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  *(v46 + 8) = v43 + 0x76E15D3EFEFDCBBFLL;
  *(v46 + 16) = 0xC5004E441C522FB3 * v43 - 0x3AFFB1BBE3ADD04DLL;
  *(v46 + 24) = 0x77710069854EE241 - v43;
  *(v46 + 32) = 0x39109BB02ACBE635 * v43;
  *(v46 + 40) = v43;
  *(v46 + 48) = 0;
  result = sub_1AF67E6C8(a1, a5, v46);
  *(v46 + 576) = result & 1;
  *(v46 + 336) = *(v45 + 61);
  *(v46 + 520) = v43;
  return result;
}

uint64_t sub_1AFB7C604(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = *v1;
    do
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v5 + 16);
        v8 = 32;
        while (*(v5 + v8) != *(v4 + 16 * v3))
        {
          v8 += 16;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v12 = *(v4 + 16 * v3);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AF422C28(0, v6 + 1, 1, v5);
          v5 = result;
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        v11 = v12;
        if (v10 >= v9 >> 1)
        {
          result = sub_1AF422C28(v9 > 1, v10 + 1, 1, v5);
          v11 = v12;
          v5 = result;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 16 * v10 + 32) = v11;
        *v1 = v5;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_1AFB7C708(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = sub_1AF67CACC(&type metadata for Position, &off_1F252EDF0, a2);
  if (v5 || (v5 = sub_1AF67CACC(&type metadata for Orientation, &off_1F252C828, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale1, &off_1F252F708, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale2, &off_1F252F7B8, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale3, &off_1F252F918, a2)))
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    v34[2] = a1;
    v35 = a2;
    v36 = v4;
    if (v4 || a2 != -1)
    {
      if ((a2 & 0x80000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v7 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
        if (v4 == 0xFFFFFFFF || v7[2] == v4)
        {
          v8 = *(v7 + 2);
          v9 = *(*(a1 + 144) + 8 * *v7 + 32);
          if (*(v9 + 232) <= v8 && *(v9 + 240) > v8)
          {
            v11 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v37 = 0;
            v12 = *(v9 + 344);

            os_unfair_lock_lock(v12);
            ecs_stack_allocator_push_snapshot(*(v11 + 32));

            v38 = v11;
            sub_1AFCC72E8(v11, v9, v8, a1, a2, sub_1AFB8C8D4, v34);

            ecs_stack_allocator_pop_snapshot(*(v38 + 32));
            os_unfair_lock_unlock(*(v9 + 344));
          }
        }
      }

      if ((a2 & 0x8000000000000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v13 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
        if (v4 == 0xFFFFFFFF || v13[2] == v4)
        {
          v14 = *(v13 + 2);
          v15 = *(*(a1 + 144) + 8 * *v13 + 32);
          if (*(v15 + 232) <= v14 && *(v15 + 240) > v14)
          {
            v17 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v18 = *(v15 + 344);

            os_unfair_lock_lock(v18);
            ecs_stack_allocator_push_snapshot(*(v17 + 32));

            sub_1AF682880(v17, v15, v14, &type metadata for NotInHierarchy, &off_1F252A400, a1);

            ecs_stack_allocator_pop_snapshot(*(v17 + 32));
            os_unfair_lock_unlock(*(v15 + 344));
          }
        }
      }
    }
  }

  else if (v4 || a2 != -1)
  {
    v19 = OBJC_IVAR____TtC3VFX13EntityManager__entries;
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
    v21 = a2;
    if ((a2 & 0x80000000) == 0 && a2 < v20)
    {
      v22 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
      if (v4 == 0xFFFFFFFF || v22[2] == v4)
      {
        v23 = *(v22 + 2);
        v24 = *(*(a1 + 144) + 8 * *v22 + 32);
        if (*(v24 + 232) <= v23 && *(v24 + 240) > v23)
        {
          v26 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v27 = *(v24 + 344);

          os_unfair_lock_lock(v27);
          ecs_stack_allocator_push_snapshot(*(v26 + 32));

          sub_1AF68295C(v26, v24, v23, &type metadata for WorldTransform, &off_1F2529FC0, 0);

          ecs_stack_allocator_pop_snapshot(*(v26 + 32));
          os_unfair_lock_unlock(*(v24 + 344));

          v19 = OBJC_IVAR____TtC3VFX13EntityManager__entries;
          v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
        }
      }
    }

    if ((v21 & 0x8000000000000000) == 0 && v21 < v20)
    {
      v28 = (*(a1 + v19) + 12 * v21);
      if (v4 == 0xFFFFFFFF || v28[2] == v4)
      {
        v29 = *(v28 + 2);
        v30 = *(*(a1 + 144) + 8 * *v28 + 32);
        if (*(v30 + 232) <= v29 && *(v30 + 240) > v29)
        {
          v32 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v33 = *(v30 + 344);

          os_unfair_lock_lock(v33);
          ecs_stack_allocator_push_snapshot(*(v32 + 32));

          sub_1AF68295C(v32, v30, v29, &type metadata for NotInHierarchy, &off_1F252A400, 0);

          ecs_stack_allocator_pop_snapshot(*(v32 + 32));
          os_unfair_lock_unlock(*(v30 + 344));
        }
      }
    }
  }
}

uint64_t sub_1AFB7CC3C(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = v2 + 32;
    v7 = 1.0;
    v73 = result;
    v74 = (result + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v71 = v2 + 32;
    v72 = *(v2 + 16);
    while (1)
    {
      v8 = (v6 + 8 * v4);
      v9 = v8[1];
      v10 = *v8;
      v11 = v10 == -1 && v9 == 0;
      if (!v11 && (v10 & 0x80000000) == 0 && v5[1] > v10)
      {
        v12 = (*v5 + 12 * v10);
        if (v9 == -1 || v12[2] == v9)
        {
          v14 = *(*(*(*(result + 88) + 8 * *(v12 + 3) + 32) + 16) + 32);
          if (*(v14 + 16))
          {
            break;
          }
        }
      }

LABEL_4:
      if (++v4 == v3)
      {
        return result;
      }
    }

    v15 = *(*(result + 144) + 8 * *v12 + 32);
    v75 = *(v12 + 2);

    v16 = 0;
LABEL_20:
    v17 = *(v14 + 32 + 16 * v16++);
    v18 = *(v15 + 48);
    v20 = *(v18 + 16);
    v19 = v18 + 16;
    v21 = v17;
    v22 = v20 + 1;
    while (--v22)
    {
      v23 = (v19 + 40);
      v24 = *(v19 + 16);
      v19 += 40;
      if (v24 == v17)
      {
        v25 = *(v23 - 1);
        if (v25 <= 1)
        {
          v25 = 1;
        }

        v26 = *(v15 + 128) + *v23 + v25 * v75;
        v81 = v17;
        v27 = sub_1AF585714(v80);
        sub_1AF641154(v26, v21, v27);
        sub_1AF441194(v80, v78);
        sub_1AF5C5358(0, &qword_1ED72FFF0);
        sub_1AF5C5358(0, &qword_1EB642E10);
        if (swift_dynamicCast())
        {
          sub_1AF0FBA54(v76, v79);
          v28 = 1.0;
          if (v74[1] > v10)
          {
            v29 = (*v74 + 12 * v10);
            v30 = *(v29 + 2);
            if (v9 == -1 || v29[2] == v9)
            {
              v31 = *(*(v73 + 144) + 8 * *v29 + 32);
              v32 = *(v31 + 48);
              v33 = (v32 + 32);
              v34 = *(v32 + 16) + 1;
              while (--v34)
              {
                v35 = v33 + 5;
                v36 = *v33;
                v33 += 5;
                if (v36 == &type metadata for Scale3)
                {
                  v37 = *(&(*(v35 - 2))[v30] + *(v31 + 128));
LABEL_41:
                  v28 = fmaxf(fmaxf(v37.f32[0], v37.f32[2]), v37.f32[1]);
                  goto LABEL_42;
                }
              }

              v38 = *(*(v73 + 144) + 8 * *v29 + 32);
              v39 = *(v38 + 48);
              v40 = (v39 + 32);
              v41 = *(v39 + 16) + 1;
              while (--v41)
              {
                v42 = v40 + 5;
                v43 = *v40;
                v40 += 5;
                if (v43 == &type metadata for Scale1)
                {
                  v44 = (*(v42 - 2) + 4 * v30 + *(v38 + 128));
                  v37 = vld1q_dup_f32(v44);
                  goto LABEL_41;
                }
              }

              v45 = *(*(v73 + 144) + 8 * *v29 + 32);
              v46 = *(v45 + 48);
              v47 = (v46 + 32);
              v48 = *(v46 + 16) + 1;
              while (--v48)
              {
                v49 = v47 + 5;
                v50 = *v47;
                v47 += 5;
                if (v50 == &type metadata for Scale2)
                {
                  v37.i64[0] = *(&(*(v49 - 2))->Kind + 8 * v30 + *(v45 + 128));
                  v37.i32[2] = 1065353216;
                  goto LABEL_41;
                }
              }
            }
          }

LABEL_42:
          sub_1AF441194(v79, v78);
          if (swift_dynamicCast())
          {
            if ((LODWORD(v76[0]) != -1 || DWORD1(v76[0]) != 0) && (v76[0] & 0x80000000) == 0 && v74[1] > SLODWORD(v76[0]))
            {
              v52 = (*v74 + 12 * SLODWORD(v76[0]));
              v53 = *(v52 + 2);
              if (DWORD1(v76[0]) == -1 || v52[2] == DWORD1(v76[0]))
              {
                v54 = *(*(v73 + 144) + 8 * *v52 + 32);
                v55 = *(v54 + 48);
                v56 = (v55 + 32);
                v57 = *(v55 + 16) + 1;
                while (--v57)
                {
                  v58 = v56 + 5;
                  v59 = *v56;
                  v56 += 5;
                  if (v59 == &type metadata for MeshModel)
                  {
                    v60 = *(&(*(v58 - 2))[v53].Kind + *(v54 + 128));
                    if (v60)
                    {
                      v61 = *(v60 + 40);
                      *v62.i64 = sub_1AF6DE28C();
                      v64 = v61[1].i64[0];
                      if (v64)
                      {
                        v65 = v61 + 12;
                        v66.i64[0] = 0x3F0000003F000000;
                        v66.i64[1] = 0x3F0000003F000000;
                        do
                        {
                          v67 = v65[-1];
                          v68 = vminnmq_f32(vsubq_f32(v62, v63), vsubq_f32(v67, *v65));
                          v69 = vmaxnmq_f32(vaddq_f32(v62, v63), vaddq_f32(v67, *v65));
                          v62 = vmulq_f32(vaddq_f32(v68, v69), v66);
                          v63 = vmulq_f32(vsubq_f32(v69, v68), v66);
                          v65 += 11;
                          --v64;
                        }

                        while (v64);
                      }

                      v70 = fmaxf(fmaxf(v63.f32[0], v63.f32[2]), v63.f32[1]);
                      v28 = v28 * (v70 + v70);
                    }

                    break;
                  }
                }
              }
            }
          }

          if (v7 <= v28)
          {
            v7 = v28;
          }

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v79);
        }

        else
        {
          v77 = 0;
          memset(v76, 0, sizeof(v76));
          sub_1AFB93108(v76, &qword_1EB642E18, &qword_1EB642E10, &protocol descriptor for ParticleRenderer);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v80);
        if (v16 == *(v14 + 16))
        {

          result = v73;
          v5 = v74;
          v6 = v71;
          v3 = v72;
          goto LABEL_4;
        }

        goto LABEL_20;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB7D1B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7A696D6F646E6172;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7A696D6F646E6172;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
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

uint64_t sub_1AFB7D260()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D2E4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB7D354()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D3D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

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

void sub_1AFB7D434(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x7A696D6F646E6172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB7D474()
{
  if (*v0)
  {
    return 0x7A696D6F646E6172;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1AFB7D4B0@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

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

uint64_t sub_1AFB7D514(uint64_t a1)
{
  v2 = sub_1AFB9166C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7D550(uint64_t a1)
{
  v2 = sub_1AFB9166C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7D58C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AFB7D5C8(void *a1)
{
  sub_1AFB925A0(0, &qword_1EB642E20, sub_1AFB9166C, &type metadata for Seed.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB9166C();
  sub_1AFDFF3F8();
  v12 = 0;
  sub_1AFDFE988();
  if (!v1)
  {
    v11 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFB7D754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFB91480(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1AFB7D7B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x80000001AFF22D00;
  if (v2 == 1)
  {
    v5 = 0x80000001AFF22D00;
  }

  else
  {
    v3 = 0x6C6F73655278616DLL;
    v5 = 0xED00006E6F697475;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x637261655378616DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF73756964615268;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x6C6F73655278616DLL;
    v4 = 0xED00006E6F697475;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x637261655378616DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF73756964615268;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFB7D8D4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D994()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB7DA40()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7DAFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB8C9D4();
  *a1 = result;
  return result;
}

void sub_1AFB7DB2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73756964615268;
  v4 = 0x80000001AFF22D00;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x6C6F73655278616DLL;
    v4 = 0xED00006E6F697475;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x637261655378616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AFB7DBA8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x6C6F73655278616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637261655378616DLL;
  }
}

uint64_t sub_1AFB7DC20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB8C9D4();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB7DC48(uint64_t a1)
{
  v2 = sub_1AFB916C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7DC84(uint64_t a1)
{
  v2 = sub_1AFB916C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB7DCEC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1050253722;
  *(a1 + 8) = 25;
  *&result = 0x2000000020;
  *(a1 + 16) = xmmword_1AFE55100;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AFB7DD14(void *a1, double a2, __n128 a3)
{
  v12 = a3;
  sub_1AFB925A0(0, &unk_1EB642E40, sub_1AFB916C0, &type metadata for NeighborGrid.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB916C0();
  sub_1AFDFF3F8();
  v14.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v3)
  {
    v14.n128_u8[0] = 1;
    sub_1AFDFE908();
    v14 = v12;
    v13 = 2;
    sub_1AFB925A0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    sub_1AFB91714(&qword_1EB63F038);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFB7DF58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFB8F830(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v7;
    *(a2 + 32) = v5 & 1;
  }

  return result;
}

uint64_t sub_1AFB7E098(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v5, 0);
    v7 = v43;
    ObjectType = swift_getObjectType();
    v9 = 32;
    do
    {
      v10 = *(v4 + v9);
      sub_1AF62BFF0(v10, 1, ObjectType, a2);
      v44 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        sub_1AFC07194(v11 > 1, v12 + 1, 1);
        v10 = v13;
        v7 = v44;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      v9 += 8;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *v42 = v7;
  v14 = v42[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_1AFC07194(0, v15, 0);
    v16 = v6;
    v17 = swift_getObjectType();
    v18 = 32;
    do
    {
      v19 = *(v14 + v18);
      sub_1AF62BFF0(v19, 1, v17, a2);
      v45 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = v19;
        sub_1AFC07194(v20 > 1, v21 + 1, 1);
        v19 = v22;
        v16 = v45;
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v19;
      v18 += 8;
      --v15;
    }

    while (v15);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v42[1] = v16;
  v23 = v42[2];
  v24 = *(v23 + 16);
  if (v24)
  {
    sub_1AFC07194(0, v24, 0);
    v25 = v6;
    v26 = swift_getObjectType();
    v27 = 32;
    do
    {
      v28 = *(v23 + v27);
      sub_1AF62BFF0(v28, 1, v26, a2);
      v46 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = v28;
        sub_1AFC07194(v29 > 1, v30 + 1, 1);
        v28 = v31;
        v25 = v46;
      }

      *(v25 + 16) = v30 + 1;
      *(v25 + 8 * v30 + 32) = v28;
      v27 += 8;
      --v24;
    }

    while (v24);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v42[2] = v25;
  v32 = v42[3];
  v33 = *(v32 + 16);
  if (v33)
  {
    sub_1AFC07194(0, v33, 0);
    v34 = v6;
    v35 = swift_getObjectType();
    v36 = 32;
    do
    {
      v37 = *(v32 + v36);
      sub_1AF62BFF0(v37, 1, v35, a2);
      v47 = v34;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        v40 = v37;
        sub_1AFC07194(v38 > 1, v39 + 1, 1);
        v37 = v40;
        v34 = v47;
      }

      *(v34 + 16) = v39 + 1;
      *(v34 + 8 * v39 + 32) = v37;
      v36 += 8;
      --v33;
    }

    while (v33);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v42[3] = v34;
  return result;
}

uint64_t sub_1AFB7E458(char a1)
{
  result = 0x746E456E77617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 0x657461647075;
      goto LABEL_11;
    case 3:
      v3 = 0x7265646E6572;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6E756F42776F6873;
      break;
    case 8:
      result = 0x6974616C756D6973;
      break;
    case 9:
      result = 0x6E4F657461647075;
      break;
    case 10:
      result = 0x754470756D726177;
      break;
    case 11:
      result = 0x6C61636F4C7369;
      break;
    case 12:
    case 21:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6974616C756D6973;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x6E77617073;
      break;
    case 16:
      result = 0x696C616974696E69;
      break;
    case 17:
      result = 0x657461647075;
      break;
    case 18:
      result = 0x7265646E6572;
      break;
    case 19:
      result = 6580597;
      break;
    case 20:
      result = 1684366707;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1AFB7E70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AFB8C6CC(v11, v13);
}

BOOL sub_1AFB7E778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return !sub_1AFB8C6CC(v11, v13);
}

double sub_1AFB7E7EC@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x10000;
  *(a1 + 60) = 0;
  result = 0.0078125;
  *(a1 + 64) = 0x3F80000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 90) = 0x10000;
  *(a1 + 96) = 1036831949;
  return result;
}

uint64_t sub_1AFB7E854(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFB7E458(*a1);
  v5 = v4;
  if (v3 == sub_1AFB7E458(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFB7E8DC()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFB7E458(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7E940()
{
  sub_1AFB7E458(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFB7E994()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFB7E458(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7E9F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB8CA20();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB7EA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB7E458(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFB7EA58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFB8CA20();
  *a1 = result;
  return result;
}

uint64_t sub_1AFB7EA8C(uint64_t a1)
{
  v2 = sub_1AFB91790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7EAC8(uint64_t a1)
{
  v2 = sub_1AFB91790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7EB04(void *a1)
{
  v3 = v1;
  sub_1AFB925A0(0, &qword_1EB642E78, sub_1AFB91790, &type metadata for EmitterDescription.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB91790();
  sub_1AFDFF3F8();
  v12 = *v3;
  v14 = 0;
  sub_1AFB936C8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AFB919BC(&qword_1EB642E80, sub_1AF480018);
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = v3[1];
    v14 = 1;
    sub_1AFDFE918();
    v12 = v3[2];
    v14 = 2;
    sub_1AFDFE918();
    v12 = v3[3];
    v14 = 3;
    sub_1AFDFE918();
    v12 = v3[4];
    v13 = *(v3 + 40);
    v14 = 4;
    sub_1AFB936C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1AFB91A4C(&qword_1EB640200);
    sub_1AFDFE918();
    LOBYTE(v12) = 5;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 7;
    sub_1AFDFE8C8();
    LOBYTE(v12) = *(v3 + 92);
    v14 = 8;
    sub_1AFB91AD0();
    sub_1AFDFE918();
    LOBYTE(v12) = 9;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 10;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 11;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 12;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 14;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 13;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

__n128 sub_1AFB7EFA0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB8FAE0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_1AFB7F018(uint64_t a1@<X8>)
{
  swift_weakInit();
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v2 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v3 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v4 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v5 = v12;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  *(a1 + 56) = qword_1ED73B840;
  *(a1 + 64) = 0;
  *(a1 + 68) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  type metadata accessor for Bitset();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = 8;

  v7 = swift_slowAlloc();
  v6[3] = 0;
  v6[4] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 128) = v6;
  *(a1 + 136) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 161) = 1;
  *&v9 = sub_1AF6DE28C();
  *(a1 + 176) = v9;
  *(a1 + 192) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 1;
  v11 = MEMORY[0x1E69E7CC8];
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v11;
  *(a1 + 264) = 0;
  *(a1 + 292) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = v8;
  *(a1 + 328) = v8;
  *(a1 + 336) = 0;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = v8;
  type metadata accessor for EmitterRuntime.Storage();
  swift_allocObject();
  vfx_uniform_grid_create();
}

void sub_1AFB7F240()
{
  *(v0 + 112) = 0;
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v1 + 2);
    if (v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1AFC0DB84(v1);
      }

      bzero(v1 + 32, 4 * v2);
      *(v0 + 136) = v1;
    }
  }
}

uint64_t sub_1AFB7F2AC()
{
  vfx_uniform_grid_destroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1AFB7F308(Swift::Int a1, void *a2, uint64_t a3)
{
  v4 = v3;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = qword_1ED725EC0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B5C0;

  if (v9 == v11)
  {
    goto LABEL_24;
  }

  if (*(v4 + 160) == 1)
  {
    v12 = 4000000;
  }

  else
  {
    v12 = *(v4 + 152);
  }

  v13 = *a3;
  v14 = *(v4 + 336);

  if (v14)
  {
    v15 = v12 - *(v4 + 528);
    if (v15 < a1)
    {
      if (v15 > 0)
      {
        v16 = 1;
LABEL_15:
        a1 = v15;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a1 > 0)
    {
      v16 = 1;
      goto LABEL_20;
    }

LABEL_23:

LABEL_24:
  }

  v15 = v12 - sub_1AF621684(*(v9 + 204));
  if (v15 < a1)
  {
    if (v15 > 0)
    {
      v16 = 0;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (a1 <= 0)
  {
    goto LABEL_23;
  }

  v16 = 0;
LABEL_20:
  v53 = *(a3 + 12);
  v54 = a3;
  v52 = *(a3 + 8);
  v17 = sub_1AF3CD0F8(v52 | (v53 << 32));
  v19 = v17;
  v20 = v18;
  if ((v16 & 1) == 0)
  {
    if (v18)
    {

      v22 = v9;
    }

    else
    {
      v60[3] = &type metadata for ParticleClassSpawnID;
      v60[4] = &off_1F254ECF8;
      v60[0] = v17;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v23 = *(v9 + 204);

      v24 = sub_1AF65A4B4(v23, 0, 0, 0, 0, v60, &v55);

      sub_1AFB93108(&v55, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
      v22 = *(*(v13 + 88) + 8 * v24 + 32);

      sub_1AFB93108(v60, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
    }

    v25 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v21) + 8);
    v26 = *(v54 + 40);
    LOBYTE(v60[0]) = *(v54 + 44);
    sub_1AF6370B8(v22, v26 | (LOBYTE(v60[0]) << 32), a1, v25);
  }

  a2[10] = a1;
  v27 = *(v4 + 112);
  a2[11] = v27;
  a2[12] = v27 + a1;
  *(v4 + 112) = v27 + a1;
  if ((v20 & 1) == 0)
  {
    v28 = *(v4 + 136);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (*(v4 + 120) == 1)
  {
    v28 = *(v4 + 136);
    v19 = 15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_34:
      *&v28[4 * v19 + 32] += a1;
      *(v4 + 136) = v28;
      goto LABEL_35;
    }

LABEL_32:
    v28 = sub_1AFC0DB84(v28);
    goto LABEL_34;
  }

LABEL_35:
  *(v4 + 104) += a1;
  a2[9] += a1;
  sub_1AF3CF5A0(v52 | (v53 << 32), &v61);
  if ((v62 & 0xFF00000000) != 0x200000000)
  {
    v29 = vdupq_n_s64(v62);
    *&v55 = v61;
    DWORD2(v55) = v62;
    *v29.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1AFE513B0), vshlq_u64(v29, xmmword_1AFE513C0))), 0x1000100010001);
    HIDWORD(v55) = vuzp1_s8(*v29.i8, *v29.i8).u32[0];
    LODWORD(v56) = v63;
    BYTE4(v56) = v64;
    if ((v52 != -1 || v53) && (v52 & 0x80000000) == 0 && *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v52)
    {
      v30 = (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v52);
      v31 = *(v30 + 2);
      if (v53 == -1 || v30[2] == v53)
      {
        v32 = *(*(v13 + 144) + 8 * *v30 + 32);
        v33 = *(v32 + 48);
        v34 = (v33 + 32);
        v35 = *(v33 + 16) + 1;
        while (--v35)
        {
          v36 = v34 + 5;
          v37 = *v34;
          v34 += 5;
          if (v37 == &type metadata for ParticleSubSpawn.State)
          {
            v38 = (&(*(v36 - 2))[4 * v31].Kind + *(v32 + 128));
            sub_1AF68A8E0(v54, v60);
            sub_1AFBBFBD8(a1, a2);
            if (v16)
            {
              sub_1AF688940(v54);
              break;
            }

            v39 = *v54;
            v40 = *(v54 + 32);
            v41 = *(v54 + 36);

            if ((v40 != -1 || v41) && (v40 & 0x80000000) == 0 && *(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v40)
            {
              v42 = (*(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40);
              v43 = *(v42 + 2);
              if (v41 == -1 || v42[2] == v41)
              {
                v44 = *(*(v39 + 144) + 8 * *v42 + 32);
                v45 = *(v44 + 48);
                v46 = (v45 + 32);
                v47 = *(v45 + 16) + 1;
                while (--v47)
                {
                  v48 = v46 + 5;
                  v49 = *v46;
                  v46 += 5;
                  if (v49 == &type metadata for EmitterRuntime)
                  {
                    v50 = &(*(v48 - 2))[53 * v43] + *(v44 + 128);
                    sub_1AF68A8E0(v54, v60);

                    sub_1AFBC470C(v50, v39, v54, &v55, v38, a2);
                    sub_1AF688940(v54);

                    sub_1AF688940(v54);
                    goto LABEL_42;
                  }
                }
              }
            }

            v58 = 0;
            v59 = 0xE000000000000000;
            sub_1AF68A8E0(v54, v60);

            sub_1AFDFE218();
            v60[0] = v58;
            v60[1] = v59;
            MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
            v51 = sub_1AF656F38();
            MEMORY[0x1B2718AE0](v51);

            MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
            MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
            MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

            sub_1AF688940(v54);
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }
        }
      }
    }
  }

LABEL_42:
}

uint64_t sub_1AFB7FA04(uint64_t a1, char a2, char a3, char a4)
{
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFB936C8(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  v9 = *(a1 + 49);
  *(v8 + 16) = xmmword_1AFE9E830;
  *(v8 + 32) = xmmword_1AFE9E840;
  *(v8 + 48) = 0;
  *(v8 + 64) = (v9 | a2 & a3) & 1;
  *(v8 + 128) = 13;
  *(v8 + 144) = xmmword_1AFE9E850;
  *(v8 + 160) = 0;
  *(v8 + 176) = v9;
  *(v8 + 240) = 13;
  v10 = sub_1AF657F68(&type metadata for Velocity);
  *(v8 + 256) = xmmword_1AFE9E860;
  *(v8 + 272) = 0;
  *(v8 + 288) = v10;
  *(v8 + 352) = 13;
  v11 = sub_1AF657F68(&type metadata for ParticleAge);
  *(v8 + 368) = xmmword_1AFE9E870;
  *(v8 + 384) = 0;
  *(v8 + 400) = v11;
  *(v8 + 464) = 13;
  v12 = sub_1AF657F68(&type metadata for ParticleLifetime);
  *(v8 + 480) = xmmword_1AFE9E880;
  *(v8 + 496) = 0;
  *(v8 + 512) = v12;
  *(v8 + 576) = 13;
  v13 = sub_1AF657F68(&type metadata for Color);
  *(v8 + 592) = xmmword_1AFE9E890;
  *(v8 + 608) = 0;
  *(v8 + 624) = v13;
  *(v8 + 688) = 13;
  v14 = sub_1AF657F68(&type metadata for Orientation);
  v15 = 0;
  *(v8 + 704) = xmmword_1AFE9E8A0;
  *(v8 + 720) = 0;
  *(v8 + 736) = v14;
  *(v8 + 800) = 13;
  if ((a2 & 1) == 0)
  {
    v15 = sub_1AF657F68(&type metadata for AngularVelocity);
  }

  *(v8 + 816) = xmmword_1AFE9E8B0;
  *(v8 + 832) = 0;
  *(v8 + 848) = v15;
  *(v8 + 912) = 13;
  v16 = sub_1AF657F68(&type metadata for ParticleAngle);
  v17 = 0;
  *(v8 + 928) = xmmword_1AFE9E8C0;
  *(v8 + 944) = 0;
  *(v8 + 960) = v16;
  *(v8 + 1024) = 13;
  if ((a2 & 1) == 0)
  {
    v17 = sub_1AF657F68(&type metadata for ParticleAngleVelocity);
  }

  *(v8 + 1040) = xmmword_1AFE9E8D0;
  *(v8 + 1056) = 0;
  *(v8 + 1072) = v17;
  *(v8 + 1136) = 13;
  v18 = sub_1AF657F68(&type metadata for ParticlePivot);
  *(v8 + 1152) = xmmword_1AFE9E8E0;
  *(v8 + 1168) = 0;
  *(v8 + 1184) = v18;
  *(v8 + 1248) = 13;
  v19 = sub_1AF657F68(&type metadata for ParticleTarget);
  v20 = 0;
  *(v8 + 1264) = xmmword_1AFE9E8F0;
  *(v8 + 1280) = 0;
  *(v8 + 1296) = v19;
  *(v8 + 1360) = 13;
  if ((a2 & 1) == 0)
  {
    v20 = sub_1AF657F68(&type metadata for Mass);
  }

  *(v8 + 1376) = xmmword_1AFE9E900;
  *(v8 + 1392) = 0;
  *(v8 + 1408) = v20;
  *(v8 + 1472) = 13;
  v21 = sub_1AF657F68(&type metadata for ParticleRibbonLength);
  *(v8 + 1488) = xmmword_1AFE9E910;
  *(v8 + 1504) = 0;
  *(v8 + 1520) = v21;
  *(v8 + 1584) = 13;
  v22 = sub_1AF657F68(&type metadata for ParticleTextureFrame);
  v23 = 0;
  *(v8 + 1600) = xmmword_1AFE9E920;
  *(v8 + 1616) = 0;
  *(v8 + 1632) = v22;
  *(v8 + 1696) = 13;
  if ((a2 & 1) == 0)
  {
    v23 = sub_1AF657F68(&type metadata for LinearFactor);
  }

  v24 = 0;
  *(v8 + 1712) = xmmword_1AFE9E930;
  *(v8 + 1728) = 0;
  *(v8 + 1744) = v23;
  *(v8 + 1808) = 13;
  if ((a2 & 1) == 0)
  {
    v24 = sub_1AF657F68(&type metadata for AngularFactor);
  }

  *(v8 + 1824) = xmmword_1AFE9E940;
  *(v8 + 1840) = 0;
  *(v8 + 1856) = v24;
  *(v8 + 1920) = 13;
  v25 = sub_1AF657F68(&type metadata for ParticleID);
  *(v8 + 1936) = xmmword_1AFE9E950;
  *(v8 + 1952) = 0;
  *(v8 + 1968) = v25;
  *(v8 + 2032) = 13;
  v26 = sub_1AF657F68(&type metadata for ParticleParentID);
  *(v8 + 2048) = xmmword_1AFE9E960;
  *(v8 + 2064) = 0;
  *(v8 + 2080) = v26;
  *(v8 + 2144) = 13;
  v27 = sub_1AF657F68(&type metadata for UserData1);
  *(v8 + 2160) = xmmword_1AFE9E970;
  *(v8 + 2176) = 0;
  *(v8 + 2192) = v27;
  *(v8 + 2256) = 13;
  v28 = sub_1AF657F68(&type metadata for UserData2);
  *(v8 + 2272) = xmmword_1AFE9E980;
  *(v8 + 2288) = 0;
  *(v8 + 2304) = v28;
  *(v8 + 2368) = 13;
  v29 = sub_1AF657F68(&type metadata for UserData3);
  *(v8 + 2384) = xmmword_1AFE9E990;
  *(v8 + 2400) = 0;
  *(v8 + 2416) = v29;
  *(v8 + 2480) = 13;
  v30 = sub_1AF657F68(&type metadata for UserData4);
  *(v8 + 2496) = xmmword_1AFE9E9A0;
  *(v8 + 2512) = 0;
  *(v8 + 2528) = v30;
  *(v8 + 2592) = 13;
  v31 = sub_1AF657F68(&type metadata for Scale1);
  *(v8 + 2608) = xmmword_1AFE9E9B0;
  *(v8 + 2624) = 0;
  *(v8 + 2640) = v31;
  *(v8 + 2704) = 13;
  v32 = sub_1AF657F68(&type metadata for Scale2);
  *(v8 + 2720) = xmmword_1AFE9E9C0;
  *(v8 + 2736) = 0;
  *(v8 + 2752) = v32;
  *(v8 + 2816) = 13;
  v33 = sub_1AF657F68(&type metadata for Scale3);
  *(v8 + 2832) = xmmword_1AFE9E9D0;
  *(v8 + 2848) = 0;
  *(v8 + 2849) = *v35;
  *(v8 + 2856) = *&v35[7];
  *(v8 + 2864) = v33;
  *(v8 + 2928) = 13;
  *(v8 + 2944) = xmmword_1AFE9E9E0;
  *(v8 + 2960) = 0;
  *(v8 + 2961) = *v36;
  *(v8 + 2968) = *&v36[7];
  *(v8 + 2976) = a4 & 1;
  *(v8 + 3040) = 13;

  return v8;
}

uint64_t sub_1AFB80070()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v38 = qword_1ED73B840;
  v39 = 0;
  v40 = 2;
  v41 = 0;
  v42 = 2;
  v43 = 0;
  sub_1AF7049B8(1, v17);
  v1 = v17[1];
  *(v0 + 16) = v17[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v18;
  sub_1AF702F8C(1, v19);
  sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for EmitterRuntime;
  *(inited + 40) = &off_1F25635C8;
  sub_1AF5D1EC0(inited, v20);
  sub_1AFB91B88(v19, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, sub_1AF5DD590);
  swift_setDeallocating();
  v3 = v20[1];
  *(v0 + 56) = v20[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v21;
  sub_1AF702F8C(1, &v22);
  v4 = v23;
  v5 = v24;
  v6 = v26;
  v7 = v25 | 4;
  *(v0 + 96) = v22;
  *(v0 + 104) = v4;
  *(v0 + 108) = v5;
  *(v0 + 112) = v7;
  *(v0 + 120) = 2;
  *(v0 + 128) = v6;
  sub_1AFCC39D0(1, 2, v27);
  v8 = v27[1];
  *(v0 + 136) = v27[0];
  *(v0 + 152) = v8;
  *(v0 + 168) = v28;
  sub_1AF7049CC(2, &v29);
  v9 = v30;
  v10 = v31;
  v11 = v33;
  v12 = v34;
  v13 = v32 | 1;
  *(v0 + 176) = v29;
  *(v0 + 184) = v9;
  *(v0 + 188) = v10;
  *(v0 + 192) = v13;
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  sub_1AF8290C8(v35);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = &type metadata for EmitterDescription;
  *(v14 + 40) = &off_1F2563548;
  sub_1AF5D1EC0(v14, v36);
  sub_1AFB91B88(v35, &unk_1ED723DB0, &type metadata for EmitterRuntime, &off_1F2563418, sub_1AF5DD590);
  swift_setDeallocating();
  v15 = v36[1];
  *(v0 + 216) = v36[0];
  *(v0 + 232) = v15;
  *(v0 + 248) = v37;
  return v0;
}

uint64_t sub_1AFB8033C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ++*(a3 + 544);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[4];

  v10 = sub_1AF6496EC(v9);

  v296 = v9;
  v11 = sub_1AF6496EC(v9);
  v298 = v7;

  v286 = swift_allocObject();
  *(v286 + 16) = MEMORY[0x1E69E7CC0];
  v323 = (v286 + 16);
  sub_1AF65C88C(16);

  v303 = sub_1AF65CCB0(v11);

  v322 = v8;
  v12 = sub_1AF3CF688(v11);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v302 = v14;
  v15 = *(a2 + 73);
  sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  if (v15 == 1)
  {
    *(v16 + 16) = xmmword_1AFE4C6B0;
    *(v16 + 56) = &type metadata for EmitterReference;
    *(v16 + 64) = &off_1F2563D20;
    *(v16 + 32) = v10;
    *(v16 + 96) = &type metadata for AnonymousEntity;
    *(v16 + 104) = &off_1F2532728;
    *(v16 + 136) = &type metadata for UnstableOrdering;
    *(v16 + 144) = &off_1F2532708;
    *(v16 + 176) = &type metadata for MonoChunk;
    *(v16 + 184) = &off_1F25326E8;
  }

  else
  {
    *(v16 + 16) = xmmword_1AFE4C680;
    *(v16 + 56) = &type metadata for EmitterReference;
    *(v16 + 64) = &off_1F2563D20;
    *(v16 + 32) = v10;
    *(v16 + 96) = &type metadata for AnonymousEntity;
    *(v16 + 104) = &off_1F2532728;
    *(v16 + 136) = &type metadata for UnstableOrdering;
    *(v16 + 144) = &off_1F2532708;
  }

  v300 = v16;
  sub_1AF65D974(&type metadata for Particle, &off_1F252D788);
  sub_1AF65D974(&type metadata for Position, &off_1F252EE70);
  v17 = *(a2 + 61);
  if (v17 == 1)
  {
    sub_1AF65D974(&type metadata for ParticleGPU, &off_1F252D648);
  }

  v18 = *(a2 + 92);
  if (v18 == 1)
  {
    sub_1AF65D974(&type metadata for Velocity, &off_1F2530AF8);
  }

  v294 = v17;
  v283 = v18;
  v319 = v5;
  if (sub_1AF3CAA18(v11))
  {
    v21 = v19;
    v22 = v20;

    v23 = HIDWORD(v21);
    v24 = HIDWORD(v22);
  }

  else
  {
    sub_1AF42C520(MEMORY[0x1E69E7CC0]);

    v23 = 0;
    v24 = 0;
    LODWORD(v21) = -1;
    LODWORD(v22) = -1;
  }

  v26 = *(a2 + 8);
  v25 = *(a2 + 16);
  v284 = v23;
  v285 = v21;
  v28 = v21 == -1 && v23 == 0;

  v291 = v25;

  v287 = v26;
  v282 = v28;
  if (!v28)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1AF4217DC(0, *(v26 + 2) + 1, 1, v26);
    }

    v30 = *(v26 + 2);
    v29 = *(v26 + 3);
    if (v30 >= v29 >> 1)
    {
      v26 = sub_1AF4217DC(v29 > 1, v30 + 1, 1, v26);
    }

    *(v26 + 2) = v30 + 1;
    v31 = &v26[8 * v30];
    *(v31 + 8) = v285;
    *(v31 + 9) = v284;
  }

  v32 = v22 == -1 && v24 == 0;
  v33 = v32;
  v281 = v33;
  v34 = v25;
  if (!v32)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1AF4217DC(0, *(v25 + 16) + 1, 1, v25);
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AF4217DC(v36 > 1, v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    v38 = &v34[8 * v37];
    *(v38 + 8) = v22;
    *(v38 + 9) = v24;
  }

  v278 = v24;
  v279 = v22;
  v325 = HIDWORD(v11);
  v39 = *a2;
  v40 = v34;
  sub_1AFB82FB0(*a2, 1, v322, a4, v11, v286);
  sub_1AFB82FB0(v26, 2, v322, a4, v11, v286);
  sub_1AFB82FB0(v40, 3, v322, a4, v11, v286);
  v288 = *(a2 + 24);
  sub_1AFB82FB0(v288, 4, v322, a4, v11, v286);
  v290 = v39;
  v41 = sub_1AFB83C48(v39, v322);
  *(a3 + 50) = v41 & 1;
  if (v41)
  {
    v42 = *v323;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v323 = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1AF422C28(0, *(v42 + 2) + 1, 1, v42);
      *v323 = v42;
    }

    v44 = *(v42 + 2);
    sub_1AFCEF610(v44);
    v45 = *v323;
    *(v45 + 16) = v44 + 1;
    v46 = v45 + 16 * v44;
    *(v46 + 32) = &type metadata for ParticleParentID;
    *(v46 + 40) = &off_1F252D8C8;
    *v323 = v45;
  }

  sub_1AFB83D64(v39, a3, v322, a4);
  v47 = *(v319 + 32);
  v422[0] = *(v319 + 16);
  v422[1] = v47;
  v423 = *(v319 + 48);
  sub_1AF6B06C0(v322, v422, 0x200000000, &v328);
  v321 = v11;
  v289 = a2;
  if (v328)
  {
    if (v335 >= 1)
    {
      v308 = v332;
      if (v332)
      {
        v48 = 0;
        v306 = v331;
        v49 = v334;
        v316 = *(v334 + 32);
        v320 = 0;
        v50 = *(v333 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v380 = v328;
        v381 = v329;
        v382 = v330;
        v304 = v50;
        while (1)
        {
          v51 = (v306 + 48 * v48);
          v52 = *v51;
          v313 = v51[1];
          v54 = *(v51 + 2);
          v53 = *(v51 + 3);
          v56 = *(v51 + 4);
          v55 = *(v51 + 5);
          if (v50)
          {
            v57 = *(v55 + 376);

            os_unfair_lock_lock(v57);
            os_unfair_lock_lock(*(v55 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v316);
          v58 = *(v49 + 64);
          v420[0] = *(v49 + 48);
          v420[1] = v58;
          v421 = *(v49 + 80);
          v59 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
          *(v49 + 48) = ecs_stack_allocator_allocate(*(v49 + 32), 48 * v59, 8);
          *(v49 + 56) = v59;
          *(v49 + 72) = 0;
          *(v49 + 80) = 0;
          *(v49 + 64) = 0;
          v60 = sub_1AF64B110(&type metadata for ParticleSubSpawn, &off_1F2566840, v54, v53, v56, v49);
          if (v54)
          {
            if (v56)
            {
              v61 = (v60 + 4);
              v11 = v321;
              do
              {
                if (*(v61 - 1) == v321 && *v61 == v325)
                {
                  sub_1AF65D974(&type metadata for ParticleID, &off_1F252DFA8);
                }

                v61 += 6;
                --v56;
              }

              while (v56);
              goto LABEL_62;
            }
          }

          else if (v52 != v313)
          {
            v63 = v313 - v52;
            v64 = (v60 + 24 * v52 + 4);
            v11 = v321;
            do
            {
              if (*(v64 - 1) == v321 && *v64 == v325)
              {
                sub_1AF65D974(&type metadata for ParticleID, &off_1F252DFA8);
              }

              v64 += 6;
              --v63;
            }

            while (v63);
            goto LABEL_62;
          }

          v11 = v321;
LABEL_62:
          sub_1AF630994(v49, &v380, v420);
          sub_1AF62D29C(v55);
          ecs_stack_allocator_pop_snapshot(v316);
          v50 = v304;
          if (v304)
          {
            os_unfair_lock_unlock(*(v55 + 344));
            os_unfair_lock_unlock(*(v55 + 376));
          }

          if (++v48 == v308)
          {
            goto LABEL_73;
          }
        }
      }
    }

    v320 = 0;
LABEL_73:
    sub_1AFB91B88(&v328, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    a2 = v289;
  }

  else
  {
    v320 = 0;
  }

  v66 = sub_1AF65AF08(*v323, v300);

  v68 = sub_1AFB92698(v67, v11, a2, a3, v66);

  if (v68 != 2)
  {

    v69 = sub_1AF6496EC(v296);

    v70 = *(v298 + 28);
    v71 = *(v298 + 32);

    LOBYTE(v412) = v71;
    sub_1AFB7BFB0(v69, v70 | (v71 << 32), a2, a3, v322, 1);

    if (v68)
    {
      v72 = *(v288 + 16);
      if (v72)
      {
        v73 = (v322 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v74 = (v288 + 36);
        v75 = thread_worker_index;
        do
        {
          v76 = *(v74 - 1);
          v77 = *v74;
          if ((v76 != -1 || v77 != 0) && (v76 & 0x80000000) == 0 && v73[1] > v76)
          {
            v79 = (*v73 + 12 * v76);
            if (v77 == -1 || v79[2] == v77)
            {
              v80 = *(*(v322 + 144) + 8 * *v79 + 32);
              (v75)(&thread_worker_index);
              v82 = *(v80 + 192);
              if (v82)
              {
                v83 = *(v80 + 208);
                *(v82 + 8 * (v81 >> 6)) |= 1 << v81;
                *(v83 + 8 * (v81 >> 6)) &= ~(1 << v81);
              }

              sub_1AF705804(v81);
            }
          }

          v74 += 2;
          --v72;
        }

        while (v72);
      }
    }
  }

  v84 = swift_weakAssign();
  v85 = *(v289 + 40);
  *(a3 + 152) = *(v289 + 32);
  *(a3 + 160) = v85;
  v86 = *(v289 + 74);
  v87 = sub_1AFB7FA04(v84, 0, 0, v86);

  *(a3 + 320) = v87;
  v88 = sub_1AFB7FA04(a3, 1, 0, v86);

  *(a3 + 328) = v88;
  *(a3 + 264) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  v89 = *(v288 + 16);
  if (v89)
  {
    v90 = v322;
    v91 = (v322 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v92 = (v288 + 36);
    v317 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v324 = (v322 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v93 = *(v92 - 1);
      v94 = *v92;
      v95 = *(v92 - 1);
      v96 = v93 == -1 && v94 == 0;
      v97 = v96;
      if (!v96)
      {
        v103 = v91[1];
        if ((v93 & 0x80000000) == 0 && v103 > v93)
        {
          v104 = (*v91 + 12 * v93);
          v105 = v104[2];
          if (v94 == -1 || v105 == v94)
          {
            v107 = *v104;
            v87 = *(*&v90[6].Flags + 8 * v107 + 32);
            if ((v87[7].Description & 1) == 0)
            {
              goto LABEL_96;
            }

            v108 = v107 | (*(v104 + 3) << 48) | (*(v104 + 2) << 32);
            swift_retain_n();
            sub_1AF684210(v87, v322, v108, v105, v322, v93 | (v94 << 32), a3);
            v90 = v322;

            v91 = v324;
            v103 = v324[1];
          }
        }

        if ((v93 & 0x80000000) == 0 && v103 > v93)
        {
          v109 = *v91 + 12 * v93;
          if (v94 == -1 || *(v109 + 8) == v94)
          {
            v111 = *(*(*&v90[3].NumRequirements + 8 * *(v109 + 6) + 32) + 16);
            v112 = *(v111 + 128);
            if (*(v112 + 16) && (v87 = &type metadata for Position, v113 = sub_1AF449CB8(&type metadata for Position), (v114 & 1) != 0))
            {
              v115 = *(*(v111 + 24) + 16 * *(*(v112 + 56) + 8 * v113) + 32);
              v90 = v322;
              if (v115 == &type metadata for Position)
              {
                v91 = v324;
                v98 = v324[1];
                if ((v93 & 0x80000000) == 0)
                {
                  goto LABEL_111;
                }

                goto LABEL_148;
              }
            }

            else
            {
              v90 = v322;
            }
          }
        }
      }

      v87 = (v93 | (v94 << 32));
      if (sub_1AF67CACC(&type metadata for Orientation, &off_1F252C828, v87) || sub_1AF67CACC(&type metadata for Scale1, &off_1F252F708, v93 | (v94 << 32)) || sub_1AF67CACC(&type metadata for Scale2, &off_1F252F7B8, v93 | (v94 << 32)) || sub_1AF67CACC(&type metadata for Scale3, &off_1F252F918, v93 | (v94 << 32)))
      {
        v91 = v324;
        if (v97)
        {
          goto LABEL_96;
        }

        v93 = v93;
        v98 = v324[1];
        if ((v93 & 0x80000000) == 0)
        {
LABEL_111:
          if (v98 > v93)
          {
            v99 = (*v91 + 12 * v93);
            if (v94 == -1 || v99[2] == v94)
            {
              v100 = v90;
              v101 = *(v99 + 2);
              v87 = *(*&v100[6].Flags + 8 * *v99 + 32);
              if (v87[14].Description > v101 || v87[15].Kind <= v101)
              {
                v90 = v100;
              }

              else
              {
                v309 = *(&v100->Flags + v317);
                v116 = *v309;
                Description = v87[21].Description;

                os_unfair_lock_lock(Description);
                ecs_stack_allocator_push_snapshot(*(v116 + 32));
                if (sub_1AF657F68(&type metadata for WorldTransform))
                {
                }

                else
                {
                  v118 = *(v116 + 32);

                  v119 = ecs_stack_allocator_allocate(v118, 8, 8);
                  *v119 = v101;
                  sub_1AF648EC4(&type metadata for WorldTransform, &off_1F2529FC0, v119, 1, 1, *v309);
                }

                sub_1AF6877B0(v93 | (v94 << 32), v322, v322, v93 | (v94 << 32));

                ecs_stack_allocator_pop_snapshot(*(v116 + 32));
                os_unfair_lock_unlock(v87[21].Description);

                v91 = v324;
                v98 = v324[1];
                v90 = v322;
              }
            }
          }
        }

LABEL_148:
        if ((v95 & 0x80000000) == 0 && v98 > v93)
        {
          v120 = (*v91 + 12 * v93);
          if (v94 == -1 || v120[2] == v94)
          {
            v121 = v90;
            v122 = *(v120 + 2);
            v87 = *(*&v121[6].Flags + 8 * *v120 + 32);
            if (v87[14].Description > v122 || v87[15].Kind <= v122)
            {
              v90 = v121;
            }

            else
            {
              v310 = *(&v121->Flags + v317);
              v124 = *v310;
              v125 = v87[21].Description;

              os_unfair_lock_lock(v125);
              v314 = v124;
              ecs_stack_allocator_push_snapshot(*(v124 + 32));
              v126 = *(v87[2].Description + 2);
              v127 = *(v126 + 128);
              if (!*(v127 + 16) || (v128 = sub_1AF449CB8(&type metadata for NotInHierarchy), (v129 & 1) == 0) || *(*(v126 + 24) + 16 * *(*(v127 + 56) + 8 * v128) + 32) != &type metadata for NotInHierarchy)
              {
                v130 = *(v314 + 32);

                v131 = ecs_stack_allocator_allocate(v130, 8, 8);
                *v131 = v122;
                v307 = v131;
                v311 = *v310;
                v132 = v87[1].Description;

                *&v414[0] = 0;
                v412 = 0u;
                v413 = 0u;
                memset(v409, 0, 40);
                v305 = sub_1AF65A4B4(v132, &type metadata for NotInHierarchy, &off_1F252A400, 0, 0, &v412, v409);

                sub_1AFB93108(v409, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
                sub_1AFB93108(&v412, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
                sub_1AF64A824(v307, 1, 1, v305, v311);
              }

              ecs_stack_allocator_pop_snapshot(*(v314 + 32));
              os_unfair_lock_unlock(v87[21].Description);

LABEL_163:
              v90 = v322;
              v91 = v324;
            }
          }
        }

        if (v95 < 0)
        {
          goto LABEL_96;
        }

        if (v91[1] <= v93)
        {
          goto LABEL_96;
        }

        v133 = (*v91 + 12 * v93);
        if (v94 != -1 && v133[2] != v94)
        {
          goto LABEL_96;
        }

        v134 = *(v133 + 2);
        v87 = *(*&v90[6].Flags + 8 * *v133 + 32);
        if (v87[14].Description > v134 || v87[15].Kind <= v134)
        {
          goto LABEL_96;
        }

        v136 = **(&v90->Flags + v317);
        v137 = v87[21].Description;

        os_unfair_lock_lock(v137);
        ecs_stack_allocator_push_snapshot(*(v136 + 32));
        v138 = *(v136 + 112);
        *(v136 + 112) = 1;
        v139 = *(v87[2].Description + 2);
        v140 = *(v139 + 128);
        if (*(v140 + 16) && (v141 = sub_1AF449CB8(&type metadata for Parent), (v142 & 1) != 0) && *(*(v139 + 24) + 16 * *(*(v140 + 56) + 8 * v141) + 32) == &type metadata for Parent)
        {
          *&v412 = &type metadata for Parent;
          *(&v412 + 1) = &off_1F2529C98;
          BYTE8(v414[0]) = 1;
          MEMORY[0x1EEE9AC00](v141, v142);

          sub_1AF63023C(0, v87, sub_1AF6897B4);
          sub_1AF635250(&v412);
        }

        else
        {
        }

        sub_1AF62D29C(v87);

        *(v136 + 112) = v138;
        ecs_stack_allocator_pop_snapshot(*(v136 + 32));
        os_unfair_lock_unlock(v87[21].Description);

        goto LABEL_95;
      }

      sub_1AF65CD48(v93 | (v94 << 32), v90, &type metadata for WorldTransform, &off_1F2529FC0, 0);
      sub_1AF65CD48(v93 | (v94 << 32), v90, &type metadata for NotInHierarchy, &off_1F252A400, 0);
      if ((v97 & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_95:
      v90 = v322;
      v91 = v324;
LABEL_96:
      v92 += 2;
      if (!--v89)
      {
        goto LABEL_177;
      }
    }
  }

  v90 = v322;
LABEL_177:
  v312 = v303 & 0x100000000;
  v143 = *(&v90->Flags + OBJC_IVAR____TtC3VFX13EntityManager_scheduler);

  v144 = v321;
  sub_1AF6D763C(v321);
  v145 = v302;
  v301 = v143;
  if ((v294 & 1) == 0)
  {
    if (sub_1AF657F68(&type metadata for ParticleLifetime) || sub_1AF657F68(&type metadata for ParticleAge))
    {
      v146 = swift_conformsToProtocol2();
      if (!v146)
      {
        goto LABEL_285;
      }

      v147 = v146;
      v389[0] = v312 != 0;
      LOBYTE(v412) = v312 != 0;
      sub_1AFB93CB8(v321, v303 | ((v312 != 0) << 32), &v336);
      *(v409 + 2) = v336;
      *(&v409[1] + 2) = v337;
      *(&v409[2] + 2) = v338;
      v148 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
      if (v149)
      {
        v150 = v337;
        v151 = v338;
        v152 = BYTE8(v337);
        v153 = DWORD2(v336);
        v154 = BYTE12(v336);
      }

      else
      {
        v156 = v148;
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_1AFE431C0;
        *(v157 + 56) = &type metadata for ParticleClassSpawnID;
        *(v157 + 64) = &off_1F254ECF8;
        *(v157 + 32) = v156;
        v158 = v157 + 32;
        sub_1AF5FC13C(v157, &v339);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
        swift_deallocClassInstance();
        v150 = v342;
        v155 = v339;
        v153 = v340;
        v154 = v341;
        v152 = v343;
        v151 = v344;
      }

      *(&v412 + 1) = 0xFFFFFFFFLL;
      *(v414 + 14) = v409[0];
      *&v412 = v322;
      *&v413 = &type metadata for ParticleLifeAndDeath;
      *(&v413 + 1) = v147;
      *&v414[0] = __PAIR64__(v325, v321);
      DWORD2(v414[0]) = v303;
      BYTE12(v414[0]) = v389[0];
      BYTE13(v414[0]) = 1;
      *(&v414[1] + 14) = v409[1];
      *(&v414[2] + 8) = *(&v409[1] + 10);
      *(&v414[3] + 1) = v155;
      LODWORD(v415) = v153;
      BYTE4(v415) = v154;
      *(&v415 + 1) = v150 | 8;
      LOBYTE(v416) = v152;
      v90 = v322;
      *(&v416 + 1) = v151;
      type metadata accessor for ParticleLifeAndDeath.System();
      v87 = swift_allocObject();
      v417 = v414[1];
      v418 = v414[2];
      v419 = *&v414[3];
      sub_1AF68A8E0(&v412, v409);
      sub_1AF5C9348(v383);
      sub_1AF688940(&v412);
      v159 = v383[1];
      v87[1] = v383[0];
      v87[2] = v159;
      v87[3].Kind = v384;
      v160 = swift_allocObject();
      v161 = v414[3];
      *(v160 + 88) = v414[2];
      *(v160 + 104) = v161;
      v162 = v416;
      *(v160 + 120) = v415;
      *(v160 + 136) = v162;
      v163 = v413;
      *(v160 + 24) = v412;
      *(v160 + 40) = v163;
      v164 = v414[1];
      *(v160 + 56) = v414[0];
      *(v160 + 16) = v87;
      *(v160 + 72) = v164;
      sub_1AF68A8E0(&v412, v409);
      v165 = swift_retain_n();
      v143 = v301;
      sub_1AFB8C384(v165, sub_1AFB92F34, v160, 200, v302, 1, v321, v301);

      sub_1AF688940(&v412);
    }

    if (sub_1AF657F68(&type metadata for ParticleRibbonLength))
    {
      v166 = swift_conformsToProtocol2();
      if (!v166)
      {
        goto LABEL_286;
      }

      v167 = v166;
      LOBYTE(v386[0]) = v312 != 0;
      LOBYTE(v409[0]) = v312 != 0;
      sub_1AFB93CB8(v321, v303 | ((v312 != 0) << 32), &v345);
      *&v389[2] = v345;
      *&v389[18] = v346;
      *&v389[34] = v347;
      v168 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
      if (v169)
      {
        v170 = v346;
        v171 = v347;
        v172 = BYTE8(v346);
        v173 = DWORD2(v345);
        v174 = BYTE12(v345);
      }

      else
      {
        v176 = v168;
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v177 = swift_allocObject();
        *(v177 + 16) = xmmword_1AFE431C0;
        *(v177 + 56) = &type metadata for ParticleClassSpawnID;
        *(v177 + 64) = &off_1F254ECF8;
        *(v177 + 32) = v176;
        v178 = v177 + 32;
        sub_1AF5FC13C(v177, &v348);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v178);
        swift_deallocClassInstance();
        v170 = v351;
        v175 = v348;
        v173 = v349;
        v174 = v350;
        v172 = v352;
        v171 = v353;
      }

      *(&v409[0] + 1) = 0xFFFFFFFFLL;
      *(&v409[2] + 14) = *v389;
      *&v409[0] = v322;
      *&v409[1] = &type metadata for ParticleRibbonLengthUpdate;
      *(&v409[1] + 1) = v167;
      *&v409[2] = __PAIR64__(v325, v321);
      DWORD2(v409[2]) = v303;
      BYTE12(v409[2]) = v386[0];
      BYTE13(v409[2]) = 3;
      *(&v409[3] + 14) = *&v389[16];
      *(&v409[4] + 8) = *&v389[26];
      *(&v409[5] + 1) = v175;
      LODWORD(v410) = v173;
      BYTE4(v410) = v174;
      *(&v410 + 1) = v170 & 0xFFFFFFFFFFFFFFF7;
      LOBYTE(v411) = v172;
      v90 = v322;
      *(&v411 + 1) = v171;
      type metadata accessor for ParticleRibbonLengthUpdate.System();
      v179 = swift_allocObject();
      v180 = swift_allocObject();
      v181 = v409[5];
      *(v180 + 88) = v409[4];
      *(v180 + 104) = v181;
      v182 = v411;
      *(v180 + 120) = v410;
      *(v180 + 136) = v182;
      v183 = v409[1];
      *(v180 + 24) = v409[0];
      *(v180 + 40) = v183;
      v184 = v409[3];
      *(v180 + 56) = v409[2];
      *(v180 + 16) = v179;
      *(v180 + 72) = v184;

      sub_1AF68A8E0(v409, v389);

      v143 = v301;
      sub_1AFB92BC0(v185, sub_1AFB92EC8, v180, v302, 1, v321, v301);

      sub_1AF688940(v409);
    }
  }

  *v389 = v290;

  sub_1AFB8F78C(v389, v90);
  v186 = v322;

  v187 = *(*v389 + 16);
  if (!v187)
  {

    if ((v294 & 1) == 0)
    {
      goto LABEL_243;
    }

LABEL_227:
    LOBYTE(v327[0]) = v312 != 0;

    LOBYTE(v386[0]) = v312 != 0;
    sub_1AFB93CB8(v144, v303 | ((v312 != 0) << 32), &v365);
    *(v374 + 2) = v365;
    *(&v374[1] + 2) = v366;
    *(&v374[2] + 2) = v367;
    v225 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
    v226 = v186;
    if (v227)
    {
      v228 = v366;
      v229 = v367;
      v230 = BYTE8(v366);
      v231 = DWORD2(v365);
      v232 = BYTE12(v365);
      v233 = v365;
    }

    else
    {
      v234 = v225;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_1AFE431C0;
      *(v235 + 56) = &type metadata for ParticleClassSpawnID;
      *(v235 + 64) = &off_1F254ECF8;
      *(v235 + 32) = v234;
      v236 = v235 + 32;
      sub_1AF5FC13C(v235, &v368);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v236);
      swift_deallocClassInstance();

      v228 = v371;
      v233 = v368;
      v231 = v369;
      v232 = v370;
      v230 = v372;
      v229 = v373;
    }

    *(&v386[0] + 1) = 0xFFFFFFFFLL;
    *(&v386[2] + 14) = v374[0];
    *&v386[0] = v226;
    *&v386[1] = &type metadata for EmitterRuntime;
    *(&v386[1] + 1) = &off_1F2563418;
    *&v386[2] = __PAIR64__(v325, v321);
    DWORD2(v386[2]) = v303;
    BYTE12(v386[2]) = v327[0];
    BYTE13(v386[2]) = 2;
    *(&v386[3] + 14) = v374[1];
    *(&v386[4] + 8) = *(&v374[1] + 10);
    *(&v386[5] + 1) = v233;
    LODWORD(v387) = v231;
    BYTE4(v387) = v232;
    *(&v387 + 1) = v228 | 8;
    LOBYTE(v388) = v230;
    *(&v388 + 1) = v229;
    type metadata accessor for ParticlePrepareGPUSystem();
    v237 = swift_allocObject();
    v238 = v386[5];
    v237[5] = v386[4];
    v237[6] = v238;
    v239 = v388;
    v237[7] = v387;
    v237[8] = v239;
    v240 = v386[1];
    v237[1] = v386[0];
    v237[2] = v240;
    v241 = v386[3];
    v237[3] = v386[2];
    v237[4] = v241;
    v242 = swift_allocObject();

    sub_1AF68A8E0(v386, v374);

    v243 = swift_allocObject();
    v243[2] = sub_1AFB93B40;
    v243[3] = v237;
    v243[4] = v242;
    v243[5] = &off_1F2566348;
    v244 = *(v301 + 24);

    if (v325 || v321 != -1)
    {

      v245 = sub_1AF3C9078(v321);
      v247 = v246;
      swift_retain_n();

      if (v247)
      {
        v248 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
        if (!v248)
        {

          LODWORD(v247) = 0;
          goto LABEL_240;
        }

        *&v374[0] = v245;
        *(&v374[0] + 1) = v247;
        MEMORY[0x1B2718AE0](47, 0xE100000000000000);
        v249 = sub_1AFDFE238();
        MEMORY[0x1B2718AE0](v249);

        LODWORD(v247) = vfx_counters.addCounter(name:scope:kind:)(*&v374[0], *(&v374[0] + 1), 0, 0, v248);

        goto LABEL_238;
      }
    }

    else
    {
      swift_retain_n();
    }

    v247 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v247)
    {
      v250 = sub_1AFDFE238();
      LODWORD(v247) = vfx_counters.addCounter(name:scope:kind:)(v250, v251, 0, 0, v247);

LABEL_240:
      *&v374[0] = v242;
      *(&v374[0] + 1) = __PAIR64__(v325, v321);
      *&v374[1] = "ParticlePrepareGPUSystem";
      *(&v374[1] + 1) = 24;
      LOBYTE(v374[2]) = 2;
      *(&v374[2] + 1) = *v326;
      DWORD1(v374[2]) = *&v326[3];
      *(&v374[2] + 1) = v242;
      *&v375 = &off_1F2566348;
      v145 = v302;
      *(&v375 + 1) = 298;
      *&v376 = v302;
      WORD4(v376) = 257;
      BYTE10(v376) = 1;
      HIDWORD(v376) = v247;
      *&v377 = sub_1AFB92EBC;
      *(&v377 + 1) = v243;
      os_unfair_lock_lock(*(v301 + 56));
      v385[2] = v374[2];
      v385[3] = v375;
      v385[4] = v376;
      v385[5] = v377;
      v143 = v301;
      v385[0] = v374[0];
      v385[1] = v374[1];
      sub_1AF6D8FC4(v374, v327);
      sub_1AF64D800(0, 0, v385);
      sub_1AF64D800(0, 0, v385);
      sub_1AF6D8FFC(v374);
      *(v301 + 160) = 257;
      os_unfair_lock_unlock(*(v301 + 56));
      sub_1AF6D8FFC(v374);

      sub_1AF688940(v386);
      v186 = v322;
      v252 = sub_1AFB8505C(&type metadata for PointCacheSpawner, &off_1F2568D70, v290, v322);
      if ((v253 & 1) == 0)
      {
        LOBYTE(v327[0]) = v312 != 0;
        sub_1AFB844E8(&type metadata for PointCacheSpawner, &off_1F2568180, v252, 2u, 0, v322, v321, v303 | ((v312 != 0) << 32), v301, v302);
      }

      v144 = v321;
      goto LABEL_243;
    }

LABEL_238:

    goto LABEL_240;
  }

  v188 = 0;
  v189 = (v322 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v190 = *v389 + 32;
  if (v312)
  {
    v191 = 0;
  }

  else
  {
    v191 = v303;
  }

  v295 = v191;
  v276 = (v322 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v277 = *(*v389 + 16);
  v275 = *v389 + 32;
  do
  {
    v192 = *(v190 + 8 * v188);
    v193 = HIDWORD(*(v190 + 8 * v188));
    v194 = v192 == -1 && v193 == 0;
    if (!v194 && (v192 & 0x80000000) == 0 && v189[1] > v192)
    {
      v195 = (*v189 + 12 * v192);
      if (v193 == -1 || v195[2] == v193) && (*(*(*(v322 + 144) + 8 * *v195 + 32) + 120))
      {
        v197 = *(*(*(*(v322 + 88) + 8 * *(v195 + 3) + 32) + 16) + 32);
        v87 = *(v197 + 16);
        if (v87)
        {
          v299 = *(v190 + 8 * v188);
          v280 = v188;
          v90 = &protocol descriptor for ParticleComponentSystemProcessable;

          v198 = 32;
          v297 = v197;
          while (1)
          {
            v207 = *(v197 + v198);
            v208 = swift_conformsToProtocol2();
            if (v208)
            {
              v209 = v207 == 0;
            }

            else
            {
              v209 = 1;
            }

            if (!v209)
            {
              v210 = v208;
              v211 = swift_conformsToProtocol2();
              if (!v211)
              {
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);

                __break(1u);

                os_unfair_lock_unlock(v87[21].Description);
                __break(1u);

                __break(1u);

                __break(1u);
                return result;
              }

              v315 = v211;
              v318 = v210;
              v320 = v87;
              LOBYTE(v374[0]) = v312 != 0;
              if (qword_1ED72D720 != -1)
              {
                swift_once();
              }

              v403 = qword_1ED73B840;
              v404 = 0;
              v405 = 2;
              v406 = 0;
              v407 = 2;
              v408 = 0;
              sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
              v212 = swift_allocObject();
              *(v212 + 16) = xmmword_1AFE431C0;
              *(v212 + 32) = &type metadata for Particle;
              *(v212 + 40) = &off_1F252D7A8;
              sub_1AF5F58E4(v212, 1, v354);
              swift_setDeallocating();
              swift_deallocClassInstance();
              sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
              v213 = swift_allocObject();
              *(v213 + 16) = xmmword_1AFE431C0;
              *(v213 + 56) = &type metadata for EmitterReference;
              *(v213 + 64) = &off_1F2563D20;
              *(v213 + 32) = v321;
              v214 = v213 + 32;
              *(v213 + 36) = v325;
              sub_1AF5FC13C(v213, &v355);
              sub_1AF692DB0(v354);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v214);
              swift_deallocClassInstance();
              v215 = v355;
              v216 = v356;
              v217 = v357;
              *&v400 = v355;
              DWORD2(v400) = v191;
              BYTE12(v400) = v312 >> 31;
              *&v401 = v356;
              BYTE8(v401) = v357;
              *(v386 + 2) = v400;
              v218 = v191;
              v219 = v358;
              v402 = v358;
              *(&v386[2] + 2) = v358;
              *(&v386[1] + 2) = v401;
              v220 = sub_1AF3CD0F8(v299);
              if (v221)
              {

                v199 = v312 >> 31;
              }

              else
              {
                v222 = v220;
                v223 = swift_allocObject();
                *(v223 + 16) = xmmword_1AFE431C0;
                *(v223 + 56) = &type metadata for ParticleClassSpawnID;
                *(v223 + 64) = &off_1F254ECF8;
                *(v223 + 32) = v222;
                v224 = v223 + 32;
                sub_1AF5FC13C(v223, &v359);
                swift_setDeallocating();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v224);
                swift_deallocClassInstance();
                v216 = v362;
                v215 = v359;
                v218 = v360;
                v199 = v361;
                v217 = v363;
                v219 = v364;
              }

              *v389 = v322;
              *&v389[8] = v299;
              *&v389[16] = v207;
              *&v389[24] = v315;
              *&v389[32] = v321;
              *&v389[36] = v325;
              *&v389[40] = v303;
              v390 = v374[0];
              v391 = 1;
              v392 = v386[0];
              *v393 = v386[1];
              *&v393[10] = *(&v386[1] + 10);
              v394 = v215;
              v395 = v218;
              v396 = v199;
              v397 = v216 | 8;
              v398 = v217;
              v399 = v219;
              v200 = (*(v318 + 8))(v207);
              v202 = v201;
              v203 = *(v201 + 16);
              sub_1AF68A8E0(v389, v386);
              v204 = v203(v389, v200, v202);
              v205 = sub_1AFB95274(v389, v200, v202);
              v143 = v301;
              sub_1AF6DA834(v204, v205, v206, 200, v302, 1, v321, v301, v200, *(v202 + 8));
              swift_unknownObjectRelease();

              sub_1AF688940(v389);
              v191 = v295;
              v90 = &protocol descriptor for ParticleComponentSystemProcessable;
              v197 = v297;
              v87 = v320;
            }

            v198 += 16;
            v87 = (v87 - 1);
            if (!v87)
            {

              v144 = v321;
              v145 = v302;
              v189 = v276;
              v187 = v277;
              v188 = v280;
              v190 = v275;
              break;
            }
          }
        }
      }
    }

    ++v188;
  }

  while (v188 != v187);

  v186 = v322;
  if (v294)
  {
    goto LABEL_227;
  }

LABEL_243:
  if (sub_1AF657F68(&type metadata for ParticleID))
  {
    if (sub_1AFB8C918(v287, v186))
    {
      v186 = v322;
    }

    else
    {
      LOBYTE(v374[0]) = v312 != 0;
      v186 = v322;
      if (v294)
      {
        sub_1AFB844E8(&type metadata for ParticleSetID, &off_1F254E750, 0xFFFFFFFFuLL, 2u, 0, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      }

      else
      {
        sub_1AFB84154(&type metadata for ParticleSetID, &off_1F254E950, 0xFFFFFFFFuLL, 2u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      }
    }
  }

  *&v374[0] = v287;

  sub_1AFB8F78C(v374, v186);

  v254 = *&v374[0];
  LOBYTE(v374[0]) = v312 != 0;
  sub_1AFB8516C(v254, 2u, v294, v186, a4, v144, v303 | ((v312 != 0) << 32), v143, v145);

  if (sub_1AF67CACC(&type metadata for NeighborGrid, &off_1F2563D40, v144))
  {
    if (v294)
    {
      LOBYTE(v374[0]) = v312 != 0;
      v255 = v322;
      sub_1AFB844E8(&type metadata for ParticleGenerateGrid, &off_1F2555E50, 0xFFFFFFFFuLL, 2u, 1, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      if (v282)
      {
        goto LABEL_260;
      }

      goto LABEL_259;
    }

    LOBYTE(v374[0]) = v312 != 0;
    v255 = v322;
    sub_1AFB84154(&type metadata for ParticleGenerateGrid, &off_1F2556018, 0xFFFFFFFFuLL, 2u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
    if (v282)
    {
      goto LABEL_262;
    }

LABEL_261:
    inited = type metadata accessor for ParticleInitScript(0);
    LOBYTE(v374[0]) = v312 != 0;
    sub_1AFB84154(inited, &off_1F255B998, v285 | (v284 << 32), 2u, v255, v144, v303 | ((v312 != 0) << 32), v143, v145);
    goto LABEL_262;
  }

  if (!v282)
  {
    v255 = v322;
    if (v294)
    {
LABEL_259:
      v256 = type metadata accessor for ParticleInitScript(0);
      LOBYTE(v374[0]) = v312 != 0;
      sub_1AFB844E8(v256, &off_1F255BC00, v285 | (v284 << 32), 2u, 0, v255, v144, v303 | ((v312 != 0) << 32), v143, v145);
      goto LABEL_260;
    }

    goto LABEL_261;
  }

  v255 = v322;
  if (v294)
  {
LABEL_260:

    LOBYTE(v374[0]) = v312 != 0;
    sub_1AFB97C5C(v257, 0xFFFFFFFFuLL, &type metadata for EmitterRuntime, &off_1F2563418, v144, v303 | ((v312 != 0) << 32), 2u, v374);

    v258 = type metadata accessor for ParticlePostInitGPUSystem();
    v259 = swift_allocObject();
    v260 = v377;
    v259[5] = v376;
    v259[6] = v260;
    v261 = v379;
    v259[7] = v378;
    v259[8] = v261;
    v262 = v374[1];
    v259[1] = v374[0];
    v259[2] = v262;
    v263 = v375;
    v259[3] = v374[2];
    v259[4] = v263;
    sub_1AF68A8E0(v374, v327);
    sub_1AF6D7C1C(v258, &off_1F25662F0, 300, v145, 1, v144, sub_1AFB92E74, v259);

    sub_1AF688940(v374);
  }

LABEL_262:
  v327[0] = v291;

  sub_1AFB8F78C(v327, v255);

  v265 = v327[0];
  LOBYTE(v327[0]) = v312 != 0;
  sub_1AFB8516C(v265, 3u, v294, v255, a4, v144, v303 | ((v312 != 0) << 32), v143, v145);

  if (v281)
  {
    v266 = a3;
    if (v283)
    {
      if (!v294)
      {
        goto LABEL_270;
      }

      goto LABEL_268;
    }

LABEL_274:
    if (!(v294 & 1 | ((*(v289 + 58) & 1) == 0)))
    {
      LOBYTE(v327[0]) = v312 != 0;
      sub_1AFB84154(&type metadata for ParticleUpdateAABB, &off_1F2558690, 0xFFFFFFFFuLL, 3u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
    }

    goto LABEL_276;
  }

  updated = type metadata accessor for ParticleUpdateScript(0);
  v268 = v279 | (v278 << 32);
  v266 = a3;
  if ((v294 & 1) == 0)
  {
    LOBYTE(v327[0]) = v312 != 0;
    sub_1AFB84154(updated, &off_1F255BAA8, v268, 3u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
    if (v283)
    {
LABEL_270:
      LOBYTE(v327[0]) = v312 != 0;
      sub_1AFB84154(&type metadata for ParticleIntegrate, &off_1F2556208, 0xFFFFFFFFuLL, 3u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      if (sub_1AF657F68(&type metadata for AngularVelocity))
      {
        LOBYTE(v327[0]) = v312 != 0;
        sub_1AFB84154(&type metadata for ParticleIntegrateOrientation, &off_1F25564A8, 0xFFFFFFFFuLL, 3u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      }

      if (sub_1AF657F68(&type metadata for ParticleAngleVelocity))
      {
        LOBYTE(v327[0]) = v312 != 0;
        sub_1AFB84154(&type metadata for ParticleIntegrateAngle, &off_1F2556358, 0xFFFFFFFFuLL, 3u, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
      }

      goto LABEL_274;
    }

    goto LABEL_274;
  }

  LOBYTE(v327[0]) = v312 != 0;
  sub_1AFB844E8(updated, &off_1F255BAF0, v268, 3u, 0, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
  if (v283)
  {
LABEL_268:
    LOBYTE(v327[0]) = v312 != 0;
    sub_1AFB844E8(&type metadata for ParticleIntegrate, &off_1F2556028, 0xFFFFFFFFuLL, 3u, 0, v322, v144, v303 | ((v312 != 0) << 32), v143, v145);
  }

LABEL_276:
  v327[0] = v288;

  sub_1AFB8F78C(v327, v322);

  v269 = v327[0];
  LOBYTE(v327[0]) = v312 != 0;
  sub_1AFB8516C(v269, 4u, 0, v322, a4, v144, v303 | ((v312 != 0) << 32), v143, v145);

  v270 = v294;
  if (!a4)
  {
    v270 = 0;
  }

  if (v270)
  {

    v271 = *(v322 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v272 = *(v322 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v273 = v272;
    sub_1AFBB8180(a4, v271, v272);

    if (*(*(v266 + 624) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v327[0] = *(v266 + 624);
      sub_1AFB92AF4();
      sub_1AFDFE4B8();

      *(v266 + 624) = v327[0];
      return result;
    }
  }

  else
  {
  }
}

void sub_1AFB82FB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v122 = a6;
  v107 = a5;
  v125 = a2;
  sub_1AF0D4E74();
  v114 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v112, v12);
  v111 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    return;
  }

  v16 = 0;
  v105 = 0;
  v106 = HIDWORD(v107);
  v17 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v18 = a1 + 32;
  v110 = 0x80000001AFF49E90;
  v109 = (v13 + 32);
  v108 = xmmword_1AFE431C0;
  v124 = a4;
  v123 = a3;
  v121 = v15;
  v119 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v120 = a1 + 32;
  while (1)
  {
    v19 = (v18 + 8 * v16);
    v20 = v19[1];
    v21 = *v19;
    if (v21 == -1 && v20 == 0)
    {
      goto LABEL_5;
    }

    v23 = v21;
    if ((v21 & 0x80000000) == 0 && v17[1] > v21)
    {
      v24 = (*v17 + 12 * v21);
      if (v20 == -1 || v24[2] == v20)
      {
        v26 = v20;
        v27 = *(v24 + 2);
        v28 = *(*(a3 + 144) + 8 * *v24 + 32);
        v29 = *(v28[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);

        if (v29 == 4)
        {
          v31 = *(v30 + 233);
          v32 = *(v30 + 224);

          v33 = v32 > 1;
          if ((v31 & 1) == 0)
          {
            v33 = v32 > 0;
          }
        }

        else
        {

          v33 = 1;
        }

        v34 = v28[24];
        v20 = v26;
        v23 = v21;
        v15 = v121;
        v18 = v120;
        if (v34 && (*(v34 + 8 * (v27 >> 6)) & (1 << v27)) != 0 && v33)
        {
          *(v28[26] + 8 * (v27 >> 6)) |= 1 << v27;
        }
      }
    }

    if ((v23 & 0x80000000) == 0)
    {
      v35 = v17[1];
      if (v35 > v21)
      {
        break;
      }
    }

LABEL_61:
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    if (v17[1] <= v21)
    {
      goto LABEL_88;
    }

LABEL_63:
    v60 = (*v17 + 12 * v21);
    if (v20 == -1 || v60[2] == v20)
    {
      v62 = *(*(*(a3 + 144) + 8 * *v60 + 32) + 120);
    }

    else
    {
      v62 = 1;
    }

    v63 = (*v17 + 12 * v21);
    if (v20 == -1 || v63[2] == v20)
    {
      v65 = *(v63 + 2);
      v66 = *(*(a3 + 144) + 8 * *v63 + 32);
      v67 = *(v66 + 48);
      v68 = (v67 + 32);
      v69 = *(v67 + 16) + 1;
      while (--v69)
      {
        v70 = v68 + 5;
        v71 = *v68;
        v68 += 5;
        if (v71 == &type metadata for SetActive)
        {
          v72 = *(&(*(v70 - 2))->Kind + *(v66 + 128) + v65);
          if (v62 != v72)
          {
            v116 = v72;
            LODWORD(v117) = v62;
            *&v126 = v20;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v134 = 0;
            v135 = 0xE000000000000000;
            sub_1AFDFE218();

            v134 = 0xD000000000000021;
            v135 = v110;
            v73 = sub_1AF65B3FC(v23 | (v126 << 32));
            MEMORY[0x1B2718AE0](v73);

            v75 = v134;
            v74 = v135;
            v76 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v118 = v23;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AFB9246C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v77 = swift_allocObject();
            *(v77 + 16) = v108;
            *(v77 + 56) = MEMORY[0x1E69E6158];
            *(v77 + 64) = sub_1AF0D544C();
            *(v77 + 32) = v75;
            *(v77 + 40) = v74;

            v115 = v75;
            v78 = v76;
            sub_1AFDFC4C8();

            v79 = v111;
            sub_1AFDFC288();
            v80 = v114[12];
            v81 = v114[16];
            v82 = v113;
            v83 = &v113[v114[20]];
            (*v109)(v113, v79, v112);
            *(v82 + v80) = v78;
            *(v82 + v81) = 0;
            *v83 = v115;
            *(v83 + 1) = v74;

            sub_1AFDFC608();

            sub_1AFB930A8(v82, sub_1AF0D4E74);

            a3 = v123;
            v15 = v121;
            v17 = v119;
            v18 = v120;
            v20 = v126;
            v23 = v118;
            v62 = v117;
            v72 = v116;
          }

          goto LABEL_87;
        }
      }
    }

    v72 = v62;
LABEL_87:
    if ((v62 | v72))
    {
LABEL_88:
      if ((v23 & 0x80000000) == 0 && v17[1] > v21)
      {
        v84 = (*v17 + 12 * v21);
        v85 = *(v84 + 2);
        if (v20 == -1 || v84[2] == v20)
        {
          v86 = *(*(*(*(a3 + 88) + 8 * *(v84 + 3) + 32) + 16) + 32);
          if (*(v86 + 16))
          {
            v87 = *(*(a3 + 144) + 8 * *v84 + 32);
            v54 = v86 + 32;
            v88 = v23 | (v20 << 32);
            v117 = *(*(a3 + 88) + 8 * *(v84 + 3) + 32);

            v89 = 0;
            do
            {
              v90 = *(v54 + 16 * v89++);
              v91 = *(v87 + 48);
              v93 = *(v91 + 16);
              v92 = v91 + 16;
              v94 = v90;
              v95 = v93 + 1;
              do
              {
                if (!--v95)
                {
                  sub_1AFDFE518();
                  __break(1u);
                  goto LABEL_106;
                }

                v96 = (v92 + 40);
                v97 = *(v92 + 16);
                v92 += 40;
              }

              while (v97 != v90);
              v98 = *(v96 - 1);
              if (v98 <= 1)
              {
                v98 = 1;
              }

              v99 = *(v87 + 128) + *v96 + v98 * v85;
              v136 = v90;
              v126 = v90;
              v100 = sub_1AF585714(&v134);
              sub_1AF641154(v99, v94, v100);
              sub_1AF441194(&v134, v130);
              sub_1AF5C5358(0, &qword_1ED72FFF0);
              sub_1AF5C5358(0, &unk_1ED724110);
              if (swift_dynamicCast())
              {
                sub_1AF0FBA54(v127, &v131);
                v101 = v132;
                v102 = v133;
                sub_1AF441150(&v131, v132);
                v103 = (*(v102 + 8))(v88, v123, v101, v102);
                sub_1AFB7C604(v103);

                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v131);
              }

              else
              {
                v128 = 0;
                memset(v127, 0, sizeof(v127));
                sub_1AFB93108(v127, &qword_1ED724108, &unk_1ED724110, &protocol descriptor for ParticleComponentRequirement);
              }

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v134);
            }

            while (v89 != *(v86 + 16));
LABEL_3:

LABEL_4:
            a3 = v123;
            v15 = v121;
            v17 = v119;
            v18 = v120;
          }

          else
          {
            v15 = v121;
            v17 = v119;
            v18 = v120;
          }
        }
      }
    }

LABEL_5:
    if (++v16 == v15)
    {
      return;
    }
  }

  v36 = *v17 + 12 * v21;
  if (v20 != -1 && *(v36 + 8) != v20)
  {
LABEL_51:
    if (v35 <= v21)
    {
      goto LABEL_88;
    }

    goto LABEL_63;
  }

  v38 = *(*(a3 + 88) + 8 * *(v36 + 6) + 32);
  v39 = *(*(v38 + 16) + 32);
  v40 = *(v39 + 16);
  if (!v40)
  {
    v15 = v121;
    v17 = v119;
    v18 = v120;
    goto LABEL_51;
  }

  v118 = v23;
  *&v126 = v20;
  v117 = v38;

  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = v39 + 40;
  v115 = v39 + 40;
  while (2)
  {
    v116 = v42;
    v45 = v44 + 16 * v41++;
LABEL_36:
    v46 = *(v45 - 8);
    v47 = *(*v45 + 8);
    v48 = (*(v47 + 48))(v46, v47);
    if ((v43 & 1) == 0)
    {
      if (v125 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v125 == 4)
    {
      v48 = 1;
LABEL_40:
      if (v124)
      {
        v43 = v48;

        v50 = sub_1AF70B788(v49, v46, v47);

        if (!v50)
        {
          v42 = 1;
          v44 = v115;
          if (v40 != v41)
          {
            continue;
          }

          goto LABEL_3;
        }

        v48 = v43;
      }

LABEL_34:
      if (v40 == v41)
      {
        v51 = v48;

        if (v116)
        {
          goto LABEL_4;
        }

        a3 = v123;
        v15 = v121;
        v17 = v119;
        v18 = v120;
        if ((v51 & 1) == 0)
        {
          v20 = v126;
          v23 = v118;
          goto LABEL_61;
        }

        goto LABEL_54;
      }

LABEL_35:
      ++v41;
      v45 += 16;
      v43 = v48;
      goto LABEL_36;
    }

    break;
  }

  if (v40 != v41)
  {
    v48 = 1;
    goto LABEL_35;
  }

  a3 = v123;
  v15 = v121;
  v17 = v119;
  v18 = v120;
  if (v116)
  {
    goto LABEL_5;
  }

LABEL_54:
  v23 = v118;
  v20 = v126;
  if (v118 == v107 && v126 == v106)
  {
    goto LABEL_61;
  }

  if (v17[1] <= v21)
  {
    goto LABEL_61;
  }

  v52 = (*v17 + 12 * v21);
  if (v126 != -1 && v52[2] != v126)
  {
    goto LABEL_61;
  }

  v53 = v18;
  v54 = *(*(a3 + 144) + 8 * *v52 + 32);
  v55 = *(v54 + 344);
  LODWORD(v117) = *(v52 + 2);
  v56 = v126;
  os_unfair_lock_lock(v55);
  v57 = v23 | (v56 << 32);
  v58 = v105;
  sub_1AFC18B5C(v54, v117, v107, a3, v57);
  v59 = &v129;
  v105 = v58;
  if (!v58)
  {
    os_unfair_lock_unlock(*(v54 + 344));
    v20 = v126;
    v18 = v53;
    goto LABEL_61;
  }

LABEL_106:

  os_unfair_lock_unlock(*(v54 + 344));
  __break(1u);
}

uint64_t sub_1AFB83C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  for (i = (a1 + 36); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    if ((v6 != -1 || v7 != 0) && (v6 & 0x80000000) == 0 && v4[1] > v6)
    {
      v9 = (*v4 + 12 * v6);
      if ((v7 == -1 || v9[2] == v7) && *(*(*(a2 + 144) + 8 * *v9 + 32) + 120) == 1)
      {
        v10 = *(*(*(a2 + 88) + 8 * *(v9 + 3) + 32) + 16);
        v11 = *(v10 + 128);
        if (*(v11 + 16))
        {
          v12 = sub_1AF449CB8(&type metadata for ParticleSubSpawn);
          if ((v13 & 1) != 0 && *(*(v10 + 24) + 16 * *(*(v11 + 56) + 8 * v12) + 32) == &type metadata for ParticleSubSpawn)
          {
            break;
          }
        }
      }
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

double sub_1AFB83D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 120) = 0;
  *(*(a2 + 128) + 24) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v8 = a1 + 32;
    while (1)
    {
      v9 = (v8 + 8 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = v11 == -1 && v10 == 0;
      if (v12 || v11 < 0 || v7[1] <= v11)
      {
        goto LABEL_20;
      }

      v13 = (*v7 + 12 * v11);
      if (v10 != -1 && v13[2] != v10)
      {
        goto LABEL_20;
      }

      v15 = *(*(a3 + 144) + 8 * *v13 + 32);
      if (*(v15 + 120) == 1)
      {
        break;
      }

LABEL_30:
      if (++v6 == v5)
      {
        goto LABEL_41;
      }
    }

    v16 = *(v13 + 2);
    v17 = *(v15 + 48);
    v18 = (v17 + 32);
    v19 = *(v17 + 16) + 1;
    while (--v19)
    {
      v20 = v18 + 5;
      v21 = *v18;
      v18 += 5;
      if (v21 == &type metadata for ParticleSpawnID)
      {
        v22 = *(v20 - 2) + *(v15 + 128);
        v23 = *&v22[8 * v16];
        v24 = *(a2 + 128);
        v25 = v23 >> 6;
        v26 = v24[3];
        if (v23 >> 6 >= v26)
        {
          v47 = *&v22[8 * v16];
          v23 = v25 + 1;
          v46 = v24[2];

          if (v46 <= v25)
          {
            v34 = swift_slowAlloc();
            v35 = v34;
            v36 = v24[3];
            if (v36)
            {
              for (i = 0; i != v36; ++i)
              {
                *(v34 + 8 * i) = *(v24[4] + 8 * i);
              }
            }

            MEMORY[0x1B271DEA0](v24[4], -1, -1);
            v24[4] = v35;
            v24[2] = 2 * v23;
            v26 = v24[3];
          }

          for (; v23 != v26; ++v26)
          {
            *(v24[4] + 8 * v26) = 0;
          }

          v24[3] = v23;
          LOBYTE(v23) = v47;
        }

        else
        {
        }

        *(v24[4] + 8 * v25) |= 1 << v23;

        *(a2 + 120) = 1;
        goto LABEL_30;
      }
    }

LABEL_20:
    v27 = *(a2 + 128);
    v28 = v27[3];
    if (v28 < 1)
    {
      v29 = v27[2];

      if (v29 > 0)
      {
        goto LABEL_49;
      }

      v30 = swift_slowAlloc();
      v31 = v30;
      v32 = v27[3];
      if (v32)
      {
        for (j = 0; j != v32; ++j)
        {
          *(v30 + 8 * j) = *(v27[4] + 8 * j);
        }
      }

      MEMORY[0x1B271DEA0](v27[4], -1, -1);
      v27[4] = v31;
      v27[2] = 2;
      v28 = v27[3];
      if (v28 != 1)
      {
LABEL_49:
        do
        {
          *(v27[4] + 8 * v28++) = 0;
        }

        while (v28 != 1);
      }

      v27[3] = 1;
    }

    else
    {
    }

    *v27[4] |= 0x8000uLL;

    goto LABEL_30;
  }

LABEL_41:
  v38 = sub_1AFDFD488();
  *(v38 + 16) = 16;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(a2 + 136) = v38;

  if (a4 && (BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(a4 + 16), 0x40, 0)) != 0)
  {
    v40 = BufferWithLength;
    v41 = sub_1AFDFCEC8();
    [v40 setLabel_];

    *(a2 + 144) = v40;
  }

  else
  {
    *(a2 + 144) = 0;
  }

  swift_unknownObjectRelease();
  v43 = *(a2 + 144);
  if (v43)
  {
    v44 = [swift_unknownObjectRetain() contents];
    v45 = v43;
    *v44 = xmmword_1AFE202E0;
    v44[1] = xmmword_1AFE202D0;
    *&result = 0x900000008;
    v44[2] = xmmword_1AFE48470;
    v44[3] = xmmword_1AFE9E9F0;
  }

  return result;
}

uint64_t sub_1AFB84154(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    v44 = a8;
    v18 = a4;
    v41 = HIDWORD(a6);
    v42 = v17;
    v50 = BYTE4(a7) & 1;
    LOBYTE(v60) = BYTE4(a7) & 1;
    v45 = a6;
    sub_1AFB93CB8(a6, a7 | ((BYTE4(a7) & 1) << 32), &v51);
    *&v46[2] = v51;
    *&v46[18] = v52;
    *&v46[34] = v53;
    v43 = a5;
    v19 = sub_1AF3CD0F8(a3);
    if (v20)
    {
      v21 = v52 & 0xFFFFFFFFFFFFFFF7 | (8 * (a4 - 1 < 2));
      v22 = v53;
      v23 = BYTE8(v52);
      v24 = DWORD2(v51);
      v25 = BYTE12(v51);
    }

    else
    {
      v27 = v19;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 56) = &type metadata for ParticleClassSpawnID;
      *(inited + 64) = &off_1F254ECF8;
      *(inited + 32) = v27;
      v29 = inited + 32;
      sub_1AF5FC13C(inited, &v54);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
      v21 = v57 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v18 - 1) < 2));
      v26 = v54;
      v24 = v55;
      v25 = v56;
      v23 = v58;
      v22 = v59;
    }

    v68 = *v46;
    *&v60 = v43;
    *(&v60 + 1) = a3;
    v61 = a1;
    v62 = v42;
    v63 = v45;
    v64 = v41;
    v65 = a7;
    v66 = v50;
    v67 = v18;
    *v69 = *&v46[16];
    *&v69[10] = *&v46[26];
    v70 = v26;
    v71 = v24;
    v72 = v25;
    v73 = v48;
    v74 = v49;
    v75 = v21;
    v76 = v23;
    *v77 = *v47;
    *&v77[3] = *&v47[3];
    v78 = v22;
    v30 = (*(a2 + 8))(a1);
    v32 = v31;
    v33 = *(v31 + 16);
    sub_1AF68A8E0(&v60, v46);
    v34 = v33(&v60, v30, v32);
    v36 = sub_1AFB95274(&v60, v30, v32);
    if (v18 > 2)
    {
      v37 = v44;
      if (v18 == 3)
      {
        v38 = 400;
      }

      else
      {
        v38 = 800;
      }

      goto LABEL_13;
    }

    v37 = v44;
    if (v18 == 1)
    {
      v38 = 200;
LABEL_13:
      v39 = v45;
      goto LABEL_14;
    }

    v39 = v45;
    if (v18 == 2)
    {
      v38 = 300;
LABEL_14:
      sub_1AF6DA834(v34, v36, v35, v38, a9, v18 != 4, v39, v37, v30, *(v32 + 8));
      swift_unknownObjectRelease();

      return sub_1AF688940(&v60);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB844E8(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v18;
    v69 = a2;
    v68 = a5;
    v20 = a4;
    v73 = a7;
    v74 = HIDWORD(a7);
    LOBYTE(v83[0]) = BYTE4(a8) & 1;
    LOBYTE(v97) = BYTE4(a8) & 1;
    sub_1AFB93CB8(a7, a8 | ((BYTE4(a8) & 1) << 32), &v88);
    *&v84[2] = v88;
    *&v84[18] = v89;
    *&v84[34] = v90;
    v71 = a6;
    v21 = sub_1AF3CD0F8(a3);
    if (v22)
    {
      v23 = v89 & 0xFFFFFFFFFFFFFFF7 | (8 * (a4 - 1 < 2));
      v24 = v90;
      v25 = BYTE8(v89);
      v26 = DWORD2(v88);
      v27 = BYTE12(v88);
    }

    else
    {
      v29 = v21;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 56) = &type metadata for ParticleClassSpawnID;
      *(inited + 64) = &off_1F254ECF8;
      *(inited + 32) = v29;
      v31 = inited + 32;
      sub_1AF5FC13C(inited, &v91);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
      v23 = v94 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v20 - 1) < 2));
      v28 = v91;
      v26 = v92;
      v27 = v93;
      v25 = v95;
      v24 = v96;
    }

    *&v99[14] = *v84;
    *&v97 = v71;
    *(&v97 + 1) = a3;
    *&v98 = a1;
    *(&v98 + 1) = v19;
    *v99 = v73;
    *&v99[4] = v74;
    *&v99[8] = a8;
    v99[12] = v83[0];
    v99[13] = v20;
    *&v99[30] = *&v84[16];
    *&v99[40] = *&v84[26];
    *&v99[56] = v28;
    LODWORD(v100) = v26;
    BYTE4(v100) = v27;
    *(&v100 + 5) = v75;
    BYTE7(v100) = v76;
    *(&v100 + 1) = v23;
    LOBYTE(v101) = v25;
    *(&v101 + 1) = v77;
    DWORD1(v101) = *(&v77 + 3);
    *(&v101 + 1) = v24;
    v33 = (*(v69 + 8))(a1);
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v34 = 400;
      }

      else
      {
        v34 = 800;
      }

      goto LABEL_13;
    }

    if (v20 == 1)
    {
      v34 = 200;
LABEL_13:
      v70 = v34;
      v35 = v73;
LABEL_14:
      v36 = *(v32 + 8);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      v39 = *&v99[48];
      *(v38 + 104) = *&v99[32];
      *(v38 + 120) = v39;
      v40 = v101;
      *(v38 + 136) = v100;
      *(v38 + 152) = v40;
      v41 = v98;
      *(v38 + 40) = v97;
      *(v38 + 56) = v41;
      v42 = *&v99[16];
      *(v38 + 72) = *v99;
      *(v38 + 16) = v37;
      *(v38 + 24) = v35;
      *(v38 + 28) = v74;
      *(v38 + 32) = v68 & 1;
      v72 = v20;
      *(v38 + 33) = v20;
      *(v38 + 88) = v42;
      v43 = *(v36 + 8);

      sub_1AF68A8E0(&v97, v84);
      v44 = v43(v33, v36);
      v45 = *(v36 + 32);

      v45(v46, v33, v36);

      v47 = *(v36 + 24);
      if (v47(v33, v36) != -1)
      {
        v70 = v47(v33, v36);
      }

      v48 = (*(v36 + 16))(v33, v36);
      v67 = v49;
      v51 = v50;
      v52 = swift_allocObject();
      v52[2] = sub_1AFB92F78;
      v52[3] = v38;
      v52[4] = v44;
      v52[5] = v36;
      v53 = *(a9 + 24);

      if (v74 || v35 != -1)
      {

        v54 = sub_1AF3C9078(v35);
        v56 = v55;
        swift_unknownObjectRetain_n();

        if (v56)
        {
          v57 = v51;
          v58 = *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
          if (v58)
          {
            *v84 = v54;
            *&v84[8] = v56;
            MEMORY[0x1B2718AE0](47, 0xE100000000000000);
            v59 = sub_1AFDFE238();
            MEMORY[0x1B2718AE0](v59);

            LODWORD(v56) = vfx_counters.addCounter(name:scope:kind:)(*v84, *&v84[8], 0, 0, v58);
            v60 = v67;

LABEL_24:
            v63 = v73;
            v64 = v70;
            v65 = a10;
LABEL_28:
            *&v77 = v44;
            *(&v77 + 1) = __PAIR64__(v74, v63);
            *&v78 = v48;
            *(&v78 + 1) = v60;
            LOBYTE(v79) = v57;
            *(&v79 + 1) = v83[0];
            DWORD1(v79) = *(v83 + 3);
            *(&v79 + 1) = v44;
            *&v80 = v36;
            *(&v80 + 1) = v64;
            *&v81 = v65;
            WORD4(v81) = 257;
            BYTE10(v81) = v72 != 4;
            HIDWORD(v81) = v56;
            *&v82 = sub_1AFB93B34;
            *(&v82 + 1) = v52;
            os_unfair_lock_lock(*(a9 + 56));
            *&v84[32] = v79;
            v85 = v80;
            v86 = v81;
            v87 = v82;
            *v84 = v77;
            *&v84[16] = v78;
            sub_1AF6D8FC4(&v77, &v75);
            sub_1AF64D800(0, 0, v84);
            sub_1AF64D800(0, 0, v84);
            sub_1AF6D8FFC(&v77);
            *(a9 + 160) = 257;
            os_unfair_lock_unlock(*(a9 + 56));
            sub_1AF6D8FFC(&v77);

            swift_unknownObjectRelease();
            return sub_1AF688940(&v97);
          }

          LODWORD(v56) = 0;
          v63 = v73;
LABEL_27:
          v64 = v70;
          v60 = v67;
          v65 = a10;
          goto LABEL_28;
        }
      }

      else
      {
        swift_unknownObjectRetain_n();
      }

      v56 = *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
      if (v56)
      {
        v60 = v67;
        v61 = sub_1AFDFE238();
        v57 = v51;
        LODWORD(v56) = vfx_counters.addCounter(name:scope:kind:)(v61, v62, 0, 0, v56);

        goto LABEL_24;
      }

      v63 = v73;
      v57 = v51;
      goto LABEL_27;
    }

    v35 = v73;
    if (v20 == 2)
    {
      v70 = 300;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB84C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, char a8, char a9, __int128 *a10)
{
  v10 = a10[5];
  v46 = a10[4];
  v47 = v10;
  v11 = a10[7];
  v48 = a10[6];
  v49 = v11;
  v12 = a10[1];
  v42 = *a10;
  v43 = v12;
  v13 = a10[3];
  v44 = a10[2];
  v45 = v13;
  if (a4)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v19 = result;
      if (!a5)
      {
        ObjectType = swift_getObjectType();
        v26 = swift_conformsToProtocol2();
        if (v26)
        {
          v27 = v26;
          *&v32[72] = v46;
          *&v32[88] = v47;
          *&v32[104] = v48;
          *&v32[120] = v49;
          *&v32[8] = v42;
          *&v32[24] = v43;
          *&v32[40] = v44;
          *&v32[56] = v45;
          *v32 = 0;
          *&v32[136] = a3;
          *&v32[144] = a4;
          v32[152] = 0;
          v39 = *&v32[96];
          v40 = *&v32[112];
          v41[0] = *&v32[128];
          v35 = *&v32[32];
          v36 = *&v32[48];
          v37 = *&v32[64];
          v38 = *&v32[80];
          v33 = *v32;
          v34 = *&v32[16];
          *(v41 + 9) = *&v32[137];
          v28 = *(v26 + 16);
          swift_retain_n();

          sub_1AF68A8E0(a10, &v31);
          v28(&v33, ObjectType, v27);

          return sub_1AFB92F7C(v32);
        }

        __break(1u);
        goto LABEL_16;
      }

      if (a5 == 3)
      {
        swift_retain_n();
        if (sub_1AF67E270(a7, v19, a8 & 1, a9))
        {
          swift_getObjectType();
          v20 = swift_conformsToProtocol2();
          if (v20)
          {
            v21 = v20;

            v29 = swift_getObjectType();
            v30 = v21;
            (*(*(v21 + 8) + 16))();
            sub_1AFDFE238();
            swift_retain_n();
            v22 = sub_1AF6F4158();
            swift_unknownObjectRetain();
            v23 = sub_1AFDFCEC8();

            [v22 pushDebugGroup_];

            sub_1AF6F3BD8();
            swift_unknownObjectRelease();
            *&v32[120] = v49;
            *&v32[72] = v46;
            *&v32[88] = v47;
            *&v32[104] = v48;
            *&v32[8] = v42;
            *&v32[24] = v43;
            *&v32[40] = v44;
            *&v32[56] = v45;
            *v32 = v22;
            *&v32[136] = a3;
            *&v32[144] = a4;
            v32[152] = 3;
            v33 = *v32;
            v34 = *&v32[16];
            v37 = *&v32[64];
            v38 = *&v32[80];
            v35 = *&v32[32];
            v36 = *&v32[48];
            *(v41 + 9) = *&v32[137];
            v40 = *&v32[112];
            v41[0] = *&v32[128];
            v39 = *&v32[96];
            v24 = *(v30 + 16);
            sub_1AF68A8E0(a10, &v31);
            swift_unknownObjectRetain();

            v24(&v33, v29, v30);
            sub_1AFB92F7C(v32);
            [v22 popDebugGroup];

            return swift_unknownObjectRelease();
          }

LABEL_16:
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1AFB8505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v7 = a3 + 32;
  while (1)
  {
    v8 = (v7 + 8 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v9 == -1 && v10 == 0;
    if (!v11 && (v9 & 0x80000000) == 0 && v6[1] > v9)
    {
      v12 = (*v6 + 12 * v9);
      if ((v10 == -1 || v12[2] == v10) && *(*(*(a4 + 144) + 8 * *v12 + 32) + 120) == 1)
      {
        v14 = *(*(*(*(a4 + 88) + 8 * *(v12 + 3) + 32) + 16) + 32);
        v15 = *(v14 + 16);
        if (v15)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = -v15;
  v19 = v14 + 32;
  while (2)
  {
    v20 = (v19 + 16 * v16++);
    while (*v20 != a1)
    {
      ++v16;
      v20 += 2;
      if (v18 + v16 == 1)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }

        return v9 | (v10 << 32);
      }
    }

    v17 = 1;
    if (v18 + v16)
    {
      continue;
    }

    return v9 | (v10 << 32);
  }
}

uint64_t sub_1AFB8516C(uint64_t result, unsigned __int8 a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v172 = a7;
  v9 = *(result + 16);
  if (!v9)
  {
    return result;
  }

  v10 = a3;
  v11 = a2;
  v12 = 0;
  v13 = a7 & 0x100000000;
  v14 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v15 = result + 32;
  if (a5)
  {
    v16 = a2 != 4;
  }

  else
  {
    v16 = 1;
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = a7;
  }

  v176 = v17;
  v164 = a7 & 0x100000000;
  v175 = v13 >> 31;
  v161 = a2 == 1;
  v153 = a6;
  v178 = HIDWORD(a6);
  v19 = a6 != -1 || HIDWORD(a6) != 0;
  v154 = v19;
  v155 = a2 != 4;
  v163 = v16;
  v151 = result + 32;
  v152 = *(result + 16);
  v171 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  while (1)
  {
    v20 = *(v15 + 8 * v12);
    v21 = v20 == -1 && HIDWORD(v20) == 0;
    if (!v21 && (v20 & 0x80000000) == 0 && v14[1] > v20)
    {
      v22 = (*v14 + 12 * v20);
      if (HIDWORD(v20) == -1 || v22[2] == HIDWORD(v20)) && (*(*(*(a4 + 144) + 8 * *v22 + 32) + 120))
      {
        result = *(*(a4 + 88) + 8 * *(v22 + 3) + 32);
        v24 = *(*(result + 16) + 32);
        if (*(v24 + 16))
        {
          break;
        }
      }
    }

LABEL_16:
    if (++v12 == v9)
    {
      return result;
    }
  }

  v168 = v20;
  v169 = HIDWORD(*(v15 + 8 * v12));
  v162 = v20;
  v170 = *(v15 + 8 * v12);
  v25 = v24 + 32;

  v26 = 0;
  v166 = v24 + 32;
  v167 = v24;
  while (1)
  {
    v29 = (v25 + 16 * v26);
    v30 = *v29;
    if (!v16)
    {
      v31 = *(v29[1] + 8);

      LOBYTE(v31) = sub_1AF70B788(v32, v30, v31);

      if ((v31 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v10)
    {
      type metadata accessor for GraphScript(0);
      if (!swift_dynamicCastMetatype())
      {
        v48 = swift_conformsToProtocol2();
        if (v48)
        {
          v49 = v30 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          goto LABEL_36;
        }

        v50 = v48;
        v51 = swift_conformsToProtocol2();
        if (!v51)
        {
          goto LABEL_138;
        }

        v52 = v51;
        v180[0] = v164 != 0;
        if (qword_1ED72D720 != -1)
        {
          swift_once();
        }

        v53 = v11;
        v242 = qword_1ED73B840;
        v243 = 0;
        v244 = 2;
        v245 = 0;
        v246 = 2;
        v247 = 0;
        sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1AFE431C0;
        *(v54 + 32) = &type metadata for Particle;
        *(v54 + 40) = &off_1F252D7A8;
        sub_1AF5F58E4(v54, 1, v197);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1AFE431C0;
        *(v55 + 56) = &type metadata for EmitterReference;
        *(v55 + 64) = &off_1F2563D20;
        *(v55 + 32) = a6;
        v56 = v55 + 32;
        *(v55 + 36) = v178;
        sub_1AF5FC13C(v55, &v198);
        sub_1AF692DB0(v197);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
        swift_deallocClassInstance();
        v57 = v200;
        *&v239 = v198;
        DWORD2(v239) = v176;
        BYTE12(v239) = v175;
        *&v240 = v199;
        BYTE8(v240) = v200;
        *&v182[2] = v239;
        v58 = v201;
        v241 = v201;
        *&v182[34] = v201;
        *&v182[18] = v240;
        if (v53 == 2)
        {
          v59 = v171;
          v60 = v169;
          v61 = v168;
          if (v162 == -1)
          {
            v62 = a2;
            if (!v169 || v171[1] <= v168)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v62 = a2;
            if (v171[1] <= v168)
            {
              goto LABEL_93;
            }
          }

          v86 = 1;
        }

        else
        {
          v59 = v171;
          v86 = v161;
          v61 = v168;
          v62 = a2;
          v60 = v169;
          if (v171[1] <= v168)
          {
            goto LABEL_92;
          }
        }

        v87 = (*v59 + 12 * v61);
        v88 = *(v87 + 2);
        if (v60 == -1 || v87[2] == v60)
        {
          v129 = *(*(a4 + 144) + 8 * *v87 + 32);
          v130 = *(v129 + 48);
          v131 = (v130 + 32);
          v132 = *(v130 + 16) + 1;
          while (--v132)
          {
            v133 = v131 + 5;
            v134 = *v131;
            v131 += 5;
            if (v134 == &type metadata for ParticleSpawnID)
            {
              v135 = *(&(*(v133 - 2))->Kind + 8 * v88 + *(v129 + 128));
              v136 = swift_allocObject();
              *(v136 + 16) = xmmword_1AFE431C0;
              *(v136 + 56) = &type metadata for ParticleClassSpawnID;
              *(v136 + 64) = &off_1F254ECF8;
              *(v136 + 32) = v135;
              v137 = v136 + 32;
              sub_1AF5FC13C(v136, &v202);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v137);
              swift_deallocClassInstance();
              v138 = 8;
              if (!v86)
              {
                v138 = 0;
              }

              v89 = v205 & 0xFFFFFFFFFFFFFFF7 | v138;
              v90 = v202;
              v91 = v203;
              v92 = v204;
              v57 = v206;
              v58 = v207;
              goto LABEL_96;
            }
          }
        }

LABEL_92:
        if ((v86 & 1) == 0)
        {
          v89 = v199 & 0xFFFFFFFFFFFFFFF7;
LABEL_95:

          v91 = v176;
          v92 = v175;
LABEL_96:
          *&v236[14] = *v182;
          *&v234 = a4;
          *(&v234 + 1) = v170;
          *&v235 = v30;
          *(&v235 + 1) = v52;
          *v236 = a6;
          *&v236[4] = v178;
          *&v236[8] = v172;
          v236[12] = v180[0];
          v236[13] = v62;
          *&v236[30] = *&v182[16];
          *&v236[40] = *&v182[26];
          *&v236[56] = v90;
          LODWORD(v237) = v91;
          BYTE4(v237) = v92;
          *(&v237 + 1) = v89;
          LOBYTE(v238) = v57;
          *(&v238 + 1) = v58;
          v94 = (*(v50 + 8))(v30, v50);
          if (v62 > 2u)
          {
            if (v62 == 3)
            {
              v95 = 400;
            }

            else
            {
              v95 = 800;
            }
          }

          else if (v62 == 1)
          {
            v95 = 200;
          }

          else
          {
            if (v62 != 2)
            {
              goto LABEL_139;
            }

            v95 = 300;
          }

          v160 = v95;
          v96 = *(v93 + 8);
          v97 = swift_allocObject();
          swift_weakInit();
          v98 = swift_allocObject();
          v99 = *&v236[48];
          *(v98 + 104) = *&v236[32];
          *(v98 + 120) = v99;
          v100 = v238;
          *(v98 + 136) = v237;
          *(v98 + 152) = v100;
          v101 = v235;
          *(v98 + 40) = v234;
          *(v98 + 56) = v101;
          v102 = *&v236[16];
          *(v98 + 72) = *v236;
          *(v98 + 16) = v97;
          *(v98 + 24) = a6;
          *(v98 + 28) = v178;
          *(v98 + 32) = 0;
          *(v98 + 33) = v62;
          *(v98 + 88) = v102;
          v103 = *(v96 + 8);

          sub_1AF68A8E0(&v234, v182);
          v104 = v103(v94, v96);
          v105 = *(v96 + 32);

          v105(v106, v94, v96);

          v107 = *(v96 + 24);
          if (v107(v94, v96) != -1)
          {
            v160 = v107(v94, v96);
          }

          v108 = (*(v96 + 16))(v94, v96);
          v110 = v109;
          v157 = v111;
          v112 = swift_allocObject();
          v112[2] = sub_1AFB93B3C;
          v112[3] = v98;
          v112[4] = v104;
          v112[5] = v96;
          v113 = a8;
          v114 = *(a8 + 24);

          v158 = v112;
          v159 = v104;
          v156 = v96;
          if (v154)
          {

            if ((a6 & 0x8000000000000000) == 0 && a6 < *(v114 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
            {
              v115 = (*(v114 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v153);
              v116 = *(v115 + 2);
              if (v178 == 0xFFFFFFFF || v115[2] == v178)
              {
                v139 = *(*(v114 + 144) + 8 * *v115 + 32);
                v140 = *(v139 + 48);
                v141 = (v140 + 32);
                v142 = *(v140 + 16) + 1;
                while (--v142)
                {
                  v143 = v141 + 5;
                  v144 = *v141;
                  v141 += 5;
                  if (v144 == &type metadata for Name)
                  {
                    v122 = v110;
                    v145 = (&(*(v143 - 2))[v116].Kind + *(v139 + 128));
                    v147 = *v145;
                    v146 = v145[1];
                    swift_unknownObjectRetain_n();

                    v148 = *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
                    if (v148)
                    {
                      *v182 = v147;
                      *&v182[8] = v146;
                      v149 = v148;
                      MEMORY[0x1B2718AE0](47, 0xE100000000000000);
                      v118 = v157;
                      v150 = sub_1AFDFE238();
                      v120 = v108;
                      MEMORY[0x1B2718AE0](v150);

                      LODWORD(v117) = vfx_counters.addCounter(name:scope:kind:)(*v182, *&v182[8], 0, 0, v149);

                      v113 = a8;
                      goto LABEL_116;
                    }

                    LODWORD(v117) = 0;
                    v113 = a8;
                    v120 = v108;
                    v11 = a2;
                    v118 = v157;
                    goto LABEL_117;
                  }
                }
              }
            }

            swift_unknownObjectRetain_n();
          }

          else
          {
            swift_unknownObjectRetain_n();
          }

          v117 = *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
          v118 = v157;
          if (v117)
          {
            v119 = sub_1AFDFE238();
            v120 = v108;
            LODWORD(v117) = vfx_counters.addCounter(name:scope:kind:)(v119, v121, 0, 0, v117);
            v122 = v110;
          }

          else
          {

            v122 = v110;
            v120 = v108;
          }

LABEL_116:
          v11 = a2;
LABEL_117:
          *v182 = v159;
          *&v182[8] = a6;
          *&v182[12] = v178;
          *&v182[16] = v120;
          *&v182[24] = v122;
          v182[32] = v118;
          *&v182[33] = *v181;
          *&v182[36] = *&v181[3];
          *&v182[40] = v159;
          *&v183 = v156;
          *(&v183 + 1) = v160;
          *&v184 = a9;
          WORD4(v184) = 257;
          BYTE10(v184) = v155;
          HIDWORD(v184) = v117;
          *&v185 = sub_1AFB93B34;
          *(&v185 + 1) = v158;
          os_unfair_lock_lock(*(v113 + 56));
          v123 = *(v113 + 96);
          v124 = *(v123 + 2);
          sub_1AF6D8FC4(v182, v180);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v113 + 96) = v123;
          if (!isUniquelyReferenced_nonNull_native || v124 >= *(v123 + 3) >> 1)
          {
            v123 = sub_1AF4237C8(isUniquelyReferenced_nonNull_native, v124 + 1, 1, v123);
            *(v113 + 96) = v123;
          }

          v233[2] = *&v182[32];
          v233[3] = v183;
          v233[4] = v184;
          v233[5] = v185;
          v233[0] = *v182;
          v233[1] = *&v182[16];
          sub_1AF64D6A4(0, 0, 1, v233);
          *(v113 + 96) = v123;
          v126 = *(v113 + 128);
          v127 = *(v126 + 2);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          *(v113 + 128) = v126;
          if (!v128 || v127 >= *(v126 + 3) >> 1)
          {
            v126 = sub_1AF4237C8(v128, v127 + 1, 1, v126);
            *(v113 + 128) = v126;
          }

          sub_1AF64D6A4(0, 0, 1, v233);
          sub_1AF6D8FFC(v182);
          *(v113 + 128) = v126;
          *(v113 + 160) = 257;
          os_unfair_lock_unlock(*(v113 + 56));
          sub_1AF6D8FFC(v182);

          swift_unknownObjectRelease();
          v28 = &v234;
          goto LABEL_35;
        }

LABEL_93:
        v89 = v199 | 8;
        goto LABEL_95;
      }
    }

    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v30 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_36;
    }

    v35 = v33;
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {
      break;
    }

    v37 = v36;
    v180[0] = v164 != 0;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v38 = v11;
    v227 = qword_1ED73B840;
    v228 = 0;
    v229 = 2;
    v230 = 0;
    v231 = 2;
    v232 = 0;
    sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AFE431C0;
    *(v39 + 32) = &type metadata for Particle;
    *(v39 + 40) = &off_1F252D7A8;
    sub_1AF5F58E4(v39, 1, v186);
    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AFE431C0;
    *(v40 + 56) = &type metadata for EmitterReference;
    *(v40 + 64) = &off_1F2563D20;
    *(v40 + 32) = a6;
    v41 = v40 + 32;
    *(v40 + 36) = v178;
    sub_1AF5FC13C(v40, &v187);
    sub_1AF692DB0(v186);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
    swift_deallocClassInstance();
    v42 = v189;
    *&v224 = v187;
    DWORD2(v224) = v176;
    BYTE12(v224) = v175;
    *&v225 = v188;
    BYTE8(v225) = v189;
    *&v182[2] = v224;
    v43 = v190;
    v226 = v190;
    *&v182[34] = v190;
    *&v182[18] = v225;
    if (v38 == 2)
    {
      v44 = v171;
      v45 = v169;
      v46 = v168;
      if (v162 == -1)
      {
        v11 = a2;
        if (!v169 || v171[1] <= v168)
        {
LABEL_71:
          v65 = v188 | 8;
          goto LABEL_73;
        }
      }

      else
      {
        v11 = a2;
        if (v171[1] <= v168)
        {
          goto LABEL_71;
        }
      }

      v47 = 1;
    }

    else
    {
      v44 = v171;
      v47 = v161;
      v46 = v168;
      v11 = a2;
      v45 = v169;
      if (v171[1] <= v168)
      {
        goto LABEL_70;
      }
    }

    v63 = (*v44 + 12 * v46);
    v64 = *(v63 + 2);
    if (v45 == -1 || v63[2] == v45)
    {
      v76 = *(*(a4 + 144) + 8 * *v63 + 32);
      v77 = *(v76 + 48);
      v78 = (v77 + 32);
      v79 = *(v77 + 16) + 1;
      while (--v79)
      {
        v80 = v78 + 5;
        v81 = *v78;
        v78 += 5;
        if (v81 == &type metadata for ParticleSpawnID)
        {
          v82 = *(&(*(v80 - 2))->Kind + 8 * v64 + *(v76 + 128));
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1AFE431C0;
          *(v83 + 56) = &type metadata for ParticleClassSpawnID;
          *(v83 + 64) = &off_1F254ECF8;
          *(v83 + 32) = v82;
          v84 = v83 + 32;
          sub_1AF5FC13C(v83, &v191);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v84);
          swift_deallocClassInstance();
          v85 = 8;
          if (!v47)
          {
            v85 = 0;
          }

          v65 = v194 & 0xFFFFFFFFFFFFFFF7 | v85;
          v66 = v191;
          v67 = v192;
          v68 = v193;
          v42 = v195;
          v43 = v196;
          goto LABEL_74;
        }
      }
    }

LABEL_70:
    if (v47)
    {
      goto LABEL_71;
    }

    v65 = v188 & 0xFFFFFFFFFFFFFFF7;
LABEL_73:

    v67 = v176;
    v68 = v175;
LABEL_74:
    v216 = *v182;
    *&v208 = a4;
    *(&v208 + 1) = v170;
    v209 = v30;
    v210 = v37;
    v211 = a6;
    v212 = v178;
    v213 = v172;
    v214 = v180[0];
    v215 = v11;
    *v217 = *&v182[16];
    *&v217[10] = *&v182[26];
    v218 = v66;
    v219 = v67;
    v220 = v68;
    v221 = v65;
    v222 = v42;
    v223 = v43;
    v69 = (*(v35 + 8))(v30, v35);
    v71 = v70;
    v72 = *(v70 + 16);
    sub_1AF68A8E0(&v208, v182);
    v73 = v72(&v208, v69, v71);
    v75 = sub_1AFB95274(&v208, v69, v71);
    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v27 = 400;
      }

      else
      {
        v27 = 800;
      }
    }

    else if (v11 == 1)
    {
      v27 = 200;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_139;
      }

      v27 = 300;
    }

    sub_1AF6DA834(v73, v75, v74, v27, a9, v11 != 4, a6, a8, v69, *(v71 + 8));
    swift_unknownObjectRelease();

    v28 = &v208;
LABEL_35:
    sub_1AF688940(v28);
    v10 = a3;
    v16 = v163;
    v25 = v166;
    v24 = v167;
LABEL_36:
    if (++v26 == *(v24 + 16))
    {

      v15 = v151;
      v9 = v152;
      v14 = v171;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

BOOL sub_1AFB86390(unint64_t *a1, unsigned int *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = *a2;
  v21 = a2[1];
  v22 = *a1;
  sub_1AF3CB570(v22, &v40);
  if (v41)
  {
    v23 = v40;
    v24 = v40;
    sub_1AF487074(v40, v41);
    if (v24 > 6)
    {
      v25 = 1;
    }

    else
    {
      v25 = qword_1AFE9F580[v23 & 7];
    }
  }

  else
  {
    sub_1AF3CFB68(v22, v19);
    updated = type metadata accessor for ParticleUpdateScript(0);
    v25 = 1;
    v27 = (*(*(updated - 8) + 48))(v19, 1, updated);
    sub_1AFB92FD0(v19, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
    if (v27 == 1)
    {
      sub_1AF3CFD30(v22, v11);
      inited = type metadata accessor for ParticleInitScript(0);
      v25 = (*(*(inited - 8) + 48))(v11, 1, inited) != 1;
      sub_1AFB92FD0(v11, qword_1ED725258, type metadata accessor for ParticleInitScript);
    }
  }

  v29 = v20 | (v21 << 32);
  sub_1AF3CB570(v29, &v40);
  if (v41)
  {
    v30 = v40;
    v31 = v40;
    sub_1AF487074(v40, v41);
    if (v31 > 6)
    {
      v32 = 1;
    }

    else
    {
      v32 = qword_1AFE9F580[v30 & 7];
    }
  }

  else
  {
    sub_1AF3CFB68(v20 | (v21 << 32), v15);
    v33 = type metadata accessor for ParticleUpdateScript(0);
    v32 = 1;
    v34 = (*(*(v33 - 8) + 48))(v15, 1, v33);
    sub_1AFB92FD0(v15, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
    if (v34 == 1)
    {
      v35 = v39;
      sub_1AF3CFD30(v29, v39);
      v36 = type metadata accessor for ParticleInitScript(0);
      v32 = (*(*(v36 - 8) + 48))(v35, 1, v36) != 1;
      sub_1AFB92FD0(v35, qword_1ED725258, type metadata accessor for ParticleInitScript);
    }
  }

  return v25 < v32;
}

uint64_t sub_1AFB867B0(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6[5] = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF702F8C(1, v6);
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v3 = sub_1AF6D6B58();
  v4 = v6[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v4);

  sub_1AF6B1B20(a1, v3, v4);
  os_unfair_lock_unlock(*(v2 + 40));
  sub_1AFB91B88(v6, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, sub_1AF5DD590);
  swift_getObjectType();
  return sub_1AF6D6B58();
}

void sub_1AFB86924(uint64_t a1, uint64_t a2, int a3)
{
  v188 = a3;
  v187 = a2;
  v4 = a1;
  v5 = 0;
  v280 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 72);
  v227[0] = *(v3 + 56);
  v227[1] = v6;
  v228 = *(v3 + 88);
  v191 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v227, 0x200000000, &v241);
  if (v241)
  {
    v223 = v244;
    v224 = v245;
    v225 = v246;
    v221 = v242;
    v222 = v243;
    v226 = v247;
    v220 = v241;
    sub_1AFD06F68(&v220);
    sub_1AFB91B88(&v241, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  }

  v7 = *(v3 + 112);
  v218[0] = *(v3 + 96);
  v218[1] = v7;
  v190 = v3;
  v219 = *(v3 + 128);
  sub_1AF6B06C0(v4, v218, 0x200000000, &v248);
  v189 = v4;
  if (v248)
  {
    if (v255 < 1 || (v198 = v252) == 0)
    {
LABEL_170:
      sub_1AFB91B88(&v248, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      v4 = v189;
      goto LABEL_171;
    }

    v8 = 0;
    v197 = v251;
    v206 = v254;
    v201 = v254[4];
    LODWORD(v200) = *(v253 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v207 = v248;
    v208 = v249;
    v209 = v250;
    while (1)
    {
      v9 = &v197[6 * v8];
      v11 = *v9;
      v10 = v9[1];
      v202 = v5;
      v203 = v10;
      v12 = *(v9 + 3);
      v204 = *(v9 + 2);
      v14 = *(v9 + 4);
      v13 = *(v9 + 5);
      if (v200)
      {
        v15 = v13[47];

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(v13[43]);
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v201);
      v16 = v206;
      v17 = *(v206 + 4);
      v278[0] = *(v206 + 3);
      v278[1] = v17;
      v279 = v206[10];
      v18 = *(*(*(v13[5] + 16) + 32) + 16) + 1;
      v206[6] = ecs_stack_allocator_allocate(v206[4], 48 * v18, 8);
      v16[7] = v18;
      v16[9] = 0;
      v16[10] = 0;
      v16[8] = 0;
      v205 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v204, v12, v14, v16);
      v199 = v8;
      if (v204)
      {
        if (v14)
        {
          v19 = 0;
          v203 = v14;
          while (1)
          {
            v20 = v13;
            v21 = v204[v19];
            v22 = v205 + 104 * v19;
            if ((*(v22 + 72) & 1) != 0 || *(v22 + 48))
            {
              v24 = v20[5];
LABEL_26:
              v34 = *(v24 + 16);
              v35 = *(v34 + 128);
              if (*(v35 + 16))
              {
                v36 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
                if ((v37 & 1) != 0 && *(*(v34 + 24) + 16 * *(*(v35 + 56) + 8 * v36) + 32) == &type metadata for InverseWorldTransform)
                {
                  v14 = v203;
LABEL_15:
                  v13 = v20;
                  goto LABEL_16;
                }
              }

              *&v256[0] = &type metadata for InverseWorldTransform;
              *(&v256[0] + 1) = &off_1F2529E00;
              LOBYTE(v257) = 0;
              v38 = v206[13];
              v39 = *(v38 + 16);
              if (!v39)
              {

LABEL_59:
                v53 = v20[30] - v20[29];
                v54 = v206;
                v55 = ecs_stack_allocator_allocate(v206[4], 8 * v53, 8);
                *v55 = v21;
LABEL_60:
                sub_1AF63515C(v256, &v268);
                *v271 = v55;
                *&v271[8] = v53;
                *&v271[16] = 1;
                v56 = v54[13];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v54[13] = v56;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v56 = sub_1AF420EA0(0, v56[2] + 1, 1, v56);
                  v206[13] = v56;
                }

                v59 = v56[2];
                v58 = v56[3];
                v13 = v20;
                if (v59 >= v58 >> 1)
                {
                  v206[13] = sub_1AF420EA0(v58 > 1, v59 + 1, 1, v56);
                }

                sub_1AF635250(v256);
                v60 = v206;
                v61 = v206[13];
                *(v61 + 16) = v59 + 1;
                v62 = v61 + 72 * v59;
                *(v62 + 32) = v268;
                v63 = *v271;
                v64 = v270;
                v65 = v269;
                *(v62 + 96) = *&v271[16];
                *(v62 + 64) = v64;
                *(v62 + 80) = v63;
                *(v62 + 48) = v65;
                v60[13] = v61;
                v14 = v203;
                goto LABEL_16;
              }

              v40 = v38 + 32;

              v41 = 0;
              while (2)
              {
                sub_1AFB93040(v40, v261, sub_1AF43A540);
                sub_1AF63515C(v261, &v268);
                sub_1AF63515C(v256, v271);
                if (BYTE8(v270) > 2u)
                {
                  if (BYTE8(v270) != 3)
                  {
                    if (BYTE8(v270) != 4)
                    {
                      sub_1AFB930A8(v261, sub_1AF43A540);
                      if (v273 == 5)
                      {
                        v48 = vorrq_s8(*&v271[8], v272);
                        if (!(*&vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL)) | *v271))
                        {
                          sub_1AF635250(&v268);
LABEL_55:
                          v50 = sub_1AFBFCA08(&v268);
                          v51 = *(v49 + 48);
                          if (v51)
                          {
                            v52 = *(v49 + 64);
                            *(v51 + 8 * v52) = v21;
                            *(v49 + 64) = v52 + 1;
                          }

                          (v50)(&v268, 0);
                          v13 = v20;

                          sub_1AF635250(v256);
                          v14 = v203;
                          goto LABEL_16;
                        }
                      }

                      goto LABEL_32;
                    }

                    sub_1AFB930A8(v261, sub_1AF43A540);
                    sub_1AF63515C(&v268, &v235);
                    if (v273 != 4)
                    {
                      goto LABEL_32;
                    }

                    v42 = v235;
                    v43 = v271[0];
                    sub_1AF635250(&v268);
                    if (v42 == v43)
                    {
                      goto LABEL_55;
                    }

LABEL_33:
                    ++v41;
                    v40 += 72;
                    if (v39 == v41)
                    {
                      goto LABEL_59;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v268, &v235);
                  if (v273 == 3)
                  {
LABEL_50:
                    sub_1AF0FBA54(&v235, &v229);
                    sub_1AF0FBA54(v271, v276);
                    v46 = *(&v230 + 1);
                    v47 = v231;
                    sub_1AF441150(&v229, *(&v230 + 1));
                    LOBYTE(v46) = sub_1AF640C98(v276, v46, v47);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
                    sub_1AFB930A8(v261, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v229);
                    sub_1AF635250(&v268);
                    if (v46)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  if (!BYTE8(v270))
                  {
                    sub_1AFB930A8(v261, sub_1AF43A540);
                    sub_1AF63515C(&v268, &v235);
                    if (v273)
                    {
                      goto LABEL_32;
                    }

LABEL_45:
                    v44 = v235;
                    v45 = *v271;
                    sub_1AF635250(&v268);
                    if (v44 == v45)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_33;
                  }

                  if (BYTE8(v270) == 1)
                  {
                    sub_1AFB930A8(v261, sub_1AF43A540);
                    sub_1AF63515C(&v268, &v235);
                    if (v273 == 1)
                    {
                      goto LABEL_45;
                    }

LABEL_32:
                    sub_1AFB930A8(&v268, sub_1AF635194);
                    goto LABEL_33;
                  }

                  sub_1AF63515C(&v268, &v235);
                  if (v273 == 2)
                  {
                    goto LABEL_50;
                  }
                }

                break;
              }

              sub_1AFB930A8(v261, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v235);
              goto LABEL_32;
            }

            v23 = *(v22 + 58);
            v24 = v20[5];
            if (v23 == 1)
            {
              goto LABEL_26;
            }

            v25 = *(v24 + 16);
            v26 = *(v25 + 128);
            if (!*(v26 + 16))
            {
              goto LABEL_15;
            }

            v27 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
            if ((v28 & 1) == 0 || *(*(v25 + 24) + 16 * *(*(v26 + 56) + 8 * v27) + 32) != &type metadata for InverseWorldTransform)
            {
              goto LABEL_15;
            }

            v196 = v21;
            *&v256[0] = &type metadata for InverseWorldTransform;
            *(&v256[0] + 1) = &off_1F2529E00;
            LOBYTE(v257) = 1;
            v29 = v206[13];
            v30 = *(v29 + 16);
            if (!v30)
            {

LABEL_94:
              v53 = v20[30] - v20[29];
              v54 = v206;
              v55 = ecs_stack_allocator_allocate(v206[4], 8 * v53, 8);
              *v55 = v196;
              goto LABEL_60;
            }

            v31 = v29 + 32;

            v32 = 0;
            v33 = v30;
            while (1)
            {
              sub_1AFB93040(v31, v261, sub_1AF43A540);
              sub_1AF63515C(v261, &v268);
              sub_1AF63515C(v256, v271);
              if (BYTE8(v270) > 2u)
              {
                break;
              }

              if (!BYTE8(v270))
              {
                sub_1AFB930A8(v261, sub_1AF43A540);
                sub_1AF63515C(&v268, &v235);
                if (v273)
                {
                  goto LABEL_66;
                }

                goto LABEL_78;
              }

              if (BYTE8(v270) == 1)
              {
                sub_1AFB930A8(v261, sub_1AF43A540);
                sub_1AF63515C(&v268, &v235);
                if (v273 != 1)
                {
                  goto LABEL_66;
                }

LABEL_78:
                v69 = v235;
                v70 = *v271;
                sub_1AF635250(&v268);
                v68 = v69 == v70;
LABEL_79:
                v30 = v33;
                if (v68)
                {
                  goto LABEL_90;
                }

                goto LABEL_67;
              }

              sub_1AF63515C(&v268, &v235);
              if (v273 != 2)
              {
LABEL_65:
                sub_1AFB930A8(v261, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v235);
LABEL_66:
                sub_1AFB930A8(&v268, sub_1AF635194);
                goto LABEL_67;
              }

LABEL_85:
              sub_1AF0FBA54(&v235, &v229);
              sub_1AF0FBA54(v271, v276);
              v71 = *(&v230 + 1);
              v72 = v231;
              sub_1AF441150(&v229, *(&v230 + 1));
              v73 = v72;
              v30 = v33;
              LOBYTE(v71) = sub_1AF640C98(v276, v71, v73);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
              sub_1AFB930A8(v261, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v229);
              sub_1AF635250(&v268);
              if (v71)
              {
                goto LABEL_90;
              }

LABEL_67:
              ++v32;
              v31 += 72;
              if (v30 == v32)
              {
                goto LABEL_94;
              }
            }

            if (BYTE8(v270) == 3)
            {
              break;
            }

            if (BYTE8(v270) == 4)
            {
              sub_1AFB930A8(v261, sub_1AF43A540);
              sub_1AF63515C(&v268, &v235);
              if (v273 != 4)
              {
                goto LABEL_66;
              }

              v66 = v235;
              v67 = v271[0];
              sub_1AF635250(&v268);
              v68 = v66 == v67;
              goto LABEL_79;
            }

            sub_1AFB930A8(v261, sub_1AF43A540);
            if (v273 != 5)
            {
              goto LABEL_66;
            }

            v74 = vorrq_s8(*&v271[8], v272);
            if (*&vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL)) | *v271)
            {
              goto LABEL_66;
            }

            sub_1AF635250(&v268);
LABEL_90:
            v76 = sub_1AFBFCA08(&v268);
            v77 = *(v75 + 48);
            if (v77)
            {
              v78 = *(v75 + 64);
              *(v77 + 8 * v78) = v196;
              *(v75 + 64) = v78 + 1;
            }

            (v76)(&v268, 0);
            v13 = v20;

            sub_1AF635250(v256);
LABEL_16:
            if (++v19 == v14)
            {
              goto LABEL_96;
            }
          }

          sub_1AF63515C(&v268, &v235);
          if (v273 != 3)
          {
            goto LABEL_65;
          }

          goto LABEL_85;
        }

        goto LABEL_96;
      }

      if (v11 != v203)
      {
        break;
      }

LABEL_96:
      v5 = v202;
      sub_1AF630994(v206, &v207, v278);
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v201);
      if (v200)
      {
        os_unfair_lock_unlock(v13[43]);
        os_unfair_lock_unlock(v13[47]);
      }

      v8 = v199 + 1;
      if (v199 + 1 == v198)
      {
        goto LABEL_170;
      }
    }

LABEL_100:
    v79 = v205 + 104 * v11;
    if ((*(v79 + 72) & 1) != 0 || *(v79 + 48))
    {
      v81 = v13[5];
    }

    else
    {
      v80 = *(v79 + 58);
      v81 = v13[5];
      if (v80 != 1)
      {
        v82 = *(v81 + 16);
        v83 = *(v82 + 128);
        if (!*(v83 + 16))
        {
          goto LABEL_99;
        }

        v84 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
        if ((v85 & 1) == 0 || *(*(v82 + 24) + 16 * *(*(v83 + 56) + 8 * v84) + 32) != &type metadata for InverseWorldTransform)
        {
          goto LABEL_99;
        }

        *&v256[0] = &type metadata for InverseWorldTransform;
        *(&v256[0] + 1) = &off_1F2529E00;
        LOBYTE(v257) = 1;
        v86 = v206[13];
        v87 = *(v86 + 16);
        if (!v87)
        {
LABEL_140:

LABEL_141:
          v109 = v13[30] - v13[29];
          v110 = v206;
          v111 = ecs_stack_allocator_allocate(v206[4], 8 * v109, 8);
          *v111 = v11;
          sub_1AF63515C(v256, &v268);
          *v271 = v111;
          *&v271[8] = v109;
          *&v271[16] = 1;
          v112 = v110[13];
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v110[13] = v112;
          if ((v113 & 1) == 0)
          {
            v112 = sub_1AF420EA0(0, v112[2] + 1, 1, v112);
            v206[13] = v112;
          }

          v115 = v112[2];
          v114 = v112[3];
          if (v115 >= v114 >> 1)
          {
            v206[13] = sub_1AF420EA0(v114 > 1, v115 + 1, 1, v112);
          }

          sub_1AF635250(v256);
          v116 = v206;
          v117 = v206[13];
          *(v117 + 16) = v115 + 1;
          v118 = v117 + 72 * v115;
          *(v118 + 32) = v268;
          v119 = *v271;
          v120 = v270;
          v121 = v269;
          *(v118 + 96) = *&v271[16];
          *(v118 + 64) = v120;
          *(v118 + 80) = v119;
          *(v118 + 48) = v121;
          v116[13] = v117;
          goto LABEL_99;
        }

        v88 = v86 + 32;

        v89 = 0;
        while (2)
        {
          sub_1AFB93040(v88, v261, sub_1AF43A540);
          sub_1AF63515C(v261, &v268);
          sub_1AF63515C(v256, v271);
          if (BYTE8(v270) > 2u)
          {
            if (BYTE8(v270) != 3)
            {
              if (BYTE8(v270) != 4)
              {
                sub_1AFB930A8(v261, sub_1AF43A540);
                if (v273 == 5)
                {
                  v128 = vorrq_s8(*&v271[8], v272);
                  if (!(*&vorr_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL)) | *v271))
                  {
                    goto LABEL_137;
                  }
                }

                goto LABEL_147;
              }

              sub_1AFB930A8(v261, sub_1AF43A540);
              sub_1AF63515C(&v268, &v235);
              if (v273 != 4)
              {
                goto LABEL_147;
              }

              v122 = v235;
              v123 = v271[0];
              sub_1AF635250(&v268);
              if (v122 == v123)
              {
                goto LABEL_138;
              }

LABEL_148:
              ++v89;
              v88 += 72;
              if (v87 == v89)
              {
                goto LABEL_141;
              }

              continue;
            }

            sub_1AF63515C(&v268, &v235);
            if (v273 == 3)
            {
LABEL_165:
              sub_1AF0FBA54(&v235, &v229);
              sub_1AF0FBA54(v271, v276);
              v126 = *(&v230 + 1);
              v127 = v231;
              sub_1AF441150(&v229, *(&v230 + 1));
              LOBYTE(v126) = sub_1AF640C98(v276, v126, v127);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
              sub_1AFB930A8(v261, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v229);
              sub_1AF635250(&v268);
              if (v126)
              {
                goto LABEL_138;
              }

              goto LABEL_148;
            }
          }

          else
          {
            if (!BYTE8(v270))
            {
              sub_1AFB930A8(v261, sub_1AF43A540);
              sub_1AF63515C(&v268, &v235);
              if (v273)
              {
                goto LABEL_147;
              }

LABEL_160:
              v124 = v235;
              v125 = *v271;
              sub_1AF635250(&v268);
              if (v124 == v125)
              {
                goto LABEL_138;
              }

              goto LABEL_148;
            }

            if (BYTE8(v270) == 1)
            {
              sub_1AFB930A8(v261, sub_1AF43A540);
              sub_1AF63515C(&v268, &v235);
              if (v273 == 1)
              {
                goto LABEL_160;
              }

LABEL_147:
              sub_1AFB930A8(&v268, sub_1AF635194);
              goto LABEL_148;
            }

            sub_1AF63515C(&v268, &v235);
            if (v273 == 2)
            {
              goto LABEL_165;
            }
          }

          break;
        }

        sub_1AFB930A8(v261, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v235);
        goto LABEL_147;
      }
    }

    v90 = *(v81 + 16);
    v91 = *(v90 + 128);
    if (*(v91 + 16))
    {
      v92 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
      if ((v93 & 1) != 0 && *(*(v90 + 24) + 16 * *(*(v91 + 56) + 8 * v92) + 32) == &type metadata for InverseWorldTransform)
      {
        goto LABEL_99;
      }
    }

    *&v256[0] = &type metadata for InverseWorldTransform;
    *(&v256[0] + 1) = &off_1F2529E00;
    LOBYTE(v257) = 0;
    v94 = v206[13];
    v95 = *(v94 + 16);
    if (!v95)
    {
      goto LABEL_140;
    }

    v96 = v94 + 32;

    v97 = 0;
    while (1)
    {
      sub_1AFB93040(v96, v261, sub_1AF43A540);
      sub_1AF63515C(v261, &v268);
      sub_1AF63515C(v256, v271);
      if (BYTE8(v270) <= 2u)
      {
        break;
      }

      if (BYTE8(v270) == 3)
      {
        sub_1AF63515C(&v268, &v235);
        if (v273 != 3)
        {
          goto LABEL_114;
        }

LABEL_133:
        sub_1AF0FBA54(&v235, &v229);
        sub_1AF0FBA54(v271, v276);
        v102 = *(&v230 + 1);
        v103 = v231;
        sub_1AF441150(&v229, *(&v230 + 1));
        LOBYTE(v102) = sub_1AF640C98(v276, v102, v103);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v276);
        sub_1AFB930A8(v261, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v229);
        sub_1AF635250(&v268);
        if (v102)
        {
          goto LABEL_138;
        }

        goto LABEL_116;
      }

      if (BYTE8(v270) != 4)
      {
        sub_1AFB930A8(v261, sub_1AF43A540);
        if (v273 == 5)
        {
          v104 = vorrq_s8(*&v271[8], v272);
          if (!(*&vorr_s8(*v104.i8, *&vextq_s8(v104, v104, 8uLL)) | *v271))
          {
LABEL_137:
            sub_1AF635250(&v268);
LABEL_138:
            v106 = sub_1AFBFCA08(&v268);
            v107 = *(v105 + 48);
            if (v107)
            {
              v108 = *(v105 + 64);
              *(v107 + 8 * v108) = v11;
              *(v105 + 64) = v108 + 1;
            }

            (v106)(&v268, 0);

            sub_1AF635250(v256);
LABEL_99:
            if (++v11 == v203)
            {
              goto LABEL_96;
            }

            goto LABEL_100;
          }
        }

        goto LABEL_115;
      }

      sub_1AFB930A8(v261, sub_1AF43A540);
      sub_1AF63515C(&v268, &v235);
      if (v273 != 4)
      {
        goto LABEL_115;
      }

      v98 = v235;
      v99 = v271[0];
      sub_1AF635250(&v268);
      if (v98 == v99)
      {
        goto LABEL_138;
      }

LABEL_116:
      ++v97;
      v96 += 72;
      if (v95 == v97)
      {
        goto LABEL_141;
      }
    }

    if (!BYTE8(v270))
    {
      sub_1AFB930A8(v261, sub_1AF43A540);
      sub_1AF63515C(&v268, &v235);
      if (v273)
      {
        goto LABEL_115;
      }

      goto LABEL_128;
    }

    if (BYTE8(v270) == 1)
    {
      sub_1AFB930A8(v261, sub_1AF43A540);
      sub_1AF63515C(&v268, &v235);
      if (v273 != 1)
      {
        goto LABEL_115;
      }

LABEL_128:
      v100 = v235;
      v101 = *v271;
      sub_1AF635250(&v268);
      if (v100 == v101)
      {
        goto LABEL_138;
      }

      goto LABEL_116;
    }

    sub_1AF63515C(&v268, &v235);
    if (v273 != 2)
    {
LABEL_114:
      sub_1AFB930A8(v261, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v235);
LABEL_115:
      sub_1AFB930A8(&v268, sub_1AF635194);
      goto LABEL_116;
    }

    goto LABEL_133;
  }

LABEL_171:
  v129 = v190;
  v130 = *(v190 + 232);
  v276[0] = *(v190 + 216);
  v276[1] = v130;
  v277 = *(v190 + 248);
  sub_1AF6B06C0(v4, v276, 0x200000000, v256);
  if (*&v256[0])
  {
    if (v260 >= 1 && v258)
    {
      v131 = v257;
      v132 = v257 + 48 * v258;
      v192 = v132;
      v193 = v259;
      do
      {
        v133 = *(v131 + 40);
        v134 = *(v133 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v134);
        os_unfair_lock_lock(*(v133 + 344));
        v135 = *(v133 + 24);

        *&v270 = 0;
        v269 = 0u;
        v268 = 0u;
        memset(v261, 0, 40);
        v136 = sub_1AF65A4B4(v135, 0, 0, &type metadata for EmitterRuntime, &off_1F2563418, &v268, v261);

        sub_1AFB93108(v261, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
        sub_1AFB93108(&v268, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v136);
        }

        else
        {
          v198 = v131;
          v137 = *(v133 + 232);
          v138 = *(v133 + 240);
          v139 = *(v133 + 120);
          v206 = *(v133 + 28);
          LODWORD(v205) = *(v133 + 32);
          v140 = *(v133 + 16);
          v141 = *(v133 + 40);
          v142 = v141[200];
          v204 = *(*(v140 + 88) + 8 * v136 + 32);

          if ((v142 & 1) != 0 || *(v204 + 200) == 1)
          {
            *(v140 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v141 = *(v133 + 40);
          }

          v143 = v141[212];
          LODWORD(v197) = v139;
          if (v143)
          {
            LODWORD(v196) = 0;
          }

          else
          {
            LODWORD(v196) = *(v204 + 212);
          }

          v195 = v141[208];
          v199 = *(v133 + 128);
          v144 = *(v133 + 256);
          sub_1AF5B4FCC(v141, v137, v138, 0, v133);
          v200 = *(v133 + 256);
          v201 = v144;
          v145 = v200 - v144;
          if (v200 == v144)
          {
            v146 = 0;
          }

          else
          {
            v146 = v144;
          }

          v203 = v146;
          *&v261[0] = v146;
          v147 = *(*(v133 + 40) + 24);
          v148 = *(v147 + 16);
          if (v148)
          {
            v202 = v5;
            v149 = v147 + 32;
            v194 = v147;

            for (i = 0; i != v148; ++i)
            {
              v151 = v149 + 40 * i;
              if ((*(v151 + 32) & 1) == 0)
              {
                v152 = v204[3];
                v153 = *(v152 + 16);
                if (v153)
                {
                  v154 = (v152 + 32);
                  while (*v154 != *v151)
                  {
                    v154 += 5;
                    if (!--v153)
                    {
                      goto LABEL_189;
                    }
                  }
                }

                else
                {
LABEL_189:
                  sub_1AF640BC8();
                }
              }
            }

            v5 = v202;
          }

          if (*(v140 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v140 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v133 + 72) * v145);
          }

          if (*(v133 + 184))
          {
            v155 = 0;
          }

          else
          {
            v155 = *(v133 + 168);
          }

          *&v235 = 0;

          MEMORY[0x1EEE9AC00](v156, v157);
          v158 = v206;
          v159 = v205;
          v180 = 0u;
          v181 = v261;
          v182 = v199;
          v183 = &v235;
          LOBYTE(v184) = v195;
          HIDWORD(v184) = v136;
          LOBYTE(v185) = v196;
          v186 = v193;
          *&v269 = v155;
          DWORD2(v269) = -1;
          *&v270 = v201;
          *(&v270 + 1) = v200;
          *v271 = v201;
          *&v271[8] = v200;
          *&v268 = v201;
          *(&v268 + 1) = v200;
          if (v145 < 1)
          {

            v131 = v198;
          }

          else
          {
            v131 = v198;
            do
            {
              LOBYTE(v229) = v159;
              sub_1AF6248A8(v136, v158 | (v159 << 32), v197, v140, &v268, sub_1AF5C5ACC);
              v159 = v205;
              v158 = v206;
            }

            while ((*(&v268 + 1) - v268) > 0);
          }

          v160 = *(v133 + 192);
          if (v160)
          {
            v161 = *(v133 + 208);
            sub_1AF75D364(v201, v200, v160);
            sub_1AF75D364(v201, v200, v161);
          }

          v132 = v192;
        }

        v131 += 48;
        os_unfair_lock_unlock(*(v133 + 344));
        os_unfair_lock_unlock(*(v133 + 376));
      }

      while (v131 != v132);
    }

    sub_1AFB91B88(v256, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    v4 = v189;
    v129 = v190;
  }

  v162 = *(v129 + 152);
  v216[0] = *(v129 + 136);
  v216[1] = v162;
  v217 = *(v129 + 168);
  sub_1AF6B06C0(v4, v216, 0x200000000, v261);
  v237 = v261[2];
  v238 = v262;
  v239 = v263;
  v240 = v264;
  v235 = v261[0];
  v236 = v261[1];
  v201 = *&v261[0];
  if (*&v261[0])
  {
    v165 = *(&v261[2] + 1);
    v166 = *(&v262 + 1);
    v206 = *(&v263 + 1);
    v200 = v263;
    v266 = *(v261 + 8);
    v267 = *(&v261[1] + 8);
    MEMORY[0x1EEE9AC00](v163, v164);
    v198 = &v180 + 8;
    v199 = v167;
    v182 = v4;
    v183 = v129;
    v184 = v4;
    v185 = v187;
    LOBYTE(v186) = v188;
    if (v167 > 0 && v166)
    {
      v197 = &v187;
      v168 = v206[4];
      LODWORD(v205) = *(v200 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v231 = v237;
      v232 = v238;
      v233 = v239;
      v234 = v240;
      v229 = v235;
      v230 = v236;
      sub_1AF5DD298(&v229, &v268);
      for (j = v165 + 24; ; j += 48)
      {
        v171 = *(j - 24);
        v170 = *(j - 20);
        v172 = *(j - 16);
        v173 = *(j - 8);
        v204 = *j;
        v174 = *(j + 8);
        v175 = *(j + 16);
        v202 = v5;
        v203 = v174;
        if (v205)
        {
          v176 = *(v175 + 376);

          os_unfair_lock_lock(v176);
          os_unfair_lock_lock(*(v175 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v168);

        v178 = v206;
        sub_1AF630914(v177, v206, v265);

        LOBYTE(v210) = 1;
        *&v268 = v200;
        *(&v268 + 1) = v175;
        *&v269 = v178;
        *(&v269 + 1) = v172;
        *&v270 = (v170 - v171 + v172);
        *(&v270 + 1) = v199;
        *v271 = v171;
        *&v271[8] = v170;
        *&v271[16] = 0;
        v272.i64[0] = 0;
        v272.i8[8] = 1;
        v273 = v173;
        v274 = v204;
        v275 = v203;
        v5 = v202;
        sub_1AF889684(&v268, sub_1AFB92674, v198);
        if (v5)
        {
          break;
        }

        v213 = v201;
        v214 = v266;
        v215 = v267;
        sub_1AF630994(v206, &v213, v265);
        sub_1AF62D29C(v175);
        ecs_stack_allocator_pop_snapshot(v168);
        if (v205)
        {
          os_unfair_lock_unlock(*(v175 + 344));
          os_unfair_lock_unlock(*(v175 + 376));
        }

        if (!--v166)
        {
          v179 = MEMORY[0x1E69E6720];
          sub_1AFB91B88(v261, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
          sub_1AFB91B88(v261, &qword_1ED725EA0, &type metadata for QueryResult, v179, sub_1AFB936C8);
          return;
        }
      }

      v210 = v201;
      v211 = v266;
      v212 = v267;
      sub_1AF630994(v206, &v210, v265);
      sub_1AF62D29C(v175);
      ecs_stack_allocator_pop_snapshot(v168);
      os_unfair_lock_unlock(*(v175 + 344));
      os_unfair_lock_unlock(*(v175 + 376));
      __break(1u);
    }

    else
    {
      sub_1AFB91B88(v261, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    }
  }
}

uint64_t sub_1AFB88544(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) == 1 && *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16) == 0)
  {
    *(a3 + 536) = 0u;
  }

  if (*(*(a3 + 256) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a3 + 256);
    sub_1AFB92608();
    sub_1AFDFE4B8();
    *(a3 + 256) = v15;
  }

  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  if ((*(a3 + 336) & 1) == 0)
  {
    swift_unknownObjectRelease();
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    swift_unknownObjectRelease();
    *(a3 + 456) = 0;
    *(a3 + 424) = 0u;
    *(a3 + 440) = 0u;
  }

  sub_1AFB7F240();
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  v12 = a1[4];

  v13 = sub_1AF64F35C(v12, 2);

  if (v13)
  {
    return sub_1AFB8033C(a1, a2, a3, a7);
  }

  return result;
}

void sub_1AFB88698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  v7 = *(v2 + 144);
  v8 = *(v2 + 148);
  v9 = *(v2 + 160);
  v10 = *(v2 + 168);
  v11 = *(v2 + 152) | 1;
  v199 = *(v2 + 136);
  v200 = v7;
  v201 = v8;
  v202 = v11;
  v203 = v9;
  v204 = v10;

  sub_1AF6B06C0(a1, &v199, a2 & 0xFFFFFFFFFFLL, v181);

  if (*v181)
  {
    if (v184 <= 0 || (v168 = *(&v182 + 1)) == 0)
    {
      sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      goto LABEL_22;
    }

    v161 = v2;
    v162 = a2;
    v163 = a1;
    v167 = *&v181[40];
    v12 = *(&v183 + 1);
    v176 = v183;
    v13 = *(v183 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v14 = *(*(&v183 + 1) + 32);
    v189 = *v181;
    v190 = *&v181[8];
    v191 = *&v181[24];
    *&v185[32] = *&v181[32];
    v186 = v182;
    v187 = v183;
    v188 = v184;
    *v185 = *v181;
    *&v185[16] = *&v181[16];
    sub_1AF5DD298(v185, v180);
    v15 = 0;
    v166 = v12;
    v165 = v13;
    v164 = v14;
    while (1)
    {
      v16 = (v167 + 48 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v16 + 2);
      v170 = *(v16 + 3);
      v20 = *(v16 + 4);
      v21 = *(v16 + 5);
      if (v13)
      {
        v22 = *(v21 + 376);

        os_unfair_lock_lock(v22);
        os_unfair_lock_lock(*(v21 + 344));
      }

      else
      {
      }

      v174 = v6;
      ecs_stack_allocator_push_snapshot(v14);
      v23 = *(v12 + 4);
      v197[0] = *(v12 + 3);
      v197[1] = v23;
      v198 = v12[10];
      v24 = v12[4];
      v25 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;

      v12[6] = ecs_stack_allocator_allocate(v24, 48 * v25, 8);
      v12[7] = v25;
      v12[9] = 0;
      v12[10] = 0;
      v12[8] = 0;

      v26 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v19, v170, v20, v12);
      v27 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v19, v170, v20, v12);
      v28 = v27;
      v172 = v15;
      if (v19)
      {
        if (v20)
        {
          do
          {
            v30 = *v19++;
            v29 = v30;
            v31 = *(v21 + 16);

            if (*(v21 + 184))
            {
              goto LABEL_173;
            }

            v32 = *(*(v21 + 168) + 4 * v29);
            v33 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

            v34 = *(v21 + 28);
            v35 = *(v21 + 32);

            LOBYTE(v180[0]) = v35;
            sub_1AFB7BFB0(v32 | (v33 << 32), v34 | (v35 << 32), v26, v28, v176, 1);

            v28 += 848;
            v26 += 104;
          }

          while (--v20);
        }
      }

      else if (v17 != v18)
      {
        v36 = v27 + 848 * v17;
        v37 = v26 + 104 * v17;
        while (1)
        {
          v38 = *(v21 + 16);

          if (*(v21 + 184))
          {
            break;
          }

          v39 = *(*(v21 + 168) + 4 * v17);
          v40 = v17 + 1;
          v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39 + 8);

          v42 = *(v21 + 28);
          v43 = *(v21 + 32);

          LOBYTE(v180[0]) = v43;
          sub_1AFB7BFB0(v39 | (v41 << 32), v42 | (v43 << 32), v37, v36, v176, 1);

          v36 += 848;
          v37 += 104;
          v17 = v40;
          if (v18 == v40)
          {
            goto LABEL_18;
          }
        }

LABEL_173:
        sub_1AFDFE518();
        __break(1u);
        return;
      }

LABEL_18:
      v12 = v166;
      v6 = v174;
      sub_1AF630994(v166, &v189, v197);
      sub_1AF62D29C(v21);
      v14 = v164;
      ecs_stack_allocator_pop_snapshot(v164);
      v13 = v165;
      if (v165)
      {
        os_unfair_lock_unlock(*(v21 + 344));
        os_unfair_lock_unlock(*(v21 + 376));
      }

      v15 = v172 + 1;
      if (v172 + 1 == v168)
      {
        v44 = MEMORY[0x1E69E6720];
        sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
        sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, v44, sub_1AFB936C8);
        a2 = v162;
        a1 = v163;
        v3 = v161;
        break;
      }
    }
  }

LABEL_22:
  v45 = *(v3 + 192);
  v195[0] = *(v3 + 176);
  v195[1] = v45;
  v196 = *(v3 + 208);
  sub_1AF6B06C0(a1, v195, a2 & 0xFFFFFFFFFFLL, v185);
  if (!*v185)
  {
    return;
  }

  if (v188 <= 0 || (v173 = *(&v186 + 1)) == 0)
  {
    v159 = MEMORY[0x1E69E6720];
    goto LABEL_171;
  }

  v171 = *&v185[40];
  v46 = *(&v187 + 1);
  v47 = *(v187 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v177 = *(*(&v187 + 1) + 32);
  v192 = *v185;
  v193 = *&v185[8];
  v194 = *&v185[24];
  v180[2] = *&v185[32];
  v180[3] = v186;
  v180[4] = v187;
  v180[5] = v188;
  v180[0] = *v185;
  v180[1] = *&v185[16];
  sub_1AF5DD298(v180, v178);
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v169 = v47;
  do
  {
    v175 = v6;
    v50 = (v171 + 48 * v48);
    v51 = *v50;
    v52 = v50[1];
    v54 = *(v50 + 2);
    v53 = *(v50 + 3);
    v56 = *(v50 + 4);
    v55 = *(v50 + 5);
    if (v47)
    {
      v57 = *(v55 + 376);

      os_unfair_lock_lock(v57);
      os_unfair_lock_lock(*(v55 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v177);
    v58 = *(v46 + 64);
    v178[0] = *(v46 + 48);
    v178[1] = v58;
    v179 = *(v46 + 80);
    v59 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
    *(v46 + 48) = ecs_stack_allocator_allocate(*(v46 + 32), 48 * v59, 8);
    *(v46 + 56) = v59;
    *(v46 + 72) = 0;
    *(v46 + 80) = 0;
    *(v46 + 64) = 0;
    v60 = sub_1AF64B110(&type metadata for ParticleSubSpawn.State, &off_1F25668F8, v54, v53, v56, v46);
    if (!v54)
    {
      if (v51 == v52)
      {
        goto LABEL_101;
      }

      v109 = v52 - v51;
      v110 = v60 + (v51 << 6);
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *v110;
        if (isUniquelyReferenced_nonNull_native)
        {
          v113 = *(v112 + 2);
          v114 = swift_isUniquelyReferenced_nonNull_native();
          *v110 = v112;
          if ((v114 & 1) == 0)
          {
            v112 = sub_1AF42250C(0, v113, 1, v112);
            *v110 = v112;
          }

          if (v113)
          {
            v115 = *(v112 + 2) - v113;
            memmove(v112 + 32, &v112[16 * v113 + 32], 16 * v115);
            *(v112 + 2) = v115;
          }

          *v110 = v112;
          if (!*(v110 + 8))
          {
            goto LABEL_124;
          }
        }

        else
        {
          v116 = v49;
          if (*(v112 + 3) >= 2uLL)
          {
            sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            v116 = swift_allocObject();
            v117 = j__malloc_size_0(v116);
            v118 = v117 - 32;
            if (v117 < 32)
            {
              v118 = v117 - 17;
            }

            v116[2] = 0;
            v116[3] = 2 * (v118 >> 4);
          }

          *v110 = v116;

          if (!*(v110 + 8))
          {
            goto LABEL_124;
          }
        }

        v119 = swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v110 + 8);
        if (!v119)
        {
          v124 = v49;
          if (*(v120 + 3) >= 2uLL)
          {
            sub_1AFB91B24(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
            v124 = swift_allocObject();
            v125 = j__malloc_size_0(v124);
            v126 = v125 - 32;
            if (v125 < 32)
            {
              v126 = v125 - 17;
            }

            v124[2] = 0;
            v124[3] = 2 * (v126 >> 4);
          }

          *(v110 + 8) = v124;

          if (!*(v110 + 16))
          {
            goto LABEL_142;
          }

LABEL_131:
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v128 = *(v110 + 16);
          if (v127)
          {
            v129 = *(v128 + 2);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *(v110 + 16) = v128;
            if ((v130 & 1) == 0)
            {
              v128 = sub_1AF42250C(0, v129, 1, v128);
              *(v110 + 16) = v128;
            }

            if (v129)
            {
              v131 = *(v128 + 2) - v129;
              memmove(v128 + 32, &v128[16 * v129 + 32], 16 * v131);
              *(v128 + 2) = v131;
            }

            *(v110 + 16) = v128;
          }

          else
          {
            v132 = v49;
            if (*(v128 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
              v132 = swift_allocObject();
              v133 = j__malloc_size_0(v132);
              v134 = v133 - 32;
              if (v133 < 32)
              {
                v134 = v133 - 17;
              }

              v132[2] = 0;
              v132[3] = 2 * (v134 >> 4);
            }

            *(v110 + 16) = v132;
          }

          goto LABEL_142;
        }

        v121 = *(v120 + 2);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        *(v110 + 8) = v120;
        if ((v122 & 1) == 0)
        {
          v120 = sub_1AF42458C(0, v121, 1, v120);
          *(v110 + 8) = v120;
        }

        if (v121)
        {
          v123 = *(v120 + 2) - v121;
          memmove(v120 + 32, &v120[16 * v121 + 32], 16 * v123);
          *(v120 + 2) = v123;
        }

        *(v110 + 8) = v120;
LABEL_124:
        if (*(v110 + 16))
        {
          goto LABEL_131;
        }

LABEL_142:
        v135 = (v110 + 24);
        if (*(v110 + 24))
        {
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v137 = *v135;
          if (v136)
          {
            v138 = *(v137 + 2);
            v139 = swift_isUniquelyReferenced_nonNull_native();
            *v135 = v137;
            if ((v139 & 1) == 0)
            {
              v137 = sub_1AF42053C(0, v138, 1, v137);
              *v135 = v137;
            }

            sub_1AF64F028(0, v138, 0);
            *v135 = v137;
          }

          else
          {
            v140 = v49;
            if (*(v137 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
              v140 = swift_allocObject();
              v141 = j__malloc_size_0(v140);
              v142 = v141 - 32;
              if (v141 < 32)
              {
                v142 = v141 - 17;
              }

              v140[2] = 0;
              v140[3] = 2 * (v142 >> 4);
            }

            *v135 = v140;
          }
        }

        v143 = (v110 + 48);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v145 = *(v110 + 48);
        if (v144)
        {
          v146 = *(v145 + 2);
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *v143 = v145;
          if ((v147 & 1) == 0)
          {
            v145 = sub_1AF41FDF8(0, v146, 1, v145);
            *v143 = v145;
          }

          sub_1AF64C540(0, v146, 0);
          *v143 = v145;
        }

        else
        {
          v148 = v49;
          if (*(v145 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
            v148 = swift_allocObject();
            v149 = j__malloc_size_0(v148);
            v150 = v149 - 32;
            if (v149 < 32)
            {
              v150 = v149 - 29;
            }

            v148[2] = 0;
            v148[3] = 2 * (v150 >> 2);
          }

          *v143 = v148;
        }

        v151 = (v110 + 56);
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v153 = *(v110 + 56);
        if (v152)
        {
          v154 = *(v153 + 2);
          v155 = swift_isUniquelyReferenced_nonNull_native();
          *v151 = v153;
          if ((v155 & 1) == 0)
          {
            v153 = sub_1AF420E8C(0, v154, 1, v153);
            *v151 = v153;
          }

          sub_1AF64F01C(0, v154, 0);
          *v151 = v153;
        }

        else
        {
          v156 = v49;
          if (*(v153 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &unk_1ED726940, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
            v156 = swift_allocObject();
            v157 = j__malloc_size_0(v156);
            v158 = v157 - 32;
            if (v157 < 32)
            {
              v158 = v157 - 29;
            }

            v156[2] = 0;
            v156[3] = 2 * (v158 >> 2);
          }

          *v151 = v156;
        }

        v110 += 64;
        if (!--v109)
        {
          goto LABEL_101;
        }
      }
    }

    if (v56)
    {
      v61 = (v60 + 56);
      do
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v61 - 7);
        if (v62)
        {
          v64 = *(v63 + 2);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 - 7) = v63;
          if ((v65 & 1) == 0)
          {
            v63 = sub_1AF42250C(0, v64, 1, v63);
            *(v61 - 7) = v63;
          }

          if (v64)
          {
            v66 = *(v63 + 2) - v64;
            memmove(v63 + 32, &v63[16 * v64 + 32], 16 * v66);
            *(v63 + 2) = v66;
          }

          *(v61 - 7) = v63;
          if (!*(v61 - 6))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v67 = v49;
          if (*(v63 + 3) >= 2uLL)
          {
            sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            v67 = swift_allocObject();
            v68 = j__malloc_size_0(v67);
            v69 = v68 - 32;
            if (v68 < 32)
            {
              v69 = v68 - 17;
            }

            v67[2] = 0;
            v67[3] = 2 * (v69 >> 4);
          }

          *(v61 - 7) = v67;

          if (!*(v61 - 6))
          {
            goto LABEL_53;
          }
        }

        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v61 - 6);
        if (!v70)
        {
          v75 = v49;
          if (*(v71 + 3) >= 2uLL)
          {
            sub_1AFB91B24(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
            v75 = swift_allocObject();
            v76 = j__malloc_size_0(v75);
            v77 = v76 - 32;
            if (v76 < 32)
            {
              v77 = v76 - 17;
            }

            v75[2] = 0;
            v75[3] = 2 * (v77 >> 4);
          }

          *(v61 - 6) = v75;

          if (!*(v61 - 5))
          {
            goto LABEL_71;
          }

LABEL_60:
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v61 - 5);
          if (v78)
          {
            v80 = *(v79 + 2);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v61 - 5) = v79;
            if ((v81 & 1) == 0)
            {
              v79 = sub_1AF42250C(0, v80, 1, v79);
              *(v61 - 5) = v79;
            }

            if (v80)
            {
              v82 = *(v79 + 2) - v80;
              memmove(v79 + 32, &v79[16 * v80 + 32], 16 * v82);
              *(v79 + 2) = v82;
            }

            *(v61 - 5) = v79;
          }

          else
          {
            v83 = v49;
            if (*(v79 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
              v83 = swift_allocObject();
              v84 = j__malloc_size_0(v83);
              v85 = v84 - 32;
              if (v84 < 32)
              {
                v85 = v84 - 17;
              }

              v83[2] = 0;
              v83[3] = 2 * (v85 >> 4);
            }

            *(v61 - 5) = v83;
          }

          goto LABEL_71;
        }

        v72 = *(v71 + 2);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 - 6) = v71;
        if ((v73 & 1) == 0)
        {
          v71 = sub_1AF42458C(0, v72, 1, v71);
          *(v61 - 6) = v71;
        }

        if (v72)
        {
          v74 = *(v71 + 2) - v72;
          memmove(v71 + 32, &v71[16 * v72 + 32], 16 * v74);
          *(v71 + 2) = v74;
        }

        *(v61 - 6) = v71;
LABEL_53:
        if (*(v61 - 5))
        {
          goto LABEL_60;
        }

LABEL_71:
        v86 = v61 - 4;
        if (*(v61 - 4))
        {
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v88 = *v86;
          if (v87)
          {
            v89 = *(v88 + 2);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            *v86 = v88;
            if ((v90 & 1) == 0)
            {
              v88 = sub_1AF42053C(0, v89, 1, v88);
              *v86 = v88;
            }

            sub_1AF64F028(0, v89, 0);
            *v86 = v88;
          }

          else
          {
            v91 = v49;
            if (*(v88 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
              v91 = swift_allocObject();
              v92 = j__malloc_size_0(v91);
              v93 = v92 - 32;
              if (v92 < 32)
              {
                v93 = v92 - 17;
              }

              v91[2] = 0;
              v91[3] = 2 * (v93 >> 4);
            }

            *v86 = v91;
          }
        }

        v94 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v61 - 1);
        if (v94)
        {
          v96 = *(v95 + 2);
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 - 1) = v95;
          if ((v97 & 1) == 0)
          {
            v95 = sub_1AF41FDF8(0, v96, 1, v95);
            *(v61 - 1) = v95;
          }

          if (v96)
          {
            v98 = *(v95 + 2) - v96;
            memmove(v95 + 32, &v95[4 * v96 + 32], 4 * v98);
            *(v95 + 2) = v98;
          }

          *(v61 - 1) = v95;
        }

        else
        {
          v99 = v49;
          if (*(v95 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
            v99 = swift_allocObject();
            v100 = j__malloc_size_0(v99);
            v101 = v100 - 32;
            if (v100 < 32)
            {
              v101 = v100 - 29;
            }

            v99[2] = 0;
            v99[3] = 2 * (v101 >> 2);
          }

          *(v61 - 1) = v99;
        }

        v102 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *v61;
        if (v102)
        {
          v104 = *(v103 + 2);
          v105 = swift_isUniquelyReferenced_nonNull_native();
          *v61 = v103;
          if ((v105 & 1) == 0)
          {
            v103 = sub_1AF420E8C(0, v104, 1, v103);
            *v61 = v103;
          }

          sub_1AF64F01C(0, v104, 0);
          *v61 = v103;
        }

        else
        {
          v106 = v49;
          if (*(v103 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &unk_1ED726940, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
            v106 = swift_allocObject();
            v107 = j__malloc_size_0(v106);
            v108 = v107 - 32;
            if (v107 < 32)
            {
              v108 = v107 - 29;
            }

            v106[2] = 0;
            v106[3] = 2 * (v108 >> 2);
          }

          *v61 = v106;
        }

        v61 += 8;
        --v56;
      }

      while (v56);
    }

LABEL_101:
    v6 = v175;
    sub_1AF630994(v46, &v192, v178);
    sub_1AF62D29C(v55);
    ecs_stack_allocator_pop_snapshot(v177);
    v47 = v169;
    if (v169)
    {
      os_unfair_lock_unlock(*(v55 + 344));
      os_unfair_lock_unlock(*(v55 + 376));
    }

    ++v48;
  }

  while (v48 != v173);
  v160 = MEMORY[0x1E69E6720];
  sub_1AFB91B88(v185, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  v159 = v160;
LABEL_171:
  sub_1AFB91B88(v185, &qword_1ED725EA0, &type metadata for QueryResult, v159, sub_1AFB936C8);
}