uint64_t sub_2621E27D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_2621E283C(uint64_t a1, void *a2)
{
  v35 = a2;
  objc_msgSend_quad(v35, v3, v4);
  v6 = v5;
  v6.i32[3] = 0;
  v8 = v7;
  v8.i32[3] = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 192) = 0;
  v9 = v5.f32[2];
  v10 = v7.f32[2];
  *(a1 + 112) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 40) = DWORD2(v11);
  *a1 = v6;
  *(a1 + 16) = v8;
  *(a1 + 32) = v11;
  *(a1 + 44) = 0;
  *(a1 + 56) = v12;
  *(a1 + 48) = v13;
  *(a1 + 60) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = v7;
  v33 = v11;
  v34 = vsubq_f32(v5, v7);
  v14 = atan2f(*v34.i32, *&v34.i32[1]);
  *(a1 + 100) = v14;
  v17 = __sincosf_stret(v14);
  *&v18 = -v17.__sinval;
  HIDWORD(v18) = LODWORD(v17.__cosval);
  *(a1 + 120) = 0;
  *(a1 + 112) = __PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval));
  *(a1 + 136) = 0;
  *(a1 + 128) = v18;
  *(a1 + 152) = 1065353216;
  *(a1 + 144) = 0;
  v19 = vmulq_f32(v34, v34);
  v20 = sqrtf(v19.f32[2] + vaddv_f32(*v19.f32));
  v21 = *(&v33 + 2);
  if (v9 >= v10)
  {
    v22 = v9;
  }

  else
  {
    v22 = v10;
  }

  if (v22 < *(&v33 + 2))
  {
    v22 = *(&v33 + 2);
  }

  if (v10 >= v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = v10;
  }

  if (*(&v33 + 2) >= v23)
  {
    v21 = v23;
  }

  *(a1 + 160) = v20;
  *(a1 + 164) = v21;
  *(a1 + 168) = v22;
  v24 = objc_msgSend_identifier(v35, v15, *&v16, v33);
  *(a1 + 192) = objc_msgSend_copy(v24, v25, v26);

  v29 = objc_msgSend_parentIdentifier(v35, v27, v28);
  *(a1 + 200) = objc_msgSend_copy(v29, v30, v31);

  if (v35)
  {
    v32 = v35[33];
  }

  else
  {
    v32 = 0;
  }

  *(a1 + 96) = v32;
  *(a1 + 176) = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v34.i32[1]), v34);
}

void sub_2621E29E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  v16 = v15;

  sub_2621E1B1C(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_2621E2A20(uint64_t result, float32x2_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v79 = a2[-1];
        v80 = *v8;
        if (vcgt_f32(*v8, v79).u8[0])
        {
          *v8 = v79;
          a2[-1] = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v85 = v8 + 1;
      v86 = v8[1];
      v87 = v8 + 2;
      v88 = v8[2];
      v89 = *v8;
      v90 = v88.f32[0];
      v91 = vcgt_f32(v86, v88).u8[0];
      if (vcgt_f32(*v8, v86).u32[0])
      {
        LODWORD(v92) = *v8->f32;
        if (v91)
        {
          v93 = v8;
          v94 = v8 + 2;
          v86 = *v8;
          goto LABEL_180;
        }

        *v8 = v86;
        v8[1] = v89;
        v93 = v8 + 1;
        v94 = v8 + 2;
        v86 = v89;
        if (vcgt_f32(v89, v88).u32[0])
        {
LABEL_180:
          *v93 = v88;
          *v94 = v89;
          v90 = v92;
          goto LABEL_182;
        }
      }

      else if (v91)
      {
        *v85 = v88;
        *v87 = v86;
        v93 = v8;
        v94 = v8 + 1;
        v92 = v86.f32[0];
        v90 = v86.f32[0];
        if (vcgt_f32(v89, v88).u32[0])
        {
          goto LABEL_180;
        }

LABEL_182:
        v138 = a2[-1];
        if (v138.f32[0] >= v90)
        {
          return result;
        }

        *v87 = v138;
        a2[-1] = v86;
        v133 = *v87;
        v139 = *v85;
        goto LABEL_193;
      }

      v86 = v88;
      goto LABEL_182;
    }

    if (v9 == 5)
    {
      v66 = v8 + 1;
      v67 = v8[1];
      v68 = v8 + 2;
      v69 = v8[2];
      v70 = *v8;
      v71 = v69.f32[0];
      v72 = vcgt_f32(v67, v69).u8[0];
      if (vcgt_f32(*v8, v67).u32[0])
      {
        LODWORD(v73) = *v8->f32;
        if (v72)
        {
          v74 = v8;
          v75 = v8 + 2;
          v76 = v8[2];
          v77 = v8[1];
          v78 = *v8;
          goto LABEL_174;
        }

        v74 = v8 + 1;
        *v8 = v67;
        v8[1] = v70;
        v75 = v8 + 2;
        v76 = v67;
        v77 = v69;
        v78 = v70;
        if (vcgt_f32(v70, v69).u32[0])
        {
LABEL_174:
          *v74 = v69;
          *v75 = v70;
          v70 = v77;
          v71 = v73;
          v69 = v78;
        }

        else
        {
          v76 = v67;
        }
      }

      else if (v72)
      {
        LODWORD(v73) = v8[1];
        v74 = v8;
        *v66 = v69;
        *v68 = v67;
        v75 = v8 + 1;
        v76 = v69;
        v77 = v70;
        v78 = v67;
        if (vcgt_f32(v70, v69).u32[0])
        {
          goto LABEL_174;
        }

        v76 = v70;
        v70 = v69;
        v71 = v67.f32[0];
        v69 = v67;
      }

      else
      {
        v76 = *v8;
        v70 = v8[1];
      }

      v140 = v8[3];
      if (v140.f32[0] >= v71)
      {
        v69 = v8[3];
      }

      else
      {
        v8[2] = v140;
        v8[3] = v69;
        if (vcgt_f32(v70, v140).u8[0])
        {
          *v66 = v140;
          *v68 = v70;
          if (vcgt_f32(v76, v140).u8[0])
          {
            *v8 = v140;
            v8[1] = v76;
          }
        }
      }

      v141 = a2[-1];
      if ((vcgt_f32(v69, v141).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[3] = v141;
      a2[-1] = v69;
      v142 = v8[2];
      v133 = v8[3];
      if ((vcgt_f32(v142, v133).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[2] = v133;
      v8[3] = v142;
      v139 = v8[1];
LABEL_193:
      if ((vcgt_f32(v139, v133).u8[0] & 1) == 0)
      {
        return result;
      }

      v8[1] = v133;
      v8[2] = v139;
LABEL_195:
      v143 = *v8;
      if (vcgt_f32(*v8, v133).u8[0])
      {
        *v8 = v133;
        v8[1] = v143;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 1;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 8;
          v99 = v8;
          do
          {
            v101 = *v99;
            v100 = v99[1];
            v99 = v95;
            if (vcgt_f32(v101, v100).u8[0])
            {
              v102 = v98;
              while (1)
              {
                *(v8 + v102) = v101;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v101 = *(v8 + v102 - 16);
                v102 -= 8;
                if ((vcgt_f32(v101, v100).u8[0] & 1) == 0)
                {
                  v104 = (v8 + v103);
                  goto LABEL_126;
                }
              }

              v104 = v8;
LABEL_126:
              *v104 = v100;
            }

            v95 = v99 + 1;
            v98 += 8;
          }

          while (&v99[1] != a2);
        }
      }

      else if (!v97)
      {
        do
        {
          v135 = *v7;
          v134 = v7[1];
          v7 = v95;
          if (vcgt_f32(v135, v134).u8[0])
          {
            v136 = v95;
            do
            {
              *v136 = v135;
              v135 = v136[-2];
              --v136;
            }

            while ((vcgt_f32(v135, v134).u8[0] & 1) != 0);
            *v136 = v134;
          }

          ++v95;
        }

        while (&v7[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            if (2 * v107 + 2 < v9 && COERCE_FLOAT(*v109) < COERCE_FLOAT(*&v109[1]))
            {
              ++v109;
              v108 = 2 * v107 + 2;
            }

            v110 = &v8[v107];
            v111 = *v109;
            v112 = *v110;
            if ((vcgt_f32(*v110, *v109).u8[0] & 1) == 0)
            {
              do
              {
                v113 = v109;
                *v110 = v111;
                if (v105 < v108)
                {
                  break;
                }

                v114 = 2 * v108;
                v108 = (2 * v108) | 1;
                v109 = &v8[v108];
                v115 = v114 + 2;
                if (v115 < v9 && COERCE_FLOAT(*v109) < COERCE_FLOAT(*&v109[1]))
                {
                  ++v109;
                  v108 = v115;
                }

                v111 = *v109;
                v110 = v113;
              }

              while ((vcgt_f32(v112, *v109).u8[0] & 1) == 0);
              *v113 = v112;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = v118;
            v120 = &v118[v116];
            v118 = v120 + 1;
            v121 = 2 * v116;
            v116 = (2 * v116) | 1;
            v122 = v121 + 2;
            if (v122 < v9)
            {
              v124 = v120[2];
              v123 = v120 + 2;
              if (COERCE_FLOAT(*&v123[-1]) < v124.f32[0])
              {
                v118 = v123;
                v116 = v122;
              }
            }

            *v119 = *v118;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v117;
          }

          else
          {
            *v118 = *a2;
            *a2 = v117;
            v125 = (v118 - v8 + 8) >> 3;
            v126 = v125 < 2;
            v127 = v125 - 2;
            if (!v126)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v118;
              if (vcgt_f32(*v118, *v129).u8[0])
              {
                do
                {
                  v132 = v129;
                  *v118 = v130;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                  v118 = v132;
                }

                while ((vcgt_f32(v131, *v129).u8[0] & 1) != 0);
                *v132 = v131;
              }
            }
          }

          v126 = v9-- <= 2;
        }

        while (!v126);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = a2[-1];
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = vcgt_f32(*v10, v12).u8[0];
      if (vcgt_f32(*v8, *v10).u32[0])
      {
        if (v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v21 = a2[-1];
        if (vcgt_f32(v14, v21).u8[0])
        {
          *v10 = v21;
LABEL_27:
          a2[-1] = v14;
        }
      }

      else if (v15)
      {
        *v10 = v12;
        a2[-1] = v13;
        v19 = *v8;
        if (vcgt_f32(*v8, *v10).u8[0])
        {
          *v8 = *v10;
          *v10 = v19;
        }
      }

      v22 = v10 - 1;
      v23 = v10[-1];
      v24 = v8[1];
      v25 = a2[-2];
      v26 = vcgt_f32(v23, v25).u8[0];
      if (vcgt_f32(v24, v23).u32[0])
      {
        if (v26)
        {
          v8[1] = v25;
          goto LABEL_39;
        }

        v8[1] = v23;
        *v22 = v24;
        v29 = a2[-2];
        if (vcgt_f32(v24, v29).u8[0])
        {
          *v22 = v29;
LABEL_39:
          a2[-2] = v24;
        }
      }

      else if (v26)
      {
        *v22 = v25;
        a2[-2] = v23;
        v27 = v8[1];
        if (vcgt_f32(v27, *v22).u8[0])
        {
          v8[1] = *v22;
          *v22 = v27;
        }
      }

      v31 = v10[1];
      v30 = v10 + 1;
      v32 = v31;
      v33 = v8[2];
      v34 = a2[-3];
      v35 = vcgt_f32(v31, v34).u8[0];
      if (vcgt_f32(v33, v31).u32[0])
      {
        if (v35)
        {
          v8[2] = v34;
          goto LABEL_48;
        }

        v8[2] = v32;
        *v30 = v33;
        v37 = a2[-3];
        if (vcgt_f32(v33, v37).u8[0])
        {
          *v30 = v37;
LABEL_48:
          a2[-3] = v33;
        }
      }

      else if (v35)
      {
        *v30 = v34;
        a2[-3] = v32;
        v36 = v8[2];
        if (vcgt_f32(v36, *v30).u8[0])
        {
          v8[2] = *v30;
          *v30 = v36;
        }
      }

      v38 = *v11;
      v39 = *v22;
      v40 = *v30;
      v41 = vcgt_f32(*v11, *v30).u8[0];
      if (vcgt_f32(*v22, *v11).u32[0])
      {
        if ((v41 & 1) == 0)
        {
          *v22 = v38;
          *v11 = v39;
          v22 = v11;
          v38 = v40;
          if ((vcgt_f32(v39, v40).u32[0] & 1) == 0)
          {
            v38 = v39;
LABEL_56:
            v42 = *v8;
            *v8 = v38;
            *v11 = v42;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          goto LABEL_56;
        }

        *v11 = v40;
        *v30 = v38;
        v30 = v11;
        v38 = v39;
        if ((vcgt_f32(v39, v40).u32[0] & 1) == 0)
        {
          v38 = v40;
          goto LABEL_56;
        }
      }

      *v22 = v40;
      *v30 = v39;
      goto LABEL_56;
    }

    v16 = *v8;
    v17 = *v10;
    v18 = vcgt_f32(*v8, v12).u8[0];
    if ((vcgt_f32(*v10, *v8).u32[0] & 1) == 0)
    {
      if (v18)
      {
        *v8 = v12;
        a2[-1] = v16;
        v20 = *v10;
        if (vcgt_f32(*v10, *v8).u32[0])
        {
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_57;
    }

    if (v18)
    {
      *v10 = v12;
    }

    else
    {
      *v10 = v16;
      *v8 = v17;
      v28 = a2[-1];
      if ((vcgt_f32(v17, v28).u32[0] & 1) == 0)
      {
        goto LABEL_57;
      }

      *v8 = v28;
    }

    a2[-1] = v17;
LABEL_57:
    --a3;
    v43 = *v8;
    if ((a4 & 1) != 0 || COERCE_FLOAT(*&v8[-1]) < v43.f32[0])
    {
      v44 = v8;
      do
      {
        v45 = v44;
        v46 = v44[1];
        ++v44;
        v47 = v46;
      }

      while (v46.f32[0] < v43.f32[0]);
      v48 = a2;
      if (v45 == v8)
      {
        v48 = a2;
        do
        {
          if (v44 >= v48)
          {
            break;
          }

          v50 = v48[-1];
          --v48;
        }

        while (v50.f32[0] >= v43.f32[0]);
      }

      else
      {
        do
        {
          v49 = v48[-1];
          --v48;
        }

        while (v49.f32[0] >= v43.f32[0]);
      }

      if (v44 < v48)
      {
        v51 = *v48;
        v52 = v44;
        v53 = v48;
        do
        {
          *v52 = v51;
          *v53 = v47;
          do
          {
            v45 = v52;
            v54 = v52[1];
            ++v52;
            v47 = v54;
          }

          while (v54.f32[0] < v43.f32[0]);
          do
          {
            v55 = v53[-1];
            --v53;
            v51 = v55;
          }

          while (v55.f32[0] >= v43.f32[0]);
        }

        while (v52 < v53);
      }

      if (v45 != v8)
      {
        *v8 = *v45;
      }

      *v45 = v43;
      if (v44 < v48)
      {
        goto LABEL_78;
      }

      v56 = sub_2621E3880(v8, v45);
      v8 = v45 + 1;
      result = sub_2621E3880(v45 + 1, a2);
      if (result)
      {
        a2 = v45;
        if (!v56)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v56)
      {
LABEL_78:
        result = sub_2621E2A20(v7, v45, a3, a4 & 1);
        a4 = 0;
        v8 = v45 + 1;
      }
    }

    else
    {
      if (v43.f32[0] >= COERCE_FLOAT(*&a2[-1]))
      {
        v58 = v8 + 1;
        do
        {
          v8 = v58;
          if (v58 >= a2)
          {
            break;
          }

          ++v58;
        }

        while (v43.f32[0] >= COERCE_FLOAT(*v8));
      }

      else
      {
        do
        {
          v57 = v8[1];
          ++v8;
        }

        while (v43.f32[0] >= v57.f32[0]);
      }

      v59 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v60 = v59[-1];
          --v59;
        }

        while (v43.f32[0] < v60.f32[0]);
      }

      if (v8 < v59)
      {
        v61 = *v8;
        v62 = *v59;
        do
        {
          *v8 = v62;
          *v59 = v61;
          do
          {
            v63 = v8[1];
            ++v8;
            v61 = v63;
          }

          while ((vcgt_f32(v63, v43).u8[0] & 1) == 0);
          do
          {
            v64 = v59[-1];
            --v59;
            v62 = v64;
          }

          while ((vcgt_f32(v64, v43).u8[0] & 1) != 0);
        }

        while (v8 < v59);
      }

      v65 = v8 - 1;
      if (&v8[-1] != v7)
      {
        *v7 = *v65;
      }

      a4 = 0;
      *v65 = v43;
    }
  }

  v81 = *v8;
  v82 = v8[1];
  v83 = a2[-1];
  v84 = vcgt_f32(v82, v83).u8[0];
  if ((vcgt_f32(*v8, v82).u32[0] & 1) == 0)
  {
    if ((v84 & 1) == 0)
    {
      return result;
    }

    v8[1] = v83;
    a2[-1] = v82;
    v133 = v8[1];
    goto LABEL_195;
  }

  if (v84)
  {
    *v8 = v83;
  }

  else
  {
    *v8 = v82;
    v8[1] = v81;
    v137 = a2[-1];
    if ((vcgt_f32(v81, v137).u8[0] & 1) == 0)
    {
      return result;
    }

    v8[1] = v137;
  }

  a2[-1] = v81;
  return result;
}

void *sub_2621E3438(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v16 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *result) >> 4);
    v17 = v16 + 1;
    if ((v16 + 1) > 0x13B13B13B13B13BLL)
    {
      sub_2621CBEB0();
    }

    v18 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 4);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x9D89D89D89D89DLL)
    {
      v19 = 0x13B13B13B13B13BLL;
    }

    else
    {
      v19 = v17;
    }

    v39 = v2;
    if (v19)
    {
      sub_2621E3680(v19);
    }

    v20 = 208 * v16;
    v36 = 0;
    v37 = v20;
    *(&v38 + 1) = 0;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[3];
    *(v20 + 32) = a2[2];
    *(v20 + 48) = v23;
    v24 = a2[7];
    v26 = a2[4];
    v25 = a2[5];
    *(v20 + 96) = a2[6];
    *(v20 + 112) = v24;
    *(v20 + 64) = v26;
    *(v20 + 80) = v25;
    v27 = a2[11];
    v29 = a2[8];
    v28 = a2[9];
    *(v20 + 160) = a2[10];
    *(v20 + 176) = v27;
    *(v20 + 128) = v29;
    *(v20 + 144) = v28;
    *v20 = v21;
    *(v20 + 16) = v22;
    v30 = a2[12];
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    *(v20 + 192) = v30;
    *&v38 = 208 * v16 + 208;
    v31 = *(v2 + 8);
    v32 = (208 * v16 + *v2 - v31);
    sub_2621E36DC(v2, *v2, v31, v32);
    v33 = *v2;
    *v2 = v32;
    v34 = *(v2 + 16);
    v35 = v38;
    *(v2 + 8) = v38;
    *&v38 = v33;
    *(&v38 + 1) = v34;
    v36 = v33;
    v37 = v33;
    result = sub_2621E37B4(&v36);
    v15 = v35;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[7];
    v3[6] = a2[6];
    v3[7] = v10;
    v3[4] = v8;
    v3[5] = v9;
    v11 = a2[8];
    v12 = a2[9];
    v13 = a2[11];
    v3[10] = a2[10];
    v3[11] = v13;
    v3[8] = v11;
    v3[9] = v12;
    v14 = a2[12];
    *(a2 + 24) = 0;
    *(a2 + 25) = 0;
    v3[12] = v14;
    v15 = v3 + 13;
  }

  *(v2 + 8) = v15;
  return result;
}

void sub_2621E35E4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {

        v4 -= 26;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2621E3680(unint64_t a1)
{
  if (a1 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2621E36DC(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  v21 = a4;
  v20 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 == a3)
  {
    v19 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      a4[2] = v6[2];
      a4[3] = v9;
      *a4 = v7;
      a4[1] = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      a4[6] = v6[6];
      a4[7] = v12;
      a4[4] = v10;
      a4[5] = v11;
      v13 = v6[8];
      v14 = v6[9];
      v15 = v6[11];
      a4[10] = v6[10];
      a4[11] = v15;
      a4[8] = v13;
      a4[9] = v14;
      v16 = v6[12];
      *(v6 + 24) = 0;
      *(v6 + 25) = 0;
      a4[12] = v16;
      v6 += 13;
      a4 += 13;
    }

    while (v6 != a3);
    v21 = a4;
    v19 = 1;
    while (v5 != a3)
    {

      v5 += 26;
    }
  }

  return sub_2621E3818(v18);
}

uint64_t sub_2621E37B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2621E3818(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 208)
    {
    }
  }

  return a1;
}

BOOL sub_2621E3880(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v19 = *a1;
      v20 = a1[1];
      v21 = a2[-1];
      v22 = vcgt_f32(v20, v21).u8[0];
      if (vcgt_f32(*a1, v20).u32[0])
      {
        if (v22)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v49 = a2[-1];
          if ((vcgt_f32(v19, v49).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[1] = v49;
        }

        a2[-1] = v19;
        return 1;
      }

      if ((v22 & 1) == 0)
      {
        return 1;
      }

      a1[1] = v21;
      a2[-1] = v20;
      v40 = a1[1];
LABEL_68:
      v55 = *a1;
      if (vcgt_f32(*a1, v40).u8[0])
      {
        *a1 = v40;
        a1[1] = v55;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v6 = a1 + 2;
      v7 = a1[2];
      v8 = *a1;
      v9 = v7.f32[0];
      v10 = vcgt_f32(v5, v7).u8[0];
      if (vcgt_f32(*a1, v5).u32[0])
      {
        LODWORD(v11) = *a1->f32;
        if (v10)
        {
          v12 = a1;
          v13 = a1 + 2;
          v14 = a1[2];
          v15 = a1[1];
          v16 = *a1;
        }

        else
        {
          v12 = a1 + 1;
          *a1 = v5;
          a1[1] = v8;
          v13 = a1 + 2;
          v14 = v5;
          v15 = v7;
          v16 = v8;
          if ((vcgt_f32(v8, v7).u32[0] & 1) == 0)
          {
            v14 = v5;
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          v14 = *a1;
          v8 = a1[1];
          goto LABEL_58;
        }

        LODWORD(v11) = a1[1];
        v12 = a1;
        *v4 = v7;
        *v6 = v5;
        v13 = a1 + 1;
        v14 = v7;
        v15 = v8;
        v16 = v5;
        if ((vcgt_f32(v8, v7).u32[0] & 1) == 0)
        {
          v14 = v8;
          v8 = v7;
          v9 = v5.f32[0];
          v7 = v5;
LABEL_58:
          v52 = a1[3];
          if (v52.f32[0] >= v9)
          {
            v7 = a1[3];
          }

          else
          {
            a1[2] = v52;
            a1[3] = v7;
            if (vcgt_f32(v8, v52).u8[0])
            {
              *v4 = v52;
              *v6 = v8;
              if (vcgt_f32(v14, v52).u8[0])
              {
                *a1 = v52;
                a1[1] = v14;
              }
            }
          }

          v53 = a2[-1];
          if ((vcgt_f32(v7, v53).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[3] = v53;
          a2[-1] = v7;
          v54 = a1[2];
          v40 = a1[3];
          if ((vcgt_f32(v54, v40).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[2] = v40;
          a1[3] = v54;
          v51 = a1[1];
LABEL_66:
          if ((vcgt_f32(v51, v40).u8[0] & 1) == 0)
          {
            return 1;
          }

          a1[1] = v40;
          a1[2] = v51;
          goto LABEL_68;
        }
      }

      *v12 = v7;
      *v13 = v8;
      v8 = v15;
      v9 = v11;
      v7 = v16;
      goto LABEL_58;
    }

    v30 = a1 + 1;
    v31 = a1[1];
    v32 = a1 + 2;
    v33 = a1[2];
    v34 = *a1;
    v35 = v33.f32[0];
    v36 = vcgt_f32(v31, v33).u8[0];
    if (vcgt_f32(*a1, v31).u32[0])
    {
      LODWORD(v37) = *a1->f32;
      if (v36)
      {
        v38 = a1;
        v39 = a1 + 2;
        v31 = *a1;
LABEL_52:
        *v38 = v33;
        *v39 = v34;
        v35 = v37;
LABEL_54:
        v50 = a2[-1];
        if (v50.f32[0] >= v35)
        {
          return 1;
        }

        *v32 = v50;
        a2[-1] = v31;
        v40 = *v32;
        v51 = *v30;
        goto LABEL_66;
      }

      *a1 = v31;
      a1[1] = v34;
      v38 = a1 + 1;
      v39 = a1 + 2;
      v31 = v34;
      if (vcgt_f32(v34, v33).u32[0])
      {
        goto LABEL_52;
      }
    }

    else if (v36)
    {
      *v30 = v33;
      *v32 = v31;
      v38 = a1;
      v39 = a1 + 1;
      v37 = v31.f32[0];
      v35 = v31.f32[0];
      if ((vcgt_f32(v34, v33).u32[0] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v31 = v33;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v17 = a2[-1];
    v18 = *a1;
    if (vcgt_f32(*a1, v17).u8[0])
    {
      *a1 = v17;
      a2[-1] = v18;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v24 = a1[2];
  v25 = a1[1];
  v26 = *a1;
  v27 = vcgt_f32(v25, v24).u8[0];
  if (vcgt_f32(*a1, v25).u32[0])
  {
    v28 = a1;
    v29 = a1 + 2;
    if ((v27 & 1) == 0)
    {
      *a1 = v25;
      a1[1] = v26;
      v28 = a1 + 1;
      v29 = a1 + 2;
      if ((vcgt_f32(v26, v24).u8[0] & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v28 = v24;
    *v29 = v26;
    goto LABEL_28;
  }

  if (v27)
  {
    a1[1] = v24;
    *v23 = v25;
    v28 = a1;
    v29 = a1 + 1;
    if (vcgt_f32(v26, v24).u8[0])
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v41 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v42 = 0;
  for (i = 24; ; i += 8)
  {
    v44 = *v41;
    v45 = *v23;
    if (vcgt_f32(*v23, *v41).u8[0])
    {
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 8;
        if (v46 == 8)
        {
          break;
        }

        v45 = *(a1 + v46 - 16);
        v46 -= 8;
        if ((vcgt_f32(v45, v44).u8[0] & 1) == 0)
        {
          v48 = (a1 + v47);
          goto LABEL_36;
        }
      }

      v48 = a1;
LABEL_36:
      *v48 = v44;
      if (++v42 == 8)
      {
        break;
      }
    }

    v23 = v41++;
    if (v41 == a2)
    {
      return 1;
    }
  }

  return &v41[1] == a2;
}

uint64_t sub_2621E3C78(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 3);
      *(v4 + 32) = *(v6 + 2);
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = *(v6 + 4);
      v11 = *(v6 + 5);
      v12 = *(v6 + 7);
      *(v4 + 96) = *(v6 + 6);
      *(v4 + 112) = v12;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      v13 = *(v6 + 8);
      v14 = *(v6 + 9);
      v15 = *(v6 + 11);
      *(v4 + 160) = *(v6 + 10);
      *(v4 + 176) = v15;
      *(v4 + 128) = v13;
      *(v4 + 144) = v14;
      *(v4 + 192) = v6[24];
      *(v4 + 200) = v6[25];
      v6 += 26;
      v4 += 208;
    }

    while (v6 != a3);
    v20 = v4;
  }

  v18 = 1;
  sub_2621E3818(v17);
  return v4;
}

id sub_2621E3D3C(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v930[1] = *MEMORY[0x277D85DE8];
  v780 = a2;
  v778 = a3;
  v9 = a4;
  v777 = v9;
  if (!a1)
  {
    v326 = 0;
    goto LABEL_459;
  }

  if (!v9)
  {
    v323 = MEMORY[0x277CBEA60];
    v326 = objc_msgSend_init(v323, v324, v325);
    goto LABEL_459;
  }

  v796 = objc_msgSend_GetAllObjects(v9, v10, v11);
  v12 = @"lshaped";
  v15 = 0;
  v839 = 0uLL;
  v838 = 0;
  while (objc_msgSend_count(v796, v13, v14) > v15)
  {
    v17 = 0;
    v921[1] = 0;
    v921[0] = 0;
    v922.i64[0] = 0;
    v18 = objc_msgSend_objectAtIndexedSubscript_(v796, v16, v15);
    v21 = objc_msgSend_logits(v18, v19, v20);
    v24 = objc_msgSend_count(v21, v22, v23) != 0;

    if (v24)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v796, v25, v15);
      v29 = objc_msgSend_logits(v26, v27, v28);
      v31 = objc_msgSend_objectAtIndex_(v29, v30, 0);
      objc_msgSend_floatValue(v31, v32, v33);

      sub_2621C7F54(1uLL);
    }

    v922.i64[0] = 0;
    v921[1] = 0;
    v921[0] = 0;
    v34 = objc_msgSend_objectAtIndexedSubscript_(v796, v25, v15);
    hasBoxesDict = objc_msgSend_hasBoxesDict_(v34, v35, @"lshaped");

    if (hasBoxesDict)
    {
      v867 = 0u;
      v868 = 0u;
      v865 = 0u;
      v866 = 0u;
      v863 = 0u;
      v864 = 0u;
      memset(v862, 0, sizeof(v862));
      v37 = objc_msgSend_objectAtIndexedSubscript_(v796, v13, v15);
      v40 = objc_msgSend_boxesDict(v37, v38, v39);
      v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"lshaped");
      sub_262211250(v862, v42);

      v44 = objc_msgSend_objectAtIndexedSubscript_(v796, v43, v15);
      *&v909 = objc_msgSend_type(v44, v45, v46);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v796, v47, v15);
      objc_msgSend_confidence(v48, v49, v50);
      v52 = v51;
      v54 = objc_msgSend_objectAtIndexedSubscript_(v796, v53, v15);
      v57 = objc_msgSend_identifier(v54, v55, v56);
      sub_2622116A8(buf, v862, &v909, v57, v921, v52);
      v58 = v839.i64[0];
      if (v839.i64[0] >= v839.i64[1])
      {
        v69 = 0xAAAAAAAAAAAAAAABLL * ((v839.i64[0] - v838) >> 6);
        v70 = v69 + 1;
        if (v69 + 1 > 0x155555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * ((v839.i64[1] - v838) >> 6) > v70)
        {
          v70 = 0x5555555555555556 * ((v839.i64[1] - v838) >> 6);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v839.i64[1] - v838) >> 6) >= 0xAAAAAAAAAAAAAALL)
        {
          v71 = 0x155555555555555;
        }

        else
        {
          v71 = v70;
        }

        v850.i64[0] = &v838;
        if (v71)
        {
          sub_2621EAE84(v71);
        }

        v72 = (v839.i64[0] - v838) >> 6 << 6;
        *v848 = 0;
        *&v848[8] = v72;
        v849.i64[1] = 0;
        v73 = buf[0];
        v74 = buf[1];
        v75 = v876;
        *(v72 + 32) = v875;
        *(v72 + 48) = v75;
        v76 = v880;
        v77 = v878;
        v78 = v877;
        *(v72 + 96) = v879;
        *(v72 + 112) = v76;
        *(v72 + 64) = v78;
        *(v72 + 80) = v77;
        *v72 = v73;
        *(v72 + 16) = v74;
        v79 = v881.i64[0];
        v881.i64[0] = 0;
        *(v72 + 128) = v79;
        *(v72 + 136) = v881.i32[2];
        v80 = *__p;
        *__p = 0;
        *(v72 + 144) = v80;
        *(v72 + 152) = 0;
        *(v72 + 160) = 0;
        *(v72 + 168) = 0;
        *(v72 + 152) = *&__p[8];
        *(v72 + 168) = *&__p[24];
        memset(&__p[8], 0, 24);
        v81 = v883.i64[0];
        v883.i64[0] = 0;
        *(v72 + 176) = v81;
        *(v72 + 184) = v883.i16[4];
        v849.i64[0] = 192 * v69 + 192;
        v82 = 192 * v69 + v838 - v839.i64[0];
        sub_2622117DC(&v838, v838, v839.i64[0], v82);
        v83 = v838;
        v84 = v839.i64[1];
        v838 = v82;
        v827 = v849.i64[0];
        v839 = v849;
        v849.i64[0] = v83;
        v849.i64[1] = v84;
        *&v848[8] = v83;
        *v848 = v83;
        sub_2622118D8(v848);
        v68 = v827;
      }

      else
      {
        v59 = buf[0];
        v60 = buf[1];
        v61 = v876;
        *(v839.i64[0] + 32) = v875;
        *(v58 + 48) = v61;
        *v58 = v59;
        *(v58 + 16) = v60;
        v62 = v877;
        v63 = v878;
        v64 = v880;
        *(v58 + 96) = v879;
        *(v58 + 112) = v64;
        *(v58 + 64) = v62;
        *(v58 + 80) = v63;
        v65 = v881.i64[0];
        v881.i64[0] = 0;
        *(v58 + 128) = v65;
        *(v58 + 136) = v881.i32[2];
        v66 = *__p;
        *__p = 0;
        *(v58 + 144) = v66;
        *(v58 + 152) = 0;
        *(v58 + 160) = 0;
        *(v58 + 168) = 0;
        *(v58 + 152) = *&__p[8];
        *(v58 + 168) = *&__p[24];
        memset(&__p[8], 0, 24);
        v67 = v883.i64[0];
        v883.i64[0] = 0;
        *(v58 + 176) = v67;
        *(v58 + 184) = v883.i16[4];
        v68 = v58 + 192;
      }

      v839.i64[0] = v68;

      if (*&__p[8])
      {
        *&__p[16] = *&__p[8];
        operator delete(*&__p[8]);
      }

      v17 = v921[0];
    }

    if (v17)
    {
      v921[1] = v17;
      operator delete(v17);
    }

    ++v15;
  }

  v87 = objc_msgSend_mutableCopy(v796, v85, v86);
  v779 = v87;
  if (v780)
  {
    obj = v780;
    v88 = v778;
    v791 = v88;
    objc_opt_self();
    v843 = 0uLL;
    *&v844 = 0;
    v799 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v89 = 0;
    for (i = objc_msgSend_count(v88, v90, v91); i > v89; i = objc_msgSend_count(v791, v117, v118))
    {
      v95 = objc_msgSend_objectAtIndexedSubscript_(v88, v93, v89);
      sub_2621E283C(buf, v95);
      sub_2621E3438(&v843, buf);

      v98 = objc_msgSend_parentIdentifier(v95, v96, v97);
      v100 = objc_msgSend_objectForKey_(v799, v99, v98);
      v101 = v100 == 0;

      if (v101)
      {
        v104 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v102, v89);
        v896[0] = v104;
        v106 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v110, v896, 1);
        v108 = objc_msgSend_mutableCopy(v106, v111, v112);
        v115 = objc_msgSend_parentIdentifier(v95, v113, v114);
        objc_msgSend_setObject_forKey_(v799, v116, v108, v115);
      }

      else
      {
        v104 = objc_msgSend_parentIdentifier(v95, v102, v103);
        v106 = objc_msgSend_objectForKey_(v799, v105, v104);
        v108 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v107, v89);
        objc_msgSend_addObject_(v106, v109, v108);
      }

      ++v89;
      v88 = v791;
    }

    v794 = 0;
    v841 = 0;
    *v842 = 0uLL;
    while (v794 < objc_msgSend_count(obj, v93, v94))
    {
      v797 = objc_msgSend_objectAtIndexedSubscript_(obj, v119, v794);
      sub_2621E283C(v862, v797);
      if (v799)
      {
        v122 = objc_msgSend_identifier(v797, v120, v121);
        v126 = objc_msgSend_objectForKey_(v799, v123, v122);
        if (v126)
        {
          v127 = objc_msgSend_identifier(v797, v124, v125);
          v129 = objc_msgSend_objectForKey_(v799, v128, v127);
          v132 = objc_msgSend_count(v129, v130, v131) == 0;

          if (!v132)
          {
            v856 = v869;
            v857 = *v870;
            v858 = *&v870[16];
            v859 = v871;
            v852 = v865;
            v853 = v866;
            v854 = v867;
            v855 = v868;
            *v848 = v862[0];
            v849 = v862[1];
            v850 = v863;
            v851 = v864;
            v133 = v872;
            v860 = v133;
            v136 = v873;
            v861 = v136;
            *&v918 = 0;
            v917 = 0uLL;
            v921[0] = &v917;
            LOBYTE(v921[1]) = 0;
            if (*(&v843 + 1) != v843)
            {
              v137 = 0x4EC4EC4EC4EC4EC5 * ((*(&v843 + 1) - v843) >> 4);
              if (v137 <= 0x13B13B13B13B13BLL)
              {
                sub_2621E3680(v137);
              }

              sub_2621CBEB0();
            }

            v138 = objc_msgSend_identifier(v797, v134, v135);
            v788 = objc_msgSend_objectForKey_(v799, v139, v138);
            if (RSObjectAlign)
            {
              v140 = v788;
              objc_opt_self();
              if (v140 && objc_msgSend_count(v140, v141, v142) && v917.i64[0] != v917.i64[1])
              {
                v898 = 0uLL;
                v899 = 0;
                v145 = __sincosf_stret(v854.f32[1]);
                v144.i32[0] = LODWORD(v145.__cosval);
                v143.i32[0] = LODWORD(v145.__sinval);
                v146 = v144;
                *&v146.i32[1] = -v145.__sinval;
                v820 = v143;
                v807 = vzip1q_s32(v146, 0);
                v782 = vzip1q_s32(v807, v143);
                *&v147 = -v145.__sinval;
                HIDWORD(v147) = LODWORD(v145.__cosval);
                v148 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v782, v852.f32[0]), v147, *v852.f32, 1), xmmword_2623A7700, v852, 2);
                v149 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v782, v853.f32[0]), v147, *v853.f32, 1), xmmword_2623A7700, v853, 2);
                if (vmovn_s32(vcgtq_f32(v149, v148)).i8[2])
                {
                  v150 = vzip2_s32(*v148.f32, *v149.f32);
                }

                else
                {
                  v150 = vzip2_s32(*v149.f32, *v148.f32);
                }

                exception_object = v150;
                v912 = 0u;
                v911 = 0u;
                v910 = 0u;
                v909 = 0u;
                v177 = v140;
                v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v178, &v909, v921, 16);
                v182 = v820;
                v184.i32[1] = LODWORD(v145.__cosval);
                v183 = vzip1q_s32(v184, 0);
                v184.i64[1] = 0;
                v184.i32[0] = LODWORD(v145.__cosval);
                if (v181)
                {
                  v184.i32[1] = v820.i32[0];
                  v822 = v184;
                  v813 = vzip2q_s32(v807, v183);
                  v185 = *v910.i64[0];
                  do
                  {
                    for (j = 0; j != v181; ++j)
                    {
                      if (*v910.i64[0] != v185)
                      {
                        objc_enumerationMutation(v177);
                      }

                      v187 = objc_msgSend_intValue(*(*(&v909 + 1) + 8 * j), v179, v180);
                      if (0x4EC4EC4EC4EC4EC5 * ((v917.i64[1] - v917.i64[0]) >> 4) > v187)
                      {
                        v188 = (v917.i64[0] + 208 * v187);
                        v189 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v822, COERCE_FLOAT(*v188[8].f32)), v813, v188[8], 1), xmmword_2623A7700, *v188[8].f32, 2);
                        v190 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v822, COERCE_FLOAT(*v188[10].f32)), v813, v188[10], 1), xmmword_2623A7700, *v188[10].f32, 2);
                        sub_2621CBEC8(1uLL);
                      }

                      if (qword_27FF0C060 != -1)
                      {
                        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                      }

                      v191 = qword_27FF0C058;
                      if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
                      {
                        buf[0].i16[0] = 0;
                        _os_log_error_impl(&dword_2621C3000, v191, OS_LOG_TYPE_ERROR, "The index of wall opening is larger is out of range, skip.", buf, 2u);
                      }
                    }

                    v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v177, v179, &v909, v921, 16);
                  }

                  while (v181);
                }

                v192 = exception_object;
                if (vcgt_f32(exception_object, vdup_lane_s32(exception_object, 1)).u8[0])
                {
                  do
                  {
                    v193 = vrev64_s32(v192);
                    v194 = vcgt_f32(vdup_lane_s32(v192, 1), v192).u8[0];
                    v192 = v193;
                  }

                  while ((v194 & 1) != 0);
                }

                else
                {
                  v193 = exception_object;
                }

                *&v903 = v193;
                v894[0] = 0;
                v893[0] = 0;
                v893[1] = 0;
                sub_2621CC6AC(v893, &v903, &v903 + 8, 1uLL);
              }

              v881 = v856;
              *__p = v857;
              *&__p[16] = v858;
              v883 = v859;
              v877 = v852;
              v878 = v853;
              v879 = v854;
              v880 = v855;
              buf[0] = *v848;
              buf[1] = v849;
              v875 = v850;
              v876 = v851;
              v884 = v133;
              v885 = v136;
              *&v920[0] = 0;
              v919[0] = 0;
              v919[1] = 0;
              v921[0] = v919;
              LOBYTE(v921[1]) = 0;
              operator new();
            }

            v919[1] = 0;
            v919[0] = 0;
            *&v920[0] = 0;

            buf[0].i64[0] = &v917;
            sub_2621E35E4(buf);
            v195 = v919[0];
            v196 = v919[1] - v919[0];
            if (v919[1] - v919[0] >= 1)
            {
              v197 = v842[0];
              if (v842[1] - v842[0] >= v196)
              {
                v842[0] = sub_2621E3C78(&v841, v919[0], v919[1], v842[0]);
              }

              else
              {
                v198 = 0x4EC4EC4EC4EC4EC5 * ((v842[0] - v841) >> 4) + 0x4EC4EC4EC4EC4EC5 * (v196 >> 4);
                if (v198 > 0x13B13B13B13B13BLL)
                {
                  sub_2621CBEB0();
                }

                if (0x9D89D89D89D89D8ALL * ((v842[1] - v841) >> 4) > v198)
                {
                  v198 = 0x9D89D89D89D89D8ALL * ((v842[1] - v841) >> 4);
                }

                if ((0x4EC4EC4EC4EC4EC5 * ((v842[1] - v841) >> 4)) >= 0x9D89D89D89D89DLL)
                {
                  v199 = 0x13B13B13B13B13BLL;
                }

                else
                {
                  v199 = v198;
                }

                v875.i64[0] = &v841;
                if (v199)
                {
                  sub_2621E3680(v199);
                }

                v200 = 16 * ((v842[0] - v841) >> 4);
                buf[0].i64[0] = 0;
                buf[0].i64[1] = v200;
                buf[1] = v200;
                v201 = (v200 + v196);
                do
                {
                  v202 = *v195;
                  v203 = *(v195 + 1);
                  v204 = *(v195 + 3);
                  *(v200 + 32) = *(v195 + 2);
                  *(v200 + 48) = v204;
                  *v200 = v202;
                  *(v200 + 16) = v203;
                  v205 = *(v195 + 4);
                  v206 = *(v195 + 5);
                  v207 = *(v195 + 7);
                  *(v200 + 96) = *(v195 + 6);
                  *(v200 + 112) = v207;
                  *(v200 + 64) = v205;
                  *(v200 + 80) = v206;
                  v208 = *(v195 + 8);
                  v209 = *(v195 + 9);
                  v210 = *(v195 + 11);
                  *(v200 + 160) = *(v195 + 10);
                  *(v200 + 176) = v210;
                  *(v200 + 128) = v208;
                  *(v200 + 144) = v209;
                  *(v200 + 192) = *(v195 + 24);
                  *(v200 + 200) = *(v195 + 25);
                  v200 += 208;
                  v195 += 208;
                }

                while (v200 != v201);
                buf[1].i64[0] = v201;
                sub_2621E36DC(&v841, v197, v842[0], v201);
                buf[1].i64[0] += v842[0] - v197;
                v842[0] = v197;
                v211 = (buf[0].i64[1] + v841 - v197);
                sub_2621E36DC(&v841, v841, v197, v211);
                v212 = v841;
                v213 = v842[1];
                v841 = v211;
                *v842 = buf[1];
                buf[1].i64[0] = v212;
                buf[1].i64[1] = v213;
                buf[0].i64[1] = v212;
                buf[0].i64[0] = v212;
                sub_2621E37B4(buf);
              }
            }

            buf[0].i64[0] = v919;
            sub_2621E35E4(buf);
            goto LABEL_95;
          }
        }

        else
        {
        }
      }

      v151 = v842[0];
      if (v842[0] >= v842[1])
      {
        v162 = 0x4EC4EC4EC4EC4EC5 * ((v842[0] - v841) >> 4) + 1;
        if (v162 > 0x13B13B13B13B13BLL)
        {
          sub_2621CBEB0();
        }

        if (0x9D89D89D89D89D8ALL * ((v842[1] - v841) >> 4) > v162)
        {
          v162 = 0x9D89D89D89D89D8ALL * ((v842[1] - v841) >> 4);
        }

        if ((0x4EC4EC4EC4EC4EC5 * ((v842[1] - v841) >> 4)) >= 0x9D89D89D89D89DLL)
        {
          v163 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v163 = v162;
        }

        v875.i64[0] = &v841;
        if (v163)
        {
          sub_2621E3680(v163);
        }

        v164 = 16 * ((v842[0] - v841) >> 4);
        buf[0].i64[0] = 0;
        buf[0].i64[1] = v164;
        buf[1].i64[1] = 0;
        v165 = v862[0];
        v166 = v862[1];
        v167 = v864;
        *(v164 + 32) = v863;
        *(v164 + 48) = v167;
        v168 = v868;
        v170 = v865;
        v169 = v866;
        *(v164 + 96) = v867;
        *(v164 + 112) = v168;
        *(v164 + 64) = v170;
        *(v164 + 80) = v169;
        v171 = v871;
        v172 = *v870;
        v173 = v869;
        *(v164 + 160) = *&v870[16];
        *(v164 + 176) = v171;
        *(v164 + 128) = v173;
        *(v164 + 144) = v172;
        *v164 = v165;
        *(v164 + 16) = v166;
        *(v164 + 192) = v872;
        *(v164 + 200) = v873;
        buf[1].i64[0] = v164 + 208;
        v174 = (v164 + v841 - v842[0]);
        sub_2621E36DC(&v841, v841, v842[0], v174);
        v175 = v841;
        v176 = v842[1];
        v841 = v174;
        v821 = buf[1].i64[0];
        *v842 = buf[1];
        buf[1].i64[0] = v175;
        buf[1].i64[1] = v176;
        buf[0].i64[1] = v175;
        buf[0].i64[0] = v175;
        sub_2621E37B4(buf);
        v161 = v821;
      }

      else
      {
        v152 = v862[0];
        v153 = v862[1];
        v154 = v864;
        *(v842[0] + 2) = v863;
        v151[3] = v154;
        *v151 = v152;
        v151[1] = v153;
        v155 = v865;
        v156 = v866;
        v157 = v868;
        v151[6] = v867;
        v151[7] = v157;
        v151[4] = v155;
        v151[5] = v156;
        v158 = v869;
        v159 = *v870;
        v160 = v871;
        v151[10] = *&v870[16];
        v151[11] = v160;
        v151[8] = v158;
        v151[9] = v159;
        v151[12].i64[0] = v872;
        v151[12].i64[1] = v873;
        v161 = v151 + 13;
      }

      v842[0] = v161;
LABEL_95:

      ++v794;
    }

    buf[0].i64[0] = &v843;
    sub_2621E35E4(buf);

    v905[1] = 0;
    v905[0] = 0;
    v906 = 0;
    v215 = v838;
    v216 = v839.i64[0];
    if (v838 == v839.i64[0])
    {
      v328 = 0;
      v327 = 0;
      v329 = 0;
      goto LABEL_210;
    }

    v800 = 0;
    v781 = v839.i64[0];
    while (1)
    {
      v843 = 0u;
      v844 = 0u;
      LODWORD(v845) = 1065353216;
      if (a5)
      {
        break;
      }

      buf[0].i32[0] = 0;
      if (v842[0] != v841)
      {
        v217 = v841[4];
        v218 = v841[5];
        sub_262236A5C();
      }

      sub_262236B50(v905, v215);
      v272 = v800;
      v273 = v800 >> 2;
      if (((v800 >> 2) + 1) >> 62)
      {
        sub_2621CBEB0();
      }

      if (v800 >> 2 != -1)
      {
        sub_2621C7F54((v800 >> 2) + 1);
      }

      *(4 * v273) = -1;
      v800 = 4 * v273 + 4;
      memcpy(0, 0, v272);
LABEL_205:
      sub_2621C74C4(&v843);
      v215 += 192;
      if (v215 == v216)
      {
        v327 = v905[0];
        v328 = v905[1];
        v329 = v800;
LABEL_210:
        v898 = 0uLL;
        v899 = 0;
        sub_2622395E8(&v898, v327, v328, 0xAAAAAAAAAAAAAAABLL * ((v328 - v327) >> 6));
        v901 = 0;
        v900 = 0;
        v902 = 0;
        sub_2621C8B60(&v900, 0, v329, v329 >> 2);
        buf[0].i64[0] = v905;
        sub_2621EAAB0(buf);
        v330 = *(&v898 + 1);
        v331 = *(&v898 + 1) - v898;
        if ((v839.i64[1] - v838) < *(&v898 + 1) - v898)
        {
          v332 = 0xAAAAAAAAAAAAAAABLL * (v331 >> 6);
          sub_2621EADF4(&v838);
          if (v332 <= 0x155555555555555)
          {
            v333 = 0x5555555555555556 * ((v839.i64[1] - v838) >> 6);
            if (v333 <= v332)
            {
              v333 = v332;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v839.i64[1] - v838) >> 6) >= 0xAAAAAAAAAAAAAALL)
            {
              v334 = 0x155555555555555;
            }

            else
            {
              v334 = v333;
            }

            if (v334 <= 0x155555555555555)
            {
              sub_2621EAE84(v334);
            }
          }

          sub_2621CBEB0();
        }

        if (v839.i64[0] - v838 >= v331)
        {
          sub_2621EAC08(v898, *(&v898 + 1), v838);
          sub_2621EAB94(&v838, v336);
        }

        else
        {
          v335 = sub_2621EAC08(v898, v898 + v839.i64[0] - v838, v838);
          v839.i64[0] = sub_2621EACD8(&v838, v335, v330, v839.i64[0]);
        }

        memset(buf, 0, 24);
        sub_2621C8B60(buf, v900, v901, (v901 - v900) >> 2);
        v338 = v779;
        v339 = v838;
        v340 = v839.i64[0];
        v341 = 0xAAAAAAAAAAAAAAABLL * ((v839.i64[0] - v838) >> 6);
        v342 = buf[0].i64[0];
        v343 = buf[0].i64[1] - buf[0].i64[0];
        if (v341 != (buf[0].i64[1] - buf[0].i64[0]) >> 2)
        {
          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v344 = qword_27FF0C058;
          if (os_log_type_enabled(v344, OS_LOG_TYPE_ERROR))
          {
            v862[0].i32[0] = 134218240;
            *(v862[0].i64 + 4) = v341;
            v862[0].i16[6] = 2048;
            *(&v862[0].i64[1] + 6) = v343 >> 2;
            _os_log_error_impl(&dword_2621C3000, v344, OS_LOG_TYPE_ERROR, "The input wall and wall-ids should be of the same length (%zu vs %zu)", v862, 0x16u);
          }

          v339 = v838;
          v340 = v839.i64[0];
        }

        if (v340 != v339)
        {
          v345 = 0;
          do
          {
            if (objc_msgSend_isEqualToString_(*(v339 + 192 * v345 + 128), v337, @"Fireplace"))
            {
              v347 = v342[v345];
              if ((v347 & 0x80000000) != 0 || 0x4EC4EC4EC4EC4EC5 * ((v842[0] - v841) >> 4) <= v347)
              {
                if (qword_27FF0C060 != -1)
                {
                  dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                }

                v376 = qword_27FF0C058;
                if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
                {
                  v862[0].i32[0] = 67109120;
                  v862[0].i32[1] = v347;
                  _os_log_error_impl(&dword_2621C3000, v376, OS_LOG_TYPE_ERROR, "Invalid wall_ids: %d", v862, 8u);
                }
              }

              else
              {
                v348.i64[0] = 0x3F0000003F000000;
                v348.i64[1] = 0x3F0000003F000000;
                v349 = vmulq_f32(vaddq_f32(*(v838 + 192 * v345 + 48), *(v838 + 192 * v345)), v348);
                v350 = &v841[13 * v347];
                v351 = v350[4];
                v352 = vsubq_f32(v351, v349);
                v353 = vsubq_f32(*(v350 + 5), v351);
                v354 = vcvtq_f64_f32(*v353.f32);
                v352.f32[0] = -(COERCE_FLOAT(vmulq_f32(v352, v353).i32[1]) + (v352.f32[0] * v353.f32[0])) / vaddvq_f64(vmulq_f64(v354, v354));
                *v351.f32 = vmla_n_f32(*v351.f32, *v353.f32, v352.f32[0]);
                v351.i32[2] = 0;
                v355 = vsubq_f32(v349, v351);
                v356 = v350[11];
                v357 = vmulq_f32(v355, v356);
                v358 = vmulq_f32(v356, v356);
                if (((v357.f32[2] + vaddv_f32(*v357.f32)) / sqrtf(v358.f32[2] + vaddv_f32(*v358.f32))) < -0.01)
                {
                  for (k = 0; objc_msgSend_count(v338, v337, v346) > k; ++k)
                  {
                    v360 = objc_msgSend_objectAtIndexedSubscript_(v338, v337, k);
                    v363 = objc_msgSend_identifier(v360, v361, v362);
                    isEqual = objc_msgSend_isEqual_(v363, v364, *(v838 + 192 * v345 + 144));

                    if (isEqual)
                    {
                      v368 = objc_msgSend_copy(*&v841[13 * v347 + 12], v366, v367);
                      sub_26223FCCC(v360, v368);

                      if (qword_27FF0C060 != -1)
                      {
                        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
                      }

                      v369 = qword_27FF0C058;
                      if (os_log_type_enabled(v369, OS_LOG_TYPE_DEBUG))
                      {
                        v372 = objc_msgSend_type(v360, v370, v371);
                        v375 = objc_msgSend_parent_id(v360, v373, v374);
                        v862[0].i32[0] = 138412546;
                        *(v862[0].i64 + 4) = v372;
                        v862[0].i16[6] = 2112;
                        *(&v862[0].i64[1] + 6) = v375;
                        _os_log_debug_impl(&dword_2621C3000, v369, OS_LOG_TYPE_DEBUG, "The wall-parentID of fireplace %@ is: %@", v862, 0x16u);
                      }
                    }
                  }
                }
              }
            }

            ++v345;
            v339 = v838;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v839.i64[0] - v838) >> 6) > v345);
        }

        sub_2621E1F3C(v338, &v838, @"wallaligned");
        if (v342)
        {
          operator delete(v342);
        }

        if (v900)
        {
          v901 = v900;
          operator delete(v900);
        }

        buf[0].i64[0] = &v898;
        sub_2621EAAB0(buf);
        buf[0].i64[0] = &v841;
        sub_2621E35E4(buf);
        v87 = v779;
        goto LABEL_254;
      }
    }

    if (objc_msgSend_isEqualToString_(*(v215 + 128), v214, @"Fireplace"))
    {
      v219 = (sub_262238EE8)(&v841, v215, &v843, 0.3);
    }

    else
    {
      v219 = (sub_26223926C)(&v841, v215, &v843, 0.3);
    }

    v221 = v219;
    isEqualToString = objc_msgSend_isEqualToString_(*(v215 + 128), v220, @"Fireplace");
    v224 = sub_2622381E8;
    if (isEqualToString)
    {
      v224 = sub_262237CBC;
    }

    *&v903 = &unk_2874EE3D0;
    *(&v903 + 1) = v224;
    *(&v904 + 1) = &v903;
    v225 = MEMORY[0x277CBEB98];
    v892 = @"Chair";
    v226 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v223, &v892, 1);
    v795 = objc_msgSend_setWithArray_(v225, v227, v226);

    v228 = MEMORY[0x277CBEB98];
    v889 = @"Toilet";
    v890 = @"Sink";
    v230 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v229, &v889, 2);
    v814 = objc_msgSend_setWithArray_(v228, v231, v230);

    v233 = v841;
    v232 = v842[0];
    v234 = *(v215 + 48);
    v236 = *v215;
    v235 = *(v215 + 16);
    v863 = *(v215 + 32);
    v864 = v234;
    v862[0] = v236;
    v862[1] = v235;
    v237 = *(v215 + 112);
    v239 = *(v215 + 64);
    v238 = *(v215 + 80);
    v867 = *(v215 + 96);
    v868 = v237;
    v865 = v239;
    v866 = v238;
    v869.i64[0] = *(v215 + 128);
    v869.i32[2] = *(v215 + 136);
    *v870 = *(v215 + 144);
    v240 = *(v215 + 152);
    memset(&v870[8], 0, 24);
    v241 = *(v215 + 160);
    v242 = (v241 - v240) >> 2;
    if (v232 == v233)
    {
      sub_2621C8E70(&v870[8], v240, v241, v242);
      v871.i64[0] = *(v215 + 176);
      v871.i16[4] = *(v215 + 184);
      goto LABEL_199;
    }

    sub_2621C8E70(&v870[8], v240, v241, v242);
    v871.i64[0] = *(v215 + 176);
    v871.i16[4] = *(v215 + 184);
    v840 = *(v215 + 128);
    sub_26220F644(v907, v215);
    v243 = v841;
    v245 = v840;
    if (a5)
    {
      if (qword_27FF0C100 != -1)
      {
        dispatch_once(&qword_27FF0C100, &unk_2874EE380);
      }

      v246 = 0.55;
      if (qword_27FF0C0F8)
      {
        v247 = objc_msgSend_objectForKey_(qword_27FF0C0F8, v244, v245);
        v248 = v247 == 0;

        v246 = 0.55;
        if (!v248)
        {
          v250 = objc_msgSend_objectForKey_(qword_27FF0C0F8, v249, v245);
          objc_msgSend_floatValue(v250, v251, v252);
LABEL_120:
          v246 = v253;
        }
      }
    }

    else
    {
      if (qword_27FF0C0F0 != -1)
      {
        dispatch_once(&qword_27FF0C0F0, &unk_2874EE360);
      }

      v246 = 0.55;
      if (qword_27FF0C0E8)
      {
        v254 = objc_msgSend_objectForKey_(qword_27FF0C0E8, v244, v245);
        v255 = v254 == 0;

        v246 = 0.55;
        if (!v255)
        {
          v250 = objc_msgSend_objectForKey_(qword_27FF0C0E8, v256, v245);
          objc_msgSend_floatValue(v250, v257, v258);
          goto LABEL_120;
        }
      }
    }

    v259 = *v215;
    v260 = *(v215 + 16);
    v261 = *(v215 + 32);
    v912 = *(v215 + 48);
    v911 = v261;
    v910 = v260;
    v909 = v259;
    v262 = *(v215 + 64);
    v263 = *(v215 + 80);
    v264 = *(v215 + 96);
    v916 = *(v215 + 112);
    v915 = v264;
    v914 = v263;
    v913 = v262;
    if (objc_msgSend_containsObject_(v795, v265, v840))
    {
      goto LABEL_122;
    }

    v269 = v907[0];
    v270 = *(v907[0] + 6);
    v271 = fmodf(*(&v243[13 * v221 + 6] + 1) - v270, 1.5708);
    if (v271 < 0.0)
    {
      v271 = fmodf(v271 + 1.5708, 1.5708);
    }

    if (fabsf(v271) >= v246)
    {
      if (fabsf(v271 + -1.5708) >= v246)
      {
LABEL_122:
        v266 = 0;
        v267 = 0;
        *v894 = 0u;
        *v893 = 0u;
        v268 = 0.0;
        v895 = 1065353216;
        if ((a5 & 1) == 0)
        {
LABEL_123:
          v895 = v845;
          v267 = v266;
          if (v844)
          {
            operator new();
          }

          goto LABEL_143;
        }

        goto LABEL_143;
      }

      v274 = v270 + v271;
      if (v271 <= 0.0)
      {
        v275 = 1.5708;
      }

      else
      {
        v275 = -1.5708;
      }

      v268 = v274 + v275;
    }

    else
    {
      v268 = v270 + v271;
    }

    v269[6] = v268;
    sub_26220FF88(buf, v907);
    v913 = v877;
    v914 = v878;
    v915 = v879;
    v916 = v880;
    v909 = buf[0];
    v910 = buf[1];
    v911 = v875;
    v912 = v876;
    *v894 = 0u;
    *v893 = 0u;
    v895 = 1065353216;
    if ((a5 & 1) == 0)
    {
      buf[0].i32[0] = 0;
      if (v842[0] != v841)
      {
        v276 = v841[4];
        v277 = v841[5];
        sub_262236A5C();
      }

      v266 = 1;
      goto LABEL_123;
    }

    v267 = 1;
LABEL_143:
    v279 = v840;
    if (qword_27FF0C110 != -1)
    {
      dispatch_once(&qword_27FF0C110, &unk_2874EE3A0);
    }

    v280 = 0.0;
    if (qword_27FF0C108)
    {
      v281 = objc_msgSend_objectForKey_(qword_27FF0C108, v278, v279);
      v282 = v281 == 0;

      if (!v282)
      {
        v284 = objc_msgSend_objectForKey_(qword_27FF0C108, v283, v279);
        objc_msgSend_floatValue(v284, v285, v286);
        v280 = v287;
      }
    }

    v288 = v841;
    if (v842[0] != v841)
    {
      v289 = 0;
      v290 = 0;
      v291 = v246;
      if (*(&v221 + 1) >= 0.0)
      {
        v292 = *(&v221 + 1) * 0.05;
      }

      else
      {
        v292 = v280;
      }

      do
      {
        if ((a5 & 1) == 0 && !sub_2621C719C(v893, v290))
        {
          goto LABEL_189;
        }

        v293 = &v288[v289];
        v294 = &v288[v289 + 4];
        v295 = vsubq_f32(*v294, v288[v289 + 5]);
        v296 = sqrtf(vaddv_f32(*&vmulq_f32(v295, v295)));
        if (v296 > 0.02)
        {
          v297 = v267;
        }

        else
        {
          v297 = 0;
        }

        if (v297 == 1)
        {
          v299 = fmodf((v293[6].f32[1] + 6.2832) - v268, 6.2832);
          v300 = fabsf(v299) < v246 || fabsf(v299 + -6.2832) < v246 || fabs(v299 + -3.14159265) < v291 || fabs(v299 + 3.14159265) < v291;
          v301 = objc_msgSend_containsObject_(v814, v298, v840);
          v302 = fmodf(v299, 1.5708);
          v303 = fabsf(v302) < v246;
          v304 = fabs(v302 + -1.57079633);
          v305 = v303 || v300;
          if (v304 < v291)
          {
            v305 = 1;
          }

          if ((v305 & (v301 ^ 1) & 1) != 0 || v221 == v290)
          {
            v306 = 0.1;
            if (v221 == v290)
            {
              v306 = v292;
            }

            *v848 = v306;
            LOBYTE(v921[0]) = v300;
            LOBYTE(v919[0]) = a5 ^ 1;
            v917.i8[0] = v221 == v290;
            buf[0].i64[0] = &v909;
            if (!*(&v904 + 1))
            {
              sub_2621C7250();
            }

            (*(**(&v904 + 1) + 48))(*(&v904 + 1), v293, v848, &v840, v921, v919, &v917, buf);
          }
        }

        v307 = v296 <= 0.5 ? 1 : v267;
        if (v307)
        {
          goto LABEL_189;
        }

        v823 = v293[5];
        v828 = v293[4];
        sub_262236D98(v919, v910, v912, v828, v823);
        sub_262236D98(&v917, v911, v909, v828, v823);
        v877 = v913;
        v878 = v914;
        v879 = v915;
        v880 = v916;
        buf[0] = v909;
        buf[1] = v910;
        v875 = v911;
        v876 = v912;
        if (LOBYTE(v920[0]) == 1)
        {
          if (v918)
          {
            v854 = 0u;
            v855 = 0u;
            v852 = 0u;
            v853 = 0u;
            v850 = 0u;
            v851 = 0u;
            *v848 = 0u;
            v849 = 0u;
            sub_262236F30(v848, &v909, v294, *v919);
            v928 = 0u;
            v927 = 0u;
            v926 = 0u;
            v925 = 0u;
            v924 = 0u;
            v923 = 0u;
            v922 = 0u;
            *v921 = 0u;
            sub_262236F30(v921, &v909, v294, v917);
            sub_26220F644(v896, v848);
            sub_26220F644(&v929, v921);
            v308 = v848;
            if ((*(v896[0] + 3) * *(v896[0] + 4)) <= (*(v929 + 12) * *(v929 + 16)))
            {
              v308 = v921;
            }

            v309 = v308[5];
            v877 = v308[4];
            v878 = v309;
            v310 = v308[7];
            v879 = v308[6];
            v880 = v310;
            v311 = v308[1];
            buf[0] = *v308;
            buf[1] = v311;
            v312 = v308[3];
            v875 = v308[2];
            v876 = v312;
            *(&v929 + 1) = v929;
            operator delete(v929);
            if (v896[0])
            {
              v896[1] = v896[0];
              operator delete(v896[0]);
            }

            goto LABEL_187;
          }

          v313 = v919;
        }

        else
        {
          if (!v918)
          {
            goto LABEL_187;
          }

          v313 = &v917;
        }

        sub_262236F30(buf, &v909, v294, *v313);
LABEL_187:
        memset(v848, 0, sizeof(v848));
        v849.i64[0] = 0;
        sub_26220FA14(v848, &v909, buf);
        if (v849.f32[0] >= 0.25)
        {
          v913 = v877;
          v914 = v878;
          v915 = v879;
          v916 = v880;
          v909 = buf[0];
          v910 = buf[1];
          v911 = v875;
          v912 = v876;
        }

LABEL_189:
        ++v290;
        v288 = v841;
        v289 += 13;
      }

      while (0x4EC4EC4EC4EC4EC5 * ((v842[0] - v841) >> 4) > v290);
    }

    sub_2622116A8(buf, &v909, &v840, *(v215 + 144), (v215 + 152), *(v215 + 136));
    v865 = v877;
    v866 = v878;
    v867 = v879;
    v868 = v880;
    v862[0] = buf[0];
    v862[1] = buf[1];
    v863 = v875;
    v864 = v876;
    v314 = v881.i64[0];
    v881.i64[0] = 0;
    v315 = v869.i64[0];
    v869.i64[0] = v314;

    v216 = v781;
    v869.i32[2] = v881.i32[2];
    v316 = *__p;
    *__p = 0;
    v317 = *v870;
    *v870 = v316;

    if (*&v870[8])
    {
      *&v870[16] = *&v870[8];
      operator delete(*&v870[8]);
    }

    *&v870[8] = *&__p[8];
    v318 = *&__p[24];
    v319 = v883.i64[0];
    memset(&__p[8], 0, 24);
    v883.i64[0] = 0;
    v320 = v871.i64[0];
    *&v870[24] = v318;
    v871.i64[0] = v319;

    v871.i16[4] = v883.i16[4];
    if (*&__p[8])
    {
      *&__p[16] = *&__p[8];
      operator delete(*&__p[8]);
    }

    sub_2621C74C4(v893);
    if (v907[0])
    {
      v907[1] = v907[0];
      operator delete(v907[0]);
    }

LABEL_199:
    sub_2622371D0(&v903);
    sub_262236B50(v905, v862);
    v321 = v800;
    v322 = v800 >> 2;
    if (((v800 >> 2) + 1) >> 62)
    {
      sub_2621CBEB0();
    }

    if (v800 >> 2 != -1)
    {
      sub_2621C7F54((v800 >> 2) + 1);
    }

    *(4 * v322) = v221;
    v800 = 4 * v322 + 4;
    memcpy(0, 0, v321);

    if (*&v870[8])
    {
      *&v870[16] = *&v870[8];
      operator delete(*&v870[8]);
    }

    goto LABEL_205;
  }

LABEL_254:
  if (a5 && a6)
  {
    v836 = 0u;
    v837 = 0u;
    v834 = 0u;
    v835 = 0u;
    v377 = v796;
    v379 = objc_msgSend_countByEnumeratingWithState_objects_count_(v377, v378, &v834, v847, 16);
    if (v379)
    {
      v380 = *v835;
      do
      {
        for (m = 0; m != v379; ++m)
        {
          if (*v835 != v380)
          {
            objc_enumerationMutation(v377);
          }

          v382 = *(*(&v834 + 1) + 8 * m);
          v383 = @"ChairGroup";
          if (v382 && sub_26223FB54(@"ChairGroup"))
          {
            objc_msgSend_setObject_forKeyedSubscript_(*(v382 + 8), v384, 0, @"ChairGroup");
          }
        }

        v379 = objc_msgSend_countByEnumeratingWithState_objects_count_(v377, v385, &v834, v847, 16);
      }

      while (v379);
    }

    buf[0].i32[0] = 2;
    sub_262333B04(&v843, &v838, buf);
    sub_2621E1F3C(v779, &v843, @"ultimate");
    v386 = *(&v844 + 1);
    v387 = v779;
    v829 = v386;
    if (!v829)
    {
LABEL_312:

      v498 = v845;
      v387;
      v498;
      *v921 = xmmword_2623A7710;
      memset(buf, 0, 24);
      sub_2621DD5D0(buf, v921, &v922, 4uLL);
      v909 = xmmword_2623A7720;
      buf[1].i64[1] = 0;
      v875 = 0uLL;
      sub_2621DD5D0(&buf[1].i64[1], &v909, &v910, 4uLL);
      v898 = xmmword_2623A7730;
      v877.i64[0] = 0;
      v876 = 0uLL;
      sub_2621DD5D0(&v876, &v898, &v899, 4uLL);
      *v893 = xmmword_2623A7740;
      v877.i64[1] = 0;
      v878 = 0uLL;
      sub_2621DD5D0(&v877.i64[1], v893, v894, 4uLL);
      *v919 = xmmword_2623A7750;
      v880.i64[0] = 0;
      v879 = 0uLL;
      sub_2621DD5D0(&v879, v919, v920, 4uLL);
      v917 = xmmword_2623A7760;
      v880.i64[1] = 0;
      v881 = 0uLL;
      sub_2621DD5D0(&v880.i64[1], &v917, &v918, 4uLL);
      v903 = xmmword_2623A7770;
      memset(__p, 0, 24);
      sub_2621DD5D0(__p, &v903, &v904, 4uLL);
      *v896 = xmmword_2623A7780;
      *&__p[24] = 0;
      v883 = 0uLL;
      sub_2621DD5D0(&__p[24], v896, &v897, 4uLL);
      v929 = xmmword_2623A7790;
      v886 = 0;
      v884 = 0;
      v885 = 0;
      sub_2621DD5D0(&v884, &v929, v930, 4uLL);
      *v907 = xmmword_2623A77A0;
      memset(v887, 0, sizeof(v887));
      sub_2621DD5D0(v887, v907, &v908, 4uLL);
      *v905 = xmmword_2623A77B0;
      memset(v888, 0, 24);
      sub_2621DD5D0(v888, v905, &v906, 4uLL);
      v890 = 0;
      v889 = 0;
      v891 = 0;
      *v848 = &v889;
      v848[8] = 0;
      operator new();
    }

    v390 = 0;
LABEL_268:
    if (v390 >= objc_msgSend_count(v387, v388, v389))
    {
      goto LABEL_312;
    }

    v392 = objc_msgSend_objectAtIndexedSubscript_(v387, v391, v390);
    v395 = objc_msgSend_identifier(v392, v393, v394);
    v397 = objc_msgSend_objectForKey_(v829, v396, v395);

    if (!v397)
    {
      goto LABEL_284;
    }

    v400 = objc_msgSend_type(v392, v398, v399);
    v402 = objc_msgSend_isEqualToString_(v400, v401, @"Chair");

    if ((v402 & 1) == 0)
    {
      goto LABEL_284;
    }

    sub_26223FCCC(v392, 0);
    v406 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v403, @"Table", @"Storage", 0);
    for (n = 0; ; ++n)
    {
      if (n >= objc_msgSend_count(v387, v404, v405))
      {
        goto LABEL_283;
      }

      v409 = objc_msgSend_objectAtIndexedSubscript_(v387, v408, n);
      v412 = objc_msgSend_identifier(v409, v410, v411);
      if (objc_msgSend_isEqual_(v412, v413, v397))
      {
        v416 = objc_msgSend_type(v409, v414, v415);
        v418 = objc_msgSend_containsObject_(v406, v417, v416);

        if (v418)
        {
          v421 = objc_msgSend_copy(v397, v419, v420);
          sub_26223FCCC(v392, v421);

          if (qword_27FF0C060 != -1)
          {
            dispatch_once(&qword_27FF0C060, &unk_2874EE100);
          }

          v422 = qword_27FF0C058;
          if (os_log_type_enabled(v422, OS_LOG_TYPE_DEBUG))
          {
            v425 = objc_msgSend_identifier(v392, v423, v424);
            v428 = objc_msgSend_parent_id(v392, v426, v427);
            buf[0].i32[0] = 138412546;
            *(buf[0].i64 + 4) = v425;
            buf[0].i16[6] = 2112;
            *(&buf[0].i64[1] + 6) = v428;
            _os_log_debug_impl(&dword_2621C3000, v422, OS_LOG_TYPE_DEBUG, "Chair %@ is assigned parent-id as: %@", buf, 0x16u);
          }

LABEL_283:
LABEL_284:

          ++v390;
          goto LABEL_268;
        }
      }

      else
      {
      }
    }
  }

  v431 = v87;
  for (ii = 0; ii < objc_msgSend_count(v431, v429, v430); ++ii)
  {
    v433 = objc_msgSend_objectAtIndexedSubscript_(v431, v432, ii);
    v436 = objc_msgSend_type(v433, v434, v435);
    if (!objc_msgSend_isEqualToString_(v436, v437, @"Chair"))
    {
      goto LABEL_310;
    }

    v440 = objc_msgSend_boxesDict(v433, v438, v439);
    v442 = objc_msgSend_objectForKey_(v440, v441, @"rawdetection");
    v443 = v442 == 0;

    if (!v443)
    {
      v436 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], v444, @"Table", @"Storage", @"Cabinet", 0);
      v447 = 0;
      v448 = -1;
      v449 = 1.1755e-38;
      while (1)
      {
        if (v447 >= objc_msgSend_count(v431, v445, v446))
        {
          if ((v448 & 0x80000000) == 0)
          {
            v484 = objc_msgSend_objectAtIndexedSubscript_(v431, v450, v448);
            v487 = objc_msgSend_identifier(v484, v485, v486);
            v490 = objc_msgSend_copy(v487, v488, v489);
            sub_26223FCCC(v433, v490);

            if (qword_27FF0C060 != -1)
            {
              dispatch_once(&qword_27FF0C060, &unk_2874EE100);
            }

            v491 = qword_27FF0C058;
            if (os_log_type_enabled(v491, OS_LOG_TYPE_DEBUG))
            {
              v494 = objc_msgSend_identifier(v433, v492, v493);
              v497 = objc_msgSend_parent_id(v433, v495, v496);
              buf[0].i32[0] = 138412546;
              *(buf[0].i64 + 4) = v494;
              buf[0].i16[6] = 2112;
              *(&buf[0].i64[1] + 6) = v497;
              _os_log_debug_impl(&dword_2621C3000, v491, OS_LOG_TYPE_DEBUG, "Online Chair %@ is assigned parent-id as: %@", buf, 0x16u);
            }
          }

LABEL_310:

          goto LABEL_311;
        }

        v451 = objc_msgSend_objectAtIndexedSubscript_(v431, v450, v447);
        v454 = objc_msgSend_type(v451, v452, v453);
        if ((objc_msgSend_containsObject_(v436, v455, v454) & 1) == 0)
        {

          goto LABEL_303;
        }

        v458 = objc_msgSend_boxesDict(v451, v456, v457);
        v460 = objc_msgSend_objectForKey_(v458, v459, @"rawdetection");
        v461 = v460 == 0;

        if (v461)
        {
          goto LABEL_303;
        }

        v880 = 0u;
        v879 = 0u;
        v878 = 0u;
        v877 = 0u;
        v876 = 0u;
        v875 = 0u;
        memset(buf, 0, sizeof(buf));
        v464 = objc_msgSend_boxesDict(v451, v462, v463);
        v466 = objc_msgSend_objectForKey_(v464, v465, @"rawdetection");
        sub_262211250(buf, v466);

        v467 = v877.f32[2];
        v468 = buf[0].f32[2];
        v471 = objc_msgSend_type(v451, v469, v470);
        v475 = v467 - v468;
        if (objc_msgSend_isEqualToString_(v471, v472, @"Cabinet"))
        {
          break;
        }

        v479 = objc_msgSend_type(v451, v473, v474);
        if (objc_msgSend_isEqualToString_(v479, v480, @"Storage"))
        {
          v476 = v475 > 1.3;

LABEL_298:
          if (v476)
          {
            goto LABEL_303;
          }

          goto LABEL_301;
        }

LABEL_301:
        v867 = 0u;
        v868 = 0u;
        v865 = 0u;
        v866 = 0u;
        v863 = 0u;
        v864 = 0u;
        memset(v862, 0, sizeof(v862));
        v481 = objc_msgSend_boxesDict(v433, v477, v478);
        v483 = objc_msgSend_objectForKey_(v481, v482, @"rawdetection");
        sub_262211250(v862, v483);

        memset(v848, 0, sizeof(v848));
        v849.i64[0] = 0;
        sub_26220FA14(v848, v862, buf);
        if (*v848 > v449)
        {
          v449 = *v848;
          v448 = v447;
        }

LABEL_303:

        ++v447;
      }

      v476 = v475 > 1.3;

      goto LABEL_298;
    }

LABEL_311:
  }

  v499 = v779;
  v500 = v796;
  v831 = v499;
  v786 = v500;
  v503 = objc_msgSend_count(v831, v501, v502);
  v506 = objc_msgSend_count(v786, v504, v505);
  v862[0].i32[0] = -1082130432;
  sub_2621CD1D8(buf, v506);
  sub_2621E1B50(v848, v503);
  if (buf[0].i64[0])
  {
    buf[0].i64[1] = buf[0].i64[0];
    operator delete(buf[0].i64[0]);
  }

  if (v503)
  {
    for (jj = 0; jj != v503; ++jj)
    {
      v509 = objc_msgSend_objectAtIndexedSubscript_(v831, v507, jj);
      v512 = objc_msgSend_boxesDict(v509, v510, v511);
      v514 = objc_msgSend_objectForKey_(v512, v513, @"rawdetection");
      v515 = v514 == 0;

      if (!v515)
      {
        v880 = 0u;
        v879 = 0u;
        v878 = 0u;
        v877 = 0u;
        v876 = 0u;
        v875 = 0u;
        memset(buf, 0, sizeof(buf));
        v516 = objc_msgSend_objectAtIndexedSubscript_(v831, v507, jj);
        v519 = objc_msgSend_boxesDict(v516, v517, v518);
        v521 = objc_msgSend_objectForKeyedSubscript_(v519, v520, @"rawdetection");
        sub_262211250(buf, v521);

        if (v506)
        {
          for (kk = 0; kk != v506; ++kk)
          {
            v523 = objc_msgSend_objectAtIndexedSubscript_(v831, v507, jj);
            v526 = objc_msgSend_type(v523, v524, v525);
            v528 = objc_msgSend_objectAtIndexedSubscript_(v786, v527, kk);
            v531 = objc_msgSend_type(v528, v529, v530);
            v532 = v526 == v531;

            if (v532)
            {
              v533 = objc_msgSend_objectAtIndexedSubscript_(v786, v507, kk);
              v536 = objc_msgSend_boxesDict(v533, v534, v535);
              v538 = objc_msgSend_objectForKey_(v536, v537, @"rawdetection");
              v539 = v538 == 0;

              if (!v539)
              {
                v867 = 0u;
                v868 = 0u;
                v865 = 0u;
                v866 = 0u;
                v863 = 0u;
                v864 = 0u;
                memset(v862, 0, sizeof(v862));
                v540 = objc_msgSend_objectAtIndexedSubscript_(v786, v507, kk);
                v543 = objc_msgSend_boxesDict(v540, v541, v542);
                v545 = objc_msgSend_objectForKeyedSubscript_(v543, v544, @"rawdetection");
                sub_262211250(v862, v545);

                sub_26220FA14(v921, buf, v862);
                *(*(*v848 + 24 * jj) + 4 * kk) = v921[0];
              }
            }
          }
        }
      }
    }
  }

  v862[0].i32[0] = -1;
  sub_2621DE86C(buf, v506);
  if (v506)
  {
    v546 = 0;
    v547 = *v848;
    do
    {
      if (v503)
      {
        v548 = 0;
        v549 = 0.0;
        v550 = buf[0].i64[0];
        v551 = v547;
        do
        {
          v552 = *(*v551 + 4 * v546);
          if (v552 > 0.3 && v552 > v549)
          {
            *(v550 + 4 * v546) = v548;
            v549 = v552;
          }

          ++v548;
          v551 += 3;
        }

        while (v503 != v548);
      }

      ++v546;
    }

    while (v546 != v506);
  }

  sub_2621E1C0C(v862, v503);
  if (v503)
  {
    for (mm = 0; mm != v503; ++mm)
    {
      if (v506)
      {
        for (nn = 0; nn != v506; ++nn)
        {
          if (*(*(*v848 + 24 * mm) + 4 * nn) > 0.3 && mm == *(buf[0].i64[0] + 4 * nn))
          {
            v557 = v862[0].i64[0] + 24 * mm;
            v559 = *(v557 + 8);
            v558 = *(v557 + 16);
            if (v559 >= v558)
            {
              v561 = *v557;
              v562 = v559 - *v557;
              v563 = v562 >> 2;
              v564 = (v562 >> 2) + 1;
              if (v564 >> 62)
              {
                sub_2621CBEB0();
              }

              v565 = v558 - v561;
              if (v565 >> 1 > v564)
              {
                v564 = v565 >> 1;
              }

              if (v565 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v566 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v566 = v564;
              }

              if (v566)
              {
                sub_2621C7F54(v566);
              }

              *(4 * v563) = nn;
              v560 = 4 * v563 + 4;
              memcpy(0, v561, v562);
              v567 = *v557;
              *v557 = 0;
              *(v557 + 8) = v560;
              *(v557 + 16) = 0;
              if (v567)
              {
                operator delete(v567);
              }
            }

            else
            {
              *v559 = nn;
              v560 = (v559 + 1);
            }

            *(v557 + 8) = v560;
          }
        }
      }
    }

    v568 = 0;
    v569 = 0;
    while (1)
    {
      v570 = objc_msgSend_objectAtIndexedSubscript_(v831, v554, v569);
      v922.i64[0] = 0;
      v921[0] = 0;
      v921[1] = 0;
      sub_2621C8B60(v921, *(v862[0].i64[0] + v568), *(v862[0].i64[0] + v568 + 8), (*(v862[0].i64[0] + v568 + 8) - *(v862[0].i64[0] + v568)) >> 2);
      v572 = v921[0];
      if (v921[1] != v921[0])
      {
        break;
      }

      if (v921[0])
      {
        goto LABEL_361;
      }

LABEL_362:

      ++v569;
      v568 += 24;
      if (v503 == v569)
      {
        goto LABEL_363;
      }
    }

    v573 = objc_msgSend_objectAtIndexedSubscript_(v786, v571, *v921[0]);
    v576 = objc_msgSend_identifier(v573, v574, v575);
    sub_26223FCBC(v570, v576);

LABEL_361:
    operator delete(v572);
    goto LABEL_362;
  }

LABEL_363:
  v921[0] = v862;
  sub_2621E1CB0(v921);
  if (buf[0].i64[0])
  {
    buf[0].i64[1] = buf[0].i64[0];
    operator delete(buf[0].i64[0]);
  }

  buf[0].i64[0] = v848;
  sub_2621E1D40(buf);

  if ((a5 & 1) == 0)
  {
    v577 = v831;
    if (v577)
    {
      v845 = 0u;
      v846 = 0u;
      v843 = 0u;
      v844 = 0u;
      v808 = v577;
      v815 = v577;
      v579 = objc_msgSend_countByEnumeratingWithState_objects_count_(v815, v578, &v843, buf, 16);
      if (v579)
      {
        v824 = *v844;
        v582 = vdup_n_s32(0xBCA3D70A);
        do
        {
          v583 = v579;
          for (i1 = 0; i1 != v583; ++i1)
          {
            if (*v844 != v824)
            {
              objc_enumerationMutation(v815);
            }

            v585 = *(*(&v843 + 1) + 8 * i1);
            *v919 = 0u;
            memset(v920, 0, sizeof(v920));
            v586 = objc_msgSend_boxesDict(v585, v580, v581);
            v589 = objc_msgSend_allKeys(v586, v587, v588);

            v593 = objc_msgSend_countByEnumeratingWithState_objects_count_(v589, v590, v919, v862, 16);
            if (v593)
            {
              v594 = **&v920[0];
              do
              {
                for (i2 = 0; i2 != v593; ++i2)
                {
                  if (**&v920[0] != v594)
                  {
                    objc_enumerationMutation(v589);
                  }

                  v596 = *(v919[1] + i2);
                  v854 = 0u;
                  v855 = 0u;
                  v852 = 0u;
                  v853 = 0u;
                  v850 = 0u;
                  v851 = 0u;
                  *v848 = 0u;
                  v849 = 0u;
                  v597 = objc_msgSend_boxesDict(v585, v591, v592);
                  v599 = objc_msgSend_objectForKeyedSubscript_(v597, v598, v596);
                  sub_262211250(v848, v599);

                  sub_26220F644(&v929, v848);
                  *(v929 + 12) = vadd_f32(*(v929 + 12), v582);
                  sub_26220FF88(v921, &v929);
                  v852 = v925;
                  v853 = v926;
                  v854 = v927;
                  v855 = v928;
                  *v848 = *v921;
                  v849 = v922;
                  v850 = v923;
                  v851 = v924;
                  sub_26223FC2C(v585, v848, v596);
                  if (v929)
                  {
                    *(&v929 + 1) = v929;
                    operator delete(v929);
                  }
                }

                v593 = objc_msgSend_countByEnumeratingWithState_objects_count_(v589, v591, v919, v862, 16);
              }

              while (v593);
            }
          }

          v579 = objc_msgSend_countByEnumeratingWithState_objects_count_(v815, v580, &v843, buf, 16);
        }

        while (v579);
      }

      v577 = v808;
    }
  }

  v809 = v780;
  v600 = v831;
  v603 = v600;
  if (v780)
  {
    if (v600)
    {
      v803 = v600;
      v749 = objc_msgSend_count(v809, v601, v602);
      v603 = v803;
      if (v749)
      {
        v752 = 0;
        v753 = 3.4028e38;
        while (v752 < objc_msgSend_count(v809, v750, v751))
        {
          v755 = objc_msgSend_objectAtIndexedSubscript_(v809, v754, v752);
          sub_2621E283C(buf, v755);
          if (*&__p[20] < v753)
          {
            v753 = *&__p[20];
          }

          ++v752;
        }

        v924 = 0u;
        v923 = 0u;
        v922 = 0u;
        *v921 = 0u;
        v806 = v803;
        v826 = objc_msgSend_countByEnumeratingWithState_objects_count_(v806, v756, v921, buf, 16);
        if (v826)
        {
          v818 = *v922.i64[0];
          do
          {
            for (i3 = 0; i3 != v826; ++i3)
            {
              if (*v922.i64[0] != v818)
              {
                objc_enumerationMutation(v806);
              }

              v759 = *(v921[1] + i3);
              v843 = 0u;
              v844 = 0u;
              v845 = 0u;
              v846 = 0u;
              v760 = objc_msgSend_boxesDict(v759, v757, v758);
              v763 = objc_msgSend_allKeys(v760, v761, v762);

              v766 = objc_msgSend_countByEnumeratingWithState_objects_count_(v763, v764, &v843, v862, 16);
              if (v766)
              {
                v767 = *v844;
                do
                {
                  for (i4 = 0; i4 != v766; ++i4)
                  {
                    if (*v844 != v767)
                    {
                      objc_enumerationMutation(v763);
                    }

                    v769 = *(*(&v843 + 1) + 8 * i4);
                    if ((objc_msgSend_isEqualToString_(v769, v765, @"wallaligned") & 1) != 0 || objc_msgSend_isEqualToString_(v769, v765, @"ultimate"))
                    {
                      v854 = 0u;
                      v855 = 0u;
                      v852 = 0u;
                      v853 = 0u;
                      v850 = 0u;
                      v851 = 0u;
                      *v848 = 0u;
                      v849 = 0u;
                      v772 = objc_msgSend_boxesDict(v759, v765, v770);
                      v774 = objc_msgSend_objectForKeyedSubscript_(v772, v773, v769);
                      sub_262211250(v848, v774);

                      LODWORD(v771) = *&v848[8];
                      if (*&v848[8] <= (v753 + 0.3))
                      {
                        *&v848[8] = v753;
                        v849.f32[2] = v753;
                        v850.f32[2] = v753;
                        v851.f32[2] = v753;
                        sub_26223FC2C(v759, v848, v769);
                      }
                    }
                  }

                  v766 = objc_msgSend_countByEnumeratingWithState_objects_count_(v763, v765, &v843, v862, 16, v771);
                }

                while (v766);
              }
            }

            v826 = objc_msgSend_countByEnumeratingWithState_objects_count_(v806, v757, v921, buf, 16);
          }

          while (v826);
        }

        v603 = v803;
      }
    }
  }

  v604 = v603;

  v605 = v604;
  v843 = 0u;
  v844 = 0u;
  v845 = 0u;
  v846 = 0u;
  v787 = v605;
  exception_objecta = objc_msgSend_countByEnumeratingWithState_objects_count_(v787, v606, &v843, v921, 16);
  if (exception_objecta)
  {
    v783 = *v844;
    do
    {
      v790 = 0;
      do
      {
        if (*v844 != v783)
        {
          objc_enumerationMutation(v787);
        }

        v792 = *(*(&v843 + 1) + 8 * v790);
        v609 = objc_msgSend_type(v792, v607, v608);
        v611 = objc_msgSend_isEqualToString_(v609, v610, @"Dishwasher");

        if (v611 & 1) != 0 || (objc_msgSend_type(v792, v612, v613), v614 = objc_claimAutoreleasedReturnValue(), v616 = objc_msgSend_isEqualToString_(v614, v615, @"Oven"), v614, (v616))
        {
          v825 = 0;
          v805 = 1;
          v619 = 0.03;
        }

        else
        {
          v727 = objc_msgSend_type(v792, v617, v618);
          v729 = objc_msgSend_isEqualToString_(v727, v728, @"Sink");

          if ((v729 & 1) == 0)
          {
            goto LABEL_444;
          }

          v805 = 0;
          v825 = 1;
          v619 = 0.0;
        }

        v620 = v792;
        v621 = v787;
        v832 = v620;
        v624 = objc_msgSend_parent_id(v620, v622, v623);
        v625 = v621;
        v789 = v625;
        v816 = v624;
        if (v816)
        {
          v863 = 0u;
          v864 = 0u;
          memset(v862, 0, sizeof(v862));
          v810 = v625;
          v628 = objc_msgSend_countByEnumeratingWithState_objects_count_(v810, v627, v862, buf, 16);
          if (v628)
          {
            v629 = *v862[1].i64[0];
LABEL_399:
            v630 = 0;
            while (1)
            {
              if (*v862[1].i64[0] != v629)
              {
                objc_enumerationMutation(v810);
              }

              v626 = *(v862[0].i64[1] + 8 * v630);
              v635 = objc_msgSend_identifier(v626, v631, v632);
              if (v635)
              {
                v636 = objc_msgSend_identifier(v626, v633, v634);
                v639 = objc_msgSend_UUIDString(v636, v637, v638);
                v642 = objc_msgSend_UUIDString(v816, v640, v641);
                v644 = objc_msgSend_isEqualToString_(v639, v643, v642);

                if (v644)
                {
                  break;
                }
              }

              if (v628 == ++v630)
              {
                v628 = objc_msgSend_countByEnumeratingWithState_objects_count_(v810, v645, v862, buf, 16);
                if (v628)
                {
                  goto LABEL_399;
                }

                goto LABEL_406;
              }
            }
          }

          else
          {
LABEL_406:
            v626 = 0;
          }
        }

        else
        {
          v626 = 0;
        }

        if (v626)
        {
          v646 = @"wallaligned";
          v907[0] = @"wallaligned";
          v647 = @"ultimate";
          v648 = 0;
          v907[1] = @"ultimate";
          do
          {
            v649 = v907[v648];
            v652 = objc_msgSend_boxesDict(v832, v650, v651);
            v654 = objc_msgSend_objectForKey_(v652, v653, v649);

            v657 = objc_msgSend_boxesDict(v626, v655, v656);
            v659 = objc_msgSend_objectForKey_(v657, v658, v649);

            if (v654 && v659)
            {
              v880 = 0u;
              v879 = 0u;
              v878 = 0u;
              v877 = 0u;
              v876 = 0u;
              v875 = 0u;
              memset(buf, 0, sizeof(buf));
              sub_262211250(buf, v659);
              sub_26220F644(v919, buf);
              v660 = *(v919[0] + 6);
              v867 = 0u;
              v868 = 0u;
              v865 = 0u;
              v866 = 0u;
              v863 = 0u;
              v864 = 0u;
              memset(v862, 0, sizeof(v862));
              sub_262211250(v862, v654);
              sub_26220F644(&v929, v862);
              v661 = v929;
                ;
              }

              v663 = v660 + (i5 / 1.57079633) * 1.57079633;
              *(v929 + 24) = v663;
              v664 = v661[1].f32[0];
              v665 = v661[2].f32[1];
              v666 = v919[0];
              v667 = *(v919[0] + 2) + (*(v919[0] + 5) * 0.5);
              v668 = (v664 - v667) < 0.03;
              v669 = v667 - (v664 + (v665 * 0.5));
              if (!v825)
              {
                v668 = v669 < v619;
              }

              v670 = v669 - v619;
              if (!v668)
              {
                v670 = 0.0;
              }

              v661[1].f32[0] = v664 + (v670 * 0.5);
              v661[2].f32[1] = v665 + v670;
              if (v805)
              {
                  ;
                }

                v817 = *v661;
                v811 = v661[2].f32[0];
                v672 = (fmodf(i6, 6.2832) / 1.57079633);
                if (v672 >= 4)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  MEMORY[0x266727130](exception, "");
                  __cxa_throw(exception, &unk_2874EF270, MEMORY[0x277D82600]);
                }

                v673 = -1.57079633 - v663;
                v675 = __sincosf_stret(v673);
                v674.f32[0] = v675.__cosval;
                v676.i32[1] = v817.i32[1];
                v677 = 3;
                if ((v672 & 1) == 0)
                {
                  v677 = 4;
                }

                v676.f32[0] = v666[1];
                v678 = vdup_lane_s32(v817, 0);
                v678.f32[0] = *v666;
                v679 = vmla_n_f32(vmul_n_f32(v676, v675.__sinval), v678, v675.__cosval);
                v678.f32[0] = v666[v677];
                v678.f32[1] = v811;
                v680 = vadd_f32(v679, vmul_f32(v678, 0x3F0000003F000000));
                v680.f32[0] = vsub_f32(v680, vdup_lane_s32(v680, 1)).f32[0];
                v661[2].f32[0] = v811 + v680.f32[0];
                v674.i32[1] = LODWORD(v675.__sinval);
                *v661 = vadd_f32(v817, vmul_f32(vmul_n_f32(v674, v680.f32[0]), 0x3F0000003F000000));
              }

              sub_26220FF88(v848, &v929);
              v865 = v852;
              v866 = v853;
              v867 = v854;
              v868 = v855;
              v862[0] = *v848;
              v862[1] = v849;
              v863 = v850;
              v864 = v851;
              v683 = objc_msgSend_boxesDict(v832, v681, v682);
              v686 = sub_2622113C0(v862, v684, v685);
              objc_msgSend_setValue_forKey_(v683, v687, v686, v649);

              if (v825)
              {
                v692 = __sincosf_stret(*(v919[0] + 6));
                *v691.i32 = v692.__cosval;
                *v690.i32 = v692.__sinval;
                v693 = 0;
                v694 = vdupq_lane_s32(*v691.i8, 0);
                *&v691.i32[1] = -v692.__sinval;
                v695 = vzip1q_s32(v691, 0);
                v696 = vzip1q_s32(v695, v690);
                v697 = vzip2q_s32(v695, v694);
                v696.i32[3] = v798;
                v698 = v697;
                v698.i32[3] = v801;
                v699 = xmmword_2623A7700;
                v699.i32[3] = v804;
                v812 = v699.i64[1];
                v819 = v696.i64[1];
                v700 = vzip1q_s32(v696, v699);
                v701 = vzip1q_s32(v698, 0);
                v702 = vzip2q_s32(v700, v701);
                v703.i64[0] = 0x80000000800000;
                v703.i64[1] = 0x80000000800000;
                v704 = vnegq_f32(v703);
                do
                {
                  v705 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v692.__sinval), LODWORD(v692.__cosval)), COERCE_FLOAT(*&buf[v693])), v697, *buf[v693].f32, 1), xmmword_2623A7700, buf[v693], 2);
                  buf[v693] = v705;
                  v704.i32[3] = 0;
                  v705.i32[3] = 0;
                  v704 = vminnmq_f32(v704, v705);
                  v703.i32[3] = 0;
                  v703 = vmaxnmq_f32(v703, v705);
                  ++v693;
                }

                while (v693 != 4);
                v706 = 0;
                v707 = vmvn_s8(vcgt_f32(vsub_f32(*v703.f32, *v704.f32), vdup_n_s32(0x3D75C28Fu)));
                v708 = v707.i8[0] | v707.i8[4];
                v709 = vzip1q_s32(v700, v701);
                v710.i64[1] = v812;
                v710.i64[0] = v819;
                v711 = vadd_f32(*v704.f32, vdup_n_s32(0x3CF5C28Fu));
                v712 = vadd_f32(*v703.f32, vdup_n_s32(0xBCF5C28F));
                if (v708)
                {
                  v713 = -1;
                }

                else
                {
                  v713 = 0;
                }

                v714 = vdup_n_s32(v713);
                v715 = vbsl_s8(v714, *v704.f32, v711);
                v716 = vbsl_s8(v714, *v703.f32, v712);
                do
                {
                  v717 = &v862[v706];
                  v718 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(LODWORD(v692.__sinval), LODWORD(v692.__cosval)), COERCE_FLOAT(*&v862[v706])), v697, *v862[v706].f32, 1), xmmword_2623A7700, v862[v706], 2);
                  *v717 = v718;
                  v862[v706].i32[2] = v718.i32[2];
                  *v717->f32 = vminnm_f32(vmaxnm_f32(*v718.f32, v715), v716);
                  v719 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v709, COERCE_FLOAT(*&v862[v706])), v702, *v862[v706].f32, 1), v710, v862[v706], 2);
                  *v717 = v719;
                  v717[4].i64[0] = v719.i64[0];
                  ++v706;
                }

                while (v706 != 4);
                v720 = objc_msgSend_boxesDict(v832, v688, *&v689);
                v723 = sub_2622113C0(v862, v721, v722);
                objc_msgSend_setValue_forKey_(v720, v724, v723, v649);

                v798 = HIDWORD(v819);
                v804 = HIDWORD(v812);
              }

              if (v929)
              {
                *(&v929 + 1) = v929;
                operator delete(v929);
              }

              if (v919[0])
              {
                v919[1] = v919[0];
                operator delete(v919[0]);
              }
            }

            ++v648;
          }

          while (v648 != 2);
          for (i7 = 1; i7 != -1; --i7)
          {
          }
        }

LABEL_444:
        ++v790;
      }

      while (v790 != exception_objecta);
      v730 = objc_msgSend_countByEnumeratingWithState_objects_count_(v787, v726, &v843, v921, 16);
      exception_objecta = v730;
    }

    while (v730);
  }

  v731 = v787;
  memset(v862, 0, sizeof(v862));
  v863 = 0u;
  v864 = 0u;
  v326 = v731;
  v735 = objc_msgSend_countByEnumeratingWithState_objects_count_(v326, v732, v862, buf, 16);
  if (v735)
  {
    v736 = *v862[1].i64[0];
    do
    {
      for (i8 = 0; i8 != v735; ++i8)
      {
        if (*v862[1].i64[0] != v736)
        {
          objc_enumerationMutation(v326);
        }

        v738 = *(v862[0].i64[1] + 8 * i8);
        v739 = objc_msgSend_beautified_parts(v738, v733, v734);
        v742 = objc_msgSend_count(v739, v740, v741) == 0;

        if (v742)
        {
          v743 = objc_msgSend_parts(v738, v733, v734);
          v746 = objc_msgSend_copy(v743, v744, v745);
          sub_26223FCDC(v738, v746);
        }
      }

      v735 = objc_msgSend_countByEnumeratingWithState_objects_count_(v326, v733, v862, buf, 16);
    }

    while (v735);
  }

  buf[0].i64[0] = &v838;
  sub_2621EAAB0(buf);

LABEL_459:
  v747 = *MEMORY[0x277D85DE8];

  return v326;
}

void sub_2621E9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621EAB04(&STACK[0x690]);
  STACK[0x380] = &a67;
  sub_2621E35E4(&STACK[0x380]);

  *(v67 - 192) = &v74;
  sub_2621EAAB0((v67 - 192));

  _Unwind_Resume(v72);
}

void sub_2621E9BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    operator delete(v71);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v73 = STACK[0x378];
  v74 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a67;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a71;
  sub_2621E35E4(&STACK[0x380]);

  JUMPOUT(0x2621EAA48);
}

void sub_2621E9BE4()
{
  while (1)
  {
    if (*(v0 - 1) < 0)
    {
      operator delete(*(v0 - 3));
    }

    v0 -= 4;
    if (v0 == &STACK[0x450])
    {
      v3 = &v4;
      sub_2621E1CB0(&v3);

      JUMPOUT(0x2621EA518);
    }
  }
}

void sub_2621E9C30()
{
  v2 = &v3;
  sub_2621E1CB0(&v2);

  JUMPOUT(0x2621EA518);
}

void sub_2621E9C38()
{
  sub_2621E1CB0(&STACK[0x2B0]);
  v0 = &STACK[0x548];
  v1 = -264;
  while (1)
  {
    v2 = *(v0 - 1);
    if (v2)
    {
      *v0 = v2;
      operator delete(v2);
    }

    v0 -= 3;
    v1 += 24;
    if (!v1)
    {
      JUMPOUT(0x2621EA1ECLL);
    }
  }
}

void sub_2621E9C80()
{
  *(v0 - 192) = &v7;
  sub_2621EAAB0(v0 - 192);

  _Unwind_Resume(v5);
}

void sub_2621E9D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v73;
    operator delete(v73);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  sub_2621C74C4(&a71);
  JUMPOUT(0x2621EA5E8);
}

void sub_2621E9D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v68;
    operator delete(v68);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  JUMPOUT(0x2621EA5E0);
}

void sub_2621E9DA8()
{
  sub_2621E35E4(&STACK[0x890]);

  JUMPOUT(0x2621EA6D8);
}

void sub_2621E9DE4()
{
  *(v5 - 192) = &v12;
  sub_2621EAAB0((v5 - 192));

  _Unwind_Resume(v10);
}

void sub_2621E9E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x5D0])
  {
    operator delete(STACK[0x5D0]);
  }

  if (v71)
  {
    operator delete(v71);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v74 = STACK[0x378];
  v75 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a67;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a71;
  sub_2621E35E4(&STACK[0x380]);

  *(v73 - 192) = &v82;
  sub_2621EAAB0((v73 - 192));

  _Unwind_Resume(v80);
}

void sub_2621E9E74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_2621E9E98()
{
  __cxa_end_catch();
  sub_2621C74C4(&STACK[0x5D0]);
  JUMPOUT(0x2621EA534);
}

void sub_2621E9EA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2621C5294(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2621E9EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x770];
  if (STACK[0x770])
  {
    STACK[0x778] = v66;
    operator delete(v66);
  }

  sub_262211790(&STACK[0x380]);
  sub_2622371D0(&STACK[0x710]);
  JUMPOUT(0x2621EA5E0);
}

void sub_2621E9F5C()
{
  sub_2623129C0(1, v0);
  sub_262312958(&STACK[0x890]);
  v1 = &STACK[0x598];
  v2 = -352;
  while (1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    v1 -= 4;
    v2 += 32;
    if (!v2)
    {
      JUMPOUT(0x2621EA1DCLL);
    }
  }
}

void sub_2621E9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x450] = &STACK[0x850];
  sub_2621E35E4(&STACK[0x450]);
  if (v71)
  {
    JUMPOUT(0x2621E9FD4);
  }

  if (v72)
  {
    operator delete(v72);
  }

  STACK[0x450] = &STACK[0x690];
  sub_2621E35E4(&STACK[0x450]);
  v74 = STACK[0x378];
  v75 = STACK[0x370];

  STACK[0x450] = &STACK[0x810];
  sub_2621E35E4(&STACK[0x450]);

  STACK[0x380] = &a67;
  sub_2621E35E4(&STACK[0x380]);

  STACK[0x380] = &a71;
  sub_2621E35E4(&STACK[0x380]);

  JUMPOUT(0x2621EAA48);
}

void sub_2621EA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_262211790(&STACK[0x450]);

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA07C()
{
  operator delete(v1);

  STACK[0x890] = &STACK[0x380];
  sub_2621E1CB0(&STACK[0x890]);
  JUMPOUT(0x2621EA3F4);
}

void sub_2621EA0EC()
{
  v0 = STACK[0x650];
  if (STACK[0x650])
  {
    STACK[0x658] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x2621EA528);
}

void sub_2621EA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_262211790(&STACK[0x380]);
  sub_2621C74C4(&a71);
  JUMPOUT(0x2621EA5E8);
}

void sub_2621EA154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, void *a47)
{
  *(v47 - 192) = &v54;
  sub_2621EAAB0((v47 - 192));

  _Unwind_Resume(v52);
}

void sub_2621EA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA258()
{
  sub_26220AA28(&STACK[0x380]);
  STACK[0x5B8] = v0;
  JUMPOUT(0x2621EA268);
}

void sub_2621EA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA490()
{
  operator delete(v0);
  sub_2621C74C4(&STACK[0x5D0]);
  JUMPOUT(0x2621EA534);
}

void sub_2621EA594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  *(v31 - 192) = &v38;
  sub_2621EAAB0((v31 - 192));

  _Unwind_Resume(v36);
}

void sub_2621EA5B0()
{
  *(v1 - 192) = &v8;
  sub_2621EAAB0((v1 - 192));

  _Unwind_Resume(v6);
}

void sub_2621EA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  STACK[0x450] = &STACK[0x2B0];
  sub_2621E1D40(&STACK[0x450]);

  *(v53 - 192) = &v60;
  sub_2621EAAB0((v53 - 192));

  _Unwind_Resume(v58);
}

void sub_2621EA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA78C()
{
  *(v1 - 192) = &v8;
  sub_2621EAAB0((v1 - 192));

  _Unwind_Resume(v6);
}

void sub_2621EA7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8A0] = v68;
  STACK[0x898] = v64;
  STACK[0x890] = v63;

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8A0] = v67;
  STACK[0x898] = v64;
  STACK[0x890] = v63;

  if (v63)
  {
    STACK[0x898] = v63;
    operator delete(v63);
  }

  STACK[0x450] = &a63;
  sub_2621EAAB0(&STACK[0x450]);

  JUMPOUT(0x2621EAA60);
}

void sub_2621EA828()
{
  STACK[0x8A0] = v2;
  STACK[0x898] = v1;
  STACK[0x890] = v0;
  JUMPOUT(0x2621EA860);
}

void sub_2621EA9FC()
{
  v1 = *(v0 - 192);
  if (v1)
  {
    *(v0 - 184) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x2621EAA34);
}

void sub_2621EAAB0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2621EAB94(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2621EAB04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_2621EAAB0(&v4);
  return a1;
}

void **sub_2621EAB4C(void **a1)
{
  v3 = a1;
  sub_2621EAAB0(&v3);
  return a1;
}

void sub_2621EAB94(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 192)
  {

    v5 = *(i - 40);
    if (v5)
    {
      *(i - 32) = v5;
      operator delete(v5);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_2621EAC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = a2;
  v5 = a1 + 160;
  do
  {
    v6 = v5 - 160;
    v7 = *(v5 - 160);
    v8 = *(v5 - 144);
    v9 = *(v5 - 112);
    *(a3 + 32) = *(v5 - 128);
    *(a3 + 48) = v9;
    *a3 = v7;
    *(a3 + 16) = v8;
    v10 = *(v5 - 96);
    v11 = *(v5 - 80);
    v12 = *(v5 - 48);
    *(a3 + 96) = *(v5 - 64);
    *(a3 + 112) = v12;
    *(a3 + 64) = v10;
    *(a3 + 80) = v11;
    objc_storeStrong((a3 + 128), *(v5 - 32));
    *(a3 + 136) = *(v5 - 24);
    objc_storeStrong((a3 + 144), *(v5 - 16));
    if (a3 != v5 - 160)
    {
      sub_2621CA9DC((a3 + 152), *(v5 - 8), *v5, (*v5 - *(v5 - 8)) >> 2);
    }

    objc_storeStrong((a3 + 176), *(v5 + 16));
    *(a3 + 184) = *(v5 + 24);
    a3 += 192;
    v5 += 192;
  }

  while (v6 + 192 != v4);
  return v4;
}

uint64_t sub_2621EACD8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      *(v4 + 32) = v6[2];
      *(v4 + 48) = v9;
      *v4 = v7;
      *(v4 + 16) = v8;
      v10 = v6[4];
      v11 = v6[5];
      v12 = v6[7];
      *(v4 + 96) = v6[6];
      *(v4 + 112) = v12;
      *(v4 + 64) = v10;
      *(v4 + 80) = v11;
      *(v4 + 128) = *(v6 + 16);
      *(v4 + 136) = *(v6 + 34);
      v13 = *(v6 + 18);
      *(v4 + 152) = 0;
      *(v4 + 144) = v13;
      *(v4 + 160) = 0;
      *(v4 + 168) = 0;
      sub_2621C8E70(v4 + 152, *(v6 + 19), *(v6 + 20), (*(v6 + 20) - *(v6 + 19)) >> 2);
      *(v4 + 176) = *(v6 + 22);
      *(v4 + 184) = *(v6 + 92);
      v6 += 12;
      v4 = v18 + 192;
      v18 += 192;
    }

    while (v6 != a3);
  }

  v16 = 1;
  sub_2621EAEDC(v15);
  return v4;
}

void sub_2621EADF4(uint64_t *a1)
{
  if (*a1)
  {
    sub_2621EAB94(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2621EAE34(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_2621EAE84(a2);
  }

  sub_2621CBEB0();
}

void sub_2621EAE84(unint64_t a1)
{
  if (a1 < 0x155555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_2621EAEDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 192)
    {

      v6 = *(v4 - 40);
      if (v6)
      {
        *(v4 - 32) = v6;
        operator delete(v6);
      }
    }
  }

  return a1;
}

void sub_2621EB3AC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2621EB460(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v13 = 0;
    v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v6, v7, v5, &v13);

    if (!isDirectory || (v13 & 1) == 0)
    {
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
      objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v11, v12, v5, 1, 0, 0);
    }
  }
}

void sub_2621EB520(uint64_t a1, void *a2, uint64_t a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a1)
  {
    if (*(a1 + 177) == 1)
    {
      if (!a3 || *(a1 + 96) != 0.0 && (!*(a1 + 80) || (objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timeIntervalSinceDate_(v8, v9, *(a1 + 80)), v11 = v10, v12 = 1.0 / *(a1 + 96), v8, v11 >= v12)))
      {
        v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
        v14 = *(a1 + 80);
        *(a1 + 80) = v13;

        v16 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 24), v15, @"Live");
        v17 = *(a1 + 16);
        v20 = objc_msgSend_copy(v7, v18, v19);
        v21 = *(a1 + 88);
        dispatch_group_enter(v17);
        v22 = *(a1 + 8);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2621EBA28;
        block[3] = &unk_279B30520;
        v67 = v20;
        v69 = v67;
        v23 = v21;
        v70 = v23;
        v24 = v16;
        v71 = v24;
        v72 = a1;
        v25 = v17;
        v73 = v25;
        dispatch_async(v22, block);
        v28 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v26, v27);
        v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v29, a3);
        objc_msgSend_setObject_forKeyedSubscript_(v28, v31, v30, @"skipped");

        v34 = *(a1 + 104);
        if (v34)
        {
          v35 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(v34, v32, v33);
          v38 = objc_msgSend_numberWithDouble_(v35, v36, v37);
          objc_msgSend_setObject_forKeyedSubscript_(v28, v39, v38, @"timestamp");

          v40 = MEMORY[0x277CCABB0];
          objc_msgSend_timestamp(*(a1 + 104), v41, v42);
          v46 = objc_msgSend_numberWithDouble_(v40, v44, v45, v43 - *(a1 + 72));
          objc_msgSend_setObject_forKeyedSubscript_(v28, v47, v46, @"video_timestamp");
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v28, v32, &unk_2874FAB68, @"timestamp");
          objc_msgSend_setObject_forKeyedSubscript_(v28, v49, &unk_2874FAB68, @"video_timestamp");
        }

        objc_msgSend_addObject_(*(a1 + 32), v48, v28);
        if (*(a1 + 177) == 1 && ((*(a1 + 178) & 1) != 0 || *(a1 + 179) == 1))
        {
          v51 = *(a1 + 24);
          if (v51 && *(a1 + 104))
          {
            v64 = objc_msgSend_stringByAppendingPathComponent_(v51, v50, @"Live");
            v52 = *(a1 + 72);
            v65 = *(a1 + 104);
            v53 = *(a1 + 128);
            v86 = *(a1 + 112);
            v87 = v53;
            v54 = *(a1 + 160);
            v88 = *(a1 + 144);
            v89 = v54;
            v63 = objc_msgSend_count(*(a1 + 32), v55, v56);
            v62 = *(a1 + 178);
            v57 = *(a1 + 16);
            dispatch_group_enter(v57);
            queue = *(a1 + 8);
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = sub_2621EC0A4;
            v74[3] = &unk_279B30548;
            v79 = v64;
            v80 = v65;
            v82 = v57;
            v83 = v63;
            v84 = v52;
            v75 = v86;
            v76 = v87;
            v77 = v88;
            v78 = v89;
            v85 = v62;
            v81 = a1;
            v58 = v57;
            v59 = v65;
            v60 = v64;
            dispatch_async(queue, v74);
          }
        }
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

void sub_2621EBA28(uint64_t a1, const char *a2, uint64_t a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v94 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  obj = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v104, v111, 16);
  if (v6)
  {
    v95 = *v105;
    do
    {
      v7 = 0;
      do
      {
        if (*v105 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v104 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v10 = objc_msgSend_identifier(v8, v4, v5);
        v12 = objc_msgSend_objectForKeyedSubscript_(v9, v11, v10);

        if (v12)
        {
          objc_copyStruct(dest, (v12 + 96), 480, 1, 0);
        }

        else
        {
          memset(dest, 0, sizeof(dest));
        }

        v13 = v8;
        v16 = 0;
        v17 = 0;
        v20 = (objc_msgSend_count(v13, v14, v15) + 29) / 0x1EuLL;
        v21 = 1;
        while (v17 < objc_msgSend_count(v13, v18, v19))
        {
          v24 = *(objc_msgSend_points(v13, v22, v23) + 16 * v17);
          *&__src[v16 * 16] = v24;
          v25 = vabdq_f32(dest[v16], v24);
          v21 &= fmaxf(fmaxf(v25.f32[0], v25.f32[2]), v25.f32[1]) <= 0.000001;
          v17 += v20;
          ++v16;
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        v28 = *(v12 + 16);
        if (v28 != objc_msgSend_count(v13, v26, v27))
        {
          goto LABEL_19;
        }

        objc_msgSend_cameraPose(v13, v29, v30);
        dest[0] = v31;
        dest[1] = v32;
        dest[2] = v33;
        dest[3] = v34;
        v35 = *(v12 + 48);
        v36 = *(v12 + 64);
        v37 = *(v12 + 80);
        v101[0] = *(v12 + 32);
        v101[1] = v35;
        v101[2] = v36;
        v101[3] = v37;
        if (vmaxvq_f32(vabdq_f32(v31, v101[0])) > 0.001)
        {
          goto LABEL_19;
        }

        v38 = 1;
        while (v38 != 4)
        {
          v39 = v38;
          v40 = vmaxvq_f32(vabdq_f32(dest[v38], v101[v38]));
          ++v38;
          if (v40 > 0.001)
          {
            if ((v39 - 1) < 3)
            {
              goto LABEL_19;
            }

            break;
          }
        }

        if ((v21 & 1) == 0)
        {
LABEL_19:
          v41 = objc_alloc_init(RSKeyframeMetaExtend);
          v44 = objc_msgSend_count(v13, v42, v43);
          if (v41)
          {
            v41->super._size = v44;
          }

          v47 = objc_msgSend_identifier(v13, v45, v46);
          sub_2622AD434(v41, v47);

          objc_msgSend_cameraPose(v13, v48, v49);
          if (v41)
          {
            *v41->_anon_20 = v52;
            *&v41->_anon_20[16] = v53;
            *&v41->_anon_20[32] = v54;
            *&v41->_anon_20[48] = v55;
          }

          objc_msgSend_timestamp(v13, v50, v51);
          if (v41)
          {
            v41->super._timestamp = v58;
            memcpy(dest, __src, sizeof(dest));
            objc_copyStruct(&v41[1], dest, 480, 1, 0);
          }

          v59 = *(a1 + 40);
          v60 = objc_msgSend_identifier(v13, v56, v57);
          objc_msgSend_setObject_forKeyedSubscript_(v59, v61, v41, v60);

          objc_msgSend_addObject_(v94, v62, v13);
        }

        ++v7;
      }

      while (v7 != v6);
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v104, v111, 16);
      v6 = v63;
    }

    while (v63);
  }

  v64 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v64, v65, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v66 = MEMORY[0x277CCACA8];
  v67 = *(a1 + 48);
  v70 = objc_msgSend_date(MEMORY[0x277CBEAA8], v68, v69);
  v72 = objc_msgSend_stringFromDate_(v64, v71, v70);
  v74 = objc_msgSend_stringWithFormat_(v66, v73, @"%@/%@_fp_input.plist", v67, v72);

  v77 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v75, v76);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v78 = v94;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v79, &v97, v110, 16);
  if (v82)
  {
    v83 = *v98;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v98 != v83)
        {
          objc_enumerationMutation(v78);
        }

        v85 = *(*(&v97 + 1) + 8 * i);
        v86 = objc_msgSend_identifier(v85, v80, v81);
        objc_msgSend_setObject_forKeyedSubscript_(v77, v87, v85, v86);
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v78, v80, &v97, v110, 16);
    }

    while (v82);
  }

  v108 = @"keyframes";
  v88 = RSKeyframeSequenceToDictionary(v77);
  v109 = v88;
  v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v89, &v109, &v108, 1);

  sub_2621EB460(*(a1 + 56), *(a1 + 48));
  objc_msgSend_writeToFile_atomically_(v90, v91, v74, 0);
  dispatch_group_leave(*(a1 + 64));

  v92 = *MEMORY[0x277D85DE8];
}

void sub_2621EC0A4(uint64_t a1)
{
  texture[1] = *MEMORY[0x277D85DE8];
  v89 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v89, v2, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 96);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v9 = objc_msgSend_stringFromDate_(v89, v8, v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v10, @"%@/%@_Image.plist", v4, v9);

  v12 = sub_2621EC7FC(RSInternalInfoDumper, *(a1 + 104));
  v14 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v13, *(a1 + 128));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v14, @"keyframe_index");

  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(*(a1 + 104), v17, v18);
  v22 = objc_msgSend_numberWithDouble_(v16, v20, v21, v19 - *(a1 + 136));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v23, v22, @"video_timestamp");

  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, a1 + 32, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"cameraPose");

  v29 = objc_msgSend_depthBuffer(*(a1 + 104), v27, v28);
  Width = CVPixelBufferGetWidth(v29);
  Height = CVPixelBufferGetHeight(v29);
  if (Height * Width)
  {
    v34 = v29 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (*(a1 + 144))
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32);
    v39 = v36;
    if (v35)
    {
      v40 = objc_msgSend_colorBuffer(*(a1 + 104), v37, v38);
      v41 = MEMORY[0x277CCABB0];
      v42 = CVPixelBufferGetWidth(v40);
      v44 = objc_msgSend_numberWithUnsignedLong_(v41, v43, v42);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v45, v44, @"width");

      v46 = MEMORY[0x277CCABB0];
      v47 = CVPixelBufferGetHeight(v40);
      v49 = objc_msgSend_numberWithUnsignedLong_(v46, v48, v47);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v50, v49, @"height");

      if (!*(a1 + 112) || (pixelTransferSessionOut.data = 0, pixelBufferOut.data = 0, VTPixelTransferSessionCreate(0, &pixelTransferSessionOut)) || (v92 = *MEMORY[0x277CC4DE8], texture[0] = MEMORY[0x277CBEC10], v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, texture, &v92, 1), CVPixelBufferCreate(0, Width, Height, 0x20u, v52, &pixelBufferOut)) || !pixelBufferOut.data)
      {
        v53 = 0;
      }

      else
      {
        VTPixelTransferSessionTransferImage(pixelTransferSessionOut.data, v40, pixelBufferOut.data);
        VTPixelTransferSessionInvalidate(pixelTransferSessionOut.data);
        CFRelease(pixelTransferSessionOut.data);
        v53 = sub_2621ECB1C(pixelBufferOut.data, v87, v88);
        CVPixelBufferRelease(pixelBufferOut.data);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v39, v51, v53, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v39, v54, @"PNG", @"type");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, &unk_2874FAB78, @"width");
      objc_msgSend_setObject_forKeyedSubscript_(v39, v56, &unk_2874FAB78, @"height");
      v57 = objc_alloc_init(MEMORY[0x277CBEA90]);
      objc_msgSend_setObject_forKeyedSubscript_(v39, v58, v57, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v39, v59, @"PNG", @"type");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v12, v55, v39, @"image");
  }

  if (*(a1 + 145) == 1)
  {
    v60 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v31, v32);
    v63 = v60;
    if (!v35)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v60, v61, &unk_2874FAB78, @"width");
      objc_msgSend_setObject_forKeyedSubscript_(v63, v78, &unk_2874FAB78, @"height");
      v79 = objc_alloc_init(MEMORY[0x277CBEA90]);
      objc_msgSend_setObject_forKeyedSubscript_(v63, v80, v79, @"data");

      objc_msgSend_setObject_forKeyedSubscript_(v63, v81, @"PNG", @"type");
LABEL_25:
      objc_msgSend_setObject_forKeyedSubscript_(v12, v82, v63, @"depth");

      goto LABEL_26;
    }

    v64 = objc_msgSend_depthBuffer(*(a1 + 104), v61, v62);
    v66 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v65, Width);
    objc_msgSend_setObject_forKeyedSubscript_(v63, v67, v66, @"width");

    v69 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v68, Height);
    objc_msgSend_setObject_forKeyedSubscript_(v63, v70, v69, @"height");

    if (*(a1 + 112))
    {
      CVPixelBufferLockBaseAddress(v64, 1uLL);
      v72 = CVPixelBufferGetWidth(v64);
      v73 = CVPixelBufferGetHeight(v64);
      pixelTransferSessionOut.width = CVPixelBufferGetWidth(v64);
      pixelTransferSessionOut.height = CVPixelBufferGetHeight(v64);
      pixelTransferSessionOut.rowBytes = CVPixelBufferGetBytesPerRow(v64);
      BaseAddress = CVPixelBufferGetBaseAddress(v64);
      pixelBufferOut.height = v73;
      pixelBufferOut.width = v72;
      pixelBufferOut.rowBytes = 32 * v72;
      pixelTransferSessionOut.data = BaseAddress;
      pixelBufferOut.data = malloc_type_malloc(32 * v72 * v73, 0x1000040E0EAB150uLL);
      vImageConvert_FTo16U(&pixelTransferSessionOut, &pixelBufferOut, 0.0, 0.001, 0);
      CVPixelBufferUnlockBaseAddress(v64, 1uLL);
      texture[0] = 0;
      if (!CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v72, v73, 0x62313667u, pixelBufferOut.data, pixelBufferOut.rowBytes, 0, 0, 0, texture))
      {
        v77 = sub_2621ECB1C(texture[0], v75, v76);
        free(pixelBufferOut.data);
        CVPixelBufferRelease(texture[0]);
        objc_msgSend_setObject_forKeyedSubscript_(v63, v83, v77, @"data");
        goto LABEL_24;
      }

      free(pixelBufferOut.data);
    }

    v77 = 0;
    objc_msgSend_setObject_forKeyedSubscript_(v63, v71, 0, @"data");
LABEL_24:

    objc_msgSend_setObject_forKeyedSubscript_(v63, v84, @"PNG", @"type");
    goto LABEL_25;
  }

LABEL_26:
  sub_2621EB460(*(a1 + 112), *(a1 + 96));
  objc_msgSend_writeToFile_atomically_(v12, v85, v11, 0);
  dispatch_group_leave(*(a1 + 120));

  v86 = *MEMORY[0x277D85DE8];
}

id sub_2621EC7FC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v3, v4);
  v6 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(v2, v7, v8);
  v11 = objc_msgSend_numberWithDouble_(v6, v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v12, v11, @"timestamp");

  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_vioTrackingState(v2, v14, v15);
  v18 = objc_msgSend_numberWithInteger_(v13, v17, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v19, v18, @"vioTrackingState");

  v22 = objc_msgSend_camera(v2, v20, v21);
  objc_msgSend_transform(v22, v23, v24);
  v79 = v25;
  v80 = v26;
  v81 = v27;
  v82 = v28;

  v30 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v29, &v79, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v31, v30, @"cameraTransform");

  v34 = objc_msgSend_camera(v2, v32, v33, 0, 0, 0, 0, 0, 0, v79, v80, v81, v82);
  objc_msgSend_intrinsics(v34, v35, v36);
  DWORD2(v76) = v37;
  DWORD2(v77) = v38;
  *&v76 = v39;
  *&v77 = v40;
  DWORD2(v78) = v41;
  *&v78 = v42;

  v44 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v43, &v76, 48);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v45, v44, @"intrinsics", v76, v77, v78);

  v46 = MEMORY[0x277CCABB0];
  v49 = objc_msgSend_camera(v2, v47, v48);
  v52 = objc_msgSend_trackingState(v49, v50, v51);
  v54 = objc_msgSend_numberWithInteger_(v46, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v55, v54, @"cameraTrackingState");

  v58 = objc_msgSend_rawFeaturePoints(v2, v56, v57);
  v61 = objc_msgSend_count(v58, v59, v60);

  v63 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v62, v61);
  objc_msgSend_setObject_forKeyedSubscript_(v5, v64, v63, @"rawFeaturePointsCount");

  v65 = MEMORY[0x277CBEA90];
  v68 = objc_msgSend_rawFeaturePoints(v2, v66, v67);
  v71 = objc_msgSend_points(v68, v69, v70);
  v73 = objc_msgSend_dataWithBytes_length_(v65, v72, v71, 16 * v61);

  objc_msgSend_setObject_forKeyedSubscript_(v5, v74, v73, @"rawFeaturePoints");

  return v5;
}

void sub_2621ECAA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFData *sub_2621ECB1C(__CVBuffer *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_data(MEMORY[0x277CBEB28], a2, a3);
  v5 = CGImageDestinationCreateWithData(v4, @"public.png", 1uLL, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1647392359)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 0x10uLL, BytesPerRow, DeviceGray, 0x1000u);
    CGColorSpaceRelease(DeviceGray);
  }

  else if (PixelFormatType == 32)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v11 = CVPixelBufferGetBytesPerRow(a1);
    v12 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, v11, DeviceRGB, 6u);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v12 = 0;
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v12)
  {
    Image = CGBitmapContextCreateImage(v12);
  }

  else
  {
    Image = 0;
  }

  CGContextRelease(v12);
  if (v5 && Image)
  {
    CGImageDestinationAddImage(v5, Image, 0);
    CGImageDestinationFinalize(v5);
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  CFRelease(v5);
LABEL_14:
  CGImageRelease(Image);

  return v4;
}

void sub_2621ECCF8(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = v3;
  if (a1 && *(a1 + 177) == 1)
  {
    v7 = *(a1 + 40);
    v13 = @"final";
    v8 = objc_msgSend_dictionaryRepresentation(v3, v4, v5);
    v14[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v14, &v13, 1);
    objc_msgSend_addObject_(v7, v11, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2621ECDF8(uint64_t a1)
{
  v28 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDateFormat_(v28, v2, @"MM_dd_yyyy_HH_mm_ss_SSS");
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 96);
  v7 = objc_msgSend_date(MEMORY[0x277CBEAA8], v5, v6);
  v9 = objc_msgSend_stringFromDate_(v28, v8, v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v10, @"%@/%@_ARFrame.plist", v4, v9);

  v12 = sub_2621EC7FC(RSInternalInfoDumper, *(a1 + 104));
  v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, *(a1 + 128));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v14, @"keyframesCount");

  v16 = MEMORY[0x277CCABB0];
  objc_msgSend_timestamp(*(a1 + 104), v17, v18);
  v22 = objc_msgSend_numberWithDouble_(v16, v20, v21, v19 - *(a1 + 136));
  objc_msgSend_setObject_forKeyedSubscript_(v12, v23, v22, @"video_timestamp");

  v25 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v24, a1 + 32, 64);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"cameraPose");

  sub_2621EB460(*(a1 + 112), *(a1 + 96));
  objc_msgSend_writeToFile_atomically_(v12, v27, v11, 0);
  dispatch_group_leave(*(a1 + 120));
}

void sub_2621ECFF8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 40), a2, @"fp_debug_log.plist");
  objc_msgSend_writeToFile_atomically_(v2, v3, v4, 1);
}

void sub_2621ED930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a33 == 1)
  {
    sub_2621C50C4(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2621EE2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_26224C4F4(&a27);
  sub_26224C4F4(&a72);
  sub_2622C94CC(&a51);
  a27 = &a66;
  sub_2621DED18(&a27);
  a27 = &a69;
  sub_2621DED18(&a27);

  _Unwind_Resume(a1);
}

id sub_2621EEA88(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    a1 = sub_2621EEBA0(a1, v5, v6);
  }

  return a1;
}

void *sub_2621EEB10(void *a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a1[22];
    v5 = @"floorPlanDebug";
    v6[0] = v2;
    a1 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);
  }

  v3 = *MEMORY[0x277D85DE8];

  return a1;
}

RSFloorPlan *sub_2621EEBA0(uint64_t a1, void *a2, void *a3)
{
  v1180 = *MEMORY[0x277D85DE8];
  v1034 = a2;
  v1036 = a3;
  v1095 = 14205;
  v1096 = 0;
  kdebug_trace();
  v1041 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v5, v6);
  if (*(a1 + 184) == 1)
  {
    objc_msgSend_addObject_(*(a1 + 176), v7, v1041);
  }

  std::chrono::steady_clock::now();
  v1030.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  kdebug_trace();
  v8 = *(a1 + 64);
  v1042 = v1034;
  if (!v8)
  {
    goto LABEL_205;
  }

  objc_msgSend_removeAllObjects(*(v8 + 40), v9, v10);
  objc_msgSend_removeAllObjects(*(v8 + 48), v11, v12);
  v1086 = v8;
  v1048 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
  v1143 = 0u;
  v1144 = 0u;
  v1141 = 0u;
  v1142 = 0u;
  v17 = objc_msgSend_allValues(v1042, v15, v16);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v1141, v1171, 16);
  if (v21)
  {
    v22 = *v1142;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v1142 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = *(*(&v1141 + 1) + 8 * i);
        v25 = objc_msgSend_identifier(v24, v19, v20);
        if (v25)
        {
          v26 = objc_msgSend_count(v24, v19, v20) == 0;

          if (!v26)
          {
            v27 = objc_msgSend_identifier(v24, v19, v20);
            objc_msgSend_setObject_forKey_(v1048, v28, v24, v27);
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v1141, v1171, 16);
    }

    while (v21);
  }

  __p = v1048;
  v31 = objc_msgSend_array(MEMORY[0x277CBEB18], v29, v30);
  memset(v1148, 0, sizeof(v1148));
  v34 = objc_msgSend_allValues(__p, v32, v33);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v1148, buf, 16);
  if (v38)
  {
    v39 = **&v1148[1];
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (**&v1148[1] != v39)
        {
          objc_enumerationMutation(v34);
        }

        v41 = *(*(&v1148[0] + 1) + 8 * j);
        if (objc_msgSend_count(v41, v36, v37) >= 10)
        {
          v42 = objc_alloc_init(RSKeyframeMeta);
          v45 = objc_msgSend_identifier(v41, v43, v44);
          sub_2622AD434(v42, v45);

          objc_msgSend_cameraPose(v41, v46, v47);
          if (v42)
          {
            *&v42[1].super.isa = v50;
            *&v42[1]._size = v51;
            *&v42[2].super.isa = v52;
            *&v42[2]._size = v53;
          }

          v54 = objc_msgSend_count(v41, v48, v49);
          if (v42)
          {
            v42->_size = v54;
          }

          objc_msgSend_timestamp(v41, v55, v56);
          if (v42)
          {
            v42->_timestamp = v58;
          }

          objc_msgSend_addObject_(v31, v57, v42);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, v1148, buf, 16);
    }

    while (v38);
  }

  v59 = v31;
  v61 = objc_msgSend_sortedArrayUsingComparator_(v59, v60, &unk_2874EEF10);

  v1121 = 0uLL;
  *&v1122 = 0;
  v1137 = 0u;
  v1138 = 0u;
  v1139 = 0u;
  v1140 = 0u;
  obj = v61;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v1137, buf, 16);
  if (v63)
  {
    v1066 = *v1138;
    do
    {
      v1076 = v63;
      for (k = 0; k != v1076; ++k)
      {
        if (*v1138 != v1066)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v1137 + 1) + 8 * k);
        if (v65)
        {
          v66 = *(v65 + 8);
        }

        else
        {
          v66 = 0;
        }

        v67 = *(v1086 + 32);
        v68 = v66;
        v70 = objc_msgSend_objectForKeyedSubscript_(v67, v69, v68);
        LODWORD(v67) = v70 == 0;

        if (v67)
        {
          v73 = *(v1086 + 56);
          v74 = MEMORY[0x277CCABB0];
          v75 = objc_msgSend_count(v73, v71, v72);
          v77 = objc_msgSend_numberWithInt_(v74, v76, v75);
          if (v65)
          {
            v78 = *(v65 + 8);
          }

          else
          {
            v78 = 0;
          }

          v79 = v78;
          objc_msgSend_setObject_forKey_(v73, v80, v77, v79);

          if (v65)
          {
            v81 = *(v65 + 8);
          }

          else
          {
            v81 = 0;
          }

          v82 = *(v1086 + 40);
          v83 = v81;
          v85 = objc_msgSend_objectForKeyedSubscript_(__p, v84, v83);
          objc_msgSend_addObject_(v82, v86, v85);

          if (v65)
          {
            v87 = *(v65 + 8);
            v88 = *(v65 + 8);
          }

          else
          {
            v87 = 0;
            v88 = 0;
          }

          v89 = *(v1086 + 56);
          v90 = v88;
          v92 = objc_msgSend_objectForKeyedSubscript_(v89, v91, v90);
          v95 = objc_msgSend_intValue(v92, v93, v94);
          *&v1148[0] = v87;
          DWORD2(v1148[0]) = v95;
          sub_262361A44(&v1121, v1148);
        }

        if (v65)
        {
          v96 = *(v65 + 8);
        }

        else
        {
          v96 = 0;
        }

        v97 = *(v1086 + 32);
        v98 = v96;
        v100 = objc_msgSend_objectForKeyedSubscript_(v97, v99, v98);
        if (!v100)
        {
          goto LABEL_59;
        }

        if (v65)
        {
          v101 = *(v65 + 8);
          v102 = *(v65 + 16);
        }

        else
        {
          v102 = 0;
          v101 = 0;
        }

        v103 = *(v1086 + 32);
        v104 = v101;
        v106 = objc_msgSend_objectForKeyedSubscript_(v103, v105, v104);
        v107 = v106;
        if (v106)
        {
          v108 = v106[2];
        }

        else
        {
          v108 = 0;
        }

        if (v102 != v108)
        {

          goto LABEL_59;
        }

        if (v65)
        {
          v109 = *(v65 + 48);
          v110 = *(v65 + 64);
          v111 = *(v65 + 80);
          *v1058 = *(v65 + 32);
          v1148[0] = *v1058;
          v1148[1] = v109;
          v1148[2] = v110;
          v1148[3] = v111;
          v112 = *(v65 + 8);
        }

        else
        {
          v112 = 0;
          *v1058 = 0u;
          memset(v1148, 0, sizeof(v1148));
        }

        v113 = *(v1086 + 32);
        v114 = v112;
        v116 = objc_msgSend_objectForKeyedSubscript_(v113, v115, v114);
        if (v116)
        {
          v117 = v116[2];
          v118 = v116[3];
          v119 = v116[4];
          v120 = v116[5];
        }

        else
        {
          v119 = 0uLL;
          v118 = 0uLL;
          v117 = 0uLL;
          v120 = 0uLL;
        }

        v1176 = v117;
        v1177 = v118;
        v1178 = v119;
        v1179 = v120;
        if (vmaxvq_f32(vabdq_f32(*v1058, v117)) > 0.001)
        {

LABEL_59:
LABEL_60:
          if (v65)
          {
            v121 = *(v65 + 8);
          }

          else
          {
            v121 = 0;
          }

          v122 = *(v1086 + 48);
          v123 = v121;
          v125 = objc_msgSend_objectForKeyedSubscript_(__p, v124, v123);
          objc_msgSend_addObject_(v122, v126, v125);

          continue;
        }

        v128 = 1;
        while (v128 != 4)
        {
          v129 = vmaxvq_f32(vabdq_f32(v1148[v128], *(&v1176 + v128)));
          ++v128;
          if (v129 > 0.001)
          {
            v130 = v128 - 2;
            goto LABEL_70;
          }
        }

        v130 = 3;
LABEL_70:
        v131 = v130 < 3;

        if (v131)
        {
          goto LABEL_60;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v127, &v1137, buf, 16);
    }

    while (v63);
  }

  v132 = 126 - 2 * __clz((*(&v1121 + 1) - v1121) >> 4);
  if (*(&v1121 + 1) == v1121)
  {
    v133 = 0;
  }

  else
  {
    v133 = v132;
  }

  sub_262361BB8(v1121, *(&v1121 + 1), v133, 1);
  if (*(&v1121 + 1) == v1121)
  {
    if (*(v1086 + 24) < 4uLL || !objc_msgSend_count(*(v1086 + 48), v134, v135))
    {
      v293 = *(v1086 + 16);
      if (v293)
      {
        *(v293 + 104) = 0;
      }

      ++*(v1086 + 24);
      goto LABEL_204;
    }

    v266 = objc_msgSend_lastObject(*(v1086 + 48), v264, v265);
    v267 = *(v1086 + 40);
    v270 = objc_msgSend_identifier(v266, v268, v269);
    v272 = objc_msgSend_objectForKeyedSubscript_(__p, v271, v270);
    objc_msgSend_addObject_(v267, v273, v272);

    v276 = objc_msgSend_identifier(v266, v274, v275);
    v277 = *(v1086 + 56);
    v280 = objc_msgSend_identifier(v266, v278, v279);
    v282 = objc_msgSend_objectForKeyedSubscript_(v277, v281, v280);
    v285 = objc_msgSend_intValue(v282, v283, v284);
    *&v1148[0] = v276;
    DWORD2(v1148[0]) = v285;
    sub_262361A44(&v1121, v1148);
  }

  v136 = *(v1086 + 16);
  if (v136)
  {
    *(v136 + 104) = 1;
    v136 = *(v1086 + 16);
    if (v136)
    {
      v136 = *(v136 + 112);
    }
  }

  v137 = v136;
  objc_msgSend_removeAllObjects(v137, v138, v139);

  v140 = *(v1086 + 16);
  if (v140)
  {
    *(v140 + 88) = *(v140 + 80);
  }

  v1135 = 0u;
  v1136 = 0u;
  v1133 = 0u;
  v1134 = 0u;
  v141 = obj;
  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v142, &v1133, v1148, 16);
  if (v143)
  {
    v144 = *v1134;
    do
    {
      v145 = 0;
      do
      {
        if (*v1134 != v144)
        {
          objc_enumerationMutation(v141);
        }

        v146 = *(*(&v1133 + 1) + 8 * v145);
        if (v146)
        {
          v147 = *(v146 + 8);
        }

        else
        {
          v147 = 0;
        }

        v148 = *(v1086 + 32);
        v149 = v147;
        objc_msgSend_setObject_forKey_(v148, v150, v146, v149);

        ++v145;
      }

      while (v143 != v145);
      v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v151, &v1133, v1148, 16);
      v143 = v152;
    }

    while (v152);
  }

  v1067 = objc_msgSend_array(MEMORY[0x277CBEB18], v153, v154);
  v1131 = 0u;
  v1132 = 0u;
  v1129 = 0u;
  v1130 = 0u;
  v1059 = *(v1086 + 48);
  v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1059, v155, &v1129, &v1176, 16);
  if (v156)
  {
    v157 = *v1130;
    do
    {
      for (m = 0; m != v156; ++m)
      {
        if (*v1130 != v157)
        {
          objc_enumerationMutation(v1059);
        }

        v159 = *(*(&v1129 + 1) + 8 * m);
        v160 = [RSKeyframeExtended alloc];
        v162 = objc_msgSend_initWithKeyframe_(v160, v161, v159);
        objc_msgSend_processWithVoxelize_asPythonApproach_resample_outlierRemove_(v162, v163, 1, 1, 1, 1);
        objc_msgSend_addObject_(v1067, v164, v162);
      }

      v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1059, v165, &v1129, &v1176, 16);
    }

    while (v156);
  }

  v166 = v1067;
  v1060 = objc_msgSend_sortedArrayUsingComparator_(v166, v167, &unk_2874EEF30);
  v1038 = v166;

  objc_msgSend_accumulateWithKeyframesInWorld_voxelize_(*(v1086 + 8), v168, v1060, 1);
  v1127 = 0u;
  v1128 = 0u;
  v1125 = 0u;
  v1126 = 0u;
  v171 = objc_msgSend_allValues(*(v1086 + 32), v169, v170);
  v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v172, &v1125, &v1174, 16);
  if (v173)
  {
    v174 = *v1126;
    do
    {
      v175 = 0;
      do
      {
        if (*v1126 != v174)
        {
          objc_enumerationMutation(v171);
        }

        v176 = *(*(&v1125 + 1) + 8 * v175);
        if (v176)
        {
          v177 = *(v176 + 8);
        }

        else
        {
          v177 = 0;
        }

        v178 = v177;
        v181 = objc_msgSend_UUIDString(v178, v179, v180);

        objc_msgSend_mappingIntervalOfKeyframe_(*(v1086 + 8), v182, v181);
        v1077 = v183;
        v184 = objc_alloc_init(RSSubPointsLUT);
        v185 = v184;
        if (v184)
        {
          v184->_size = HIDWORD(v1077);
          v184->_begin = v1077;
          v184->_end = HIDWORD(v1077) + v1077;
        }

        if (v176)
        {
          v186 = *(v176 + 16);
          if (!v184)
          {
            goto LABEL_122;
          }

LABEL_121:
          v184->_rawSize = v186;
          goto LABEL_122;
        }

        v186 = 0;
        if (v184)
        {
          goto LABEL_121;
        }

LABEL_122:
        if (v176)
        {
          v188 = *(v176 + 32);
          v187 = *(v176 + 48);
          v189 = *(v176 + 64);
          v190 = *(v176 + 80);
          if (!v184)
          {
            goto LABEL_125;
          }

LABEL_124:
          *&v184[1].super.isa = v188;
          *&v184[1]._begin = v187;
          *&v184[1]._size = v189;
          *v184[1]._anon_30 = v190;
          goto LABEL_125;
        }

        v189 = 0uLL;
        v187 = 0uLL;
        v188 = 0uLL;
        v190 = 0uLL;
        if (v184)
        {
          goto LABEL_124;
        }

LABEL_125:
        v191 = *(v1086 + 16);
        if (v191)
        {
          v191 = v191[15];
        }

        v192 = v191;
        objc_msgSend_setObject_forKey_(v192, v193, v185, v181);

        ++v175;
      }

      while (v173 != v175);
      v195 = objc_msgSend_countByEnumeratingWithState_objects_count_(v171, v194, &v1125, &v1174, 16);
      v173 = v195;
    }

    while (v195);
  }

  v198 = objc_msgSend_rawPoints(*(v1086 + 8), v196, v197);
  updated = objc_msgSend_rawUpdateCursor(*(v1086 + 8), v199, v200);
  v204 = objc_msgSend_rawCount(*(v1086 + 8), v202, v203);
  v206 = sub_2622CB45C(v198, updated, v204, v205);
  v207 = vdupq_laneq_s64(v206, 1);
  v206.i32[2] = 0;
  v207.i32[2] = 0;
  v1145 = v206;
  v1146 = v207;
  *&v1118 = 0;
  v1117 = 0uLL;
  sub_26225172C(&v1117, &v1145, v1147, 2uLL);
  v208 = *(v1086 + 16);
  if (v208)
  {
    sub_26229CA04((v208 + 56), v1117, *(&v1117 + 1), (*(&v1117 + 1) - v1117) >> 4);
  }

  v210 = *(&v1121 + 1);
  for (n = v1121; n != v210; n += 2)
  {
    v211 = *n;
    v212 = *(v1086 + 16);
    if (v212)
    {
      v212 = v212[14];
    }

    v213 = v212;
    v216 = objc_msgSend_UUIDString(v211, v214, v215);
    objc_msgSend_addObject_(v213, v217, v216);

    v218 = *(v1086 + 16);
    v220 = objc_msgSend_objectForKeyedSubscript_(*(v1086 + 32), v219, v211);
    v221 = v220;
    if (v220)
    {
      v222 = v220[2];
      v223 = v220[3];
      v224 = v220[4];
      v225 = v220[5];
    }

    else
    {
      v224 = 0uLL;
      v223 = 0uLL;
      v222 = 0uLL;
      v225 = 0uLL;
    }

    sub_26229CD84(v218, v222, v223, v224, v225);
  }

  v226 = 0;
  v227 = 0;
  v1113 = 0uLL;
  *&v1114 = 0;
  v228 = v1086;
  while (1)
  {
    v229 = *(v228 + 16);
    if (v229)
    {
      v229 = v229[14];
    }

    v230 = v229;
    v233 = objc_msgSend_count(v230, v231, v232) > v227;

    if (!v233)
    {
      break;
    }

    v234 = *(v1086 + 16);
    if (v234)
    {
      v234 = v234[14];
    }

    v235 = *(v1086 + 8);
    v236 = v234;
    v238 = objc_msgSend_objectAtIndexedSubscript_(v236, v237, v227);
    objc_msgSend_mappingIntervalOfKeyframe_(v235, v239, v238);
    v1078 = v240;

    v245 = (objc_msgSend_points(*(v1086 + 8), v241, v242) + 16 * v1078);
    v246 = objc_msgSend_points(*(v1086 + 8), v243, v244) + 16 * v1078 + 16 * HIDWORD(v1078);
    v247 = v246 - v245;
    v248 = (v246 - v245) >> 4;
    if (v248 < 1)
    {
      goto LABEL_163;
    }

    if (-v226 >= v247)
    {
      while (v245 != v246)
      {
        v251 = *v245++;
        *v226 = v251;
        v226 += 16;
      }

LABEL_163:
      v252 = v226;
      goto LABEL_168;
    }

    v249 = v248 + ((v226 - v1113) >> 4);
    if (v249 >> 60)
    {
      sub_2621CBEB0();
    }

    if (-v1113 >> 3 > v249)
    {
      v249 = -v1113 >> 3;
    }

    if (-v1113 >= 0x7FFFFFFFFFFFFFF0)
    {
      v250 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v250 = v249;
    }

    if (v250)
    {
      sub_2621CBF10(v250);
    }

    v253 = 16 * ((v226 - v1113) >> 4);
    v252 = v253 + v247;
    v254 = v253;
    do
    {
      v255 = *v245++;
      *v254++ = v255;
      v247 -= 16;
    }

    while (v247);
    v256 = v1113;
    v257 = (v253 - (v226 - v1113));
    memcpy(v257, v1113, v226 - v1113);
    *&v1113 = v257;
    if (v256)
    {
      operator delete(v256);
    }

LABEL_168:
    v258 = v1113;
    v259 = (v252 - v1113) >> 4;
    v260 = v259 + 1;
    if ((v259 + 1) >> 60)
    {
      sub_2621CBEB0();
    }

    if (-v1113 >> 3 > v260)
    {
      v260 = -v1113 >> 3;
    }

    if (-v1113 >= 0x7FFFFFFFFFFFFFF0)
    {
      v261 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v261 = v260;
    }

    if (v261)
    {
      sub_2621CBF10(v261);
    }

    *(16 * v259) = *(*(*(v1086 + 16) + 80) + (v227 << 6) + 48);
    v226 = 16 * v259 + 16;
    memcpy(0, v258, v252 - v258);
    *&v1113 = 0;
    if (v258)
    {
      operator delete(v258);
    }

    v228 = v1086;
    ++v227;
  }

  *(&v1113 + 1) = v226;
  *&v1114 = 0;
  sub_2622652C4(&v1145, &v1113);
  v262 = v1145.i64[0];
  v263 = (v1145.i64[1] - v1145.i64[0]) >> 4;
  if (v263 >= 3)
  {
    if (v1145.i64[1] != v1145.i64[0])
    {
      __asm { FMOV            V0.2D, #0.5 }

      v290 = vcvtq_f64_f32(*v1145.i64[0]);
      v291 = vsubq_f64(vcvtq_f64_f32(*(v1145.i64[0] + 16 * v263 - 16)), v290);
      v292 = vsubq_f64(vcvtq_f64_f32(*(v1145.i64[0] + 16 * (1 % v263))), v290);
      sub_2621CBF10(1uLL);
    }

    v1109 = 0uLL;
    *&v1110 = 0;
  }

  else
  {
    v1109 = 0uLL;
    *&v1110 = 0;
    sub_2621DDA38(&v1109, v1145.i64[0], v1145.i64[1], v263);
  }

  if (v262)
  {
    v1145.i64[1] = v262;
    operator delete(v262);
  }

  v294 = *(v1086 + 16);
  v295 = v1109;
  v296 = *(&v1109 + 1) - v1109;
  if (v294)
  {
    sub_26229CA04((v294 + 32), v1109, *(&v1109 + 1), v296 >> 4);
  }

  if (v296 > 0x20)
  {
    *(v1086 + 24) = 0;
    if (v295)
    {
      goto LABEL_198;
    }
  }

  else
  {
    v297 = *(v1086 + 16);
    if (v297)
    {
      *(v297 + 104) = 0;
    }

    if (v295)
    {
LABEL_198:
      operator delete(v295);
    }
  }

  if (v1113)
  {
    operator delete(v1113);
  }

  if (v1117)
  {
    operator delete(v1117);
  }

LABEL_204:
  v1145.i64[0] = &v1121;
  sub_262362638(&v1145);

LABEL_205:
  v1035 = sub_2621CD3A4(*(a1 + 64));
  v298 = *(a1 + 64);
  if (v298)
  {
    v1047 = *(v298 + 16);
    v299 = *(a1 + 64);
    if (v299)
    {
      v1033 = *(v299 + 40);
    }

    else
    {
      v1033 = 0;
    }
  }

  else
  {
    v1047 = 0;
    v1033 = 0;
  }

  kdebug_trace();
  if (!v1047 || (v1047[13] & 1) == 0)
  {
    v315 = objc_msgSend_render(a1, v300, v301);
    v316 = sub_26229D698(v315);

    if (v316)
    {
      v1127 = 0u;
      v1128 = 0u;
      v1125 = 0u;
      v1126 = 0u;
      v317 = v316[3];
      v320 = objc_msgSend_countByEnumeratingWithState_objects_count_(v317, v318, &v1125, buf, 16);
      if (v320)
      {
        v321 = *v1126;
        do
        {
          for (ii = 0; ii != v320; ++ii)
          {
            if (*v1126 != v321)
            {
              objc_enumerationMutation(v317);
            }

            v323 = *(*(&v1125 + 1) + 8 * ii);
            if (v323)
            {
              *(v323 + 105) = 2;
            }
          }

          v320 = objc_msgSend_countByEnumeratingWithState_objects_count_(v317, v319, &v1125, buf, 16);
        }

        while (v320);
      }

      memset(v1147, 0, sizeof(v1147));
      v1145 = 0u;
      v1146 = 0u;
      v324 = v316[6];
      v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v324, v325, &v1145, v1171, 16);
      if (v327)
      {
        v328 = *v1146.i64[0];
        do
        {
          for (jj = 0; jj != v327; ++jj)
          {
            if (*v1146.i64[0] != v328)
            {
              objc_enumerationMutation(v324);
            }

            v330 = *(v1145.i64[1] + 8 * jj);
            if (v330)
            {
              *(v330 + 105) = 2;
            }
          }

          v327 = objc_msgSend_countByEnumeratingWithState_objects_count_(v324, v326, &v1145, v1171, 16);
        }

        while (v327);
      }

      v1123 = 0u;
      v1124 = 0u;
      v1121 = 0u;
      v1122 = 0u;
      v331 = v316[5];
      v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v331, v332, &v1121, v1148, 16);
      if (v334)
      {
        v335 = *v1122;
        do
        {
          for (kk = 0; kk != v334; ++kk)
          {
            if (*v1122 != v335)
            {
              objc_enumerationMutation(v331);
            }

            v337 = *(*(&v1121 + 1) + 8 * kk);
            if (v337)
            {
              *(v337 + 105) = 2;
            }
          }

          v334 = objc_msgSend_countByEnumeratingWithState_objects_count_(v331, v333, &v1121, v1148, 16);
        }

        while (v334);
      }

      v1119 = 0u;
      v1120 = 0u;
      v1117 = 0u;
      v1118 = 0u;
      v338 = v316[4];
      v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v339, &v1117, &v1176, 16);
      if (v341)
      {
        v342 = *v1118;
        do
        {
          for (mm = 0; mm != v341; ++mm)
          {
            if (*v1118 != v342)
            {
              objc_enumerationMutation(v338);
            }

            v344 = *(*(&v1117 + 1) + 8 * mm);
            if (v344)
            {
              *(v344 + 105) = 2;
            }
          }

          v341 = objc_msgSend_countByEnumeratingWithState_objects_count_(v338, v340, &v1117, &v1176, 16);
        }

        while (v341);
      }

      v1115 = 0u;
      v1116 = 0u;
      v1113 = 0u;
      v1114 = 0u;
      v345 = v316[7];
      v348 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v346, &v1113, &v1174, 16);
      if (v348)
      {
        v349 = *v1114;
        do
        {
          for (nn = 0; nn != v348; ++nn)
          {
            if (*v1114 != v349)
            {
              objc_enumerationMutation(v345);
            }

            v351 = *(*(&v1113 + 1) + 8 * nn);
            if (v351)
            {
              *(v351 + 105) = 2;
            }
          }

          v348 = objc_msgSend_countByEnumeratingWithState_objects_count_(v345, v347, &v1113, &v1174, 16);
        }

        while (v348);
      }

      v1111 = 0u;
      v1112 = 0u;
      v1109 = 0u;
      v1110 = 0u;
      v352 = v316[9];
      v355 = objc_msgSend_countByEnumeratingWithState_objects_count_(v352, v353, &v1109, &v1141, 16);
      if (v355)
      {
        v356 = *v1110;
        do
        {
          for (i1 = 0; i1 != v355; ++i1)
          {
            if (*v1110 != v356)
            {
              objc_enumerationMutation(v352);
            }

            v358 = *(*(&v1109 + 1) + 8 * i1);
            if (v358)
            {
              *(v358 + 105) = 2;
            }
          }

          v355 = objc_msgSend_countByEnumeratingWithState_objects_count_(v352, v354, &v1109, &v1141, 16);
        }

        while (v355);
      }

      v1107 = 0u;
      v1108 = 0u;
      v1105 = 0u;
      v1106 = 0u;
      v359 = v316[11];
      v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(v359, v360, &v1105, &v1137, 16);
      if (v362)
      {
        v363 = *v1106;
        do
        {
          for (i2 = 0; i2 != v362; ++i2)
          {
            if (*v1106 != v363)
            {
              objc_enumerationMutation(v359);
            }

            v365 = *(*(&v1105 + 1) + 8 * i2);
            if (v365)
            {
              *(v365 + 105) = 2;
            }
          }

          v362 = objc_msgSend_countByEnumeratingWithState_objects_count_(v359, v361, &v1105, &v1137, 16);
        }

        while (v362);
      }

      v1104 = 0u;
      v1102 = 0u;
      v1103 = 0u;
      v1101 = 0u;
      v366 = v316[12];
      v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v366, v367, &v1101, &v1133, 16);
      if (v369)
      {
        v370 = *v1102;
        do
        {
          for (i3 = 0; i3 != v369; ++i3)
          {
            if (*v1102 != v370)
            {
              objc_enumerationMutation(v366);
            }

            v372 = *(*(&v1101 + 1) + 8 * i3);
            if (v372)
            {
              *(v372 + 105) = 2;
            }
          }

          v369 = objc_msgSend_countByEnumeratingWithState_objects_count_(v366, v368, &v1101, &v1133, 16);
        }

        while (v369);
      }

      v1099 = 0u;
      v1100 = 0u;
      v1097 = 0u;
      v1098 = 0u;
      v373 = v316[13];
      v376 = objc_msgSend_countByEnumeratingWithState_objects_count_(v373, v374, &v1097, &v1129, 16);
      if (v376)
      {
        v377 = *v1098;
        do
        {
          for (i4 = 0; i4 != v376; ++i4)
          {
            if (*v1098 != v377)
            {
              objc_enumerationMutation(v373);
            }

            v379 = *(*(&v1097 + 1) + 8 * i4);
            if (v379)
            {
              *(v379 + 105) = 2;
            }
          }

          v376 = objc_msgSend_countByEnumeratingWithState_objects_count_(v373, v375, &v1097, &v1129, 16);
        }

        while (v376);
      }
    }

    kdebug_trace();
    v380 = sub_26235E988(*(a1 + 128), v316, v1036, 0, 0, 0);

    kdebug_trace();
    v1039 = v380;
    if (*(a1 + 184) == 1)
    {
      v383 = objc_msgSend_dictionaryRepresentation(v380, v381, v382);
      objc_msgSend_setObject_forKeyedSubscript_(v1041, v384, v383, @"no_temporal_update");
    }

    goto LABEL_917;
  }

  v302 = *(a1 + 72);
  v1068 = v1035;
  v305 = v1047;
  v1047 = v305;
  if (v302 && objc_msgSend_rawCount(v1068, v303, v304))
  {
    v306 = *(v302 + 8);
    if (v306)
    {
      v307 = *(v306 + 28);
    }

    else
    {
      v307 = 0;
    }

    v309 = *(v302 + 56);
    v308 = *(v302 + 60);
    v310 = v305[14];
    v313 = objc_msgSend_count(v310, v311, v312) == 0;

    if (v313)
    {
      v314 = 0.0;
    }

    else
    {
      v314 = *(v1047[10] + 14);
    }

    v385 = v1068;
    if (objc_msgSend_rawCount(v385, v386, v387))
    {
      v390 = objc_msgSend_rawCount(v385, v388, v389);
      LODWORD(v1171[0].__locale_) = 0;
      sub_2621CD1D8(buf, (v390 - 1) / 3 + 1);
      v393 = 0;
      v394 = 0;
      v395 = 8;
      while (objc_msgSend_rawCount(v385, v391, v392) > v394)
      {
        v398 = objc_msgSend_rawPoints(v385, v396, v397);
        *(*buf + v393) = *(v398 + v395);
        v394 += 3;
        v395 += 48;
        v393 += 4;
      }

      sub_2621CD2EC(buf, 1.0);
      v400 = v399;
      sub_2621CD2EC(buf, 99.0);
      v402 = v401;
      v405 = objc_msgSend_rawPoints(v385, v403, v404);
      v408 = objc_msgSend_rawCount(v385, v406, v407);
      v1061 = v402 + 0.0;
      if (v408)
      {
        v412 = 16 * v408;
        v413 = 0uLL;
        do
        {
          v414 = *v405++;
          v415.i32[1] = v414.i32[1];
          v413 = vaddq_f32(v413, v414);
          v412 -= 16;
        }

        while (v412);
        *v415.i32 = v408;
        v416 = vdivq_f32(v413, vdupq_lane_s32(v415, 0));
      }

      else
      {
        v416 = 0uLL;
      }

      v1043 = v416;
      v417 = 0;
      obja = v400 + -0.1;
      v1171[0].__locale_ = 0;
      v1171[1].__locale_ = 0;
      *&v1172 = 0;
      v411.i64[0] = 0;
      v1080 = v411;
      v418 = 8;
      v411.i64[0] = 0;
      v1087 = v411;
      while (objc_msgSend_count(v385, v409, v410) > v417)
      {
        v3.i32[0] = *(objc_msgSend_semanticLabels(v385, v419, v420) + 4 * v417);
        v425 = vmovl_u8(v3).u8[0];
        _ZF = *(objc_msgSend_points(v385, v421, v422) + v418) <= v314 && v425 == 1;
        if (_ZF && *(objc_msgSend_semanticVotes(v385, v423, v424) + 8 * v417))
        {
          v427 = *(objc_msgSend_points(v385, v423, v424) + v418);
          sub_2621C7F54(1uLL);
        }

        if (*(objc_msgSend_points(v385, v423, v424) + v418) >= (v1061 + -0.1) && v425 == 3)
        {
          v429 = objc_msgSend_semanticVotes(v385, v409, v410);
          v430 = v1087;
          if (*(v429 + 8 * v417))
          {
            *v430.i32 = *v1087.i32 + 1.0;
          }

          v1087 = v430;
        }

        v417 += 3;
        v418 += 48;
      }

      v1171[1].__locale_ = 0;
      *&v1172 = 0;
      v1171[0].__locale_ = 0;
      v431 = v1080;
      v431.i32[1] = v1087.i32[0];
      v1079 = v431;
      v1049 = __PAIR64__(LODWORD(v1061), LODWORD(obja));
      if (buf[0])
      {
        buf[1] = buf[0];
        operator delete(*buf);
      }
    }

    else
    {
      v1043 = 0u;
      v1049 = 0;
      v400 = 0.0;
      v402 = 0.0;
      v1061 = 0.0;
      obja = 0.0;
      v1079 = 0u;
    }

    v437 = *(v302 + 8);
    if (v437)
    {
      v435 = v1079;
      *(v437 + 48) = v1079.i64[0];
    }

    v438 = v308 * v309;
    v305 = v1047;
    if (*(v302 + 36) == 1 && *(v302 + 64) >= 1)
    {
      v439 = *(v302 + 8);
      if (v439)
      {
        v440 = 1.0 / *(v439 + 80) * 20.0;
        v441 = 1.0 / *(v439 + 96) * 0.5;
        *&v441 = v441;
        *v1040 = *(v439 + 64);
      }

      else
      {
        *v1040 = 0u;
        *&v441 = 2139095040;
        v440 = INFINITY;
      }

      if (*(v302 + 56) < 1)
      {
        v443 = 0;
      }

      else
      {
        if (v439)
        {
          v442 = *(v439 + 16);
        }

        else
        {
          v442 = 0.0;
        }

        v443 = vabds_f32(v442, obja) > *&v441;
      }

      v444 = objc_msgSend_rawPoints(v385, v432, v433, v441);
      v447 = objc_msgSend_rawCount(v385, v445, v446);
      v450 = sub_2622CB45C(v444, 0, v447, v448);
      v449 = vdupq_laneq_s64(v450, 1);
      *&v450.i32[2] = obja;
      v451 = v438 + obja;
      if (v1061 < (v438 + obja))
      {
        v451 = v1061;
      }

      *&v449.i32[2] = v451;
      *buf[0].i8 = v450;
      *buf[2].i8 = v449;
      v1171[1].__locale_ = 0;
      *&v1172 = 0;
      v1171[0].__locale_ = 0;
      sub_26225172C(v1171, buf, &buf[4], 2uLL);
      memset(buf, 0, 24);
      sub_2621DDA38(buf, v1171[0].__locale_, v1171[1].__locale_, (v1171[1].__locale_ - v1171[0].__locale_) >> 4);
      v452 = *(v302 + 8);
      if (v452)
      {
        v1081 = v452[8];
        v1088 = v452[7];
        *v1062 = v452[6];
        *__pa = v452[5];
      }

      if (*buf != *&buf[1])
      {
        v453 = **buf;
        sub_2621CBF10(1uLL);
      }

      v454 = vsubq_f32(*v1040, v1043);
      v455 = vmulq_f32(v454, v454).u64[0];
      v305 = v1047;
      if (buf[0])
      {
        buf[1] = buf[0];
        v1089 = v455;
        operator delete(*buf);
        v455 = v1089;
      }

      v456 = 0;
      v457 = vaddv_f32(v455);
      if ((MEMORY[0] & 0x80000000) == 0 && (MEMORY[4] & 0x80000000) == 0)
      {
        v456 = MEMORY[0x14] < v307;
        if (MEMORY[0x10] >= v307)
        {
          v456 = 0;
        }
      }

      v458 = sqrtf(v457);
      if (MEMORY[4] - MEMORY[0] >= v307 || MEMORY[0x14] - MEMORY[0x10] >= v307)
      {
        v460 = *(v302 + 8);
        if (v460)
        {
          v461 = *(v460 + 12) + -0.06;
        }

        else
        {
          v461 = -0.06;
        }

        v459 = fabsf(v461) < 0.001;
      }

      else
      {
        v459 = 0;
      }

      v462 = *(v302 + 56);
      v464 = v462 < 1 || MEMORY[8] < 0;
      if (!v462)
      {
        v464 = 0;
      }

      if (v458 > v440 || v443 || v464 || !v456 && !v459)
      {
        operator delete(0);
        if (v1171[0].__locale_)
        {
          operator delete(v1171[0].__locale_);
        }

        goto LABEL_375;
      }

      v642 = *(v302 + 8);
      if (v642)
      {
        *(v642 + 8) = 0;
        v643 = *(v302 + 8);
        ++*(v302 + 64);
        if (v643)
        {
          *(v643 + 36) = v400;
          v644 = *(v302 + 8);
          if (v644)
          {
            *(v644 + 40) = v402;
          }
        }
      }

      else
      {
        ++*(v302 + 64);
      }

      operator delete(0);
      if (v1171[0].__locale_)
      {
        operator delete(v1171[0].__locale_);
      }
    }

    else
    {
LABEL_375:
      v465 = *(v302 + 8);
      v434.f64[0] = 0.0;
      if (v465)
      {
        *(v465 + 8) = 1;
        v466 = *(v302 + 8);
        if (v466)
        {
          LODWORD(v434.f64[0]) = *(v466 + 12);
        }
      }

      v467 = *(v302 + 60);
      if (*(v302 + 45) == 1)
      {
        v468 = objc_msgSend_rawPoints(v385, v432, v433, v434.f64[0]);
        v471 = objc_msgSend_rawCount(v385, v469, v470);
        if (v471 > 1)
        {
          v472 = v468 + 1;
          v473 = *v468;
          v474 = 16 * v471 - 16;
          v475 = v468 + 1;
          do
          {
            v476 = vsubq_f32(v473, v1043);
            v477 = vmulq_f32(v476, v476);
            v477.f32[0] = vaddv_f32(*v477.f32);
            v478 = *v475++;
            v436 = v478;
            v479 = vsubq_f32(v478, v1043);
            v480 = vmulq_f32(v479, v479);
            v480.f32[0] = vaddv_f32(*v480.f32);
            v473 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v480, v477), 0), v478, v473);
            if (v477.f32[0] < v480.f32[0])
            {
              v468 = v472;
            }

            v472 = v475;
            v474 -= 16;
          }

          while (v474);
        }

        v435 = v1043;
        v481 = vsubq_f32(*v468, v1043);
        v434 = vmulq_f32(v481, v481);
        *v434.f64 = sqrtf(vaddv_f32(*&v434.f64[0]));
        while (1)
        {
          v482 = *(v302 + 20);
          v483 = (*v434.f64 + *v434.f64) / v307;
          if (v307 >= v482 || v483 <= 0.03)
          {
            break;
          }

          if (*(v302 + 68) + v307 >= v482)
          {
            v307 = *(v302 + 20);
          }

          else
          {
            v307 += *(v302 + 68);
          }

          v484 = *(v302 + 8);
          if (v484)
          {
            *(v484 + 28) = v307;
          }
        }

        v485 = 0.06;
        if (v483 <= 0.06)
        {
          v485 = (*v434.f64 + *v434.f64) / v307;
        }

        v486 = v485 * 100.0;
        v487 = 3.0;
        if (v483 >= 0.03)
        {
          v487 = v486;
        }

        *v434.f64 = ceilf(v487) / 100.0;
      }

      v488 = *(v302 + 8);
      if (v488)
      {
        v435.i32[0] = 0;
        v489 = *(v302 + 56);
        v436.i32[0] = v489;
        v490 = v1043;
        *&v490.i32[2] = (v438 * 0.5) + *&v1049;
        v491 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v436, v435), 0), v490, v1043);
        v488[4] = v491;
        v492 = *(v302 + 8);
        if (v492)
        {
          *(v492 + 12) = LODWORD(v434.f64[0]);
          v493 = *(v302 + 8);
          if (v493)
          {
            v494 = *v434.f64;
            v434.f64[0] = v467;
            v495.f64[0] = v494;
            v495.f64[1] = v494;
            __asm { FMOV            V4.2D, #1.0 }

            v497 = vdivq_f64(_Q4, v495);
            v498 = vdivq_f64(_Q4, v434);
            v493[5] = v497;
            v493[6] = v498;
            v499 = *(v302 + 8);
            if (v499)
            {
              v498.f64[0] = v489;
              __asm { FMOV            V3.2D, #0.5 }

              v501 = vmulq_f64(vmulq_f64(v498, v434), _Q3);
              v502 = vmulq_f64(vmulq_n_f64(vdupq_lane_s64(COERCE__INT64(v307), 0), v494), _Q3);
              v503 = vcvtq_f64_f32(*&v491.f64[0]);
              *&v502.f64[1] = vextq_s8(v502, v502, 8uLL).u64[0];
              v491.f64[0] = *&v491.f64[1];
              v499[7] = vsubq_f64(v502, v503);
              v499[8] = vsubq_f64(v501, v491);
              v504 = *(v302 + 8);
              if (v504)
              {
                *(v504 + 16) = v1049;
                v505 = *(v302 + 8);
                if (v505)
                {
                  *(v505 + 20) = HIDWORD(v1049);
                  v506 = *(v302 + 8);
                  if (v506)
                  {
                    *(v506 + 24) = v438;
                    v507 = *(v302 + 8);
                    if (v507)
                    {
                      *(v507 + 36) = v400;
                      v508 = *(v302 + 8);
                      if (v508)
                      {
                        *(v508 + 40) = v402;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++*(v302 + 64);
    }
  }

  v1032 = sub_2621CD3A4(*(a1 + 72));
  v511 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v509, v510);
  v513 = objc_msgSend_BOOLForKey_(v511, v512, @"fp_earlyout_accumulation");

  if (!v513)
  {
    kdebug_trace();
    v514 = *(a1 + 88);
    v1090 = v1068;
    v515 = v1047;
    v518 = v1032;
    v1047 = v515;
    if (!v514 || !objc_msgSend_count(v1090, v516, v517))
    {
      goto LABEL_614;
    }

    v519 = *(v514 + 8);
    if (v519)
    {
      v520 = *(v519 + 48);
      if (v518)
      {
        if (v520 == v518[7])
        {
          goto LABEL_421;
        }

        v521 = v518[7];
        goto LABEL_420;
      }

      if (v520)
      {
        v521 = 0;
LABEL_420:
        *(v519 + 40) = v521;
        *(v519 + 48) = v521;
        sub_2622C58F8(v519);
        sub_2622C5A18(v519, v522);
      }
    }

LABEL_421:
    v523 = *(v514 + 16);
    if (!v523)
    {
      goto LABEL_426;
    }

    v524 = *(v523 + 48);
    if (v518)
    {
      if (v524 == v518[7])
      {
        goto LABEL_426;
      }

      v525 = v518[7];
    }

    else
    {
      if (!v524)
      {
LABEL_426:
        v527 = *(v514 + 72);
        if (!v527)
        {
          goto LABEL_431;
        }

        v528 = *(v527 + 48);
        if (v518)
        {
          if (v528 == v518[7])
          {
            goto LABEL_431;
          }

          v529 = v518[7];
        }

        else
        {
          if (!v528)
          {
LABEL_431:
            v531 = *(v514 + 80);
            if (!v531)
            {
              goto LABEL_436;
            }

            v532 = *(v531 + 48);
            if (v518)
            {
              if (v532 == v518[7])
              {
                goto LABEL_436;
              }

              v533 = v518[7];
            }

            else
            {
              if (!v532)
              {
LABEL_436:
                v535 = *(v514 + 88);
                if (!v535)
                {
                  goto LABEL_441;
                }

                v536 = v535[6];
                if (v518)
                {
                  if (v536 == v518[7])
                  {
                    goto LABEL_441;
                  }

                  v537 = v518[7];
                }

                else
                {
                  if (!v536)
                  {
LABEL_441:
                    v539 = *(v514 + 96);
                    if (v539)
                    {
                      v540 = v539[6];
                      if (v518)
                      {
                        if (v540 == v518[7])
                        {
LABEL_444:
                          memset(buf, 0, 24);
LABEL_445:
                          if (v518[2])
                          {
                            sub_2622C5BB4(*(v514 + 8));
                            sub_2622C5BB4(*(v514 + 72));
                            sub_2622C5BB4(*(v514 + 88));
                            *(v514 + 24) = vcvt_s32_f32(*(v514 + 32));
                            v543 = objc_msgSend_count(v1090, v541, v542);
                            v1171[0].__locale_ = 0;
                            sub_262247F68(buf, v543, v1171);
                            v544 = buf[0];
                            if (*buf != *&buf[1])
                            {
                              v545 = 0;
                              v546 = (*&buf[1] - *buf - 8) >> 3;
                              v547 = vdupq_n_s64(v546);
                              v548 = (v546 + 2) & 0x3FFFFFFFFFFFFFFELL;
                              v549 = xmmword_2623A7620;
                              v550 = vdupq_n_s64(2uLL);
                              do
                              {
                                v551 = vmovn_s64(vcgeq_u64(v547, v549));
                                if (v551.i8[0])
                                {
                                  v544[v545] = v545;
                                }

                                if (v551.i8[4])
                                {
                                  v544[v545 + 1] = v545 + 1;
                                }

                                v545 += 2;
                                v549 = vaddq_s64(v549, v550);
                              }

                              while (v548 != v545);
                            }

                            v552 = *(v514 + 8);
                            if (v552 && *(v552 + 64) == 1)
                            {
                              v553 = *(v552 + 8);
                            }

                            else
                            {
                              v553 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v553, 0);
                            v645 = *(v514 + 72);
                            if (v645 && *(v645 + 64) == 1)
                            {
                              v646 = *(v645 + 8);
                            }

                            else
                            {
                              v646 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v646, 0);
                            v647 = *(v514 + 88);
                            if (v647 && *(v647 + 64) == 1)
                            {
                              v648 = *(v647 + 8);
                            }

                            else
                            {
                              v648 = 0;
                            }

                            CVPixelBufferLockBaseAddress(v648, 0);
                            v649 = sub_2622B5158(v1090, buf, v518, *(v514 + 8), *(v514 + 24), *(v514 + 28), *(v514 + 72), *(v514 + 88), 0);
                            v650 = *(v514 + 8);
                            if (v650 && *(v650 + 64) == 1)
                            {
                              v651 = *(v650 + 8);
                            }

                            else
                            {
                              v651 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v651, 0);
                            v652 = *(v514 + 72);
                            if (v652 && *(v652 + 64) == 1)
                            {
                              v653 = *(v652 + 8);
                            }

                            else
                            {
                              v653 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v653, 0);
                            v654 = *(v514 + 88);
                            if (v654 && *(v654 + 64) == 1)
                            {
                              v655 = *(v654 + 8);
                            }

                            else
                            {
                              v655 = 0;
                            }

                            CVPixelBufferUnlockBaseAddress(v655, 0);
                            v1050 = v649;
                            v641 = HIDWORD(v649);
LABEL_608:
                            v656 = *(v514 + 24);
                            v657 = *(v514 + 28);
                            if (v656 <= v1050)
                            {
                              v656 = v1050;
                            }

                            if (v657 <= v641)
                            {
                              v657 = v641;
                            }

                            *(v514 + 24) = v656;
                            *(v514 + 28) = v657;
                            if (v544)
                            {
                              operator delete(v544);
                            }

LABEL_614:

                            v1031 = sub_2621CD3A4(*(a1 + 88));
                            v658 = *(a1 + 88);
                            if (v658)
                            {
                              v1025 = *(v658 + 88);
                            }

                            else
                            {
                              v1025 = 0;
                            }

                            kdebug_trace();
                            v661 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v659, v660);
                            v663 = objc_msgSend_BOOLForKey_(v661, v662, @"fp_earlyout_projection2DZ");

                            if (v663)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              log = qword_27FF0C088;
                              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                              {
                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_projection2DZ";
                                _os_log_debug_impl(&dword_2621C3000, log, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
                              }

                              v1039 = 0;
                              goto LABEL_915;
                            }

                            v664 = *(a1 + 56);
                            v665 = v1031;
                            v666 = v518;
                            if (v664)
                            {
                              LODWORD(v1174) = 15083;
                              *(&v1174 + 1) = 0;
                              kdebug_trace();
                              v1171[0].__locale_ = 0;
                              v1171[1].__locale_ = 0;
                              *&v1172 = 0;
                              memset(v1148, 0, 24);
                              *buf[0].i8 = xmmword_2623A8670;
                              *buf[2].i8 = unk_2623A8680;
                              v1176 = 0uLL;
                              v1177.i64[0] = 0;
                              sub_2622AB9E8(&v1176, buf, &buf[4], 4uLL);
                              if (v665 && v665[8].isa == 1)
                              {
                                isa = v665[1].isa;
                              }

                              sub_26222B1A0();
                              if (v666)
                              {
                                v668 = v666[10];
                                v669 = *(v666 + 7);
                              }

                              else
                              {
                                v669 = 0uLL;
                                v668 = 0.0;
                              }

                              *&v670 = *&v669;
                              v671 = *(&v669 + 1);
                              *(&v670 + 1) = v671;
                              v1083 = v670;
                              v672 = sub_2622CAAA8(v1171, 0, v668, v670);
                              v673 = sub_2622CAAA8(v1148, 3, v668, v1083);
                              v674 = objc_alloc_init(RSFloorPlan);
                              sub_2622AE900(v674, v672);
                              v1039 = v674;
                              sub_2622AE920(v674, v673);
                              if (v666)
                              {
                                v675 = *(v666 + 9);
                              }

                              else
                              {
                                v675 = 0.0;
                              }

                              if (v674)
                              {
                                v674->floorHeight = v675;
                              }

                              if (v666)
                              {
                                v676 = *(v666 + 10);
                              }

                              else
                              {
                                v676 = 0.0;
                              }

                              if (v674)
                              {
                                v674->ceilingHeight = v676;
                              }

                              sub_2622B1630(v674);

                              if (v1176.i64[0])
                              {
                                operator delete(v1176.i64[0]);
                              }

                              if (*&v1148[0])
                              {
                                operator delete(*&v1148[0]);
                              }

                              if (v1171[0].__locale_)
                              {
                                operator delete(v1171[0].__locale_);
                              }

                              sub_2621CD534(&v1174);
                            }

                            else
                            {
                              v1039 = 0;
                            }

                            if (*(a1 + 184) == 1)
                            {
                              v679 = objc_msgSend_dictionaryRepresentation(v1039, v677, v678);
                              objc_msgSend_setObject_forKeyedSubscript_(v1041, v680, v679, @"lcnn");
                            }

                            v681 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v677, v678);
                            v683 = objc_msgSend_BOOLForKey_(v681, v682, @"fp_earlyout_wallOpeningDetect");

                            if (v683)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              log = qword_27FF0C088;
                              if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
                              {
                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_wallOpeningDetect";
                                _os_log_debug_impl(&dword_2621C3000, log, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
                              }

                              goto LABEL_915;
                            }

                            v684 = *(a1 + 32);
                            v685 = *(a1 + 88);
                            if (v685)
                            {
                              v686 = *(v685 + 24);
                            }

                            else
                            {
                              v686 = 0.0;
                            }

                            v687 = *(a1 + 56);
                            log = v1039;
                            v1020 = v1090;
                            v1047 = v1047;
                            v1021 = v666;
                            v1024 = v665;
                            v1022 = v1025;
                            if (v684)
                            {
                              v1145.i32[0] = 13555;
                              v1145.i64[1] = 0;
                              kdebug_trace();
                              v1026 = objc_msgSend_copy(log, v688, v689);
                              v690 = v1047[14];
                              v693 = objc_msgSend_count(v690, v691, v692) == 0;

                              if (!v693)
                              {
                                if ((*(v684 + 1953) & 1) == 0)
                                {
                                  v696 = v1024;
                                  if (v1024)
                                  {
                                    if (*(v684 + 1824) != v1024[5].isa)
                                    {
                                      goto LABEL_662;
                                    }

                                    v697 = v1024[6].isa;
                                  }

                                  else
                                  {
                                    v697 = *(v684 + 1824);
                                    if (v697)
                                    {
LABEL_965:
                                      v698 = 0;
                                      v1176.i64[0] = 0;
                                      goto LABEL_663;
                                    }
                                  }

                                  if (*(v684 + 1832) == v697)
                                  {
                                    goto LABEL_694;
                                  }
                                }

                                v696 = v1024;
                                if (!v1024)
                                {
                                  goto LABEL_965;
                                }

LABEL_662:
                                v698 = v696[6].isa;
                                *v1176.f32 = v696[5];
LABEL_663:
                                *&v1174 = v698;
                                sub_262223490(v1148, &v1176, &v1174);
                                sub_2622035C8(buf, v1148);
                                if (BYTE1(v1163) == 1)
                                {
                                  v699 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
                                  v700 = sub_2621D552C(v699, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
                                  sub_2621D552C(v700, " ", 1);
                                  v701 = MEMORY[0x277D82670];
                                  v702 = MEMORY[0x266727260](MEMORY[0x277D82670], 664);
                                  sub_2621D552C(v702, " ", 1);
                                  sub_2621D552C(v702, "operator=", 9);
                                  std::ios_base::getloc((v702 + *(*v702 - 24)));
                                  v703 = std::locale::use_facet(v1171, MEMORY[0x277D82680]);
                                  (v703->__vftable[2].~facet_0)(v703, 10);
                                  std::locale::~locale(v1171);
                                  std::ostream::put();
                                  std::ostream::flush();
                                  sub_2621D5EE8("err", "scalar assign should create a storage first");
                                  std::ios_base::getloc((v701 + *(*v701 - 24)));
                                  v704 = std::locale::use_facet(v1171, MEMORY[0x277D82680]);
                                  (v704->__vftable[2].~facet_0)(v704, 10);
                                  std::locale::~locale(v1171);
                                  std::ostream::put();
                                  std::ostream::flush();
                                }

                                v1172 = 0u;
                                v1173 = 0u;
                                *&v1171[0].__locale_ = 0u;
                                v705 = v1161;
                                v706 = *(&v1163 + 1);
                                if (v1163)
                                {
                                  if (v1161)
                                  {
                                    v707 = (v1161 + 7) & 0xFFFFFFFFFFFFFFF8;
                                    v708 = vdupq_n_s64(v1161 - 1);
                                    v709 = xmmword_2623A77F0;
                                    v710 = xmmword_2623A7800;
                                    v711 = xmmword_2623A7630;
                                    v712 = (*(&v1163 + 1) + 8);
                                    v713 = xmmword_2623A7620;
                                    v714 = vdupq_n_s64(8uLL);
                                    do
                                    {
                                      v715 = vmovn_s64(vcgeq_u64(v708, v713));
                                      if (vuzp1_s8(vuzp1_s16(v715, *v708.i8), *v708.i8).u8[0])
                                      {
                                        *(v712 - 4) = 0;
                                      }

                                      if (vuzp1_s8(vuzp1_s16(v715, *&v708), *&v708).i8[1])
                                      {
                                        *(v712 - 3) = 0;
                                      }

                                      if (vuzp1_s8(vuzp1_s16(*&v708, vmovn_s64(vcgeq_u64(v708, *&v711))), *&v708).i8[2])
                                      {
                                        *(v712 - 2) = 0;
                                        *(v712 - 1) = 0;
                                      }

                                      v716 = vmovn_s64(vcgeq_u64(v708, v710));
                                      if (vuzp1_s8(*&v708, vuzp1_s16(v716, *&v708)).i32[1])
                                      {
                                        *v712 = 0;
                                      }

                                      if (vuzp1_s8(*&v708, vuzp1_s16(v716, *&v708)).i8[5])
                                      {
                                        v712[1] = 0;
                                      }

                                      if (vuzp1_s8(*&v708, vuzp1_s16(*&v708, vmovn_s64(vcgeq_u64(v708, *&v709)))).i8[6])
                                      {
                                        v712[2] = 0;
                                        v712[3] = 0;
                                      }

                                      v710 = vaddq_s64(v710, v714);
                                      v711 = vaddq_s64(v711, v714);
                                      v713 = vaddq_s64(v713, v714);
                                      v712 += 8;
                                      v709 = vaddq_s64(v709, v714);
                                      v707 -= 8;
                                    }

                                    while (v707);
                                  }
                                }

                                else if (v1161)
                                {
                                  v717 = 0;
                                  v718 = buf[7];
                                  v719 = buf[8];
                                  do
                                  {
                                    v720 = 0;
                                    *(v706 + 2 * *&v719 * v1171[1].__locale_ + 2 * *&v718 * v1171[0].__locale_) = 0;
                                    do
                                    {
                                      v721 = (v1171[v720 + 1].__locale_ + 1);
                                      v1171[v720 + 1].__locale_ = v721;
                                      if (v721 != buf[v720 + 2])
                                      {
                                        break;
                                      }

                                      v1171[v720-- + 1].__locale_ = 0;
                                    }

                                    while (v720 != -2);
                                    ++v717;
                                  }

                                  while (v717 != v705);
                                }

                                *(v684 + 1872) = *buf[7].i8;
                                *(v684 + 1888) = v1159;
                                *(v684 + 1904) = v1160;
                                *(v684 + 1920) = v1161;
                                *(v684 + 1824) = *buf[1].i8;
                                *(v684 + 1840) = *buf[3].i8;
                                *(v684 + 1856) = *buf[5].i8;
                                v722 = v1162;
                                if (*(&v1162 + 1))
                                {
                                  atomic_fetch_add_explicit((*(&v1162 + 1) + 8), 1uLL, memory_order_relaxed);
                                }

                                *(v684 + 1936) = v722;
                                v723 = *(v684 + 1944);
                                *(v684 + 1944) = *(&v722 + 1);
                                if (v723)
                                {
                                  sub_2621D1B78(v723);
                                }

                                *(v684 + 1960) = *(&v1163 + 1);
                                *(v684 + 1952) = v1163;
                                buf[0] = &unk_2874EE7C8;
                                if (*(&v1162 + 1))
                                {
                                  sub_2621D1B78(*(&v1162 + 1));
                                }

LABEL_694:
                                if (v1024 && v1024[8].isa == 1)
                                {
                                  v724 = v1024[1].isa;
                                }

                                else
                                {
                                  v724 = 0;
                                }

                                CVPixelBufferLockBaseAddress(v724, 1uLL);
                                v725 = v1024;
                                v726 = sub_2622C57A4(v1024, 0x1AuLL);
                                if (v1024)
                                {
                                  v727 = v1024[6].isa * v1024[5].isa;
                                  if (v727)
                                  {
                                    v728 = *(v684 + 1960);
                                    do
                                    {
                                      v729 = *v726;
                                      v726 = (v726 + 2);
                                      _H0 = v729;
                                      __asm { FCVT            S0, H0 }

                                      _S0 = v686 * _S0;
                                      __asm { FCVT            H0, S0 }

                                      *v728++ = LOWORD(_S0);
                                      --v727;
                                    }

                                    while (v727);
                                    v733 = v1024;
                                  }

                                  else
                                  {
                                    v733 = v1024;
                                  }

                                  v736 = v733[7].isa - 27;
                                  v734 = v733[5].isa;
                                  v735 = v733[6].isa;
                                }

                                else
                                {
                                  v734 = 0;
                                  v735 = 0;
                                  v736 = -27;
                                }

                                *&v1121 = v736;
                                *&v1148[0] = v734;
                                v1176.i64[0] = v735;
                                sub_262293FD4(buf, &v1121, v1148, &v1176);
                                v737 = v1024;
                                sub_2622C57A4(v1024, 0x1BuLL);
                                sub_262294264(v1171, buf);
                                v738 = v1020;
                                v1037 = v1047;
                                LODWORD(v1148[0]) = 7601;
                                *(&v1148[0] + 1) = 0;
                                v1023 = v738;
                                kdebug_trace();
                                for (i5 = 0; ; ++i5)
                                {
                                  v740 = v1047[14];
                                  v743 = i5 < objc_msgSend_count(v740, v741, v742);

                                  if (!v743)
                                  {
                                    sub_2621CD534(v1148);

                                    v784 = v1037[4];
                                    v785 = v1037[5];
                                    v1141 = 0uLL;
                                    *&v1142 = 0;
                                    sub_2621DDA38(&v1141, v784, v785, (v785 - v784) >> 4);
                                    v786 = v1047[14];
                                    v789 = objc_msgSend_count(v786, v787, v788) != 0;

                                    if (v789)
                                    {
                                      v790 = *(v1037[10] + 3);
                                      sub_2621CBF10(1uLL);
                                    }

                                    v1137 = 0uLL;
                                    *&v1138 = 0;
                                    v791 = v1037[15];
                                    v792 = v1047[14];
                                    v794 = objc_msgSend_objectAtIndexedSubscript_(v792, v793, 0);
                                    v1092 = objc_msgSend_objectForKey_(v791, v795, v794);

                                    v796 = v1037[10];
                                    v797 = v1047[14];
                                    v800 = objc_msgSend_count(v797, v798, v799);
                                    if (v1092)
                                    {
                                      v804 = *(v1092 + 48);
                                      v805 = *(v1092 + 64);
                                      v806 = *(v1092 + 80);
                                      LODWORD(v801) = *(v1092 + 8);
                                      LODWORD(v802) = *(v1092 + 12);
                                      v807 = *&v801;
                                      v808 = *&v802;
                                    }

                                    else
                                    {
                                      v807 = 0;
                                      v808 = 0;
                                      *&v804 = 0;
                                      DWORD2(v804) = 0;
                                      *&v805 = 0;
                                      DWORD2(v805) = 0;
                                      v806 = 0uLL;
                                    }

                                    buf[1].i32[0] = DWORD2(v804);
                                    buf[3].i32[0] = DWORD2(v805);
                                    buf[0] = v804;
                                    buf[2] = v805;
                                    buf[5].i32[0] = v806.n128_i32[2];
                                    buf[4] = v806.n128_u64[0];
                                    sub_26224041C(v796, v800, buf, v807, v808, &v1137, v806, *&v804, *&v805, v801, v802, v803);

                                    sub_26229D6C8();
                                    v809 = v1137;
                                    v810 = sub_26229DA10(&v1141, MEMORY[0], *v1137);
                                    DWORD2(v1174) = v810.n128_u32[2];
                                    *&v1174 = v810.n128_u64[0];
                                    DWORD2(v1175) = v811;
                                    *&v1175 = v812;
                                    v1133 = 0uLL;
                                    *&v1134 = 0;
                                    sub_2621D9F60(&v1133, &v1174);
                                    sub_2621D9F60(&v1133, &v1175);
                                    v813 = *(v684 + 1696);
                                    sub_26229D6C8();
                                    sub_26229D730(&v1129, &v1141, MEMORY[0], *v809, v813);
                                    v814 = *(v684 + 1700);
                                    sub_26229D6C8();
                                    sub_26229D730(&v1125, &v1141, MEMORY[0], *v809, v814);
                                    v815 = objc_alloc_init(RSMajorViewInfo);
                                    v816 = v815;
                                    if (v815)
                                    {
                                      sub_26229CC54(&v815[1].super.isa, v809, *(&v1137 + 1), (*(&v1137 + 1) - v809) >> 4);
                                      sub_26229CC54(v816->_anon_38, v1133, *(&v1133 + 1), (*(&v1133 + 1) - v1133) >> 4);
                                      sub_26229CC54(v816->_anon_8, v1129, *(&v1129 + 1), (*(&v1129 + 1) - v1129) >> 4);
                                      sub_26229CC54(v816->_anon_20, v1125, *(&v1125 + 1), (*(&v1125 + 1) - v1125) >> 4);
                                    }

                                    buf[0] = &unk_2874EED80;
                                    memset(&buf[1], 0, 64);
                                    v1159 = 0u;
                                    v1160 = 0u;
                                    v1161 = 0u;
                                    v1162 = 0u;
                                    v1163 = 0u;
                                    v1164 = 0u;
                                    v1165 = 0;
                                    v1166 = &unk_2874EEE20;
                                    v1167 = 0;
                                    v1168 = 0;
                                    v1169 = 0;
                                    sub_2621C5224(v1170);
                                    memset(&v1170[176], 0, 24);
                                    sub_262245CF8(buf, log);
                                    kdebug_trace();
                                    if (v1022 && v1022[8] == 1)
                                    {
                                      v817 = v1022[1];
                                    }

                                    else
                                    {
                                      v817 = 0;
                                    }

                                    CVPixelBufferLockBaseAddress(v817, 1uLL);
                                    v818 = v1022;
                                    if (v1022)
                                    {
                                      v819 = v1022[5];
                                      v818 = v1022[6];
                                    }

                                    else
                                    {
                                      v819 = 0;
                                    }

                                    *&v1117 = v819;
                                    *&v1113 = v818;
                                    sub_262223490(&v1176, &v1117, &v1113);
                                    v820 = v1022;
                                    sub_2622C5800(v1022);
                                    v1150 = 0u;
                                    v1151 = 0u;
                                    *(v1148 + 8) = v1176;
                                    *&v1148[0] = &unk_2874EE7C8;
                                    v1155 = 0;
                                    v1156 = 1;
                                    *(&v1148[1] + 8) = v1177;
                                    *(&v1148[2] + 8) = v1178;
                                    *(&v1148[3] + 1) = v1176.i64[1];
                                    v1149 = 1;
                                    v1153 = 0;
                                    v1154 = 0;
                                    v1152 = v1176.i64[0] * v1176.i64[1];
                                    if (v1176.i64[0] * v1176.i64[1])
                                    {
                                      operator new();
                                    }

                                    v1157 = 1;
                                    sub_262270A20((v684 + 16), buf, v684 + 736, v1021, v684 + 1816, v1171, v1148, v816);
                                  }

                                  v744 = v1037[15];
                                  v745 = v1047[14];
                                  v747 = objc_msgSend_objectAtIndexedSubscript_(v745, v746, i5);
                                  v749 = objc_msgSend_objectForKey_(v744, v748, v747);

                                  if (v749)
                                  {
                                    break;
                                  }

LABEL_778:
                                }

                                v1070 = objc_msgSend_points(v738, v750, v751);
                                v753 = v749[2];
                                v752 = v749[3];
                                v754.i32[0] = *(v684 + 1648);
                                memset(buf, 0, 32);
                                buf[4].i32[0] = 1065353216;
                                objb = v752;
                                if (v753 >= v752)
                                {
                                  sub_2621C74C4(buf);
                                  goto LABEL_778;
                                }

                                v1027 = i5;
                                v1029 = v749;
                                v1084 = 0;
                                *v754.i32 = *v754.i32 * 0.5;
                                v1051 = vdupq_lane_s32(v754, 0).u64[0];
                                while (1)
                                {
                                  v1091 = *(v1070 + 16 * v753);
                                  v755 = vcvt_s32_f32(vrnda_f32(vdiv_f32(*&v1091, v1051)));
                                  HIWORD(v1094) = v755.i16[2];
                                  LOWORD(v1094) = v755.i16[0];
                                  if (!*&buf[1])
                                  {
                                    goto LABEL_742;
                                  }

                                  v756 = vcnt_s8(buf[1]);
                                  v756.i16[0] = vaddlv_u8(v756);
                                  if (v756.u32[0] > 1uLL)
                                  {
                                    v757 = v1094;
                                    if (*&buf[1] <= v1094)
                                    {
                                      v757 = v1094 % buf[1].i32[0];
                                    }
                                  }

                                  else
                                  {
                                    v757 = (buf[1].i32[0] - 1) & v1094;
                                  }

                                  v758 = *(*buf + 8 * v757);
                                  if (v758)
                                  {
                                    for (i6 = *v758; i6; i6 = *i6)
                                    {
                                      v760 = i6[1];
                                      if (v760 == v1094)
                                      {
                                        if (*(i6 + 4) == v1094)
                                        {
                                          goto LABEL_747;
                                        }
                                      }

                                      else
                                      {
                                        if (v756.u32[0] > 1uLL)
                                        {
                                          if (v760 >= *&buf[1])
                                          {
                                            v760 %= *&buf[1];
                                          }
                                        }

                                        else
                                        {
                                          v760 &= *&buf[1] - 1;
                                        }

                                        if (v760 != v757)
                                        {
                                          break;
                                        }
                                      }
                                    }
                                  }

                                  if (v756.u32[0] > 1uLL)
                                  {
                                    v761 = v1094;
                                    if (*&buf[1] <= v1094)
                                    {
                                      v761 = v1094 % buf[1].i32[0];
                                    }
                                  }

                                  else
                                  {
                                    v761 = (buf[1].i32[0] - 1) & v1094;
                                  }

                                  v762 = *(*buf + 8 * v761);
                                  if (!v762 || (v763 = *v762) == 0)
                                  {
LABEL_742:
                                    operator new();
                                  }

                                  while (1)
                                  {
                                    v764 = v763[1];
                                    if (v764 == v1094)
                                    {
                                      break;
                                    }

                                    if (v756.u32[0] > 1uLL)
                                    {
                                      if (v764 >= *&buf[1])
                                      {
                                        v764 %= *&buf[1];
                                      }
                                    }

                                    else
                                    {
                                      v764 &= *&buf[1] - 1;
                                    }

                                    if (v764 != v761)
                                    {
                                      goto LABEL_742;
                                    }

LABEL_741:
                                    v763 = *v763;
                                    if (!v763)
                                    {
                                      goto LABEL_742;
                                    }
                                  }

                                  if (*(v763 + 4) != v1094)
                                  {
                                    goto LABEL_741;
                                  }

                                  v765 = v1084;
                                  v766 = v1084 >> 3;
                                  if (((v1084 >> 3) + 1) >> 61)
                                  {
                                    sub_2621CBEB0();
                                  }

                                  if (v1084 >> 3 != -1)
                                  {
                                    sub_2621CBEC8((v1084 >> 3) + 1);
                                  }

                                  *(8 * v766) = v1091;
                                  v1084 = 8 * v766 + 8;
                                  memcpy(0, 0, v765);
LABEL_747:
                                  if (++v753 == objb)
                                  {
                                    sub_2621C74C4(buf);
                                    if (!v1084)
                                    {
                                      goto LABEL_777;
                                    }

                                    v767 = v1029[18];
                                    v768 = 0;
                                    while (1)
                                    {
                                      v769 = *v768;
                                      v770 = vsub_f32(v767, *v768);
                                      v771 = vmul_f32(v770, v770);
                                      v771.f32[0] = sqrtf(vaddv_f32(v771));
                                      v772 = *(v684 + 1648);
                                      if (v771.f32[0] < v772)
                                      {
                                        v771.i32[0] = *(v684 + 1648);
                                      }

                                      v773 = (v771.f32[0] / v772);
                                      if (v773 < 0)
                                      {
                                        goto LABEL_776;
                                      }

                                      v774 = 0;
                                      v775 = vdup_lane_s32(v771, 0);
                                      v776 = vdiv_f32(v770, v775);
                                      while (2)
                                      {
                                        v775.i32[0] = *(v684 + 1648);
                                        v777 = vcvt_s32_f32(vrndm_f32(vdiv_f32(vmla_n_f32(v769, vmul_n_f32(v776, v774), v775.f32[0]), vdup_lane_s32(v775, 0))));
                                        if (sub_262295160((v684 + 1656), v777))
                                        {
                                          goto LABEL_774;
                                        }

                                        v778 = *(v684 + 1664);
                                        if (!*&v778)
                                        {
                                          goto LABEL_773;
                                        }

                                        v779 = vcnt_s8(v778);
                                        v779.i16[0] = vaddlv_u8(v779);
                                        if (v779.u32[0] > 1uLL)
                                        {
                                          v780 = v777;
                                          if (*&v778 <= v777)
                                          {
                                            v780 = v777 % *&v778;
                                          }
                                        }

                                        else
                                        {
                                          v780 = (*&v778 - 1) & v777;
                                        }

                                        v781 = *(*(v684 + 1656) + 8 * v780);
                                        if (!v781 || (v782 = *v781) == 0)
                                        {
LABEL_773:
                                          operator new();
                                        }

                                        while (1)
                                        {
                                          v783 = v782[1];
                                          if (v783 == v777)
                                          {
                                            break;
                                          }

                                          if (v779.u32[0] > 1uLL)
                                          {
                                            if (v783 >= *&v778)
                                            {
                                              v783 %= *&v778;
                                            }
                                          }

                                          else
                                          {
                                            v783 &= *&v778 - 1;
                                          }

                                          if (v783 != v780)
                                          {
                                            goto LABEL_773;
                                          }

LABEL_772:
                                          v782 = *v782;
                                          if (!v782)
                                          {
                                            goto LABEL_773;
                                          }
                                        }

                                        if (v782[2] != v777)
                                        {
                                          goto LABEL_772;
                                        }

                                        *(v782 + 24) = 1;
LABEL_774:
                                        _ZF = v774++ == v773;
                                        if (!_ZF)
                                        {
                                          continue;
                                        }

                                        break;
                                      }

LABEL_776:
                                      if (++v768 == v1084)
                                      {
LABEL_777:
                                        v738 = v1023;
                                        v749 = v1029;
                                        i5 = v1027;
                                        goto LABEL_778;
                                      }
                                    }
                                  }
                                }
                              }

                              v821 = objc_msgSend_copy(v1026, v694, v695);
                              v822 = *(v684 + 1632);
                              *(v684 + 1632) = v821;

                              sub_2621CD534(&v1145);
                            }

                            else
                            {
                              v1026 = 0;
                            }

                            if (*(a1 + 184) == 1)
                            {
                              v825 = objc_msgSend_dictionaryRepresentation(v1026, v823, v824);
                              objc_msgSend_setObject_forKeyedSubscript_(v1041, v826, v825, @"consistency");
                            }

                            v827 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v823, v824);
                            v829 = objc_msgSend_BOOLForKey_(v827, v828, @"fp_earlyout_consistency");

                            if (v829)
                            {
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              v830 = qword_27FF0C088;
                              if (!os_log_type_enabled(v830, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_914;
                              }

                              buf[0].i32[0] = 138412290;
                              *(buf + 4) = @"fp_earlyout_consistency";
LABEL_882:
                              _os_log_debug_impl(&dword_2621C3000, v830, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
LABEL_914:

                              v1039 = v1026;
LABEL_915:

                              goto LABEL_916;
                            }

                            v831 = *(a1 + 80);
                            v832 = v1026;
                            v1093 = v1047;
                            v1064 = v1021;
                            v1071 = v832;
                            objc = v831;
                            if (!v831)
                            {
                              v1026 = 0;
LABEL_819:

                              v876 = v1026;
                              if (*(a1 + 184) == 1)
                              {
                                v877 = objc_msgSend_dictionaryRepresentation(v1026, v874, v875);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v878, v877, @"scanui_formatter");
                              }

                              if (*(a1 + 136) == 1)
                              {
                                v879 = sub_262350304(*(a1 + 144), v1026, v1093);
                                v880 = *(a1 + 152);
                                *(a1 + 152) = v879;
                              }

                              v881 = objc_msgSend_copy(v1026, v874, v875);
                              v882 = *(a1 + 168);
                              *(a1 + 168) = v881;

                              if (v1026)
                              {
                                v885 = objc_msgSend_array(MEMORY[0x277CBEB18], v883, v884);
                                v1143 = 0u;
                                v1144 = 0u;
                                v1141 = 0u;
                                v1142 = 0u;
                                v886 = v1026[3];
                                v889 = objc_msgSend_countByEnumeratingWithState_objects_count_(v886, v887, &v1141, buf, 16);
                                if (v889)
                                {
                                  v890 = *v1142;
                                  do
                                  {
                                    for (i7 = 0; i7 != v889; ++i7)
                                    {
                                      if (*v1142 != v890)
                                      {
                                        objc_enumerationMutation(v886);
                                      }

                                      v892 = *(*(&v1141 + 1) + 8 * i7);
                                      if (!v892 || *(v892 + 116) != 3)
                                      {
                                        objc_msgSend_addObject_(v885, v888, v892);
                                      }
                                    }

                                    v889 = objc_msgSend_countByEnumeratingWithState_objects_count_(v886, v888, &v1141, buf, 16);
                                  }

                                  while (v889);
                                }

                                objc_storeStrong(v1026 + 3, v885);
                                v895 = objc_msgSend_array(MEMORY[0x277CBEB18], v893, v894);
                                v1139 = 0u;
                                v1140 = 0u;
                                v1137 = 0u;
                                v1138 = 0u;
                                v896 = v1026[6];
                                v899 = objc_msgSend_countByEnumeratingWithState_objects_count_(v896, v897, &v1137, v1171, 16);
                                if (v899)
                                {
                                  v900 = *v1138;
                                  do
                                  {
                                    for (i8 = 0; i8 != v899; ++i8)
                                    {
                                      if (*v1138 != v900)
                                      {
                                        objc_enumerationMutation(v896);
                                      }

                                      v902 = *(*(&v1137 + 1) + 8 * i8);
                                      if (!v902 || *(v902 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v895, v898, v902);
                                      }
                                    }

                                    v899 = objc_msgSend_countByEnumeratingWithState_objects_count_(v896, v898, &v1137, v1171, 16);
                                  }

                                  while (v899);
                                }

                                objc_storeStrong(v1026 + 6, v895);
                                v905 = objc_msgSend_array(MEMORY[0x277CBEB18], v903, v904);
                                v1135 = 0u;
                                v1136 = 0u;
                                v1133 = 0u;
                                v1134 = 0u;
                                v906 = v1026[5];
                                v909 = objc_msgSend_countByEnumeratingWithState_objects_count_(v906, v907, &v1133, v1148, 16);
                                if (v909)
                                {
                                  v910 = *v1134;
                                  do
                                  {
                                    for (i9 = 0; i9 != v909; ++i9)
                                    {
                                      if (*v1134 != v910)
                                      {
                                        objc_enumerationMutation(v906);
                                      }

                                      v912 = *(*(&v1133 + 1) + 8 * i9);
                                      if (!v912 || *(v912 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v905, v908, v912);
                                      }
                                    }

                                    v909 = objc_msgSend_countByEnumeratingWithState_objects_count_(v906, v908, &v1133, v1148, 16);
                                  }

                                  while (v909);
                                }

                                objc_storeStrong(v1026 + 5, v905);
                                v915 = objc_msgSend_array(MEMORY[0x277CBEB18], v913, v914);
                                v1131 = 0u;
                                v1132 = 0u;
                                v1129 = 0u;
                                v1130 = 0u;
                                v916 = v1026[4];
                                v919 = objc_msgSend_countByEnumeratingWithState_objects_count_(v916, v917, &v1129, &v1176, 16);
                                if (v919)
                                {
                                  v920 = *v1130;
                                  do
                                  {
                                    for (i10 = 0; i10 != v919; ++i10)
                                    {
                                      if (*v1130 != v920)
                                      {
                                        objc_enumerationMutation(v916);
                                      }

                                      v922 = *(*(&v1129 + 1) + 8 * i10);
                                      if (!v922 || *(v922 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v915, v918, v922);
                                      }
                                    }

                                    v919 = objc_msgSend_countByEnumeratingWithState_objects_count_(v916, v918, &v1129, &v1176, 16);
                                  }

                                  while (v919);
                                }

                                objc_storeStrong(v1026 + 4, v915);
                                v925 = objc_msgSend_array(MEMORY[0x277CBEB18], v923, v924);
                                v1127 = 0u;
                                v1128 = 0u;
                                v1125 = 0u;
                                v1126 = 0u;
                                v926 = v1026[7];
                                v929 = objc_msgSend_countByEnumeratingWithState_objects_count_(v926, v927, &v1125, &v1174, 16);
                                if (v929)
                                {
                                  v930 = *v1126;
                                  do
                                  {
                                    for (i11 = 0; i11 != v929; ++i11)
                                    {
                                      if (*v1126 != v930)
                                      {
                                        objc_enumerationMutation(v926);
                                      }

                                      v932 = *(*(&v1125 + 1) + 8 * i11);
                                      if (!v932 || *(v932 + 120) != 3)
                                      {
                                        objc_msgSend_addObject_(v925, v928, v932);
                                      }
                                    }

                                    v929 = objc_msgSend_countByEnumeratingWithState_objects_count_(v926, v928, &v1125, &v1174, 16);
                                  }

                                  while (v929);
                                }

                                v933 = v1026[7];
                                v1026[7] = v925;

                                v876 = v1026;
                              }

                              if (*(a1 + 184) == 1)
                              {
                                v934 = objc_msgSend_dictionaryRepresentation(v876, v883, v884);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v935, v934, @"filter_other_type_wall");
                              }

                              v936 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v883, v884);
                              v938 = objc_msgSend_BOOLForKey_(v936, v937, @"fp_earlyout_curvedWall");

                              if (v938)
                              {
                                if (qword_27FF0C090 != -1)
                                {
                                  dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                                }

                                v830 = qword_27FF0C088;
                                if (!os_log_type_enabled(v830, OS_LOG_TYPE_DEBUG))
                                {
                                  goto LABEL_914;
                                }

                                buf[0].i32[0] = 138412290;
                                *(buf + 4) = @"fp_earlyout_curvedWall";
                                goto LABEL_882;
                              }

                              v939 = sub_2621DF4F8(*(a1 + 96), v876, v1020, v1036, 1);

                              if (*(a1 + 184) == 1)
                              {
                                v942 = objc_msgSend_dictionaryRepresentation(v939, v940, v941);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v943, v942, @"height_estimator");
                              }

                              if (objc_msgSend_isDoorWindowEnabled(a1, v940, v941))
                              {
                                v946 = *(a1 + 40);
                                v947 = objc_msgSend_firstObject(v1033, v944, v945);
                                v950 = objc_msgSend_openings(log, v948, v949);
                                v951 = sub_26223C878(v946, v1020, v947, v1093, v1064, v939, v950);

                                if (*(a1 + 184) == 1)
                                {
                                  v954 = objc_msgSend_dictionaryRepresentation(v951, v952, v953);
                                  objc_msgSend_setObject_forKeyedSubscript_(v1041, v955, v954, @"door_window");
                                }

                                if (sub_2621F5A14())
                                {
                                  v1026 = v951;
                                  if (qword_27FF0C090 != -1)
                                  {
                                    dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                                  }

                                  v830 = qword_27FF0C088;
                                  if (!os_log_type_enabled(v830, OS_LOG_TYPE_DEBUG))
                                  {
                                    goto LABEL_914;
                                  }

                                  buf[0].i32[0] = 138412290;
                                  *(buf + 4) = @"fp_earlyout_windowDoorDetect";
                                  goto LABEL_882;
                                }
                              }

                              else
                              {
                                v951 = v939;
                              }

                              kdebug_trace();
                              v956 = sub_262383C48(*(a1 + 104), v951, v1020, v1093);

                              if (*(a1 + 184) == 1)
                              {
                                v959 = objc_msgSend_dictionaryRepresentation(v956, v957, v958);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v960, v959, @"opening_height_alignment");
                              }

                              kdebug_trace();
                              if (objc_msgSend_isDoorWindowEnabled(a1, v961, v962) && *(a1 + 164) == 1)
                              {
                                v963 = sub_2622958B4(*(a1 + 112), v956);

                                if (*(a1 + 184) == 1)
                                {
                                  v966 = objc_msgSend_dictionaryRepresentation(v963, v964, v965);
                                  objc_msgSend_setObject_forKeyedSubscript_(v1041, v967, v966, @"recessed_area_recon");
                                }

                                v968 = v963;
                              }

                              else
                              {
                                v968 = v956;
                              }

                              v969 = sub_2621C441C(*(a1 + 120), v968, *(a1 + 161), *(a1 + 162), *(a1 + 163));

                              if (*(a1 + 184) == 1)
                              {
                                v972 = objc_msgSend_dictionaryRepresentation(v969, v970, v971);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v973, v972, @"parent_association");
                              }

                              v974 = objc_msgSend_render(a1, v970, v971);
                              v975 = sub_26229D35C(v974, v969, v1064, *(a1 + 56) + 1968);

                              if (*(a1 + 184) == 1)
                              {
                                v978 = objc_msgSend_dictionaryRepresentation(v975, v976, v977);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v979, v978, @"render");
                              }

                              kdebug_trace();
                              v980 = sub_26235E988(*(a1 + 128), v975, v1036, v1093, 0, 0);

                              if (*(a1 + 184) == 1)
                              {
                                v983 = objc_msgSend_dictionaryRepresentation(v980, v981, v982);
                                objc_msgSend_setObject_forKeyedSubscript_(v1041, v984, v983, @"floor_estimation");
                              }

                              kdebug_trace();
                              v985.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
                              if (qword_27FF0C090 != -1)
                              {
                                dispatch_once(&qword_27FF0C090, &unk_2874EE160);
                              }

                              v830 = qword_27FF0C088;
                              if (os_log_type_enabled(v830, OS_LOG_TYPE_DEFAULT))
                              {
                                v988 = objc_msgSend_walls(v980, v986, v987);
                                v1065 = objc_msgSend_count(v988, v989, v990);
                                v1085 = objc_msgSend_openings(v980, v991, v992);
                                objd = objc_msgSend_count(v1085, v993, v994);
                                __pc = objc_msgSend_windows(v980, v995, v996);
                                v999 = objc_msgSend_count(__pc, v997, v998);
                                v1002 = objc_msgSend_doors(v980, v1000, v1001);
                                v1005 = objc_msgSend_count(v1002, v1003, v1004);
                                v1008 = objc_msgSend_opendoors(v980, v1006, v1007);
                                v1011 = objc_msgSend_count(v1008, v1009, v1010);
                                v1014 = objc_msgSend_curvedWalls(v980, v1012, v1013);
                                v1017 = objc_msgSend_count(v1014, v1015, v1016);
                                buf[0].i32[0] = 134219520;
                                *(buf + 4) = v1065;
                                buf[1].i16[2] = 2048;
                                *(&buf[1] + 6) = objd;
                                buf[2].i16[3] = 2048;
                                buf[3] = v999;
                                buf[4].i16[0] = 2048;
                                *(&buf[4] + 2) = v1005;
                                buf[5].i16[1] = 2048;
                                *(&buf[5] + 4) = v1011;
                                buf[6].i16[2] = 2048;
                                *(&buf[6] + 6) = v1017;
                                buf[7].i16[3] = 2048;
                                buf[8] = ((v985.__d_.__rep_ - v1030.__d_.__rep_) / 1000000);
                                _os_log_impl(&dword_2621C3000, v830, OS_LOG_TYPE_DEFAULT, "Overall walls: %lu, openings: %lu, windows: %lu, doors: %lu, opendoors: %lu, curvedWalls: %lu, consume: %lld", buf, 0x48u);
                              }

                              v1026 = v980;
                              goto LABEL_914;
                            }

                            sub_2622B1630(v832);
                            v833 = v1093[14];
                            v836 = objc_msgSend_count(v833, v834, v835) == 0;

                            if (v836)
                            {
                              v867 = v1071;
                              v866 = objc_msgSend_copy(v1071, v837, v838);
                            }

                            else
                            {
                              v1045 = v1071;
                              v839 = v1093;
                              v840 = v1064;
                              v1171[0].__locale_ = 0;
                              v1171[1].__locale_ = 0;
                              *&v1172 = 0;
                              v841 = v839[15];
                              v842 = v1093[14];
                              v844 = objc_msgSend_objectAtIndexedSubscript_(v842, v843, 0);
                              v1052 = objc_msgSend_objectForKey_(v841, v845, v844);

                              v846 = v839[10];
                              v847 = v1093[14];
                              v850 = objc_msgSend_count(v847, v848, v849);
                              if (v1052)
                              {
                                v854 = *(v1052 + 48);
                                v855 = *(v1052 + 64);
                                v856 = *(v1052 + 80);
                                LODWORD(v851) = *(v1052 + 8);
                                LODWORD(v852) = *(v1052 + 12);
                                v857 = *&v851;
                                v858 = *&v852;
                              }

                              else
                              {
                                v857 = 0;
                                v858 = 0;
                                *&v854 = 0;
                                DWORD2(v854) = 0;
                                *&v855 = 0;
                                DWORD2(v855) = 0;
                                v856 = 0uLL;
                              }

                              buf[1].i32[0] = DWORD2(v854);
                              buf[3].i32[0] = DWORD2(v855);
                              buf[0] = v854;
                              buf[2] = v855;
                              buf[5].i32[0] = v856.n128_i32[2];
                              buf[4] = v856.n128_u64[0];
                              sub_26224041C(v846, v850, buf, v857, v858, v1171, v856, *&v854, *&v855, v851, v852, v853);

                              v859 = v1093[14];
                              v862 = objc_msgSend_count(v859, v860, v861) != 0;

                              if (v862)
                              {
                                v865 = *(v839[10] + 3);
                                sub_2621CBF10(1uLL);
                              }

                              v866 = objc_msgSend_copy(v1045, v863, v864);

                              if (v1171[0].__locale_)
                              {
                                operator delete(v1171[0].__locale_);
                              }

                              v867 = v1071;
                            }

                            if (v867)
                            {
                              v868 = *(v867 + 3);
                              if (!v866)
                              {
                                goto LABEL_815;
                              }
                            }

                            else
                            {
                              v868 = 0;
                              if (!v866)
                              {
LABEL_815:
                                if (v867)
                                {
                                  v869 = *(v867 + 4);
                                  if (!v866)
                                  {
LABEL_818:
                                    sub_2622B1630(v866);
                                    v872 = objc_msgSend_copy(v866, v870, v871);
                                    v1026 = v866;
                                    v873 = *(objc + 8);
                                    *(objc + 8) = v872;

                                    goto LABEL_819;
                                  }
                                }

                                else
                                {
                                  v869 = 0;
                                  if (!v866)
                                  {
                                    goto LABEL_818;
                                  }
                                }

                                v866[4] = v869;
                                goto LABEL_818;
                              }
                            }

                            v866[3] = v868;
                            goto LABEL_815;
                          }

LABEL_458:
                          sub_2622C5BB4(*(v514 + 16));
                          sub_2622C5BB4(*(v514 + 80));
                          sub_2622C5BB4(*(v514 + 96));
                          v556 = v515[7];
                          v557 = v515[8];
                          v1171[1].__locale_ = 0;
                          *&v1172 = 0;
                          v1171[0].__locale_ = 0;
                          sub_2621DDA38(v1171, v556, v557, (v557 - v556) >> 4);
                          v560 = 0;
                          v561 = 0;
                          locale = v1171[0].__locale_;
                          v563 = buf[1];
                          v564 = buf[2];
                          v565 = buf[0];
                          while (objc_msgSend_count(v1090, v558, v559) > v561)
                          {
                            v568 = *(objc_msgSend_points(v1090, v566, v567) + v560);
                            v569 = vmovn_s32(vmvnq_s8(vcgeq_f32(v568, *locale)));
                            if ((v569.i8[0] & 1) == 0)
                            {
                              v570 = vmovn_s32(vmvnq_s8(vcgeq_f32(locale[1], v568)));
                              if ((v570.i8[0] & 1) == 0 && (v569.i8[2] & 1) == 0 && (v570.i8[2] & 1) == 0)
                              {
                                if (v563 >= *&v564)
                                {
                                  v571 = v563 - v565;
                                  v572 = (v563 - v565) >> 3;
                                  v573 = v572 + 1;
                                  if ((v572 + 1) >> 61)
                                  {
                                    buf[0] = v565;
                                    sub_2621CBEB0();
                                  }

                                  if ((*&v564 - v565) >> 2 > v573)
                                  {
                                    v573 = (*&v564 - v565) >> 2;
                                  }

                                  if (*&v564 - v565 >= 0x7FFFFFFFFFFFFFF8uLL)
                                  {
                                    v574 = 0x1FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v574 = v573;
                                  }

                                  if (v574)
                                  {
                                    sub_2621CBEC8(v574);
                                  }

                                  v575 = (8 * v572);
                                  v564 = 0;
                                  *v575 = v561;
                                  v563 = v575 + 1;
                                  memcpy(0, v565, v571);
                                  if (v565)
                                  {
                                    operator delete(v565);
                                  }

                                  v565 = 0;
                                }

                                else
                                {
                                  *v563++ = v561;
                                }
                              }
                            }

                            ++v561;
                            v560 += 16;
                          }

                          buf[1] = v563;
                          buf[2] = v564;
                          buf[0] = v565;
                          v576 = *(v514 + 8);
                          if (v576)
                          {
                            if (*(v576 + 64) == 1)
                            {
                              v577 = *(v576 + 8);
                            }

                            else
                            {
                              v577 = 0;
                            }
                          }

                          else
                          {
                            v577 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v577, 0);
                          v578 = *(v514 + 16);
                          if (v578 && *(v578 + 64) == 1)
                          {
                            v579 = *(v578 + 8);
                          }

                          else
                          {
                            v579 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v579, 0);
                          v580 = *(v514 + 72);
                          if (v580 && *(v580 + 64) == 1)
                          {
                            v581 = *(v580 + 8);
                          }

                          else
                          {
                            v581 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v581, 0);
                          v582 = *(v514 + 80);
                          if (v582 && *(v582 + 64) == 1)
                          {
                            v583 = *(v582 + 8);
                          }

                          else
                          {
                            v583 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v583, 0);
                          v584 = *(v514 + 88);
                          if (v584 && *(v584 + 64) == 1)
                          {
                            v585 = *(v584 + 8);
                          }

                          else
                          {
                            v585 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v585, 0);
                          v586 = *(v514 + 96);
                          if (v586 && *(v586 + 64) == 1)
                          {
                            v587 = *(v586 + 8);
                          }

                          else
                          {
                            v587 = 0;
                          }

                          CVPixelBufferLockBaseAddress(v587, 0);
                          v588 = sub_2622B5158(v1090, buf, v518, *(v514 + 16), *(v514 + 24), *(v514 + 28), *(v514 + 80), *(v514 + 96), 0);
                          v589 = *(v514 + 8);
                          if (v589)
                          {
                            v590 = v589[6] * v589[5];
                          }

                          else
                          {
                            v590 = 0;
                          }

                          v591 = *(v514 + 24);
                          if (v591 < v588)
                          {
                            v592 = sub_2622C57A4(v589, *(v514 + 48));
                            for (i12 = *(v514 + 48); i12; --i12)
                            {
                              _H1 = *v592;
                              __asm { FCVT            S1, H1 }

                              _S1 = (v591 / v588) * _S1;
                              __asm { FCVT            H1, S1 }

                              *v592 = LOWORD(_S1);
                              v592 = (v592 + 2);
                            }
                          }

                          v597 = *(v514 + 28);
                          v1044 = HIDWORD(v588);
                          if (v597 < SHIDWORD(v588))
                          {
                            v598 = sub_2622C57A4(*(v514 + 8), *(v514 + 48) + 1);
                            for (i13 = v590 * *(v514 + 44); i13; --i13)
                            {
                              _H1 = *v598;
                              __asm { FCVT            S1, H1 }

                              _S1 = (v597 / HIDWORD(v588)) * _S1;
                              __asm { FCVT            H1, S1 }

                              *v598 = LOWORD(_S1);
                              v598 = (v598 + 2);
                            }
                          }

                          memset(v1148, 0, 24);
                          sub_2621DDA38(v1148, v1171[0].__locale_, v1171[1].__locale_, (v1171[1].__locale_ - v1171[0].__locale_) >> 4);
                          if (v518)
                          {
                            *__pb = *(v518 + 8);
                            v1082 = *(v518 + 7);
                            *v1063 = *(v518 + 6);
                            v1069 = *(v518 + 5);
                          }

                          v1050 = v588;
                          if (*&v1148[0] != *(&v1148[0] + 1))
                          {
                            v603 = **&v1148[0];
                            sub_2621CBF10(1uLL);
                          }

                          if (*&v1148[0])
                          {
                            *(&v1148[0] + 1) = *&v1148[0];
                            operator delete(*&v1148[0]);
                          }

                          v604 = vsubq_s32(MEMORY[0x10], MEMORY[0]).u64[0];
                          if (v518)
                          {
                            v605 = v518[7];
                          }

                          else
                          {
                            v605 = 0;
                          }

                          v606 = v604;
                          v607 = MEMORY[4] + MEMORY[0] * v605;
                          if (*(v514 + 56))
                          {
                            v608 = 0;
                            v609 = 2 * SHIDWORD(v604);
                            do
                            {
                              v610 = sub_2622C57A4(*(v514 + 8), v608);
                              v611 = sub_2622C57A4(*(v514 + 16), v608);
                              if (v606 >= 1)
                              {
                                v612 = v611;
                                for (i14 = 0; i14 != v606; ++i14)
                                {
                                  if (v518)
                                  {
                                    v614 = v518[7];
                                  }

                                  else
                                  {
                                    v614 = 0;
                                  }

                                  memcpy(v610 + 2 * v607 + 2 * v614 * i14, v612 + 2 * v607 + 2 * v614 * i14, v609);
                                }
                              }

                              ++v608;
                            }

                            while (*(v514 + 56) > v608);
                          }

                          else
                          {
                            v609 = 2 * SHIDWORD(v604);
                          }

                          for (i15 = 0; ; ++i15)
                          {
                            v616 = *(v514 + 72);
                            if (!v616 || v616[7] <= i15)
                            {
                              break;
                            }

                            v617 = sub_2622C57A4(v616, i15);
                            v618 = sub_2622C57A4(*(v514 + 80), i15);
                            if (v606 >= 1)
                            {
                              v619 = v618;
                              for (i16 = 0; i16 != v606; ++i16)
                              {
                                if (v518)
                                {
                                  v621 = v518[7];
                                }

                                else
                                {
                                  v621 = 0;
                                }

                                memcpy(v617 + 2 * v607 + 2 * v621 * i16, v619 + 2 * v607 + 2 * v621 * i16, v609);
                              }
                            }
                          }

                          for (i17 = 0; ; ++i17)
                          {
                            v623 = *(v514 + 88);
                            if (!v623 || v623[7] <= i17)
                            {
                              break;
                            }

                            v624 = sub_2622C57A4(v623, i17);
                            v625 = sub_2622C57A4(*(v514 + 96), i17);
                            if (v606 >= 1)
                            {
                              v626 = v625;
                              for (i18 = 0; i18 != v606; ++i18)
                              {
                                if (v518)
                                {
                                  v628 = v518[7];
                                }

                                else
                                {
                                  v628 = 0;
                                }

                                memcpy(v624 + 2 * v607 + 2 * v628 * i18, v626 + 2 * v607 + 2 * v628 * i18, v609);
                              }
                            }
                          }

                          v629 = *(v514 + 8);
                          if (v629 && *(v629 + 64) == 1)
                          {
                            v630 = *(v629 + 8);
                          }

                          else
                          {
                            v630 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v630, 0);
                          v631 = *(v514 + 16);
                          if (v631 && *(v631 + 64) == 1)
                          {
                            v632 = *(v631 + 8);
                          }

                          else
                          {
                            v632 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v632, 0);
                          v633 = *(v514 + 72);
                          if (v633 && *(v633 + 64) == 1)
                          {
                            v634 = *(v633 + 8);
                          }

                          else
                          {
                            v634 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v634, 0);
                          v635 = *(v514 + 80);
                          if (v635 && *(v635 + 64) == 1)
                          {
                            v636 = *(v635 + 8);
                          }

                          else
                          {
                            v636 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v636, 0);
                          v637 = *(v514 + 88);
                          if (v637 && *(v637 + 64) == 1)
                          {
                            v638 = *(v637 + 8);
                          }

                          else
                          {
                            v638 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v638, 0);
                          v639 = *(v514 + 96);
                          if (v639 && *(v639 + 64) == 1)
                          {
                            v640 = *(v639 + 8);
                          }

                          else
                          {
                            v640 = 0;
                          }

                          CVPixelBufferUnlockBaseAddress(v640, 0);
                          operator delete(0);
                          if (v1171[0].__locale_)
                          {
                            operator delete(v1171[0].__locale_);
                          }

                          v544 = buf[0];
                          LODWORD(v641) = v1044;
                          goto LABEL_608;
                        }

                        v554 = v518[7];
LABEL_457:
                        v539[5] = v554;
                        v539[6] = v554;
                        v539[7] = 1;
                        sub_2622C58F8(v539);
                        sub_2622C5A18(v539, v555);
                        memset(buf, 0, 24);
                        if (!v518)
                        {
                          goto LABEL_458;
                        }

                        goto LABEL_445;
                      }

                      if (v540)
                      {
                        v554 = 0;
                        goto LABEL_457;
                      }
                    }

                    else if (v518)
                    {
                      goto LABEL_444;
                    }

                    memset(buf, 0, 24);
                    goto LABEL_458;
                  }

                  v537 = 0;
                }

                v535[5] = v537;
                v535[6] = v537;
                v535[7] = 1;
                sub_2622C58F8(v535);
                sub_2622C5A18(v535, v538);
                goto LABEL_441;
              }

              v533 = 0;
            }

            *(v531 + 40) = v533;
            *(v531 + 48) = v533;
            sub_2622C58F8(v531);
            sub_2622C5A18(v531, v534);
            goto LABEL_436;
          }

          v529 = 0;
        }

        *(v527 + 40) = v529;
        *(v527 + 48) = v529;
        sub_2622C58F8(v527);
        sub_2622C5A18(v527, v530);
        goto LABEL_431;
      }

      v525 = 0;
    }

    *(v523 + 40) = v525;
    *(v523 + 48) = v525;
    sub_2622C58F8(v523);
    sub_2622C5A18(v523, v526);
    goto LABEL_426;
  }

  if (qword_27FF0C090 != -1)
  {
    dispatch_once(&qword_27FF0C090, &unk_2874EE160);
  }

  v1031 = qword_27FF0C088;
  if (os_log_type_enabled(v1031, OS_LOG_TYPE_DEBUG))
  {
    buf[0].i32[0] = 138412290;
    *(buf + 4) = @"fp_earlyout_accumulation";
    _os_log_debug_impl(&dword_2621C3000, v1031, OS_LOG_TYPE_DEBUG, "pnp measurement: %@", buf, 0xCu);
  }

  v1039 = 0;
LABEL_916:

LABEL_917:
  sub_2621CD534(&v1095);

  v1018 = *MEMORY[0x277D85DE8];

  return v1039;
}