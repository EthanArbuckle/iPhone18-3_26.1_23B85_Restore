uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  v142 = 0;
  v143 = 0;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v141, a4);
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v140, a5);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v139, a6);
  v22 = a12[2];
  v23 = a12[6];
  if (v22 <= v23)
  {
    v24 = a12;
    v132 = *(a13 + 60);
    v131 = a3;
    while (1)
    {
      v26 = *(a3 + 8);
      if (v26)
      {
        v27 = *(a11 + 24);
        v28 = (HIDWORD(v27) * v132) + 4 * v22;
        v29 = *(*(v26 + 40) + 8 * *(a11 + 60));
        if (*(v29 + 12) - 1 < v28)
        {
          v28 = *(v29 + 12) - 1;
        }

        if (*(v26 + 104) == 1)
        {
          v30 = (*(v29 + 8 * v27 + 24) + 8 * v28);
        }

        else
        {
          v32 = (v28 * *(v26 + 108)) >> *(v26 + 112);
          if (v32 >= *(v29 + 20) - 1)
          {
            LODWORD(v32) = *(v29 + 20) - 1;
          }

          v30 = (*(v29 + 8 * v27 + 24) + 8 * v32);
        }

        v33 = *v30;
        v34 = HIDWORD(*v30);
        v35 = a1 + *v30;
        v36 = a2 - *v30;
        if (a2 >= *v30)
        {
          v31 = (a1 + v33);
        }

        else
        {
          v31 = 0;
        }

        if (v36 < HIDWORD(v33))
        {
          v34 = a2 - v33;
        }

        v37 = a2 >= v33;
        v38 = v35 + v34;
        if (!v37)
        {
          v38 = 0;
        }

        v142 = v31;
        v143 = v38;
      }

      else
      {
        v31 = v142;
      }

      v39 = (a14 + a17);
      v40 = (a14 + a17 + a17);
      v41 = &v40->i8[a17];
      if (!v31)
      {
        goto LABEL_59;
      }

      v135 = v22;
      v42 = a16;
      if (a16)
      {
        if (v22 == v24[2])
        {
          v43 = v24[3] + 1;
          v44 = &v40->i8[a17];
          v45 = (a14 + a17 + a17);
          v46 = (a14 + a17);
          v47 = a14;
          do
          {
            a14 = v47;
            v39 = v46;
            v40 = v45;
            v41 = v44;
            v44 = v45;
            v45 = v46;
            v46 = v47;
            v47 = a16;
            --v43;
          }

          while (v43);
        }

        if (v22 == v23)
        {
          v48 = v24[7];
          if (v48 == 1)
          {
            goto LABEL_33;
          }

          if (v48 == 2)
          {
            goto LABEL_31;
          }

          if (v48 == 3)
          {
            break;
          }
        }
      }

      v42 = v41;
LABEL_33:
      v49 = *v24;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v142, v49);
      v24 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v142, a7, v138);
        v24 = a12;
        v50.i32[0] = 0;
        v51 = vld1q_dup_s16(&v140);
        v57 = vdupq_n_s16(v139);
        v52 = vdupq_n_s16(v141);
        v53 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EDD0);
        v54 = v138[0];
        v55 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EE70);
        v56 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EE90);
        v57.i16[1] = v141;
        v57.i16[3] = v139;
        v57.i16[5] = v141;
        v57.i16[7] = v139;
        v58 = vqtbl2q_s8(*(&v53 - 1), xmmword_296B6EE60);
        v148.val[0] = v56;
        v148.val[1] = v53;
        v59 = vqtbl2q_s8(v148, xmmword_296B6EE80);
        v60 = v55;
        v61 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EEA0);
        v62 = vqtbl2q_s8(*(&v53 - 1), xmmword_296B6EE60);
        v63 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EEB0);
        v64 = v57;
        v65 = vqtbl2q_s8(*v63.i8, xmmword_296B6EDD0);
        v66 = v53;
        v67 = vqtbl2q_s8(*v63.i8, xmmword_296B6EE80);
        v68 = v61;
        v69 = v138[1];
        v70 = vqtbl2q_s8(*v69.i8, xmmword_296B6EE70);
        v71 = vqtbl2q_s8(*v69.i8, xmmword_296B6EEA0);
        v72 = v53;
        v73 = vqtbl2q_s8(*v71.i8, xmmword_296B6EE60);
        if (a12[4] == v49)
        {
          v74 = 4 - a12[5];
        }

        else
        {
          v74 = 4;
        }

        v75 = a12[1];
        v63.i32[0] = v75 & 2;
        v76 = vceqq_s32(v63, v50).u64[0];
        v150.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EEB0);
        v150.val[1] = v53;
        v77 = v57;
        v78 = vqtbl2q_s8(*v71.i8, xmmword_296B6EDD0);
        v79 = vdupq_lane_s32(v76, 0);
        v80 = vbslq_s8(v79, vqtbl2q_s8(v150, xmmword_296B6EE80), v78);
        v150.val[1] = v57;
        v81 = vbslq_s8(v79, v73, vqtbl2q_s8(v150, xmmword_296B6EDD0));
        v82 = vqtbl2q_s8(*v70.i8, xmmword_296B6EE60);
        v146.val[0] = vqtbl2q_s8(*v69.i8, xmmword_296B6EE90);
        v146.val[1] = v53;
        v83 = v57;
        v84 = vbslq_s8(v79, vqtbl2q_s8(v146, xmmword_296B6EE80), vqtbl2q_s8(*v70.i8, xmmword_296B6EDD0));
        v146.val[1] = v57;
        v85 = vbslq_s8(v79, v82, vqtbl2q_s8(v146, xmmword_296B6EDD0));
        v86 = v57;
        v87 = vbslq_s8(v79, v67, vqtbl2q_s8(*v68.i8, xmmword_296B6EDD0));
        v88 = vbslq_s8(v79, v62, v65);
        v89 = v57;
        v90 = vbslq_s8(v79, v59, vqtbl2q_s8(*v60.i8, xmmword_296B6EDD0));
        v91 = vbslq_s8(v79, v58, vqtbl2q_s8(*v56.i8, xmmword_296B6EDD0));
        if ((v75 & 2) != 0)
        {
          v74 -= 2;
        }

        if (v75)
        {
          v92 = vextq_s8(v90, v91, 8uLL).u64[0];
          v91 = vextq_s8(v91, v90, 8uLL);
          v93 = vextq_s8(v87, v88, 8uLL).u64[0];
          v88 = vextq_s8(v88, v87, 8uLL);
          v94 = vextq_s8(v84, v85, 8uLL).u64[0];
          v85 = vextq_s8(v85, v84, 8uLL);
          v95 = vextq_s8(v80, v81, 8uLL).u64[0];
          --v74;
          v81 = vextq_s8(v81, v80, 8uLL);
          v90.i64[0] = v92;
          v87.i64[0] = v93;
          v84.i64[0] = v94;
          v80.i64[0] = v95;
        }

        v22 = v135;
        if (v74 <= 1)
        {
          v96 = 0;
        }

        else
        {
          *a14 = v91;
          *v39 = v88;
          v74 -= 2;
          v91.i64[0] = v90.i64[0];
          v88.i64[0] = v87.i64[0];
          *v40 = v85;
          v85.i64[0] = v84.i64[0];
          *v42 = v81;
          v81.i64[0] = v80.i64[0];
          v96 = 16;
        }

        if (v74 >= 1)
        {
          *(a14->i64 + v96) = v91.i64[0];
          *(v39->i64 + v96) = v88.i64[0];
          *(v40->i64 + v96) = v85.i64[0];
          *(v42->i64 + v96) = v81.i64[0];
          v96 |= 8uLL;
        }

        v97 = a12[4];
        if (v97 == v49)
        {
          goto LABEL_59;
        }

        a14 = (a14 + v96);
        v39 = (v39 + v96);
        v40 = (v40 + v96);
        v42 = (v42 + v96);
        ++v49;
      }

      else
      {
        v97 = a12[4];
      }

      v98 = v24[5];
      v99 = v98 != 0;
      if (v97 != 0 || !v99)
      {
        v100 = v97 - v99;
        if (v49 <= v100)
        {
          v101 = v100 - v49 + 1;
          do
          {
            v104 = v42;
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v142, a7, v137);
            v105 = &v140;
            v144.val[1] = vld1q_dup_s16(v105);
            v102 = &v139;
            v147.val[1] = vld1q_dup_s16(v102);
            v103 = &v141;
            v147.val[0] = vld1q_dup_s16(v103);
            v147.val[1] = vqtbl2q_s8(v147, xmmword_296B6EDD0);
            v144.val[0] = v137[1];
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EEA0);
            v106 = vqtbl2q_s8(v147, xmmword_296B6EE60);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EEB0);
            v107 = vqtbl2q_s8(v147, xmmword_296B6EE80);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EE70);
            v108 = vqtbl2q_s8(v147, xmmword_296B6EE60);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EE90);
            v109 = vqtbl2q_s8(v147, xmmword_296B6EE80);
            v144.val[0] = v137[0];
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EEA0);
            v110 = vqtbl2q_s8(v147, xmmword_296B6EE60);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EEB0);
            v111 = vqtbl2q_s8(v147, xmmword_296B6EE80);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EE70);
            v112 = vqtbl2q_s8(v147, xmmword_296B6EE60);
            v147.val[0] = vqtbl2q_s8(v144, xmmword_296B6EE90);
            *a14 = v112;
            a14[1] = vqtbl2q_s8(v147, xmmword_296B6EE80);
            a14 += 2;
            *v39 = v110;
            v39[1] = v111;
            v39 += 2;
            *v40 = v108;
            v40[1] = v109;
            v40 += 2;
            v42 += 2;
            *v104 = v106;
            v104[1] = v107;
            --v101;
          }

          while (v101);
          v24 = a12;
          v98 = a12[5];
          a3 = v131;
        }
      }

      if (v98)
      {
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v142, a7, v136);
        v24 = a12;
        v113 = vld1q_dup_s16(&v140);
        v145.val[1] = vld1q_dup_s16(&v139);
        v114 = &v141;
        v145.val[0] = vld1q_dup_s16(v114);
        v115 = vqtbl2q_s8(v145, xmmword_296B6EDD0);
        v117 = v136[0];
        v116 = v136[1];
        v145.val[0] = vqtbl2q_s8(*v116.i8, xmmword_296B6EEA0);
        v118 = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE60);
        v149.val[0] = vqtbl2q_s8(*v116.i8, xmmword_296B6EE70);
        v149.val[1] = v115;
        v119 = vqtbl2q_s8(v149, xmmword_296B6EE60);
        v120 = v113;
        v149.val[0] = vqtbl2q_s8(*v117.i8, xmmword_296B6EEA0);
        v149.val[1] = v115;
        v121 = vqtbl2q_s8(v149, xmmword_296B6EE60);
        v149.val[1] = vqtbl2q_s8(*v117.i8, xmmword_296B6EE70);
        v122 = v115;
        v123 = vqtbl2q_s8(*(&v149 + 16), xmmword_296B6EE60);
        v124 = 4 - a12[5];
        if ((v124 & 2) != 0)
        {
          *a14 = v123;
          *v39 = v121;
          *v40 = v119;
          *v42 = v118;
          v22 = v135;
          if (v124)
          {
            v125 = vqtbl2q_s8(*v116.i8, xmmword_296B6EEB0);
            v126 = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80).u64[0];
            v127 = vqtbl2q_s8(*v116.i8, xmmword_296B6EE90);
            v128 = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80).u64[0];
            v129 = vqtbl2q_s8(*v117.i8, xmmword_296B6EEB0);
            v113.i64[0] = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80).u64[0];
            v130 = vqtbl2q_s8(*v117.i8, xmmword_296B6EE90);
            a14[1].i64[0] = vqtbl2q_s8(*(&v115 - 1), xmmword_296B6EE80).u64[0];
            v39[1].i64[0] = v113.i64[0];
            v40[1].i64[0] = v128;
            v42[1].i64[0] = v126;
          }

          goto LABEL_59;
        }

        a14->i64[0] = v123.i64[0];
        v39->i64[0] = v121.i64[0];
        v40->i64[0] = v119.i64[0];
        v42->i64[0] = v118.i64[0];
      }

      v22 = v135;
LABEL_59:
      a14 = &v41[a17];
      v23 = v24[6];
      v37 = v22++ >= v23;
      if (v37)
      {
        return result;
      }
    }

    v39 = a16;
LABEL_31:
    v40 = a16;
    goto LABEL_33;
  }

  return result;
}

_DWORD *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a11[3];
  v23 = *(a3 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v187, a4);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v186, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v185, a6);
  v30 = a12[2];
  v31 = a12[6];
  if (v30 <= v31)
  {
    v33 = vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
    v34 = vld1q_dup_f32(&v186);
    v35.i64[0] = __PAIR64__(v185, v187);
    v35.i64[1] = __PAIR64__(v185, v187);
    v36 = *(a13 + 60);
    while (1)
    {
      v37 = *(a3 + 8);
      if (v37)
      {
        v38 = *(*(v37 + 40) + 8 * a11[7].u32[1]);
        v39 = *(v38 + 12) - 1;
        if (v39 >= (HIDWORD(*&a11[3]) * v36) + 4 * v30)
        {
          v39 = (HIDWORD(*&a11[3]) * v36) + 4 * v30;
        }

        v40 = v38 + 8 * *&a11[3];
        if (*(v37 + 104) == 1)
        {
          v41 = (*(v40 + 24) + 8 * v39);
        }

        else
        {
          v42 = (v39 * *(v37 + 108)) >> *(v37 + 112);
          v43 = *(v38 + 20) - 1;
          if (v42 < v43)
          {
            v43 = v42;
          }

          v41 = (*(v40 + 24) + 8 * v43);
        }

        v44 = *v41;
        if (a2 <= v44)
        {
          v27 = 0;
          result = 0;
          v49 = 2 * a17 + a14 + a17;
          goto LABEL_108;
        }

        v45 = v44;
        if (a2 - v44 >= HIDWORD(v44))
        {
          v46 = HIDWORD(v44);
        }

        else
        {
          v46 = a2 - v44;
        }

        result = (v45 + a1);
        v27 = v46 + v45 + a1;
      }

      v47 = a14 + a17;
      v48 = a14 + a17 + a17;
      v49 = v48 + a17;
      if (result)
      {
        break;
      }

LABEL_108:
      a14 = v49 + a17;
      v31 = a12[6];
      if (v30++ >= v31)
      {
        return result;
      }
    }

    if (a16)
    {
      if (v30 == a12[2])
      {
        v50 = a12[3] + 1;
        v51 = v48 + a17;
        v52 = a14 + a17 + a17;
        v53 = a14 + a17;
        v54 = a14;
        do
        {
          a14 = v54;
          v47 = v53;
          v48 = v52;
          v49 = v51;
          v51 = v52;
          v52 = v53;
          v53 = v54;
          v54 = a16;
          --v50;
        }

        while (v50);
      }

      if (v30 == v31)
      {
        v55 = a12[7];
        switch(v55)
        {
          case 1u:
LABEL_27:
            v56 = a16;
LABEL_29:
            v57 = *a12;
            result += 4 * v57;
            if (result - 1 >= v27)
            {
              return result;
            }

            v58 = a12[1];
            if (v58)
            {
              if ((result + 4) <= v27)
              {
                v59 = *result;
              }

              else
              {
                v59 = 0uLL;
              }

              v61 = 0uLL;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = &result[v33];
              if (&result[v33 + 4] <= v27)
              {
                v61 = *v64;
              }

              v65 = (v64 + v33 * 4);
              if (&v65[1] <= v27)
              {
                v62 = *v65;
              }

              v66 = (v65 + v33 * 4);
              if (&v66[1] <= v27)
              {
                v63 = *v66;
              }

              v28.i32[0] = 0;
              v67 = vuzp1q_s32(v59, v34);
              v68 = vzip1q_s32(vuzp1q_s32(v67, v67), v35);
              v69 = v34;
              v69.i32[0] = v59.i32[2];
              v70 = vzip1q_s32(vuzp1q_s32(v69, v69), v35);
              v71 = vuzp2q_s32(v59, v34);
              v72 = vzip2q_s32(vuzp1q_s32(v71, v71), v35);
              v73 = vtrn2q_s32(v71, v59);
              v74 = vzip2q_s32(vuzp1q_s32(v73, v73), v35);
              v75 = vuzp1q_s32(v61, v34);
              v76 = vzip1q_s32(vuzp1q_s32(v75, v75), v35);
              v77 = v34;
              v77.i32[0] = v61.i32[2];
              v78 = vzip1q_s32(vuzp1q_s32(v77, v77), v35);
              v79 = vuzp2q_s32(v61, v34);
              v80 = vzip2q_s32(vuzp1q_s32(v79, v79), v35);
              v81 = vtrn2q_s32(v79, v61);
              v82 = vzip2q_s32(vuzp1q_s32(v81, v81), v35);
              v83 = vuzp1q_s32(v62, v34);
              v84 = vzip1q_s32(vuzp1q_s32(v83, v83), v35);
              v85 = v34;
              v85.i32[0] = v62.i32[2];
              v86 = vzip1q_s32(vuzp1q_s32(v85, v85), v35);
              v87 = vuzp2q_s32(v62, v34);
              v88 = vzip2q_s32(vuzp1q_s32(v87, v87), v35);
              v89 = vtrn2q_s32(v87, v62);
              v90 = vzip2q_s32(vuzp1q_s32(v89, v89), v35);
              v91 = vuzp1q_s32(v63, v34);
              v92 = vzip1q_s32(vuzp1q_s32(v91, v91), v35);
              v93 = v34;
              v93.i32[0] = v63.i32[2];
              v94 = vzip1q_s32(vuzp1q_s32(v93, v93), v35);
              v95 = vuzp2q_s32(v63, v34);
              v96 = vzip2q_s32(vuzp1q_s32(v95, v95), v35);
              v97 = vtrn2q_s32(v95, v63);
              v98 = vuzp1q_s32(v97, v97);
              v99 = vzip2q_s32(v98, v35);
              if (a12[4] == v57)
              {
                v100 = 4 - a12[5];
              }

              else
              {
                v100 = 4;
              }

              v98.i32[0] = a12[1] & 2;
              v101 = vdupq_lane_s32(*&vceqq_s32(v98, v28), 0);
              v102 = vbslq_s8(v101, v96, v99);
              v103 = vbslq_s8(v101, v92, v94);
              v104 = vbslq_s8(v101, v88, v90);
              v105 = vbslq_s8(v101, v84, v86);
              v106 = vbslq_s8(v101, v80, v82);
              v107 = vbslq_s8(v101, v76, v78);
              v108 = vbslq_s8(v101, v72, v74);
              if ((v58 & 2) != 0)
              {
                v100 -= 2;
              }

              v109 = v58 & 1;
              v110 = v100 - v109;
              v29.i32[0] = v109;
              v111 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v29, v28)), 0);
              v29 = vbslq_s8(v111, v108, vbslq_s8(v101, v68, v70));
              v112 = vbslq_s8(v111, v106, v107);
              v28 = vbslq_s8(v111, v104, v105);
              v113 = vbslq_s8(v111, v102, v103);
              if (v100 - v109 <= 1)
              {
                v118 = 0;
              }

              else
              {
                v114 = vbslq_s8(v101, v94, v92);
                v115 = vbslq_s8(v101, v86, v84);
                v116 = vbslq_s8(v101, v78, v76);
                v117 = vbslq_s8(v101, v70, v68);
                *a14 = v29;
                *(a14 + 16) = vbslq_s8(v111, v117, v108);
                *v47 = v112;
                *(v47 + 16) = vbslq_s8(v111, v116, v106);
                *v48 = v28;
                *(v48 + 16) = vbslq_s8(v111, v115, v104);
                v110 -= 2;
                v29 = vbslq_s8(v111, vbslq_s8(v101, v74, v72), v117);
                *v56 = v113;
                *(v56 + 16) = vbslq_s8(v111, v114, v102);
                v112 = vbslq_s8(v111, vbslq_s8(v101, v82, v80), v116);
                v28 = vbslq_s8(v111, vbslq_s8(v101, v90, v88), v115);
                v113 = vbslq_s8(v111, vbslq_s8(v101, v99, v96), v114);
                v118 = 32;
              }

              if (v110 >= 1)
              {
                *(v118 + a14) = v29;
                *(v118 + v47) = v112;
                *(v118 + v48) = v28;
                *(v118 + v56) = v113;
                v118 |= 0x10uLL;
              }

              result += 4;
              v60 = a12[4];
              if (v60 == v57)
              {
                goto LABEL_108;
              }

              a14 += v118;
              v47 += v118;
              v48 += v118;
              v56 += v118;
              ++v57;
            }

            else
            {
              v60 = a12[4];
            }

            v119 = a12[5];
            v120 = v119 != 0;
            if (v60 != 0 || !v120)
            {
              v121 = v60 - v120;
              if (v57 <= v121)
              {
                v122 = v121 - v57 + 1;
                do
                {
                  if (result)
                  {
                    if ((result + 4) <= v27)
                    {
                      v123 = *result;
                    }

                    else
                    {
                      v123 = 0uLL;
                    }

                    v124 = 0uLL;
                    v125 = 0uLL;
                    v126 = 0uLL;
                    v127 = &result[v33];
                    if (&result[v33 + 4] <= v27)
                    {
                      v124 = *v127;
                    }

                    v128 = (v127 + v33 * 4);
                    if (&v128[1] <= v27)
                    {
                      v125 = *v128;
                    }

                    v129 = (v128 + v33 * 4);
                    if (&v129[1] <= v27)
                    {
                      v126 = *v129;
                    }

                    result += 4;
                  }

                  else
                  {
                    v123 = 0uLL;
                    v124 = 0uLL;
                    v125 = 0uLL;
                    v126 = 0uLL;
                  }

                  v130 = vuzp2q_s32(v126, v34);
                  v131 = vtrn2q_s32(v130, v126);
                  v132 = v34;
                  v133 = v34;
                  v133.i32[0] = v125.i32[2];
                  v28 = vzip1q_s32(vuzp1q_s32(v133, v133), v35);
                  v134 = vuzp2q_s32(v125, v34);
                  v135 = vzip2q_s32(vuzp1q_s32(v134, v134), v35);
                  v136 = vuzp1q_s32(v125, v34);
                  v137 = vtrn2q_s32(v134, v125);
                  v138 = v34;
                  v138.i32[0] = v124.i32[2];
                  v139 = vuzp2q_s32(v124, v34);
                  v140 = vzip2q_s32(vuzp1q_s32(v139, v139), v35);
                  v141 = vuzp1q_s32(v124, v34);
                  v142 = vtrn2q_s32(v139, v124);
                  v143 = vuzp2q_s32(v123, v34);
                  v144 = vtrn2q_s32(v143, v123);
                  v145 = vuzp1q_s32(v123, v34);
                  v146 = v34;
                  v146.i32[0] = v123.i32[2];
                  v147 = (a14 + 64);
                  *a14 = vzip1q_s32(vuzp1q_s32(v145, v145), v35);
                  *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v143, v143), v35);
                  *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v146, v146), v35);
                  *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v144, v144), v35);
                  v148 = (v47 + 64);
                  *v47 = vzip1q_s32(vuzp1q_s32(v141, v141), v35);
                  *(v47 + 16) = v140;
                  *(v47 + 32) = vzip1q_s32(vuzp1q_s32(v138, v138), v35);
                  *(v47 + 48) = vzip2q_s32(vuzp1q_s32(v142, v142), v35);
                  v149 = (v48 + 64);
                  *v48 = vzip1q_s32(vuzp1q_s32(v136, v136), v35);
                  *(v48 + 16) = v135;
                  *(v48 + 32) = v28;
                  *(v48 + 48) = vzip2q_s32(vuzp1q_s32(v137, v137), v35);
                  v150 = (v56 + 64);
                  v151 = vuzp1q_s32(v126, v34);
                  *v56 = vzip1q_s32(vuzp1q_s32(v151, v151), v35);
                  *(v56 + 16) = vzip2q_s32(vuzp1q_s32(v130, v130), v35);
                  a14 += 64;
                  v132.i32[0] = v126.i32[2];
                  *(v56 + 32) = vzip1q_s32(vuzp1q_s32(v132, v132), v35);
                  *(v56 + 48) = vzip2q_s32(vuzp1q_s32(v131, v131), v35);
                  v47 += 64;
                  v48 += 64;
                  v56 += 64;
                  --v122;
                }

                while (v122);
                v119 = a12[5];
                if (!v119)
                {
                  goto LABEL_108;
                }

LABEL_73:
                v152 = 4 - v119;
                if (v30 == a12[6])
                {
                  v153 = 4 - a12[7];
                }

                else
                {
                  v153 = 4;
                }

                if (result)
                {
                  if (v153 < 2)
                  {
                    v155 = 0;
                    v154 = result;
                    v156 = result;
                  }

                  else
                  {
                    v154 = &result[v33];
                    if (v153 == 2)
                    {
                      v155 = 0;
                      v156 = &result[v33];
                    }

                    else
                    {
                      v156 = &result[v33];
                      v154 = (v154 + v33 * 4);
                      if (v153 <= 3)
                      {
                        v155 = 0;
                      }

                      else
                      {
                        v155 = v33 * 4;
                      }
                    }
                  }

                  v161 = (v154 + v155);
                  v158 = 0uLL;
                  v159 = 0uLL;
                  v160 = 0uLL;
                  v157 = 0uLL;
                  if ((4 - v119))
                  {
                    if (&result[v152] <= v27)
                    {
                      v157.i32[0] = result[3 - v119];
                    }

                    if (v156 + 4 * v152 <= v27)
                    {
                      v158.i32[0] = *(v156 + 3 - v119);
                    }

                    if (v154 + 4 * v152 <= v27)
                    {
                      v159.i32[0] = *(v154 + 3 - v119);
                    }

                    if (v161 + 4 * v152 <= v27)
                    {
                      v160.i32[0] = *(v161 + 3 - v119);
                    }
                  }

                  if (((4 - v119) & 2) != 0)
                  {
                    v157 = vextq_s8(v157, v157, 8uLL);
                    if ((result + 2) <= v27)
                    {
                      v162.i64[0] = *result;
                      v162.i64[1] = vextq_s8(v157, v157, 8uLL).u64[0];
                      v157 = v162;
                    }

                    v158 = vextq_s8(v158, v158, 8uLL);
                    if ((v156 + 1) <= v27)
                    {
                      v163.i64[0] = *v156;
                      v163.i64[1] = vextq_s8(v158, v158, 8uLL).u64[0];
                      v158 = v163;
                    }

                    v159 = vextq_s8(v159, v159, 8uLL);
                    if ((v154 + 1) <= v27)
                    {
                      v164.i64[0] = *v154;
                      v164.i64[1] = vextq_s8(v159, v159, 8uLL).u64[0];
                      v159 = v164;
                    }

                    v160 = vextq_s8(v160, v160, 8uLL);
                    if ((v161 + 1) <= v27)
                    {
                      v165.i64[0] = *v161;
                      v165.i64[1] = vextq_s8(v160, v160, 8uLL).u64[0];
                      v160 = v165;
                    }
                  }

                  result += v152;
                }

                else
                {
                  v157 = 0uLL;
                  v158 = 0uLL;
                  v159 = 0uLL;
                  v160 = 0uLL;
                }

                v166 = vuzp1q_s32(v157, v34);
                v28 = vzip1q_s32(vuzp1q_s32(v166, v166), v35);
                v167 = vuzp1q_s32(v158, v34);
                v168 = vzip1q_s32(vuzp1q_s32(v167, v167), v35);
                v169 = vuzp1q_s32(v159, v34);
                v170 = vzip1q_s32(vuzp1q_s32(v169, v169), v35);
                v171 = vuzp1q_s32(v160, v34);
                v172 = vzip1q_s32(vuzp1q_s32(v171, v171), v35);
                if (((4 - v119) & 2) != 0)
                {
                  v173 = vuzp2q_s32(v157, v34);
                  v174 = vuzp2q_s32(v158, v34);
                  v175 = vuzp2q_s32(v159, v34);
                  v176 = vuzp2q_s32(v160, v34);
                  *v147 = v28;
                  v147[1] = vzip2q_s32(vuzp1q_s32(v173, v173), v35);
                  v28 = vuzp1q_s32(v176, v176);
                  *v148 = v168;
                  v148[1] = vzip2q_s32(vuzp1q_s32(v174, v174), v35);
                  *v149 = v170;
                  v149[1] = vzip2q_s32(vuzp1q_s32(v175, v175), v35);
                  *v150 = v172;
                  v150[1] = vzip2q_s32(v28, v35);
                  if ((4 - v119))
                  {
                    v177 = v34;
                    v177.i32[0] = v157.i32[2];
                    v178 = vzip1q_s32(vuzp1q_s32(v177, v177), v35);
                    v179 = v34;
                    v179.i32[0] = v158.i32[2];
                    v180 = vuzp1q_s32(v179, v179);
                    v181 = v34;
                    v181.i32[0] = v159.i32[2];
                    v182 = vzip1q_s32(vuzp1q_s32(v181, v181), v35);
                    v183 = v34;
                    v183.i32[0] = v160.i32[2];
                    v147[2] = v178;
                    v148[2] = vzip1q_s32(v180, v35);
                    v149[2] = v182;
                    v150[2] = vzip1q_s32(vuzp1q_s32(v183, v183), v35);
                  }
                }

                else
                {
                  *v147 = v28;
                  *v148 = v168;
                  *v149 = v170;
                  *v150 = v172;
                }

                goto LABEL_108;
              }
            }

            v150 = v56;
            v149 = v48;
            v148 = v47;
            v147 = a14;
            if (v119)
            {
              goto LABEL_73;
            }

            goto LABEL_108;
          case 2u:
LABEL_26:
            v48 = a16;
            goto LABEL_27;
          case 3u:
            v47 = a16;
            goto LABEL_26;
        }
      }
    }

    v56 = v49;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  v20 = a12;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v153, a3);
  v151 = 0;
  v152 = 0;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v150, a5);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v149, a6);
  v22 = a12[2];
  v23 = a12[6];
  if (v22 <= v23)
  {
    v24 = a17;
    v140 = *(a13 + 60);
    while (1)
    {
      v26 = *(a4 + 8);
      if (v26)
      {
        v27 = *(a11 + 24);
        v28 = (HIDWORD(v27) * v140) + 4 * v22;
        v29 = *(*(v26 + 40) + 8 * *(a11 + 60));
        if (*(v29 + 12) - 1 < v28)
        {
          v28 = *(v29 + 12) - 1;
        }

        if (*(v26 + 104) == 1)
        {
          v30 = (*(v29 + 8 * v27 + 24) + 8 * v28);
        }

        else
        {
          v32 = (v28 * *(v26 + 108)) >> *(v26 + 112);
          if (v32 >= *(v29 + 20) - 1)
          {
            LODWORD(v32) = *(v29 + 20) - 1;
          }

          v30 = (*(v29 + 8 * v27 + 24) + 8 * v32);
        }

        v33 = *v30;
        v34 = HIDWORD(*v30);
        v35 = a1 + *v30;
        v36 = a2 - *v30;
        if (a2 >= *v30)
        {
          v31 = (a1 + v33);
        }

        else
        {
          v31 = 0;
        }

        if (v36 < HIDWORD(v33))
        {
          v34 = a2 - v33;
        }

        v37 = a2 >= v33;
        v38 = v35 + v34;
        if (!v37)
        {
          v38 = 0;
        }

        v151 = v31;
        v152 = v38;
      }

      else
      {
        v31 = v151;
      }

      v39 = a16;
      v40 = (a14 + v24);
      v41 = (a14 + v24 + v24);
      v42 = (v41 + v24);
      if (!v31)
      {
        goto LABEL_58;
      }

      if (a16)
      {
        if (v22 == v20[2])
        {
          v43 = v20[3] + 1;
          v44 = (v41 + v24);
          v45 = (a14 + v24 + v24);
          v46 = (a14 + v24);
          v47 = a14;
          do
          {
            a14 = v47;
            v40 = v46;
            v41 = v45;
            v42 = v44;
            v44 = v45;
            v45 = v46;
            v46 = v47;
            v47 = a16;
            --v43;
          }

          while (v43);
        }

        if (v22 == v23)
        {
          v48 = v20[7];
          if (v48 == 1)
          {
            goto LABEL_32;
          }

          if (v48 == 2)
          {
            goto LABEL_30;
          }

          if (v48 == 3)
          {
            break;
          }
        }
      }

      v39 = v42;
LABEL_32:
      v49 = *v20;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v151, v49);
      if (!result)
      {
        return result;
      }

      if (v20[1])
      {
        v50 = v22;
        v51 = v153[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a8, v148);
        v52 = xmmword_296B6EF00;
        v53.i32[0] = 0;
        v154.val[0] = vdupq_n_s16(v51);
        v154.val[1] = vdupq_n_s16(v150);
        v54 = vqtbl2q_s8(v154, xmmword_296B6EDD0);
        v159.val[1] = v148[0];
        v55 = v148[1];
        v159.val[0] = v54;
        v56 = &v149;
        v57 = vld1q_dup_s16(v56);
        v58 = vqtbl2q_s8(v159, xmmword_296B6EF00);
        v59 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF10);
        v60 = vqtbl2q_s8(v159, xmmword_296B6EF20);
        v61 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF30);
        v62 = vqtbl2q_s8(v159, xmmword_296B6EEC0);
        v63 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EED0);
        v64 = vqtbl2q_s8(v159, xmmword_296B6EEE0);
        v65 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EEF0);
        v66 = vqtbl2q_s8(*v54.i8, xmmword_296B6EF00);
        v67 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF10);
        v68 = vqtbl2q_s8(*v54.i8, xmmword_296B6EF20);
        v69 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF30);
        v70 = vqtbl2q_s8(*v54.i8, xmmword_296B6EEC0);
        v71 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EED0);
        v72 = vqtbl2q_s8(*v54.i8, xmmword_296B6EEE0);
        v73 = vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EEF0);
        v74 = 4 - v20[5];
        if (v20[4] != v49)
        {
          v74 = 4;
        }

        v75 = v20[1];
        v52.i32[0] = v75 & 2;
        v76 = vdupq_lane_s32(*&vceqq_s32(v52, v53), 0);
        v54.i32[0] = v51;
        v54.i16[2] = v150;
        v54.i16[4] = v51;
        v54.i16[6] = v150;
        v77 = v74 - 2;
        v78 = vqtbl2q_s8(*v54.i8, xmmword_296B6EF90);
        v79 = vbslq_s8(v76, v73, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EED0));
        v80 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFA0);
        v81 = vbslq_s8(v76, v71, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EEF0));
        v82 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFB0);
        v83 = vbslq_s8(v76, v69, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF10));
        v84 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFC0);
        v85 = vbslq_s8(v76, v67, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF30));
        v86 = v148[0];
        v87 = vqtbl2q_s8(*v54.i8, xmmword_296B6EF90);
        v88 = vbslq_s8(v76, v65, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EED0));
        v89 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFA0);
        v90 = vbslq_s8(v76, v63, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EEF0));
        v91 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFB0);
        v92 = vbslq_s8(v76, v61, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF10));
        v93 = vqtbl2q_s8(*v54.i8, xmmword_296B6EFC0);
        v94 = vbslq_s8(v76, v59, vqtbl2q_s8(*(&v57 - 1), xmmword_296B6EF30));
        if ((v75 & 2) == 0)
        {
          v77 = v74;
        }

        if (v75)
        {
          v95 = vextq_s8(v92, v94, 8uLL).u64[0];
          v94 = vextq_s8(v94, v92, 8uLL);
          v96 = vextq_s8(v88, v90, 8uLL).u64[0];
          v90 = vextq_s8(v90, v88, 8uLL);
          v97 = vextq_s8(v83, v85, 8uLL).u64[0];
          v85 = vextq_s8(v85, v83, 8uLL);
          v98 = vextq_s8(v79, v81, 8uLL).u64[0];
          --v77;
          v81 = vextq_s8(v81, v79, 8uLL);
          v92.i64[0] = v95;
          v88.i64[0] = v96;
          v83.i64[0] = v97;
          v79.i64[0] = v98;
        }

        v20 = a12;
        v22 = v50;
        if (v77 <= 1)
        {
          v99 = 0;
        }

        else
        {
          *a14 = v94;
          *v40 = v90;
          v77 -= 2;
          v94.i64[0] = v92.i64[0];
          v90.i64[0] = v88.i64[0];
          *v41 = v85;
          v85.i64[0] = v83.i64[0];
          *v39 = v81;
          v81.i64[0] = v79.i64[0];
          v99 = 16;
        }

        v24 = a17;
        if (v77 >= 1)
        {
          *(a14->i64 + v99) = v94.i64[0];
          *(v40->i64 + v99) = v90.i64[0];
          *(v41->i64 + v99) = v85.i64[0];
          *(v39->i64 + v99) = v81.i64[0];
          v99 |= 8uLL;
        }

        v100 = a12[4];
        if (v100 == v49)
        {
          goto LABEL_58;
        }

        a14 = (a14 + v99);
        v40 = (v40 + v99);
        v41 = (v41 + v99);
        v39 = (v39 + v99);
        ++v49;
      }

      else
      {
        v100 = v20[4];
      }

      v101 = v20[5];
      v102 = v101 != 0;
      if (v100 != 0 || !v102)
      {
        v103 = v100 - v102;
        if (v49 <= v103)
        {
          v139 = v22;
          v104 = v103 - v49 + 1;
          do
          {
            v107 = v39;
            v106 = v153;
            v108 = vld1q_dup_s16(v106);
            v144 = v108;
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a8, v147);
            v109 = &v150;
            v155.val[0] = v144;
            v155.val[1] = vld1q_dup_s16(v109);
            v110 = vqtbl2q_s8(v155, xmmword_296B6EDD0);
            v155.val[0] = v147[0];
            v111 = v147[1];
            v105 = &v149;
            v157.val[1] = vld1q_dup_s16(v105);
            v155.val[1] = v110;
            v157.val[0] = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EEC0);
            v112 = vqtbl2q_s8(v157, xmmword_296B6EED0);
            v157.val[0] = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EEE0);
            v113 = vqtbl2q_s8(v157, xmmword_296B6EEF0);
            v157.val[0] = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EF00);
            v114 = vqtbl2q_s8(v157, xmmword_296B6EF10);
            v157.val[0] = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EF20);
            v155.val[1] = vqtbl2q_s8(v157, xmmword_296B6EF30);
            v157.val[0] = vqtbl2q_s8(v155, xmmword_296B6EEC0);
            v115 = vqtbl2q_s8(v157, xmmword_296B6EED0);
            v157.val[0] = vqtbl2q_s8(v155, xmmword_296B6EEE0);
            v116 = vqtbl2q_s8(v157, xmmword_296B6EEF0);
            v157.val[0] = vqtbl2q_s8(v155, xmmword_296B6EF00);
            v117 = vqtbl2q_s8(v157, xmmword_296B6EF10);
            v157.val[0] = vqtbl2q_s8(v155, xmmword_296B6EF20);
            *a14 = v117;
            a14[1] = vqtbl2q_s8(v157, xmmword_296B6EF30);
            a14 += 2;
            *v40 = v115;
            v40[1] = v116;
            v40 += 2;
            *v41 = v114;
            v41[1] = v155.val[1];
            v41 += 2;
            v39 += 2;
            *v107 = v112;
            v107[1] = v113;
            --v104;
          }

          while (v104);
          v24 = a17;
          v20 = a12;
          v101 = a12[5];
          v22 = v139;
        }
      }

      if (v101)
      {
        v118 = v153;
        v119 = vld1q_dup_s16(v118);
        v145 = v119;
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a8, v146);
        v120 = &v150;
        v156.val[0] = v145;
        v156.val[1] = vld1q_dup_s16(v120);
        v121 = vqtbl2q_s8(v156, xmmword_296B6EDD0);
        v122 = v146[0];
        v123 = v146[1];
        v124 = v121;
        v125 = &v149;
        v126 = vld1q_dup_s16(v125);
        v156.val[1] = vqtbl2q_s8(*v124.i8, xmmword_296B6EEC0);
        v127 = vqtbl2q_s8(*(&v126 - 1), xmmword_296B6EED0);
        v158.val[0] = vqtbl2q_s8(*v124.i8, xmmword_296B6EF00);
        v158.val[1] = v126;
        v128 = vqtbl2q_s8(v158, xmmword_296B6EF10);
        v158.val[0] = vqtbl2q_s8(*v121.i8, xmmword_296B6EEC0);
        v158.val[1] = v126;
        v129 = vqtbl2q_s8(v158, xmmword_296B6EED0);
        v158.val[1] = vqtbl2q_s8(*v121.i8, xmmword_296B6EF00);
        v130 = v126;
        v131 = vqtbl2q_s8(*(&v158 + 16), xmmword_296B6EF10);
        v132 = 4 - v20[5];
        if ((v132 & 2) != 0)
        {
          *a14 = v131;
          *v40 = v129;
          *v41 = v128;
          *v39 = v127;
          if (v132)
          {
            v133 = vqtbl2q_s8(*v124.i8, xmmword_296B6EEE0);
            v134 = vqtbl2q_s8(*(&v126 - 1), xmmword_296B6EEF0).u64[0];
            v135 = vqtbl2q_s8(*v124.i8, xmmword_296B6EF20);
            v136 = vqtbl2q_s8(*(&v126 - 1), xmmword_296B6EF30).u64[0];
            v137 = vqtbl2q_s8(*v121.i8, xmmword_296B6EEE0);
            v123.i64[0] = vqtbl2q_s8(*(&v126 - 1), xmmword_296B6EEF0).u64[0];
            v138 = vqtbl2q_s8(*v121.i8, xmmword_296B6EF20);
            a14[1].i64[0] = vqtbl2q_s8(*(&v126 - 1), xmmword_296B6EF30).u64[0];
            v40[1].i64[0] = v123.i64[0];
            v41[1].i64[0] = v136;
            v39[1].i64[0] = v134;
          }
        }

        else
        {
          a14->i64[0] = v131.i64[0];
          v40->i64[0] = v129.i64[0];
          v41->i64[0] = v128.i64[0];
          v39->i64[0] = v127.i64[0];
        }
      }

LABEL_58:
      a14 = (v42 + v24);
      v23 = v20[6];
      v37 = v22++ >= v23;
      if (v37)
      {
        return result;
      }
    }

    v40 = a16;
LABEL_30:
    v41 = a16;
    goto LABEL_32;
  }

  return result;
}

_DWORD *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v163, a3);
  v22 = a11[3];
  v23 = *(a4 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v162, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v161, a6);
  v30 = a12[2];
  v31 = a12[6];
  if (v30 <= v31)
  {
    v33 = vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
    v34 = *(a13 + 60);
    v35 = vld1q_dup_f32(&v161);
    v36.i64[0] = __PAIR64__(v162, v163);
    v36.i64[1] = __PAIR64__(v162, v163);
    v37 = vextq_s8(v36, v36, 8uLL);
    while (1)
    {
      v38 = *(a4 + 8);
      if (v38)
      {
        v39 = *(*(v38 + 40) + 8 * a11[7].u32[1]);
        v40 = *(v39 + 12) - 1;
        if (v40 >= (HIDWORD(*&a11[3]) * v34) + 4 * v30)
        {
          v40 = (HIDWORD(*&a11[3]) * v34) + 4 * v30;
        }

        v41 = v39 + 8 * *&a11[3];
        if (*(v38 + 104) == 1)
        {
          v42 = (*(v41 + 24) + 8 * v40);
        }

        else
        {
          v43 = (v40 * *(v38 + 108)) >> *(v38 + 112);
          v44 = *(v39 + 20) - 1;
          if (v43 < v44)
          {
            v44 = v43;
          }

          v42 = (*(v41 + 24) + 8 * v44);
        }

        v45 = *v42;
        if (a2 <= v45)
        {
          v27 = 0;
          result = 0;
          v50 = 2 * a17 + a14 + a17;
          goto LABEL_111;
        }

        v46 = v45;
        if (a2 - v45 >= HIDWORD(v45))
        {
          v47 = HIDWORD(v45);
        }

        else
        {
          v47 = a2 - v45;
        }

        result = (v46 + a1);
        v27 = v47 + v46 + a1;
      }

      v48 = a14 + a17;
      v49 = a14 + a17 + a17;
      v50 = v49 + a17;
      if (result)
      {
        break;
      }

LABEL_111:
      a14 = v50 + a17;
      v31 = a12[6];
      if (v30++ >= v31)
      {
        return result;
      }
    }

    if (a16)
    {
      if (v30 == a12[2])
      {
        v51 = a12[3] + 1;
        v52 = v49 + a17;
        v53 = a14 + a17 + a17;
        v54 = a14 + a17;
        v55 = a14;
        do
        {
          a14 = v55;
          v48 = v54;
          v49 = v53;
          v50 = v52;
          v52 = v53;
          v53 = v54;
          v54 = v55;
          v55 = a16;
          --v51;
        }

        while (v51);
      }

      if (v30 == v31)
      {
        v56 = a12[7];
        switch(v56)
        {
          case 1u:
LABEL_27:
            v57 = a16;
LABEL_29:
            v58 = *a12;
            result += 4 * v58;
            if (result - 1 >= v27)
            {
              return result;
            }

            v59 = a12[1];
            if (v59)
            {
              if ((result + 4) <= v27)
              {
                v60 = *result;
              }

              else
              {
                v60 = 0uLL;
              }

              v62 = 0uLL;
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = &result[v33];
              if (&result[v33 + 4] <= v27)
              {
                v62 = *v65;
              }

              v66 = (v65 + v33 * 4);
              if (&v66[1] <= v27)
              {
                v63 = *v66;
              }

              v67 = (v66 + v33 * 4);
              if (&v67[1] <= v27)
              {
                v64 = *v67;
              }

              v28.i32[0] = 0;
              v68 = vzip1q_s32(v36, v60);
              v68.i32[3] = v35.i32[0];
              v69 = vzip2q_s32(v37, v60);
              v69.i32[3] = v35.i32[2];
              v70 = vzip2q_s32(v36, vuzp2q_s32(v36, v60));
              v70.i32[3] = v35.i32[1];
              v71 = vextq_s8(vzip2q_s32(v60, v36), v36, 4uLL);
              v71.i32[3] = v35.i32[3];
              v72 = vzip1q_s32(v36, v62);
              v72.i32[3] = v35.i32[0];
              v73 = vzip2q_s32(v37, v62);
              v73.i32[3] = v35.i32[2];
              v74 = vzip2q_s32(v36, vuzp2q_s32(v36, v62));
              v74.i32[3] = v35.i32[1];
              v75 = vextq_s8(vzip2q_s32(v62, v36), v36, 4uLL);
              v75.i32[3] = v35.i32[3];
              v76 = vzip1q_s32(v36, v63);
              v76.i32[3] = v35.i32[0];
              v77 = vzip2q_s32(v37, v63);
              v77.i32[3] = v35.i32[2];
              v78 = vzip2q_s32(v36, vuzp2q_s32(v36, v63));
              v78.i32[3] = v35.i32[1];
              v79 = vextq_s8(vzip2q_s32(v63, v36), v36, 4uLL);
              v79.i32[3] = v35.i32[3];
              v80 = vzip1q_s32(v36, v64);
              v80.i32[3] = v35.i32[0];
              v81 = vzip2q_s32(v37, v64);
              v81.i32[3] = v35.i32[2];
              v82 = vzip2q_s32(v36, vuzp2q_s32(v36, v64));
              v82.i32[3] = v35.i32[1];
              v83 = vzip2q_s32(v64, v36);
              v84 = vextq_s8(v83, v36, 4uLL);
              v84.i32[3] = v35.i32[3];
              if (a12[4] == v58)
              {
                v85 = 4 - a12[5];
              }

              else
              {
                v85 = 4;
              }

              v83.i32[0] = a12[1] & 2;
              v86 = vdupq_lane_s32(*&vceqq_s32(v83, v28), 0);
              v87 = vbslq_s8(v86, v82, v84);
              v88 = vbslq_s8(v86, v80, v81);
              v89 = vbslq_s8(v86, v78, v79);
              v90 = vbslq_s8(v86, v76, v77);
              v91 = vbslq_s8(v86, v74, v75);
              v92 = vbslq_s8(v86, v72, v73);
              v93 = vbslq_s8(v86, v70, v71);
              if ((v59 & 2) != 0)
              {
                v85 -= 2;
              }

              v94 = v59 & 1;
              v95 = v85 - v94;
              v29.i32[0] = v94;
              v96 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v29, v28)), 0);
              v29 = vbslq_s8(v96, v93, vbslq_s8(v86, v68, v69));
              v97 = vbslq_s8(v96, v91, v92);
              v28 = vbslq_s8(v96, v89, v90);
              v98 = vbslq_s8(v96, v87, v88);
              if (v85 - v94 <= 1)
              {
                v103 = 0;
              }

              else
              {
                v99 = vbslq_s8(v86, v81, v80);
                v100 = vbslq_s8(v86, v77, v76);
                v101 = vbslq_s8(v86, v73, v72);
                v102 = vbslq_s8(v86, v69, v68);
                *a14 = v29;
                *(a14 + 16) = vbslq_s8(v96, v102, v93);
                *v48 = v97;
                *(v48 + 16) = vbslq_s8(v96, v101, v91);
                *v49 = v28;
                *(v49 + 16) = vbslq_s8(v96, v100, v89);
                v95 -= 2;
                v29 = vbslq_s8(v96, vbslq_s8(v86, v71, v70), v102);
                *v57 = v98;
                *(v57 + 16) = vbslq_s8(v96, v99, v87);
                v97 = vbslq_s8(v96, vbslq_s8(v86, v75, v74), v101);
                v28 = vbslq_s8(v96, vbslq_s8(v86, v79, v78), v100);
                v98 = vbslq_s8(v96, vbslq_s8(v86, v84, v82), v99);
                v103 = 32;
              }

              if (v95 >= 1)
              {
                *(v103 + a14) = v29;
                *(v103 + v48) = v97;
                *(v103 + v49) = v28;
                *(v103 + v57) = v98;
                v103 |= 0x10uLL;
              }

              result += 4;
              v61 = a12[4];
              if (v61 == v58)
              {
                goto LABEL_111;
              }

              a14 += v103;
              v48 += v103;
              v49 += v103;
              v57 += v103;
              ++v58;
            }

            else
            {
              v61 = a12[4];
            }

            v104 = a12[5];
            v105 = v104 != 0;
            if (v61 != 0 || !v105)
            {
              v106 = v61 - v105;
              if (v58 <= v106)
              {
                v107 = v106 - v58 + 1;
                do
                {
                  if (result)
                  {
                    if ((result + 4) <= v27)
                    {
                      v108 = *result;
                    }

                    else
                    {
                      v108 = 0uLL;
                    }

                    v109 = 0uLL;
                    v110 = 0uLL;
                    v111 = 0uLL;
                    v112 = &result[v33];
                    if (&result[v33 + 4] <= v27)
                    {
                      v109 = *v112;
                    }

                    v113 = (v112 + v33 * 4);
                    if (&v113[1] <= v27)
                    {
                      v110 = *v113;
                    }

                    v114 = (v113 + v33 * 4);
                    if (&v114[1] <= v27)
                    {
                      v111 = *v114;
                    }

                    result += 4;
                  }

                  else
                  {
                    v108 = 0uLL;
                    v109 = 0uLL;
                    v110 = 0uLL;
                    v111 = 0uLL;
                  }

                  v115 = vextq_s8(vzip2q_s32(v111, v36), v36, 4uLL);
                  v115.i32[3] = v35.i32[3];
                  v116 = vzip2q_s32(v37, v111);
                  v116.i32[3] = v35.i32[2];
                  v117 = vzip2q_s32(v36, vuzp2q_s32(v36, v111));
                  v117.i32[3] = v35.i32[1];
                  v118 = vzip1q_s32(v36, v111);
                  v118.i32[3] = v35.i32[0];
                  v28 = vzip2q_s32(v37, v110);
                  v28.i32[3] = v35.i32[2];
                  v119 = vzip2q_s32(v36, vuzp2q_s32(v36, v110));
                  v119.i32[3] = v35.i32[1];
                  v120 = vzip2q_s32(v37, v109);
                  v120.i32[3] = v35.i32[2];
                  v121 = vextq_s8(vzip2q_s32(v109, v36), v36, 4uLL);
                  v121.i32[3] = v35.i32[3];
                  v122 = vzip1q_s32(v36, v110);
                  v123 = vzip2q_s32(v36, vuzp2q_s32(v36, v109));
                  v123.i32[3] = v35.i32[1];
                  v124 = vzip1q_s32(v36, v109);
                  v124.i32[3] = v35.i32[0];
                  v125 = vzip2q_s32(v37, v108);
                  v125.i32[3] = v35.i32[2];
                  v126 = vextq_s8(vzip2q_s32(v108, v36), v36, 4uLL);
                  v126.i32[3] = v35.i32[3];
                  v127 = vzip2q_s32(v36, vuzp2q_s32(v36, v108));
                  v127.i32[3] = v35.i32[1];
                  v128 = vzip1q_s32(v36, v108);
                  v128.i32[3] = v35.i32[0];
                  *a14 = v128;
                  *(a14 + 16) = v127;
                  *(a14 + 32) = v125;
                  *(a14 + 48) = v126;
                  *v48 = v124;
                  *(v48 + 16) = v123;
                  *(v48 + 32) = v120;
                  *(v48 + 48) = v121;
                  v122.i32[3] = v35.i32[0];
                  *v49 = v122;
                  *(v49 + 16) = v119;
                  v129 = vextq_s8(vzip2q_s32(v110, v36), v36, 4uLL);
                  v129.i32[3] = v35.i32[3];
                  v130 = (a14 + 64);
                  v131 = (v48 + 64);
                  v132 = (v49 + 64);
                  *(v49 + 32) = v28;
                  *(v49 + 48) = v129;
                  v133 = (v57 + 64);
                  *v57 = v118;
                  *(v57 + 16) = v117;
                  a14 += 64;
                  v48 += 64;
                  v49 += 64;
                  *(v57 + 32) = v116;
                  *(v57 + 48) = v115;
                  v57 += 64;
                  --v107;
                }

                while (v107);
                v104 = a12[5];
                if (!v104)
                {
                  goto LABEL_111;
                }

LABEL_73:
                v134 = 4 - v104;
                if (v30 == a12[6])
                {
                  v135 = 4 - a12[7];
                }

                else
                {
                  v135 = 4;
                }

                if (result)
                {
                  if (v135 < 2)
                  {
                    v139 = 0;
                    v136 = result;
                    v138 = result;
                  }

                  else
                  {
                    v136 = &result[v33 + v33];
                    if (v135 <= 3)
                    {
                      v137 = 0;
                    }

                    else
                    {
                      v137 = v33 * 4;
                    }

                    if (v135 == 2)
                    {
                      v136 = &result[v33];
                    }

                    v138 = &result[v33];
                    if (v135 == 2)
                    {
                      v139 = 0;
                    }

                    else
                    {
                      v139 = v137;
                    }
                  }

                  v144 = (v136 + v139);
                  v141 = 0uLL;
                  v142 = 0uLL;
                  v143 = 0uLL;
                  v140 = 0uLL;
                  if ((4 - v104))
                  {
                    if (&result[v134] <= v27)
                    {
                      v140.i32[0] = result[3 - v104];
                    }

                    if (v138 + 4 * v134 <= v27)
                    {
                      v141.i32[0] = *(v138 + 3 - v104);
                    }

                    if (v136 + 4 * v134 <= v27)
                    {
                      v142.i32[0] = *(v136 + 3 - v104);
                    }

                    if (v144 + 4 * v134 <= v27)
                    {
                      v143.i32[0] = *(v144 + 3 - v104);
                    }
                  }

                  if (((4 - v104) & 2) != 0)
                  {
                    v140 = vextq_s8(v140, v140, 8uLL);
                    if ((result + 2) <= v27)
                    {
                      v145.i64[0] = *result;
                      v145.i64[1] = vextq_s8(v140, v140, 8uLL).u64[0];
                      v140 = v145;
                    }

                    v141 = vextq_s8(v141, v141, 8uLL);
                    if ((v138 + 1) <= v27)
                    {
                      v146.i64[0] = *v138;
                      v146.i64[1] = vextq_s8(v141, v141, 8uLL).u64[0];
                      v141 = v146;
                    }

                    v142 = vextq_s8(v142, v142, 8uLL);
                    if ((v136 + 1) <= v27)
                    {
                      v147.i64[0] = *v136;
                      v147.i64[1] = vextq_s8(v142, v142, 8uLL).u64[0];
                      v142 = v147;
                    }

                    v143 = vextq_s8(v143, v143, 8uLL);
                    if ((v144 + 1) <= v27)
                    {
                      v148.i64[0] = *v144;
                      v148.i64[1] = vextq_s8(v143, v143, 8uLL).u64[0];
                      v143 = v148;
                    }
                  }

                  result += v134;
                }

                else
                {
                  v140 = 0uLL;
                  v141 = 0uLL;
                  v142 = 0uLL;
                  v143 = 0uLL;
                }

                v149 = vzip1q_s32(v36, v140);
                v149.i32[3] = v35.i32[0];
                v150 = vzip1q_s32(v36, v141);
                v150.i32[3] = v35.i32[0];
                v151 = vzip1q_s32(v36, v142);
                v151.i32[3] = v35.i32[0];
                v28 = vzip1q_s32(v36, v143);
                v28.i32[3] = v35.i32[0];
                if (((4 - v104) & 2) != 0)
                {
                  v152 = vzip2q_s32(v36, vuzp2q_s32(v36, v140));
                  v152.i32[3] = v35.i32[1];
                  v153 = vzip2q_s32(v36, vuzp2q_s32(v36, v141));
                  v153.i32[3] = v35.i32[1];
                  v154 = vzip2q_s32(v36, vuzp2q_s32(v36, v142));
                  v154.i32[3] = v35.i32[1];
                  v155 = vzip2q_s32(v36, vuzp2q_s32(v36, v143));
                  v155.i32[3] = v35.i32[1];
                  *v130 = v149;
                  v130[1] = v152;
                  *v131 = v150;
                  v131[1] = v153;
                  *v132 = v151;
                  v132[1] = v154;
                  *v133 = v28;
                  v133[1] = v155;
                  if ((4 - v104))
                  {
                    v156 = vzip2q_s32(v37, v140);
                    v156.i32[3] = v35.i32[2];
                    v157 = vzip2q_s32(v37, v141);
                    v157.i32[3] = v35.i32[2];
                    v158 = vzip2q_s32(v37, v142);
                    v158.i32[3] = v35.i32[2];
                    v159 = vzip2q_s32(v37, v143);
                    v159.i32[3] = v35.i32[2];
                    v130[2] = v156;
                    v131[2] = v157;
                    v132[2] = v158;
                    v133[2] = v159;
                  }
                }

                else
                {
                  *v130 = v149;
                  *v131 = v150;
                  *v132 = v151;
                  *v133 = v28;
                }

                goto LABEL_111;
              }
            }

            v133 = v57;
            v132 = v49;
            v131 = v48;
            v130 = a14;
            if (v104)
            {
              goto LABEL_73;
            }

            goto LABEL_111;
          case 2u:
LABEL_26:
            v49 = a16;
            goto LABEL_27;
          case 3u:
            v48 = a16;
            goto LABEL_26;
        }
      }
    }

    v57 = v50;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v147 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v144, a5);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v143, a6);
  v22 = a12[6];
  v130 = a12[2];
  if (v130 <= v22)
  {
    v23 = a12;
    v127 = *(a13 + 60);
    v125 = a4;
    while (1)
    {
      v25 = *(a3 + 8);
      v26 = v130;
      if (v25)
      {
        v27 = *(a11 + 24);
        v28 = *(*(v25 + 40) + 8 * *(a11 + 60));
        v29 = *(v28 + 12) - 1;
        if (v29 >= (HIDWORD(v27) * v127) + 4 * v130)
        {
          v29 = (HIDWORD(*(a11 + 24)) * v127) + 4 * v130;
        }

        v30 = v28 + 8 * v27;
        if (*(v25 + 104) == 1)
        {
          v31 = (*(v30 + 24) + 8 * v29);
        }

        else
        {
          v32 = (v29 * *(v25 + 108)) >> *(v25 + 112);
          v33 = *(v28 + 20) - 1;
          if (v32 >= v33)
          {
            LODWORD(v32) = v33;
          }

          v31 = (*(v30 + 24) + 8 * v32);
        }

        v34 = *v31;
        v35 = HIDWORD(v34);
        if (a2 >= v34)
        {
          v36 = (a1 + v34);
        }

        else
        {
          v36 = 0;
        }

        if (a2 - v34 < HIDWORD(v34))
        {
          v35 = a2 - v34;
        }

        v37 = a2 >= v34;
        v38 = a1 + v34 + v35;
        if (!v37)
        {
          v38 = 0;
        }

        v147 = v36;
        v148 = v38;
      }

      v39 = *(a4 + 8);
      if (v39)
      {
        v40 = *(a11 + 24);
        v41 = *(*(v39 + 40) + 8 * *(a11 + 60));
        v42 = *(v41 + 12) - 1;
        if (v42 >= (HIDWORD(v40) * v127) + 4 * v130)
        {
          v42 = (HIDWORD(*(a11 + 24)) * v127) + 4 * v130;
        }

        v43 = v41 + 8 * v40;
        if (*(v39 + 104) == 1)
        {
          v44 = (*(v43 + 24) + 8 * v42);
        }

        else
        {
          v46 = (v42 * *(v39 + 108)) >> *(v39 + 112);
          v47 = *(v41 + 20) - 1;
          if (v46 >= v47)
          {
            LODWORD(v46) = v47;
          }

          v44 = (*(v43 + 24) + 8 * v46);
        }

        v48 = *v44;
        v49 = HIDWORD(*v44);
        v50 = a1 + *v44;
        v51 = a2 - *v44;
        if (a2 >= *v44)
        {
          v45 = (a1 + v48);
        }

        else
        {
          v45 = 0;
        }

        if (v51 < HIDWORD(v48))
        {
          v49 = a2 - v48;
        }

        v37 = a2 >= v48;
        v52 = v50 + v49;
        if (!v37)
        {
          v52 = 0;
        }

        v145 = v45;
        v146 = v52;
      }

      else
      {
        v45 = v145;
      }

      v53 = (a14 + a17);
      v54 = (a14 + a17 + a17);
      v55 = &v54->i8[a17];
      if (!v147 || !v45)
      {
        goto LABEL_78;
      }

      v56 = a16;
      if (!a16)
      {
        break;
      }

      if (v130 == v23[2])
      {
        v57 = v23[3] + 1;
        v58 = &v54->i8[a17];
        v59 = (a14 + a17 + a17);
        v60 = (a14 + a17);
        v61 = a14;
        do
        {
          a14 = v61;
          v53 = v60;
          v54 = v59;
          v55 = v58;
          v58 = v59;
          v59 = v60;
          v60 = v61;
          v61 = a16;
          --v57;
        }

        while (v57);
      }

      if (v130 != v22)
      {
        break;
      }

      v62 = v23[7];
      if (v62 != 1)
      {
        if (v62 != 2)
        {
          if (v62 != 3)
          {
            break;
          }

          v53 = a16;
        }

        v54 = a16;
      }

LABEL_49:
      v63 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v147, v63);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v145, v63);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (!a12[1])
      {
        v95 = a12[4];
        goto LABEL_68;
      }

      AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v147, a7, v142);
      v131 = v142[1];
      v134 = v142[0];
      result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v145, a8, v141);
      v23 = a12;
      v64.i32[0] = 0;
      v65 = &v144;
      v66 = v131;
      v67 = vld1q_dup_s16(v65);
      v68 = vld1q_dup_s16(&v143);
      v69 = v141[1];
      v151.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF40);
      v151.val[0] = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EE70);
      v70 = vqtbl2q_s8(v151, xmmword_296B6EDD0);
      v71 = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF50);
      v151.val[1] = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EE90);
      v72 = vqtbl2q_s8(*(&v151 + 16), xmmword_296B6EDD0);
      v73 = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF60);
      v74 = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EEA0);
      v75 = vqtbl2q_s8(*v74.i8, xmmword_296B6EDD0);
      v159.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF70);
      v159.val[0] = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EEB0);
      v76 = vqtbl2q_s8(v159, xmmword_296B6EDD0);
      if (a12[4] == v63)
      {
        v77 = 4 - a12[5];
      }

      else
      {
        v77 = 4;
      }

      v78 = a12[1];
      v74.i32[0] = v78 & 2;
      v79 = vdupq_lane_s32(*&vceqq_s32(v74, v64), 0);
      v80 = vbslq_s8(v79, v76, v75);
      v81 = vbslq_s8(v79, v75, v76);
      v82 = vbslq_s8(v79, v72, v70);
      v83 = vbslq_s8(v79, v70, v72);
      v84 = v141[0];
      v162.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF60);
      v164.val[0] = v134;
      v164.val[1] = v67;
      v162.val[0] = vqtbl2q_s8(v164, xmmword_296B6EEA0);
      v85 = vqtbl2q_s8(v162, xmmword_296B6EDD0);
      v162.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF70);
      v162.val[0] = vqtbl2q_s8(v164, xmmword_296B6EEB0);
      v162.val[0] = vqtbl2q_s8(v162, xmmword_296B6EDD0);
      v86 = vbslq_s8(v79, v162.val[0], v85);
      v87 = vbslq_s8(v79, v85, v162.val[0]);
      v162.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF40);
      v162.val[0] = vqtbl2q_s8(v164, xmmword_296B6EE70);
      v162.val[0] = vqtbl2q_s8(v162, xmmword_296B6EDD0);
      v157.val[1] = vqtbl2q_s8(*(&v68 - 1), xmmword_296B6EF50);
      v157.val[0] = vqtbl2q_s8(v164, xmmword_296B6EE90);
      v157.val[0] = vqtbl2q_s8(v157, xmmword_296B6EDD0);
      v88 = vbslq_s8(v79, v157.val[0], v162.val[0]);
      v89 = vbslq_s8(v79, v162.val[0], v157.val[0]);
      if ((v78 & 2) != 0)
      {
        v77 -= 2;
      }

      if (v78)
      {
        v90 = vextq_s8(v88, v89, 8uLL).u64[0];
        v89 = vextq_s8(v89, v88, 8uLL);
        v91 = vextq_s8(v86, v87, 8uLL).u64[0];
        v87 = vextq_s8(v87, v86, 8uLL);
        v92 = vextq_s8(v82, v83, 8uLL).u64[0];
        v83 = vextq_s8(v83, v82, 8uLL);
        v93 = vextq_s8(v80, v81, 8uLL).u64[0];
        --v77;
        v81 = vextq_s8(v81, v80, 8uLL);
        v88.i64[0] = v90;
        v86.i64[0] = v91;
        v82.i64[0] = v92;
        v80.i64[0] = v93;
      }

      if (v77 <= 1)
      {
        v94 = 0;
      }

      else
      {
        *a14 = v89;
        *v53 = v87;
        v77 -= 2;
        v89.i64[0] = v88.i64[0];
        v87.i64[0] = v86.i64[0];
        *v54 = v83;
        v83.i64[0] = v82.i64[0];
        v56->val[0] = v81;
        v81.i64[0] = v80.i64[0];
        v94 = 16;
      }

      if (v77 >= 1)
      {
        *(a14->i64 + v94) = v89.i64[0];
        *(v53->i64 + v94) = v87.i64[0];
        *(v54->i64 + v94) = v83.i64[0];
        *(v56->val[0].i64 + v94) = v81.i64[0];
        v94 |= 8uLL;
      }

      v95 = a12[4];
      if (v95 != v63)
      {
        a14 = (a14 + v94);
        v53 = (v53 + v94);
        v54 = (v54 + v94);
        v56 = (v56 + v94);
        ++v63;
LABEL_68:
        v96 = v23[5];
        v97 = v96 != 0;
        if (v95 != 0 || !v97)
        {
          v98 = v95 - v97;
          if (v63 <= v98)
          {
            v99 = v98 - v63 + 1;
            v100 = a7;
            v101 = a8;
            do
            {
              v103 = v56;
              AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v147, v100, v140);
              v135 = v140[0];
              v132 = v140[1];
              result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v145, v101, v139);
              v104 = &v144;
              v165.val[0] = v132;
              v165.val[1] = vld1q_dup_s16(v104);
              v102 = &v143;
              v149.val[1] = vld1q_dup_s16(v102);
              v149.val[0] = v139[1];
              v152.val[1] = vqtbl2q_s8(v149, xmmword_296B6EF60);
              v152.val[0] = vqtbl2q_s8(v165, xmmword_296B6EEA0);
              v152.val[0] = vqtbl2q_s8(v152, xmmword_296B6EDD0);
              v105 = vqtbl2q_s8(v149, xmmword_296B6EF70);
              v152.val[1] = vqtbl2q_s8(v165, xmmword_296B6EEB0);
              v152.val[1] = vqtbl2q_s8(*(&v152 + 16), xmmword_296B6EDD0);
              v154.val[1] = vqtbl2q_s8(v149, xmmword_296B6EF40);
              v154.val[0] = vqtbl2q_s8(v165, xmmword_296B6EE70);
              v154.val[0] = vqtbl2q_s8(v154, xmmword_296B6EDD0);
              v106 = vqtbl2q_s8(v149, xmmword_296B6EF50);
              v154.val[1] = vqtbl2q_s8(v165, xmmword_296B6EE90);
              v149.val[0] = v139[0];
              v160.val[1] = vqtbl2q_s8(v149, xmmword_296B6EF60);
              v163.val[0] = v135;
              v163.val[1] = v165.val[1];
              v160.val[0] = vqtbl2q_s8(v163, xmmword_296B6EEA0);
              v107 = vqtbl2q_s8(v160, xmmword_296B6EDD0);
              v160.val[1] = vqtbl2q_s8(v149, xmmword_296B6EF40);
              v160.val[0] = vqtbl2q_s8(v163, xmmword_296B6EE70);
              v160.val[0] = vqtbl2q_s8(v160, xmmword_296B6EDD0);
              v108 = vqtbl2q_s8(v149, xmmword_296B6EF50);
              v160.val[1] = vqtbl2q_s8(v163, xmmword_296B6EE90);
              v149.val[1] = vqtbl2q_s8(v149, xmmword_296B6EF70);
              *a14 = v160.val[0];
              a14[1] = vqtbl2q_s8(*(&v160 + 16), xmmword_296B6EDD0);
              a14 += 2;
              v149.val[0] = vqtbl2q_s8(v163, xmmword_296B6EEB0);
              *v53 = v107;
              v53[1] = vqtbl2q_s8(v149, xmmword_296B6EDD0);
              v53 += 2;
              *v54 = v154.val[0];
              v54[1] = vqtbl2q_s8(*(&v154 + 16), xmmword_296B6EDD0);
              v54 += 2;
              ++v56;
              *v103 = v152;
              --v99;
            }

            while (v99);
            v23 = a12;
            v96 = a12[5];
            a8 = v101;
            a7 = v100;
            a4 = v125;
          }
        }

        v26 = v130;
        if (v96)
        {
          AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v147, a7, v138);
          v136 = v138[0];
          v133 = v138[1];
          result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v145, a8, v137);
          v109 = v133;
          v23 = a12;
          v110 = &v144;
          v111 = vld1q_dup_s16(v110);
          v112 = vld1q_dup_s16(&v143);
          v114 = v137[0];
          v113 = v137[1];
          v155.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF60);
          v155.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EEA0);
          v115 = vqtbl2q_s8(v155, xmmword_296B6EDD0);
          v116 = vqtbl2q_s8(*v113.i8, xmmword_296B6EF40);
          v155.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EE70);
          v117 = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EDD0);
          v118 = v112;
          v119 = v136;
          v120 = v111;
          v158.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EF60);
          v158.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEA0);
          v121 = vqtbl2q_s8(v158, xmmword_296B6EDD0);
          v161.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EF40);
          v161.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE70);
          v122 = vqtbl2q_s8(v161, xmmword_296B6EDD0);
          v123 = 4 - a12[5];
          if ((v123 & 2) != 0)
          {
            *a14 = v122;
            *v53 = v121;
            *v54 = v117;
            v56->val[0] = v115;
            if (v123)
            {
              v156.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF70);
              v156.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EEB0);
              v156.val[0].i64[0] = vqtbl2q_s8(v156, xmmword_296B6EDD0).u64[0];
              v150.val[1] = vqtbl2q_s8(*v113.i8, xmmword_296B6EF50);
              v150.val[0] = vqtbl2q_s8(*v109.i8, xmmword_296B6EE90);
              v124 = vqtbl2q_s8(*v114.i8, xmmword_296B6EF70);
              v156.val[1] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEB0);
              v153.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EF50);
              v153.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE90);
              a14[1].i64[0] = vqtbl2q_s8(v153, xmmword_296B6EDD0).u64[0];
              v53[1].i64[0] = vqtbl2q_s8(*(&v156 + 16), xmmword_296B6EDD0).u64[0];
              v54[1].i64[0] = vqtbl2q_s8(v150, xmmword_296B6EDD0).u64[0];
              v56->val[1].i64[0] = v156.val[0].i64[0];
            }
          }

          else
          {
            a14->i64[0] = v122.i64[0];
            v53->i64[0] = v121.i64[0];
            v54->i64[0] = v117.i64[0];
            v56->val[0].i64[0] = v115.i64[0];
          }
        }

        goto LABEL_78;
      }

      v26 = v130;
LABEL_78:
      a14 = (v55->val + a17);
      v22 = v23[6];
      v130 = v26 + 1;
      if (v26 >= v22)
      {
        return result;
      }
    }

    v56 = v55;
    goto LABEL_49;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)1,(StreamType)0,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a11[3];
  v23 = a11[7].u32[1];
  v24 = *(a3 + 8);
  v25 = v24[6];
  v26 = *(*(*&v24[5] + 8 * v23) + 16);
  v27 = *(a4 + 8);
  v28 = v27[6];
  v29 = *(*(*&v27[5] + 8 * v23) + 16);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v226, a5);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v225, a6);
  v35 = a12[2];
  v36 = a12[6];
  if (v35 > v36)
  {
    return result;
  }

  v38 = 4 * vmin_u32(vmls_s32(v26, v25, v22), v25).u32[0];
  v39 = 4 * vmin_u32(vmls_s32(v29, v28, v22), v28).u32[0];
  v40 = vld1q_dup_f32(&v226);
  v41 = *(a13 + 60);
  v42 = vld1q_dup_f32(&v225);
  v43 = 2 * a17;
  while (1)
  {
    v44 = *(a3 + 8);
    if (v44)
    {
      v45 = a11[3];
      v46 = (v45.i32[1] * v41) + 4 * v35;
      v47 = *(*(v44 + 40) + 8 * a11[7].u32[1]);
      if (*(v47 + 12) - 1 < v46)
      {
        v46 = *(v47 + 12) - 1;
      }

      if (*(v44 + 104) == 1)
      {
        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v46);
      }

      else
      {
        v49 = (v46 * *(v44 + 108)) >> *(v44 + 112);
        if (v49 >= *(v47 + 20) - 1)
        {
          LODWORD(v49) = *(v47 + 20) - 1;
        }

        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v49);
      }

      v50 = *v48;
      if (a2 <= v50)
      {
        v31 = 0;
        result = 0;
      }

      else
      {
        v51 = v50;
        if (a2 - v50 >= HIDWORD(v50))
        {
          v52 = HIDWORD(v50);
        }

        else
        {
          v52 = a2 - v50;
        }

        v31 = (v51 + a1);
        result = (v52 + v51 + a1);
      }
    }

    v53 = *(a4 + 8);
    if (v53)
    {
      v54 = a11[3];
      v55 = (v54.i32[1] * v41) + 4 * v35;
      v56 = *(*(v53 + 40) + 8 * a11[7].u32[1]);
      if (*(v56 + 12) - 1 < v55)
      {
        v55 = *(v56 + 12) - 1;
      }

      if (*(v53 + 104) == 1)
      {
        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v55);
      }

      else
      {
        v58 = (v55 * *(v53 + 108)) >> *(v53 + 112);
        if (v58 >= *(v56 + 20) - 1)
        {
          LODWORD(v58) = *(v56 + 20) - 1;
        }

        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v58);
      }

      v59 = *v57;
      if (a2 <= v59)
      {
        v33 = 0;
        v32 = 0;
        v64 = v43 + a14 + a17;
        goto LABEL_171;
      }

      v60 = v59;
      if (a2 - v59 >= HIDWORD(v59))
      {
        v61 = HIDWORD(v59);
      }

      else
      {
        v61 = a2 - v59;
      }

      v32 = (v60 + a1);
      v33 = v61 + v60 + a1;
    }

    v62 = a14 + a17;
    v63 = a14 + a17 + a17;
    v64 = v63 + a17;
    if (v31)
    {
      if (v32)
      {
        break;
      }
    }

LABEL_171:
    a14 = v64 + a17;
    v36 = a12[6];
    if (v35++ >= v36)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v35 == a12[2])
  {
    v65 = a12[3] + 1;
    v66 = v63 + a17;
    v67 = a14 + a17 + a17;
    v68 = a14 + a17;
    v69 = a14;
    do
    {
      a14 = v69;
      v62 = v68;
      v63 = v67;
      v64 = v66;
      v66 = v67;
      v67 = v68;
      v68 = v69;
      v69 = a16;
      --v65;
    }

    while (v65);
  }

  if (v35 != v36)
  {
    goto LABEL_44;
  }

  v70 = a12[7];
  if (v70 != 1)
  {
    if (v70 == 2)
    {
LABEL_41:
      v63 = a16;
      goto LABEL_42;
    }

    if (v70 == 3)
    {
      v62 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v71 = v64;
    goto LABEL_45;
  }

LABEL_42:
  v71 = a16;
LABEL_45:
  v72 = *a12;
  v31 += v72;
  if ((v31 - 1) < result)
  {
    v32 += v72;
    if (&v32[-1].u64[1] + 7 < v33)
    {
      v73 = a12[1];
      if (v73)
      {
        if (v31 + 1 <= result)
        {
          v74 = *v31;
        }

        else
        {
          v74 = 0uLL;
        }

        v76 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v79 = (v31 + v38);
        if ((v31 + v38 + 16) <= result)
        {
          v76 = *v79;
        }

        v80 = (v79 + v38);
        if (&v80[1] <= result)
        {
          v77 = *v80;
        }

        v81 = (v80 + v38);
        if (&v81[1] <= result)
        {
          v78 = *v81;
        }

        if (&v32[1] <= v33)
        {
          v82 = *v32;
        }

        else
        {
          v82 = 0uLL;
        }

        v83 = 0uLL;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = (v32 + v39);
        if (v32[1].u64 + v39 <= v33)
        {
          v83 = *v86;
        }

        v87 = (v86 + v39);
        if (&v87[1] <= v33)
        {
          v84 = *v87;
        }

        v88 = (v87 + v39);
        if (&v88[1] <= v33)
        {
          v85 = *v88;
        }

        v34.i32[0] = 0;
        v89 = vuzp1q_s32(v84, v42);
        v90 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v77, v40)), vextq_s8(v84, v89, 0xCuLL));
        v91 = v40;
        v91.i32[0] = v77.i32[2];
        v92 = vtrn2q_s32(vrev64q_s32(v91), v89);
        v93 = vuzp2q_s32(v84, v42);
        v84.i32[3] = v42.i32[1];
        v94 = vuzp2q_s32(v77, v40);
        v95 = vtrn2q_s32(vrev64q_s32(v94), v84);
        v96 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v94, v77)), v93);
        v97 = vuzp1q_s32(v85, v42);
        v98 = v40;
        v98.i32[0] = v78.i32[2];
        v99 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v78, v40)), vextq_s8(v85, v97, 0xCuLL));
        v100 = vtrn2q_s32(vrev64q_s32(v98), v97);
        v101 = vuzp2q_s32(v85, v42);
        v85.i32[3] = v42.i32[1];
        v102 = vuzp2q_s32(v78, v40);
        v103 = vtrn2q_s32(vrev64q_s32(v102), v85);
        v104 = vrev64q_s32(vtrn2q_s32(v102, v78));
        v105 = vtrn2q_s32(v104, v101);
        if (a12[4] == v72)
        {
          v106 = 4 - a12[5];
        }

        else
        {
          v106 = 4;
        }

        v104.i32[0] = a12[1] & 2;
        v107 = vdupq_lane_s32(*&vceqq_s32(v104, v34), 0);
        v108 = vbslq_s8(v107, v103, v105);
        v109 = vbslq_s8(v107, v99, v100);
        v110 = vbslq_s8(v107, v95, v96);
        v111 = vbslq_s8(v107, v90, v92);
        v112 = v83;
        v112.i32[3] = v42.i32[1];
        v113 = vuzp2q_s32(v76, v40);
        v114 = vtrn2q_s32(vrev64q_s32(v113), v112);
        v115 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v113, v76)), vuzp2q_s32(v83, v42));
        v116 = vbslq_s8(v107, v114, v115);
        v117 = vuzp1q_s32(v83, v42);
        v118 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v76, v40)), vextq_s8(v83, v117, 0xCuLL));
        v119 = v40;
        v119.i32[0] = v76.i32[2];
        v120 = vtrn2q_s32(vrev64q_s32(v119), v117);
        v121 = vbslq_s8(v107, v118, v120);
        v122 = v82;
        v122.i32[3] = v42.i32[1];
        v123 = vuzp2q_s32(v74, v40);
        v124 = vtrn2q_s32(vrev64q_s32(v123), v122);
        v125 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v123, v74)), vuzp2q_s32(v82, v42));
        v126 = vbslq_s8(v107, v124, v125);
        v127 = vuzp1q_s32(v82, v42);
        v128 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v74, v40)), vextq_s8(v82, v127, 0xCuLL));
        v129 = v40;
        v129.i32[0] = v74.i32[2];
        v130 = vrev64q_s32(v129);
        v131 = vtrn2q_s32(v130, v127);
        if ((v73 & 2) != 0)
        {
          v106 -= 2;
        }

        v132 = v106 - (v73 & 1);
        v130.i32[0] = a12[1] & 1;
        v133 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v130, v34)), 0);
        v34 = vbslq_s8(v133, v126, vbslq_s8(v107, v128, v131));
        v134 = vbslq_s8(v133, v116, v121);
        v135 = vbslq_s8(v133, v110, v111);
        v136 = vbslq_s8(v133, v108, v109);
        if (v132 <= 1)
        {
          v142 = 0;
        }

        else
        {
          v137 = vbslq_s8(v107, v100, v99);
          v138 = vbslq_s8(v107, v92, v90);
          v139 = vbslq_s8(v107, v96, v95);
          v140 = vbslq_s8(v107, v120, v118);
          v141 = vbslq_s8(v107, v131, v128);
          *a14 = v34;
          *(a14 + 16) = vbslq_s8(v133, v141, v126);
          *v62 = v134;
          *(v62 + 16) = vbslq_s8(v133, v140, v116);
          *v63 = v135;
          *(v63 + 16) = vbslq_s8(v133, v138, v110);
          v132 -= 2;
          v34 = vbslq_s8(v133, vbslq_s8(v107, v125, v124), v141);
          *v71 = v136;
          *(v71 + 16) = vbslq_s8(v133, v137, v108);
          v134 = vbslq_s8(v133, vbslq_s8(v107, v115, v114), v140);
          v135 = vbslq_s8(v133, v139, v138);
          v136 = vbslq_s8(v133, vbslq_s8(v107, v105, v103), v137);
          v142 = 32;
        }

        if (v132 >= 1)
        {
          *(v142 + a14) = v34;
          *(v142 + v62) = v134;
          *(v142 + v63) = v135;
          *(v142 + v71) = v136;
          v142 |= 0x10uLL;
        }

        ++v31;
        ++v32;
        v75 = a12[4];
        if (v75 == v72)
        {
          goto LABEL_171;
        }

        a14 += v142;
        v62 += v142;
        v63 += v142;
        v71 += v142;
        ++v72;
      }

      else
      {
        v75 = a12[4];
      }

      v143 = a12[5];
      v144 = v143 != 0;
      if (v75 == 0 && v144 || (v145 = v75 - v144, v72 > v145))
      {
        v183 = v71;
        v182 = v63;
        v181 = v62;
        v180 = a14;
        if (v143)
        {
          goto LABEL_108;
        }

LABEL_106:
        v43 = 2 * a17;
        goto LABEL_171;
      }

      v146 = v145 - v72 + 1;
      while (1)
      {
        v147 = 0uLL;
        if (v31)
        {
          if (v31 + 1 <= result)
          {
            v148 = *v31;
          }

          else
          {
            v148 = 0uLL;
          }

          v149 = 0uLL;
          v150 = 0uLL;
          v151 = 0uLL;
          v155 = (v31 + v38);
          if ((v31 + v38 + 16) <= result)
          {
            v149 = *v155;
          }

          v156 = (v155 + v38);
          if (&v156[1] <= result)
          {
            v150 = *v156;
          }

          v157 = (v156 + v38);
          if (&v157[1] <= result)
          {
            v151 = *v157;
          }

          ++v31;
          if (v32)
          {
LABEL_95:
            if (&v32[1] <= v33)
            {
              v147 = *v32;
            }

            v152 = 0uLL;
            v153 = 0uLL;
            v154 = 0uLL;
            v158 = (v32 + v39);
            if (v32[1].u64 + v39 <= v33)
            {
              v152 = *v158;
            }

            v159 = (v158 + v39);
            if (&v159[1] <= v33)
            {
              v153 = *v159;
            }

            v160 = (v159 + v39);
            if (&v160[1] <= v33)
            {
              v154 = *v160;
            }

            ++v32;
            goto LABEL_104;
          }
        }

        else
        {
          v148 = 0uLL;
          v149 = 0uLL;
          v150 = 0uLL;
          v151 = 0uLL;
          if (v32)
          {
            goto LABEL_95;
          }
        }

        v152 = 0uLL;
        v153 = 0uLL;
        v154 = 0uLL;
LABEL_104:
        v161 = v154;
        v161.i32[3] = v42.i32[1];
        v162 = vuzp2q_s32(v151, v40);
        v34 = vtrn2q_s32(vrev64q_s32(v162), v161);
        v163 = vuzp1q_s32(v154, v42);
        v164 = v40;
        v165 = v153;
        v165.i32[3] = v42.i32[1];
        v166 = vuzp2q_s32(v150, v40);
        v167 = v152;
        v167.i32[3] = v42.i32[1];
        v168 = vuzp2q_s32(v149, v40);
        v169 = vuzp2q_s32(v148, v40);
        v170 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v169, v148)), vuzp2q_s32(v147, v42));
        v171 = vuzp1q_s32(v147, v42);
        v172 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v148, v40)), vextq_s8(v147, v171, 0xCuLL));
        v173 = vuzp1q_s32(v153, v42);
        v147.i32[3] = v42.i32[1];
        v174 = vtrn2q_s32(vrev64q_s32(v169), v147);
        v175 = v40;
        v175.i32[0] = v148.i32[2];
        v176 = v40;
        v176.i32[0] = v150.i32[2];
        v177 = vtrn2q_s32(vrev64q_s32(v175), v171);
        v178 = vuzp1q_s32(v152, v42);
        *a14 = v172;
        *(a14 + 16) = v174;
        v179 = v40;
        v179.i32[0] = v149.i32[2];
        *(a14 + 32) = v177;
        *(a14 + 48) = v170;
        v180 = (a14 + 64);
        v181 = (v62 + 64);
        *v62 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v149, v40)), vextq_s8(v152, v178, 0xCuLL));
        *(v62 + 16) = vtrn2q_s32(vrev64q_s32(v168), v167);
        *(v62 + 32) = vtrn2q_s32(vrev64q_s32(v179), v178);
        *(v62 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v168, v149)), vuzp2q_s32(v152, v42));
        v182 = (v63 + 64);
        *v63 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v150, v40)), vextq_s8(v153, v173, 0xCuLL));
        *(v63 + 16) = vtrn2q_s32(vrev64q_s32(v166), v165);
        *(v63 + 32) = vtrn2q_s32(vrev64q_s32(v176), v173);
        *(v63 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v166, v150)), vuzp2q_s32(v153, v42));
        v183 = (v71 + 64);
        v164.i32[0] = v151.i32[2];
        *(v71 + 32) = vtrn2q_s32(vrev64q_s32(v164), v163);
        *(v71 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v162, v151)), vuzp2q_s32(v154, v42));
        a14 += 64;
        *v71 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v151, v40)), vextq_s8(v154, v163, 0xCuLL));
        *(v71 + 16) = v34;
        v62 += 64;
        v63 += 64;
        v71 += 64;
        if (!--v146)
        {
          v143 = a12[5];
          if (!v143)
          {
            goto LABEL_106;
          }

LABEL_108:
          v184 = 4 - v143;
          if (v35 == a12[6])
          {
            v185 = 4 - a12[7];
          }

          else
          {
            v185 = 4;
          }

          if (v31)
          {
            if (v185 < 2)
            {
              v187 = 0;
              v186 = v31;
              v188 = v31;
            }

            else
            {
              v186 = (v31 + v38);
              if (v185 == 2)
              {
                v187 = 0;
                v188 = (v31 + v38);
              }

              else
              {
                v188 = (v31 + v38);
                v186 = (v186 + v38);
                if (v185 <= 3)
                {
                  v187 = 0;
                }

                else
                {
                  v187 = v38;
                }
              }
            }

            v197 = (v186 + v187);
            v190 = 0uLL;
            v191 = 0uLL;
            v192 = 0uLL;
            v189 = 0uLL;
            if ((4 - v143))
            {
              if ((v31 + 4 * v184) <= result)
              {
                v189.i32[0] = *(v31 + 3 - v143);
              }

              if ((v188 + 4 * v184) <= result)
              {
                v190.i32[0] = *(v188 + 3 - v143);
              }

              if ((v186 + 4 * v184) <= result)
              {
                v191.i32[0] = *(v186 + 3 - v143);
              }

              if ((v197 + 4 * v184) <= result)
              {
                v192.i32[0] = *(v197 + 3 - v143);
              }
            }

            if (((4 - v143) & 2) != 0)
            {
              v189 = vextq_s8(v189, v189, 8uLL);
              if ((v31 + 8) <= result)
              {
                v198.i64[0] = *v31;
                v198.i64[1] = vextq_s8(v189, v189, 8uLL).u64[0];
                v189 = v198;
              }

              v190 = vextq_s8(v190, v190, 8uLL);
              if (v188 + 1 <= result)
              {
                v199.i64[0] = *v188;
                v199.i64[1] = vextq_s8(v190, v190, 8uLL).u64[0];
                v190 = v199;
              }

              v191 = vextq_s8(v191, v191, 8uLL);
              if (v186 + 1 <= result)
              {
                v200.i64[0] = *v186;
                v200.i64[1] = vextq_s8(v191, v191, 8uLL).u64[0];
                v191 = v200;
              }

              v192 = vextq_s8(v192, v192, 8uLL);
              if (v197 + 1 <= result)
              {
                v201.i64[0] = *v197;
                v201.i64[1] = vextq_s8(v192, v192, 8uLL).u64[0];
                v192 = v201;
              }
            }

            v31 = (v31 + 4 * v184);
            if (v32)
            {
LABEL_140:
              if (v185 < 2)
              {
                v203 = 0;
                v202 = v32;
                v204 = v32;
              }

              else
              {
                v202 = (v32->i64 + v39);
                if (v185 == 2)
                {
                  v203 = 0;
                  v204 = (v32->i64 + v39);
                }

                else
                {
                  v204 = (v32->i64 + v39);
                  v202 = (v202 + v39);
                  if (v185 <= 3)
                  {
                    v203 = 0;
                  }

                  else
                  {
                    v203 = v39;
                  }
                }
              }

              v205 = (v202 + v203);
              v194 = 0uLL;
              v195 = 0uLL;
              v196 = 0uLL;
              v193 = 0uLL;
              if ((4 - v143))
              {
                if (v32 + 4 * v184 <= v33)
                {
                  v193.i32[0] = v32->i32[3 - v143];
                }

                if (v204 + 4 * v184 <= v33)
                {
                  v194.i32[0] = *(v204 + 3 - v143);
                }

                if (v202 + 4 * v184 <= v33)
                {
                  v195.i32[0] = *(v202 + 3 - v143);
                }

                if (v205 + 4 * v184 <= v33)
                {
                  v196.i32[0] = *(v205 + 3 - v143);
                }
              }

              if (((4 - v143) & 2) != 0)
              {
                v193 = vextq_s8(v193, v193, 8uLL);
                v43 = 2 * a17;
                if (&v32->u64[1] <= v33)
                {
                  v206.i64[0] = v32->i64[0];
                  v206.i64[1] = vextq_s8(v193, v193, 8uLL).u64[0];
                  v193 = v206;
                }

                v194 = vextq_s8(v194, v194, 8uLL);
                if ((v204 + 1) <= v33)
                {
                  v207.i64[0] = *v204;
                  v207.i64[1] = vextq_s8(v194, v194, 8uLL).u64[0];
                  v194 = v207;
                }

                v195 = vextq_s8(v195, v195, 8uLL);
                if ((v202 + 1) <= v33)
                {
                  v208.i64[0] = *v202;
                  v208.i64[1] = vextq_s8(v195, v195, 8uLL).u64[0];
                  v195 = v208;
                }

                v196 = vextq_s8(v196, v196, 8uLL);
                if ((v205 + 1) <= v33)
                {
                  v209.i64[0] = *v205;
                  v209.i64[1] = vextq_s8(v196, v196, 8uLL).u64[0];
                  v196 = v209;
                }
              }

              else
              {
                v43 = 2 * a17;
              }

              v32 = (v32 + 4 * v184);
LABEL_167:
              v210 = vuzp1q_s32(v193, v42);
              v211 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v189, v40)), vextq_s8(v193, v210, 0xCuLL));
              v34 = vuzp1q_s32(v194, v42);
              v212 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v190, v40)), vextq_s8(v194, v34, 0xCuLL));
              v213 = vuzp1q_s32(v195, v42);
              v214 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v191, v40)), vextq_s8(v195, v213, 0xCuLL));
              v215 = vuzp1q_s32(v196, v42);
              v216 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v192, v40)), vextq_s8(v196, v215, 0xCuLL));
              if ((v184 & 2) != 0)
              {
                v193.i32[3] = v42.i32[1];
                v194.i32[3] = v42.i32[1];
                v195.i32[3] = v42.i32[1];
                v196.i32[3] = v42.i32[1];
                *v180 = v211;
                v180[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v189, v40)), v193);
                *v181 = v212;
                v181[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v190, v40)), v194);
                *v182 = v214;
                v182[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v191, v40)), v195);
                *v183 = v216;
                v183[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v192, v40)), v196);
                if (v184)
                {
                  v217 = v40;
                  v217.i32[0] = v189.i32[2];
                  v218 = vtrn2q_s32(vrev64q_s32(v217), v210);
                  v219 = v40;
                  v219.i32[0] = v190.i32[2];
                  v220 = vrev64q_s32(v219);
                  v221 = v40;
                  v221.i32[0] = v191.i32[2];
                  v222 = vtrn2q_s32(vrev64q_s32(v221), v213);
                  v223 = v40;
                  v223.i32[0] = v192.i32[2];
                  v180[2] = v218;
                  v181[2] = vtrn2q_s32(v220, v34);
                  v182[2] = v222;
                  v183[2] = vtrn2q_s32(vrev64q_s32(v223), v215);
                }
              }

              else
              {
                *v180 = v211;
                *v181 = v212;
                *v182 = v214;
                *v183 = v216;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v189 = 0uLL;
            v190 = 0uLL;
            v191 = 0uLL;
            v192 = 0uLL;
            if (v32)
            {
              goto LABEL_140;
            }
          }

          v193 = 0uLL;
          v194 = 0uLL;
          v195 = 0uLL;
          v196 = 0uLL;
          v43 = 2 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  v19 = a12;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v155, a3);
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v154, a4);
  v152 = 0;
  v153 = 0;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v151, a6);
  v21 = a12[2];
  v22 = a12[6];
  if (v21 <= v22)
  {
    v138 = *(a13 + 60);
    do
    {
      v24 = *(a5 + 8);
      if (v24)
      {
        v25 = *(a11 + 24);
        v26 = (HIDWORD(v25) * v138) + 4 * v21;
        v27 = *(*(v24 + 40) + 8 * *(a11 + 60));
        if (*(v27 + 12) - 1 < v26)
        {
          v26 = *(v27 + 12) - 1;
        }

        if (*(v24 + 104) == 1)
        {
          v28 = (*(v27 + 8 * v25 + 24) + 8 * v26);
        }

        else
        {
          v30 = (v26 * *(v24 + 108)) >> *(v24 + 112);
          if (v30 >= *(v27 + 20) - 1)
          {
            LODWORD(v30) = *(v27 + 20) - 1;
          }

          v28 = (*(v27 + 8 * v25 + 24) + 8 * v30);
        }

        v31 = *v28;
        v32 = HIDWORD(*v28);
        v33 = a1 + *v28;
        v34 = a2 - *v28;
        if (a2 >= *v28)
        {
          v29 = (a1 + v31);
        }

        else
        {
          v29 = 0;
        }

        if (v34 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v35 = a2 >= v31;
        v36 = v33 + v32;
        if (!v35)
        {
          v36 = 0;
        }

        v152 = v29;
        v153 = v36;
      }

      else
      {
        v29 = v152;
      }

      v37 = (a14 + a17);
      v38 = (a14 + a17 + a17);
      v39 = (v38 + a17);
      if (!v29)
      {
        goto LABEL_61;
      }

      v40 = a16;
      if (a16)
      {
        if (v21 == v19[2])
        {
          v41 = v19[3] + 1;
          v42 = a14;
          a14 = (a14 + a17);
          v37 = v38;
          v38 = (v38 + a17);
          do
          {
            v39 = v38;
            v38 = v37;
            v37 = a14;
            a14 = v42;
            v42 = a16;
            --v41;
          }

          while (v41);
        }

        v142 = v39;
        if (v21 == v22)
        {
          v43 = v19[7];
          switch(v43)
          {
            case 1u:
              goto LABEL_33;
            case 2u:
              goto LABEL_30;
            case 3u:
              v37 = a16;
LABEL_30:
              v38 = a16;
              goto LABEL_33;
          }
        }
      }

      else
      {
        v142 = (v38 + a17);
      }

      v40 = v39;
LABEL_33:
      v44 = *v19;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v152, v44);
      if (!result)
      {
        return result;
      }

      if (!v19[1])
      {
        v91 = v19[4];
        goto LABEL_51;
      }

      v45 = v155;
      v46 = vld1q_dup_s16(v45);
      v145 = v46;
      v47 = v154;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v152, a9, v150);
      v48 = xmmword_296B6EE70;
      v49.i32[0] = 0;
      v50 = vdupq_n_s16(v47);
      v56 = vdupq_n_s16(v151);
      v51 = vqtbl2q_s8(*(&v56 - 1), xmmword_296B6EDD0);
      v52 = v145;
      v53 = v150[0];
      v54 = vqtbl2q_s8(*v52.i8, xmmword_296B6EE70);
      v55 = vqtbl2q_s8(*v52.i8, xmmword_296B6EE90);
      v56.i16[1] = v47;
      v56.i16[3] = v151;
      v56.i16[5] = v47;
      v19 = a12;
      v56.i16[7] = v151;
      v57 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EE60);
      v159.val[0] = v55;
      v159.val[1] = v51;
      v58 = vqtbl2q_s8(v159, xmmword_296B6EE80);
      v59 = v54;
      v60 = vqtbl2q_s8(*v52.i8, xmmword_296B6EEA0);
      v61 = vqtbl2q_s8(*(&v51 - 1), xmmword_296B6EE60);
      v161.val[0] = vqtbl2q_s8(*v52.i8, xmmword_296B6EEB0);
      v161.val[1] = v56;
      v62 = vqtbl2q_s8(v161, xmmword_296B6EDD0);
      v161.val[1] = v51;
      v63 = vqtbl2q_s8(v161, xmmword_296B6EE80);
      v64 = v60;
      v65 = v150[1];
      v66 = vqtbl2q_s8(*v52.i8, xmmword_296B6EE70);
      v67 = vqtbl2q_s8(*v52.i8, xmmword_296B6EEA0);
      v161.val[1] = v51;
      v68 = vqtbl2q_s8(*v67.i8, xmmword_296B6EE60);
      if (a12[4] == v44)
      {
        v69 = 4 - a12[5];
      }

      else
      {
        v69 = 4;
      }

      v70 = a12[1];
      v48.i32[0] = v70 & 2;
      v71 = vceqq_s32(v48, v49).u64[0];
      v163.val[0] = vqtbl2q_s8(*v52.i8, xmmword_296B6EEB0);
      v163.val[1] = v51;
      v72 = v56;
      v73 = vdupq_lane_s32(v71, 0);
      v74 = vbslq_s8(v73, vqtbl2q_s8(v163, xmmword_296B6EE80), vqtbl2q_s8(*v67.i8, xmmword_296B6EDD0));
      v163.val[1] = v56;
      v75 = vbslq_s8(v73, v68, vqtbl2q_s8(v163, xmmword_296B6EDD0));
      v76 = vqtbl2q_s8(*v66.i8, xmmword_296B6EE60);
      v163.val[0] = vqtbl2q_s8(*v52.i8, xmmword_296B6EE90);
      v163.val[1] = v51;
      v77 = v56;
      v78 = vbslq_s8(v73, vqtbl2q_s8(v163, xmmword_296B6EE80), vqtbl2q_s8(*v66.i8, xmmword_296B6EDD0));
      v163.val[1] = v56;
      v79 = vbslq_s8(v73, v76, vqtbl2q_s8(v163, xmmword_296B6EDD0));
      v80 = v56;
      v81 = vbslq_s8(v73, v63, vqtbl2q_s8(*v64.i8, xmmword_296B6EDD0));
      v82 = vbslq_s8(v73, v61, v62);
      v83 = v56;
      v84 = vbslq_s8(v73, v58, vqtbl2q_s8(*v59.i8, xmmword_296B6EDD0));
      v85 = vbslq_s8(v73, v57, vqtbl2q_s8(*v55.i8, xmmword_296B6EDD0));
      if ((v70 & 2) != 0)
      {
        v69 -= 2;
      }

      if (v70)
      {
        v86 = vextq_s8(v84, v85, 8uLL).u64[0];
        v85 = vextq_s8(v85, v84, 8uLL);
        v87 = vextq_s8(v81, v82, 8uLL).u64[0];
        v82 = vextq_s8(v82, v81, 8uLL);
        v88 = vextq_s8(v78, v79, 8uLL).u64[0];
        v79 = vextq_s8(v79, v78, 8uLL);
        v89 = vextq_s8(v74, v75, 8uLL).u64[0];
        --v69;
        v75 = vextq_s8(v75, v74, 8uLL);
        v84.i64[0] = v86;
        v81.i64[0] = v87;
        v78.i64[0] = v88;
        v74.i64[0] = v89;
      }

      if (v69 <= 1)
      {
        v90 = 0;
      }

      else
      {
        *a14 = v85;
        *v37 = v82;
        v69 -= 2;
        v85.i64[0] = v84.i64[0];
        v82.i64[0] = v81.i64[0];
        *v38 = v79;
        v79.i64[0] = v78.i64[0];
        *v40 = v75;
        v75.i64[0] = v74.i64[0];
        v90 = 16;
      }

      if (v69 >= 1)
      {
        *(a14->i64 + v90) = v85.i64[0];
        *(v37->i64 + v90) = v82.i64[0];
        *(v38->i64 + v90) = v79.i64[0];
        *(v40->i64 + v90) = v75.i64[0];
        v90 |= 8uLL;
      }

      v91 = a12[4];
      if (v91 != v44)
      {
        a14 = (a14 + v90);
        v37 = (v37 + v90);
        v38 = (v38 + v90);
        v40 = (v40 + v90);
        ++v44;
LABEL_51:
        v92 = v19[5];
        v93 = v92 != 0;
        if (v91 != 0 || !v93)
        {
          v94 = v91 - v93;
          if (v44 <= v94)
          {
            v137 = v21;
            v95 = v94 - v44 + 1;
            do
            {
              v99 = v40;
              v98 = v155;
              v100 = vld1q_dup_s16(v98);
              v146 = v100;
              v97 = &v154;
              v101 = vld1q_dup_s16(v97);
              v143 = v101;
              result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v152, a9, v149);
              v156.val[0] = v143;
              v96 = &v151;
              v156.val[1] = vld1q_dup_s16(v96);
              v156.val[0] = vqtbl2q_s8(v156, xmmword_296B6EDD0);
              v162.val[0] = v146;
              v162.val[1] = v149[1];
              v102 = vqtbl2q_s8(v162, xmmword_296B6EEA0);
              v156.val[1] = vqtbl2q_s8(v156, xmmword_296B6EE60);
              v103 = vqtbl2q_s8(v162, xmmword_296B6EEB0);
              v104 = vqtbl2q_s8(v156, xmmword_296B6EE80);
              v105 = vqtbl2q_s8(v162, xmmword_296B6EE70);
              v106 = vqtbl2q_s8(v156, xmmword_296B6EE60);
              v107 = vqtbl2q_s8(v162, xmmword_296B6EE90);
              v108 = vqtbl2q_s8(v156, xmmword_296B6EE80);
              v162.val[1] = v149[0];
              v109 = vqtbl2q_s8(v162, xmmword_296B6EEA0);
              v110 = vqtbl2q_s8(v156, xmmword_296B6EE60);
              v111 = vqtbl2q_s8(v162, xmmword_296B6EEB0);
              v112 = vqtbl2q_s8(v156, xmmword_296B6EE80);
              v113 = vqtbl2q_s8(v162, xmmword_296B6EE70);
              v114 = vqtbl2q_s8(v156, xmmword_296B6EE60);
              v115 = vqtbl2q_s8(v162, xmmword_296B6EE90);
              *a14 = v114;
              a14[1] = vqtbl2q_s8(v156, xmmword_296B6EE80);
              a14 += 2;
              *v37 = v110;
              v37[1] = v112;
              v37 += 2;
              *v38 = v106;
              v38[1] = v108;
              v38 += 2;
              v40 += 2;
              *v99 = v156.val[1];
              v99[1] = v104;
              --v95;
            }

            while (v95);
            v21 = v137;
            v19 = a12;
            v92 = a12[5];
          }
        }

        v39 = v142;
        if (v92)
        {
          v116 = vld1q_dup_s16(v155);
          v144 = v116;
          v117 = vld1q_dup_s16(&v154);
          v147 = v117;
          result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v152, a9, v148);
          v118 = v144;
          v157.val[0] = v147;
          v157.val[1] = vld1q_dup_s16(&v151);
          v119 = vqtbl2q_s8(v157, xmmword_296B6EDD0);
          v120 = v148[0];
          v121 = v148[1];
          v122 = vqtbl2q_s8(*v118.i8, xmmword_296B6EEA0);
          v123 = vqtbl2q_s8(*(&v119 - 1), xmmword_296B6EE60);
          v158.val[0] = vqtbl2q_s8(*v118.i8, xmmword_296B6EE70);
          v158.val[1] = v119;
          v124 = vqtbl2q_s8(v158, xmmword_296B6EE60);
          v125 = v144;
          v158.val[1] = vqtbl2q_s8(*v125.i8, xmmword_296B6EEA0);
          v126 = v119;
          v127 = vqtbl2q_s8(*(&v158 + 16), xmmword_296B6EE60);
          v160.val[0] = vqtbl2q_s8(*v125.i8, xmmword_296B6EE70);
          v160.val[1] = v119;
          v128 = vqtbl2q_s8(v160, xmmword_296B6EE60);
          v129 = 4 - v19[5];
          if ((v129 & 2) != 0)
          {
            *a14 = v128;
            *v37 = v127;
            *v38 = v124;
            *v40 = v123;
            if (v129)
            {
              v130 = vqtbl2q_s8(*v118.i8, xmmword_296B6EEB0);
              v131 = vqtbl2q_s8(*(&v119 - 1), xmmword_296B6EE80).u64[0];
              v132 = vqtbl2q_s8(*v118.i8, xmmword_296B6EE90);
              v133 = vqtbl2q_s8(*(&v119 - 1), xmmword_296B6EE80).u64[0];
              v134 = vqtbl2q_s8(*v125.i8, xmmword_296B6EEB0);
              v135 = vqtbl2q_s8(*(&v119 - 1), xmmword_296B6EE80).u64[0];
              v136 = vqtbl2q_s8(*v125.i8, xmmword_296B6EE90);
              a14[1].i64[0] = vqtbl2q_s8(*(&v119 - 1), xmmword_296B6EE80).u64[0];
              v37[1].i64[0] = v135;
              v38[1].i64[0] = v133;
              v40[1].i64[0] = v131;
            }
          }

          else
          {
            a14->i64[0] = v128.i64[0];
            v37->i64[0] = v127.i64[0];
            v38->i64[0] = v124.i64[0];
            v40->i64[0] = v123.i64[0];
          }
        }

        goto LABEL_61;
      }

      v39 = v142;
LABEL_61:
      a14 = (v39 + a17);
      v22 = v19[6];
      v35 = v21++ >= v22;
    }

    while (!v35);
  }

  return result;
}

_DWORD *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v173, a3);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v172, a4);
  v22 = a11[3];
  v23 = *(a5 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v171, a6);
  v30 = a12[2];
  v31 = a12[6];
  if (v30 <= v31)
  {
    v33 = vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
    v34 = vld1q_dup_f32(&v173);
    v35.i64[0] = __PAIR64__(v171, v172);
    v35.i64[1] = __PAIR64__(v171, v172);
    v36 = *(a13 + 60);
    while (1)
    {
      v37 = *(a5 + 8);
      if (v37)
      {
        v38 = *(*(v37 + 40) + 8 * a11[7].u32[1]);
        v39 = *(v38 + 12) - 1;
        if (v39 >= (HIDWORD(*&a11[3]) * v36) + 4 * v30)
        {
          v39 = (HIDWORD(*&a11[3]) * v36) + 4 * v30;
        }

        v40 = v38 + 8 * *&a11[3];
        if (*(v37 + 104) == 1)
        {
          v41 = (*(v40 + 24) + 8 * v39);
        }

        else
        {
          v42 = (v39 * *(v37 + 108)) >> *(v37 + 112);
          v43 = *(v38 + 20) - 1;
          if (v42 < v43)
          {
            v43 = v42;
          }

          v41 = (*(v40 + 24) + 8 * v43);
        }

        v44 = *v41;
        if (a2 <= v44)
        {
          v27 = 0;
          result = 0;
          v49 = 2 * a17 + a14 + a17;
          goto LABEL_108;
        }

        v45 = v44;
        if (a2 - v44 >= HIDWORD(v44))
        {
          v46 = HIDWORD(v44);
        }

        else
        {
          v46 = a2 - v44;
        }

        result = (v45 + a1);
        v27 = v46 + v45 + a1;
      }

      v47 = a14 + a17;
      v48 = a14 + a17 + a17;
      v49 = v48 + a17;
      if (result)
      {
        break;
      }

LABEL_108:
      a14 = v49 + a17;
      v31 = a12[6];
      if (v30++ >= v31)
      {
        return result;
      }
    }

    if (a16)
    {
      if (v30 == a12[2])
      {
        v50 = a12[3] + 1;
        v51 = v48 + a17;
        v52 = a14 + a17 + a17;
        v53 = a14 + a17;
        v54 = a14;
        do
        {
          a14 = v54;
          v47 = v53;
          v48 = v52;
          v49 = v51;
          v51 = v52;
          v52 = v53;
          v53 = v54;
          v54 = a16;
          --v50;
        }

        while (v50);
      }

      if (v30 == v31)
      {
        v55 = a12[7];
        switch(v55)
        {
          case 1u:
LABEL_27:
            v56 = a16;
LABEL_29:
            v57 = *a12;
            result += 4 * v57;
            if (result - 1 >= v27)
            {
              return result;
            }

            v58 = a12[1];
            if (v58)
            {
              if ((result + 4) <= v27)
              {
                v59 = *result;
              }

              else
              {
                v59 = 0uLL;
              }

              v61 = 0uLL;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = &result[v33];
              if (&result[v33 + 4] <= v27)
              {
                v61 = *v64;
              }

              v65 = (v64 + v33 * 4);
              if (&v65[1] <= v27)
              {
                v62 = *v65;
              }

              v66 = (v65 + v33 * 4);
              if (&v66[1] <= v27)
              {
                v63 = *v66;
              }

              v28.i32[0] = 0;
              v67 = vuzp1q_s32(v34, v59);
              v68 = vzip1q_s32(vuzp1q_s32(v67, v67), v35);
              v69 = vuzp2q_s32(v34, v59);
              v59.i32[0] = v34.i32[2];
              v70 = vzip1q_s32(vuzp1q_s32(v59, v59), v35);
              v71 = vzip2q_s32(vuzp1q_s32(v69, v69), v35);
              v72 = vtrn2q_s32(v69, v34);
              v73 = vzip2q_s32(vuzp1q_s32(v72, v72), v35);
              v74 = vuzp1q_s32(v34, v61);
              v75 = vuzp2q_s32(v34, v61);
              v61.i32[0] = v34.i32[2];
              v76 = vzip1q_s32(vuzp1q_s32(v74, v74), v35);
              v77 = vzip1q_s32(vuzp1q_s32(v61, v61), v35);
              v78 = vzip2q_s32(vuzp1q_s32(v75, v75), v35);
              v79 = vtrn2q_s32(v75, v34);
              v80 = vzip2q_s32(vuzp1q_s32(v79, v79), v35);
              v81 = vuzp1q_s32(v34, v62);
              v82 = vzip1q_s32(vuzp1q_s32(v81, v81), v35);
              v83 = vuzp2q_s32(v34, v62);
              v62.i32[0] = v34.i32[2];
              v84 = vzip1q_s32(vuzp1q_s32(v62, v62), v35);
              v85 = vzip2q_s32(vuzp1q_s32(v83, v83), v35);
              v86 = vtrn2q_s32(v83, v34);
              v87 = vzip2q_s32(vuzp1q_s32(v86, v86), v35);
              v88 = vuzp1q_s32(v34, v63);
              v89 = vzip1q_s32(vuzp1q_s32(v88, v88), v35);
              v90 = vuzp2q_s32(v34, v63);
              v63.i32[0] = v34.i32[2];
              v91 = vzip1q_s32(vuzp1q_s32(v63, v63), v35);
              v92 = vzip2q_s32(vuzp1q_s32(v90, v90), v35);
              v93 = vtrn2q_s32(v90, v34);
              v94 = vuzp1q_s32(v93, v93);
              v95 = vzip2q_s32(v94, v35);
              if (a12[4] == v57)
              {
                v96 = 4 - a12[5];
              }

              else
              {
                v96 = 4;
              }

              v94.i32[0] = a12[1] & 2;
              v97 = vdupq_lane_s32(*&vceqq_s32(v94, v28), 0);
              v98 = vbslq_s8(v97, v92, v95);
              v99 = vbslq_s8(v97, v89, v91);
              v100 = vbslq_s8(v97, v85, v87);
              v101 = vbslq_s8(v97, v82, v84);
              v102 = vbslq_s8(v97, v78, v80);
              v103 = vbslq_s8(v97, v76, v77);
              v104 = vbslq_s8(v97, v71, v73);
              if ((v58 & 2) != 0)
              {
                v96 -= 2;
              }

              v105 = v58 & 1;
              v106 = v96 - v105;
              v29.i32[0] = v105;
              v107 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v29, v28)), 0);
              v29 = vbslq_s8(v107, v104, vbslq_s8(v97, v68, v70));
              v108 = vbslq_s8(v107, v102, v103);
              v28 = vbslq_s8(v107, v100, v101);
              v109 = vbslq_s8(v107, v98, v99);
              if (v96 - v105 <= 1)
              {
                v114 = 0;
              }

              else
              {
                v110 = vbslq_s8(v97, v91, v89);
                v111 = vbslq_s8(v97, v84, v82);
                v112 = vbslq_s8(v97, v77, v76);
                v113 = vbslq_s8(v97, v70, v68);
                *a14 = v29;
                *(a14 + 16) = vbslq_s8(v107, v113, v104);
                *v47 = v108;
                *(v47 + 16) = vbslq_s8(v107, v112, v102);
                *v48 = v28;
                *(v48 + 16) = vbslq_s8(v107, v111, v100);
                v106 -= 2;
                v29 = vbslq_s8(v107, vbslq_s8(v97, v73, v71), v113);
                *v56 = v109;
                *(v56 + 16) = vbslq_s8(v107, v110, v98);
                v108 = vbslq_s8(v107, vbslq_s8(v97, v80, v78), v112);
                v28 = vbslq_s8(v107, vbslq_s8(v97, v87, v85), v111);
                v109 = vbslq_s8(v107, vbslq_s8(v97, v95, v92), v110);
                v114 = 32;
              }

              if (v106 >= 1)
              {
                *(v114 + a14) = v29;
                *(v114 + v47) = v108;
                *(v114 + v48) = v28;
                *(v114 + v56) = v109;
                v114 |= 0x10uLL;
              }

              result += 4;
              v60 = a12[4];
              if (v60 == v57)
              {
                goto LABEL_108;
              }

              a14 += v114;
              v47 += v114;
              v48 += v114;
              v56 += v114;
              ++v57;
            }

            else
            {
              v60 = a12[4];
            }

            v115 = a12[5];
            v116 = v115 != 0;
            if (v60 != 0 || !v116)
            {
              v117 = v60 - v116;
              if (v57 <= v117)
              {
                v118 = v117 - v57 + 1;
                do
                {
                  if (result)
                  {
                    if ((result + 4) <= v27)
                    {
                      v119 = *result;
                    }

                    else
                    {
                      v119 = 0uLL;
                    }

                    v120 = 0uLL;
                    v121 = 0uLL;
                    v122 = 0uLL;
                    v123 = &result[v33];
                    if (&result[v33 + 4] <= v27)
                    {
                      v120 = *v123;
                    }

                    v124 = (v123 + v33 * 4);
                    if (&v124[1] <= v27)
                    {
                      v121 = *v124;
                    }

                    v125 = (v124 + v33 * 4);
                    if (&v125[1] <= v27)
                    {
                      v122 = *v125;
                    }

                    result += 4;
                  }

                  else
                  {
                    v119 = 0uLL;
                    v120 = 0uLL;
                    v121 = 0uLL;
                    v122 = 0uLL;
                  }

                  v126 = vuzp2q_s32(v34, v122);
                  v127 = vtrn2q_s32(v126, v34);
                  v128 = vuzp1q_s32(v34, v122);
                  v129 = v121;
                  v129.i32[0] = v34.i32[2];
                  v28 = vzip1q_s32(vuzp1q_s32(v129, v129), v35);
                  v130 = vuzp2q_s32(v34, v121);
                  v131 = vzip2q_s32(vuzp1q_s32(v130, v130), v35);
                  v132 = vuzp1q_s32(v34, v121);
                  v133 = vtrn2q_s32(v130, v34);
                  v134 = v120;
                  v134.i32[0] = v34.i32[2];
                  v135 = vuzp2q_s32(v34, v120);
                  v136 = vuzp1q_s32(v34, v120);
                  v137 = vuzp2q_s32(v34, v119);
                  v138 = vtrn2q_s32(v137, v34);
                  v139 = vuzp1q_s32(v34, v119);
                  v140 = (a14 + 64);
                  v119.i32[0] = v34.i32[2];
                  *a14 = vzip1q_s32(vuzp1q_s32(v139, v139), v35);
                  *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v137, v137), v35);
                  *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v119, v119), v35);
                  *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v138, v138), v35);
                  v141 = vtrn2q_s32(v135, v34);
                  v142 = (v47 + 64);
                  *v47 = vzip1q_s32(vuzp1q_s32(v136, v136), v35);
                  *(v47 + 16) = vzip2q_s32(vuzp1q_s32(v135, v135), v35);
                  *(v47 + 32) = vzip1q_s32(vuzp1q_s32(v134, v134), v35);
                  *(v47 + 48) = vzip2q_s32(vuzp1q_s32(v141, v141), v35);
                  v143 = (v48 + 64);
                  *v48 = vzip1q_s32(vuzp1q_s32(v132, v132), v35);
                  *(v48 + 16) = v131;
                  *(v48 + 32) = v28;
                  *(v48 + 48) = vzip2q_s32(vuzp1q_s32(v133, v133), v35);
                  v144 = (v56 + 64);
                  *v56 = vzip1q_s32(vuzp1q_s32(v128, v128), v35);
                  *(v56 + 16) = vzip2q_s32(vuzp1q_s32(v126, v126), v35);
                  a14 += 64;
                  v122.i32[0] = v34.i32[2];
                  *(v56 + 32) = vzip1q_s32(vuzp1q_s32(v122, v122), v35);
                  *(v56 + 48) = vzip2q_s32(vuzp1q_s32(v127, v127), v35);
                  v47 += 64;
                  v48 += 64;
                  v56 += 64;
                  --v118;
                }

                while (v118);
                v115 = a12[5];
                if (!v115)
                {
                  goto LABEL_108;
                }

LABEL_73:
                v145 = 4 - v115;
                if (v30 == a12[6])
                {
                  v146 = 4 - a12[7];
                }

                else
                {
                  v146 = 4;
                }

                if (result)
                {
                  if (v146 < 2)
                  {
                    v148 = 0;
                    v147 = result;
                    v149 = result;
                  }

                  else
                  {
                    v147 = &result[v33];
                    if (v146 == 2)
                    {
                      v148 = 0;
                      v149 = &result[v33];
                    }

                    else
                    {
                      v149 = &result[v33];
                      v147 = (v147 + v33 * 4);
                      if (v146 <= 3)
                      {
                        v148 = 0;
                      }

                      else
                      {
                        v148 = v33 * 4;
                      }
                    }
                  }

                  v154 = (v147 + v148);
                  v151 = 0uLL;
                  v152 = 0uLL;
                  v153 = 0uLL;
                  v150 = 0uLL;
                  if ((4 - v115))
                  {
                    if (&result[v145] <= v27)
                    {
                      v150.i32[0] = result[3 - v115];
                    }

                    if (v149 + 4 * v145 <= v27)
                    {
                      v151.i32[0] = *(v149 + 3 - v115);
                    }

                    if (v147 + 4 * v145 <= v27)
                    {
                      v152.i32[0] = *(v147 + 3 - v115);
                    }

                    if (v154 + 4 * v145 <= v27)
                    {
                      v153.i32[0] = *(v154 + 3 - v115);
                    }
                  }

                  if (((4 - v115) & 2) != 0)
                  {
                    v150 = vextq_s8(v150, v150, 8uLL);
                    if ((result + 2) <= v27)
                    {
                      v155.i64[0] = *result;
                      v155.i64[1] = vextq_s8(v150, v150, 8uLL).u64[0];
                      v150 = v155;
                    }

                    v151 = vextq_s8(v151, v151, 8uLL);
                    if ((v149 + 1) <= v27)
                    {
                      v156.i64[0] = *v149;
                      v156.i64[1] = vextq_s8(v151, v151, 8uLL).u64[0];
                      v151 = v156;
                    }

                    v152 = vextq_s8(v152, v152, 8uLL);
                    if ((v147 + 1) <= v27)
                    {
                      v157.i64[0] = *v147;
                      v157.i64[1] = vextq_s8(v152, v152, 8uLL).u64[0];
                      v152 = v157;
                    }

                    v153 = vextq_s8(v153, v153, 8uLL);
                    if ((v154 + 1) <= v27)
                    {
                      v158.i64[0] = *v154;
                      v158.i64[1] = vextq_s8(v153, v153, 8uLL).u64[0];
                      v153 = v158;
                    }
                  }

                  result += v145;
                }

                else
                {
                  v150 = 0uLL;
                  v151 = 0uLL;
                  v152 = 0uLL;
                  v153 = 0uLL;
                }

                v159 = vuzp1q_s32(v34, v150);
                v28 = vzip1q_s32(vuzp1q_s32(v159, v159), v35);
                v160 = vuzp1q_s32(v34, v151);
                v161 = vzip1q_s32(vuzp1q_s32(v160, v160), v35);
                v162 = vuzp1q_s32(v34, v152);
                v163 = vzip1q_s32(vuzp1q_s32(v162, v162), v35);
                v164 = vuzp1q_s32(v34, v153);
                v165 = vzip1q_s32(vuzp1q_s32(v164, v164), v35);
                if (((4 - v115) & 2) != 0)
                {
                  v166 = vuzp2q_s32(v34, v150);
                  v167 = vuzp2q_s32(v34, v151);
                  v168 = vuzp2q_s32(v34, v152);
                  v169 = vuzp2q_s32(v34, v153);
                  *v140 = v28;
                  v140[1] = vzip2q_s32(vuzp1q_s32(v166, v166), v35);
                  v28 = vuzp1q_s32(v169, v169);
                  *v142 = v161;
                  v142[1] = vzip2q_s32(vuzp1q_s32(v167, v167), v35);
                  *v143 = v163;
                  v143[1] = vzip2q_s32(vuzp1q_s32(v168, v168), v35);
                  *v144 = v165;
                  v144[1] = vzip2q_s32(v28, v35);
                  if ((4 - v115))
                  {
                    v150.i32[0] = v34.i32[2];
                    v151.i32[0] = v34.i32[2];
                    v152.i32[0] = v34.i32[2];
                    v153.i32[0] = v34.i32[2];
                    v140[2] = vzip1q_s32(vuzp1q_s32(v150, v150), v35);
                    v142[2] = vzip1q_s32(vuzp1q_s32(v151, v151), v35);
                    v143[2] = vzip1q_s32(vuzp1q_s32(v152, v152), v35);
                    v144[2] = vzip1q_s32(vuzp1q_s32(v153, v153), v35);
                  }
                }

                else
                {
                  *v140 = v28;
                  *v142 = v161;
                  *v143 = v163;
                  *v144 = v165;
                }

                goto LABEL_108;
              }
            }

            v144 = v56;
            v143 = v48;
            v142 = v47;
            v140 = a14;
            if (v115)
            {
              goto LABEL_73;
            }

            goto LABEL_108;
          case 2u:
LABEL_26:
            v48 = a16;
            goto LABEL_27;
          case 3u:
            v47 = a16;
            goto LABEL_26;
        }
      }
    }

    v56 = v49;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  v174 = 0;
  v175 = 0;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v173, a4);
  v171 = 0;
  v172 = 0;
  v20 = a6;
  v21 = a2;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v170, v20);
  v23 = a12;
  v24 = a12[2];
  v25 = a12[6];
  if (v24 <= v25)
  {
    v26 = a17;
    v154 = *(a13 + 60);
    v151 = a2;
    while (1)
    {
      v28 = *(a3 + 8);
      if (v28)
      {
        v29 = *(a11 + 24);
        v30 = *(*(v28 + 40) + 8 * *(a11 + 60));
        v31 = *(v30 + 12) - 1;
        if (v31 >= (HIDWORD(v29) * v154) + 4 * v24)
        {
          v31 = (HIDWORD(*(a11 + 24)) * v154) + 4 * v24;
        }

        v32 = v30 + 8 * v29;
        if (*(v28 + 104) == 1)
        {
          v33 = (*(v32 + 24) + 8 * v31);
        }

        else
        {
          v34 = (v31 * *(v28 + 108)) >> *(v28 + 112);
          v35 = *(v30 + 20) - 1;
          if (v34 >= v35)
          {
            LODWORD(v34) = v35;
          }

          v33 = (*(v32 + 24) + 8 * v34);
        }

        v36 = *v33;
        v37 = HIDWORD(v36);
        if (v21 >= v36)
        {
          v38 = (a1 + v36);
        }

        else
        {
          v38 = 0;
        }

        if (v21 - v36 < HIDWORD(v36))
        {
          v37 = v21 - v36;
        }

        v39 = v21 >= v36;
        v40 = a1 + v36 + v37;
        if (!v39)
        {
          v40 = 0;
        }

        v174 = v38;
        v175 = v40;
      }

      v41 = *(a5 + 8);
      if (v41)
      {
        v42 = *(a11 + 24);
        v43 = *(*(v41 + 40) + 8 * *(a11 + 60));
        v44 = *(v43 + 12) - 1;
        if (v44 >= (HIDWORD(v42) * v154) + 4 * v24)
        {
          v44 = (HIDWORD(*(a11 + 24)) * v154) + 4 * v24;
        }

        v45 = v43 + 8 * v42;
        if (*(v41 + 104) == 1)
        {
          v46 = (*(v45 + 24) + 8 * v44);
        }

        else
        {
          v48 = (v44 * *(v41 + 108)) >> *(v41 + 112);
          v49 = *(v43 + 20) - 1;
          if (v48 >= v49)
          {
            LODWORD(v48) = v49;
          }

          v46 = (*(v45 + 24) + 8 * v48);
        }

        v50 = *v46;
        v51 = HIDWORD(*v46);
        v52 = a1 + *v46;
        v53 = v21 - *v46;
        if (v21 >= *v46)
        {
          v47 = (a1 + v50);
        }

        else
        {
          v47 = 0;
        }

        if (v53 < HIDWORD(v50))
        {
          v51 = v21 - v50;
        }

        v39 = v21 >= v50;
        v54 = v52 + v51;
        if (!v39)
        {
          v54 = 0;
        }

        v171 = v47;
        v172 = v54;
      }

      else
      {
        v47 = v171;
      }

      v55 = (a14 + v26);
      v56 = (a14 + v26 + v26);
      v57 = (v56 + v26);
      if (!v174 || !v47)
      {
        goto LABEL_77;
      }

      v58 = a16;
      if (!a16)
      {
        break;
      }

      if (v24 == v23[2])
      {
        v59 = v23[3] + 1;
        v60 = a14;
        a14 = (a14 + v26);
        v55 = v56;
        v56 = (v56 + v26);
        do
        {
          v57 = v56;
          v56 = v55;
          v55 = a14;
          a14 = v60;
          v60 = a16;
          --v59;
        }

        while (v59);
      }

      if (v24 != v25)
      {
        break;
      }

      v61 = v23[7];
      if (v61 != 1)
      {
        if (v61 != 2)
        {
          if (v61 != 3)
          {
            break;
          }

          v55 = a16;
        }

        v56 = a16;
      }

LABEL_50:
      v62 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v174, v62);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v171, v62);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        v63 = a7;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, a7, v169);
        v64 = v173;
        v158 = v169[0];
        v161 = v169[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, a9, v168);
        v65 = xmmword_296B6EE70;
        v23 = a12;
        v66.i32[0] = 0;
        v176.val[0] = vdupq_n_s16(v64);
        v176.val[1] = vdupq_n_s16(v170);
        v67 = vqtbl2q_s8(v176, xmmword_296B6EDD0);
        v182.val[0] = v158;
        v68 = v161;
        v182.val[1] = v168[0];
        v69 = v168[1];
        v176.val[0] = vqtbl2q_s8(v182, xmmword_296B6EE70);
        v70 = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EE60);
        v71 = vqtbl2q_s8(v182, xmmword_296B6EE90);
        v72.i16[1] = v64;
        v72.i16[3] = v170;
        v72.i16[5] = v64;
        v72.i16[7] = v170;
        v181.val[0] = v71;
        v181.val[1] = v67;
        v73 = vqtbl2q_s8(v181, xmmword_296B6EE80);
        v74 = v176.val[0];
        v176.val[0] = vqtbl2q_s8(v182, xmmword_296B6EEA0);
        v75 = vqtbl2q_s8(*(&v67 - 1), xmmword_296B6EE60);
        v182.val[0] = vqtbl2q_s8(v182, xmmword_296B6EEB0);
        v182.val[1] = v72;
        v76 = vqtbl2q_s8(v182, xmmword_296B6EDD0);
        v182.val[1] = v67;
        v77 = vqtbl2q_s8(v182, xmmword_296B6EE80);
        v78 = v176.val[0];
        v79 = vqtbl2q_s8(*v68.i8, xmmword_296B6EE70);
        v80 = vqtbl2q_s8(*v68.i8, xmmword_296B6EEA0);
        v182.val[1] = v67;
        v81 = vqtbl2q_s8(*v80.i8, xmmword_296B6EE60);
        if (a12[4] == v62)
        {
          v82 = 4 - a12[5];
        }

        else
        {
          v82 = 4;
        }

        v83 = a12[1];
        v65.i32[0] = v83 & 2;
        v84 = vceqq_s32(v65, v66).u64[0];
        v185.val[0] = vqtbl2q_s8(*v68.i8, xmmword_296B6EEB0);
        v185.val[1] = v67;
        v85 = v72;
        v86 = vdupq_lane_s32(v84, 0);
        v87 = vbslq_s8(v86, vqtbl2q_s8(v185, xmmword_296B6EE80), vqtbl2q_s8(*v80.i8, xmmword_296B6EDD0));
        v185.val[1] = v72;
        v88 = vbslq_s8(v86, v81, vqtbl2q_s8(v185, xmmword_296B6EDD0));
        v89 = vqtbl2q_s8(*v79.i8, xmmword_296B6EE60);
        v185.val[0] = vqtbl2q_s8(*v68.i8, xmmword_296B6EE90);
        v185.val[1] = v67;
        v90 = v72;
        v91 = vbslq_s8(v86, vqtbl2q_s8(v185, xmmword_296B6EE80), vqtbl2q_s8(*v79.i8, xmmword_296B6EDD0));
        v185.val[1] = v72;
        v92 = vbslq_s8(v86, v89, vqtbl2q_s8(v185, xmmword_296B6EDD0));
        v93 = v72;
        v94 = vbslq_s8(v86, v77, vqtbl2q_s8(*v78.i8, xmmword_296B6EDD0));
        v95 = vbslq_s8(v86, v75, v76);
        v96 = v72;
        v97 = vbslq_s8(v86, v73, vqtbl2q_s8(*v74.i8, xmmword_296B6EDD0));
        v98 = vbslq_s8(v86, v70, vqtbl2q_s8(*v71.i8, xmmword_296B6EDD0));
        if ((v83 & 2) != 0)
        {
          v82 -= 2;
        }

        if (v83)
        {
          v99 = vextq_s8(v97, v98, 8uLL).u64[0];
          v98 = vextq_s8(v98, v97, 8uLL);
          v100 = vextq_s8(v94, v95, 8uLL).u64[0];
          v95 = vextq_s8(v95, v94, 8uLL);
          v101 = vextq_s8(v91, v92, 8uLL).u64[0];
          v92 = vextq_s8(v92, v91, 8uLL);
          v102 = vextq_s8(v87, v88, 8uLL).u64[0];
          --v82;
          v88 = vextq_s8(v88, v87, 8uLL);
          v97.i64[0] = v99;
          v94.i64[0] = v100;
          v91.i64[0] = v101;
          v87.i64[0] = v102;
        }

        a7 = v63;
        if (v82 <= 1)
        {
          v103 = 0;
        }

        else
        {
          *a14 = v98;
          *v55 = v95;
          v82 -= 2;
          v98.i64[0] = v97.i64[0];
          v95.i64[0] = v94.i64[0];
          *v56 = v92;
          v92.i64[0] = v91.i64[0];
          *v58 = v88;
          v88.i64[0] = v87.i64[0];
          v103 = 16;
        }

        v21 = v151;
        if (v82 >= 1)
        {
          *(a14->i64 + v103) = v98.i64[0];
          *(v55->i64 + v103) = v95.i64[0];
          *(v56->i64 + v103) = v92.i64[0];
          *(v58->i64 + v103) = v88.i64[0];
          v103 |= 8uLL;
        }

        v104 = a12[4];
        if (v104 == v62)
        {
          goto LABEL_77;
        }

        a14 = (a14 + v103);
        v55 = (v55 + v103);
        v56 = (v56 + v103);
        v58 = (v58 + v103);
        ++v62;
      }

      else
      {
        v104 = a12[4];
      }

      v105 = v23[5];
      v106 = v105 != 0;
      if (v104 != 0 || !v106)
      {
        v107 = v104 - v106;
        if (v62 <= v107)
        {
          v150 = v24;
          v108 = v107 - v62 + 1;
          v109 = a7;
          do
          {
            v111 = v58;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, v109, v167);
            v112 = &v173;
            v113 = vld1q_dup_s16(v112);
            v156 = v113;
            v162 = v167[0];
            v159 = v167[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, a9, v166);
            v177.val[0] = v156;
            v110 = &v170;
            v177.val[1] = vld1q_dup_s16(v110);
            v177.val[0] = vqtbl2q_s8(v177, xmmword_296B6EDD0);
            v184.val[0] = v159;
            v183.val[0] = v162;
            v183.val[1] = v166[0];
            v184.val[1] = v166[1];
            v114 = vqtbl2q_s8(v184, xmmword_296B6EEA0);
            v177.val[1] = vqtbl2q_s8(v177, xmmword_296B6EE60);
            v115 = vqtbl2q_s8(v184, xmmword_296B6EEB0);
            v116 = vqtbl2q_s8(v177, xmmword_296B6EE80);
            v117 = vqtbl2q_s8(v184, xmmword_296B6EE70);
            v118 = vqtbl2q_s8(v177, xmmword_296B6EE60);
            v119 = vqtbl2q_s8(v184, xmmword_296B6EE90);
            v120 = vqtbl2q_s8(v177, xmmword_296B6EE80);
            v121 = vqtbl2q_s8(v183, xmmword_296B6EEA0);
            v122 = vqtbl2q_s8(v177, xmmword_296B6EE60);
            v123 = vqtbl2q_s8(v183, xmmword_296B6EEB0);
            v124 = vqtbl2q_s8(v177, xmmword_296B6EE80);
            v125 = vqtbl2q_s8(v183, xmmword_296B6EE70);
            v126 = vqtbl2q_s8(v177, xmmword_296B6EE60);
            v127 = vqtbl2q_s8(v183, xmmword_296B6EE90);
            *a14 = v126;
            a14[1] = vqtbl2q_s8(v177, xmmword_296B6EE80);
            a14 += 2;
            *v55 = v122;
            v55[1] = v124;
            v55 += 2;
            *v56 = v118;
            v56[1] = v120;
            v56 += 2;
            v58 += 2;
            *v111 = v177.val[1];
            v111[1] = v116;
            --v108;
          }

          while (v108);
          v23 = a12;
          v105 = a12[5];
          a7 = v109;
          v21 = v151;
          v24 = v150;
        }
      }

      if (v105)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v174, a7, v165);
        v128 = &v173;
        v129 = vld1q_dup_s16(v128);
        v163 = v129;
        v160 = v165[0];
        v157 = v165[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v171, a9, v164);
        v130 = v157;
        v131 = v160;
        v23 = a12;
        v132 = &v170;
        v178.val[0] = v163;
        v178.val[1] = vld1q_dup_s16(v132);
        v133 = vqtbl2q_s8(v178, xmmword_296B6EDD0);
        v134 = v164[0];
        v135 = v164[1];
        v136 = vqtbl2q_s8(*v130.i8, xmmword_296B6EEA0);
        v137 = vqtbl2q_s8(*(&v133 - 1), xmmword_296B6EE60);
        v179.val[0] = vqtbl2q_s8(*v130.i8, xmmword_296B6EE70);
        v179.val[1] = v133;
        v138 = vqtbl2q_s8(v179, xmmword_296B6EE60);
        v179.val[1] = vqtbl2q_s8(*v131.i8, xmmword_296B6EEA0);
        v139 = v133;
        v140 = vqtbl2q_s8(*(&v179 + 16), xmmword_296B6EE60);
        v180.val[0] = vqtbl2q_s8(*v131.i8, xmmword_296B6EE70);
        v180.val[1] = v133;
        v141 = vqtbl2q_s8(v180, xmmword_296B6EE60);
        v142 = 4 - a12[5];
        if ((v142 & 2) != 0)
        {
          *a14 = v141;
          *v55 = v140;
          *v56 = v138;
          *v58 = v137;
          v26 = a17;
          if (v142)
          {
            v143 = vqtbl2q_s8(*v130.i8, xmmword_296B6EEB0);
            v144 = vqtbl2q_s8(*(&v133 - 1), xmmword_296B6EE80).u64[0];
            v145 = vqtbl2q_s8(*v130.i8, xmmword_296B6EE90);
            v146 = vqtbl2q_s8(*(&v133 - 1), xmmword_296B6EE80).u64[0];
            v147 = vqtbl2q_s8(*v131.i8, xmmword_296B6EEB0);
            v148 = vqtbl2q_s8(*(&v133 - 1), xmmword_296B6EE80).u64[0];
            v149 = vqtbl2q_s8(*v131.i8, xmmword_296B6EE90);
            a14[1].i64[0] = vqtbl2q_s8(*(&v133 - 1), xmmword_296B6EE80).u64[0];
            v55[1].i64[0] = v148;
            v56[1].i64[0] = v146;
            v58[1].i64[0] = v144;
          }

          goto LABEL_77;
        }

        a14->i64[0] = v141.i64[0];
        v55->i64[0] = v140.i64[0];
        v56->i64[0] = v138.i64[0];
        v58->i64[0] = v137.i64[0];
      }

      v26 = a17;
LABEL_77:
      a14 = (v57 + v26);
      v25 = v23[6];
      v39 = v24++ >= v25;
      if (v39)
      {
        return result;
      }
    }

    v58 = v57;
    goto LABEL_50;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)0,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a11[3];
  v23 = *(a3 + 8);
  v24 = v23[6];
  v25 = *(*(*&v23[5] + 8 * a11[7].u32[1]) + 16);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v213, a4);
  v26 = a11[3];
  v27 = *(a5 + 8);
  v28 = v27[6];
  v29 = *(*(*&v27[5] + 8 * a11[7].u32[1]) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v212, a6);
  v36 = a12[2];
  v37 = a12[6];
  if (v36 > v37)
  {
    return result;
  }

  v39 = 4 * vmin_u32(vmls_s32(v25, v24, v22), v24).u32[0];
  v40 = 4 * vmin_u32(vmls_s32(v29, v28, v26), v28).u32[0];
  v41.i64[0] = __PAIR64__(v212, v213);
  v41.i64[1] = __PAIR64__(v212, v213);
  v42 = *(a13 + 60);
  v43 = 2 * a17;
  while (1)
  {
    v44 = *(a3 + 8);
    if (v44)
    {
      v45 = a11[3];
      v46 = (v45.i32[1] * v42) + 4 * v36;
      v47 = *(*(v44 + 40) + 8 * a11[7].u32[1]);
      if (*(v47 + 12) - 1 < v46)
      {
        v46 = *(v47 + 12) - 1;
      }

      if (*(v44 + 104) == 1)
      {
        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v46);
      }

      else
      {
        v49 = (v46 * *(v44 + 108)) >> *(v44 + 112);
        if (v49 >= *(v47 + 20) - 1)
        {
          LODWORD(v49) = *(v47 + 20) - 1;
        }

        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v49);
      }

      v50 = *v48;
      if (a2 <= v50)
      {
        v31 = 0;
        result = 0;
      }

      else
      {
        v51 = v50;
        if (a2 - v50 >= HIDWORD(v50))
        {
          v52 = HIDWORD(v50);
        }

        else
        {
          v52 = a2 - v50;
        }

        v31 = (v51 + a1);
        result = (v52 + v51 + a1);
      }
    }

    v53 = *(a5 + 8);
    if (v53)
    {
      v54 = a11[3];
      v55 = (v54.i32[1] * v42) + 4 * v36;
      v56 = *(*(v53 + 40) + 8 * a11[7].u32[1]);
      if (*(v56 + 12) - 1 < v55)
      {
        v55 = *(v56 + 12) - 1;
      }

      if (*(v53 + 104) == 1)
      {
        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v55);
      }

      else
      {
        v58 = (v55 * *(v53 + 108)) >> *(v53 + 112);
        if (v58 >= *(v56 + 20) - 1)
        {
          LODWORD(v58) = *(v56 + 20) - 1;
        }

        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v58);
      }

      v59 = *v57;
      if (a2 <= v59)
      {
        v33 = 0;
        v32 = 0;
        v64 = v43 + a14 + a17;
        goto LABEL_171;
      }

      v60 = v59;
      if (a2 - v59 >= HIDWORD(v59))
      {
        v61 = HIDWORD(v59);
      }

      else
      {
        v61 = a2 - v59;
      }

      v32 = (v60 + a1);
      v33 = v61 + v60 + a1;
    }

    v62 = a14 + a17;
    v63 = a14 + a17 + a17;
    v64 = v63 + a17;
    if (v31)
    {
      if (v32)
      {
        break;
      }
    }

LABEL_171:
    a14 = v64 + a17;
    v37 = a12[6];
    if (v36++ >= v37)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v36 == a12[2])
  {
    v65 = a12[3] + 1;
    v66 = v63 + a17;
    v67 = a14 + a17 + a17;
    v68 = a14 + a17;
    v69 = a14;
    do
    {
      a14 = v69;
      v62 = v68;
      v63 = v67;
      v64 = v66;
      v66 = v67;
      v67 = v68;
      v68 = v69;
      v69 = a16;
      --v65;
    }

    while (v65);
  }

  if (v36 != v37)
  {
    goto LABEL_44;
  }

  v70 = a12[7];
  if (v70 != 1)
  {
    if (v70 == 2)
    {
LABEL_41:
      v63 = a16;
      goto LABEL_42;
    }

    if (v70 == 3)
    {
      v62 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v71 = v64;
    goto LABEL_45;
  }

LABEL_42:
  v71 = a16;
LABEL_45:
  v72 = *a12;
  v31 += v72;
  if ((v31 - 1) < result)
  {
    v32 += v72;
    if (&v32[-1].u64[1] + 7 < v33)
    {
      v73 = a12[1];
      if (v73)
      {
        if (v31 + 1 <= result)
        {
          v74 = *v31;
        }

        else
        {
          v74 = 0uLL;
        }

        v76 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v79 = (v31 + v39);
        if ((v31 + v39 + 16) <= result)
        {
          v76 = *v79;
        }

        v80 = (v79 + v39);
        if (&v80[1] <= result)
        {
          v77 = *v80;
        }

        v81 = (v80 + v39);
        if (&v81[1] <= result)
        {
          v78 = *v81;
        }

        if (&v32[1] <= v33)
        {
          v82 = *v32;
        }

        else
        {
          v82 = 0uLL;
        }

        v83 = 0uLL;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = (v32 + v40);
        if (v32[1].u64 + v40 <= v33)
        {
          v83 = *v86;
        }

        v87 = (v86 + v40);
        if (&v87[1] <= v33)
        {
          v84 = *v87;
        }

        v88 = (v87 + v40);
        if (&v88[1] <= v33)
        {
          v85 = *v88;
        }

        v34.i32[0] = 0;
        v89 = vuzp1q_s32(v74, v82);
        v90 = vzip1q_s32(vuzp1q_s32(v89, v89), v41);
        v91 = vuzp2q_s32(v74, v82);
        v82.i32[0] = v74.i32[2];
        v92 = vzip1q_s32(vuzp1q_s32(v82, v82), v41);
        v93 = vzip2q_s32(vuzp1q_s32(v91, v91), v41);
        v94 = vtrn2q_s32(v91, v74);
        v95 = vzip2q_s32(vuzp1q_s32(v94, v94), v41);
        v96 = vuzp1q_s32(v76, v83);
        v97 = vuzp2q_s32(v76, v83);
        v83.i32[0] = v76.i32[2];
        v98 = vzip1q_s32(vuzp1q_s32(v96, v96), v41);
        v99 = vzip1q_s32(vuzp1q_s32(v83, v83), v41);
        v100 = vzip2q_s32(vuzp1q_s32(v97, v97), v41);
        v101 = vtrn2q_s32(v97, v76);
        v102 = vzip2q_s32(vuzp1q_s32(v101, v101), v41);
        v103 = vuzp1q_s32(v77, v84);
        v104 = vzip1q_s32(vuzp1q_s32(v103, v103), v41);
        v105 = vuzp2q_s32(v77, v84);
        v84.i32[0] = v77.i32[2];
        v106 = vzip1q_s32(vuzp1q_s32(v84, v84), v41);
        v107 = vzip2q_s32(vuzp1q_s32(v105, v105), v41);
        v108 = vtrn2q_s32(v105, v77);
        v109 = vzip2q_s32(vuzp1q_s32(v108, v108), v41);
        v110 = vuzp1q_s32(v78, v85);
        v111 = vzip1q_s32(vuzp1q_s32(v110, v110), v41);
        v112 = vuzp2q_s32(v78, v85);
        v85.i32[0] = v78.i32[2];
        v113 = vzip1q_s32(vuzp1q_s32(v85, v85), v41);
        v114 = vzip2q_s32(vuzp1q_s32(v112, v112), v41);
        v115 = vtrn2q_s32(v112, v78);
        v116 = vuzp1q_s32(v115, v115);
        v117 = vzip2q_s32(v116, v41);
        if (a12[4] == v72)
        {
          v118 = 4 - a12[5];
        }

        else
        {
          v118 = 4;
        }

        v116.i32[0] = a12[1] & 2;
        v119 = vdupq_lane_s32(*&vceqq_s32(v116, v34), 0);
        v120 = vbslq_s8(v119, v114, v117);
        v121 = vbslq_s8(v119, v111, v113);
        v122 = vbslq_s8(v119, v107, v109);
        v123 = vbslq_s8(v119, v104, v106);
        v124 = vbslq_s8(v119, v100, v102);
        v125 = vbslq_s8(v119, v98, v99);
        v126 = vbslq_s8(v119, v93, v95);
        if ((v73 & 2) != 0)
        {
          v118 -= 2;
        }

        v127 = v118 - (v73 & 1);
        v35.i32[0] = a12[1] & 1;
        v128 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v35, v34)), 0);
        v35 = vbslq_s8(v128, v126, vbslq_s8(v119, v90, v92));
        v34 = vbslq_s8(v128, v124, v125);
        v129 = vbslq_s8(v128, v122, v123);
        v130 = vbslq_s8(v128, v120, v121);
        if (v127 <= 1)
        {
          v135 = 0;
        }

        else
        {
          v131 = vbslq_s8(v119, v113, v111);
          v132 = vbslq_s8(v119, v106, v104);
          v133 = vbslq_s8(v119, v99, v98);
          v134 = vbslq_s8(v119, v92, v90);
          *a14 = v35;
          *(a14 + 16) = vbslq_s8(v128, v134, v126);
          *v62 = v34;
          *(v62 + 16) = vbslq_s8(v128, v133, v124);
          *v63 = v129;
          *(v63 + 16) = vbslq_s8(v128, v132, v122);
          v127 -= 2;
          v35 = vbslq_s8(v128, vbslq_s8(v119, v95, v93), v134);
          *v71 = v130;
          *(v71 + 16) = vbslq_s8(v128, v131, v120);
          v34 = vbslq_s8(v128, vbslq_s8(v119, v102, v100), v133);
          v129 = vbslq_s8(v128, vbslq_s8(v119, v109, v107), v132);
          v130 = vbslq_s8(v128, vbslq_s8(v119, v117, v114), v131);
          v135 = 32;
        }

        if (v127 >= 1)
        {
          *(v135 + a14) = v35;
          *(v135 + v62) = v34;
          *(v135 + v63) = v129;
          *(v135 + v71) = v130;
          v135 |= 0x10uLL;
        }

        ++v31;
        ++v32;
        v75 = a12[4];
        if (v75 == v72)
        {
          goto LABEL_171;
        }

        a14 += v135;
        v62 += v135;
        v63 += v135;
        v71 += v135;
        ++v72;
      }

      else
      {
        v75 = a12[4];
      }

      v136 = a12[5];
      v137 = v136 != 0;
      if (v75 == 0 && v137 || (v138 = v75 - v137, v72 > v138))
      {
        v172 = v71;
        v171 = v63;
        v170 = v62;
        v168 = a14;
        if (v136)
        {
          goto LABEL_108;
        }

LABEL_106:
        v43 = 2 * a17;
        goto LABEL_171;
      }

      v139 = v138 - v72 + 1;
      while (1)
      {
        v140 = 0uLL;
        if (v31)
        {
          if (v31 + 1 <= result)
          {
            v141 = *v31;
          }

          else
          {
            v141 = 0uLL;
          }

          v142 = 0uLL;
          v143 = 0uLL;
          v144 = 0uLL;
          v148 = (v31 + v39);
          if ((v31 + v39 + 16) <= result)
          {
            v142 = *v148;
          }

          v149 = (v148 + v39);
          if (&v149[1] <= result)
          {
            v143 = *v149;
          }

          v150 = (v149 + v39);
          if (&v150[1] <= result)
          {
            v144 = *v150;
          }

          ++v31;
          if (v32)
          {
LABEL_95:
            if (&v32[1] <= v33)
            {
              v140 = *v32;
            }

            v145 = 0uLL;
            v146 = 0uLL;
            v147 = 0uLL;
            v151 = (v32 + v40);
            if (v32[1].u64 + v40 <= v33)
            {
              v145 = *v151;
            }

            v152 = (v151 + v40);
            if (&v152[1] <= v33)
            {
              v146 = *v152;
            }

            v153 = (v152 + v40);
            if (&v153[1] <= v33)
            {
              v147 = *v153;
            }

            ++v32;
            goto LABEL_104;
          }
        }

        else
        {
          v141 = 0uLL;
          v142 = 0uLL;
          v143 = 0uLL;
          v144 = 0uLL;
          if (v32)
          {
            goto LABEL_95;
          }
        }

        v145 = 0uLL;
        v146 = 0uLL;
        v147 = 0uLL;
LABEL_104:
        v154 = vuzp2q_s32(v144, v147);
        v155 = vtrn2q_s32(v154, v144);
        v156 = v147;
        v34 = vzip2q_s32(vuzp1q_s32(v154, v154), v41);
        v157 = v146;
        v157.i32[0] = v143.i32[2];
        v158 = vuzp2q_s32(v143, v146);
        v159 = vzip2q_s32(vuzp1q_s32(v158, v158), v41);
        v160 = vuzp1q_s32(v143, v146);
        v161 = vtrn2q_s32(v158, v143);
        v162 = v145;
        v162.i32[0] = v142.i32[2];
        v163 = vuzp2q_s32(v142, v145);
        v164 = vuzp1q_s32(v142, v145);
        v165 = vuzp2q_s32(v141, v140);
        v166 = vuzp1q_s32(v141, v140);
        v140.i32[0] = v141.i32[2];
        v167 = vtrn2q_s32(v165, v141);
        v168 = (a14 + 64);
        *a14 = vzip1q_s32(vuzp1q_s32(v166, v166), v41);
        *(a14 + 16) = vzip2q_s32(vuzp1q_s32(v165, v165), v41);
        *(a14 + 32) = vzip1q_s32(vuzp1q_s32(v140, v140), v41);
        *(a14 + 48) = vzip2q_s32(vuzp1q_s32(v167, v167), v41);
        v169 = vtrn2q_s32(v163, v142);
        v170 = (v62 + 64);
        *v62 = vzip1q_s32(vuzp1q_s32(v164, v164), v41);
        *(v62 + 16) = vzip2q_s32(vuzp1q_s32(v163, v163), v41);
        *(v62 + 32) = vzip1q_s32(vuzp1q_s32(v162, v162), v41);
        *(v62 + 48) = vzip2q_s32(vuzp1q_s32(v169, v169), v41);
        v171 = (v63 + 64);
        *v63 = vzip1q_s32(vuzp1q_s32(v160, v160), v41);
        *(v63 + 16) = v159;
        *(v63 + 32) = vzip1q_s32(vuzp1q_s32(v157, v157), v41);
        *(v63 + 48) = vzip2q_s32(vuzp1q_s32(v161, v161), v41);
        v172 = (v71 + 64);
        v173 = vuzp1q_s32(v144, v147);
        *v71 = vzip1q_s32(vuzp1q_s32(v173, v173), v41);
        *(v71 + 16) = v34;
        a14 += 64;
        v156.i32[0] = v144.i32[2];
        *(v71 + 32) = vzip1q_s32(vuzp1q_s32(v156, v156), v41);
        *(v71 + 48) = vzip2q_s32(vuzp1q_s32(v155, v155), v41);
        v62 += 64;
        v63 += 64;
        v71 += 64;
        if (!--v139)
        {
          v136 = a12[5];
          if (!v136)
          {
            goto LABEL_106;
          }

LABEL_108:
          v174 = 4 - v136;
          if (v36 == a12[6])
          {
            v175 = 4 - a12[7];
          }

          else
          {
            v175 = 4;
          }

          if (v31)
          {
            if (v175 < 2)
            {
              v177 = 0;
              v176 = v31;
              v178 = v31;
            }

            else
            {
              v176 = (v31 + v39);
              if (v175 == 2)
              {
                v177 = 0;
                v178 = (v31 + v39);
              }

              else
              {
                v178 = (v31 + v39);
                v176 = (v176 + v39);
                if (v175 <= 3)
                {
                  v177 = 0;
                }

                else
                {
                  v177 = v39;
                }
              }
            }

            v187 = (v176 + v177);
            v180 = 0uLL;
            v181 = 0uLL;
            v182 = 0uLL;
            v179 = 0uLL;
            if ((4 - v136))
            {
              if ((v31 + 4 * v174) <= result)
              {
                v179.i32[0] = *(v31 + 3 - v136);
              }

              if ((v178 + 4 * v174) <= result)
              {
                v180.i32[0] = *(v178 + 3 - v136);
              }

              if ((v176 + 4 * v174) <= result)
              {
                v181.i32[0] = *(v176 + 3 - v136);
              }

              if ((v187 + 4 * v174) <= result)
              {
                v182.i32[0] = *(v187 + 3 - v136);
              }
            }

            if (((4 - v136) & 2) != 0)
            {
              v179 = vextq_s8(v179, v179, 8uLL);
              if ((v31 + 8) <= result)
              {
                v188.i64[0] = *v31;
                v188.i64[1] = vextq_s8(v179, v179, 8uLL).u64[0];
                v179 = v188;
              }

              v180 = vextq_s8(v180, v180, 8uLL);
              if (v178 + 1 <= result)
              {
                v189.i64[0] = *v178;
                v189.i64[1] = vextq_s8(v180, v180, 8uLL).u64[0];
                v180 = v189;
              }

              v181 = vextq_s8(v181, v181, 8uLL);
              if (v176 + 1 <= result)
              {
                v190.i64[0] = *v176;
                v190.i64[1] = vextq_s8(v181, v181, 8uLL).u64[0];
                v181 = v190;
              }

              v182 = vextq_s8(v182, v182, 8uLL);
              if (v187 + 1 <= result)
              {
                v191.i64[0] = *v187;
                v191.i64[1] = vextq_s8(v182, v182, 8uLL).u64[0];
                v182 = v191;
              }
            }

            v31 = (v31 + 4 * v174);
            if (v32)
            {
LABEL_140:
              if (v175 < 2)
              {
                v193 = 0;
                v192 = v32;
                v194 = v32;
              }

              else
              {
                v192 = (v32->i64 + v40);
                if (v175 == 2)
                {
                  v193 = 0;
                  v194 = (v32->i64 + v40);
                }

                else
                {
                  v194 = (v32->i64 + v40);
                  v192 = (v192 + v40);
                  if (v175 <= 3)
                  {
                    v193 = 0;
                  }

                  else
                  {
                    v193 = v40;
                  }
                }
              }

              v195 = (v192 + v193);
              v184 = 0uLL;
              v185 = 0uLL;
              v186 = 0uLL;
              v183 = 0uLL;
              if ((4 - v136))
              {
                if (v32 + 4 * v174 <= v33)
                {
                  v183.i32[0] = v32->i32[3 - v136];
                }

                if (v194 + 4 * v174 <= v33)
                {
                  v184.i32[0] = *(v194 + 3 - v136);
                }

                if (v192 + 4 * v174 <= v33)
                {
                  v185.i32[0] = *(v192 + 3 - v136);
                }

                if (v195 + 4 * v174 <= v33)
                {
                  v186.i32[0] = *(v195 + 3 - v136);
                }
              }

              if (((4 - v136) & 2) != 0)
              {
                v183 = vextq_s8(v183, v183, 8uLL);
                v43 = 2 * a17;
                if (&v32->u64[1] <= v33)
                {
                  v196.i64[0] = v32->i64[0];
                  v196.i64[1] = vextq_s8(v183, v183, 8uLL).u64[0];
                  v183 = v196;
                }

                v184 = vextq_s8(v184, v184, 8uLL);
                if ((v194 + 1) <= v33)
                {
                  v197.i64[0] = *v194;
                  v197.i64[1] = vextq_s8(v184, v184, 8uLL).u64[0];
                  v184 = v197;
                }

                v185 = vextq_s8(v185, v185, 8uLL);
                if ((v192 + 1) <= v33)
                {
                  v198.i64[0] = *v192;
                  v198.i64[1] = vextq_s8(v185, v185, 8uLL).u64[0];
                  v185 = v198;
                }

                v186 = vextq_s8(v186, v186, 8uLL);
                if ((v195 + 1) <= v33)
                {
                  v199.i64[0] = *v195;
                  v199.i64[1] = vextq_s8(v186, v186, 8uLL).u64[0];
                  v186 = v199;
                }
              }

              else
              {
                v43 = 2 * a17;
              }

              v32 = (v32 + 4 * v174);
LABEL_167:
              v200 = vuzp1q_s32(v179, v183);
              v201 = vzip1q_s32(vuzp1q_s32(v200, v200), v41);
              v202 = vuzp1q_s32(v180, v184);
              v203 = vzip1q_s32(vuzp1q_s32(v202, v202), v41);
              v204 = vuzp1q_s32(v181, v185);
              v34 = vzip1q_s32(vuzp1q_s32(v204, v204), v41);
              v205 = vuzp1q_s32(v182, v186);
              v206 = vzip1q_s32(vuzp1q_s32(v205, v205), v41);
              if ((v174 & 2) != 0)
              {
                v207 = vuzp2q_s32(v179, v183);
                v208 = vuzp2q_s32(v180, v184);
                v209 = vuzp2q_s32(v181, v185);
                v210 = vuzp2q_s32(v182, v186);
                *v168 = v201;
                v168[1] = vzip2q_s32(vuzp1q_s32(v207, v207), v41);
                *v170 = v203;
                v170[1] = vzip2q_s32(vuzp1q_s32(v208, v208), v41);
                *v171 = v34;
                v171[1] = vzip2q_s32(vuzp1q_s32(v209, v209), v41);
                *v172 = v206;
                v172[1] = vzip2q_s32(vuzp1q_s32(v210, v210), v41);
                if (v174)
                {
                  v183.i32[0] = v179.i32[2];
                  v184.i32[0] = v180.i32[2];
                  v185.i32[0] = v181.i32[2];
                  v186.i32[0] = v182.i32[2];
                  v168[2] = vzip1q_s32(vuzp1q_s32(v183, v183), v41);
                  v170[2] = vzip1q_s32(vuzp1q_s32(v184, v184), v41);
                  v171[2] = vzip1q_s32(vuzp1q_s32(v185, v185), v41);
                  v172[2] = vzip1q_s32(vuzp1q_s32(v186, v186), v41);
                }
              }

              else
              {
                *v168 = v201;
                *v170 = v203;
                *v171 = v34;
                *v172 = v206;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v179 = 0uLL;
            v180 = 0uLL;
            v181 = 0uLL;
            v182 = 0uLL;
            if (v32)
            {
              goto LABEL_140;
            }
          }

          v183 = 0uLL;
          v184 = 0uLL;
          v185 = 0uLL;
          v186 = 0uLL;
          v43 = 2 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v152, a3);
  v150 = 0;
  v151 = 0;
  v148 = 0;
  v149 = 0;
  v20 = a6;
  v21 = a5;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v147, v20);
  v23 = a12;
  v24 = a12[2];
  v25 = a12[6];
  if (v24 <= v25)
  {
    v129 = *(a13 + 60);
    v126 = a5;
    while (1)
    {
      v27 = *(a4 + 8);
      if (v27)
      {
        v28 = *(a11 + 24);
        v29 = *(*(v27 + 40) + 8 * *(a11 + 60));
        v30 = *(v29 + 12) - 1;
        if (v30 >= (HIDWORD(v28) * v129) + 4 * v24)
        {
          v30 = (HIDWORD(*(a11 + 24)) * v129) + 4 * v24;
        }

        v31 = v29 + 8 * v28;
        if (*(v27 + 104) == 1)
        {
          v32 = (*(v31 + 24) + 8 * v30);
        }

        else
        {
          v33 = (v30 * *(v27 + 108)) >> *(v27 + 112);
          v34 = *(v29 + 20) - 1;
          if (v33 >= v34)
          {
            LODWORD(v33) = v34;
          }

          v32 = (*(v31 + 24) + 8 * v33);
        }

        v35 = *v32;
        v36 = HIDWORD(v35);
        if (a2 >= v35)
        {
          v37 = (a1 + v35);
        }

        else
        {
          v37 = 0;
        }

        if (a2 - v35 < HIDWORD(v35))
        {
          v36 = a2 - v35;
        }

        v38 = a2 >= v35;
        v39 = a1 + v35 + v36;
        if (!v38)
        {
          v39 = 0;
        }

        v150 = v37;
        v151 = v39;
      }

      v40 = *(v21 + 8);
      if (v40)
      {
        v41 = *(a11 + 24);
        v42 = *(*(v40 + 40) + 8 * *(a11 + 60));
        v43 = *(v42 + 12) - 1;
        if (v43 >= (HIDWORD(v41) * v129) + 4 * v24)
        {
          v43 = (HIDWORD(*(a11 + 24)) * v129) + 4 * v24;
        }

        v44 = v42 + 8 * v41;
        if (*(v40 + 104) == 1)
        {
          v45 = (*(v44 + 24) + 8 * v43);
        }

        else
        {
          v47 = (v43 * *(v40 + 108)) >> *(v40 + 112);
          v48 = *(v42 + 20) - 1;
          if (v47 >= v48)
          {
            LODWORD(v47) = v48;
          }

          v45 = (*(v44 + 24) + 8 * v47);
        }

        v49 = *v45;
        v50 = HIDWORD(*v45);
        v51 = a1 + *v45;
        v52 = a2 - *v45;
        if (a2 >= *v45)
        {
          v46 = (a1 + v49);
        }

        else
        {
          v46 = 0;
        }

        if (v52 < HIDWORD(v49))
        {
          v50 = a2 - v49;
        }

        v38 = a2 >= v49;
        v53 = v51 + v50;
        if (!v38)
        {
          v53 = 0;
        }

        v148 = v46;
        v149 = v53;
      }

      else
      {
        v46 = v148;
      }

      v54 = (a14 + a17);
      v55 = (a14 + a17 + a17);
      v56 = &v55->i8[a17];
      if (!v150 || !v46)
      {
        goto LABEL_77;
      }

      v57 = a16;
      if (!a16)
      {
        break;
      }

      if (v24 == v23[2])
      {
        v58 = v23[3] + 1;
        v59 = a14;
        a14 = (a14 + a17);
        v54 = v55;
        v55 = (v55 + a17);
        do
        {
          v56 = v55;
          v55 = v54;
          v54 = a14;
          a14 = v59;
          v59 = a16;
          --v58;
        }

        while (v58);
      }

      if (v24 != v25)
      {
        break;
      }

      v60 = v23[7];
      if (v60 != 1)
      {
        if (v60 != 2)
        {
          if (v60 != 3)
          {
            break;
          }

          v54 = a16;
        }

        v55 = a16;
      }

LABEL_49:
      v61 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v150, v61);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v148, v61);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        v62 = v152;
        v63 = vld1q_dup_s16(v62);
        v135 = v63;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, a8, v146);
        v132 = v146[1];
        v138 = v146[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a9, v145);
        v23 = a12;
        v64.i32[0] = 0;
        v65 = v132;
        v66 = vld1q_dup_s16(&v147);
        v154.val[1] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EF40);
        v67 = v135;
        v68 = v145[1];
        v154.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EE70);
        v69 = vqtbl2q_s8(v154, xmmword_296B6EDD0);
        v70 = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EF50);
        v154.val[1] = vqtbl2q_s8(*v67.i8, xmmword_296B6EE90);
        v71 = vqtbl2q_s8(*(&v154 + 16), xmmword_296B6EDD0);
        v72 = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EF60);
        v73 = vqtbl2q_s8(*v67.i8, xmmword_296B6EEA0);
        v74 = vqtbl2q_s8(*v73.i8, xmmword_296B6EDD0);
        v159.val[1] = vqtbl2q_s8(*(&v66 - 1), xmmword_296B6EF70);
        v159.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EEB0);
        v75 = vqtbl2q_s8(v159, xmmword_296B6EDD0);
        if (a12[4] == v61)
        {
          v76 = 4 - a12[5];
        }

        else
        {
          v76 = 4;
        }

        v77 = a12[1];
        v73.i32[0] = v77 & 2;
        v78 = vdupq_lane_s32(*&vceqq_s32(v73, v64), 0);
        v79 = vbslq_s8(v78, v75, v74);
        v80 = vbslq_s8(v78, v74, v75);
        v81 = vbslq_s8(v78, v71, v69);
        v82 = vbslq_s8(v78, v69, v71);
        v167.val[0] = v138;
        v167.val[1] = v66;
        v160.val[1] = vqtbl2q_s8(v167, xmmword_296B6EF60);
        v83 = v145[0];
        v160.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EEA0);
        v84 = vqtbl2q_s8(v160, xmmword_296B6EDD0);
        v160.val[1] = vqtbl2q_s8(v167, xmmword_296B6EF70);
        v160.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EEB0);
        v160.val[0] = vqtbl2q_s8(v160, xmmword_296B6EDD0);
        v85 = vbslq_s8(v78, v160.val[0], v84);
        v86 = vbslq_s8(v78, v84, v160.val[0]);
        v164.val[1] = vqtbl2q_s8(v167, xmmword_296B6EF40);
        v164.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EE70);
        v160.val[0] = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v164.val[1] = vqtbl2q_s8(v167, xmmword_296B6EF50);
        v164.val[0] = vqtbl2q_s8(*v67.i8, xmmword_296B6EE90);
        v164.val[0] = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v87 = vbslq_s8(v78, v164.val[0], v160.val[0]);
        v88 = vbslq_s8(v78, v160.val[0], v164.val[0]);
        if ((v77 & 2) != 0)
        {
          v76 -= 2;
        }

        if (v77)
        {
          v89 = vextq_s8(v87, v88, 8uLL).u64[0];
          v88 = vextq_s8(v88, v87, 8uLL);
          v90 = vextq_s8(v85, v86, 8uLL).u64[0];
          v86 = vextq_s8(v86, v85, 8uLL);
          v91 = vextq_s8(v81, v82, 8uLL).u64[0];
          v82 = vextq_s8(v82, v81, 8uLL);
          v92 = vextq_s8(v79, v80, 8uLL).u64[0];
          --v76;
          v80 = vextq_s8(v80, v79, 8uLL);
          v87.i64[0] = v89;
          v85.i64[0] = v90;
          v81.i64[0] = v91;
          v79.i64[0] = v92;
        }

        if (v76 <= 1)
        {
          v93 = 0;
        }

        else
        {
          *a14 = v88;
          *v54 = v86;
          v76 -= 2;
          v88.i64[0] = v87.i64[0];
          v86.i64[0] = v85.i64[0];
          *v55 = v82;
          v82.i64[0] = v81.i64[0];
          v57->val[0] = v80;
          v80.i64[0] = v79.i64[0];
          v93 = 16;
        }

        if (v76 >= 1)
        {
          *(a14->i64 + v93) = v88.i64[0];
          *(v54->i64 + v93) = v86.i64[0];
          *(v55->i64 + v93) = v82.i64[0];
          *(v57->val[0].i64 + v93) = v80.i64[0];
          v93 |= 8uLL;
        }

        v94 = a12[4];
        if (v94 == v61)
        {
          goto LABEL_77;
        }

        a14 = (a14 + v93);
        v54 = (v54 + v93);
        v55 = (v55 + v93);
        v57 = (v57 + v93);
        ++v61;
      }

      else
      {
        v94 = a12[4];
      }

      v95 = v23[5];
      v96 = v95 != 0;
      if (v94 != 0 || !v96)
      {
        v97 = v94 - v96;
        if (v61 <= v97)
        {
          v127 = v24;
          v98 = v97 - v61 + 1;
          v99 = a8;
          do
          {
            v101 = v57;
            v102 = v152;
            v103 = vld1q_dup_s16(v102);
            v136 = v103;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, v99, v144);
            v139 = v144[0];
            v133 = v144[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a9, v143);
            v168.val[0] = v133;
            v100 = &v147;
            v168.val[1] = vld1q_dup_s16(v100);
            v153.val[1] = vqtbl2q_s8(v168, xmmword_296B6EF60);
            v165.val[0] = v136;
            v165.val[1] = v143[1];
            v153.val[0] = vqtbl2q_s8(v165, xmmword_296B6EEA0);
            v153.val[0] = vqtbl2q_s8(v153, xmmword_296B6EDD0);
            v104 = vqtbl2q_s8(v168, xmmword_296B6EF70);
            v153.val[1] = vqtbl2q_s8(v165, xmmword_296B6EEB0);
            v153.val[1] = vqtbl2q_s8(*(&v153 + 16), xmmword_296B6EDD0);
            v155.val[1] = vqtbl2q_s8(v168, xmmword_296B6EF40);
            v155.val[0] = vqtbl2q_s8(v165, xmmword_296B6EE70);
            v155.val[0] = vqtbl2q_s8(v155, xmmword_296B6EDD0);
            v105 = vqtbl2q_s8(v168, xmmword_296B6EF50);
            v155.val[1] = vqtbl2q_s8(v165, xmmword_296B6EE90);
            v166.val[0] = v139;
            v166.val[1] = v168.val[1];
            v161.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF60);
            v165.val[1] = v143[0];
            v161.val[0] = vqtbl2q_s8(v165, xmmword_296B6EEA0);
            v161.val[0] = vqtbl2q_s8(v161, xmmword_296B6EDD0);
            v106 = vqtbl2q_s8(v166, xmmword_296B6EF40);
            v161.val[1] = vqtbl2q_s8(v165, xmmword_296B6EE70);
            v161.val[1] = vqtbl2q_s8(*(&v161 + 16), xmmword_296B6EDD0);
            v163.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF50);
            v163.val[0] = vqtbl2q_s8(v165, xmmword_296B6EE90);
            v107 = vqtbl2q_s8(v163, xmmword_296B6EDD0);
            v163.val[1] = vqtbl2q_s8(v166, xmmword_296B6EF70);
            *a14 = v161.val[1];
            a14[1] = v107;
            a14 += 2;
            v163.val[0] = vqtbl2q_s8(v165, xmmword_296B6EEB0);
            *v54 = v161.val[0];
            v54[1] = vqtbl2q_s8(v163, xmmword_296B6EDD0);
            v54 += 2;
            *v55 = v155.val[0];
            v55[1] = vqtbl2q_s8(*(&v155 + 16), xmmword_296B6EDD0);
            v55 += 2;
            ++v57;
            *v101 = v153;
            --v98;
          }

          while (v98);
          v23 = a12;
          v95 = a12[5];
          a8 = v99;
          v21 = v126;
          v24 = v127;
        }
      }

      if (v95)
      {
        v108 = vld1q_dup_s16(v152);
        v140 = v108;
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v150, a8, v142);
        v137 = v142[0];
        v134 = v142[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v148, a9, v141);
        v109 = v134;
        v110 = v140;
        v111 = v137;
        v23 = a12;
        v112 = vld1q_dup_s16(&v147);
        v156.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF60);
        v113 = v141[0];
        v114 = v141[1];
        v156.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEA0);
        v115 = vqtbl2q_s8(v156, xmmword_296B6EDD0);
        v116 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF40);
        v156.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE70);
        v117 = vqtbl2q_s8(*(&v156 + 16), xmmword_296B6EDD0);
        v118 = v112;
        v119 = v140;
        v158.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF60);
        v158.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEA0);
        v120 = vqtbl2q_s8(v158, xmmword_296B6EDD0);
        v121 = vqtbl2q_s8(*v111.i8, xmmword_296B6EF40);
        v158.val[1] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE70);
        v122 = vqtbl2q_s8(*(&v158 + 16), xmmword_296B6EDD0);
        v123 = 4 - a12[5];
        if ((v123 & 2) != 0)
        {
          *a14 = v122;
          *v54 = v120;
          *v55 = v117;
          v57->val[0] = v115;
          if (v123)
          {
            v157.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF70);
            v157.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEB0);
            v157.val[0].i64[0] = vqtbl2q_s8(v157, xmmword_296B6EDD0).u64[0];
            v124 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF50);
            v157.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE90);
            v162.val[1] = vqtbl2q_s8(*v111.i8, xmmword_296B6EF70);
            v162.val[0] = vqtbl2q_s8(*v119.i8, xmmword_296B6EEB0);
            v162.val[0].i64[0] = vqtbl2q_s8(v162, xmmword_296B6EDD0).u64[0];
            v125 = vqtbl2q_s8(*v111.i8, xmmword_296B6EF50);
            v162.val[1] = vqtbl2q_s8(*v119.i8, xmmword_296B6EE90);
            a14[1].i64[0] = vqtbl2q_s8(*(&v162 + 16), xmmword_296B6EDD0).u64[0];
            v54[1].i64[0] = v162.val[0].i64[0];
            v55[1].i64[0] = vqtbl2q_s8(*(&v157 + 16), xmmword_296B6EDD0).u64[0];
            v57->val[1].i64[0] = v157.val[0].i64[0];
          }
        }

        else
        {
          a14->i64[0] = v122.i64[0];
          v54->i64[0] = v120.i64[0];
          v55->i64[0] = v117.i64[0];
          v57->val[0].i64[0] = v115.i64[0];
        }
      }

LABEL_77:
      a14 = (v56->val + a17);
      v25 = v23[6];
      v38 = v24++ >= v25;
      if (v38)
      {
        return result;
      }
    }

    v57 = v56;
    goto LABEL_49;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v213, a3);
  v22 = a11[3];
  v23 = a11[7].u32[1];
  v24 = *(a4 + 8);
  v25 = v24[6];
  v26 = *(*(*&v24[5] + 8 * v23) + 16);
  v27 = *(a5 + 8);
  v28 = v27[6];
  v29 = *(*(*&v27[5] + 8 * v23) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v212, a6);
  v35 = a12[2];
  v36 = a12[6];
  if (v35 > v36)
  {
    return result;
  }

  v38 = 4 * vmin_u32(vmls_s32(v26, v25, v22), v25).u32[0];
  v39 = 4 * vmin_u32(vmls_s32(v29, v28, v22), v28).u32[0];
  v40 = vld1q_dup_f32(&v213);
  v41 = *(a13 + 60);
  v42 = vld1q_dup_f32(&v212);
  v43 = 2 * a17;
  while (1)
  {
    v44 = *(a4 + 8);
    if (v44)
    {
      v45 = a11[3];
      v46 = (v45.i32[1] * v41) + 4 * v35;
      v47 = *(*(v44 + 40) + 8 * a11[7].u32[1]);
      if (*(v47 + 12) - 1 < v46)
      {
        v46 = *(v47 + 12) - 1;
      }

      if (*(v44 + 104) == 1)
      {
        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v46);
      }

      else
      {
        v49 = (v46 * *(v44 + 108)) >> *(v44 + 112);
        if (v49 >= *(v47 + 20) - 1)
        {
          LODWORD(v49) = *(v47 + 20) - 1;
        }

        v48 = (*(v47 + 8 * v45.u32[0] + 24) + 8 * v49);
      }

      v50 = *v48;
      if (a2 <= v50)
      {
        v31 = 0;
        result = 0;
      }

      else
      {
        v51 = v50;
        if (a2 - v50 >= HIDWORD(v50))
        {
          v52 = HIDWORD(v50);
        }

        else
        {
          v52 = a2 - v50;
        }

        v31 = (v51 + a1);
        result = (v52 + v51 + a1);
      }
    }

    v53 = *(a5 + 8);
    if (v53)
    {
      v54 = a11[3];
      v55 = (v54.i32[1] * v41) + 4 * v35;
      v56 = *(*(v53 + 40) + 8 * a11[7].u32[1]);
      if (*(v56 + 12) - 1 < v55)
      {
        v55 = *(v56 + 12) - 1;
      }

      if (*(v53 + 104) == 1)
      {
        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v55);
      }

      else
      {
        v58 = (v55 * *(v53 + 108)) >> *(v53 + 112);
        if (v58 >= *(v56 + 20) - 1)
        {
          LODWORD(v58) = *(v56 + 20) - 1;
        }

        v57 = (*(v56 + 8 * v54.u32[0] + 24) + 8 * v58);
      }

      v59 = *v57;
      if (a2 <= v59)
      {
        v33 = 0;
        v32 = 0;
        v64 = v43 + a14 + a17;
        goto LABEL_171;
      }

      v60 = v59;
      if (a2 - v59 >= HIDWORD(v59))
      {
        v61 = HIDWORD(v59);
      }

      else
      {
        v61 = a2 - v59;
      }

      v32 = (v60 + a1);
      v33 = v61 + v60 + a1;
    }

    v62 = a14 + a17;
    v63 = a14 + a17 + a17;
    v64 = v63 + a17;
    if (v31)
    {
      if (v32)
      {
        break;
      }
    }

LABEL_171:
    a14 = v64 + a17;
    v36 = a12[6];
    if (v35++ >= v36)
    {
      return result;
    }
  }

  if (!a16)
  {
    goto LABEL_44;
  }

  if (v35 == a12[2])
  {
    v65 = a12[3] + 1;
    v66 = v63 + a17;
    v67 = a14 + a17 + a17;
    v68 = a14 + a17;
    v69 = a14;
    do
    {
      a14 = v69;
      v62 = v68;
      v63 = v67;
      v64 = v66;
      v66 = v67;
      v67 = v68;
      v68 = v69;
      v69 = a16;
      --v65;
    }

    while (v65);
  }

  if (v35 != v36)
  {
    goto LABEL_44;
  }

  v70 = a12[7];
  if (v70 != 1)
  {
    if (v70 == 2)
    {
LABEL_41:
      v63 = a16;
      goto LABEL_42;
    }

    if (v70 == 3)
    {
      v62 = a16;
      goto LABEL_41;
    }

LABEL_44:
    v71 = v64;
    goto LABEL_45;
  }

LABEL_42:
  v71 = a16;
LABEL_45:
  v72 = *a12;
  v31 += v72;
  if ((v31 - 1) < result)
  {
    v32 += v72;
    if (&v32[-1].u64[1] + 7 < v33)
    {
      v73 = a12[1];
      if (v73)
      {
        if (v31 + 1 <= result)
        {
          v74 = *v31;
        }

        else
        {
          v74 = 0uLL;
        }

        v76 = 0uLL;
        v77 = 0uLL;
        v78 = 0uLL;
        v79 = (v31 + v38);
        if ((v31 + v38 + 16) <= result)
        {
          v76 = *v79;
        }

        v80 = (v79 + v38);
        if (&v80[1] <= result)
        {
          v77 = *v80;
        }

        v81 = (v80 + v38);
        if (&v81[1] <= result)
        {
          v78 = *v81;
        }

        if (&v32[1] <= v33)
        {
          v82 = *v32;
        }

        else
        {
          v82 = 0uLL;
        }

        v83 = 0uLL;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = (v32 + v39);
        if (v32[1].u64 + v39 <= v33)
        {
          v83 = *v86;
        }

        v87 = (v86 + v39);
        if (&v87[1] <= v33)
        {
          v84 = *v87;
        }

        v88 = (v87 + v39);
        if (&v88[1] <= v33)
        {
          v85 = *v88;
        }

        v34.i32[0] = 0;
        v89 = vuzp1q_s32(v77, v42);
        v90 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v84)), vextq_s8(v77, v89, 0xCuLL));
        v91 = vuzp2q_s32(v40, v84);
        v84.i32[0] = v40.i32[2];
        v92 = vtrn2q_s32(vrev64q_s32(v84), v89);
        v93 = vuzp2q_s32(v77, v42);
        v77.i32[3] = v42.i32[1];
        v94 = vtrn2q_s32(vrev64q_s32(v91), v77);
        v95 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v91, v40)), v93);
        v96 = vuzp1q_s32(v78, v42);
        v97 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v85)), vextq_s8(v78, v96, 0xCuLL));
        v98 = vuzp2q_s32(v40, v85);
        v85.i32[0] = v40.i32[2];
        v99 = vtrn2q_s32(vrev64q_s32(v85), v96);
        v100 = vuzp2q_s32(v78, v42);
        v78.i32[3] = v42.i32[1];
        v101 = vtrn2q_s32(vrev64q_s32(v98), v78);
        v102 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v98, v40)), v100);
        if (a12[4] == v72)
        {
          v103 = 4 - a12[5];
        }

        else
        {
          v103 = 4;
        }

        v100.i32[0] = a12[1] & 2;
        v104 = vdupq_lane_s32(*&vceqq_s32(v100, v34), 0);
        v105 = vbslq_s8(v104, v101, v102);
        v106 = vbslq_s8(v104, v97, v99);
        v107 = vbslq_s8(v104, v94, v95);
        v108 = vbslq_s8(v104, v90, v92);
        v109 = v76;
        v109.i32[3] = v42.i32[1];
        v110 = vuzp2q_s32(v40, v83);
        v111 = vtrn2q_s32(vrev64q_s32(v110), v109);
        v112 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v110, v40)), vuzp2q_s32(v76, v42));
        v113 = vbslq_s8(v104, v111, v112);
        v114 = vuzp1q_s32(v76, v42);
        v115 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v83)), vextq_s8(v76, v114, 0xCuLL));
        v83.i32[0] = v40.i32[2];
        v116 = vtrn2q_s32(vrev64q_s32(v83), v114);
        v117 = vbslq_s8(v104, v115, v116);
        v118 = v74;
        v118.i32[3] = v42.i32[1];
        v119 = vuzp2q_s32(v40, v82);
        v120 = vtrn2q_s32(vrev64q_s32(v119), v118);
        v121 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v119, v40)), vuzp2q_s32(v74, v42));
        v122 = vbslq_s8(v104, v120, v121);
        v123 = vuzp1q_s32(v74, v42);
        v124 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v82)), vextq_s8(v74, v123, 0xCuLL));
        v82.i32[0] = v40.i32[2];
        v125 = vrev64q_s32(v82);
        v126 = vtrn2q_s32(v125, v123);
        if ((v73 & 2) != 0)
        {
          v103 -= 2;
        }

        v127 = v103 - (v73 & 1);
        v125.i32[0] = a12[1] & 1;
        v34 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v125, v34)), 0);
        v128 = vbslq_s8(v34, v122, vbslq_s8(v104, v124, v126));
        v129 = vbslq_s8(v34, v113, v117);
        v130 = vbslq_s8(v34, v107, v108);
        v131 = vbslq_s8(v34, v105, v106);
        if (v127 <= 1)
        {
          v136 = 0;
        }

        else
        {
          v132 = vbslq_s8(v104, v99, v97);
          v133 = vbslq_s8(v104, v92, v90);
          v134 = vbslq_s8(v104, v116, v115);
          v135 = vbslq_s8(v104, v126, v124);
          *a14 = v128;
          *(a14 + 16) = vbslq_s8(v34, v135, v122);
          *v62 = v129;
          *(v62 + 16) = vbslq_s8(v34, v134, v113);
          *v63 = v130;
          *(v63 + 16) = vbslq_s8(v34, v133, v107);
          v127 -= 2;
          v128 = vbslq_s8(v34, vbslq_s8(v104, v121, v120), v135);
          *v71 = v131;
          *(v71 + 16) = vbslq_s8(v34, v132, v105);
          v129 = vbslq_s8(v34, vbslq_s8(v104, v112, v111), v134);
          v130 = vbslq_s8(v34, vbslq_s8(v104, v95, v94), v133);
          v131 = vbslq_s8(v34, vbslq_s8(v104, v102, v101), v132);
          v136 = 32;
        }

        if (v127 >= 1)
        {
          *(v136 + a14) = v128;
          *(v136 + v62) = v129;
          *(v136 + v63) = v130;
          *(v136 + v71) = v131;
          v136 |= 0x10uLL;
        }

        ++v31;
        ++v32;
        v75 = a12[4];
        if (v75 == v72)
        {
          goto LABEL_171;
        }

        a14 += v136;
        v62 += v136;
        v63 += v136;
        v71 += v136;
        ++v72;
      }

      else
      {
        v75 = a12[4];
      }

      v137 = a12[5];
      v138 = v137 != 0;
      if (v75 == 0 && v138 || (v139 = v75 - v138, v72 > v139))
      {
        v177 = v71;
        v176 = v63;
        v175 = v62;
        v174 = a14;
        if (v137)
        {
          goto LABEL_108;
        }

LABEL_106:
        v43 = 2 * a17;
        goto LABEL_171;
      }

      v140 = v139 - v72 + 1;
      while (1)
      {
        v141 = 0uLL;
        if (v31)
        {
          if (v31 + 1 <= result)
          {
            v142 = *v31;
          }

          else
          {
            v142 = 0uLL;
          }

          v143 = 0uLL;
          v144 = 0uLL;
          v145 = 0uLL;
          v149 = (v31 + v38);
          if ((v31 + v38 + 16) <= result)
          {
            v143 = *v149;
          }

          v150 = (v149 + v38);
          if (&v150[1] <= result)
          {
            v144 = *v150;
          }

          v151 = (v150 + v38);
          if (&v151[1] <= result)
          {
            v145 = *v151;
          }

          ++v31;
          if (v32)
          {
LABEL_95:
            if (&v32[1] <= v33)
            {
              v141 = *v32;
            }

            v146 = 0uLL;
            v147 = 0uLL;
            v148 = 0uLL;
            v152 = (v32 + v39);
            if (v32[1].u64 + v39 <= v33)
            {
              v146 = *v152;
            }

            v153 = (v152 + v39);
            if (&v153[1] <= v33)
            {
              v147 = *v153;
            }

            v154 = (v153 + v39);
            if (&v154[1] <= v33)
            {
              v148 = *v154;
            }

            ++v32;
            goto LABEL_104;
          }
        }

        else
        {
          v142 = 0uLL;
          v143 = 0uLL;
          v144 = 0uLL;
          v145 = 0uLL;
          if (v32)
          {
            goto LABEL_95;
          }
        }

        v146 = 0uLL;
        v147 = 0uLL;
        v148 = 0uLL;
LABEL_104:
        v155 = v145;
        v155.i32[3] = v42.i32[1];
        v156 = vuzp2q_s32(v40, v148);
        v157 = v144;
        v157.i32[3] = v42.i32[1];
        v158 = vuzp2q_s32(v40, v147);
        v159 = vuzp1q_s32(v143, v42);
        v160 = v146;
        v160.i32[0] = v40.i32[2];
        v161 = vtrn2q_s32(vrev64q_s32(v160), v159);
        v162 = v143;
        v162.i32[3] = v42.i32[1];
        v163 = vuzp2q_s32(v40, v146);
        v164 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v146)), vextq_s8(v143, v159, 0xCuLL));
        v165 = vuzp2q_s32(v40, v141);
        v166 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v165, v40)), vuzp2q_s32(v142, v42));
        v167 = vuzp1q_s32(v142, v42);
        v168 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v141)), vextq_s8(v142, v167, 0xCuLL));
        v34 = vuzp1q_s32(v145, v42);
        v142.i32[3] = v42.i32[1];
        v169 = vtrn2q_s32(vrev64q_s32(v165), v142);
        v170 = vuzp1q_s32(v40, v148);
        *a14 = v168;
        *(a14 + 16) = v169;
        v141.i32[0] = v40.i32[2];
        v171 = vtrn2q_s32(vrev64q_s32(v141), v167);
        v172 = vuzp1q_s32(v144, v42);
        *(a14 + 32) = v171;
        *(a14 + 48) = v166;
        v173 = v147;
        v173.i32[0] = v40.i32[2];
        v174 = (a14 + 64);
        v175 = (v62 + 64);
        *v62 = v164;
        *(v62 + 16) = vtrn2q_s32(vrev64q_s32(v163), v162);
        *(v62 + 32) = v161;
        *(v62 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v163, v40)), vuzp2q_s32(v143, v42));
        v176 = (v63 + 64);
        *v63 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v147)), vextq_s8(v144, v172, 0xCuLL));
        *(v63 + 16) = vtrn2q_s32(vrev64q_s32(v158), v157);
        *(v63 + 32) = vtrn2q_s32(vrev64q_s32(v173), v172);
        *(v63 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v158, v40)), vuzp2q_s32(v144, v42));
        v177 = (v71 + 64);
        v148.i32[0] = v40.i32[2];
        *(v71 + 32) = vtrn2q_s32(vrev64q_s32(v148), v34);
        *(v71 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v156, v40)), vuzp2q_s32(v145, v42));
        a14 += 64;
        *v71 = vtrn2q_s32(vrev64q_s32(v170), vextq_s8(v145, v34, 0xCuLL));
        *(v71 + 16) = vtrn2q_s32(vrev64q_s32(v156), v155);
        v62 += 64;
        v63 += 64;
        v71 += 64;
        if (!--v140)
        {
          v137 = a12[5];
          if (!v137)
          {
            goto LABEL_106;
          }

LABEL_108:
          v178 = 4 - v137;
          if (v35 == a12[6])
          {
            v179 = 4 - a12[7];
          }

          else
          {
            v179 = 4;
          }

          if (v31)
          {
            if (v179 < 2)
            {
              v181 = 0;
              v180 = v31;
              v182 = v31;
            }

            else
            {
              v180 = (v31 + v38);
              if (v179 == 2)
              {
                v181 = 0;
                v182 = (v31 + v38);
              }

              else
              {
                v182 = (v31 + v38);
                v180 = (v180 + v38);
                if (v179 <= 3)
                {
                  v181 = 0;
                }

                else
                {
                  v181 = v38;
                }
              }
            }

            v190 = (v180 + v181);
            v184 = 0uLL;
            v185 = 0uLL;
            v186 = 0uLL;
            v183 = 0uLL;
            if ((4 - v137))
            {
              if ((v31 + 4 * v178) <= result)
              {
                v183.i32[0] = *(v31 + 3 - v137);
              }

              if ((v182 + 4 * v178) <= result)
              {
                v184.i32[0] = *(v182 + 3 - v137);
              }

              if ((v180 + 4 * v178) <= result)
              {
                v185.i32[0] = *(v180 + 3 - v137);
              }

              if ((v190 + 4 * v178) <= result)
              {
                v186.i32[0] = *(v190 + 3 - v137);
              }
            }

            if (((4 - v137) & 2) != 0)
            {
              v183 = vextq_s8(v183, v183, 8uLL);
              if ((v31 + 8) <= result)
              {
                v191.i64[0] = *v31;
                v191.i64[1] = vextq_s8(v183, v183, 8uLL).u64[0];
                v183 = v191;
              }

              v184 = vextq_s8(v184, v184, 8uLL);
              if (v182 + 1 <= result)
              {
                v192.i64[0] = *v182;
                v192.i64[1] = vextq_s8(v184, v184, 8uLL).u64[0];
                v184 = v192;
              }

              v185 = vextq_s8(v185, v185, 8uLL);
              if (v180 + 1 <= result)
              {
                v193.i64[0] = *v180;
                v193.i64[1] = vextq_s8(v185, v185, 8uLL).u64[0];
                v185 = v193;
              }

              v186 = vextq_s8(v186, v186, 8uLL);
              if (v190 + 1 <= result)
              {
                v194.i64[0] = *v190;
                v194.i64[1] = vextq_s8(v186, v186, 8uLL).u64[0];
                v186 = v194;
              }
            }

            v31 = (v31 + 4 * v178);
            if (v32)
            {
LABEL_140:
              if (v179 < 2)
              {
                v196 = 0;
                v195 = v32;
                v197 = v32;
              }

              else
              {
                v195 = (v32->i64 + v39);
                if (v179 == 2)
                {
                  v196 = 0;
                  v197 = (v32->i64 + v39);
                }

                else
                {
                  v197 = (v32->i64 + v39);
                  v195 = (v195 + v39);
                  if (v179 <= 3)
                  {
                    v196 = 0;
                  }

                  else
                  {
                    v196 = v39;
                  }
                }
              }

              v198 = (v195 + v196);
              v188 = 0uLL;
              v34 = 0uLL;
              v189 = 0uLL;
              v187 = 0uLL;
              if ((4 - v137))
              {
                if (v32 + 4 * v178 <= v33)
                {
                  v187.i32[0] = v32->i32[3 - v137];
                }

                if (v197 + 4 * v178 <= v33)
                {
                  v188.i32[0] = *(v197 + 3 - v137);
                }

                if (v195 + 4 * v178 <= v33)
                {
                  v34.i32[0] = *(v195 + 3 - v137);
                }

                if (v198 + 4 * v178 <= v33)
                {
                  v189.i32[0] = *(v198 + 3 - v137);
                }
              }

              if (((4 - v137) & 2) != 0)
              {
                v187 = vextq_s8(v187, v187, 8uLL);
                v43 = 2 * a17;
                if (&v32->u64[1] <= v33)
                {
                  v199.i64[0] = v32->i64[0];
                  v199.i64[1] = vextq_s8(v187, v187, 8uLL).u64[0];
                  v187 = v199;
                }

                v188 = vextq_s8(v188, v188, 8uLL);
                if ((v197 + 1) <= v33)
                {
                  v200.i64[0] = *v197;
                  v200.i64[1] = vextq_s8(v188, v188, 8uLL).u64[0];
                  v188 = v200;
                }

                v34 = vextq_s8(v34, v34, 8uLL);
                if ((v195 + 1) <= v33)
                {
                  v201.i64[0] = *v195;
                  v201.i64[1] = vextq_s8(v34, v34, 8uLL).u64[0];
                  v34 = v201;
                }

                v189 = vextq_s8(v189, v189, 8uLL);
                if ((v198 + 1) <= v33)
                {
                  v202.i64[0] = *v198;
                  v202.i64[1] = vextq_s8(v189, v189, 8uLL).u64[0];
                  v189 = v202;
                }
              }

              else
              {
                v43 = 2 * a17;
              }

              v32 = (v32 + 4 * v178);
LABEL_167:
              v203 = vuzp1q_s32(v183, v42);
              v204 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v187)), vextq_s8(v183, v203, 0xCuLL));
              v205 = vuzp1q_s32(v184, v42);
              v206 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v188)), vextq_s8(v184, v205, 0xCuLL));
              v207 = vuzp1q_s32(v185, v42);
              v208 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v34)), vextq_s8(v185, v207, 0xCuLL));
              v209 = vuzp1q_s32(v186, v42);
              v210 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v40, v189)), vextq_s8(v186, v209, 0xCuLL));
              if ((v178 & 2) != 0)
              {
                v183.i32[3] = v42.i32[1];
                v184.i32[3] = v42.i32[1];
                v185.i32[3] = v42.i32[1];
                v186.i32[3] = v42.i32[1];
                *v174 = v204;
                v174[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v187)), v183);
                *v175 = v206;
                v175[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v188)), v184);
                *v176 = v208;
                v176[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v34)), v185);
                *v177 = v210;
                v177[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v40, v189)), v186);
                if (v178)
                {
                  v187.i32[0] = v40.i32[2];
                  v188.i32[0] = v40.i32[2];
                  v34.i32[0] = v40.i32[2];
                  v189.i32[0] = v40.i32[2];
                  v174[2] = vtrn2q_s32(vrev64q_s32(v187), v203);
                  v175[2] = vtrn2q_s32(vrev64q_s32(v188), v205);
                  v176[2] = vtrn2q_s32(vrev64q_s32(v34), v207);
                  v177[2] = vtrn2q_s32(vrev64q_s32(v189), v209);
                }
              }

              else
              {
                *v174 = v204;
                *v175 = v206;
                *v176 = v208;
                *v177 = v210;
              }

              goto LABEL_171;
            }
          }

          else
          {
            v183 = 0uLL;
            v184 = 0uLL;
            v185 = 0uLL;
            v186 = 0uLL;
            if (v32)
            {
              goto LABEL_140;
            }
          }

          v187 = 0uLL;
          v188 = 0uLL;
          v34 = 0uLL;
          v189 = 0uLL;
          v43 = 2 * a17;
          goto LABEL_167;
        }
      }
    }
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v158 = 0;
  v159 = 0;
  v156 = 0;
  v157 = 0;
  v154 = 0;
  v155 = 0;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v153, a6);
  v21 = a12[2];
  v22 = a12[6];
  if (v21 <= v22)
  {
    v23 = a12;
    v128 = *(a13 + 60);
    v125 = a5;
    while (1)
    {
      v25 = *(a3 + 8);
      if (v25)
      {
        v26 = *(a11 + 24);
        v27 = (HIDWORD(v26) * v128) + 4 * v21;
        v28 = *(*(v25 + 40) + 8 * *(a11 + 60));
        if (*(v28 + 12) - 1 < v27)
        {
          v27 = *(v28 + 12) - 1;
        }

        if (*(v25 + 104) == 1)
        {
          v29 = (*(v28 + 8 * v26 + 24) + 8 * v27);
        }

        else
        {
          v30 = (v27 * *(v25 + 108)) >> *(v25 + 112);
          if (v30 >= *(v28 + 20) - 1)
          {
            LODWORD(v30) = *(v28 + 20) - 1;
          }

          v29 = (*(v28 + 8 * v26 + 24) + 8 * v30);
        }

        v31 = *v29;
        v32 = HIDWORD(v31);
        if (a2 >= v31)
        {
          v33 = (a1 + v31);
        }

        else
        {
          v33 = 0;
        }

        if (a2 - v31 < HIDWORD(v31))
        {
          v32 = a2 - v31;
        }

        v34 = a2 >= v31;
        v35 = a1 + v31 + v32;
        if (!v34)
        {
          v35 = 0;
        }

        v158 = v33;
        v159 = v35;
      }

      v36 = *(a4 + 8);
      if (v36)
      {
        v37 = *(a11 + 24);
        v38 = (HIDWORD(v37) * v128) + 4 * v21;
        v39 = *(*(v36 + 40) + 8 * *(a11 + 60));
        if (*(v39 + 12) - 1 < v38)
        {
          v38 = *(v39 + 12) - 1;
        }

        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 8 * v37 + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          if (v41 >= *(v39 + 20) - 1)
          {
            LODWORD(v41) = *(v39 + 20) - 1;
          }

          v40 = (*(v39 + 8 * v37 + 24) + 8 * v41);
        }

        v42 = *v40;
        v43 = HIDWORD(v42);
        if (a2 >= v42)
        {
          v44 = (a1 + v42);
        }

        else
        {
          v44 = 0;
        }

        if (a2 - v42 < HIDWORD(v42))
        {
          v43 = a2 - v42;
        }

        v34 = a2 >= v42;
        v45 = a1 + v42 + v43;
        if (!v34)
        {
          v45 = 0;
        }

        v156 = v44;
        v157 = v45;
      }

      v46 = *(a5 + 8);
      if (v46)
      {
        v47 = *(a11 + 24);
        v48 = (HIDWORD(v47) * v128) + 4 * v21;
        v49 = *(*(v46 + 40) + 8 * *(a11 + 60));
        if (*(v49 + 12) - 1 < v48)
        {
          v48 = *(v49 + 12) - 1;
        }

        if (*(v46 + 104) == 1)
        {
          v50 = (*(v49 + 8 * v47 + 24) + 8 * v48);
        }

        else
        {
          v52 = (v48 * *(v46 + 108)) >> *(v46 + 112);
          if (v52 >= *(v49 + 20) - 1)
          {
            LODWORD(v52) = *(v49 + 20) - 1;
          }

          v50 = (*(v49 + 8 * v47 + 24) + 8 * v52);
        }

        v53 = *v50;
        v54 = HIDWORD(*v50);
        v55 = a1 + *v50;
        v56 = a2 - *v50;
        if (a2 >= *v50)
        {
          v51 = (a1 + v53);
        }

        else
        {
          v51 = 0;
        }

        if (v56 < HIDWORD(v53))
        {
          v54 = a2 - v53;
        }

        v34 = a2 >= v53;
        v57 = v55 + v54;
        if (!v34)
        {
          v57 = 0;
        }

        v154 = v51;
        v155 = v57;
      }

      else
      {
        v51 = v154;
      }

      v58 = (a14 + a17);
      v59 = (a14 + a17 + a17);
      v60 = &v59->i8[a17];
      if (!v158 || !v156 || !v51)
      {
        goto LABEL_95;
      }

      v61 = a16;
      if (!a16)
      {
        break;
      }

      if (v21 == v23[2])
      {
        v62 = v23[3] + 1;
        v63 = a14;
        a14 = (a14 + a17);
        v58 = v59;
        v59 = (v59 + a17);
        do
        {
          v60 = v59;
          v59 = v58;
          v58 = a14;
          a14 = v63;
          v63 = a16;
          --v62;
        }

        while (v62);
      }

      if (v21 != v22)
      {
        break;
      }

      v64 = v23[7];
      if (v64 != 1)
      {
        if (v64 != 2)
        {
          if (v64 != 3)
          {
            break;
          }

          v58 = a16;
        }

        v59 = a16;
      }

LABEL_66:
      v65 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v158, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v156, v65);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v154, v65);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v158, a7, v152);
        v134 = v152[1];
        v137 = v152[0];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a8, v151);
        v131 = v151[1];
        v140 = v151[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a9, &v149);
        v23 = a12;
        v66.i32[0] = 0;
        v67 = &v153;
        v68 = v131;
        v69 = vld1q_dup_s16(v67);
        v163.val[1] = vqtbl2q_s8(*(&v69 - 1), xmmword_296B6EF40);
        v170.val[0] = v134;
        v70 = v137;
        v71 = v149;
        v170.val[1] = v150;
        v163.val[0] = vqtbl2q_s8(v170, xmmword_296B6EE70);
        v72 = vqtbl2q_s8(*(&v69 - 1), xmmword_296B6EF50);
        v73 = vqtbl2q_s8(v170, xmmword_296B6EE90);
        v167.val[1] = vqtbl2q_s8(*(&v69 - 1), xmmword_296B6EF60);
        v167.val[0] = vqtbl2q_s8(v170, xmmword_296B6EEA0);
        v177.val[0] = v134;
        v177.val[1] = v150;
        v170.val[1] = vqtbl2q_s8(*(&v69 - 1), xmmword_296B6EF70);
        v170.val[0] = vqtbl2q_s8(v177, xmmword_296B6EEB0);
        v74 = vqtbl2q_s8(v163, xmmword_296B6EDD0);
        v75 = vqtbl2q_s8(*v73.i8, xmmword_296B6EDD0);
        v76 = vqtbl2q_s8(v167, xmmword_296B6EDD0);
        v77 = vqtbl2q_s8(v170, xmmword_296B6EDD0);
        if (a12[4] == v65)
        {
          v78 = 4 - a12[5];
        }

        else
        {
          v78 = 4;
        }

        v79 = a12[1];
        v73.i32[0] = v79 & 2;
        v80 = vdupq_lane_s32(*&vceqq_s32(v73, v66), 0);
        v81 = vbslq_s8(v80, v77, v76);
        v82 = vbslq_s8(v80, v76, v77);
        v83 = vbslq_s8(v80, v75, v74);
        v84 = vbslq_s8(v80, v74, v75);
        v178.val[0] = v140;
        v178.val[1] = v69;
        v168.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF60);
        v168.val[0] = vqtbl2q_s8(*v70.i8, xmmword_296B6EEA0);
        v85 = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v168.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF70);
        v168.val[0] = vqtbl2q_s8(*v70.i8, xmmword_296B6EEB0);
        v168.val[0] = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v86 = vbslq_s8(v80, v168.val[0], v85);
        v87 = vbslq_s8(v80, v85, v168.val[0]);
        v172.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF40);
        v172.val[0] = vqtbl2q_s8(*v70.i8, xmmword_296B6EE70);
        v168.val[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0);
        v172.val[1] = vqtbl2q_s8(v178, xmmword_296B6EF50);
        v172.val[0] = vqtbl2q_s8(*v70.i8, xmmword_296B6EE90);
        v172.val[0] = vqtbl2q_s8(v172, xmmword_296B6EDD0);
        v88 = vbslq_s8(v80, v172.val[0], v168.val[0]);
        v89 = vbslq_s8(v80, v168.val[0], v172.val[0]);
        if ((v79 & 2) != 0)
        {
          v78 -= 2;
        }

        if (v79)
        {
          v90 = vextq_s8(v88, v89, 8uLL).u64[0];
          v89 = vextq_s8(v89, v88, 8uLL);
          v91 = vextq_s8(v86, v87, 8uLL).u64[0];
          v87 = vextq_s8(v87, v86, 8uLL);
          v92 = vextq_s8(v83, v84, 8uLL).u64[0];
          v84 = vextq_s8(v84, v83, 8uLL);
          v93 = vextq_s8(v81, v82, 8uLL).u64[0];
          --v78;
          v82 = vextq_s8(v82, v81, 8uLL);
          v88.i64[0] = v90;
          v86.i64[0] = v91;
          v83.i64[0] = v92;
          v81.i64[0] = v93;
        }

        if (v78 <= 1)
        {
          v94 = 0;
        }

        else
        {
          *a14 = v89;
          *v58 = v87;
          v78 -= 2;
          v89.i64[0] = v88.i64[0];
          v87.i64[0] = v86.i64[0];
          *v59 = v84;
          v84.i64[0] = v83.i64[0];
          v61->val[0] = v82;
          v82.i64[0] = v81.i64[0];
          v94 = 16;
        }

        if (v78 >= 1)
        {
          *(a14->i64 + v94) = v89.i64[0];
          *(v58->i64 + v94) = v87.i64[0];
          *(v59->i64 + v94) = v84.i64[0];
          *(v61->val[0].i64 + v94) = v82.i64[0];
          v94 |= 8uLL;
        }

        v95 = a12[4];
        if (v95 == v65)
        {
          goto LABEL_95;
        }

        a14 = (a14 + v94);
        v58 = (v58 + v94);
        v59 = (v59 + v94);
        v61 = (v61 + v94);
        ++v65;
      }

      else
      {
        v95 = a12[4];
      }

      v96 = v23[5];
      v97 = v96 != 0;
      if (v95 != 0 || !v97)
      {
        v98 = v95 - v97;
        if (v65 <= v98)
        {
          v99 = v98 - v65 + 1;
          v100 = a7;
          v101 = a8;
          do
          {
            v102 = v61;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v158, v100, v148);
            v138 = v148[0];
            v135 = v148[1];
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, v101, v147);
            v141 = v147[0];
            v132 = v147[1];
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a9, v146);
            v103 = &v153;
            v176.val[0] = v132;
            v176.val[1] = vld1q_dup_s16(v103);
            v160.val[1] = vqtbl2q_s8(v176, xmmword_296B6EF60);
            v175.val[0] = v135;
            v174.val[0] = v138;
            v174.val[1] = v146[0];
            v175.val[1] = v146[1];
            v160.val[0] = vqtbl2q_s8(v175, xmmword_296B6EEA0);
            v160.val[0] = vqtbl2q_s8(v160, xmmword_296B6EDD0);
            v104 = vqtbl2q_s8(v176, xmmword_296B6EF70);
            v160.val[1] = vqtbl2q_s8(v175, xmmword_296B6EEB0);
            v160.val[1] = vqtbl2q_s8(*(&v160 + 16), xmmword_296B6EDD0);
            v164.val[1] = vqtbl2q_s8(v176, xmmword_296B6EF40);
            v164.val[0] = vqtbl2q_s8(v175, xmmword_296B6EE70);
            v164.val[0] = vqtbl2q_s8(v164, xmmword_296B6EDD0);
            v105 = vqtbl2q_s8(v176, xmmword_296B6EF50);
            v164.val[1] = vqtbl2q_s8(v175, xmmword_296B6EE90);
            v175.val[0] = v141;
            v175.val[1] = v176.val[1];
            v169.val[1] = vqtbl2q_s8(v175, xmmword_296B6EF60);
            v169.val[0] = vqtbl2q_s8(v174, xmmword_296B6EEA0);
            v169.val[0] = vqtbl2q_s8(v169, xmmword_296B6EDD0);
            v106 = vqtbl2q_s8(v175, xmmword_296B6EF40);
            v169.val[1] = vqtbl2q_s8(v174, xmmword_296B6EE70);
            v171.val[1] = vqtbl2q_s8(v175, xmmword_296B6EF70);
            v173.val[1] = vqtbl2q_s8(v175, xmmword_296B6EF50);
            v173.val[0] = vqtbl2q_s8(v174, xmmword_296B6EE90);
            *a14 = vqtbl2q_s8(*(&v169 + 16), xmmword_296B6EDD0);
            a14[1] = vqtbl2q_s8(v173, xmmword_296B6EDD0);
            a14 += 2;
            v171.val[0] = vqtbl2q_s8(v174, xmmword_296B6EEB0);
            *v58 = v169.val[0];
            v58[1] = vqtbl2q_s8(v171, xmmword_296B6EDD0);
            v58 += 2;
            *v59 = v164.val[0];
            v59[1] = vqtbl2q_s8(*(&v164 + 16), xmmword_296B6EDD0);
            v59 += 2;
            ++v61;
            *v102 = v160;
            --v99;
          }

          while (v99);
          v23 = a12;
          v96 = a12[5];
          a8 = v101;
          a7 = v100;
          a5 = v125;
        }
      }

      if (v96)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v158, a7, v145);
        v142 = v145[0];
        v139 = v145[1];
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v156, a8, v144);
        v136 = v144[0];
        v133 = v144[1];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v154, a9, v143);
        v107 = v133;
        v108 = v139;
        v109 = v136;
        v110 = v142;
        v23 = a12;
        v111 = &v153;
        v112 = vld1q_dup_s16(v111);
        v161.val[1] = vqtbl2q_s8(*v107.i8, xmmword_296B6EF60);
        v113 = v143[0];
        v114 = v143[1];
        v161.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEA0);
        v115 = vqtbl2q_s8(v161, xmmword_296B6EDD0);
        v116 = vqtbl2q_s8(*v107.i8, xmmword_296B6EF40);
        v161.val[1] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE70);
        v117 = vqtbl2q_s8(*(&v161 + 16), xmmword_296B6EDD0);
        v118 = v112;
        v165.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF60);
        v165.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEA0);
        v119 = vqtbl2q_s8(v165, xmmword_296B6EDD0);
        v120 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF40);
        v165.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE70);
        v121 = vqtbl2q_s8(*(&v165 + 16), xmmword_296B6EDD0);
        v122 = 4 - a12[5];
        if ((v122 & 2) != 0)
        {
          *a14 = v121;
          *v58 = v119;
          *v59 = v117;
          v61->val[0] = v115;
          if (v122)
          {
            v162.val[1] = vqtbl2q_s8(*v107.i8, xmmword_296B6EF70);
            v162.val[0] = vqtbl2q_s8(*v108.i8, xmmword_296B6EEB0);
            v162.val[0].i64[0] = vqtbl2q_s8(v162, xmmword_296B6EDD0).u64[0];
            v123 = vqtbl2q_s8(*v107.i8, xmmword_296B6EF50);
            v162.val[1] = vqtbl2q_s8(*v108.i8, xmmword_296B6EE90);
            v166.val[1] = vqtbl2q_s8(*v109.i8, xmmword_296B6EF70);
            v166.val[0] = vqtbl2q_s8(*v110.i8, xmmword_296B6EEB0);
            v166.val[0].i64[0] = vqtbl2q_s8(v166, xmmword_296B6EDD0).u64[0];
            v124 = vqtbl2q_s8(*v109.i8, xmmword_296B6EF50);
            v166.val[1] = vqtbl2q_s8(*v110.i8, xmmword_296B6EE90);
            a14[1].i64[0] = vqtbl2q_s8(*(&v166 + 16), xmmword_296B6EDD0).u64[0];
            v58[1].i64[0] = v166.val[0].i64[0];
            v59[1].i64[0] = vqtbl2q_s8(*(&v162 + 16), xmmword_296B6EDD0).u64[0];
            v61->val[1].i64[0] = v162.val[0].i64[0];
          }
        }

        else
        {
          a14->i64[0] = v121.i64[0];
          v58->i64[0] = v119.i64[0];
          v59->i64[0] = v117.i64[0];
          v61->val[0].i64[0] = v115.i64[0];
        }
      }

LABEL_95:
      a14 = (v60->val + a17);
      v22 = v23[6];
      v34 = v21++ >= v22;
      if (v34)
      {
        return result;
      }
    }

    v61 = v60;
    goto LABEL_66;
  }

  return result;
}

int32x4_t *ExtractInterleaved4_B44A<unsigned int,(StreamType)1,(StreamType)1,(StreamType)1,(StreamType)0>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = a5;
  v18 = a4;
  v22 = a11[3];
  v23 = a11[7].u32[1];
  v24 = *(a3 + 8);
  v25 = v24[6];
  v26 = *(*(*&v24[5] + 8 * v23) + 16);
  v27 = *(a4 + 8);
  v28 = v27[6];
  v29 = *(*(*&v27[5] + 8 * v23) + 16);
  v30 = *(a5 + 8);
  v31 = v30[6];
  v32 = *(*(*&v30[5] + 8 * v23) + 16);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(v263, a6);
  v40 = a12[2];
  v41 = a12[6];
  if (v40 <= v41)
  {
    v42 = a3;
    v44 = 4 * vmin_u32(vmls_s32(v26, v25, v22), v25).u32[0];
    v45 = 4 * vmin_u32(vmls_s32(v29, v28, v22), v28).u32[0];
    v46 = 4 * vmin_u32(vmls_s32(v32, v31, v22), v31).u32[0];
    v47 = *(a13 + 60);
    v48 = vld1q_dup_f32(v263);
    v262 = a1;
    v261 = v47;
    v259 = v18;
    v260 = v17;
    v258 = a3;
    while (1)
    {
      v49 = *(v42 + 8);
      if (v49)
      {
        v50 = *(*(v49 + 40) + 8 * a11[7].u32[1]);
        v51 = *(v50 + 12) - 1;
        if (v51 >= (HIDWORD(*&a11[3]) * v47) + 4 * v40)
        {
          v51 = (HIDWORD(*&a11[3]) * v47) + 4 * v40;
        }

        v52 = v50 + 8 * *&a11[3];
        if (*(v49 + 104) == 1)
        {
          v53 = (*(v52 + 24) + 8 * v51);
        }

        else
        {
          v54 = (v51 * *(v49 + 108)) >> *(v49 + 112);
          v55 = *(v50 + 20) - 1;
          if (v54 >= v55)
          {
            LODWORD(v54) = v55;
          }

          v53 = (*(v52 + 24) + 8 * v54);
        }

        v56 = *v53;
        if (a2 <= v56)
        {
          v36 = 0;
          v38 = 0;
        }

        else
        {
          v57 = v56;
          if (a2 - v56 >= HIDWORD(v56))
          {
            v58 = HIDWORD(v56);
          }

          else
          {
            v58 = a2 - v56;
          }

          v36 = (v57 + a1);
          v38 = v58 + v57 + a1;
        }
      }

      v59 = *(v18 + 8);
      if (v59)
      {
        v60 = *(*(v59 + 40) + 8 * a11[7].u32[1]);
        v61 = *(v60 + 12) - 1;
        if (v61 >= (HIDWORD(*&a11[3]) * v47) + 4 * v40)
        {
          v61 = (HIDWORD(*&a11[3]) * v47) + 4 * v40;
        }

        v62 = v60 + 8 * *&a11[3];
        if (*(v59 + 104) == 1)
        {
          v63 = (*(v62 + 24) + 8 * v61);
        }

        else
        {
          v64 = (v61 * *(v59 + 108)) >> *(v59 + 112);
          v65 = *(v60 + 20) - 1;
          if (v64 >= v65)
          {
            LODWORD(v64) = v65;
          }

          v63 = (*(v62 + 24) + 8 * v64);
        }

        v66 = *v63;
        if (a2 <= v66)
        {
          v37 = 0;
          result = 0;
        }

        else
        {
          v67 = v66;
          if (a2 - v66 >= HIDWORD(v66))
          {
            v68 = HIDWORD(v66);
          }

          else
          {
            v68 = a2 - v66;
          }

          v37 = (v67 + a1);
          result = (v68 + v67 + a1);
        }
      }

      v69 = *(v17 + 8);
      if (v69)
      {
        v70 = *(*(v69 + 40) + 8 * a11[7].u32[1]);
        v71 = *(v70 + 12) - 1;
        if (v71 >= (HIDWORD(*&a11[3]) * v47) + 4 * v40)
        {
          v71 = (HIDWORD(*&a11[3]) * v47) + 4 * v40;
        }

        v72 = v70 + 8 * *&a11[3];
        if (*(v69 + 104) == 1)
        {
          v73 = (*(v72 + 24) + 8 * v71);
        }

        else
        {
          v74 = (v71 * *(v69 + 108)) >> *(v69 + 112);
          v75 = *(v70 + 20) - 1;
          if (v74 >= v75)
          {
            LODWORD(v74) = v75;
          }

          v73 = (*(v72 + 24) + 8 * v74);
        }

        v76 = *v73;
        if (a2 <= v76)
        {
          v35 = 0;
          v34 = 0;
        }

        else
        {
          v77 = v76;
          if (a2 - v76 >= HIDWORD(v76))
          {
            v78 = HIDWORD(v76);
          }

          else
          {
            v78 = a2 - v76;
          }

          v35 = (v77 + a1);
          v34 = v78 + v77 + a1;
        }
      }

      v79 = a14 + a17;
      v80 = a14 + a17 + a17;
      v81 = v80 + a17;
      if (!v36 || !v37 || !v35)
      {
        goto LABEL_236;
      }

      if (!a16)
      {
        goto LABEL_59;
      }

      if (v40 == a12[2])
      {
        v82 = a12[3] + 1;
        v83 = v80 + a17;
        v84 = a14 + a17 + a17;
        v85 = a14 + a17;
        v86 = a14;
        do
        {
          a14 = v86;
          v79 = v85;
          v80 = v84;
          v81 = v83;
          v83 = v84;
          v84 = v85;
          v85 = v86;
          v86 = a16;
          --v82;
        }

        while (v82);
      }

      if (v40 == v41)
      {
        break;
      }

      v88 = v81;
      a1 = v262;
LABEL_61:
      v89 = *a12;
      v36 += v89;
      if (&v36[-1].u64[1] + 7 >= v38)
      {
        return result;
      }

      v37 += v89;
      if ((v37 - 1) >= result)
      {
        return result;
      }

      v35 += v89;
      if (&v35[-1].u64[1] + 7 >= v34)
      {
        return result;
      }

      v90 = a12[1];
      if (v90)
      {
        if (&v36[1] <= v38)
        {
          v91 = *v36;
        }

        else
        {
          v91 = 0uLL;
        }

        v93 = 0uLL;
        v94 = 0uLL;
        v95 = 0uLL;
        v96 = (v36 + v44);
        if (v36[1].u64 + v44 <= v38)
        {
          v93 = *v96;
        }

        v97 = (v96 + v44);
        if (&v97[1] <= v38)
        {
          v94 = *v97;
        }

        v98 = (v97 + v44);
        if (&v98[1] <= v38)
        {
          v95 = *v98;
        }

        if (v37 + 1 <= result)
        {
          v99 = *v37;
        }

        else
        {
          v99 = 0uLL;
        }

        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = (v37 + v45);
        if ((v37 + v45 + 16) <= result)
        {
          v100 = *v103;
        }

        v104 = (v103 + v45);
        if (&v104[1] <= result)
        {
          v101 = *v104;
        }

        v105 = (v104 + v45);
        if (&v105[1] <= result)
        {
          v102 = *v105;
        }

        if (&v35[1] <= v34)
        {
          v106 = *v35;
        }

        else
        {
          v106 = 0uLL;
        }

        v107 = 0uLL;
        v108 = 0uLL;
        v109 = 0uLL;
        v110 = (v35 + v46);
        if (v35[1].u64 + v46 <= v34)
        {
          v107 = *v110;
        }

        v111 = (v110 + v46);
        if (&v111[1] <= v34)
        {
          v108 = *v111;
        }

        v112 = (v111 + v46);
        if (&v112[1] <= v34)
        {
          v109 = *v112;
        }

        v39.i32[0] = 0;
        v113 = vuzp1q_s32(v101, v48);
        v114 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v94, v108)), vextq_s8(v101, v113, 0xCuLL));
        v115 = vuzp2q_s32(v94, v108);
        v108.i32[0] = v94.i32[2];
        v116 = vtrn2q_s32(vrev64q_s32(v108), v113);
        v117 = vuzp2q_s32(v101, v48);
        v101.i32[3] = v48.i32[1];
        v118 = vtrn2q_s32(vrev64q_s32(v115), v101);
        v119 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v115, v94)), v117);
        v120 = vuzp1q_s32(v102, v48);
        v121 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v95, v109)), vextq_s8(v102, v120, 0xCuLL));
        v122 = vuzp2q_s32(v95, v109);
        v109.i32[0] = v95.i32[2];
        v123 = vtrn2q_s32(vrev64q_s32(v109), v120);
        v124 = vuzp2q_s32(v102, v48);
        v102.i32[3] = v48.i32[1];
        v125 = vtrn2q_s32(vrev64q_s32(v122), v102);
        v126 = vrev64q_s32(vtrn2q_s32(v122, v95));
        v127 = vtrn2q_s32(v126, v124);
        if (a12[4] == v89)
        {
          v128 = 4 - a12[5];
        }

        else
        {
          v128 = 4;
        }

        v126.i32[0] = a12[1] & 2;
        v129 = vdupq_lane_s32(*&vceqq_s32(v126, v39), 0);
        v130 = vbslq_s8(v129, v125, v127);
        v131 = vbslq_s8(v129, v121, v123);
        v132 = vbslq_s8(v129, v118, v119);
        v133 = vbslq_s8(v129, v114, v116);
        v134 = v100;
        v134.i32[3] = v48.i32[1];
        v135 = vuzp2q_s32(v93, v107);
        v136 = vtrn2q_s32(vrev64q_s32(v135), v134);
        v137 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v135, v93)), vuzp2q_s32(v100, v48));
        v138 = vbslq_s8(v129, v136, v137);
        v139 = vuzp1q_s32(v100, v48);
        v140 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v93, v107)), vextq_s8(v100, v139, 0xCuLL));
        v107.i32[0] = v93.i32[2];
        v141 = vtrn2q_s32(vrev64q_s32(v107), v139);
        v142 = vbslq_s8(v129, v140, v141);
        v143 = v99;
        v143.i32[3] = v48.i32[1];
        v144 = vuzp2q_s32(v91, v106);
        v145 = vtrn2q_s32(vrev64q_s32(v144), v143);
        v146 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v144, v91)), vuzp2q_s32(v99, v48));
        v147 = vbslq_s8(v129, v145, v146);
        v148 = vuzp1q_s32(v99, v48);
        v149 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v91, v106)), vextq_s8(v99, v148, 0xCuLL));
        v106.i32[0] = v91.i32[2];
        v150 = vrev64q_s32(v106);
        v151 = vtrn2q_s32(v150, v148);
        if ((v90 & 2) != 0)
        {
          v128 -= 2;
        }

        v152 = v90 & 1;
        v153 = v128 - v152;
        v150.i32[0] = v152;
        v39 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v150, v39)), 0);
        v154 = vbslq_s8(v39, v147, vbslq_s8(v129, v149, v151));
        v155 = vbslq_s8(v39, v138, v142);
        v156 = vbslq_s8(v39, v132, v133);
        v157 = vbslq_s8(v39, v130, v131);
        if (v128 - v152 <= 1)
        {
          v162 = 0;
        }

        else
        {
          v158 = vbslq_s8(v129, v123, v121);
          v159 = vbslq_s8(v129, v116, v114);
          v160 = vbslq_s8(v129, v141, v140);
          v161 = vbslq_s8(v129, v151, v149);
          *a14 = v154;
          *(a14 + 16) = vbslq_s8(v39, v161, v147);
          *v79 = v155;
          *(v79 + 16) = vbslq_s8(v39, v160, v138);
          *v80 = v156;
          *(v80 + 16) = vbslq_s8(v39, v159, v132);
          v153 -= 2;
          v154 = vbslq_s8(v39, vbslq_s8(v129, v146, v145), v161);
          *v88 = v157;
          *(v88 + 16) = vbslq_s8(v39, v158, v130);
          v155 = vbslq_s8(v39, vbslq_s8(v129, v137, v136), v160);
          v156 = vbslq_s8(v39, vbslq_s8(v129, v119, v118), v159);
          v157 = vbslq_s8(v39, vbslq_s8(v129, v127, v125), v158);
          v162 = 32;
        }

        v47 = v261;
        if (v153 >= 1)
        {
          *(v162 + a14) = v154;
          *(v162 + v79) = v155;
          *(v162 + v80) = v156;
          *(v162 + v88) = v157;
          v162 |= 0x10uLL;
        }

        ++v36;
        ++v37;
        ++v35;
        v92 = a12[4];
        if (v92 == v89)
        {
          goto LABEL_236;
        }

        a14 += v162;
        v79 += v162;
        v80 += v162;
        v88 += v162;
        ++v89;
      }

      else
      {
        v92 = a12[4];
      }

      v163 = a12[5];
      v164 = v163 != 0;
      if (v92 == 0 && v164 || (v165 = v92 - v164, v89 > v165))
      {
        v211 = v88;
        v210 = v80;
        v209 = v79;
        v208 = a14;
        if (v163)
        {
          goto LABEL_145;
        }

LABEL_143:
        v18 = v259;
        v17 = v260;
        v42 = v258;
        a1 = v262;
        v47 = v261;
        goto LABEL_236;
      }

      v166 = v165 - v89 + 1;
      do
      {
        v167 = 0uLL;
        if (v36)
        {
          if (&v36[1] <= v38)
          {
            v168 = *v36;
          }

          else
          {
            v168 = 0uLL;
          }

          v169 = 0uLL;
          v170 = 0uLL;
          v171 = 0uLL;
          v179 = (v36 + v44);
          if (v36[1].u64 + v44 <= v38)
          {
            v169 = *v179;
          }

          v180 = (v179 + v44);
          if (&v180[1] <= v38)
          {
            v170 = *v180;
          }

          v181 = (v180 + v44);
          if (&v181[1] <= v38)
          {
            v171 = *v181;
          }

          ++v36;
          if (!v37)
          {
LABEL_112:
            v172 = 0uLL;
            v173 = 0uLL;
            v174 = 0uLL;
            if (!v35)
            {
              goto LABEL_113;
            }

            goto LABEL_131;
          }
        }

        else
        {
          v168 = 0uLL;
          v169 = 0uLL;
          v170 = 0uLL;
          v171 = 0uLL;
          if (!v37)
          {
            goto LABEL_112;
          }
        }

        if (v37 + 1 <= result)
        {
          v167 = *v37;
        }

        v172 = 0uLL;
        v173 = 0uLL;
        v174 = 0uLL;
        v182 = (v37 + v45);
        if ((v37 + v45 + 16) <= result)
        {
          v172 = *v182;
        }

        v183 = (v182 + v45);
        if (&v183[1] <= result)
        {
          v173 = *v183;
        }

        v184 = (v183 + v45);
        if (&v184[1] <= result)
        {
          v174 = *v184;
        }

        ++v37;
        if (!v35)
        {
LABEL_113:
          v175 = 0uLL;
          v176 = 0uLL;
          v177 = 0uLL;
          v178 = 0uLL;
          goto LABEL_141;
        }

LABEL_131:
        if (&v35[1] <= v34)
        {
          v175 = *v35;
        }

        else
        {
          v175 = 0uLL;
        }

        v176 = 0uLL;
        v177 = 0uLL;
        v178 = 0uLL;
        v185 = (v35 + v46);
        if (v35[1].u64 + v46 <= v34)
        {
          v176 = *v185;
        }

        v186 = (v185 + v46);
        if (&v186[1] <= v34)
        {
          v177 = *v186;
        }

        v187 = (v186 + v46);
        if (&v187[1] <= v34)
        {
          v178 = *v187;
        }

        ++v35;
LABEL_141:
        v188 = v174;
        v188.i32[3] = v48.i32[1];
        v189 = v173;
        v189.i32[3] = v48.i32[1];
        v190 = vuzp2q_s32(v170, v177);
        v191 = v176;
        v191.i32[0] = v169.i32[2];
        v192 = vuzp1q_s32(v172, v48);
        v193 = vtrn2q_s32(vrev64q_s32(v191), v192);
        v194 = v172;
        v194.i32[3] = v48.i32[1];
        v195 = vuzp2q_s32(v169, v176);
        v196 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v169, v176)), vextq_s8(v172, v192, 0xCuLL));
        v197 = vuzp2q_s32(v168, v175);
        v198 = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v197, v168)), vuzp2q_s32(v167, v48));
        v199 = vuzp1q_s32(v167, v48);
        v200 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v168, v175)), vextq_s8(v167, v199, 0xCuLL));
        v201 = vuzp2q_s32(v171, v178);
        v175.i32[0] = v168.i32[2];
        v167.i32[3] = v48.i32[1];
        v202 = vtrn2q_s32(vrev64q_s32(v197), v167);
        v203 = vuzp1q_s32(v174, v48);
        v204 = vtrn2q_s32(vrev64q_s32(v175), v199);
        v205 = vuzp1q_s32(v171, v178);
        *a14 = v200;
        *(a14 + 16) = v202;
        *(a14 + 32) = v204;
        *(a14 + 48) = v198;
        v206 = vuzp1q_s32(v173, v48);
        *v79 = v196;
        *(v79 + 16) = vtrn2q_s32(vrev64q_s32(v195), v194);
        v207 = v177;
        v207.i32[0] = v170.i32[2];
        v39 = vtrn2q_s32(vrev64q_s32(v207), v206);
        v208 = (a14 + 64);
        v209 = (v79 + 64);
        *(v79 + 32) = v193;
        *(v79 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v195, v169)), vuzp2q_s32(v172, v48));
        v210 = (v80 + 64);
        *v80 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v170, v177)), vextq_s8(v173, v206, 0xCuLL));
        *(v80 + 16) = vtrn2q_s32(vrev64q_s32(v190), v189);
        *(v80 + 32) = v39;
        *(v80 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v190, v170)), vuzp2q_s32(v173, v48));
        v211 = (v88 + 64);
        v178.i32[0] = v171.i32[2];
        *(v88 + 32) = vtrn2q_s32(vrev64q_s32(v178), v203);
        *(v88 + 48) = vtrn2q_s32(vrev64q_s32(vtrn2q_s32(v201, v171)), vuzp2q_s32(v174, v48));
        a14 += 64;
        *v88 = vtrn2q_s32(vrev64q_s32(v205), vextq_s8(v174, v203, 0xCuLL));
        *(v88 + 16) = vtrn2q_s32(vrev64q_s32(v201), v188);
        v79 += 64;
        v80 += 64;
        v88 += 64;
        --v166;
      }

      while (v166);
      v163 = a12[5];
      if (!v163)
      {
        goto LABEL_143;
      }

LABEL_145:
      v212 = 4 - v163;
      if (v40 == a12[6])
      {
        v213 = 4 - a12[7];
      }

      else
      {
        v213 = 4;
      }

      v214 = 0uLL;
      if (!v36)
      {
        v218 = 0uLL;
        v219 = 0uLL;
        v220 = 0uLL;
        v221 = 0uLL;
        v47 = v261;
        if (v37)
        {
          goto LABEL_178;
        }

LABEL_153:
        v222 = 0uLL;
        v223 = 0uLL;
        v224 = 0uLL;
        if (v35)
        {
          goto LABEL_204;
        }

LABEL_154:
        v225 = 0uLL;
        v226 = 0uLL;
        v39 = 0uLL;
        v227 = 0uLL;
        a1 = v262;
        goto LABEL_231;
      }

      v47 = v261;
      if (v213 < 2)
      {
        v216 = 0;
        v215 = v36;
        v217 = v36;
      }

      else
      {
        v215 = (v36->i64 + v44);
        if (v213 == 2)
        {
          v216 = 0;
          v217 = (v36->i64 + v44);
        }

        else
        {
          v217 = (v36->i64 + v44);
          v215 = (v215 + v44);
          if (v213 <= 3)
          {
            v216 = 0;
          }

          else
          {
            v216 = v44;
          }
        }
      }

      v228 = (v215 + v216);
      v219 = 0uLL;
      v220 = 0uLL;
      v221 = 0uLL;
      v218 = 0uLL;
      if ((4 - v163))
      {
        if (v36 + 4 * v212 <= v38)
        {
          v218.i32[0] = v36->i32[3 - v163];
        }

        if (v217 + 4 * v212 <= v38)
        {
          v219.i32[0] = *(v217 + 3 - v163);
        }

        if (v215 + 4 * v212 <= v38)
        {
          v220.i32[0] = *(v215 + 3 - v163);
        }

        if (v228 + 4 * v212 <= v38)
        {
          v221.i32[0] = *(v228 + 3 - v163);
        }
      }

      if (((4 - v163) & 2) != 0)
      {
        v218 = vextq_s8(v218, v218, 8uLL);
        if (&v36->u64[1] <= v38)
        {
          v229.i64[0] = v36->i64[0];
          v229.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
          v218 = v229;
        }

        v219 = vextq_s8(v219, v219, 8uLL);
        if ((v217 + 1) <= v38)
        {
          v230.i64[0] = *v217;
          v230.i64[1] = vextq_s8(v219, v219, 8uLL).u64[0];
          v219 = v230;
        }

        v220 = vextq_s8(v220, v220, 8uLL);
        if ((v215 + 1) <= v38)
        {
          v231.i64[0] = *v215;
          v231.i64[1] = vextq_s8(v220, v220, 8uLL).u64[0];
          v220 = v231;
        }

        v221 = vextq_s8(v221, v221, 8uLL);
        if ((v228 + 1) <= v38)
        {
          v232.i64[0] = *v228;
          v232.i64[1] = vextq_s8(v221, v221, 8uLL).u64[0];
          v221 = v232;
        }
      }

      v36 = (v36 + 4 * v212);
      if (!v37)
      {
        goto LABEL_153;
      }

LABEL_178:
      if (v213 < 2)
      {
        v234 = 0;
        v233 = v37;
        v235 = v37;
      }

      else
      {
        v233 = (v37 + v45);
        if (v213 == 2)
        {
          v234 = 0;
          v235 = (v37 + v45);
        }

        else
        {
          v235 = (v37 + v45);
          v233 = (v233 + v45);
          if (v213 <= 3)
          {
            v234 = 0;
          }

          else
          {
            v234 = v45;
          }
        }
      }

      v236 = (v233 + v234);
      v222 = 0uLL;
      v223 = 0uLL;
      v224 = 0uLL;
      if ((4 - v163))
      {
        if ((v37 + 4 * v212) <= result)
        {
          v214.i32[0] = *(v37 + 3 - v163);
        }

        if ((v235 + 4 * v212) <= result)
        {
          v222.i32[0] = *(v235 + 3 - v163);
        }

        if ((v233 + 4 * v212) <= result)
        {
          v223.i32[0] = *(v233 + 3 - v163);
        }

        if ((v236 + 4 * v212) <= result)
        {
          v224.i32[0] = *(v236 + 3 - v163);
        }
      }

      if (((4 - v163) & 2) != 0)
      {
        v214 = vextq_s8(v214, v214, 8uLL);
        if ((v37 + 8) <= result)
        {
          v237.i64[0] = *v37;
          v237.i64[1] = vextq_s8(v214, v214, 8uLL).u64[0];
          v214 = v237;
        }

        v222 = vextq_s8(v222, v222, 8uLL);
        if (v235 + 1 <= result)
        {
          v238.i64[0] = *v235;
          v238.i64[1] = vextq_s8(v222, v222, 8uLL).u64[0];
          v222 = v238;
        }

        v223 = vextq_s8(v223, v223, 8uLL);
        if (v233 + 1 <= result)
        {
          v239.i64[0] = *v233;
          v239.i64[1] = vextq_s8(v223, v223, 8uLL).u64[0];
          v223 = v239;
        }

        v224 = vextq_s8(v224, v224, 8uLL);
        if (v236 + 1 <= result)
        {
          v240.i64[0] = *v236;
          v240.i64[1] = vextq_s8(v224, v224, 8uLL).u64[0];
          v224 = v240;
        }
      }

      v37 = (v37 + 4 * v212);
      if (!v35)
      {
        goto LABEL_154;
      }

LABEL_204:
      if (v213 < 2)
      {
        v242 = 0;
        v241 = v35;
        v243 = v35;
      }

      else
      {
        v241 = (v35->i64 + v46);
        if (v213 == 2)
        {
          v242 = 0;
          v243 = (v35->i64 + v46);
        }

        else
        {
          v243 = (v35->i64 + v46);
          v241 = (v241 + v46);
          if (v213 <= 3)
          {
            v242 = 0;
          }

          else
          {
            v242 = v46;
          }
        }
      }

      v244 = (v241 + v242);
      v226 = 0uLL;
      v39 = 0uLL;
      v227 = 0uLL;
      v225 = 0uLL;
      if ((4 - v163))
      {
        if (v35 + 4 * v212 <= v34)
        {
          v225.i32[0] = v35->i32[3 - v163];
        }

        if (v243 + 4 * v212 <= v34)
        {
          v226.i32[0] = *(v243 + 3 - v163);
        }

        if (v241 + 4 * v212 <= v34)
        {
          v39.i32[0] = *(v241 + 3 - v163);
        }

        if (v244 + 4 * v212 <= v34)
        {
          v227.i32[0] = *(v244 + 3 - v163);
        }
      }

      if (((4 - v163) & 2) != 0)
      {
        v225 = vextq_s8(v225, v225, 8uLL);
        a1 = v262;
        if (&v35->u64[1] <= v34)
        {
          v245.i64[0] = v35->i64[0];
          v245.i64[1] = vextq_s8(v225, v225, 8uLL).u64[0];
          v225 = v245;
        }

        v226 = vextq_s8(v226, v226, 8uLL);
        if ((v243 + 1) <= v34)
        {
          v246.i64[0] = *v243;
          v246.i64[1] = vextq_s8(v226, v226, 8uLL).u64[0];
          v226 = v246;
        }

        v39 = vextq_s8(v39, v39, 8uLL);
        if ((v241 + 1) <= v34)
        {
          v247.i64[0] = *v241;
          v247.i64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
          v39 = v247;
        }

        v227 = vextq_s8(v227, v227, 8uLL);
        if ((v244 + 1) <= v34)
        {
          v248.i64[0] = *v244;
          v248.i64[1] = vextq_s8(v227, v227, 8uLL).u64[0];
          v227 = v248;
        }
      }

      else
      {
        a1 = v262;
      }

      v35 = (v35 + 4 * v212);
LABEL_231:
      v249 = vuzp1q_s32(v214, v48);
      v250 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v218, v225)), vextq_s8(v214, v249, 0xCuLL));
      v251 = vuzp1q_s32(v222, v48);
      v252 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v219, v226)), vextq_s8(v222, v251, 0xCuLL));
      v253 = vuzp1q_s32(v223, v48);
      v254 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v220, v39)), vextq_s8(v223, v253, 0xCuLL));
      v255 = vuzp1q_s32(v224, v48);
      v256 = vtrn2q_s32(vrev64q_s32(vuzp1q_s32(v221, v227)), vextq_s8(v224, v255, 0xCuLL));
      if ((v212 & 2) != 0)
      {
        v214.i32[3] = v48.i32[1];
        v222.i32[3] = v48.i32[1];
        v223.i32[3] = v48.i32[1];
        v224.i32[3] = v48.i32[1];
        *v208 = v250;
        v208[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v218, v225)), v214);
        *v209 = v252;
        v209[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v219, v226)), v222);
        *v210 = v254;
        v210[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v220, v39)), v223);
        *v211 = v256;
        v211[1] = vtrn2q_s32(vrev64q_s32(vuzp2q_s32(v221, v227)), v224);
        if (v212)
        {
          v225.i32[0] = v218.i32[2];
          v226.i32[0] = v219.i32[2];
          v39.i32[0] = v220.i32[2];
          v227.i32[0] = v221.i32[2];
          v208[2] = vtrn2q_s32(vrev64q_s32(v225), v249);
          v209[2] = vtrn2q_s32(vrev64q_s32(v226), v251);
          v210[2] = vtrn2q_s32(vrev64q_s32(v39), v253);
          v211[2] = vtrn2q_s32(vrev64q_s32(v227), v255);
        }
      }

      else
      {
        *v208 = v250;
        *v209 = v252;
        *v210 = v254;
        *v211 = v256;
      }

      v18 = v259;
      v17 = v260;
      v42 = v258;
LABEL_236:
      a14 = v81 + a17;
      v41 = a12[6];
      if (v40++ >= v41)
      {
        return result;
      }
    }

    v87 = a12[7];
    a1 = v262;
    switch(v87)
    {
      case 1u:
        goto LABEL_58;
      case 2u:
        goto LABEL_57;
      case 3u:
        v79 = a16;
LABEL_57:
        v80 = a16;
LABEL_58:
        v88 = a16;
        goto LABEL_61;
    }

LABEL_59:
    v88 = v81;
    goto LABEL_61;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16_t *a16, uint64_t a17)
{
  v20 = a12;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(v121, a3);
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v120, a4);
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v119, a5);
  v117 = 0;
  v118 = 0;
  v22 = a12[2];
  v23 = a12[6];
  if (v22 <= v23)
  {
    v24 = a17;
    v110 = *(a13 + 60);
    v113 = a6;
    while (1)
    {
      v26 = *(a6 + 8);
      if (v26)
      {
        v27 = *(a11 + 24);
        v28 = (HIDWORD(v27) * v110) + 4 * v22;
        v29 = *(*(v26 + 40) + 8 * *(a11 + 60));
        if (*(v29 + 12) - 1 < v28)
        {
          v28 = *(v29 + 12) - 1;
        }

        if (*(v26 + 104) == 1)
        {
          v30 = (*(v29 + 8 * v27 + 24) + 8 * v28);
        }

        else
        {
          v32 = (v28 * *(v26 + 108)) >> *(v26 + 112);
          if (v32 >= *(v29 + 20) - 1)
          {
            LODWORD(v32) = *(v29 + 20) - 1;
          }

          v30 = (*(v29 + 8 * v27 + 24) + 8 * v32);
        }

        v33 = *v30;
        v34 = HIDWORD(*v30);
        v35 = a1 + *v30;
        v36 = a2 - *v30;
        if (a2 >= *v30)
        {
          v31 = (a1 + v33);
        }

        else
        {
          v31 = 0;
        }

        if (v36 < HIDWORD(v33))
        {
          v34 = a2 - v33;
        }

        v37 = a2 >= v33;
        v38 = v35 + v34;
        if (!v37)
        {
          v38 = 0;
        }

        v117 = v31;
        v118 = v38;
      }

      else
      {
        v31 = v117;
      }

      v39 = (a14 + v24);
      v40 = (a14 + v24 + v24);
      v41 = (v40 + v24);
      if (!v31)
      {
        goto LABEL_59;
      }

      v42 = a16;
      if (a16)
      {
        if (v22 == v20[2])
        {
          v43 = v20[3] + 1;
          v44 = a14;
          a14 = (a14 + v24);
          v39 = v40;
          v40 = (v40 + v24);
          do
          {
            v41 = v40;
            v40 = v39;
            v39 = a14;
            a14 = v44;
            v44 = a16;
            --v43;
          }

          while (v43);
        }

        if (v22 == v23)
        {
          v45 = v20[7];
          if (v45 == 1)
          {
            goto LABEL_33;
          }

          if (v45 == 2)
          {
            goto LABEL_31;
          }

          if (v45 == 3)
          {
            break;
          }
        }
      }

      v42 = v41;
LABEL_33:
      v46 = *v20;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v117, v46);
      if (!result)
      {
        return result;
      }

      if (v20[1])
      {
        v47 = v22;
        v48 = v121[0];
        v49 = v120;
        v50 = v119;
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v117, a10, v116);
        v52.i32[0] = 0;
        LOWORD(v53) = v48;
        WORD1(v53) = v49;
        WORD2(v53) = v50;
        WORD4(v53) = v48;
        WORD5(v53) = v49;
        v20 = a12;
        WORD6(v53) = v50;
        v54 = v116[1];
        v55 = vqtbl2q_s8(*&v53, xmmword_296B6EF10);
        v56 = vqtbl2q_s8(*&v53, xmmword_296B6EF30);
        v57 = vqtbl2q_s8(*&v53, xmmword_296B6EED0);
        v58 = vqtbl2q_s8(*&v53, xmmword_296B6EEF0);
        if (a12[4] == v46)
        {
          v59 = 4 - a12[5];
        }

        else
        {
          v59 = 4;
        }

        v60 = a12[1];
        v51.i32[0] = v60 & 2;
        v61 = vdupq_lane_s32(*&vceqq_s32(v51, v52), 0);
        v62 = vbslq_s8(v61, v58, v57);
        v63 = vbslq_s8(v61, v57, v58);
        v64 = vbslq_s8(v61, v56, v55);
        v65 = vbslq_s8(v61, v55, v56);
        v66 = v116[0];
        v67 = vqtbl2q_s8(*&v53, xmmword_296B6EED0);
        v68 = vqtbl2q_s8(*&v53, xmmword_296B6EEF0);
        v69 = vbslq_s8(v61, v68, v67);
        v70 = vbslq_s8(v61, v67, v68);
        v71 = vqtbl2q_s8(*&v53, xmmword_296B6EF10);
        v72 = vqtbl2q_s8(*&v53, xmmword_296B6EF30);
        v73 = vbslq_s8(v61, v72, v71);
        v74 = vbslq_s8(v61, v71, v72);
        if ((v60 & 2) != 0)
        {
          v59 -= 2;
        }

        if (v60)
        {
          v75 = vextq_s8(v73, v74, 8uLL).u64[0];
          v74 = vextq_s8(v74, v73, 8uLL);
          v76 = vextq_s8(v69, v70, 8uLL).u64[0];
          v70 = vextq_s8(v70, v69, 8uLL);
          v77 = vextq_s8(v64, v65, 8uLL).u64[0];
          v65 = vextq_s8(v65, v64, 8uLL);
          v78 = vextq_s8(v62, v63, 8uLL).u64[0];
          --v59;
          v63 = vextq_s8(v63, v62, 8uLL);
          v73.i64[0] = v75;
          v69.i64[0] = v76;
          v64.i64[0] = v77;
          v62.i64[0] = v78;
        }

        v22 = v47;
        if (v59 <= 1)
        {
          v79 = 0;
        }

        else
        {
          *a14 = v74;
          *v39 = v70;
          v59 -= 2;
          v74.i64[0] = v73.i64[0];
          v70.i64[0] = v69.i64[0];
          *v40 = v65;
          v65.i64[0] = v64.i64[0];
          *v42 = v63;
          v63.i64[0] = v62.i64[0];
          v79 = 16;
        }

        v24 = a17;
        a6 = v113;
        if (v59 >= 1)
        {
          *(a14->i64 + v79) = v74.i64[0];
          *(v39->i64 + v79) = v70.i64[0];
          *(v40->i64 + v79) = v65.i64[0];
          *(v42->i64 + v79) = v63.i64[0];
          v79 |= 8uLL;
        }

        v80 = a12[4];
        if (v80 == v46)
        {
          goto LABEL_59;
        }

        a14 = (a14 + v79);
        v39 = (v39 + v79);
        v40 = (v40 + v79);
        v42 = (v42 + v79);
        ++v46;
      }

      else
      {
        v80 = v20[4];
      }

      v81 = a10;
      v82 = v20[5];
      v83 = v82 != 0;
      if (v80 != 0 || !v83)
      {
        v84 = v80 - v83;
        if (v46 <= v84)
        {
          v109 = v22;
          v85 = v84 - v46 + 1;
          do
          {
            v86 = a14;
            v87 = v39;
            v88 = v40;
            v89 = v42;
            v90 = v121[0];
            v91 = v120;
            v92 = v119;
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v117, v81, v115);
            v81 = a10;
            v122.val[0].i16[0] = v90;
            v122.val[0].i16[1] = v91;
            v122.val[0].i16[2] = v92;
            v122.val[0].i16[4] = v90;
            v122.val[0].i16[5] = v91;
            v122.val[0].i16[6] = v92;
            v122.val[1] = v115[1];
            v93 = vqtbl2q_s8(v122, xmmword_296B6EED0);
            v94 = vqtbl2q_s8(v122, xmmword_296B6EEF0);
            v95 = vqtbl2q_s8(v122, xmmword_296B6EF10);
            v96 = vqtbl2q_s8(v122, xmmword_296B6EF30);
            v122.val[1] = v115[0];
            a14 = v86 + 2;
            *v86 = vqtbl2q_s8(v122, xmmword_296B6EF10);
            v86[1] = vqtbl2q_s8(v122, xmmword_296B6EF30);
            v39 = v87 + 2;
            v40 = v88 + 2;
            *v87 = vqtbl2q_s8(v122, xmmword_296B6EED0);
            v87[1] = vqtbl2q_s8(v122, xmmword_296B6EEF0);
            *v88 = v95;
            v88[1] = v96;
            v42 += 2;
            *v89 = v93;
            v89[1] = v94;
            --v85;
          }

          while (v85);
          v22 = v109;
          v20 = a12;
          v82 = a12[5];
          a6 = v113;
        }
      }

      if (v82)
      {
        v97 = v121[0];
        v98 = v120;
        v99 = v119;
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v117, v81, v114);
        LOWORD(v100) = v97;
        WORD1(v100) = v98;
        WORD2(v100) = v99;
        WORD4(v100) = v97;
        WORD5(v100) = v98;
        WORD6(v100) = v99;
        v102 = v114[0];
        v101 = v114[1];
        v103 = vqtbl2q_s8(*&v100, xmmword_296B6EED0);
        v104 = vqtbl2q_s8(*&v100, xmmword_296B6EF10);
        v105 = v100;
        v106 = vqtbl2q_s8(*&v105, xmmword_296B6EED0);
        v107 = vqtbl2q_s8(*&v105, xmmword_296B6EF10);
        v108 = 4 - v20[5];
        if ((v108 & 2) != 0)
        {
          *a14 = v107;
          *v39 = v106;
          *v40 = v104;
          *v42 = v103;
          v24 = a17;
          a6 = v113;
          if (v108)
          {
            a14[1].i64[0] = vqtbl2q_s8(*&v105, xmmword_296B6EF30).u64[0];
            v39[1].i64[0] = vqtbl2q_s8(*&v105, xmmword_296B6EEF0).u64[0];
            v40[1].i64[0] = vqtbl2q_s8(*&v100, xmmword_296B6EF30).u64[0];
            v42[1].i64[0] = vqtbl2q_s8(*&v100, xmmword_296B6EEF0).u64[0];
          }

          goto LABEL_59;
        }

        a14->i64[0] = v107.i64[0];
        v39->i64[0] = v106.i64[0];
        v40->i64[0] = v104.i64[0];
        v42->i64[0] = v103.i64[0];
        a6 = v113;
      }

      v24 = a17;
LABEL_59:
      a14 = (v41 + v24);
      v23 = v20[6];
      v37 = v22++ >= v23;
      if (v37)
      {
        return result;
      }
    }

    v39 = a16;
LABEL_31:
    v40 = a16;
    goto LABEL_33;
  }

  return result;
}

_DWORD *ExtractInterleaved4_B44A<unsigned int,(StreamType)0,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int32x2_t *a11, unsigned int *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v162, a3);
  AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v161, a4);
  result = AXRStreamB44<unsigned int,(StreamType)0>::AXRStreamB44(&v160, a5);
  v26 = a12[2];
  v27 = a12[6];
  if (v26 <= v27)
  {
    v29 = vmin_u32(vmls_s32(*(*(*(*(a6 + 8) + 40) + 8 * a11[7].u32[1]) + 16), *(*(a6 + 8) + 48), a11[3]), *(*(a6 + 8) + 48)).u32[0];
    v30 = *(a13 + 60);
    v31 = vld1q_dup_f32(&v161);
    v32.i64[0] = __PAIR64__(v160, v162);
    v32.i64[1] = __PAIR64__(v160, v162);
    v33 = vzip1q_s32(v32, v31);
    v34 = vzip2q_s32(v32, vuzp2q_s32(v32, v31));
    v159 = v31;
    v35 = vzip2q_s32(vextq_s8(v32, v32, 8uLL), v31);
    while (1)
    {
      v36 = *(a6 + 8);
      if (v36)
      {
        v37 = *(*(v36 + 40) + 8 * a11[7].u32[1]);
        v38 = *(v37 + 12) - 1;
        if (v38 >= (HIDWORD(*&a11[3]) * v30) + 4 * v26)
        {
          v38 = (HIDWORD(*&a11[3]) * v30) + 4 * v26;
        }

        v39 = v37 + 8 * *&a11[3];
        if (*(v36 + 104) == 1)
        {
          v40 = (*(v39 + 24) + 8 * v38);
        }

        else
        {
          v41 = (v38 * *(v36 + 108)) >> *(v36 + 112);
          v42 = *(v37 + 20) - 1;
          if (v41 < v42)
          {
            v42 = v41;
          }

          v40 = (*(v39 + 24) + 8 * v42);
        }

        v43 = *v40;
        if (a2 <= v43)
        {
          v24 = 0;
          result = 0;
          v48 = 3 * a17 + a14;
          goto LABEL_111;
        }

        v44 = v43;
        if (a2 - v43 >= HIDWORD(v43))
        {
          v45 = HIDWORD(v43);
        }

        else
        {
          v45 = a2 - v43;
        }

        result = (v44 + a1);
        v24 = v45 + v44 + a1;
      }

      v46 = a14 + a17;
      v47 = a14 + a17 + a17;
      v48 = v47 + a17;
      if (result)
      {
        break;
      }

LABEL_111:
      a14 = v48 + a17;
      v27 = a12[6];
      if (v26++ >= v27)
      {
        return result;
      }
    }

    if (a16)
    {
      if (v26 == a12[2])
      {
        v49 = a12[3] + 1;
        v50 = v47 + a17;
        v51 = a14 + a17 + a17;
        v52 = a14 + a17;
        v53 = a14;
        do
        {
          a14 = v53;
          v46 = v52;
          v47 = v51;
          v48 = v50;
          v50 = v51;
          v51 = v52;
          v52 = v53;
          v53 = a16;
          --v49;
        }

        while (v49);
      }

      if (v26 == v27)
      {
        v54 = a12[7];
        switch(v54)
        {
          case 1u:
LABEL_27:
            v55 = a16;
LABEL_29:
            v56 = *a12;
            result += 4 * v56;
            if (result - 1 >= v24)
            {
              return result;
            }

            v57 = a12[1];
            v58 = vzip2q_s32(v159, v32);
            if (v57)
            {
              if ((result + 4) <= v24)
              {
                v59 = *result;
              }

              else
              {
                v59 = 0uLL;
              }

              v61 = 0uLL;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = &result[v29];
              if (&result[v29 + 4] <= v24)
              {
                v61 = *v64;
              }

              v65 = (v64 + v29 * 4);
              if ((v65 + 1) <= v24)
              {
                v62 = *v65;
              }

              v66 = (v65 + v29 * 4);
              if (&v66[1] <= v24)
              {
                v63 = *v66;
              }

              v25.i32[0] = 0;
              v67 = v33;
              v67.i32[3] = v59;
              v68 = v35;
              v68.i32[3] = DWORD2(v59);
              v69 = v34;
              v69.i32[3] = DWORD1(v59);
              v82 = vextq_s8(v58, v32, 4uLL);
              v70 = v82;
              v70.i32[3] = HIDWORD(v59);
              v71 = v33;
              v71.i32[3] = v61;
              v72 = v35;
              v72.i32[3] = DWORD2(v61);
              v73 = v34;
              v73.i32[3] = DWORD1(v61);
              v74 = v82;
              v74.i32[3] = HIDWORD(v61);
              v75 = v33;
              v75.i32[3] = v62;
              v76 = v35;
              v76.i32[3] = DWORD2(v62);
              v77 = v34;
              v77.i32[3] = DWORD1(v62);
              v78 = v82;
              v78.i32[3] = HIDWORD(v62);
              v79 = v33;
              v79.i32[3] = v63.i32[0];
              v80 = v35;
              v80.i32[3] = v63.i32[2];
              v81 = v34;
              v81.i32[3] = v63.i32[1];
              v82.i32[3] = v63.i32[3];
              if (a12[4] == v56)
              {
                v83 = 4 - a12[5];
              }

              else
              {
                v83 = 4;
              }

              v63.i32[0] = a12[1] & 2;
              v84 = vdupq_lane_s32(*&vceqq_s32(v63, v25), 0);
              v85 = vbslq_s8(v84, v81, v82);
              v86 = vbslq_s8(v84, v79, v80);
              v87 = vbslq_s8(v84, v77, v78);
              v88 = vbslq_s8(v84, v75, v76);
              v89 = vbslq_s8(v84, v73, v74);
              v90 = vbslq_s8(v84, v71, v72);
              v91 = vbslq_s8(v84, v69, v70);
              if ((v57 & 2) != 0)
              {
                v83 -= 2;
              }

              v92 = v57 & 1;
              v93 = v83 - v92;
              v17.i32[0] = v92;
              v94 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v17, v25)), 0);
              v17 = vbslq_s8(v94, v91, vbslq_s8(v84, v67, v68));
              v25 = vbslq_s8(v94, v89, v90);
              v95 = vbslq_s8(v94, v87, v88);
              v96 = vbslq_s8(v94, v85, v86);
              if (v83 - v92 <= 1)
              {
                v101 = 0;
              }

              else
              {
                v97 = vbslq_s8(v84, v80, v79);
                v98 = vbslq_s8(v84, v76, v75);
                v99 = vbslq_s8(v84, v72, v71);
                v100 = vbslq_s8(v84, v68, v67);
                *a14 = v17;
                *(a14 + 16) = vbslq_s8(v94, v100, v91);
                *v46 = v25;
                *(v46 + 16) = vbslq_s8(v94, v99, v89);
                *v47 = v95;
                *(v47 + 16) = vbslq_s8(v94, v98, v87);
                v93 -= 2;
                v17 = vbslq_s8(v94, vbslq_s8(v84, v70, v69), v100);
                *v55 = v96;
                *(v55 + 16) = vbslq_s8(v94, v97, v85);
                v25 = vbslq_s8(v94, vbslq_s8(v84, v74, v73), v99);
                v95 = vbslq_s8(v94, vbslq_s8(v84, v78, v77), v98);
                v96 = vbslq_s8(v94, vbslq_s8(v84, v82, v81), v97);
                v101 = 32;
              }

              if (v93 >= 1)
              {
                *(v101 + a14) = v17;
                *(v101 + v46) = v25;
                *(v101 + v47) = v95;
                *(v101 + v55) = v96;
                v101 |= 0x10uLL;
              }

              result += 4;
              v60 = a12[4];
              if (v60 == v56)
              {
                goto LABEL_111;
              }

              a14 += v101;
              v46 += v101;
              v47 += v101;
              v55 += v101;
              ++v56;
            }

            else
            {
              v60 = a12[4];
            }

            v102 = a12[5];
            v103 = v102 != 0;
            if (v60 != 0 || !v103)
            {
              v104 = v60 - v103;
              if (v56 <= v104)
              {
                v105 = v104 - v56 + 1;
                do
                {
                  if (result)
                  {
                    if ((result + 4) <= v24)
                    {
                      v106 = *result;
                    }

                    else
                    {
                      v106 = 0uLL;
                    }

                    v107 = 0uLL;
                    v108 = 0uLL;
                    v109 = 0uLL;
                    v110 = &result[v29];
                    if (&result[v29 + 4] <= v24)
                    {
                      v107 = *v110;
                    }

                    v111 = (v110 + v29 * 4);
                    if ((v111 + 1) <= v24)
                    {
                      v108 = *v111;
                    }

                    v112 = (v111 + v29 * 4);
                    if ((v112 + 1) <= v24)
                    {
                      v109 = *v112;
                    }

                    result += 4;
                  }

                  else
                  {
                    v106 = 0uLL;
                    v107 = 0uLL;
                    v108 = 0uLL;
                    v109 = 0uLL;
                  }

                  v113 = vextq_s8(v58, v32, 4uLL);
                  v114 = v113;
                  v114.i32[3] = HIDWORD(v109);
                  v115 = v35;
                  v115.i32[3] = DWORD2(v109);
                  v116 = v34;
                  v116.i32[3] = DWORD1(v109);
                  v117 = v33;
                  v117.i32[3] = v109;
                  v118 = v35;
                  v118.i32[3] = DWORD2(v108);
                  v119 = v113;
                  v119.i32[3] = HIDWORD(v108);
                  v25 = v34;
                  v25.i32[3] = DWORD1(v108);
                  v120 = v33;
                  v120.i32[3] = v108;
                  v121 = v35;
                  v121.i32[3] = DWORD2(v107);
                  v122 = v113;
                  v122.i32[3] = HIDWORD(v107);
                  v123 = v34;
                  v123.i32[3] = DWORD1(v107);
                  v124 = v33;
                  v124.i32[3] = v107;
                  v125 = v35;
                  v113.i32[3] = HIDWORD(v106);
                  v125.i32[3] = DWORD2(v106);
                  v126 = v34;
                  v126.i32[3] = DWORD1(v106);
                  v127 = v33;
                  v127.i32[3] = v106;
                  v128 = (a14 + 64);
                  *a14 = v127;
                  *(a14 + 16) = v126;
                  *(a14 + 32) = v125;
                  *(a14 + 48) = v113;
                  v129 = (v46 + 64);
                  *v46 = v124;
                  *(v46 + 16) = v123;
                  *(v46 + 32) = v121;
                  *(v46 + 48) = v122;
                  v130 = (v47 + 64);
                  *v47 = v120;
                  *(v47 + 16) = v25;
                  *(v47 + 32) = v118;
                  *(v47 + 48) = v119;
                  v131 = (v55 + 64);
                  *v55 = v117;
                  *(v55 + 16) = v116;
                  a14 += 64;
                  v46 += 64;
                  v47 += 64;
                  *(v55 + 32) = v115;
                  *(v55 + 48) = v114;
                  v55 += 64;
                  --v105;
                }

                while (v105);
                v102 = a12[5];
                if (!v102)
                {
                  goto LABEL_111;
                }

LABEL_73:
                v132 = 4 - v102;
                if (v26 == a12[6])
                {
                  v133 = 4 - a12[7];
                }

                else
                {
                  v133 = 4;
                }

                if (result)
                {
                  if (v133 < 2)
                  {
                    v137 = 0;
                    v134 = result;
                    v136 = result;
                  }

                  else
                  {
                    v134 = &result[v29 + v29];
                    if (v133 <= 3)
                    {
                      v135 = 0;
                    }

                    else
                    {
                      v135 = v29 * 4;
                    }

                    if (v133 == 2)
                    {
                      v134 = &result[v29];
                    }

                    v136 = &result[v29];
                    if (v133 == 2)
                    {
                      v137 = 0;
                    }

                    else
                    {
                      v137 = v135;
                    }
                  }

                  v142 = (v134 + v137);
                  v139 = 0uLL;
                  v140 = 0uLL;
                  v141 = 0uLL;
                  v138 = 0uLL;
                  if ((4 - v102))
                  {
                    if (&result[v132] <= v24)
                    {
                      v138.i32[0] = result[3 - v102];
                    }

                    if (v136 + 4 * v132 <= v24)
                    {
                      v139.i32[0] = *(v136 + 3 - v102);
                    }

                    if (v134 + 4 * v132 <= v24)
                    {
                      v140.i32[0] = *(v134 + 3 - v102);
                    }

                    if (v142 + 4 * v132 <= v24)
                    {
                      v141.i32[0] = *(v142 + 3 - v102);
                    }
                  }

                  if (((4 - v102) & 2) != 0)
                  {
                    v138 = vextq_s8(v138, v138, 8uLL);
                    if ((result + 2) <= v24)
                    {
                      v143 = vextq_s8(v138, v138, 8uLL).u32[0];
                      v138.i64[0] = *result;
                      v138.i32[2] = v143;
                    }

                    v139 = vextq_s8(v139, v139, 8uLL);
                    if ((v136 + 1) <= v24)
                    {
                      v144 = vextq_s8(v139, v139, 8uLL).u32[0];
                      v139.i64[0] = *v136;
                      v139.i32[2] = v144;
                    }

                    v140 = vextq_s8(v140, v140, 8uLL);
                    if ((v134 + 1) <= v24)
                    {
                      v145 = vextq_s8(v140, v140, 8uLL).u32[0];
                      v140.i64[0] = *v134;
                      v140.i32[2] = v145;
                    }

                    v141 = vextq_s8(v141, v141, 8uLL);
                    if ((v142 + 1) <= v24)
                    {
                      v146 = vextq_s8(v141, v141, 8uLL).u32[0];
                      v141.i64[0] = *v142;
                      v141.i32[2] = v146;
                    }
                  }

                  result += v132;
                }

                else
                {
                  v138.i64[0] = 0;
                  v138.i32[2] = 0;
                  v139.i64[0] = 0;
                  v139.i32[2] = 0;
                  v140.i64[0] = 0;
                  v140.i32[2] = 0;
                  v141.i64[0] = 0;
                  v141.i32[2] = 0;
                }

                v147 = v33;
                v147.i32[3] = v138.i32[0];
                v148 = v33;
                v148.i32[3] = v139.i32[0];
                v149 = v33;
                v149.i32[3] = v140.i32[0];
                v150 = v33;
                v150.i32[3] = v141.i32[0];
                if (((4 - v102) & 2) != 0)
                {
                  v151 = v34;
                  v151.i32[3] = v138.i32[1];
                  v152 = v34;
                  v152.i32[3] = v139.i32[1];
                  v153 = v34;
                  v153.i32[3] = v140.i32[1];
                  v25 = v34;
                  v25.i32[3] = v141.i32[1];
                  *v128 = v147;
                  v128[1] = v151;
                  *v129 = v148;
                  v129[1] = v152;
                  *v130 = v149;
                  v130[1] = v153;
                  *v131 = v150;
                  v131[1] = v25;
                  if ((4 - v102))
                  {
                    v154 = v35;
                    v154.i32[3] = v138.i32[2];
                    v155 = v35;
                    v155.i32[3] = v139.i32[2];
                    v156 = v35;
                    v156.i32[3] = v140.i32[2];
                    v157 = v35;
                    v157.i32[3] = v141.i32[2];
                    v128[2] = v154;
                    v129[2] = v155;
                    v130[2] = v156;
                    v131[2] = v157;
                  }
                }

                else
                {
                  *v128 = v147;
                  *v129 = v148;
                  *v130 = v149;
                  *v131 = v150;
                }

                goto LABEL_111;
              }
            }

            v131 = v55;
            v130 = v47;
            v129 = v46;
            v128 = a14;
            if (v102)
            {
              goto LABEL_73;
            }

            goto LABEL_111;
          case 2u:
LABEL_26:
            v47 = a16;
            goto LABEL_27;
          case 3u:
            v46 = a16;
            goto LABEL_26;
        }
      }
    }

    v55 = v48;
    goto LABEL_29;
  }

  return result;
}

uint64_t ExtractInterleaved4_B44A<unsigned short,(StreamType)1,(StreamType)0,(StreamType)0,(StreamType)1>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int *a12, uint64_t a13, int8x16_t *a14, uint64_t a15, int8x16x2_t *a16, uint64_t a17)
{
  v155 = 0;
  v156 = 0;
  AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v154, a4);
  v20 = a5;
  v21 = a6;
  result = AXRStreamB44A<unsigned short,(StreamType)0>::AXRStreamB44A(&v153, v20);
  v23 = a12;
  v151 = 0;
  v152 = 0;
  v24 = a12[2];
  v25 = a12[6];
  if (v24 <= v25)
  {
    v132 = *(a13 + 60);
    v129 = a6;
    while (1)
    {
      v27 = *(a3 + 8);
      if (v27)
      {
        v28 = *(a11 + 24);
        v29 = *(*(v27 + 40) + 8 * *(a11 + 60));
        v30 = *(v29 + 12) - 1;
        if (v30 >= (HIDWORD(v28) * v132) + 4 * v24)
        {
          v30 = (HIDWORD(*(a11 + 24)) * v132) + 4 * v24;
        }

        v31 = v29 + 8 * v28;
        if (*(v27 + 104) == 1)
        {
          v32 = (*(v31 + 24) + 8 * v30);
        }

        else
        {
          v33 = (v30 * *(v27 + 108)) >> *(v27 + 112);
          v34 = *(v29 + 20) - 1;
          if (v33 >= v34)
          {
            LODWORD(v33) = v34;
          }

          v32 = (*(v31 + 24) + 8 * v33);
        }

        v35 = *v32;
        v36 = HIDWORD(v35);
        if (a2 >= v35)
        {
          v37 = (a1 + v35);
        }

        else
        {
          v37 = 0;
        }

        if (a2 - v35 < HIDWORD(v35))
        {
          v36 = a2 - v35;
        }

        v38 = a2 >= v35;
        v39 = a1 + v35 + v36;
        if (!v38)
        {
          v39 = 0;
        }

        v155 = v37;
        v156 = v39;
      }

      v40 = *(v21 + 8);
      if (v40)
      {
        v41 = *(a11 + 24);
        v42 = *(*(v40 + 40) + 8 * *(a11 + 60));
        v43 = *(v42 + 12) - 1;
        if (v43 >= (HIDWORD(v41) * v132) + 4 * v24)
        {
          v43 = (HIDWORD(*(a11 + 24)) * v132) + 4 * v24;
        }

        v44 = v42 + 8 * v41;
        if (*(v40 + 104) == 1)
        {
          v45 = (*(v44 + 24) + 8 * v43);
        }

        else
        {
          v47 = (v43 * *(v40 + 108)) >> *(v40 + 112);
          v48 = *(v42 + 20) - 1;
          if (v47 >= v48)
          {
            LODWORD(v47) = v48;
          }

          v45 = (*(v44 + 24) + 8 * v47);
        }

        v49 = *v45;
        v50 = HIDWORD(*v45);
        v51 = a1 + *v45;
        v52 = a2 - *v45;
        if (a2 >= *v45)
        {
          v46 = (a1 + v49);
        }

        else
        {
          v46 = 0;
        }

        if (v52 < HIDWORD(v49))
        {
          v50 = a2 - v49;
        }

        v38 = a2 >= v49;
        v53 = v51 + v50;
        if (!v38)
        {
          v53 = 0;
        }

        v151 = v46;
        v152 = v53;
      }

      else
      {
        v46 = v151;
      }

      v54 = (a14 + a17);
      v55 = (a14 + a17 + a17);
      v56 = &v55->i8[a17];
      if (!v155 || !v46)
      {
        goto LABEL_78;
      }

      v57 = a16;
      if (!a16)
      {
        break;
      }

      if (v24 == v23[2])
      {
        v58 = v23[3] + 1;
        v59 = a14;
        a14 = (a14 + a17);
        v54 = v55;
        v55 = (v55 + a17);
        do
        {
          v56 = v55;
          v55 = v54;
          v54 = a14;
          a14 = v59;
          v59 = a16;
          --v58;
        }

        while (v58);
      }

      if (v24 != v25)
      {
        break;
      }

      v60 = v23[7];
      if (v60 != 1)
      {
        if (v60 != 2)
        {
          if (v60 != 3)
          {
            break;
          }

          v54 = a16;
        }

        v55 = a16;
      }

LABEL_49:
      v61 = *v23;
      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v155, v61);
      if (!result)
      {
        return result;
      }

      result = AXRStreamB44A<unsigned short,(StreamType)1>::scanForward(&v151, v61);
      v23 = a12;
      if (!result)
      {
        return result;
      }

      if (a12[1])
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v155, a7, v150);
        v62 = &v154;
        v63 = vld1q_dup_s16(v62);
        v139 = v63;
        v64 = vld1q_dup_s16(&v153);
        *v135 = v150[1];
        *&v135[16] = v64;
        v142 = v150[0];
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a10, v149);
        v23 = a12;
        v65.i32[0] = 0;
        v158.val[0] = vqtbl2q_s8(*v135, xmmword_296B6EE70);
        v66 = v139;
        v67 = v149[1];
        v158.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF40);
        v68 = vqtbl2q_s8(v158, xmmword_296B6EDD0);
        v158.val[1] = vqtbl2q_s8(*v135, xmmword_296B6EE90);
        v69 = vqtbl2q_s8(*v66.i8, xmmword_296B6EF50);
        v70 = vqtbl2q_s8(*(&v158 + 16), xmmword_296B6EDD0);
        v71 = vqtbl2q_s8(*v135, xmmword_296B6EEA0);
        v72 = vqtbl2q_s8(*v66.i8, xmmword_296B6EF60);
        v73 = vqtbl2q_s8(*v71.i8, xmmword_296B6EDD0);
        v163.val[0] = vqtbl2q_s8(*v135, xmmword_296B6EEB0);
        v163.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF70);
        v74 = vqtbl2q_s8(v163, xmmword_296B6EDD0);
        if (a12[4] == v61)
        {
          v75 = 4 - a12[5];
        }

        else
        {
          v75 = 4;
        }

        v76 = a12[1];
        v71.i32[0] = v76 & 2;
        v77 = vdupq_lane_s32(*&vceqq_s32(v71, v65), 0);
        v78 = vbslq_s8(v77, v74, v73);
        v79 = vbslq_s8(v77, v73, v74);
        v80 = vbslq_s8(v77, v70, v68);
        v81 = vbslq_s8(v77, v68, v70);
        v171.val[0] = v142;
        v171.val[1] = *&v135[16];
        v164.val[0] = vqtbl2q_s8(v171, xmmword_296B6EEA0);
        v82 = v149[0];
        v164.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF60);
        v83 = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v164.val[0] = vqtbl2q_s8(v171, xmmword_296B6EEB0);
        v164.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF70);
        v164.val[0] = vqtbl2q_s8(v164, xmmword_296B6EDD0);
        v84 = vbslq_s8(v77, v164.val[0], v83);
        v85 = vbslq_s8(v77, v83, v164.val[0]);
        v168.val[0] = vqtbl2q_s8(v171, xmmword_296B6EE70);
        v168.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF40);
        v164.val[0] = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v168.val[0] = vqtbl2q_s8(v171, xmmword_296B6EE90);
        v168.val[1] = vqtbl2q_s8(*v66.i8, xmmword_296B6EF50);
        v168.val[0] = vqtbl2q_s8(v168, xmmword_296B6EDD0);
        v86 = vbslq_s8(v77, v168.val[0], v164.val[0]);
        v87 = vbslq_s8(v77, v164.val[0], v168.val[0]);
        if ((v76 & 2) != 0)
        {
          v75 -= 2;
        }

        if (v76)
        {
          v88 = vextq_s8(v86, v87, 8uLL).u64[0];
          v87 = vextq_s8(v87, v86, 8uLL);
          v89 = vextq_s8(v84, v85, 8uLL).u64[0];
          v85 = vextq_s8(v85, v84, 8uLL);
          v90 = vextq_s8(v80, v81, 8uLL).u64[0];
          v81 = vextq_s8(v81, v80, 8uLL);
          v91 = vextq_s8(v78, v79, 8uLL).u64[0];
          --v75;
          v79 = vextq_s8(v79, v78, 8uLL);
          v86.i64[0] = v88;
          v84.i64[0] = v89;
          v80.i64[0] = v90;
          v78.i64[0] = v91;
        }

        if (v75 <= 1)
        {
          v92 = 0;
        }

        else
        {
          *a14 = v87;
          *v54 = v85;
          v75 -= 2;
          v87.i64[0] = v86.i64[0];
          v85.i64[0] = v84.i64[0];
          *v55 = v81;
          v81.i64[0] = v80.i64[0];
          v57->val[0] = v79;
          v79.i64[0] = v78.i64[0];
          v92 = 16;
        }

        if (v75 >= 1)
        {
          *(a14->i64 + v92) = v87.i64[0];
          *(v54->i64 + v92) = v85.i64[0];
          *(v55->i64 + v92) = v81.i64[0];
          *(v57->val[0].i64 + v92) = v79.i64[0];
          v92 |= 8uLL;
        }

        v93 = a12[4];
        if (v93 == v61)
        {
          goto LABEL_78;
        }

        a14 = (a14 + v92);
        v54 = (v54 + v92);
        v55 = (v55 + v92);
        v57 = (v57 + v92);
        ++v61;
      }

      else
      {
        v93 = a12[4];
      }

      v94 = v23[5];
      v95 = v94 != 0;
      if (v93 != 0 || !v95)
      {
        v96 = v93 - v95;
        if (v61 <= v96)
        {
          v130 = v24;
          v97 = v96 - v61 + 1;
          v98 = a7;
          do
          {
            v100 = v57;
            AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v155, v98, v148);
            v101 = &v154;
            v102 = vld1q_dup_s16(v101);
            v140 = v102;
            v99 = &v153;
            v103 = vld1q_dup_s16(v99);
            v143 = v148[0];
            v136.val[0] = v148[1];
            v136.val[1] = v103;
            result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a10, v147);
            v157.val[0] = vqtbl2q_s8(v136, xmmword_296B6EEA0);
            v169.val[0] = v140;
            v169.val[1] = v147[1];
            v157.val[1] = vqtbl2q_s8(v169, xmmword_296B6EF60);
            v157.val[0] = vqtbl2q_s8(v157, xmmword_296B6EDD0);
            v157.val[1] = vqtbl2q_s8(v136, xmmword_296B6EEB0);
            v104 = vqtbl2q_s8(v169, xmmword_296B6EF70);
            v157.val[1] = vqtbl2q_s8(*(&v157 + 16), xmmword_296B6EDD0);
            v159.val[0] = vqtbl2q_s8(v136, xmmword_296B6EE70);
            v159.val[1] = vqtbl2q_s8(v169, xmmword_296B6EF40);
            v159.val[0] = vqtbl2q_s8(v159, xmmword_296B6EDD0);
            v159.val[1] = vqtbl2q_s8(v136, xmmword_296B6EE90);
            v105 = vqtbl2q_s8(v169, xmmword_296B6EF50);
            v170.val[0] = v143;
            v170.val[1] = v136.val[1];
            v165.val[0] = vqtbl2q_s8(v170, xmmword_296B6EEA0);
            v169.val[1] = v147[0];
            v165.val[1] = vqtbl2q_s8(v169, xmmword_296B6EF60);
            v165.val[0] = vqtbl2q_s8(v165, xmmword_296B6EDD0);
            v165.val[1] = vqtbl2q_s8(v170, xmmword_296B6EE70);
            v106 = vqtbl2q_s8(v169, xmmword_296B6EF40);
            v165.val[1] = vqtbl2q_s8(*(&v165 + 16), xmmword_296B6EDD0);
            v167.val[0] = vqtbl2q_s8(v170, xmmword_296B6EE90);
            v167.val[1] = vqtbl2q_s8(v169, xmmword_296B6EF50);
            v107 = vqtbl2q_s8(v167, xmmword_296B6EDD0);
            v167.val[0] = vqtbl2q_s8(v170, xmmword_296B6EEB0);
            *a14 = v165.val[1];
            a14[1] = v107;
            a14 += 2;
            v167.val[1] = vqtbl2q_s8(v169, xmmword_296B6EF70);
            *v54 = v165.val[0];
            v54[1] = vqtbl2q_s8(v167, xmmword_296B6EDD0);
            v54 += 2;
            *v55 = v159.val[0];
            v55[1] = vqtbl2q_s8(*(&v159 + 16), xmmword_296B6EDD0);
            v55 += 2;
            ++v57;
            *v100 = v157;
            --v97;
          }

          while (v97);
          v23 = a12;
          v94 = a12[5];
          a7 = v98;
          v21 = v129;
          v24 = v130;
        }
      }

      if (v94)
      {
        AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v155, a7, v146);
        v108 = &v154;
        v109 = vld1q_dup_s16(v108);
        v144 = v109;
        v110 = &v153;
        v111 = vld1q_dup_s16(v110);
        v141 = v146[0];
        v137 = v146[1];
        v138 = v111;
        result = AXRStreamB44A<unsigned short,(StreamType)1>::load4x4(&v151, a10, v145);
        v112 = v137;
        v113 = v138;
        v114 = v144;
        v115 = v141;
        v23 = a12;
        v160.val[0] = vqtbl2q_s8(*v112.i8, xmmword_296B6EEA0);
        v116 = v145[0];
        v117 = v145[1];
        v160.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EF60);
        v118 = vqtbl2q_s8(v160, xmmword_296B6EDD0);
        v160.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EE70);
        v119 = vqtbl2q_s8(*v114.i8, xmmword_296B6EF40);
        v120 = vqtbl2q_s8(*(&v160 + 16), xmmword_296B6EDD0);
        v121 = v138;
        v122 = v144;
        v162.val[0] = vqtbl2q_s8(*v115.i8, xmmword_296B6EEA0);
        v162.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF60);
        v123 = vqtbl2q_s8(v162, xmmword_296B6EDD0);
        v162.val[1] = vqtbl2q_s8(*v115.i8, xmmword_296B6EE70);
        v124 = vqtbl2q_s8(*v122.i8, xmmword_296B6EF40);
        v125 = vqtbl2q_s8(*(&v162 + 16), xmmword_296B6EDD0);
        v126 = 4 - a12[5];
        if ((v126 & 2) != 0)
        {
          *a14 = v125;
          *v54 = v123;
          *v55 = v120;
          v57->val[0] = v118;
          if (v126)
          {
            v161.val[0] = vqtbl2q_s8(*v112.i8, xmmword_296B6EEB0);
            v161.val[1] = vqtbl2q_s8(*v114.i8, xmmword_296B6EF70);
            v161.val[0].i64[0] = vqtbl2q_s8(v161, xmmword_296B6EDD0).u64[0];
            v161.val[1] = vqtbl2q_s8(*v112.i8, xmmword_296B6EE90);
            v127 = vqtbl2q_s8(*v114.i8, xmmword_296B6EF50);
            v166.val[0] = vqtbl2q_s8(*v115.i8, xmmword_296B6EEB0);
            v166.val[1] = vqtbl2q_s8(*v122.i8, xmmword_296B6EF70);
            v166.val[0].i64[0] = vqtbl2q_s8(v166, xmmword_296B6EDD0).u64[0];
            v166.val[1] = vqtbl2q_s8(*v115.i8, xmmword_296B6EE90);
            v128 = vqtbl2q_s8(*v122.i8, xmmword_296B6EF50);
            a14[1].i64[0] = vqtbl2q_s8(*(&v166 + 16), xmmword_296B6EDD0).u64[0];
            v54[1].i64[0] = v166.val[0].i64[0];
            v55[1].i64[0] = vqtbl2q_s8(*(&v161 + 16), xmmword_296B6EDD0).u64[0];
            v57->val[1].i64[0] = v161.val[0].i64[0];
          }
        }

        else
        {
          a14->i64[0] = v125.i64[0];
          v54->i64[0] = v123.i64[0];
          v55->i64[0] = v120.i64[0];
          v57->val[0].i64[0] = v118.i64[0];
        }
      }

LABEL_78:
      a14 = (v56->val + a17);
      v25 = v23[6];
      v38 = v24++ >= v25;
      if (v38)
      {
        return result;
      }
    }

    v57 = v56;
    goto LABEL_49;
  }

  return result;
}