uint64_t cche_crt_compose_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5, uint64_t a6)
{
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = a5;
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_23();
  v16 = v12(a1, v15 + v15 * v14);
  result = cche_crt_composer_init_ws(a1, v16, a5, a6);
  if (!result)
  {
    result = cche_crt_composer_compose_ws(a1, v16, a2, a3, a4);
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t ccmode_gcm_encrypt(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v9 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v9, a2) && v9 + a2 <= 0xFFFFFFFE0)
  {
    v11 = v8 & 0xF;
    if ((v8 & 0xF) != 0)
    {
      v12 = 16 - v11;
      if (a2 < v12)
      {
LABEL_18:
        if (!a2)
        {
          return 0;
        }

        v18 = a4 - 1;
        v19 = a1 + v11 + 63;
        v20 = a2;
        do
        {
          *(v18 + v20) = *(v19 + v20) ^ *(a3 - 1 + v20);
          --v20;
        }

        while (v20);
        do
        {
          OUTLINED_FUNCTION_0_24(v18);
        }

        while (!v15);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v13 = a4 - 1;
      v14 = 16 - v11;
      do
      {
        *(v13 + v14) = *((v8 & 0xF) + a1 + 63 + v14) ^ *(a3 - 1 + v14);
        --v14;
      }

      while (v14);
      do
      {
        OUTLINED_FUNCTION_0_24(v13);
      }

      while (!v15);
      ccmode_gcm_mult_h(a1, a1 + 16);
      a2 -= v12;
      a3 += v12;
      a4 += v12;
      *(a1 + 96) += v12;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      do
      {
        for (i = 0; i != -16; --i)
        {
          *(a4 + i + 15) = *(a1 + i + 79) ^ *(a3 + i + 15);
        }

        for (j = 0; j != -16; --j)
        {
          *(a1 + j + 31) ^= *(a4 + j + 15);
        }

        ccmode_gcm_mult_h(a1, a1 + 16);
        a2 -= 16;
        a3 += 16;
        a4 += 16;
        *(a1 + 96) += 16;
        ccmode_gcm_update_pad(a1);
      }

      while (a2 > 0xF);
    }

    v11 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_base_convert_init_ws(uint64_t a1, uint64_t *a2, char *a3, _DWORD *a4)
{
  v128[1] = *MEMORY[0x29EDCA608];
  if (*a3 != *a4)
  {
    goto LABEL_94;
  }

  *a2 = a3;
  a2[1] = a4;
  v6 = *(a3 + 1);
  v120 = a4[1];
  v118 = *(a1 + 16);
  v7 = (*(a1 + 24))(a1, v6 + 1);
  v123 = a1;
  v8 = (*(a1 + 24))(a1, v6 + 1);
  v9 = a3;
  v122 = a3;
  if (v6)
  {
    v10 = v8;
    v11 = 0;
    while (1)
    {
      v12 = v11;
      ccn_seti(v6, v7, 1);
      v13 = 0;
      ++v11;
      do
      {
        v14 = v11;
        if (v13 != v12)
        {
          v15 = (*(v9 + 1) - 1);
          v16 = v9;
          if (v13 < v15)
          {
            v16 = v9;
            do
            {
              v16 = *(v16 + 14);
              LODWORD(v15) = v15 - 1;
            }

            while (v15 > v13);
          }

          v14 = v13 + 1;
          ccn_muln(v13 + 1, v10, v7, 1uLL, v16 + 18);
          ccn_set(v14, v7, v10);
        }

        v13 = v14;
      }

      while (v14 != v6);
      if (v120)
      {
        break;
      }

LABEL_20:
      if (v11 == v6)
      {
        goto LABEL_21;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = a4[1] - 1;
      v19 = a4;
      v20 = a4;
      if (v18 > v17)
      {
        v21 = a4[1] - 1;
        v19 = a4;
        do
        {
          v19 = *(v19 + 14);
          --v21;
        }

        while (v21 > v17);
        v20 = a4;
        do
        {
          v20 = *(v20 + 14);
          --v18;
        }

        while (v18 > v17);
      }

      v22 = *(v20 + 2);
      v23 = v12 + *(*a2 + 4) * v17;
      v24 = &a2[((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v23 + 12];
      v128[0] = 0;
      cczp_modn_ws(v123, v19 + 15, v128, v6, v7);
      v9 = v122;
      if (ccrns_mul_modulus_init_ws(v123, v24, v22, v128[0]))
      {
        break;
      }

      if (++v17 == v120)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v25 = v123;
  *(v123 + 16) = v118;
  v26 = *a2;
  v27 = *(*a2 + 4);
  if (!v27)
  {
LABEL_42:
    v54 = a2[1];
    v55 = *(v54 + 4);
    while (--v55)
    {
      v54 = *(v54 + 112);
    }

    v56 = *a2;
    v57 = *(*a2 + 4);
    if (v57)
    {
      v58 = 0;
      v59 = 1;
      v60 = a4;
      do
      {
        while (--v57 > v58)
        {
          v56 = *(v56 + 112);
        }

        v61 = *(v56 + 16);
        v62 = v61 * v59;
        v63 = (v61 * v59) >> 64;
        v64 = *(v54 + 32);
        v65 = (v62 * v64) >> 64;
        v66 = (v63 * v64) >> 64;
        v67 = v63 * v64;
        v38 = __CFADD__(v65, v67);
        v68 = v65 + v67;
        v69 = v38;
        v70 = v69 + __CFADD__(v62 * *(v54 + 40), v68) + v66 + *(v54 + 40) * v63 + ((v62 * *(v54 + 40)) >> 64);
        v59 = v62 + *(v54 + 16) * ~v70 + (((v62 + *(v54 + 16) * ~v70) >> 63) & *(v54 + 16));
        ++v58;
        v56 = *a2;
        v57 = *(*a2 + 4);
      }

      while (v58 < v57);
    }

    else
    {
      v59 = 1;
      v60 = a4;
    }

    result = ccrns_mul_modulus_init_ws(v123, a2 + 2, *(v54 + 16), v59);
    if (result)
    {
      goto LABEL_91;
    }

    v71 = *(v9 + 1);
    if (!v71)
    {
LABEL_63:
      v127 = 0x1FFFFFFFFFFFFFFFLL;
      v75 = v60;
      v76 = v60[1] - 1;
      if (v60[1] != 1)
      {
        v75 = v60;
        do
        {
          v75 = v75[14];
          --v76;
        }

        while (v76);
      }

      cczp_modn_ws(v123, v75 + 15, a2 + 5, 1, &v127);
      result = cczp_inv_field_ws(v123, (v75 + 15), a2 + 6, a2 + 5);
      if (!result)
      {
        result = ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(v123, a2 + 7, a2, 0);
        if (!result)
        {
          if (v60[1] < 2u || (result = ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(v123, a2 + 8, a2, 1u), !result))
          {
            cczp_modn_ws(v123, v75 + 15, &v126, 1, v9 + 144);
            result = cczp_inv_field_ws(v123, (v75 + 15), &v126, &v126);
            if (!result)
            {
              v77 = cczp_prime((v75 + 15));
              v128[0] = 0;
              ccn_read_uint_public_value(1uLL, v128, 8uLL, v77);
              result = ccrns_mul_modulus_init_var_time_ws(v123, a2 + 9, bswap64(v128[0]), v126);
              if (!result)
              {
                LODWORD(v78) = *(v9 + 1) - 1;
                if (*(v9 + 1) == 1)
                {
LABEL_83:
                  ccn_mul_ws(v25, 1uLL, v125, v75 + 18, &v127);
                  LODWORD(v105) = *(v9 + 1);
                  if (v105)
                  {
                    v106 = 0;
                    do
                    {
                      v107 = v9;
                      if (v106 < (v105 - 1))
                      {
                        v108 = v105 - 2;
                        v107 = v9;
                        do
                        {
                          v107 = *(v107 + 14);
                          v38 = v106 >= v108--;
                        }

                        while (!v38);
                      }

                      cczp_modn_ws(v25, v107 + 15, &v124, 2, v125);
                      v109 = v124;
                      v110 = *a2;
                      v111 = sizeof_struct_ccrns_mul_modulus();
                      v112 = *(v110 + 4);
                      v113 = a2[1];
                      OUTLINED_FUNCTION_0_25(v111 + 7);
                      a2[v114 + 12 + v115 * v116 + v106++] = v109;
                      v105 = *(v9 + 1);
                    }

                    while (v106 < v105);
                  }

                  result = 0;
                }

                else
                {
                  v79 = 0;
                  v80 = *(v9 + 2);
                  v81 = a2 + 12;
                  while (1)
                  {
                    v82 = v78 - 1;
                    v83 = v82;
                    v84 = v9;
                    do
                    {
                      v84 = *(v84 + 14);
                      v38 = v79 >= v83--;
                    }

                    while (!v38);
                    v85 = v9;
                    do
                    {
                      v85 = *(v85 + 14);
                      v38 = v79 >= v82--;
                    }

                    while (!v38);
                    v86 = *a2;
                    v87 = sizeof_struct_ccrns_mul_modulus();
                    v88 = *(v86 + 4);
                    v89 = a2[1];
                    OUTLINED_FUNCTION_0_25(v87 + 7);
                    v93 = &v81[v90 + v91 * v92 + v92 + v91 * v79];
                    v94 = *(v85 + 2);
                    v95 = v80 + v94 * ~((*(v85 + 3) * v80) >> 64);
                    v96 = v95 + ((v95 >> 63) & v94);
                    result = ccrns_mul_modulus_init_var_time_ws(v123, v93, v94, v96);
                    if (result)
                    {
                      break;
                    }

                    v128[0] = v96;
                    result = cczp_inv_field_ws(v123, (v84 + 120), v128, v128);
                    if (result)
                    {
                      break;
                    }

                    v97 = v128[0];
                    v98 = *a2;
                    v99 = sizeof_struct_ccrns_mul_modulus();
                    v100 = *(v98 + 4);
                    v101 = a2[1];
                    OUTLINED_FUNCTION_0_25(v99 + 7);
                    result = ccrns_mul_modulus_init_var_time_ws(v123, &v81[v102 + v103 * v104 + v104 + v103 * (v104 - 1) + v103 * v79], *(v85 + 2), v97);
                    if (result)
                    {
                      break;
                    }

                    v25 = v123;
                    ++v79;
                    v9 = v122;
                    v78 = (*(v122 + 1) - 1);
                    if (v79 >= v78)
                    {
                      goto LABEL_83;
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_91;
    }

    v72 = 0;
    while (1)
    {
      v73 = v9;
      if (v71 - 1 > v72)
      {
        v74 = v71 - 1;
        v73 = v9;
        do
        {
          v73 = *(v73 + 14);
          --v74;
        }

        while (v74 > v72);
      }

      if (*(v73 + 2) == 0x1FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v72 == v71)
      {
        goto LABEL_63;
      }
    }

LABEL_94:
    result = 4294967289;
    goto LABEL_91;
  }

  v28 = 0;
  while (1)
  {
    v29 = (*(v26 + 4) - 1);
    v30 = v26;
    v31 = v26;
    if (v28 < v29)
    {
      v32 = *(v26 + 4) - 1;
      v30 = v26;
      do
      {
        v30 = *(v30 + 112);
        --v32;
      }

      while (v32 > v28);
      v31 = v26;
      do
      {
        v31 = v31[14];
        LODWORD(v29) = v29 - 1;
      }

      while (v29 > v28);
    }

    v33 = 0;
    v34 = 1;
    do
    {
      if (v28 != v33)
      {
        v35 = *(v26 + 4);
        v36 = v26;
        if (v33 < (v35 - 1))
        {
          v37 = v35 - 2;
          v36 = v26;
          do
          {
            v36 = *(v36 + 112);
            v38 = v33 >= v37--;
          }

          while (!v38);
        }

        v39 = v31[2];
        v40 = *(v36 + 16) + v39 * ~((v31[3] * *(v36 + 16)) >> 64);
        v41 = v40 + ((v40 >> 63) & v39);
        v42 = v41 * v34;
        v43 = (v41 * v34) >> 64;
        v44 = v31[4];
        v45 = (v42 * v44) >> 64;
        v46 = (v43 * v44) >> 64;
        v47 = v43 * v44;
        v38 = __CFADD__(v45, v47);
        v48 = v45 + v47;
        v49 = v38;
        v50 = v49 + __CFADD__(v42 * v31[5], v48) + v46 + v31[5] * v43 + ((v42 * v31[5]) >> 64);
        v34 = v42 + v31[2] * ~v50 + (((v42 + v31[2] * ~v50) >> 63) & v31[2]);
      }

      ++v33;
    }

    while (v33 != v27);
    v128[0] = v34;
    result = cczp_inv_field_ws(v123, v30 + 120, v128, v128);
    if (result)
    {
      break;
    }

    v52 = *a2;
    v53 = sizeof_struct_ccrns_mul_modulus();
    result = ccrns_mul_modulus_init_var_time_ws(v123, &a2[((v53 + 7) >> 3) * (*(a2[1] + 4) * *(v52 + 4)) + 12 + ((v53 + 7) >> 3) * v28], v31[2], v128[0]);
    if (result)
    {
      break;
    }

    if (++v28 == v27)
    {
      goto LABEL_42;
    }
  }

LABEL_91:
  v117 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccpolyzp_po2cyc_base_convert_neg_q_inv_mod_t_ws(uint64_t a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v6 = a3[1];
  v8 = *(v6 + 4);
  while (--v8 > a4)
  {
    v6 = *(v6 + 112);
  }

  ccn_seti(1, a2, 1);
  v9 = *(v7 + 4);
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      v11 = v9 - 1;
      v12 = v7;
      if (v11 > i)
      {
        v12 = v7;
        do
        {
          v12 = *(v12 + 112);
          --v11;
        }

        while (v11 > i);
      }

      v13 = cczp_prime(v12 + 120);
      cczp_modn_ws(a1, (v6 + 120), v17, 1, v13);
      cczp_mul_ws(a1, v6 + 120);
      v9 = *(v7 + 4);
    }
  }

  v14 = cczp_inv_field_ws(a1, v6 + 120, a2, a2);
  if (!v14)
  {
    cczp_negate(v6 + 120, a2, a2);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t ccpolyzp_po2cyc_base_convert_poly_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD **a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  if (ccpolyzp_po2cyc_ctx_eq(*a3, *a4) && (v8 = *a2, ccpolyzp_po2cyc_ctx_eq(*a2, a4[1])))
  {
    v9 = *v7;
    if (*v7)
    {
      v10 = 0;
      v11 = v8[1];
      v12 = a2 + 1;
      v36 = v8;
      v37 = a2;
      v35 = a2 + 1;
      while (!v11)
      {
LABEL_21:
        if (++v10 >= v9)
        {
          goto LABEL_22;
        }
      }

      v13 = 0;
      while (1)
      {
        v14 = v11 - 1;
        v15 = v8;
        if (v11 - 1 > v13)
        {
          v15 = v8;
          do
          {
            v15 = v15[14];
            --v14;
          }

          while (v14 > v13);
        }

        v42 = 0;
        v43 = 0;
        if (v7[1])
        {
          break;
        }

        v24 = 0;
        v23 = 0;
LABEL_16:
        v25 = v15[4];
        v26 = (v25 * v23) >> 64;
        v27 = v25 * v24;
        v28 = (v25 * v24) >> 64;
        v29 = __CFADD__(v26, v27);
        v30 = v26 + v27;
        v31 = v29;
        v32 = v31 + __CFADD__(v15[5] * v23, v30) + v28 + v15[5] * v24 + ((v15[5] * v23) >> 64);
        v12[v10 + **a2 * v13++] = v23 + v15[2] * ~v32 + (((v23 + v15[2] * ~v32) >> 63) & v15[2]);
        v11 = v8[1];
        if (v13 >= v11)
        {
          v9 = *v7;
          goto LABEL_21;
        }
      }

      v16 = 0;
      while (1)
      {
        v17 = (*a4)[1];
        v18 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
        v19 = v18 * (v16 + v13 * v17);
        v20 = a3[(v10 + **a3 * v16) + 1];
        v21 = &(&a4[v18 * (a4[1][1] * v17) + 12])[v18 * v16];
        v22 = (v21[2] * v20) >> 64;
        v41 = v21[1] * v20 + *v21 * ~v22 + (((v21[1] * v20 + *v21 * ~v22) >> 63) & *v21);
        v40 = a4[v19 + 13];
        ccn_mul_ws(a1, 1uLL, v39, &v41, &v40);
        if (ccn_add_ws(a1, 2, &v42, &v42, v39))
        {
          break;
        }

        if (++v16 >= v7[1])
        {
          v23 = v42;
          v24 = v43;
          v8 = v36;
          a2 = v37;
          v12 = v35;
          goto LABEL_16;
        }
      }

      result = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_22:
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  v34 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccpolyzp_po2cyc_base_convert_exact_poly_ws(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a3;
  if (ccpolyzp_po2cyc_ctx_eq(*a3, *a4))
  {
    v9 = *a2;
    v10 = a4[1];
    v11 = *(v10 + 4);
    while (--v11)
    {
      v10 = *(v10 + 112);
    }

    if (ccpolyzp_po2cyc_ctx_eq(*a2, v10))
    {
      v12 = *(v9 + 4);
      while (--v12)
      {
        v9 = *(v9 + 112);
      }

      v13 = *v8;
      v46 = *(a1 + 16);
      v47 = a1;
      v14 = (*(a1 + 24))(a1, v13);
      cc_clear(8 * v13, v14);
      v15 = v8[1];
      if (v15)
      {
        v16 = 0;
        v17 = a2 + 1;
        do
        {
          v18 = v8;
          if (v16 < v15 - 1)
          {
            v19 = v15 - 2;
            v18 = v8;
            do
            {
              v18 = *(v18 + 14);
            }

            while (v16 < v19--);
          }

          v48 = v15;
          v21 = *a4;
          v22 = sizeof_struct_ccrns_mul_modulus();
          if (*v8)
          {
            v23 = 0;
            v24 = (v22 + 7) >> 3;
            v25 = &a4[v24 * v16 + 12];
            v26 = &v25[v24 * (*(a4[1] + 4) * v21[1])];
            do
            {
              v27 = a3[(v23 + v16 * **a3) + 1];
              v28 = v26[1] * v27 + *v26 * ~((v26[2] * v27) >> 64);
              v29 = v28 + ((v28 >> 63) & *v26);
              v30 = v25[1];
              v31 = (v25[2] * v29) >> 64;
              v32 = *v25;
              *(v14 + v23) = *(v14 + v23) + v29 / *(v18 + 2);
              v33 = v30 * v29 + v32 * ~v31;
              if (v16)
              {
                v34 = v17[v23];
              }

              else
              {
                v34 = 0;
              }

              v17[v23++] = (((v33 + ((v33 >> 63) & v32) + v34 - *(v9 + 16)) >> 63) & *(v9 + 16)) + v33 + ((v33 >> 63) & v32) + v34 - *(v9 + 16);
              v35 = *v8;
            }

            while (v23 < v35);
            v15 = v8[1];
          }

          else
          {
            LODWORD(v35) = 0;
            v15 = v48;
          }

          ++v16;
        }

        while (v16 < v15);
        if (!v35)
        {
          goto LABEL_29;
        }
      }

      else if (!*v8)
      {
LABEL_29:
        result = 0;
        *(v47 + 16) = v46;
        return result;
      }

      v36 = 0;
      v37 = 0.5;
      do
      {
        v38 = a4[3];
        v39 = ((*(v14 + v36) + v37) * a4[4]) >> 64;
        v40 = a4[2];
        OUTLINED_FUNCTION_1_13();
        v43 = *(v42 + 8 * v41);
        v44 = *(v9 + 16);
        OUTLINED_FUNCTION_4_1(v41);
      }

      while (v36 < *v8);
      goto LABEL_29;
    }
  }

  return 4294967289;
}

uint64_t ccpolyzp_po2cyc_base_convert_divide_and_round_ws(uint64_t a1, int **a2, uint64_t *a3, uint64_t *a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if (!ccpolyzp_po2cyc_ctx_eq(*a3, *a4))
  {
    goto LABEL_19;
  }

  v8 = *a2;
  if ((*a2)[1] != 1)
  {
    goto LABEL_19;
  }

  v9 = a4[1];
  v10 = *(v9 + 4);
  v11 = v10 - 1;
  if (v10 == 1)
  {
    goto LABEL_19;
  }

  v12 = a4[1];
  do
  {
    v12 = *(v12 + 112);
    --v11;
  }

  while (v11);
  v13 = v10 == 2 && *(v8 + 2) == *(v12 + 16);
  if (v13 && *(*(v9 + 112) + 16) != 0x1FFFFFFFFFFFFFFFLL && *(v9 + 16) == 0x1FFFFFFFFFFFFFFFLL)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = *a3;
    v17 = sizeof_struct_ccpolyzp_po2cyc();
    v18 = v14(a1, (v16[1] * *v16) + ((v17 + 7) >> 3));
    v19 = *a3;
    sizeof_struct_ccpolyzp_po2cyc();
    v20 = *v19;
    v21 = v19[1];
    OUTLINED_FUNCTION_3_4();
    memmove(v18, a3, v22);
    v23 = *a4;
    v24 = sizeof_struct_ccrns_mul_modulus();
    v25 = *(v23 + 4);
    v26 = a4[1];
    OUTLINED_FUNCTION_0_25(v24 + 7);
    ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v18, a3, &a4[v27 + 12 + v28 * v29]);
    LODWORD(v23) = **a3;
    v30 = *(a1 + 24);
    v31 = sizeof_struct_ccpolyzp_po2cyc();
    v32 = v30(a1, (2 * v23) + ((v31 + 7) >> 3));
    ccpolyzp_po2cyc_init_zero(v32, a4[1]);
    v33 = ccpolyzp_po2cyc_base_convert_poly_ws(a1, v32, v18, a4);
    if (!v33)
    {
      v43 = *(a4 + 7);
      ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v32, v32, &v43);
      v34 = **a3;
      if (v34)
      {
        for (i = 0; i != v34; ++i)
        {
          v36 = v32[(i + **v32) + 1];
          v37 = *(v8 + 2);
          v38 = v36 + v37 * ~((*(v8 + 3) * v36) >> 64);
          v39 = v32[i + 1] - ((v38 + ((v38 >> 63) & v37) - a4[5] + (((v38 + ((v38 >> 63) & v37) - a4[5]) >> 63) & v37)) & (((v36 - 0xFFFFFFFFFFFFFFFLL) >> 63) - 1) | (v38 + ((v38 >> 63) & v37)) & -((v36 - 0xFFFFFFFFFFFFFFFLL) >> 63));
          a2[i + 1] = (v39 + ((v39 >> 63) & v37));
        }
      }

      v42 = a4[6];
      ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, a2, a2, &v42);
    }

    *(a1 + 16) = v15;
  }

  else
  {
LABEL_19:
    v33 = 4294967289;
  }

  v40 = *MEMORY[0x29EDCA608];
  return v33;
}

uint64_t ccpolyzp_po2cyc_base_convert_mod_t_divide_and_round_q_last_ws(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(*a2 + 112);
  if (!ccpolyzp_po2cyc_ctx_eq(*a2, *a3) || !*(v5 + 14))
  {
    return 4294967289;
  }

  v7 = *(a1 + 24);
  v97 = *(a1 + 16);
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  v9 = v7(a1, v6[1] * *v6 + ((v8 + 7) >> 3));
  *v9 = v6;
  v10 = a3[1];
  v11 = *(v10 + 4);
  while (--v11)
  {
    v10 = *(v10 + 112);
  }

  v103 = *v5;
  v104 = 1;
  v99 = v5;
  v12 = *(a1 + 24);
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v14 = v12(a1, v103 + ((v13 + 7) >> 3));
  v15 = *(a1 + 24);
  v16 = *v99;
  v98 = a1;
  v17 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v16 >= 0x80)
  {
    v18 = 128;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 + 2 * (v16 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v18);
  v20 = v98;
  v21 = v15(v98, v19 + 6);
  v102 = *(v99 + 2);
  result = ccpolyzp_po2cyc_ctx_init_ws(v98, v21, &v103, &v102, 0);
  if (!result)
  {
    __dst = v14;
    v23 = a2 + 1;
    v24 = &a2[**a2 * v6[1] + 1];
    v25 = *(v98 + 24);
    v26 = sizeof_struct_ccpolyzp_po2cyc();
    v27 = v25(v98, v104 * v103 + ((v26 + 7) >> 3));
    result = ccpolyzp_po2cyc_init(v27, v21, v24);
    if (!result)
    {
      result = ccpolyzp_po2cyc_inv_ntt(v27);
      if (!result)
      {
        v28 = *v27;
        sizeof_struct_ccpolyzp_po2cyc();
        v29 = *v28;
        v30 = v28[1];
        OUTLINED_FUNCTION_3_4();
        memmove(__dst, v27, v31);
        v32 = a3;
        if (v103)
        {
          v33 = 0;
          v34 = __dst + 8;
          do
          {
            v35 = *&v34[8 * v33];
            v37 = *(v10 + 16);
            v36 = *(v10 + 24);
            OUTLINED_FUNCTION_5_1();
            v41 = *(v10 + 16) - v40 - (v38 & v39);
            v43 = v42[10];
            v44 = (v41 * v42[11]) >> 64;
            v45 = v42[9];
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_4_1(v46);
          }

          while (v33 < v103);
        }

        v101 = v6[1];
        if (v101)
        {
          v47 = 0;
          v48 = v27 + 1;
          do
          {
            v49 = v99[1];
            v50 = v99;
            if (v47 < v49 - 1)
            {
              v51 = v49 - 2;
              v50 = v99;
              do
              {
                v50 = v50[14];
              }

              while (v47 < v51--);
            }

            v53 = *v32;
            sizeof_struct_ccrns_mul_modulus();
            v32 = a3;
            if (*v6)
            {
              v54 = *(v53 + 4);
              v55 = a3[1];
              OUTLINED_FUNCTION_2_6();
              do
              {
                v57 = *&__dst[8 * v56 + 8];
                v59 = v50[2];
                v58 = v50[3];
                OUTLINED_FUNCTION_5_1();
                v63 = v62 + (v60 & v61);
                v65 = v64[1];
                v66 = (v63 * v64[2]) >> 64;
                v67 = *v64;
                OUTLINED_FUNCTION_1_13();
                v71 = v50[2];
                v72 = v48[v70] + v71 * ~((v50[3] * v48[v70]) >> 64);
                (&v9[v70 + 1])[v47 * **v9] = (((v72 >> 63) & v71) + (v68 & v69) - v71 + v73 + v72 + (((((v72 >> 63) & v71) + (v68 & v69) - v71 + v73 + v72) >> 63) & v71));
                v56 = v70 + 1;
              }

              while (v56 < *v6);
              v101 = v6[1];
            }

            ++v47;
          }

          while (v47 < v101);
        }

        result = ccpolyzp_po2cyc_fwd_ntt(v9);
        if (!result)
        {
          v74 = v6[1];
          if (v74)
          {
            v75 = 0;
            v76 = *v6;
            do
            {
              v77 = *a3;
              sizeof_struct_ccrns_mul_modulus();
              if (v76)
              {
                v78 = *(v77 + 4);
                v79 = a3[1];
                OUTLINED_FUNCTION_2_6();
                v84 = &a3[v81 + 12 + v82 * v83 + v83 + v82 * (v83 - 1) + v82 * v75];
                v85 = **a2;
                do
                {
                  v86 = v23[v80 + v75 * v85] - (&v9[v80 + 1])[v75 * **v9];
                  v87 = ((v86 >> 63) & *v84) + v86;
                  v88 = (v87 * v84[2]) >> 64;
                  v89 = *v84;
                  v90 = v84[1] * v87;
                  OUTLINED_FUNCTION_1_13();
                  v94 = v93 + (v91 & v92);
                  v85 = **a2;
                  v23[(v95 + v75 * v85)] = v94;
                  v80 = v95 + 1;
                  v76 = *v6;
                }

                while (v80 < *v6);
                v74 = v6[1];
              }

              ++v75;
            }

            while (v75 < v74);
          }

          result = 0;
          *a2 = *(*a2 + 112);
        }

        v20 = v98;
      }
    }
  }

  *(v20 + 16) = v97;
  return result;
}

uint64_t cced448_sign_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  OUTLINED_FUNCTION_1_14();
  v24 = *MEMORY[0x29EDCA608];
  v15 = (*v14)(v14, 57, v23);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v19 = cc_malloc_clear(0x700uLL);
    v20 = xmmword_299CFB8D0;
    v21 = cc_ws_alloc;
    v22 = cc_ws_free;
    if (v19)
    {
      v16 = cced448_sign_ws(&v19, v12, v11, v10, v9, v8, v7, v23, a7);
      v22(&v19);
    }

    else
    {
      v16 = 4294967283;
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t cced448_sign_ws(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, char *a5, char *a6, char *a7, uint64_t a8, uint64_t (**a9)(void, uint64_t, uint64_t *))
{
  v64 = *MEMORY[0x29EDCA608];
  v54 = *a2;
  v13 = cczp_n(a2);
  v55 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v13);
  v15 = (*(a1 + 24))(a1, v13);
  v53 = (*(a1 + 24))(a1, v13);
  v16 = (*(a1 + 24))(a1, 3 * v13);
  v62 = 0u;
  memset(v63, 0, sizeof(v63));
  v60 = 0u;
  v61 = 0u;
  memset(__s, 0, sizeof(__s));
  ccshake256(0x39uLL, a7, 0x72uLL, __s);
  LOBYTE(__s[0]) &= 0xFCu;
  BYTE7(v60) |= 0x80u;
  if (v13)
  {
    v17 = __s;
    v18 = v14;
    v19 = v13;
    do
    {
      v20 = *v17++;
      *v18++ = v20;
      --v19;
    }

    while (v19);
  }

  v21 = OUTLINED_FUNCTION_0_26();
  v23 = cced448_scalar_mult_base_masked_ws(v21, v22, a9, v16, v14);
  if (v23)
  {
    goto LABEL_18;
  }

  v24 = OUTLINED_FUNCTION_0_26();
  v23 = ccec_affinify_ws(v24, v25);
  if (v23)
  {
    goto LABEL_18;
  }

  v26 = 0;
  v27 = &v16[8 * *a2];
  do
  {
    *&v58[v26] = *&v27[v26];
    v26 += 8;
  }

  while (v26 != 56);
  v58[56] = *v16 << 7;
  if (cc_cmp_safe_internal(57, a6, v58))
  {
    v50 = 4294967289;
    goto LABEL_17;
  }

  v28 = OUTLINED_FUNCTION_0_26();
  cced448_shake_to_scalar_ws(v28, v29, v15, v30, v31, v32, v33, v34, a5);
  v35 = OUTLINED_FUNCTION_0_26();
  v23 = cced448_scalar_mult_base_masked_ws(v35, v36, a9, v16, v15);
  if (v23 || (v37 = OUTLINED_FUNCTION_0_26(), v23 = ccec_affinify_ws(v37, v38), v23))
  {
LABEL_18:
    v50 = v23;
  }

  else
  {
    v39 = 0;
    v40 = &v16[8 * *a2];
    do
    {
      *&a3[v39] = *&v40[v39];
      v39 += 8;
    }

    while (v39 != 56);
    a3[56] = *v16 << 7;
    v41 = OUTLINED_FUNCTION_0_26();
    cced448_shake_to_scalar_ws(v41, v42, v53, 0x39uLL, a3, 0x39uLL, a6, v43, a5);
    v44 = OUTLINED_FUNCTION_2_7();
    cczp_mul_ws(v44, v45);
    v46 = OUTLINED_FUNCTION_2_7();
    cczp_add_ws(v46, v47);
    if (v13)
    {
      v48 = a3 + 64;
      do
      {
        v49 = *v14++;
        *(v48 - 7) = v49;
        v48 += 8;
        --v13;
      }

      while (v13);
    }

    v50 = 0;
    a3[113] = 0;
  }

LABEL_17:
  cc_clear(0x7EuLL, __s);
  *(a1 + 16) = v55;
  v51 = *MEMORY[0x29EDCA608];
  return v50;
}

uint64_t cced448_sign()
{
  OUTLINED_FUNCTION_1_14();
  v9 = timingsafe_enable_if_supported();
  v6 = ccec_cp_ed448();
  v7 = cced448_sign_internal(v6, v4, v3, v2, v1, v0, v5);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

void ccn_random_bits(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    OUTLINED_FUNCTION_0_27();
    *(a2 + 8 * v4 - 8) &= v5;
  }
}

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 63) >> 6;
  v5 = *a3;
  if ((a1 + 63) > 0x7F)
  {
    v6 = v5(a3, 8 * v4, a2);
  }

  else
  {
    v6 = v5(a3, 12uLL, __src);
    memcpy(a2, __src, 8 * v4);
    cc_clear(8 * v4, __src);
  }

  if (!v6)
  {
    OUTLINED_FUNCTION_0_27();
    *(a2 + v4 - 1) &= v7;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t ccchacha20poly1305_setnonce_internal(int32x4_t *a1, __int32 *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1[15].i8[8] == 1)
  {
    a1[3].i32[1] = *a2;
    a1[3].i32[2] = a2[1];
    a1[3].i32[3] = a2[2];
    _ccchacha20_xor(a1, 0x40uLL, v5, kZero64);
    ccpoly1305_init_internal(&a1[8].i64[1], v5);
    result = 0;
    a1[15].i8[8] = 2;
  }

  else
  {
    result = 1;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccchacha20poly1305_aad(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  v9 = timingsafe_enable_if_supported();
  if (*(a2 + 248) == 2)
  {
    ccpoly1305_update_internal((a2 + 136), a3, a4);
    v7 = 0;
    *(a2 + 232) += a3;
  }

  else
  {
    v7 = 1;
  }

  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccchacha20poly1305_encrypt_internal(uint64_t a1)
{
  OUTLINED_FUNCTION_2_8(a1);
  if (v5)
  {
    ccpoly1305_update_internal((v1 + 136), -*(v1 + 232) & 0xFLL, kZero64);
    *(v1 + 248) = 3;
  }

  else if (v4 != 3)
  {
    return 1;
  }

  v6 = *(v1 + 240);
  result = 1;
  if (!__CFADD__(v6, v2) && v6 + v2 <= 0x3FFFFFFFC0)
  {
    OUTLINED_FUNCTION_5_2();
    ccpoly1305_update_internal((v1 + 136), v2, v3);
    return OUTLINED_FUNCTION_3_5();
  }

  return result;
}

uint64_t ccchacha20poly1305_decrypt_internal(uint64_t a1)
{
  OUTLINED_FUNCTION_2_8(a1);
  if (v5)
  {
    ccpoly1305_update_internal((v1 + 136), -*(v1 + 232) & 0xFLL, kZero64);
    *(v1 + 248) = 4;
  }

  else if (v4 != 4)
  {
    return 1;
  }

  v6 = *(v1 + 240);
  result = 1;
  if (!__CFADD__(v6, v2) && v6 + v2 <= 0x3FFFFFFFC0)
  {
    ccpoly1305_update_internal((v1 + 136), v2, v3);
    OUTLINED_FUNCTION_5_2();
    return OUTLINED_FUNCTION_3_5();
  }

  return result;
}

uint64_t ccchacha20poly1305_encrypt_oneshot()
{
  OUTLINED_FUNCTION_0_28();
  v55 = *MEMORY[0x29EDCA608];
  HIDWORD(v26) = timingsafe_enable_if_supported();
  bzero((v3 + 48), 0xD0uLL);
  updated = OUTLINED_FUNCTION_1_15(xmmword_299CFB8E0, v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v12, __s[0], __s[1], v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  if (v54 == 2)
  {
    updated = ccpoly1305_update_internal((v3 + 136), v1, v2);
    *(v3 + 232) += v1;
  }

  v21 = OUTLINED_FUNCTION_4_2(updated, v14, v15, v16, v17, v18, v19, v20, v25, v26, __s[0]);
  ccchacha20poly1305_encrypt_internal(v21);
  ccchacha20poly1305_finalize_internal(__s, v0);
  cc_clear(0x88uLL, __s);
  cc_disable_dit_with_sb(&v26 + 1);
  v22 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t ccchacha20poly1305_decrypt_oneshot()
{
  OUTLINED_FUNCTION_0_28();
  v56 = *MEMORY[0x29EDCA608];
  HIDWORD(v27) = timingsafe_enable_if_supported();
  bzero((v3 + 48), 0xD0uLL);
  updated = OUTLINED_FUNCTION_1_15(xmmword_299CFB8E0, v4, v5, v6, v7, v8, v9, v10, v11, v25, v27, v12, __s[0], __s[1], v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v55 == 2)
  {
    updated = ccpoly1305_update_internal((v3 + 136), v1, v2);
    *(v3 + 232) += v1;
  }

  v21 = OUTLINED_FUNCTION_4_2(updated, v14, v15, v16, v17, v18, v19, v20, v26, v27, __s[0]);
  ccchacha20poly1305_decrypt_internal(v21);
  v22 = ccchacha20poly1305_verify_internal(__s, v0);
  cc_clear(0x88uLL, __s);
  cc_disable_dit_with_sb(&v27 + 1);
  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

uint64_t cclr_aes_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  a1[3] = a2;
  a1[4] = a3;
  v10 = 4294967289;
  if ((a4 - 129) >= 0xFFFFFFFFFFFFFF80 && (a4 & 7) == 0 && (a5 - 11) >= 0xFFFFFFFFFFFFFFF9)
  {
    v10 = 0;
    *a1 = &cclr_aes_info;
    a1[1] = a4;
    a1[2] = a5;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cclr_encrypt_block()
{
  OUTLINED_FUNCTION_2_3();
  v22 = *MEMORY[0x29EDCA608];
  v1 = timingsafe_enable_if_supported();
  v19 = v1;
  v9 = *(v0 + 16);
  if ((v9 - 11) < 0xFFFFFFFFFFFFFFF9)
  {
    v15 = 4294967289;
  }

  else
  {
    v10 = 0;
    v11 = xmmword_299CF0D80;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v12, v11));
      if (v14.i8[0])
      {
        v21[v10] = v10;
      }

      if (v14.i8[4])
      {
        v21[v10 + 1] = v10 | 1;
      }

      v10 += 2;
      v11 = vaddq_s64(v11, v13);
    }

    while (((v9 + 1) & 0x1E) != v10);
    v15 = OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21[0]);
  }

  cc_disable_dit_with_sb(&v19);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t cclr_decrypt_block()
{
  OUTLINED_FUNCTION_2_3();
  v23 = *MEMORY[0x29EDCA608];
  v1 = timingsafe_enable_if_supported();
  v20 = v1;
  v9 = *(v0 + 16);
  if ((v9 - 11) < 0xFFFFFFFFFFFFFFF9)
  {
    v16 = 4294967289;
  }

  else
  {
    v10 = 0;
    v11 = v9 - 1;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = xmmword_299CF0D80;
    v14 = vdupq_n_s64(2uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v12, v13));
      if (v15.i8[0])
      {
        v22[v10] = v11;
      }

      if (v15.i8[4])
      {
        v22[v10 + 1] = v9 + (v10 ^ 0xFE);
      }

      v10 += 2;
      v13 = vaddq_s64(v13, v14);
      v11 -= 2;
    }

    while (((v9 + 1) & 0x1E) != v10);
    v16 = OUTLINED_FUNCTION_0_29(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22[0]);
  }

  cc_disable_dit_with_sb(&v20);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t ccecies_encrypt_gcm_composite_ws(uint64_t a1, uint64_t **a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *a2;
  v20 = **a2;
  v25 = *(a1 + 16);
  v21 = (*(a1 + 24))(a1, (4 * (v20 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  v26 = (cczp_bitlen(v19) + 7) >> 3;
  v22 = (*(a1 + 24))(a1, v20);
  result = ccecdh_generate_key_ws(a1, v19, *(a3 + 8), v21);
  if (!result)
  {
    result = ccecdh_compute_shared_secret_ws(a1, v21, a2, &v26, v22, *(a3 + 8));
    if (!result)
    {
      result = ccecies_encrypt_gcm_from_shared_secret_composite(a2, a3, v21, v26, v22, a7, a8, a9, a10, a11, a12, a4, a5, a6);
    }
  }

  *(a1 + 16) = v25;
  return result;
}

uint64_t cced448_make_key_pair(uint64_t (**a1)(void, uint64_t, char *), uint64_t a2, char *a3)
{
  v9 = timingsafe_enable_if_supported();
  pub_internal = (*a1)(a1, 57, a3);
  if (!pub_internal)
  {
    pub_internal = cced448_make_pub_internal(a1, a2, a3);
  }

  v7 = pub_internal;
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccrns_modulus_init_helper_ws(uint64_t a1, unint64_t *a2, uint64_t a3, int a4)
{
  v16[1] = *MEMORY[0x29EDCA608];
  if (a3 < 2)
  {
    result = 4294967289;
  }

  else
  {
    *a2 = a3;
    v16[0] = a3;
    if (a4)
    {
      a2[1] = __udivti3();
    }

    else
    {
      result = ccrns_modulus_compute_mod_factor_ws(a1, 1u, a2 + 1, 1uLL, a3);
      if (result)
      {
        goto LABEL_10;
      }
    }

    result = ccrns_modulus_compute_mod_factor_ws(a1, 2u, a2 + 2, 1uLL, a3);
    if (!result)
    {
      v8 = ((*a2 ^ (*a2 - 1)) <= *a2 - 1) - __clz(*a2) + 63;
      v14 = xmmword_299CFBA78;
      v15 = 0;
      ccn_shift_left_multi(3, &v14, &v14, v8 + 128);
      ccn_divmod_ws(a1, 3, &v14, 3uLL, __src, 1uLL, &v12, v16);
      if (ccn_add1_ws(a1, 3, __src, __src, v12 != 0) || (v11 = 0, v10 = xmmword_299CFBA78, ccn_shift_left_multi(3, &v10, &v10, 0x80uLL), ccn_sub_ws(a1, 3, __src, __src, &v10)))
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        ccn_set(2, a2 + 4, __src);
        result = 0;
      }
    }
  }

LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccrns_mul_modulus_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3 < 2 || a4 >= a3)
  {
    return 4294967289;
  }

  *a2 = a3;
  a2[1] = a4;
  ccrns_modulus_compute_mod_factor_ws(a1, 1u, a2 + 2, a4, a3);
  return 0;
}

uint64_t ccrns_modulus_compute_mod_factor_ws(uint64_t a1, unsigned int a2, void *a3, unint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (a5 < 2)
  {
    result = 4294967289;
  }

  else
  {
    v14 = a4;
    v15[0] = a5;
    v12 = xmmword_299CFBA78;
    v13 = 0;
    ccn_shift_left_multi(3, &v12, &v12, a2 << 6);
    ccn_muln(3, v11, &v12, 1uLL, &v14);
    ccn_divmod_ws(a1, 4, v11, 3uLL, v10, 1uLL, 0, v15);
    if (a2)
    {
      memcpy(a3, v10, 8 * a2);
    }

    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccrns_mul_modulus_init_var_time_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if (a3 < 2 || a4 >= a3)
  {
    return 4294967289;
  }

  *a2 = a3;
  a2[1] = a4;
  v6 = __udivti3();
  result = 0;
  a2[2] = v6;
  return result;
}

uint64_t ep_session_keys_derive(uint64_t **a1, uint64_t a2, uint64_t a3, size_t a4, const void *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  v11 = ccec_compressed_x962_export_pub_size(**a1);
  v12 = a4 + 2 * v11 + v10[27];
  if (v12 > 0x100)
  {
    result = 4294967289;
  }

  else
  {
    v13 = v11;
    result = cchkdf_extract_internal(v10[23], v10[25], v10[24], a2, a3, v25);
    if (!result)
    {
      v15 = v10[26];
      v16 = v10[27];
      __memcpy_chk();
      v17 = &v26[v16];
      inited = ccsigma_kex_init_ctx(a1);
      result = ccec_compressed_x962_export_pub(inited, v17);
      if (!result)
      {
        v19 = &v17[v13];
        v20 = ccsigma_kex_resp_ctx(a1);
        result = ccec_compressed_x962_export_pub(v20, v19);
        if (!result)
        {
          memcpy(&v19[v13], a5, a4);
          v21 = v10[23];
          v22 = v10[10];
          v23 = (v10[11])(a1);
          result = cchkdf_expand_internal(v21, 0x20uLL, v25, v12, v26, v22, v23);
        }
      }
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ep_mac_compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 184);
  if (v6 != *v7)
  {
    return 4294967289;
  }

  cchmac_internal(v7, a2, a3, a4, a5, a6);
  return 0;
}

uint64_t ep_sigma_compute_mac_and_digest(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = (((v9[1] + v9[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v11 = OUTLINED_FUNCTION_0_0();
  ccdigest_init_internal(v11, v12);
  v14 = v8[28];
  v13 = v8[29];
  v15 = OUTLINED_FUNCTION_0_0();
  ccdigest_update_internal(v15, v16, v17, v18);
  v19 = ccec_compressed_x962_export_pub_size(*v8);
  if (v19 > 0x21)
  {
    result = 4294967291;
  }

  else
  {
    v20 = v19;
    inited = ccsigma_kex_init_ctx(a1);
    ccec_compressed_x962_export_pub(inited, v40);
    v22 = OUTLINED_FUNCTION_0_0();
    ccdigest_update_internal(v22, v23, v20, v24);
    v25 = ccsigma_kex_resp_ctx(a1);
    ccec_compressed_x962_export_pub(v25, v40);
    v26 = OUTLINED_FUNCTION_0_0();
    ccdigest_update_internal(v26, v27, v20, v28);
    result = ccsigma_compute_mac_internal(a1, v8[a2 + 15], a3, a4, v39);
    if (!result)
    {
      v30 = v8[13];
      v31 = OUTLINED_FUNCTION_0_0();
      ccdigest_update_internal(v31, v32, v33, v34);
      v35 = v9[7];
      v36 = OUTLINED_FUNCTION_0_0();
      v37(v36);
      result = 0;
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ep_aead_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x29EDCA608];
  v11 = *(*a1 + 144);
  if (v11 > 0x10)
  {
    result = 4294967291;
  }

  else
  {
    v20 = ccaes_ccm_decrypt_mode();
    result = ccccm_one_shot_internal(v20, a2, a3, a4, a5, a8, a9, a10, a6, a7, v11, v23);
    if (!result)
    {
      if (cc_cmp_safe_internal(*(*a1 + 144), a11, v23))
      {
        result = 4294967294;
      }

      else
      {
        result = 0;
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cche_cipher_plain_ctx_init_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v8 = *(a4 + 4);
  *a2 = a3;
  *(a2 + 8) = a4;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  ccpolyzp_po2cyc_ctx_q_prod_ws(a1, v10, a4);
  v19[0] = cche_param_ctx_plaintext_modulus(a3);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_divmod_ws(a1, v8, v10, v8, v11, 1uLL, (a2 + 16), v19);
  *(a2 + 24) = (cche_param_ctx_plaintext_modulus(a3) + 1) >> 1;
  if (v8)
  {
    v12 = 0;
    v13 = (a2 + 32);
    v14 = (a2 + 32 + 8 * *(*(a2 + 8) + 4));
    while (1)
    {
      v15 = *(a4 + 4) - 1;
      v16 = a4;
      if (v15 > v12)
      {
        v16 = a4;
        do
        {
          v16 = v16[14];
          --v15;
        }

        while (v15 > v12);
      }

      cczp_modn_ws(a1, v16 + 15, v13, v8, v11);
      if (ccn_sub_ws(a1, 1, v14, v16 + 18, v19))
      {
        break;
      }

      ++v13;
      ++v14;
      if (++v12 == v8)
      {
        goto LABEL_8;
      }
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  *(a1 + 16) = v9;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccpolyzp_po2cyc_bytes_to_coeffs(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5 - a6;
  if (a5 <= a6)
  {
    return 4294967289;
  }

  if (a3 != (v6 * a1 + 7) >> 3 && (v6 + 8 * a3 - 1) / v6 != a1)
  {
    return 4294967289;
  }

  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a5 - a6;
    do
    {
      v13 = *(a4 + v8);
      v14 = 8;
      do
      {
        if (!v12)
        {
          *(a2 + 8 * v9++) = v10 << a6;
          v12 = a5 - a6;
          v10 = 0;
        }

        if (v12 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        v10 = (v10 << v15) | (v13 >> (8 - v15));
        v13 = (v13 << v15);
        v12 -= v15;
        v14 -= v15;
      }

      while (v14);
      v8 = ++v11;
    }

    while (v11 < a3);
  }

  else
  {
    v10 = 0;
    v9 = 0;
    LOBYTE(v12) = a5 - a6;
  }

  if (v9 >= a1)
  {
    return 0;
  }

  result = 0;
  *(a2 + 8 * v9) = v10 << (v12 + a6);
  return result;
}

uint64_t ccpolyzp_po2cyc_coeffs_to_bytes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5 - a6;
  if (a5 <= a6)
  {
    return 4294967289;
  }

  if (a1 != (v6 * a3 + 7) >> 3 && (v6 + 8 * a1 - 1) / v6 != a3)
  {
    return 4294967289;
  }

  if (a3)
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(a4 + 8 * v8) >> a6;
      v14 = a5 - a6;
      do
      {
        if (!v12)
        {
          *(a2 + v9) = v10;
          v10 = 0;
          if (v9 + 1 == a1)
          {
            return v10;
          }

          v12 = 8;
          ++v9;
        }

        if (v14 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14;
        }

        v12 -= v15;
        v16 = v14 - v15;
        v17 = (v10 << v15) | (v13 >> (v14 - v15)) & (0xFFFFFFFFFFFFFFFFLL >> -v14);
        LODWORD(v10) = v17;
        v14 = v16;
      }

      while (v16);
      v8 = ++v11;
    }

    while (v11 < a3);
    v18 = v17;
  }

  else
  {
    v18 = 0;
    v9 = 0;
    LOBYTE(v12) = 8;
  }

  v10 = 0;
  if (v9 < a1)
  {
    *(a2 + v9) = v18 << v12;
  }

  return v10;
}

uint64_t ccpolyzp_po2cyc_serialize_poly_ws(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int **a5)
{
  v36 = a5;
  v8 = *a5;
  v9 = **a5;
  v10 = (*a5)[1];
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(*a5, a4) != a2 || a4 && v10 != 1)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  result = (*(a1 + 24))(a1, v9);
  if (v10)
  {
    v20 = result;
    v34 = v11;
    v35 = a1;
    v21 = 0;
    v22 = v36 + 1;
    while (1)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_0_30(result, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35, v36);
        do
        {
          *v25++ = v22[v23++];
          --v24;
        }

        while (v24);
      }

      OUTLINED_FUNCTION_2_9();
      if (!v28 & v27)
      {
        v29 = v8;
        do
        {
          v29 = *(v29 + 14);
          --v26;
        }

        while (v26 > v21);
      }

      OUTLINED_FUNCTION_1_16();
      if (!(!v28 & v27))
      {
        return 4294967289;
      }

      v32 = (v31 * v9 + 7) >> 3;
      result = ccpolyzp_po2cyc_coeffs_to_bytes(v32, a3, v9, v20, v30, a4);
      if (result)
      {
        goto LABEL_18;
      }

      a3 += v32;
      if (++v21 == v10)
      {
        result = 0;
LABEL_18:
        v11 = v34;
        a1 = v35;
        goto LABEL_20;
      }
    }
  }

  result = 0;
LABEL_20:
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccpolyzp_po2cyc_deserialize_poly_ws(uint64_t a1, unsigned int **a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v8 = *a2;
  v9 = **a2;
  v10 = (*a2)[1];
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(*a2, a3) != a4 || a3 && v10 != 1)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v9);
  if (v10)
  {
    v13 = v12;
    v36 = v11;
    v37 = a1;
    v14 = 0;
    v15 = v38 + 1;
    while (1)
    {
      OUTLINED_FUNCTION_2_9();
      if (!v18 & v17)
      {
        v19 = v8;
        do
        {
          v19 = *(v19 + 14);
          --v16;
        }

        while (v16 > v14);
      }

      OUTLINED_FUNCTION_1_16();
      if (!(!v18 & v17))
      {
        return 4294967289;
      }

      v22 = (v21 * v9 + 7) >> 3;
      result = ccpolyzp_po2cyc_bytes_to_coeffs(v9, v13, v22, a5, v20, a3);
      if (result)
      {
        goto LABEL_18;
      }

      if (v9)
      {
        OUTLINED_FUNCTION_0_30(result, v24, v25, v26, v27, v28, v29, v30, v35, v36, v37, v38);
        do
        {
          v34 = *v33++;
          v15[v31++] = v34;
          --v32;
        }

        while (v32);
      }

      a5 += v22;
      if (++v14 == v10)
      {
        result = 0;
LABEL_18:
        v11 = v36;
        a1 = v37;
        goto LABEL_20;
      }
    }
  }

  result = 0;
LABEL_20:
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccmldsa_export_pubkey(uint64_t a1, size_t __n, void *__dst)
{
  if (*(*a1 + 72) != __n)
  {
    return 4294967289;
  }

  memcpy(__dst, (a1 + 8), __n);
  return 0;
}

uint64_t ccmldsa_import_pubkey(uint64_t a1, size_t a2, const void *a3, void *a4)
{
  if (*(a1 + 72) != a2)
  {
    return 4294967289;
  }

  ccmldsa_pub_ctx_init(a4, a1);
  memcpy(a4 + 1, a3, a2);
  return 0;
}

uint64_t ccmldsa_export_privkey(uint64_t a1, size_t a2, void *a3)
{
  v8 = timingsafe_enable_if_supported();
  if (*(*ccmldsa_public_ctx(a1) + 64) == a2)
  {
    memcpy(a3, (a1 + *(*a1 + 72) + 8), a2);
    v6 = 0;
  }

  else
  {
    v6 = 4294967289;
  }

  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccmldsa_import_privkey(uint64_t a1, size_t a2, const void *a3, void *a4)
{
  v10 = timingsafe_enable_if_supported();
  if (*(a1 + 64) == a2)
  {
    ccmldsa_full_ctx_init(a4, a1);
    memcpy(a4 + *(*a4 + 72) + 8, a3, a2);
    v8 = 0;
  }

  else
  {
    v8 = 4294967289;
  }

  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cccmac_final_generate_internal(char *__s, size_t a2, void *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(__s + 8);
  v5 = *(__s + 6);
  v6 = *(__s + 7) + v5;
  *(__s + 7) = v6;
  if (v5 > 0x10)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    v9 = !v8;
    v10 = 0xFFFFFFFFLL;
    if (a2 - 17 >= 0xFFFFFFFFFFFFFFF0 && (v9 & 1) == 0)
    {
      v12 = __s + 32;
      v13 = __s;
      if (v5 != 16)
      {
        v13 = __s + 16;
        cc_clear(16 - v5, &v12[v5]);
        v12[v5] = 0x80;
      }

      for (i = 0; i != -16; --i)
      {
        __s[i + 47] ^= v13[i + 15];
      }

      ccdrbg_generate_internal(v4, (__s + 72), &__s[*v4 + 72], 1, (__s + 32), __src);
      memcpy(a3, __src, a2);
      v10 = 0;
      v4 = *(__s + 8);
    }
  }

  cc_clear(v4[1] + *v4 + 80, __s);
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t cccmac_final_generate()
{
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_2_2();
  internal = cccmac_final_generate_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return internal;
}

uint64_t cccmac_final_verify_internal(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  if (cccmac_final_generate_internal(a1, 0x10uLL, v7))
  {
    result = 0xFFFFFFFFLL;
  }

  else if (cc_cmp_safe_internal(a2, a3, v7))
  {
    result = 4294967291;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cccmac_final_verify()
{
  timingsafe_enable_if_supported();
  v0 = OUTLINED_FUNCTION_2_2();
  v3 = cccmac_final_verify_internal(v0, v1, v2);
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccmlkem_indcpa_encrypt_ws(uint64_t a1, int16x8_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v34 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 64);
  v37 = (*(a1 + 24))(a1, 64);
  v10 = OUTLINED_FUNCTION_0_31();
  v35 = v11(v10);
  v36 = (*(a1 + 24))(a1, 64);
  v12 = OUTLINED_FUNCTION_0_31();
  v14 = v13(v12);
  v15 = OUTLINED_FUNCTION_0_31();
  v17 = v16(v15);
  v18 = OUTLINED_FUNCTION_0_31();
  v20 = v19(v18);
  v21 = (*(a1 + 24))(a1, ((a2->i32[1] * a2->i32[1]) & 0xFFFFFFu) << 6);
  ccmlkem_polyvec_decode(a2, v20, a3);
  v22 = (a3 + (384 * a2->i32[1]));
  v23 = (*(a1 + 24))(a1, (16 * ((3 * a2->i32[1]) & 0x1FFFFFF)) | 4u);
  ccmlkem_polyvec_encode(a2, v23, v20);
  v24 = (v23 + (384 * a2->i32[1]));
  v25 = v22[1];
  *v24 = *v22;
  v24[1] = v25;
  if (cc_cmp_safe_internal((384 * a2->i32[1]) | 0x20u, v23, a3))
  {
    result = 4294967289;
    v27 = v34;
  }

  else
  {
    result = ccmlkem_sample_matrix(a2, v22, 1, v21);
    v27 = v34;
    if (!result)
    {
      ccmlkem_polyvec_getnoise(a2, v14, a5, 0);
      ccmlkem_polyvec_getnoise(a2, v35, a5, a2->u8[4]);
      ccmlkem_poly_getnoise(v36, a5, 2 * (a2->i8[4] & 0x7F));
      ccmlkem_poly_decompress_d1(v37, a4);
      ccmlkem_polyvec_ntt_forward_cbd_eta2(a2, v14);
      LODWORD(v28) = a2->i32[1];
      if (v28)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          ccmlkem_polyvec_basemul(a2, v17 + 2 * v29, v21 + 2 * v29 * v28, v14);
          ccmlkem_ntt_inverse((v17 + 2 * v29));
          ++v30;
          v28 = a2->u32[1];
          v29 += 256;
        }

        while (v30 < v28);
      }

      ccmlkem_polyvec_add(a2, v17, v17, v35);
      ccmlkem_polyvec_reduce(a2, v17);
      ccmlkem_polyvec_basemul(a2, v9, v20, v14);
      ccmlkem_ntt_inverse(v9);
      ccmlkem_poly_add(v9, v9, v36);
      ccmlkem_poly_add(v9, v9, v37);
      ccmlkem_poly_reduce(v9);
      ccmlkem_polyvec_compress(a2, a6, v17);
      ccmlkem_poly_compress(a2, a6 + (32 * a2->i32[3] * a2->i32[1]), v9);
      result = 0;
    }
  }

  *(a1 + 16) = v27;
  return result;
}

uint64_t ccsrp_generate_server_pubkey_ws(uint64_t a1, uint64_t a2)
{
  v4 = ccdh_gp_n(*(a2 + 8));
  v5 = *(a1 + 16);
  (*(a1 + 24))(a1, v4);
  v6 = (*(a1 + 24))(a1, v4);
  if ((*(a2 + 24) & 0x1C0) != 0)
  {
    ccdh_gp_n(*(a2 + 8));
  }

  else
  {
    v7 = *(a2 + 8);
    ccdh_gp_n(v7);
    cczp_mul_ws(a1, v7);
  }

  private_key_bitlen = ccdh_generate_private_key_bitlen(*(a2 + 8));
  v9 = ccdh_gp_n(*(a2 + 8));
  v10 = ccdh_gp_n(*(a2 + 8));
  if (ccn_bitlen_internal(v9, a2 + 32 + 8 * v10) > private_key_bitlen)
  {
    private_key_bitlen = cczp_bitlen(*(a2 + 8));
  }

  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = ccdh_gp_g(v12);
  v14 = ccdh_gp_n(*(a2 + 8));
  ccdh_power_blinded_ws(a1, v11, v12, v6, v13, private_key_bitlen, a2 + 32 + 8 * v14);
  v16 = v15;
  if (!v15)
  {
    v17 = *(a2 + 8);
    ccdh_gp_n(v17);
    cczp_add_ws(a1, v17);
  }

  *(a1 + 16) = v5;
  return v16;
}

uint64_t ccsrp_server_start_authentication(uint64_t *a1, unsigned int (**a2)(void, unint64_t, uint64_t), char *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8)
{
  v19 = timingsafe_enable_if_supported();
  a1[2] = a2;
  public_key_internal = ccsrp_server_generate_public_key_internal(a1, a2, a6, a8);
  if (!public_key_internal)
  {
    public_key_internal = ccsrp_server_compute_session_internal(a1, a3, a4, a5, a7);
  }

  v17 = public_key_internal;
  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t ccmode_gcm_aad(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 80) != 2)
  {
    return 4294967228;
  }

  v3 = a3;
  v4 = a2;
  v6 = *(a1 + 88);
  v7 = v6 & 0xF;
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  v8 = 16 - v7;
  if (a2 >= v8)
  {
    v9 = (v6 & 0xF) + a1 + 15;
    v10 = 16 - v7;
    do
    {
      *(v9 + v10) ^= *(a3 - 1 + v10);
      --v10;
    }

    while (v10);
    ccmode_gcm_mult_h(a1, a1 + 16);
    v4 -= v8;
    v3 += v8;
    *(a1 + 88) += v8;
LABEL_7:
    if (v4 >= 0x10)
    {
      do
      {
        for (i = 0; i != -16; --i)
        {
          *(a1 + i + 31) ^= *(v3 + i + 15);
        }

        ccmode_gcm_mult_h(a1, a1 + 16);
        v4 -= 16;
        v3 += 16;
        *(a1 + 88) += 16;
      }

      while (v4 > 0xF);
    }

    v7 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v12 = a1 + v7 + 15;
  v13 = v4;
  do
  {
    *(v12 + v13) ^= *(v3 - 1 + v13);
    --v13;
  }

  while (v13);
  result = 0;
  *(a1 + 88) += v4;
  return result;
}

uint64_t ccrsa_emsa_pkcs1v15_encode_internal(unint64_t a1, _WORD *a2, size_t a3, const void *a4, unsigned __int8 *a5)
{
  if (a5)
  {
    v8 = 4294967289;
    if (a3 > 0xFF)
    {
      return v8;
    }

    v9 = a5[1];
    if (v9 > 0xFB)
    {
      return v8;
    }

    if (a3 + v9 + 8 > 0x7C)
    {
      return 4294967289;
    }

    v10 = a3 + v9 + 10;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = a3;
  }

  if (a1 < 0xB || v10 > a1 - 11)
  {
    return 4294967289;
  }

  v12 = a1 - v10 - 3;
  *a2 = 256;
  v13 = a2 + 1;
  memset(a2 + 1, 255, v12);
  v14 = v13 + v12;
  *(v13 + v12) = 0;
  v15 = v13 + v12 + 1;
  if (a5)
  {
    v14[1] = 48;
    v14[2] = v10 - 2;
    v14[3] = 48;
    v16 = v14 + 5;
    v14[4] = v9 + 4;
    memcpy(v14 + 5, a5, v9 + 2);
    v17 = &v16[v9 + 2];
    *v17 = 5;
    v17[2] = 4;
    v15 = v17 + 4;
    v17[3] = a3;
  }

  memcpy(v15, a4, a3);
  return 0;
}

uint64_t ccrsa_emsa_pkcs1v15_encode(unint64_t a1, _WORD *a2, size_t a3, const void *a4, unsigned __int8 *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_emsa_pkcs1v15_encode_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cckem_kyber768_generate_key_with_seed(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  cckem_public_ctx(a1);
  v4 = a1 + *(*a1 + 16) + 8;
  v5 = ccmlkem_kem_keypair_with_seed();
  if (!v5)
  {
    v6 = __s[1];
    *a2 = __s[0];
    a2[1] = v6;
    cc_clear(0x40uLL, __s);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t cckem_kyber768_derive_key_from_seed(uint64_t a1, _OWORD *a2, uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx(a1);
  v7 = *(*a1 + 16);
  v8 = (*a3)(a3, 32, __s);
  if (!v8)
  {
    v8 = ccmlkem_kem_keypair_from_seed(cckyber768_params, (v6 + 8), a1 + v7 + 8, a2, __s);
  }

  v9 = v8;
  cc_clear(0x20uLL, __s);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t cckem_kyber768_export_pubkey(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  if (v5 < cckem_pubkey_nbytes_ctx(v6))
  {
    return 4294967289;
  }

  v7 = cckem_pubkey_nbytes_ctx(v3);
  *v4 = v7;
  memcpy(v2, (v3 + 8), v7);
  return 0;
}

uint64_t cckem_kyber768_import_pubkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_pubkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_pub_ctx_init(v2, v3);
  memcpy(v2 + 1, v1, v0);
  return 0;
}

uint64_t cckem_kyber768_export_privkey(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  v7 = cckem_public_ctx(v6);
  if (v5 < cckem_privkey_nbytes_ctx(v7))
  {
    return 4294967289;
  }

  v8 = cckem_public_ctx(v3);
  v9 = cckem_privkey_nbytes_ctx(v8);
  *v4 = v9;
  memcpy(v2, (v3 + *(*v3 + 16) + 8), v9);
  return 0;
}

uint64_t cckem_kyber768_import_privkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_privkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_full_ctx_init(v2, v3);
  memcpy(v2 + *(*v2 + 16) + 8, v1, v0);
  return 0;
}

uint64_t ccec_generate_key_fips_ws(uint64_t a1, unint64_t *a2, uint64_t (**a3)(void, unint64_t, void *), unint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccec_pairwise_consistency_check_ws(a1, a4, a3))
    {
      result = 4294967278;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_verify_composite_digest_ws(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v23 = 0uLL;
  v14 = **a2;
  v22 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v14);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = ccec_signature_r_s_size(a2);
  if (ccn_read_uint_internal(v14, v15, v17, a5) || (v18 = ccec_signature_r_s_size(a2), ccn_read_uint_internal(v14, v16, v18, a6)))
  {
    result = 4294967289;
    goto LABEL_9;
  }

  result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v23);
  if (!a7)
  {
LABEL_9:
    v20 = v22;
    goto LABEL_10;
  }

  v20 = v22;
  if (!result)
  {
    *a7 = v23;
  }

LABEL_10:
  *(a1 + 16) = v20;
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_verify_composite_msg_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v17 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v16);
  result = ccec_verify_composite_digest_ws(a1, a2, *a3, v16, a6, a7, a8);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_generate_scalar_legacy_ws(uint64_t a1, uint64_t *a2, size_t a3, void *__src, void *__dst)
{
  v7 = a2 + 4;
  v6 = *a2;
  v8 = 8 * *a2;
  if (v8 > a3)
  {
    return 4294967276;
  }

  v12 = &v7[5 * v6];
  memcpy(__dst, __src, v8);
  v13 = cczp_bitlen(&v7[5 * *a2]);
  if ((v13 & 0x3F) != 0)
  {
    *(__dst + v6 - 1) &= 0xFFFFFFFFFFFFFFFFLL >> -(v13 & 0x3F);
  }

  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v6);
  v16 = cczp_prime(v12);
  v17 = ccn_sub_ws(a1, v6, v15, __dst, v16);
  ccn_mux(v6, v17 ^ 1, __dst, v15, __dst);
  result = 0;
  *(a1 + 16) = v14;
  return result;
}

uint64_t ccec_validate_scalar(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = cczp_prime(&a1[5 * *a1 + 4]);
  if ((ccn_cmp_internal(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (ccn_n(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t cccurve448_make_priv(uint64_t (**a1)(void, uint64_t, _BYTE *), _BYTE *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*a1)(a1, 56, a2);
  if (!v4)
  {
    *a2 &= 0xFCu;
    a2[55] |= 0x80u;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cccurve448_make_key_pair(unsigned int (**a1)(void, unint64_t, uint64_t), uint64_t a2, _BYTE *a3)
{
  v10 = timingsafe_enable_if_supported();
  v6 = (*a1)(a1, 56, a3);
  if (!v6)
  {
    *a3 &= 0xFCu;
    a3[55] |= 0x80u;
    v7 = ccec_cp_x448();
    v6 = cccurve448_internal(v7, a2, a3, kX448BasePoint, a1);
  }

  v8 = v6;
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_encrypt_zero_symmetric_helper_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, int a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, uint64_t))
{
  v69 = *MEMORY[0x29EDCA608];
  v16 = *(a1 + 16);
  v17 = *a4;
  v18 = cche_param_ctx_chain_const(a3);
  v19 = ccpolyzp_po2cyc_ctx_eq(v17, (v18 + 8));
  result = 4294967289;
  if (a5 && v19)
  {
    if (*(cche_param_ctx_chain_const(a3) + 12) < a5)
    {
      result = 4294967289;
      goto LABEL_34;
    }

    v63 = a7;
    v65 = a8;
    v62 = a4;
    v21 = cche_param_ctx_chain_const(a3);
    v22 = *v21;
    v23 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    v24 = a3;
    if (v22 >= 0x80)
    {
      v25 = 128;
    }

    else
    {
      v25 = v22;
    }

    v26 = &v21[2 * (v23 + 2 * (v22 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v25) + 6) * (v21[1] - a5) + 2];
    v27 = cche_ciphertext_fresh_npolys();
    v61 = v24;
    *a2 = v24;
    *(a2 + 8) = v27;
    *(a2 + 16) = 1;
    *(a2 + 24) = v26;
    v28 = (a2 + 24);
    v29 = v26;
    if (v27 >= 2)
    {
      v60 = a5;
      v30 = a6;
      v31 = v27;
      for (i = 1; i != v31; ++i)
      {
        v33 = *v28;
        v28[(v33[1] * *v33 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v26;
      }

      v29 = *v28;
      a6 = v30;
      a5 = v60;
    }

    v34 = sizeof_struct_ccpolyzp_po2cyc();
    v35 = v29[1] * *v29;
    v36 = v28 + ((v34 + 7) & 0xFFFFFFFFFFFFFFF8);
    v37 = &v36[8 * v35];
    if (v63)
    {
      result = (*v65)(v65, 32, v63);
      if (result)
      {
        goto LABEL_33;
      }

      v38 = (*(a1 + 24))(a1, 536);
      result = ccpolyzp_po2cyc_block_rng_init(v38);
      if (result)
      {
        goto LABEL_33;
      }

      result = ccpolyzp_po2cyc_random_uniform_ws(a1, v37, v38);
      v39 = v65;
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v39 = v65;
      result = ccpolyzp_po2cyc_random_uniform_ws(a1, &v36[8 * v35], v65);
      if (result)
      {
        goto LABEL_33;
      }
    }

    v64 = a6;
    v40 = a5;
    v41 = *(a1 + 24);
    v42 = sizeof_struct_ccpolyzp_po2cyc();
    v43 = v41(a1, v26[1] * *v26 + ((v42 + 7) >> 3));
    *v43 = v26;
    result = ccpolyzp_po2cyc_random_cbd_ws(a1, v43, v39, 0);
    if (result)
    {
      goto LABEL_33;
    }

    if (cche_param_ctx_he_scheme(v61) == 2)
    {
      v44 = cche_param_ctx_plaintext_modulus(v61);
      v45 = v67;
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v66 = v44;
      v46 = vdupq_n_s64(v40 - 1);
      v47 = (v40 + 1) & 0x1FFFFFFFELL;
      v48 = xmmword_299CF0D80;
      v49 = vdupq_n_s64(2uLL);
      do
      {
        v50 = vmovn_s64(vcgeq_u64(v46, v48));
        if (v50.i8[0])
        {
          *(v45 - 1) = v44;
        }

        if (v50.i8[4])
        {
          *v45 = v44;
        }

        v48 = vaddq_s64(v48, v49);
        v45 += 2;
        v47 -= 2;
      }

      while (v47);
      ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v43, v43, &v66);
    }

    cche_mul_poly_sk((a2 + 24), v37, v62);
    if (!v64)
    {
      result = ccpolyzp_po2cyc_inv_ntt((a2 + 24));
      if (result)
      {
        goto LABEL_33;
      }

      result = ccpolyzp_po2cyc_inv_ntt(v37);
      if (result)
      {
        goto LABEL_33;
      }

      v53 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_coeff_add(v53, v54, v43);
      v55 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_coeff_negate(v55, v56);
      goto LABEL_32;
    }

    result = ccpolyzp_po2cyc_fwd_ntt(v43);
    if (!result)
    {
      v51 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_eval_add(v51);
      v52 = OUTLINED_FUNCTION_0_32();
      ccpolyzp_po2cyc_eval_negate(v52);
LABEL_32:
      v57 = sizeof_struct_ccpolyzp_po2cyc();
      cc_clear((v57 + 8 * v26[1] * *v26 + 7) & 0xFFFFFFFFFFFFFFF8, v43);
      v58 = cche_ciphertext_fresh_npolys();
      result = 0;
      *(a2 + 8) = v58;
      *a2 = v61;
      *(a2 + 16) = 1;
    }

LABEL_33:
    *(a1 + 16) = v16;
  }

LABEL_34:
  v59 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cche_encrypt_symmetric_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7, uint64_t (**a8)(void, uint64_t, uint64_t))
{
  result = cche_encrypt_zero_symmetric_helper_ws(a1, a2, a4, a5, a6, 0, a7, a8);
  if (!result)
  {

    return cche_ciphertext_plaintext_add_ws(a1, a2, a2, a3);
  }

  return result;
}

uint64_t ccecies_derive_gcm_key_iv(uint64_t a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v19 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(a1 + 32) & 0x20) != 0;
  }

  v10 = 4294967289;
  if (!v9 && (*(a1 + 32) & 0x21) != 0x21 && ((a4 != 0) & v8) == 0)
  {
    v12 = *(a1 + 24);
    if ((v8 & 0x10) == 0)
    {
      v12 = (v12 + 16);
      goto LABEL_11;
    }

    if (v12 <= 0xFFFFFFEF)
    {
      v13 = &a8[v12];
      *v13 = 0;
      *(v13 + 1) = 0;
LABEL_11:
      memset(v18, 0, sizeof(v18));
      if ((v8 & 0x21) != 0)
      {
        *&v18[0] = a7;
        *(&v18[0] + 1) = a6;
        v14 = 1;
        if (v8 & 0x20) == 0 && (v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      v15 = &v18[v14];
      *v15 = a5;
      v15[1] = a4;
      v14 = (v14 + 1);
LABEL_17:
      v10 = ccansikdf_x963_iovec(*a1, a2, a3, v14, v18, v12, a8);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t ccec_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v24[2] = *MEMORY[0x29EDCA608];
  v5 = **a2;
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v5);
  (*(a1 + 24))(a1, v5);
  ccsha256_di();
  v7 = OUTLINED_FUNCTION_0_33();
  result = ccec_sign_composite_msg_ws(v7, v8, v9, v10, v11, v12, v13, a3);
  if (!result)
  {
    v24[0] = 0;
    v24[1] = 0;
    ccsha256_di();
    v15 = OUTLINED_FUNCTION_0_33();
    result = ccec_verify_composite_msg_ws(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!result)
    {
      cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v24);
      result = 0;
    }
  }

  *(a1 + 16) = v6;
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_compact_generate_key_checksign_ws(uint64_t a1, uint64_t (**a2)(void, unint64_t, void *), uint64_t a3)
{
  if (*(a3 + 8) != 2)
  {
    return 4294967210;
  }

  result = ccec_sign_internal_ws(a1, (a3 + 16 + 16 * *a3), 0x20uLL, &FAKE_DIGEST, (a3 + 16), (a3 + 16 + 8 * *a3), a2);
  if (!result)
  {
    *(a3 + 8) = 3;
  }

  return result;
}

uint64_t ccec_compact_generate_key_checkverify_and_extract_ws(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (*(a2 + 8) == 3)
  {
    v9[0] = 0;
    v9[1] = 0;
    v5 = (a2 + 16);
    v6 = ccec_verify_internal_ws(a1, (a2 + 16 + 16 * *a2), 0x20uLL, &FAKE_DIGEST, v5, &v5[*a2], v9);
    if (!v6 && !cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v9))
    {
      *(a2 + 8) = 4;
      *a3 = &v5[2 * *a2];
    }
  }

  else
  {
    v6 = 4294967210;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t ccec_generate_key_deterministic_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, uint64_t, uint64_t *), int a6, unint64_t **a7)
{
  *a7 = a2;
  if ((~a6 & 0x19) != 0)
  {
    if (a6)
    {
      v18 = OUTLINED_FUNCTION_0_34();
      result = ccec_generate_scalar_fips_extrabits_ws(v18, v19, v20, v21, v22);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if ((a6 & 4) == 0)
      {
        return 4294967275;
      }

      v23 = OUTLINED_FUNCTION_0_34();
      result = ccec_generate_scalar_legacy_ws(v23, v24, v25, v26, v27);
      if (result)
      {
        return result;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_1_17();
    result = ccec_make_pub_from_priv_ws(a1, a2, a5, (v28 + 16), 0, a7);
    if (!result)
    {
      if ((~a6 & 9) == 0)
      {
        ccec_compact_transform_key_ws(a1, a7);
      }

      if (ccec_pairwise_consistency_check_ws(a1, a7, a5))
      {
        return 4294967278;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  memset(v29, 0, sizeof(v29));
  v14 = ((cczp_bitlen(a2) + 62) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v15 = (a3 - v14);
  if (v15 < 10 * (((cczp_bitlen(&a2[5 * *a2 + 4]) + 63) >> 3) & 0x1FFFFFFFFFFFFFF8))
  {
    return 4294967286;
  }

  result = ccrng_sequence_non_repeat_init(v29, v15, (a4 + v14));
  if (!result)
  {
    OUTLINED_FUNCTION_1_17();
    result = ccec_generate_scalar_fips_retry_ws(a1, a2, v29, (v17 + 16));
    if (!result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t cche_ciphertext_plaintext_add_ws(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v93[1] = *MEMORY[0x29EDCA608];
  v8 = cche_param_ctx_he_scheme(*a3);
  if (v8 == 2)
  {
    v50 = *(a3 + 8);
    if (v50 == cche_ciphertext_fresh_npolys() && *(a2 + 8) == v50)
    {
      v51 = a3 + 24;
      v52 = (a2 + 24);
      if (ccpolyzp_po2cyc_ctx_eq(*(a3 + 24), *(a2 + 24)))
      {
        v53 = cche_param_ctx_polynomial_degree(*a3);
        v54 = *(a3 + 24);
        v55 = v54[1];
        v56 = *v52;
        v57 = *a4;
        v58 = *(*a4 + 4);
        while (--v58)
        {
          v57 = v57[14];
        }

        if (v55)
        {
          v59 = 0;
          v60 = *v52;
          do
          {
            v61 = v56[1] - 1;
            v62 = v56;
            if (v61 > v59)
            {
              v62 = v56;
              do
              {
                v62 = *(v62 + 14);
                --v61;
              }

              while (v61 > v59);
            }

            if (v53)
            {
              for (i = 0; i != v53; *(a2 + 32 + 8 * (i++ + v59 * **v52)) = v76 + ((v76 >> 63) & v75))
              {
                v64 = a4[i + 1];
                v65 = *(a3 + 16);
                v66 = (v65 * v64) >> 64;
                v67 = v65 * v64;
                v68 = v57[4];
                v69 = (v67 * v68) >> 64;
                v70 = (v66 * v68) >> 64;
                v71 = v66 * v68;
                v36 = __CFADD__(v69, v71);
                v72 = v69 + v71;
                v73 = v36;
                v74 = v73 + __CFADD__(v67 * v57[5], v72) + v70 + v57[5] * v66 + ((v67 * v57[5]) >> 64);
                v75 = *(v62 + 2);
                v76 = *(a3 + 32 + 8 * (i + v59 * **(a3 + 24))) + (((v67 + v57[2] * ~v74) >> 63) & v57[2]) - v75 + v67 + v57[2] * ~v74;
              }
            }

            ++v59;
          }

          while (v59 != v55);
          v54 = *v51;
          v77 = *(*v51 + 4);
        }

        else
        {
          v77 = 0;
        }

        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_3_6();
        v80 = &v52[v79] + v78;
        v81 = (*v54 * v77);
        OUTLINED_FUNCTION_1_18(v80, v82);
        result = 0;
        *(a2 + 16) = *(a3 + 16);
        goto LABEL_47;
      }
    }

LABEL_31:
    result = 4294967289;
    goto LABEL_47;
  }

  if (v8 != 1)
  {
    goto LABEL_31;
  }

  v9 = *(a3 + 8);
  if (v9 != cche_ciphertext_fresh_npolys())
  {
    goto LABEL_31;
  }

  if (*(a2 + 8) != v9)
  {
    goto LABEL_31;
  }

  v10 = (a2 + 24);
  if (!ccpolyzp_po2cyc_ctx_eq(*(a3 + 24), *(a2 + 24)) || *(a3 + 16) != 1)
  {
    goto LABEL_31;
  }

  v85 = a2;
  v86 = *(a1 + 16);
  v11 = *a3;
  v12 = cche_param_ctx_polynomial_degree(*a3);
  v84 = *(*(a3 + 24) + 4);
  v13 = cche_param_ctx_cipher_plain_ctx_const(v11, v84);
  v14 = *v10;
  v89 = cche_param_ctx_plaintext_ctx(v11);
  v15 = a4;
  v16 = *(a1 + 24);
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v18 = v12;
  v87 = v16(a1, ((v17 + 7) >> 3) + v12);
  v88 = v15;
  *v87 = *v15;
  v19 = v13;
  ccn_set(1, &__dst, (v13 + 24));
  ccn_zero(1, v93);
  if (v12)
  {
    v20 = v88 + 1;
    v21 = (v87 + 1);
    v22 = v18;
    while (1)
    {
      ccn_mul_ws(a1, 1uLL, v91, (v19 + 16), v20);
      if (ccn_add_ws(a1, 2, v90, v91, &__dst))
      {
        break;
      }

      ccpolyzp_po2cyc_scalar_divmod_ws(a1, v21, v90, (v89 + 16));
      v21 += 8;
      ++v20;
      if (!--v22)
      {
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_11:
    if (v84)
    {
      v23 = 0;
      v24 = (v19 + 32);
      do
      {
        v25 = v14[1] - 1;
        v26 = v14;
        if (v25 > v23)
        {
          v26 = v14;
          do
          {
            v26 = v26[14];
            --v25;
          }

          while (v25 > v23);
        }

        if (v18)
        {
          v27 = 0;
          v28 = *v24;
          do
          {
            v29 = v88[v27 + 1];
            v30 = (v29 * v28) >> 64;
            v31 = v29 * v28;
            v32 = v26[4];
            v33 = (v31 * v32) >> 64;
            v34 = (v30 * v32) >> 64;
            v35 = v30 * v32;
            v36 = __CFADD__(v33, v35);
            v37 = v33 + v35;
            v38 = v36;
            v39 = v38 + __CFADD__(v31 * v26[5], v37) + v34 + v26[5] * v30 + ((v31 * v26[5]) >> 64);
            v40 = v26[2];
            v41 = v87[v27 + 1] + (((v31 + v40 * ~v39) >> 63) & v40) - v40 + v31 + v40 * ~v39;
            v42 = *(a3 + 32 + 8 * (v27 + v23 * **(a3 + 24)));
            *(v85 + 32 + 8 * (v27++ + v23 * **v10)) = v42 + ((v41 >> 63) & v40) - v40 + v41 + (((v42 + ((v41 >> 63) & v40) - v40 + v41) >> 63) & v40);
          }

          while (v18 != v27);
        }

        ++v24;
        ++v23;
      }

      while (v23 != v84);
    }

    v43 = *(v85 + 24);
    sizeof_struct_ccpolyzp_po2cyc();
    OUTLINED_FUNCTION_3_6();
    v46 = &v10[v45] + v44;
    v47 = (*(*(a3 + 24) + 4) * **(a3 + 24));
    OUTLINED_FUNCTION_1_18(v46, v48);
    result = 0;
    *(v85 + 16) = *(a3 + 16);
  }

  *(a1 + 16) = v86;
LABEL_47:
  v83 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cche_ciphertext_coeff_plaintext_mul_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  if (!ccpolyzp_po2cyc_ctx_eq(*(a2 + 24), *(a3 + 24)))
  {
    return 4294967289;
  }

  v9 = *a4;
  v10 = cche_param_ctx_plaintext_ctx(*a3);
  if (!ccpolyzp_po2cyc_ctx_eq(v9, v10))
  {
    return 4294967289;
  }

  v11 = *(a1 + 24);
  v12 = *(a3 + 24);
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_35();
  v11(a1, v14 + (v13 >> 3));
  v15 = cche_param_ctx_cipher_plain_ctx_const(*a3, *(*(a3 + 24) + 4));
  result = OUTLINED_FUNCTION_4_3(v15);
  if (!result)
  {
    result = cche_ciphertext_coeff_dcrt_plaintext_mul_internal(a2, a3);
  }

  *(a1 + 16) = v8;
  return result;
}

uint64_t cche_ciphertext_coeff_dcrt_plaintext_mul_internal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v6 = (v5 + 24);
  if (!ccpolyzp_po2cyc_ctx_eq(*(v5 + 24), *(v7 + 24)) || !ccpolyzp_po2cyc_ctx_eq(*v4, *(v3 + 24)))
  {
    return 4294967289;
  }

  v8 = *(v3 + 8);
  if (v2 != v3)
  {
    v9 = *(v3 + 24);
    v10 = sizeof_struct_ccrns_mul_modulus();
    v11 = sizeof_struct_ccpolyzp_po2cyc();
    v12 = (v10 + v11 - 1) / v11;
    sizeof_struct_ccpolyzp_po2cyc();
    OUTLINED_FUNCTION_0_35();
    memmove(v2, v3, 8 * (v12 + (v14 + (v13 >> 3)) * v8));
  }

  result = cche_ciphertext_fwd_ntt_internal(v2);
  if (!result)
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v17 = *v6;
        sizeof_struct_ccpolyzp_po2cyc();
        OUTLINED_FUNCTION_0_35();
        v20 = &v6[(v19 + (v18 >> 3)) * i];
        ccpolyzp_po2cyc_eval_mul(v20, v20, v4);
      }
    }

    v2[2] = *(v3 + 16);

    return cche_ciphertext_inv_ntt_internal(v2);
  }

  return result;
}

uint64_t cche_ciphertext_coeff_dcrt_plaintext_mul(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_ciphertext_coeff_dcrt_plaintext_mul_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_ciphertext_eval_dcrt_plaintext_mul_internal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v6 = (v5 + 24);
  v8 = (v7 + 24);
  if (!ccpolyzp_po2cyc_ctx_eq(*(v5 + 24), *(v7 + 24)) || !ccpolyzp_po2cyc_ctx_eq(*v4, *v8))
  {
    return 4294967289;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = *v6;
      v12 = sizeof_struct_ccpolyzp_po2cyc();
      ccpolyzp_po2cyc_eval_mul(&v6[((v11[1] * *v11) + ((v12 + 7) >> 3)) * i], &v8[(((*v8)[1] * **v8) + ((v12 + 7) >> 3)) * i], v4);
    }
  }

  result = 0;
  *(v2 + 16) = *(v3 + 16);
  return result;
}

uint64_t cche_ciphertext_eval_plaintext_mul_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 8) != *(a3 + 8))
  {
    return 4294967289;
  }

  OUTLINED_FUNCTION_2_10();
  v9 = *(v8 + 16);
  if (!ccpolyzp_po2cyc_ctx_eq(*(v10 + 24), *(v11 + 24)))
  {
    return 4294967289;
  }

  v12 = *a4;
  v13 = cche_param_ctx_plaintext_ctx(*v6);
  if (!ccpolyzp_po2cyc_ctx_eq(v12, v13))
  {
    return 4294967289;
  }

  v14 = *(v4 + 24);
  v15 = v6[3];
  sizeof_struct_ccpolyzp_po2cyc();
  OUTLINED_FUNCTION_0_35();
  v14(v4, v17 + (v16 >> 3));
  v18 = cche_param_ctx_cipher_plain_ctx_const(*v6, *(v6[3] + 4));
  result = OUTLINED_FUNCTION_4_3(v18);
  if (!result)
  {
    result = cche_ciphertext_eval_dcrt_plaintext_mul_internal(v5, v6);
    *(v5 + 16) = v6[2];
  }

  *(v4 + 16) = v9;
  return result;
}

uint64_t cczp_generate_non_zero_element_ws(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t), char *a4)
{
  v8 = cczp_n(a2);
  v9 = cczp_bitlen(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  v12 = (*(a1 + 24))(a1, v8 + 1);
  ccn_random_bits(v9 + 64, v12, a3);
  v14 = v13;
  if (!v13)
  {
    v15 = cczp_prime(a2);
    ccn_sub1(v8, v11, v15, 1uLL);
    ccn_divmod_ws(a1, (v9 + 127) >> 6, v12, 0, 0, v8, a4, v11);
    ccn_add1_ws(a1, v8, a4, a4, 1);
  }

  *(a1 + 16) = v10;
  return v14;
}

uint64_t ccrng_test_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t a2, uint64_t a3, const char *a4)
{
  *a1 = ccrng_test_generate;
  v8 = ccaes_cbc_encrypt_mode();
  result = ccdrbg_df_bc_init(ccrng_test_init_df_ctx, v8, 0x10uLL);
  if (!result)
  {
    ccrng_test_init_custom = ccaes_ctr_crypt_mode();
    ccdrbg_factory_nistctr(a1 + 1, &ccrng_test_init_custom);
    v10 = malloc_type_malloc(2 * a1[1], 0xE653E472uLL);
    a1[8] = v10;
    if (!a4)
    {
      a4 = &unk_299D0EA16;
    }

    v11 = strlen(a4);

    return ccdrbg_init((a1 + 1), v10, a2, a3, a2, a3, v11, a4);
  }

  return result;
}

void ccprime_rabin_miller_iteration_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v4 = &a2[2 * *a2];
  v5 = v4[4];
  if (v5 <= 0x3F)
  {
    v41 = *a2;
    v8 = (v4 + 5);
    v10 = cczp_n(a2);
    v11 = *(a1 + 16);
    v12 = (*(a1 + 24))(a1, v10);
    v13 = (*(a1 + 24))(a1, v10);
    v14 = OUTLINED_FUNCTION_0_36();
    cczp_to_ws(v14, v15);
    ccn_seti(v10, v13, 1);
    cczp_to_ws(a1, a2);
    v16 = OUTLINED_FUNCTION_0_36();
    cczp_power_blinded_ws(v16, v17, v18, v12, v19, v8, a4);
    if (!v20)
    {
      v40 = v11;
      v21 = v8 + 8 * v41;
      v22 = OUTLINED_FUNCTION_2_11();
      ccn_cmp_internal(v22, v23, v13);
      OUTLINED_FUNCTION_1_19();
      v25 = v24 - 1;
      v26 = OUTLINED_FUNCTION_2_11();
      ccn_cmp_internal(v26, v27, v21);
      OUTLINED_FUNCTION_1_19();
      v29 = (v28 - 1) | v25;
      v30 = 62;
      do
      {
        if ((v29 | -(v5 + v30 != 63)) != 0xFFFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v31 = OUTLINED_FUNCTION_0_36();
        cczp_sqr_ws(v31, v32);
        v33 = OUTLINED_FUNCTION_2_11();
        ccn_cmp_internal(v33, v34, v21);
        OUTLINED_FUNCTION_1_19();
        v29 |= v35 - 1;
        v36 = OUTLINED_FUNCTION_2_11();
        ccn_cmp_internal(v36, v37, v13);
        OUTLINED_FUNCTION_1_19();
      }

      while ((v29 | -v38) == 0xFFFFFFFFFFFFFFFFLL && v30-- != 0);
      v11 = v40;
    }

    *(a1 + 16) = v11;
  }
}

uint64_t ccmldsa_derive_key_from_seed(uint64_t a1, uint64_t a2)
{
  v7 = timingsafe_enable_if_supported();
  ccmldsa_public_ctx(a1);
  if (ccmldsa_seed_nbytes_ctx() == a2)
  {
    v4 = ccmldsa_public_ctx(a1);
    v5 = OUTLINED_FUNCTION_0_37(v4);
  }

  else
  {
    v5 = 4294967289;
  }

  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccmldsa_generate_key_with_seed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t))
{
  v12 = timingsafe_enable_if_supported();
  ccmldsa_public_ctx(a1);
  if (ccmldsa_seed_nbytes_ctx() == a2)
  {
    v8 = (*a4)(a4, a2, a3);
    if (!v8)
    {
      v9 = ccmldsa_public_ctx(a1);
      v8 = OUTLINED_FUNCTION_0_37(v9);
    }

    v10 = v8;
  }

  else
  {
    v10 = 4294967289;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cccmac_one_shot_generate_internal(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, size_t a6, void *a7)
{
  v23[1] = *MEMORY[0x29EDCA608];
  v13 = *a1;
  v12 = a1[1];
  OUTLINED_FUNCTION_0_38();
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = &v23[-2 * v16];
  if (!cccmac_init_internal(v15, v17, v18, v19) && !cccmac_update_internal(v17, a4, a5))
  {
    cccmac_final_generate_internal(v17, a6, a7);
  }

  v20 = OUTLINED_FUNCTION_1_20();
  cc_clear(v20, v17);
  v21 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t cccmac_one_shot_generate(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, size_t a6, void *a7)
{
  v16 = timingsafe_enable_if_supported();
  internal = cccmac_one_shot_generate_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return internal;
}

uint64_t cccmac_one_shot_verify(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v23 = *MEMORY[0x29EDCA608];
  HIDWORD(v22) = timingsafe_enable_if_supported();
  v15 = *a1;
  v14 = a1[1];
  OUTLINED_FUNCTION_0_38();
  MEMORY[0x2A1C7C4A8](v16);
  v18 = (&v22 - 2 * v17);
  if (!cccmac_init_internal(a1, v18, a2, a3) && !cccmac_update_internal(v18, a4, a5))
  {
    cccmac_final_verify_internal(v18, a6, a7);
  }

  v19 = OUTLINED_FUNCTION_1_20();
  cc_clear(v19, v18);
  cc_disable_dit_with_sb(&v22 + 1);
  v20 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t ccrsa_generate_probable_prime_ws(uint64_t a1, unint64_t a2, char *a3, void *a4, unint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t (**a9)(void, unint64_t, void *), unsigned int (**a10)(void, unint64_t, uint64_t), void *a11)
{
  v17 = a11;
  v18 = a9;
  v19 = (a2 + 63) >> 6;
  v81 = *(a1 + 16);
  v107 = (*(a1 + 24))(a1, v19);
  v20 = *(a1 + 24);
  v21 = OUTLINED_FUNCTION_0_8();
  v110 = v22(v21);
  v23 = 0;
  v113 = (a5 + 63) >> 6;
  if (a5 + 1 > a6)
  {
    v24 = a5 + 1;
  }

  else
  {
    v24 = a6;
  }

  v25 = (v24 + 63) >> 6;
  v92 = a5 + 63;
  v91 = v25 - ((a5 + 63) >> 6);
  v94 = a6 - 1;
  v95 = a5 - 1;
  v97 = (a6 + 63) >> 6;
  v90 = a6 + 63;
  v89 = v25 - v97;
  v87 = 2 * v25;
  v108 = v25;
  v83 = v19 - 2 * v25;
  v85 = a2 - 5;
  v26 = a2 - 1;
  v116 = a2 - 256;
  __n = 8 * v19;
  v88 = a2;
  v27 = 5 * a2;
  if (5 * a2 <= 1)
  {
    v27 = 1;
  }

  v82 = v27;
  v106 = a6;
  v28 = a5;
  v93 = a5;
  __s = a3;
  do
  {
    v105 = v23;
    ccn_zero(v113, v107);
    ccn_zero(v113, v110);
    if (ccn_random_bits_fips(v28, v107, v18) || ccn_random_bits_fips(v106, v110, v18))
    {
      result = 4294967260;
      goto LABEL_61;
    }

    v114 = *(a1 + 16);
    ccn_set_bit(v107, v95, 1);
    ccn_set_bit(v110, v94, 1);
    if (v17)
    {
      v17 += 387 * v17[2];
      *v17 = ccn_bitlen_internal(v113, v107);
      v17[1] = ccn_bitlen_internal(v113, v110);
      __memcpy_chk();
      __memcpy_chk();
      v17[3] |= 1uLL;
      v17[67] |= 1uLL;
    }

    v29 = v108;
    result = ccrsa_find_next_prime_ws(a1, v28, v107, a10);
    if (result)
    {
      goto LABEL_61;
    }

    result = ccrsa_find_next_prime_ws(a1, v106, v110, a10);
    if (result || !v17)
    {
      *(a1 + 16) = v114;
      v31 = v88;
      if (result)
      {
        goto LABEL_61;
      }
    }

    else
    {
      __memcpy_chk();
      v29 = v108;
      __memcpy_chk();
      *(a1 + 16) = v114;
      v31 = v88;
    }

    v109 = ccrsa_num_mr_iterations(v31);
    v32 = *(a1 + 24);
    v102 = *(a1 + 16);
    v33 = OUTLINED_FUNCTION_0_8();
    v35 = v34(v33);
    v36 = *(a1 + 24);
    v37 = OUTLINED_FUNCTION_0_8();
    v96 = v38(v37);
    v39 = *(a1 + 24);
    v40 = OUTLINED_FUNCTION_0_8();
    v115 = v41(v40);
    *v35 = v31;
    v99 = ccn_bitlen_internal(1, v35);
    v42 = *(a1 + 24);
    v111 = *(a1 + 16);
    v43 = OUTLINED_FUNCTION_0_8();
    v45 = v44(v43);
    v46 = &v45[v29];
    if (v92 >= 0x40)
    {
      ccn_set(v113, v46, v107);
    }

    ccn_zero(v91, &v46[v113]);
    if (v90 >= 0x40)
    {
      ccn_set(v97, v35, v110);
    }

    ccn_zero(v89, &v35[v97]);
    if (ccn_invmod_ws(a1, v108, v45, v108, v46, v35))
    {
      v59 = a11;
LABEL_46:
      *(a1 + 16) = v111;
LABEL_47:
      v58 = -32;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_0_5();
      ccn_sub_ws(v47, v48, v45, v35, v45);
      v49 = OUTLINED_FUNCTION_0_5();
      ccn_add_ws(v49, v50, v46, v46, v46);
      v51 = OUTLINED_FUNCTION_0_5();
      v52 = v115;
      ccn_mul_ws(v51, v53, v115, v46, v35);
      if (v19 <= v87)
      {
        v56 = OUTLINED_FUNCTION_0_5();
        ccn_mul_ws(v56, v57, v35, v46, v45);
        OUTLINED_FUNCTION_2_12();
      }

      else
      {
        ccn_zero(v83, &v115[8 * v87]);
        v54 = OUTLINED_FUNCTION_0_5();
        ccn_mul_ws(v54, v55, v35, v46, v45);
        OUTLINED_FUNCTION_2_12();
        v52 = v115;
        ccn_zero(v83, &v35[v87]);
      }

      *(a1 + 16) = v111;
      a3 = __s;
      if (ccn_bitlen_internal(v19, v52) <= v85 - v99)
      {
        v60 = 0;
        v59 = a11;
        v18 = a9;
        while (2)
        {
          v84 = v60;
          v100 = v59;
          ccn_zero(v19, a4);
          v61 = *(a1 + 24);
          v111 = *(a1 + 16);
          v62 = OUTLINED_FUNCTION_0_8();
          v64 = v63(v62);
          v65 = 100;
          while (1)
          {
            if (ccn_random_bits_fips(v31, a4, a9))
            {
LABEL_45:
              v59 = v100;
              goto LABEL_46;
            }

            ccn_set_bit(a4, v26, 1);
            ccn_shift_right_multi(v19, v64, a4, v116);
            if ((ccn_cmp_internal(4, v64, &SQRT2) & 0x80000000) == 0)
            {
              break;
            }

            if (!--v65)
            {
              goto LABEL_45;
            }
          }

          *(a1 + 16) = v111;
          if (v100)
          {
            v101 = &v100[387 * v100[2]];
            __memcpy_chk();
          }

          else
          {
            v101 = 0;
          }

          v66 = OUTLINED_FUNCTION_0_8();
          ccn_divmod_ws(v66, v67, a4, 0, 0, v19, __s, v115);
          v68 = OUTLINED_FUNCTION_0_8();
          v112 = ccn_sub_ws(v68, v69, __s, v35, __s);
          v70 = OUTLINED_FUNCTION_0_8();
          ccn_add_ws(v70, v71, v96, v115, __s);
          ccn_mux(v19, v112, __s, v96, __s);
          v72 = OUTLINED_FUNCTION_0_8();
          v74 = ccn_add_ws(v72, v73, __s, a4, __s);
          if (v31)
          {
            v75 = v82;
            v59 = v101;
            while (!v74 && ccn_bitlen_internal(v19, __s) <= v31)
            {
              v76 = OUTLINED_FUNCTION_0_8();
              ccrsa_is_valid_prime_ws(v76, v77, __s, a7, a8, v109, a10);
              if (v78 < 0)
              {
                goto LABEL_47;
              }

              if (v78 == 1)
              {
                v58 = 0;
                goto LABEL_49;
              }

              v79 = OUTLINED_FUNCTION_0_8();
              v74 = ccn_add_ws(v79, v80, __s, __s, v115);
              if (!--v75)
              {
                v58 = -31;
                goto LABEL_48;
              }
            }

            v60 = v84 + 1;
            v58 = -30;
            if (v84 != 99)
            {
              continue;
            }
          }

          else
          {
            v58 = -31;
            v59 = v101;
          }

          break;
        }
      }

      else
      {
        v58 = -38;
        v59 = a11;
        v18 = a9;
      }
    }

LABEL_48:
    cc_clear(__n, a3);
    cc_clear(__n, a4);
LABEL_49:
    v28 = v93;
    v17 = a11;
    if (v59)
    {
      memcpy(v59 + 323, a3, __n);
    }

    *(a1 + 16) = v102;
    if (!v58)
    {
      break;
    }

    v23 = v105 + 1;
  }

  while (v105 < 0x63);
  if (v105 == 99)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = v58;
  }

LABEL_61:
  *(a1 + 16) = v81;
  return result;
}

uint64_t cczp_generate_random_element_ws(uint64_t a1, void *a2, unsigned int (**a3)(void, unint64_t, uint64_t), uint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = cczp_n(a2);
  v10 = cczp_bitlen(a2);
  v11 = (*(a1 + 24))(a1, v9 + 1);
  ccn_random_bits(v10 + 64, v11, a3);
  v13 = v12;
  if (!v12)
  {
    cczp_modn_ws(a1, a2, a4, (v10 + 127) >> 6, v11);
  }

  *(a1 + 16) = v8;
  return v13;
}

uint64_t cche_decrypt_ctx_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v36[2] = *MEMORY[0x29EDCA608];
  *a2 = a3;
  v6 = (a2 + 1);
  v34 = cche_param_ctx_polynomial_degree(a3);
  v35 = 2;
  v36[0] = cche_param_ctx_plaintext_modulus(a3);
  v36[1] = 0x1FFFFFFFFFFFFFFFLL;
  v32 = v6;
  v33 = a1;
  result = ccpolyzp_po2cyc_ctx_chain_init_ws(a1, v6, &v34, v36);
  if (!result)
  {
    v8 = v35;
    v9 = *(v4 + 2);
    v10 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v9 >= 0x80)
    {
      v11 = 128;
    }

    else
    {
      v11 = v9;
    }

    v31 = &v4[(v10 + 2 * (v9 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v11) + 6) * (*(v4 + 3) - v8)];
    v12 = cche_param_ctx_chain_const(*v4) + 8;
    v30 = v4;
    while (1)
    {
      v13 = *(v12 + 4);
      v14 = sizeof_struct_ccpolyzp_po2cyc();
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      v16 = v15 - 1 + v14;
      v17 = *(v4 + 2);
      v18 = *(v4 + 3);
      v19 = v16 / v15;
      v20 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
      v21 = v17 >= 0x80 ? 128 : v17;
      v22 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
      v23 = &v32[2 * (v20 + 2 * (v17 + v22 * v21) + 6) * v18 + 2 * v19];
      if (v13 >= 2)
      {
        v24 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
        v25 = -1;
        v26 = v18;
        v27 = 1;
        v28 = 1;
        do
        {
          v23 += v28 + (v24 + v15 - 1) / v15 + (v27 + v26) * v22;
          ++v28;
          v27 += 3;
          v26 += v18;
          ++v25;
        }

        while (1 - v13 + v25 != -1);
      }

      result = ccpolyzp_po2cyc_base_convert_init_ws(v33, v23, v12, v31 + 4);
      if (result)
      {
        break;
      }

      v12 = *(v12 + 112);
      v4 = v30;
      if (!v12)
      {
        result = 0;
        break;
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cche_decrypt_ws(uint64_t a1, unint64_t *a2, unsigned int *a3, uint64_t a4, _DWORD **a5)
{
  v10 = *(a4 + 8);
  if (v10 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  if (!cche_param_ctx_eq(*a4, a3))
  {
    return 4294967289;
  }

  v11 = *a5;
  v12 = cche_param_ctx_chain_const(a3);
  if (!ccpolyzp_po2cyc_ctx_eq(v11, (v12 + 8)))
  {
    return 4294967289;
  }

  v13 = *(a1 + 16);
  *a2 = cche_param_ctx_plaintext_ctx(a3);
  v14 = *(a1 + 24);
  v15 = *(a4 + 24);
  v16 = *(a4 + 8);
  v17 = sizeof_struct_ccrns_mul_modulus();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = (v17 + v18 - 1) / v18;
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v21 = v14(a1, v19 + ((v15[1] * *v15) + ((v20 + 7) >> 3)) * v16);
  v22 = *(a4 + 24);
  v23 = *(a4 + 8);
  v24 = sizeof_struct_ccrns_mul_modulus();
  v25 = sizeof_struct_ccpolyzp_po2cyc();
  v26 = (v24 + v25 - 1) / v25;
  v27 = sizeof_struct_ccpolyzp_po2cyc();
  memmove(v21, a4, 8 * (v26 + ((v22[1] * *v22) + ((v27 + 7) >> 3)) * v23));
  v29 = v21[3];
  v28 = v21 + 3;
  v30 = (&v28[v29[1] * *v29] + ((sizeof_struct_ccpolyzp_po2cyc() + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = ccpolyzp_po2cyc_fwd_ntt(v30);
  if (!v31)
  {
    cche_mul_poly_sk(v30, v30, a5);
    v31 = ccpolyzp_po2cyc_inv_ntt(v30);
    if (!v31)
    {
      v69 = a2;
      v70 = v13;
      v71 = a1;
      ccpolyzp_po2cyc_coeff_add(v30, v28, v30);
      v32 = *cche_param_ctx_plaintext_ctx(a3);
      v33 = cche_param_ctx_plaintext_ctx(a3);
      v68 = a3;
      v34 = cche_param_ctx_polynomial_degree(a3);
      v35 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
      if (v34 >= 0x80)
      {
        v36 = 128;
      }

      else
      {
        v36 = v34;
      }

      v37 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
      v38 = v33 + 8 * v35 + 16 * (v37 * v36 + v34) + ((4 * v32 + 7) & 0x7FFFFFFF8);
      v39 = (*v30)[1];
      v40 = sizeof_struct_ccpolyzp_po2cyc();
      v41 = sizeof_struct_ccpolyzp_po2cyc();
      v42 = v41 - 1;
      v43 = *(v38 + 56);
      v45 = *(v38 + 60);
      v44 = v38 + 56;
      if (v43 >= 0x80)
      {
        v46 = 128;
      }

      else
      {
        v46 = v43;
      }

      v47 = v44 + 8 * (v35 + 2 * (v43 + v37 * v46) + 6) * v45 + 8 * ((v41 - 1 + v40) / v41);
      if (v39 < 2)
      {
        a1 = v71;
        v54 = v69;
      }

      else
      {
        v48 = v41;
        v49 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
        v50 = 1;
        v51 = -1;
        v52 = v45;
        v53 = 1;
        a1 = v71;
        v54 = v69;
        do
        {
          v47 += 8 * (v53 + (v49 + v42) / v48 + (v50 + v52) * v37);
          ++v53;
          v50 += 3;
          v52 += v45;
          ++v51;
        }

        while (1 - v39 + v51 != -1);
      }

      v55 = cche_param_ctx_he_scheme(v68);
      v13 = v70;
      if (v55 == 2)
      {
        v61 = OUTLINED_FUNCTION_0_39();
        v31 = ccpolyzp_po2cyc_base_convert_exact_poly_ws(v61, v62, v63, v64);
        if (!v31)
        {
LABEL_20:
          v72 = *(a4 + 16);
          v60 = cche_param_ctx_plaintext_modulus_inverse_ws(a1, &v72, v68, v72);
          if (!v60)
          {
            ccpolyzp_po2cyc_coeff_scalar_mul_ws(a1, v54, v54, &v72);
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (v55 != 1)
        {
          v60 = 4294967289;
          goto LABEL_25;
        }

        v56 = OUTLINED_FUNCTION_0_39();
        v31 = ccpolyzp_po2cyc_base_convert_divide_and_round_ws(v56, v57, v58, v59);
        if (!v31)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v60 = v31;
LABEL_25:
  v65 = *v30;
  v66 = sizeof_struct_ccpolyzp_po2cyc();
  cc_clear((v66 + 8 * v65[1] * *v65 + 7) & 0xFFFFFFFFFFFFFFF8, v30);
  *(a1 + 16) = v13;
  return v60;
}

uint64_t ccpolyzp_po2cyc_modulus_to_cczp_ws(uint64_t a1, void *a2, unint64_t a3)
{
  *a2 = 1;
  v6 = bswap64(a3);
  result = ccn_read_uint_public_value(1uLL, a2 + 3, 8uLL, &v6);
  if (!result)
  {
    return cczp_init_ws(a1, a2);
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_divide_and_round_q_last_ws(uint64_t a1, unint64_t **a2)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if ((*a2)[14] && (v3 = *(v2 + 1), v3 >= 2))
  {
    v6 = *v2;
    v7 = v3 - 1;
    ccn_shift_right(1, v20, v2 + 18, 1);
    if (v6)
    {
      v8 = 0;
      do
      {
        v9 = v8 + **a2 * v7;
        cczp_add_ws(a1, (v2 + 15));
        ++v8;
      }

      while (v6 != v8);
    }

    v10 = 0;
    v11 = a2 + 1;
    while (1)
    {
      v12 = *a2;
      v13 = *(*a2 + 1);
      while (--v13 > v10)
      {
        v12 = v12[14];
      }

      cczp_modn_ws(a1, v12 + 15, &v19, 1, v20);
      cczp_modn_ws(a1, v12 + 15, &v18, 1, v2 + 144);
      result = cczp_inv_field_ws(a1, (v12 + 15), &v18, &v18);
      if (result)
      {
        break;
      }

      if (v6)
      {
        v15 = 0;
        do
        {
          cczp_modn_ws(a1, v12 + 15, &v17, 1, &(&v11[v15])[**a2 * v7]);
          cczp_sub_ws(a1, (v12 + 15));
          cczp_sub_ws(a1, (v12 + 15));
          cczp_mul_ws(a1, (v12 + 15));
          ++v15;
        }

        while (v6 != v15);
      }

      if (++v10 == v7)
      {
        cc_clear(8 * v6, &v11[**a2 * v7]);
        result = 0;
        *a2 = (*a2)[14];
        break;
      }
    }
  }

  else
  {
    result = 4294967289;
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccapsic_server_init(uint64_t **a1, unint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v12 = timingsafe_enable_if_supported();
  inited = ccapsic_client_init_internal(a1, a2, a3, a4, a5);
  if (!inited)
  {
    ccn_set(**a2, &(&a1[12 * **a1])[2 * **a1 + 24], &a2[3 * **a2 + 2]);
  }

  cc_disable_dit_with_sb(&v12);
  return inited;
}

uint64_t cckem_kyber1024_generate_key_with_seed(uint64_t a1, _OWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  cckem_public_ctx(a1);
  v4 = a1 + *(*a1 + 16) + 8;
  v5 = ccmlkem_kem_keypair_with_seed();
  if (!v5)
  {
    v6 = __s[1];
    *a2 = __s[0];
    a2[1] = v6;
    cc_clear(0x40uLL, __s);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t cckem_kyber1024_derive_key_from_seed(uint64_t a1, _OWORD *a2, uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = cckem_public_ctx(a1);
  v7 = *(*a1 + 16);
  v8 = (*a3)(a3, 32, __s);
  if (!v8)
  {
    v8 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, (v6 + 8), a1 + v7 + 8, a2, __s);
  }

  v9 = v8;
  cc_clear(0x20uLL, __s);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t cckem_kyber1024_export_pubkey(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  if (v5 < cckem_pubkey_nbytes_ctx(v6))
  {
    return 4294967289;
  }

  v7 = cckem_pubkey_nbytes_ctx(v3);
  *v4 = v7;
  memcpy(v2, (v3 + 8), v7);
  return 0;
}

uint64_t cckem_kyber1024_import_pubkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_pubkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_pub_ctx_init(v2, v3);
  memcpy(v2 + 1, v1, v0);
  return 0;
}

uint64_t cckem_kyber1024_export_privkey(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_0_2(a1, a2);
  v7 = cckem_public_ctx(v6);
  if (v5 < cckem_privkey_nbytes_ctx(v7))
  {
    return 4294967289;
  }

  v8 = cckem_public_ctx(v3);
  v9 = cckem_privkey_nbytes_ctx(v8);
  *v4 = v9;
  memcpy(v2, (v3 + *(*v3 + 16) + 8), v9);
  return 0;
}

uint64_t cckem_kyber1024_import_privkey()
{
  OUTLINED_FUNCTION_1_1();
  if (cckem_privkey_nbytes_info(v4) != v0)
  {
    return 4294967289;
  }

  cckem_full_ctx_init(v2, v3);
  memcpy(v2 + *(*v2 + 16) + 8, v1, v0);
  return 0;
}

uint64_t ccmode_gcm_set_iv(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80) != 1 || (*(a1 + 82) & 1) != 0)
  {
    result = 4294967228;
  }

  else
  {
    v4 = a2;
    result = 4294967228;
    if (a2)
    {
      v6 = a3;
      if (a3)
      {
        if (a2 == 12)
        {
          v7 = *a3;
          *(a1 + 40) = *(a3 + 2);
          *(a1 + 32) = v7;
          *(a1 + 44) = 0x1000000;
        }

        else
        {
          cc_clear(8uLL, &v10);
          v10.i64[1] = bswap64(8 * v4);
          cc_clear(0x10uLL, (a1 + 32));
          if (v4 < 0x10)
          {
            goto LABEL_20;
          }

          do
          {
            for (i = 0; i != -16; --i)
            {
              *(a1 + i + 47) ^= *(v6 + i + 15);
            }

            ccmode_gcm_mult_h(a1, a1 + 32);
            v6 += 2;
            v4 -= 16;
          }

          while (v4 > 0xF);
          if (v4)
          {
LABEL_20:
            do
            {
              *(a1 + v4 + 31) ^= *(v6 + v4 - 1);
              --v4;
            }

            while (v4);
            ccmode_gcm_mult_h(a1, a1 + 32);
          }

          *(a1 + 32) = veorq_s8(v10, *(a1 + 32));
          ccmode_gcm_mult_h(a1, a1 + 32);
        }

        *(a1 + 48) = *(a1 + 32);
        ccmode_gcm_update_pad(a1);
        result = 0;
        *(a1 + 80) = 2;
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t ccecies_decrypt_gcm_plaintext_size(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = ccecies_pub_key_size_cp(*a1, a2);
  if (v5 - 1 >= a3)
  {
    return 0;
  }

  v6 = v5 + *(a2 + 28);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t ccecies_decrypt_gcm_plaintext_size_cp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = ccecies_pub_key_size_cp(a1, a2);
  if (v5 - 1 >= a3)
  {
    return 0;
  }

  v6 = v5 + *(a2 + 28);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t cche_ciphertext_coeff_compose(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, unint64_t a6, uint64_t a7)
{
  v53 = timingsafe_enable_if_supported();
  if (!a2 || cche_param_ctx_key_ctx_nmoduli(a4) < a5 || cche_param_ctx_plaintext_modulus(a4) <= a6)
  {
    goto LABEL_28;
  }

  v49 = a2;
  v13 = cche_param_ctx_chain_const(a4);
  v14 = *v13;
  v15 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
  if (v14 >= 0x80)
  {
    v16 = 128;
  }

  else
  {
    v16 = v14;
  }

  v17 = &v13[2 * (v15 + 2 * (v14 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v16) + 6) * (v13[1] - a5) + 2];
  v18 = cche_ciphertext_fresh_npolys();
  v19 = cche_ciphertext_sizeof(a4, a5, v18);
  bzero(a1, v19);
  v20 = cche_ciphertext_fresh_npolys();
  *a1 = a4;
  *(a1 + 2) = v20;
  a1[2] = 1;
  a1[3] = v17;
  v21 = a1 + 3;
  v51 = (a1 + 3);
  if (v20 >= 2)
  {
    for (i = 1; i != v20; v51[((v26 * v25) + ((v24 + 7) >> 3)) * i++] = v17)
    {
      v23 = *v51;
      v24 = sizeof_struct_ccpolyzp_po2cyc();
      v25 = *v23;
      v26 = v23[1];
      v21 = a1 + 3;
    }
  }

  v47 = v20;
  a1[2] = a6;
  if (cche_ciphertext_coeff_decompose_nptexts_internal(a1, a7) != v49)
  {
LABEL_28:
    v44 = 4294967289;
    goto LABEL_29;
  }

  if (v20)
  {
    v46 = a5;
    v27 = 0;
    v28 = 0;
    v29 = 63 - __clz(cche_param_ctx_plaintext_modulus(a4));
    v48 = (*(*v21 + 4) * **v21);
    while (1)
    {
      v30 = &v21[(v48 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v27];
      v31 = *v30;
      v32 = (*v30)[1];
      v50 = v27;
      if (v32)
      {
        break;
      }

LABEL_26:
      v21 = a1 + 3;
      v27 = v50 + 1;
      if (v50 + 1 == v47)
      {
        goto LABEL_27;
      }
    }

    v33 = 0;
    v34 = v27 * v46;
    v35 = v30 + 1;
    while (1)
    {
      v36 = a7 ? *(a7 + 4 * (v34 + v33)) : 0;
      v37 = cche_ciphertext_coeff_decompose_nptexts_rns(a1, v33, v36);
      if (v37)
      {
        break;
      }

LABEL_25:
      if (++v33 == v32)
      {
        goto LABEL_26;
      }
    }

    v38 = 0;
    v39 = v36;
    while (v39 <= 0x3F)
    {
      v40 = *v31;
      if (v40)
      {
        v41 = (*(a3 + 8 * v28) + 8);
        v42 = v33 * v40;
        do
        {
          v43 = *v41++;
          v35[v42] = (v35[v42] | (v43 << v39));
          ++v42;
          --v40;
        }

        while (v40);
      }

      v39 += v29;
      ++v38;
      ++v28;
      if (v38 == v37)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_28;
  }

LABEL_27:
  v44 = 0;
LABEL_29:
  cc_disable_dit_with_sb(&v53);
  return v44;
}

unint64_t cche_ciphertext_coeff_decompose(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = timingsafe_enable_if_supported();
  if (cche_ciphertext_coeff_decompose_nptexts_internal(a3, a4) == a1)
  {
    v37 = *a3;
    v7 = cche_param_ctx_plaintext_modulus(*a3);
    v8 = (a3 + 24);
    v9 = *(a3 + 8);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = __clz(v7);
      v13 = 63 - v12;
      v14 = ~(-1 << ~v12);
      v15 = *(*(a3 + 24) + 4);
      v35 = a3;
      v36 = a4;
      v31 = (a3 + 24);
      v34 = v15;
      do
      {
        v16 = *v8;
        v17 = sizeof_struct_ccpolyzp_po2cyc();
        if (v15)
        {
          v18 = v10;
          v19 = 0;
          v20 = &v8[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v18];
          v32 = v18;
          v33 = v15 * v18;
          do
          {
            if (a4)
            {
              v21 = *(a4 + 4 * (v33 + v19));
            }

            else
            {
              v21 = 0;
            }

            v22 = cche_ciphertext_coeff_decompose_nptexts_rns(a3, v19, v21);
            if (v22)
            {
              v23 = v22;
              v24 = 0;
              v25 = v21;
              do
              {
                v26 = *(a2 + 8 * v11);
                *v26 = cche_param_ctx_plaintext_ctx(v37);
                v27 = **v20;
                if (v27)
                {
                  v28 = v26 + 1;
                  v29 = v19 * v27;
                  do
                  {
                    *v28++ = (v20[++v29] >> v25) & v14;
                    --v27;
                  }

                  while (v27);
                }

                v25 += v13;
                ++v24;
                ++v11;
              }

              while (v24 != v23);
            }

            ++v19;
            v15 = v34;
            a3 = v35;
            a4 = v36;
          }

          while (v19 != v34);
          v9 = *(v35 + 8);
          v8 = v31;
          v10 = v32;
        }

        ++v10;
      }

      while (v10 < v9);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294967289;
  }

  cc_disable_dit_with_sb(&v39);
  return v9;
}

void ccdh_generate_private_key_ws(uint64_t a1, void *a2, void *a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v8 = ccdh_gp_n(a2);
  v9 = ccdh_gp_l(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_zero(v8, a3);
  ccn_zero(v8, v11);
  if (v9 <= cczp_bitlen(a2))
  {
    private_key_bitlen = ccdh_generate_private_key_bitlen(a2);
    ccn_random_bits(private_key_bitlen, a3, a4);
    if (!v13)
    {
      if (ccdh_gp_order_bitlen(a2) || !v9)
      {
        if (ccdh_gp_order_bitlen(a2))
        {
          v14 = ccdh_gp_order(a2);
        }

        else
        {
          v14 = ccdh_gp_prime(a2);
        }

        ccn_sub1(v8, v11, v14, 2uLL);
        for (i = 0; i != 100; ++i)
        {
          if (ccn_cmp_internal(v8, a3, v11) <= 0 && ccn_n(v8, a3))
          {
            break;
          }

          ccn_random_bits(private_key_bitlen, a3, a4);
          if (v16)
          {
            break;
          }
        }
      }

      else
      {
        ccn_set_bit(a3, v9 - 1, 1);
      }
    }
  }

  *(a1 + 16) = v10;
}

uint64_t ccmode_gcm_decrypt(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 96);
  ccmode_gcm_aad_finalize(a1);
  if (*(a1 + 80) != 3)
  {
    return 4294967228;
  }

  v9 = *(a1 + 96);
  result = 4294967229;
  if (!__CFADD__(v9, a2) && v9 + a2 <= 0xFFFFFFFE0)
  {
    v11 = v8 & 0xF;
    if ((v8 & 0xF) != 0)
    {
      v12 = 16 - v11;
      if (a2 < v12)
      {
LABEL_18:
        if (!a2)
        {
          return 0;
        }

        v19 = v11;
        v20 = a3 - 1;
        v21 = a1 + v11 + 15;
        v22 = a2;
        do
        {
          *(v21 + v22) ^= *(v20 + v22);
          --v22;
        }

        while (v22);
        v23 = v19 + a1 + 63;
        v24 = a2;
        do
        {
          *(a4 - 1 + v24) = *(v23 + v24) ^ *(v20 + v24);
          --v24;
        }

        while (v24);
        result = 0;
        *(a1 + 96) += a2;
        return result;
      }

      v13 = v8 & 0xF;
      v14 = a3 - 1;
      v15 = 16 - v11;
      do
      {
        *(v13 + a1 + 15 + v15) ^= *(v14 + v15);
        --v15;
      }

      while (v15);
      ccmode_gcm_mult_h(a1, a1 + 16);
      v16 = v12;
      do
      {
        *(a4 - 1 + v16) = *(v13 + a1 + 63 + v16) ^ *(v14 + v16);
        --v16;
      }

      while (v16);
      a2 -= v12;
      a3 += v12;
      a4 += v12;
      *(a1 + 96) += v12;
      ccmode_gcm_update_pad(a1);
    }

    if (a2 >= 0x10)
    {
      do
      {
        for (i = 0; i != -16; --i)
        {
          *(a1 + i + 31) ^= *(a3 + i + 15);
        }

        ccmode_gcm_mult_h(a1, a1 + 16);
        for (j = 0; j != -16; --j)
        {
          *(a4 + j + 15) = *(a1 + j + 79) ^ *(a3 + j + 15);
        }

        a2 -= 16;
        a3 += 16;
        a4 += 16;
        *(a1 + 96) += 16;
        ccmode_gcm_update_pad(a1);
      }

      while (a2 > 0xF);
    }

    v11 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t ccec_make_pub_from_priv_ws(uint64_t a1, unint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), uint64_t *a4, uint64_t a5, unint64_t **a6)
{
  *a6 = a2;
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *a2);
  if (ccec_validate_scalar(a2, a4))
  {
    result = 4294967274;
    goto LABEL_10;
  }

  if (a5)
  {
    result = ccec_validate_point_and_projectify_ws(a1, a2, v14, a5);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = &a2[2 * *a2];
    result = ccec_projectify_ws(a1, a2);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v17 = OUTLINED_FUNCTION_0_40();
  if (ccec_mult_blinded_ws(v17, v18, v19, a4, v14, a3))
  {
    result = 4294967280;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_0_40();
    if (ccec_is_point_projective_ws(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_0_40();
      if (ccec_affinify_ws(v22, v23))
      {
        result = 4294967279;
      }

      else
      {
        ccn_seti(v12, &a6[2 * **a6 + 2], 1);
        result = 0;
      }
    }

    else
    {
      result = 4294967277;
    }
  }

LABEL_10:
  *(a1 + 16) = v13;
  return result;
}

uint64_t ccec_raw_import_pub(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  if ((((cczp_bitlen(a1) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  v8 = (cczp_bitlen(a1) + 7) >> 3;
  *a4 = a1;
  v9 = a4 + 2;
  if (ccn_read_uint_public_value(v7, a4 + 2, v8, a3) || ccn_read_uint_public_value(v7, &v9[**a4], v8, &a3[v8]))
  {
    return 0xFFFFFFFFLL;
  }

  ccn_seti(*a1, &v9[2 * **a4], 1);
  return 0;
}

uint64_t ccss_shamir_share_import(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v11 = 1;
  }

  v14 = v11;
  v12 = ccss_encode_string_into_value_smaller_than_prime(*a1, (a1 + 16), a4, a3);
  if (!v12)
  {
    *(a1 + 8) = a2;
  }

  cc_disable_dit(&v14);
  return v12;
}

uint64_t ccec_generate_key_internal_legacy_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, size_t, void *), unint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = 8 * v8;
  result = (*a3)(a3, v11, v10);
  if (!result)
  {
    result = ccec_generate_scalar_legacy_ws(a1, a2, v11, v10, &a4[3 * **a4 + 2]);
    if (!result)
    {
      result = ccec_make_pub_from_priv_ws(a1, a2, 0, &a4[3 * **a4 + 2], 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t cckem_generate_key_with_seed()
{
  OUTLINED_FUNCTION_0_41();
  v8 = timingsafe_enable_if_supported();
  v1 = cckem_public_ctx(v0);
  OUTLINED_FUNCTION_2_13(v1);
  if (v2)
  {
    v3 = *(*v0 + 56);
    v4 = OUTLINED_FUNCTION_1_21();
    v7 = v5(v4);
  }

  else
  {
    v7 = 4294967289;
  }

  cc_disable_dit_with_sb(&v8);
  return v7;
}

uint64_t cckem_derive_key_from_seed_internal()
{
  OUTLINED_FUNCTION_0_41();
  v2 = cckem_public_ctx(v1);
  OUTLINED_FUNCTION_2_13(v2);
  if (!v3)
  {
    return 4294967289;
  }

  v4 = *(*v0 + 64);
  v5 = OUTLINED_FUNCTION_1_21();

  return v6(v5);
}

uint64_t cckem_derive_key_from_seed()
{
  OUTLINED_FUNCTION_0_41();
  v8 = timingsafe_enable_if_supported();
  v1 = cckem_public_ctx(v0);
  OUTLINED_FUNCTION_2_13(v1);
  if (v2)
  {
    v3 = *(*v0 + 64);
    v4 = OUTLINED_FUNCTION_1_21();
    v7 = v5(v4);
  }

  else
  {
    v7 = 4294967289;
  }

  cc_disable_dit_with_sb(&v8);
  return v7;
}

uint64_t cckem_encapsulate_internal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*(*a1 + 24) == a2 && *(v4 + 32) == a4)
  {
    return (*(v4 + 72))();
  }

  else
  {
    return 4294967289;
  }
}

uint64_t cckem_encapsulate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = timingsafe_enable_if_supported();
  v12 = *a1;
  if (*(*a1 + 24) == a2 && *(v12 + 32) == a4)
  {
    v13 = (*(v12 + 72))(a1, a3, a5, a6);
  }

  else
  {
    v13 = 4294967289;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t cckem_decapsulate_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*cckem_public_ctx(a1) + 24) != a2 || *(*cckem_public_ctx(a1) + 32) != a4)
  {
    return 4294967289;
  }

  v6 = *(*a1 + 80);
  v7 = OUTLINED_FUNCTION_1_21();

  return v8(v7);
}

uint64_t cckem_decapsulate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = cckem_decapsulate_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_ciphertext_mod_switch_down_ws(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  if (!*(v2 + 2))
  {
    return 0;
  }

  v7 = **v2;
  if (v7)
  {
    v8 = 0;
    v9 = (v4[1] * *v4) + ((v6 + 7) >> 3);
    v10 = v5;
    v42 = v2;
    v43 = a1;
    v41 = v5;
    v40 = **v2;
    v39 = v9;
    while (v7 != 2)
    {
      if (v7 == 1)
      {
        result = ccpolyzp_po2cyc_divide_and_round_q_last_ws(a1, v10);
        if (result)
        {
          return result;
        }
      }

      if (v8)
      {
        goto LABEL_22;
      }

LABEL_23:
      v10 += v9;
      if (++v8 >= *(v2 + 2))
      {
        return 0;
      }
    }

    v12 = *v2;
    v13 = *cche_param_ctx_plaintext_ctx(*v2);
    v14 = cche_param_ctx_plaintext_ctx(v12);
    v15 = cche_param_ctx_polynomial_degree(v12);
    v16 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v15 >= 0x80)
    {
      v17 = 128;
    }

    else
    {
      v17 = v15;
    }

    v18 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
    v19 = v14 + 8 * v16 + 16 * (v18 * v17 + v15) + ((4 * v13 + 7) & 0x7FFFFFFF8);
    v20 = *(*v10 + 1);
    v21 = sizeof_struct_ccpolyzp_po2cyc();
    v22 = sizeof_struct_ccpolyzp_po2cyc();
    v23 = v22 - 1;
    v24 = *(v19 + 56);
    v26 = *(v19 + 60);
    v25 = v19 + 56;
    if (v24 >= 0x80)
    {
      v27 = 128;
    }

    else
    {
      v27 = v24;
    }

    v28 = (v25 + 8 * (v16 + 2 * (v24 + v18 * v27) + 6) * v26 + 8 * ((v22 - 1 + v21) / v22));
    if (v20 >= 2)
    {
      v29 = v22;
      v30 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
      v31 = -1;
      v32 = v26;
      v33 = 1;
      v34 = 1;
      do
      {
        v28 += v34 + (v30 + v23) / v29 + (v33 + v32) * v18;
        ++v34;
        v33 += 3;
        v32 += v26;
        ++v31;
      }

      while (1 - v20 + v31 != -1);
    }

    result = ccpolyzp_po2cyc_fwd_ntt(v10);
    if (result)
    {
      return result;
    }

    a1 = v43;
    result = ccpolyzp_po2cyc_base_convert_mod_t_divide_and_round_q_last_ws(v43, v10, v28);
    if (result)
    {
      return result;
    }

    result = ccpolyzp_po2cyc_inv_ntt(v10);
    if (result)
    {
      return result;
    }

    v5 = v41;
    v2 = v42;
    v7 = v40;
    v9 = v39;
    if (!v8)
    {
      v37 = v28[9];
      v38 = v28[10] * v42[2] + v37 * ~((v28[11] * v42[2]) >> 64);
      v42[2] = v38 + ((v38 >> 63) & v37);
      goto LABEL_23;
    }

LABEL_22:
    v35 = *v5;
    v36 = sizeof_struct_ccpolyzp_po2cyc();
    memmove(&v5[((*(v35 + 1) * *v35) + ((v36 + 7) >> 3)) * v8], v10, (v36 + 7 + 8 * (*(*v10 + 1) * **v10)) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_23;
  }

  return 4294967289;
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v66 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = (*v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v55 - v11;
  v13 = (*(v10 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x2A1C7C4A8](v10);
  v18 = &v55 - v17;
  v19 = 0;
  if (v15)
  {
    v20 = (v16 + 8);
    v21 = v15;
    do
    {
      v22 = *v20;
      v20 += 2;
      v19 += v22;
      --v21;
    }

    while (v21);
  }

  v63[0] = 0;
  v63[1] = 0;
  v64 = bswap32(v19);
  v65 = bswap32(a4);
  v62 = xmmword_299CFEA70;
  v60 = *(a1 + 16) + 16;
  if (v60)
  {
    v23 = 0;
    v24 = 0;
    v56 = 16 - (v19 & 0xF ^ 8);
    v57 = (v16 + 8);
    v58 = v15;
    v59 = v12;
    while (1)
    {
      OUTLINED_FUNCTION_1_22();
      LODWORD(v63[0]) = bswap32(v24);
      __src[0] = 0;
      v25 = *(a1 + 8);
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v26, v27, v18, v28, v29, 0x18uLL, v63);
      if (updated)
      {
        goto LABEL_29;
      }

      v31 = v57;
      v32 = v58;
      if (v58)
      {
        while (1)
        {
          v33 = *(a1 + 8);
          v35 = *(v31 - 1);
          v34 = *v31;
          OUTLINED_FUNCTION_0_42();
          v42 = update_1(v36, v37, v18, v38, v39, v40, v41);
          if (v42)
          {
            break;
          }

          v31 += 2;
          if (!--v32)
          {
            goto LABEL_10;
          }
        }

        v52 = v42;
        v12 = v59;
        goto LABEL_27;
      }

LABEL_10:
      v43 = *(a1 + 8);
      OUTLINED_FUNCTION_0_42();
      updated = update_1(v44, v45, v18, v46, v47, v56, &v62);
      v12 = v59;
      if (updated)
      {
        goto LABEL_29;
      }

      ++v24;
      v23 += 16;
      if (v23 >= v60)
      {
        v14 = *(a1 + 8);
        v48 = *(a1 + 16);
        break;
      }
    }
  }

  updated = ccecb_init_internal(v14);
  if (updated)
  {
LABEL_29:
    v52 = updated;
    goto LABEL_27;
  }

  if (a4)
  {
    v49 = &__src[2] + *(a1 + 16);
    do
    {
      OUTLINED_FUNCTION_1_22();
      v50 = (a4 <= 0xF ? __src : a5);
      updated = ccdrbg_generate_internal(*(a1 + 8), v12, v18, 1, v49, v50);
      if (updated)
      {
        goto LABEL_29;
      }

      if (a4 <= 0xF)
      {
        memcpy(a5, __src, a4);
      }

      if (a4 >= 0x10)
      {
        v51 = 16;
      }

      else
      {
        v51 = a4;
      }

      a5 = (a5 + v51);
      v49 = v50;
      a4 -= v51;
    }

    while (a4);
  }

  v52 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v12);
  OUTLINED_FUNCTION_1_22();
  v53 = *MEMORY[0x29EDCA608];
  return v52;
}

uint64_t update_1(int a1, int a2, int a3, uint64_t a4, void *a5, size_t __n, char *__src)
{
  v7 = __src;
  v8 = __n;
  v11 = 16 - *a5;
  if (*a5)
  {
    v12 = __n >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    memcpy((a4 + *a5), __src, 16 - *a5);
    v13 = OUTLINED_FUNCTION_2_14();
    result = ccdrbg_generate_internal(v13, v14, v15, v16, a4, a4);
    if (result)
    {
      return result;
    }

    v8 -= v11;
    v7 += v11;
    *a5 = 0;
  }

  if (v8 < 0x10)
  {
LABEL_11:
    if (v8)
    {
      memcpy((a4 + *a5), v7, v8);
      result = 0;
      *a5 += v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v18 = OUTLINED_FUNCTION_2_14();
      result = ccdrbg_generate_internal(v18, v19, v20, v21, v7, a4);
      if (result)
      {
        break;
      }

      v8 -= 16;
      v7 += 16;
      if (v8 <= 0xF)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t ccdrbg_df_bc_init_internal(void *a1, void *a2, unint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  inited = 4294967291;
  if (a3 <= 0x20 && *a2 <= 0x200uLL)
  {
    if (a2[1] == 16)
    {
      *a1 = ccdrbg_df_bc_derive_keys;
      a1[1] = a2;
      a1[2] = a3;
      inited = ccecb_init_internal(a2);
    }

    else
    {
      inited = 4294967291;
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return inited;
}

uint64_t ccdrbg_df_bc_init(void *a1, void *a2, unint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  inited = ccdrbg_df_bc_init_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return inited;
}

uint64_t ccmldsa_poly_checknorm(uint64_t a1, int a2)
{
  if (a2 > 1047552)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  while (((*(a1 + v2) + (*(a1 + v2) >> 31)) ^ (*(a1 + v2) >> 31)) < a2)
  {
    v2 += 4;
    if (v2 == 1024)
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t ccecies_decrypt_gcm_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v15 = v35 - v14;
  if (*(v7 + 8) == 78647)
  {
    v16 = v10;
    v17 = v11;
    v35[1] = v12;
    v36 = v13;
    v18 = OUTLINED_FUNCTION_0_8();
    inited = ccgcm_init_internal(v18);
    v20 = OUTLINED_FUNCTION_0_8();
    v23 = ccgcm_set_iv_internal(v20, v21, 16, v22) | inited;
    if (a3 && a4)
    {
      v24 = OUTLINED_FUNCTION_0_8();
      v23 |= ccgcm_aad_internal(v24, v25, a3, a4);
    }

    v26 = OUTLINED_FUNCTION_0_8();
    v28 = ccgcm_update_internal(v26, v27, v16, v17, v36) | v23;
    if (!v28)
    {
      v29 = *(a1 + 28);
      __memcpy_chk();
      v30 = OUTLINED_FUNCTION_0_8();
      v28 = ccgcm_finalize_internal(v30, v31, v29, v32);
    }

    cc_clear(*v7, v15);
  }

  else
  {
    v28 = 4294967291;
  }

  v33 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t ccgcm_inc_iv_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 80) != 1)
  {
    return 4294967228;
  }

  if ((*(a2 + 82) & 1) == 0)
  {
    return 4294967228;
  }

  v4 = 1;
  v5 = 59;
  do
  {
    v6 = *(a2 + v5) + 1;
    *(a2 + v5) = v6;
    if (v4 > 7)
    {
      break;
    }

    ++v4;
    --v5;
  }

  while (!v6);
  v7 = *(a2 + 48);
  *(a3 + 8) = *(a2 + 56);
  *a3 = v7;
  *(a2 + 32) = *(a2 + 48);
  ccmode_gcm_update_pad(a2);
  result = 0;
  *(a2 + 80) = 2;
  return result;
}

uint64_t ccgcm_inc_iv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = timingsafe_enable_if_supported();
  v8 = v5;
  v6 = ccgcm_inc_iv_internal(v5, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccgcm_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_0_43();
  v15 = v14;
  v28[1] = *MEMORY[0x29EDCA608];
  v16 = (*v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = v28 - v18;
  v20 = (*(v17 + 24))(v17, v28 - v18);
  if (!v20)
  {
    v20 = (v15[4])(v19, v13, v12);
    if (!v20)
    {
      v21 = OUTLINED_FUNCTION_1_23();
      v20 = v22(v21);
      if (!v20)
      {
        v23 = OUTLINED_FUNCTION_2_15();
        v20 = v24(v23);
        if (!v20)
        {
          v20 = (v15[7])(v19, a11, a12);
        }
      }
    }
  }

  v25 = v20;
  cc_clear(*v15, v19);
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

uint64_t ccgcm_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = timingsafe_enable_if_supported();
  v20 = ccgcm_one_shot_internal(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  cc_disable_dit_with_sb(&v22);
  return v20;
}

uint64_t ccgcm_set_iv_legacy_internal(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    v5 = *(a1 + 32);

    return v5(a2, a3, a4);
  }

  else if (a2[40] == 1)
  {
    cc_clear(0x10uLL, a2 + 16);
    ccmode_gcm_update_pad(a2);
    cc_clear(0x10uLL, a2 + 24);
    result = 0;
    a2[40] = 2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ccgcm_one_shot_legacy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_0_43();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v34 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  v33 = v20;
  v21 = (*v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v32[-v22];
  v24 = (*(v19 + 24))(v19, &v32[-v22], v17, v15);
  if (!v24)
  {
    v24 = ccgcm_set_iv_legacy_internal(v19, v23, v13, v12);
    if (!v24)
    {
      v25 = OUTLINED_FUNCTION_1_23();
      v24 = v26(v25);
      if (!v24)
      {
        v27 = OUTLINED_FUNCTION_2_15();
        v24 = v28(v27);
        if (!v24)
        {
          v24 = (*(v19 + 56))(v23, a11, a12);
        }
      }
    }
  }

  v29 = v24;
  cc_clear(*v19, v23);
  cc_disable_dit_with_sb(&v33);
  v30 = *MEMORY[0x29EDCA608];
  return v29;
}

uint64_t ccec_der_import_priv_keytype(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  v16 = timingsafe_enable_if_supported();
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  if (ccder_decode_eckey_internal(&v15, &v14, &v12, &v10, &v13, &v11, a2, &a2[a1]))
  {
    v8 = 0;
    *a3 = v10;
    *a4 = v14;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v16);
  return v8;
}

uint64_t ccecdh_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *))
{
  v7 = *a2;
  v8 = **a2;
  v31 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, (4 * (v8 & 0x7FFFFFFFFFFFFFFLL)) | 2);
  *v9 = v7;
  v10 = *v7;
  v11 = v9 + 2;
  v12 = &v9[3 * *v7 + 2];
  ccn_set(1, v12, &REF_K);
  ccn_zero(v10 - 1, (v12 + 8));
  if (!a3)
  {
    v13 = &v7[2 * *v7 + 4 + *v7];
  }

  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, 3 * *v7);
  result = ccecdh_fast_scalar_mult_ws(a1, v7, v15, &v11[3 * **v9]);
  if (!result)
  {
    result = ccec_affinify_ws(a1, v7);
    *(a1 + 16) = v14;
    if (!result)
    {
      v17 = (cczp_bitlen(v7) + 7) >> 3;
      v32 = v17;
      v18 = (*(a1 + 24))(a1, v8);
      v19 = (*(a1 + 24))(a1, v8);
      cc_clear(v17, v18);
      cc_clear(v17, v19);
      result = ccecdh_compute_shared_secret_ws(a1, a2, v9, &v32, v18, a4);
      if (!result)
      {
        if (!v32)
        {
          goto LABEL_15;
        }

        v20 = 0;
        v21 = 0;
        do
        {
          v21 |= v18[v20++];
        }

        while (v32 != v20);
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = *v9;
        v23 = **v9;
        v24 = &v11[3 * v23];
        v25 = *(a1 + 16);
        v26 = (*(a1 + 24))(a1, 3 * v23);
        result = ccecdh_fast_scalar_mult_ws(a1, v22, v26, v24);
        if (!result)
        {
          v27 = v25;
          v28 = (*(a1 + 24))(a1, v23);
          result = ccec_affinify_x_only_ws(a1, v22, v28, v26);
          if (!result)
          {
            v29 = cczp_bitlen(v22);
            ccn_write_uint_padded_internal(v23, v28, (v29 + 7) >> 3, v19);
            *(a1 + 16) = v27;
            if (v32 != v17 || (result = cc_cmp_safe_internal(v17, v18, v19), result))
            {
LABEL_15:
              result = 4294967278;
            }
          }
        }
      }
    }
  }

  *(a1 + 16) = v31;
  return result;
}

uint64_t ccecdh_fast_scalar_mult_ws(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = 3 * *a2;
  v11 = (*(a1 + 24))(a1, v10);
  v12 = ccec_projectify_ws(a1, a2);
  if (!v12)
  {
    ccn_set(v10, a3, v11);
    v13 = ccn_bitlen_internal(v8, a4);
    if (v13 != 1)
    {
      v14 = v13 - 2;
      do
      {
        v15 = OUTLINED_FUNCTION_0_44();
        ccec_double_ws(v15, v16);
        if ((*(a4 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v14))
        {
          v17 = OUTLINED_FUNCTION_0_44();
          ccec_full_add_normalized_ws(v17, v18, v19, v20, v11);
        }

        --v14;
      }

      while (v14 != -1);
    }
  }

  *(a1 + 16) = v9;
  return v12;
}

uint64_t ccec_compact_import_priv(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  v17 = timingsafe_enable_if_supported();
  v8 = cczp_bitlen(a1) + 7;
  if (((cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3) + (v8 >> 3) == a2)
  {
    *a4 = a1;
    v9 = cczp_bitlen(a1);
    uint_internal = ccec_compact_import_pub(a1, (v9 + 7) >> 3, a3, a4);
    if (!uint_internal)
    {
      v11 = *a1;
      v12 = &a4[3 * **a4];
      v13 = (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3;
      v14 = cczp_bitlen(a1);
      uint_internal = ccn_read_uint_internal(v11, v12 + 2, v13, &a3[(v14 + 7) >> 3]);
    }

    v15 = uint_internal;
  }

  else
  {
    v15 = 4294967124;
  }

  cc_disable_dit_with_sb(&v17);
  return v15;
}

uint64_t ccsae_generate_h2c_commit_finalize_ws(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_UPDATE)
  {
    return 4294967210;
  }

  result = ccsae_generate_commitment_shared_ws(a1, a2, a2 + 144, a3);
  if (!result)
  {
    *(a2 + 28) = 2;
    *(a2 + 24) |= CCSAE_STATE_COMMIT_GENERATED;
  }

  return result;
}

uint64_t ccsae_generate_commitment_shared_ws(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v8 = *a2;
  v9 = **a2;
  v10 = cczp_bitlen(*a2);
  v11 = a2[1];
  v36 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v9);
  v13 = a2 + 18;
  OUTLINED_FUNCTION_0_45();
  v14 = OUTLINED_FUNCTION_0_3();
  if (ccec_generate_scalar_fips_retry_ws(v14, v15, v11, v16))
  {
    goto LABEL_13;
  }

  v17 = OUTLINED_FUNCTION_0_3();
  if (ccec_generate_scalar_fips_retry_ws(v17, v18, v11, v12))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_45();
  v19 = OUTLINED_FUNCTION_0_3();
  if (ccec_mult_blinded_ws(v19, v20, v21, v12, a3, v11))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_45();
  v22 = OUTLINED_FUNCTION_0_3();
  if (ccec_affinify_ws(v22, v23))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_45();
  cczp_negate(v8, &v13[6 * v24], &v13[6 * v24]);
  v25 = **a2;
  cczp_add_ws(a1, &v8[5 * *v8 + 4]);
  if (!v9)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_45();
  ccn_n(v9, &v13[3 * v26]);
  OUTLINED_FUNCTION_0_45();
  v28 = 3 * v27;
  if (v29 <= 1 && v13[v28] < 2)
  {
    goto LABEL_13;
  }

  v30 = (v10 + 7) >> 3;
  if ((ccn_write_uint_padded_ct_internal(v9, &v13[v28], v30, a4) & 0x80000000) != 0 || (OUTLINED_FUNCTION_0_45(), (ccn_write_uint_padded_ct_internal(v9, &v13[5 * v31], v30, &a4[v30]) & 0x80000000) != 0) || (OUTLINED_FUNCTION_0_45(), (ccn_write_uint_padded_ct_internal(v9, &v13[6 * v32], v30, &a4[2 * v30]) & 0x80000000) != 0))
  {
LABEL_13:
    result = 4294967289;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_0_3();
    result = ccec_affinify_ws(v33, v34);
  }

  *(a1 + 16) = v36;
  return result;
}

uint64_t cche_serialize_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, unsigned int *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (cche_serialize_ciphertext_coeff_nbytes_internal(a4, a5) != a2)
  {
    goto LABEL_18;
  }

  v9 = *(a4 + 8);
  if (WORD1(v9))
  {
    goto LABEL_18;
  }

  if (!a5)
  {
    goto LABEL_9;
  }

  if (v9 != cche_ciphertext_fresh_npolys())
  {
LABEL_18:
    result = 4294967289;
    goto LABEL_17;
  }

  cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(v23, a4);
  if (v9)
  {
    v10 = 0;
    while (a5[v10] <= v23[v10])
    {
      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_18;
  }

LABEL_9:
  v13 = *(a4 + 24);
  v11 = (a4 + 24);
  v12 = v13;
  *a3 = v9;
  if (v9)
  {
    v14 = 0;
    v15 = (a3 + 1);
    while (1)
    {
      v16 = *v11;
      v17 = sizeof_struct_ccpolyzp_po2cyc();
      v18 = a5 ? a5[v14] : 0;
      v19 = &v11[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v14];
      v20 = ccpolyzp_po2cyc_serialize_poly_nbytes(v12, v18);
      result = ccpolyzp_po2cyc_serialize_poly_ws(a1, v20, v15, v18, v19);
      if (result)
      {
        break;
      }

      v15 += v20;
      if (v9 == ++v14)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    result = 0;
  }

LABEL_17:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t cche_deserialize_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, unsigned int *a5)
{
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (cche_serialize_ciphertext_coeff_nbytes_internal(a2, a5) != a3)
  {
    return 4294967289;
  }

  v11 = *a4;
  if (v11 != *(a2 + 8))
  {
    return 4294967289;
  }

  if (!*a4)
  {
    return 0;
  }

  v12 = 0;
  v13 = (a4 + 1);
  while (1)
  {
    v14 = a5 ? a5[v12] : 0;
    v15 = ccpolyzp_po2cyc_serialize_poly_nbytes(v9, v14);
    v16 = *v10;
    v17 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_deserialize_poly_ws(a1, &v10[((v16[1] * *v16) + ((v17 + 7) >> 3)) * v12], v14, v15, v13);
    if (result)
    {
      break;
    }

    v13 += v15;
    if (v11 == ++v12)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_deserialize_seeded_ciphertext_coeff_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = cche_deserialize_seeded_ciphertext_eval_ws(a1, a2, a3, a4);
  if (!result)
  {
    v6 = *(a2 + 24);
    v7 = (a2 + 24 + ((sizeof_struct_ccpolyzp_po2cyc() + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * (v6[1] * *v6));

    return ccpolyzp_po2cyc_inv_ntt(v7);
  }

  return result;
}

uint64_t cche_deserialize_seeded_ciphertext_eval_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 8);
  if (v8 != cche_ciphertext_fresh_npolys())
  {
    return 4294967289;
  }

  v10 = *(a2 + 24);
  v9 = (a2 + 24);
  if (ccpolyzp_po2cyc_serialize_poly_nbytes(v10, 0) != a3)
  {
    return 4294967289;
  }

  v11 = *(a1 + 16);
  result = ccpolyzp_po2cyc_deserialize_poly_ws(a1, v9, 0, a3, a4);
  if (!result)
  {
    v13 = (*(a1 + 24))(a1, 536);
    result = ccpolyzp_po2cyc_block_rng_init(v13);
    if (!result)
    {
      v14 = *v9;
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      result = ccpolyzp_po2cyc_random_uniform_ws(a1, (&v9[v14[1] * *v14] + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)), v13);
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccmode_gcm_init(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 104) = v2;
  *(a2 + 112) = a2 + 128;
  *(a2 + 120) = *(a1 + 8);
  (*(v2 + 16))(v2);
  *(a2 + 82) = 0;
  ccmode_gcm_reset(a2);
  (*(v2 + 24))(*(a2 + 112), 1, a2 + 16, a2);
  return 0;
}

uint64_t ccecies_encrypt_gcm_from_shared_secret_composite(void *a1, uint64_t a2, uint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v29 = *MEMORY[0x29EDCA608];
  v22 = ccecies_pub_key_size(a3, a2);
  if (*a1 == *a3)
  {
    v23 = v22;
    v24 = ccecies_export_eph_pub(*(a2 + 32), a3, a12);
    if (!v24)
    {
      v24 = ccecies_derive_gcm_key_iv(a2, a4, a5, a8, a9, v23, a12, __s);
      if (!v24)
      {
        v24 = ccecies_encrypt_gcm_encrypt(a2, __s, a10, a11, a6, a7, a13, a14);
      }
    }

    v25 = v24;
  }

  else
  {
    v25 = 4294967289;
  }

  cc_clear(0x30uLL, __s);
  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

uint64_t ccpolyzp_po2cyc_coeff_apply_galois(uint64_t *a1, unsigned int **a2, unsigned int a3)
{
  if (a1 == a2)
  {
    return 4294967289;
  }

  if (!ccpolyzp_po2cyc_ctx_eq(*a1, *a2))
  {
    return 4294967289;
  }

  v6 = **a2;
  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v6 > 0x100000 || v7.i32[0] != 1)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a3 >= 2 && (a3 & 1) != 0 && 2 * v6 > a3)
  {
    v10 = (*a2)[1];
    if (v10)
    {
      v11 = 0;
      v12 = 0x80000000 >> __clz(v6);
      do
      {
        v13 = (*a2)[1] - 1;
        v14 = *a2;
        if (v13 > v11)
        {
          v14 = *a2;
          do
          {
            v14 = *(v14 + 14);
            --v13;
          }

          while (v13 > v11);
        }

        v15 = 0;
        v16 = 0;
        v17 = *(v14 + 2);
        v18 = &a2[**a2 * v11 + 1];
        v19 = v6;
        do
        {
          v20 = (v16 & v12) != 0;
          v16 += a3;
          v21 = *v18++;
          a1[v15 + 1 + **a1 * v11] = (v20 - 1) & v21 | (v17 - v21) & -v20 & -(v21 != 0);
          v15 = v16 & (v6 - 1);
          --v19;
        }

        while (v19);
        ++v11;
      }

      while (v11 != v10);
    }

    return 0;
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_eval_apply_galois(uint64_t *a1, unsigned int **a2, unsigned int a3)
{
  if (a1 == a2)
  {
    return 4294967289;
  }

  v5 = a1;
  if (!ccpolyzp_po2cyc_ctx_eq(*a1, *a2))
  {
    return 4294967289;
  }

  v6 = vcnt_s8(**a2);
  v6.i16[0] = vaddlv_u8(v6);
  v18 = **a2;
  if (v18 > 0x100000 || v6.i32[0] != 1)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a3 >= 2 && (a3 & 1) != 0 && 2 * v18 > a3)
  {
    v17 = (*a2)[1];
    if (v17)
    {
      v9 = 0;
      v10 = __clz(v18);
      v15 = (v5 + 1);
      v16 = v5;
      v11 = a3;
      do
      {
        v12 = &v15[**v5 * v9];
        v13 = v18;
        v14 = v18;
        do
        {
          ccn_set(1, v12, &(&a2[(__rbit32((v18 - 1) & ((v11 * (__rbit32(v14) >> v10)) >> 1)) >> (v10 + 1)) + 1])[**a2 * v9]);
          v12 += 8;
          ++v14;
          --v13;
        }

        while (v13);
        ++v9;
        v5 = v16;
      }

      while (v9 != v17);
    }

    return 0;
  }

  return result;
}

uint64_t ccss_sizeof_shamir_share_generator_serialization(uint64_t a1, void *a2)
{
  if (!is_mul_ok(*(a1 + 8) + 2, 8 * cczp_n(*a1)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_46();
  if (v4)
  {
    return 0;
  }

  *a2 = v3;
  return 1;
}

uint64_t ccss_shamir_share_generator_serialize(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v11 = 1;
  }

  v25 = v11;
  if (!is_mul_ok(*(a3 + 2) + 2, 8 * cczp_n(*a3)) || ((OUTLINED_FUNCTION_0_46(), !v13) ? (v14 = v12 > a1) : (v14 = 1), v14))
  {
    v23 = 4294967289;
  }

  else
  {
    *a2 = 1;
    v15 = **a3;
    if ((v15 >> 29))
    {
      v23 = 4294967284;
    }

    else
    {
      v16 = 8 * v15;
      *(a2 + 1) = bswap32(8 * v15);
      v17 = *(a3 + 2);
      *(a2 + 5) = bswap32(v17);
      v18 = ccn_write_uint_padded_ct_internal(v15, (*a3 + 24), 8 * v15, (a2 + 9));
      if ((v18 & 0x80000000) == 0)
      {
        v19 = 0;
        v20 = v16 + a2;
        v21 = a3 + 2;
        v22 = (v20 + 9);
        while (1)
        {
          v18 = ccn_write_uint_padded_ct_internal(v15, &v21[v15 * v19], 8 * v15, v22);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          ++v19;
          v22 += v16;
          if (v19 > v17)
          {
            v23 = 0;
            goto LABEL_16;
          }
        }
      }

      v23 = v18;
    }
  }

LABEL_16:
  cc_disable_dit(&v25);
  return v23;
}

uint64_t ccrsa_pairwise_consistency_check_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t))
{
  v6 = ccrsa_ctx_public(a2);
  v7 = *a2;
  v8 = cczp_bitlen(v6);
  v24 = 0;
  v22 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, v7);
  v10 = OUTLINED_FUNCTION_0_47();
  v12 = v11(v10);
  v13 = OUTLINED_FUNCTION_0_47();
  v15 = v14(v13);
  v16 = OUTLINED_FUNCTION_0_47();
  v18 = v17(v16);
  v23 = (v8 + 7) >> 3;
  v19 = ccsha256_di();
  result = ccrsa_sign_pkcs1v15_msg_blinded_ws(a1, a3, a2, v19, 0, &v24, &v23, v18);
  if (!result)
  {
    v21 = ccsha256_di();
    result = ccrsa_verify_pkcs1v15_msg_ws(a1, v6, v21, 0, &v24, v23, v18, 0);
    if (!result)
    {
      ccn_seti(v7, v12, 42);
      ccn_set_bit(v12, v8 - 9, 1);
      result = ccrsa_pub_crypt_ws(a1, v6);
      if (!result)
      {
        if (!ccn_cmp_internal(v7, v12, v9) || (result = ccrsa_priv_crypt_blinded_ws(a1, a3, a2, v15, v9), !result) && (result = ccn_cmp_internal(v7, v15, v12), result))
        {
          result = 4294967289;
        }
      }
    }
  }

  *(a1 + 16) = v22;
  return result;
}

uint64_t init_1(uint64_t a1, unint64_t ***a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = *(a1 + 40);
  *a2 = v7;
  result = 4294967233;
  if (a3 <= 0x10000)
  {
    v9 = **v7;
    if (v9 <= 0x40)
    {
      if (a7 > 0x10000 || v9 >> 1 > a3)
      {
        return 4294967233;
      }

      else
      {
        __memset_chk();
        __memset_chk();
        update_0(a2, 3, v13, v14, v15, v16, v17, v18, a3);
        result = 0;
        a2[17] = 1;
      }
    }
  }

  return result;
}

uint64_t generate_5(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = **a1;
  v9 = *v8;
  if (a2 > 0x10000 || a4 >= 0x10001)
  {
    v16 = 4294967233;
  }

  else
  {
    v12 = a3;
    v13 = a2;
    if (*(*a1 + 8) && *(a1 + 136) > 0x1000000000000uLL)
    {
      v16 = 4294967234;
    }

    else
    {
      if (a4)
      {
        update_0(a1, 1, a3, a4, a5, a6, a7, a8, a4);
      }

      for (; v13; v13 -= v15)
      {
        __memcpy_chk();
        cchmac_internal(v8, v9, a1 + 8, v9, a1 + 72, a1 + 72);
        if (!cc_cmp_safe_internal(v9, __s, a1 + 72))
        {
          cc_clear(0x40uLL, (a1 + 8));
          cc_clear(0x40uLL, (a1 + 72));
          *(a1 + 136) = -1;
          cc_try_abort();
        }

        if (v13 >= v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = v13;
        }

        memcpy(v12, (a1 + 72), v15);
        v12 += v15;
      }

      update_0(a1, 1, a3, a4, a5, a6, a7, a8, a4);
      v16 = 0;
      ++*(a1 + 136);
    }
  }

  cc_clear(v9, __s);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t reseed_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 0x10000)
  {
    return 4294967233;
  }

  if (a4 >= 0x10001 || ***a1 >> 1 > a2)
  {
    return 4294967233;
  }

  update_0(a1, 2, a3, a4, a5, a6, a7, a8, a2);
  result = 0;
  *(a1 + 136) = 1;
  return result;
}

uint64_t cche_relin_key_generate_ws(uint64_t a1, uint64_t *a2, int **a3, uint64_t a4, int a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t))
{
  v10 = cche_param_ctx_chain_const(a4);
  v11 = *(v10 + 12);
  if (v11 < 2)
  {
    return 4294967289;
  }

  v12 = v10;
  v13 = cche_param_ctx_ciphertext_ctx_nmoduli(a4);
  if (a5)
  {
    if (cche_rng_seed_sizeof() * v13 != a5)
    {
      return 4294967289;
    }
  }

  *a2 = a4;
  v14 = cche_param_ctx_polynomial_degree(a4);
  v15 = *(a1 + 24);
  v48 = *(a1 + 16);
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = v15(a1, *(v12 + 8) * v11 + ((v16 + 7) >> 3));
  *v17 = *a3;
  ccpolyzp_po2cyc_eval_mul(v17, a3, a3);
  v18 = *(v12 + 12) - 1;
  v19 = v12 + 8;
  if (v18 > v13)
  {
    v19 = v12 + 8;
    do
    {
      v19 = *(v19 + 112);
      --v18;
    }

    while (v18 > v13);
  }

  if (v13)
  {
    v50 = a4;
    v51 = a6;
    v20 = 0;
    v49 = v13;
    while (1)
    {
      v21 = *(v12 + 12);
      v22 = (v12 + 8);
      if (v20 < (v21 - 1))
      {
        v23 = v21 - 2;
        v22 = (v12 + 8);
        do
        {
          v22 = v22[14];
          v24 = v20 >= v23--;
        }

        while (!v24);
      }

      v25 = cche_relin_key_ciphertext(a2, v20);
      v26 = *(v12 + 12);
      v27 = v51 ? v51 + cche_rng_seed_sizeof() * v20 : 0;
      result = cche_encrypt_zero_symmetric_eval_ws(a1, v25, v50, a3, v26, v27, a7);
      if (result)
      {
        break;
      }

      v29 = v22[2];
      if (v14)
      {
        v31 = 0;
        v30 = *(v19 + 16) + v29 * ~((v22[3] * *(v19 + 16)) >> 64);
        v32 = v30 + ((v30 >> 63) & v29);
        v33 = v25 + 32;
        v34 = **(v25 + 24);
        do
        {
          v35 = *(v33 + 8 * (v31 + v20 * v34));
          v36 = v17[(v31 + v20 * **v17) + 1];
          v37 = (v36 * v32) >> 64;
          v38 = v36 * v32;
          v39 = v22[4];
          v40 = (v38 * v39) >> 64;
          v41 = (v37 * v39) >> 64;
          v42 = v37 * v39;
          v24 = __CFADD__(v40, v42);
          v43 = v40 + v42;
          v44 = v24;
          v45 = v44 + __CFADD__(v38 * v22[5], v43) + v41 + v22[5] * v37 + ((v38 * v22[5]) >> 64);
          v46 = v22[2];
          v47 = (((v38 + v46 * ~v45) >> 63) & v46) + v35 - v46 + v38 + v46 * ~v45 + ((((((v38 + v46 * ~v45) >> 63) & v46) + v35 - v46 + v38 + v46 * ~v45) >> 63) & v46);
          v34 = **(v25 + 24);
          *(v33 + 8 * (v31 + v20 * v34)) = v47;
          ++v31;
        }

        while (v14 != v31);
      }

      if (++v20 == v49)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    result = 0;
  }

  *(a1 + 16) = v48;
  return result;
}

uint64_t cche_relin_key_save_ws(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = cche_param_ctx_chain_const(*a4);
  if (*(v8 + 12) < 2u)
  {
    return 4294967289;
  }

  v9 = v8;
  v10 = cche_param_ctx_ciphertext_ctx_nmoduli(*a4);
  v11 = ccpolyzp_po2cyc_serialize_poly_nbytes((v9 + 8), 0);
  if (v11 * v10 != a2)
  {
    return 4294967289;
  }

  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    v14 = cche_relin_key_ciphertext(a4, v13);
    result = ccpolyzp_po2cyc_serialize_poly_ws(a1, v12, a3, 0, (v14 + 24));
    if (result)
    {
      break;
    }

    a3 += v12;
    if (v10 == ++v13)
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_relin_key_load_ws(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v11 = a3;
  v12 = cche_param_ctx_chain_const(a3);
  if (*(v12 + 12) < 2u)
  {
    return 4294967289;
  }

  v13 = (v12 + 8);
  v14 = cche_param_ctx_ciphertext_ctx_nmoduli(v11);
  v15 = ccpolyzp_po2cyc_serialize_poly_nbytes(v13, 0);
  v27 = cche_rng_seed_sizeof();
  if (v15 * v14 != a4 || v27 * v14 != a6)
  {
    return 4294967289;
  }

  *a2 = v11;
  if (!v14)
  {
    return 0;
  }

  v17 = 0;
  v26 = v14;
  v25 = v11;
  while (1)
  {
    v18 = cche_relin_key_ciphertext(a2, v17);
    v19 = cche_ciphertext_fresh_npolys();
    *v18 = v11;
    *(v18 + 8) = v19;
    *(v18 + 16) = 1;
    *(v18 + 24) = v13;
    v20 = (v18 + 24);
    if (v19 >= 2)
    {
      v21 = v19;
      for (i = 1; i != v21; ++i)
      {
        v23 = *v20;
        v20[((v23[1] * *v23) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v13;
      }
    }

    result = cche_deserialize_seeded_ciphertext_eval_ws(a1, v18, v15, a5);
    if (result)
    {
      break;
    }

    a7 += v27;
    a5 += v15;
    ++v17;
    v11 = v25;
    if (v17 == v26)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccec_der_import_diversified_pub(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _DWORD *a4)
{
  v32 = timingsafe_enable_if_supported();
  v7 = &a3[a2];
  v30 = 0;
  v31 = v7;
  v8 = ccder_decode_constructed_tl(0x2000000000000010, &v31, a3, v7);
  v9 = ccder_decode_tl(4, &v30, v8, v31);
  v10 = v9;
  if (v9)
  {
    v11 = &v9[v30];
  }

  else
  {
    v11 = 0;
  }

  v12 = ccder_decode_tl(4, &v30, v11, v31);
  v13 = &v12[v30];
  if (!v12)
  {
    v13 = 0;
  }

  v14 = 0xFFFFFFFFLL;
  if (v10)
  {
    if (v12 && v13 == v7)
    {
      v16 = OUTLINED_FUNCTION_1_24();
      v20 = ccec_compact_import_pub(v16, v17, v18, v19);
      if (v20)
      {
        v21 = OUTLINED_FUNCTION_1_24();
        v22 = ccec_import_pub(v21);
        if (v22)
        {
          v14 = v22;
          goto LABEL_19;
        }

        v23 = OUTLINED_FUNCTION_0_48();
        v24 = ccec_import_pub(v23);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_0_48();
        v24 = ccec_compact_import_pub(v25, v26, v27, v28);
      }

      v14 = v24;
      if (a4 && !v24)
      {
        *a4 = 4 * (v20 == 0);
      }
    }
  }

LABEL_19:
  cc_disable_dit_with_sb(&v32);
  return v14;
}

uint64_t ccec_sign_composite_ws(uint64_t a1, uint64_t **a2, unint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v14 = **a2;
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, v14);
  v18 = ccec_sign_internal_ws(a1, a2, a3, a4, v16, v17, a7);
  if (!v18)
  {
    v19 = **a2;
    v20 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v19, v16, v20, a5);
    v21 = **a2;
    v22 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v21, v17, v22, a6);
  }

  *(a1 + 16) = v15;
  return v18;
}

uint64_t ccec_sign_composite_msg_ws(uint64_t a1, uint64_t **a2, unint64_t *a3, size_t a4, char *a5, char *a6, char *a7, uint64_t (**a8)(void, unint64_t, void *))
{
  v17 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v16);
  result = ccec_sign_composite_ws(a1, a2, *a3, v16, a6, a7, a8);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccccm_encrypt()
{
  v5 = OUTLINED_FUNCTION_6();
  if (*(v0 + 80) == 1)
  {
    v1 = OUTLINED_FUNCTION_5_3();
    v3 = v2(v1);
  }

  else
  {
    v3 = 4294967228;
  }

  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccccm_decrypt()
{
  v5 = OUTLINED_FUNCTION_6();
  if (*(v0 + 80))
  {
    v3 = 4294967228;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_5_3();
    v3 = v2(v1);
  }

  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t ccccm_finalize_and_generate_tag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  if (*(a1 + 80) == 1)
  {
    v8 = (*(a1 + 56))(a2, a3, a4);
  }

  else
  {
    v8 = 4294967228;
  }

  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccccm_finalize_and_verify_tag_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a1 + 80))
  {
    result = 4294967228;
  }

  else
  {
    result = (*(a1 + 56))(a2, a3, __s);
    if (!result)
    {
      result = cc_cmp_safe_internal(*(a3 + 88), __s, a4);
      if (result)
      {
        cc_clear(*(a3 + 88), __s);
        result = 4294967227;
      }
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccccm_one_shot_encrypt()
{
  OUTLINED_FUNCTION_3_7();
  v28 = *MEMORY[0x29EDCA608];
  v27 = timingsafe_enable_if_supported();
  if (*(v0 + 80) == 1)
  {
    v26[1] = v1;
    v3 = *v0;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v4);
    v6 = v26 - v5;
    v7 = *(v0 + 8);
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v8);
    v9 = OUTLINED_FUNCTION_2_16();
    v11 = v10(v9);
    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_1_25();
      v11 = v13(v12);
      if (!v11)
      {
        v14 = *(v0 + 40);
        v15 = OUTLINED_FUNCTION_0_0();
        v11 = v16(v15);
        if (!v11)
        {
          v17 = *(v0 + 48);
          v18 = OUTLINED_FUNCTION_0_0();
          v11 = v19(v18);
          if (!v11)
          {
            v20 = *(v0 + 56);
            v21 = OUTLINED_FUNCTION_0_0();
            v11 = v22(v21);
          }
        }
      }
    }

    v23 = v11;
    cc_clear(*v0, v6);
    cc_clear(*(v0 + 8), v2);
  }

  else
  {
    v23 = 4294967228;
  }

  cc_disable_dit_with_sb(&v27);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t ccccm_one_shot_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_3_7();
  v37 = *MEMORY[0x29EDCA608];
  v36 = timingsafe_enable_if_supported();
  if (*(v12 + 80))
  {
    v32 = 4294967228;
  }

  else
  {
    v35[1] = v13;
    v15 = *v12;
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v16);
    v18 = v35 - v17;
    v19 = *(v12 + 8);
    OUTLINED_FUNCTION_0_49();
    MEMORY[0x2A1C7C4A8](v20);
    v21 = OUTLINED_FUNCTION_2_16();
    v23 = v22(v21);
    if (!v23)
    {
      v24 = OUTLINED_FUNCTION_1_25();
      v23 = v25(v24);
      if (!v23)
      {
        v26 = *(v12 + 40);
        v27 = OUTLINED_FUNCTION_0_0();
        v23 = v28(v27);
        if (!v23)
        {
          v29 = *(v12 + 48);
          v30 = OUTLINED_FUNCTION_0_0();
          v23 = v31(v30);
          if (!v23)
          {
            v23 = ccccm_finalize_and_verify_tag_internal(v12, v18, v14, a12);
          }
        }
      }
    }

    v32 = v23;
    cc_clear(*v12, v18);
    cc_clear(*(v12 + 8), v14);
  }

  cc_disable_dit_with_sb(&v36);
  v33 = *MEMORY[0x29EDCA608];
  return v32;
}

uint64_t ccec_extract_rs_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, char *a5, char *a6)
{
  v12 = **a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  if (ccder_decode_seqii(v12, v14, v15, a4, &a4[a3]) != &a4[a3] || a5 && (v16 = ccec_signature_r_s_size(a2), (ccn_write_uint_padded_ct_internal(v12, v14, v16, a5) & 0x80000000) != 0) || a6 && (v17 = ccec_signature_r_s_size(a2), (ccn_write_uint_padded_ct_internal(v12, v15, v17, a6) & 0x80000000) != 0))
  {
    result = 4294967289;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = v13;
  return result;
}

uint64_t ccec_verify_digest_ws(uint64_t a1, unint64_t **a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void *a7)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v20 = 0uLL;
  v13 = **a2;
  v14 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v13);
  v16 = (*(a1 + 24))(a1, v13);
  if (ccder_decode_seqii(v13, v15, v16, a6, &a6[a5]) == &a6[a5])
  {
    result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v20);
    if (a7 && !result)
    {
      *a7 = v20;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v14;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_verify_msg_ws(uint64_t a1, unint64_t **a2, unint64_t *a3, size_t a4, char *a5, uint64_t a6, unsigned __int8 *a7, void *a8)
{
  v17 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a3, a4, a5, v16);
  result = ccec_verify_digest_ws(a1, a2, *a3, v16, a6, a7, a8);
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ccec_x963_import_priv_ws(uint64_t a1, uint64_t *a2, unint64_t a3, unsigned __int8 *a4, uint64_t **a5)
{
  v5 = *a4;
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xD0;
  if (v6 || v7 == 0)
  {
    return 4294967289;
  }

  v14 = a2 + 4;
  if (a3 < (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = cczp_bitlen(&v14[5 * *a2]);
  result = ccec_x963_import_pub_ws(a1, a2, a3 - ((v16 + 7) >> 3), a4, a5);
  if (!result)
  {
    v18 = *a2;
    v19 = &a5[3 * **a5];
    v20 = (cczp_bitlen(&v14[5 * *a2]) + 7) >> 3;
    v21 = cczp_bitlen(a2);
    result = ccn_read_uint_internal(v18, v19 + 2, v20, &a4[((v21 + 7) >> 2) | 1]);
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t ccmode_ccm_cbcmac(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 && *(a2 + 64) != 4)
  {
    return 4294967228;
  }

  ccmode_ccm_macdata(a1, a2, 0, a3, a4);
  return 0;
}