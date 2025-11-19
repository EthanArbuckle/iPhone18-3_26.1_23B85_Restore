uint64_t srtp_aes_icm_openssl_context_init(uint64_t a1, const unsigned __int8 *a2)
{
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *a1 = 0u;
  v5 = *(a1 + 32);
  v6 = *&a2[v5 + 6];
  *a1 = *&a2[v5];
  *(a1 + 6) = v6;
  v7 = *&a2[v5 + 6];
  *(a1 + 16) = *&a2[v5];
  *(a1 + 22) = v7;
  *(a1 + 30) = 0;
  *(a1 + 14) = 0;
  if (srtp_mod_aes_icm)
  {
    v8 = qword_2808D3540;
    LODWORD(v9) = 2 * v5;
    v9 = v5 <= 512 ? v9 : 1022;
    if (v9 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = a2;
      do
      {
        v12 = &bit_string[v10];
        *v12 = __const_srtp_nibble_to_hex_char_buf[*v11 >> 4];
        v13 = *v11++;
        v12[1] = __const_srtp_nibble_to_hex_char_buf[v13 & 0xF];
        v10 += 2;
      }

      while (v10 < v9);
    }

    bit_string[v10] = 0;
    srtp_err_report(3, "%s: key:  %s\n", v8, bit_string);
    if (srtp_mod_aes_icm)
    {
      v14 = qword_2808D3540;
      v15 = v128_hex_string(v4);
      srtp_err_report(3, "%s: offset: %s\n", v14, v15);
    }
  }

  v16 = *(a1 + 32);
  if (v16 == 16)
  {
    v18 = EVP_aes_128_ctr();
    v19 = *(a1 + 40);
    v20 = *v19;
    if (!*v19)
    {
      goto LABEL_22;
    }

LABEL_20:
    v21 = *(v20 + 40);
    if (v21)
    {
      v21(v19);
    }

    goto LABEL_22;
  }

  if (v16 == 24)
  {
    v18 = EVP_aes_192_ctr();
    v19 = *(a1 + 40);
    v20 = *v19;
    if (!*v19)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v16 != 32)
  {
    return 2;
  }

  v18 = EVP_aes_256_ctr();
  v19 = *(a1 + 40);
  v20 = *v19;
  if (*v19)
  {
    goto LABEL_20;
  }

LABEL_22:
  v22 = v19[2];
  if (v22)
  {
    v24 = *(v22 - 8);
    v23 = (v22 - 8);
    v25 = v24 + 8;
    if (v24 != -8)
    {
      bzero(v23, v25);
    }

    free(v23);
  }

  v19[18] = 0;
  *(v19 + 7) = 0u;
  *(v19 + 8) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 6) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  return EVP_CipherInit_ex(*(a1 + 40), v18, v17, a2, 0, 1) ^ 1u;
}

uint64_t srtp_aes_icm_openssl_encrypt(uint64_t a1, unsigned __int8 *out, int *a3)
{
  outl = 0;
  if (srtp_mod_aes_icm)
  {
    v6 = qword_2808D3540;
    v7 = v128_hex_string(a1);
    srtp_err_report(3, "%s: rs0: %s\n", v6, v7);
  }

  if (!EVP_EncryptUpdate(*(a1 + 40), out, &outl, out, *a3))
  {
    return 8;
  }

  v8 = outl;
  *a3 = outl;
  if (!EVP_EncryptFinal_ex(*(a1 + 40), &out[v8], &outl))
  {
    return 8;
  }

  result = 0;
  *a3 += outl;
  return result;
}

uint64_t srtp_aes_icm_openssl_set_iv(unsigned __int8 *iv, int8x16_t *a2, ENGINE *a3)
{
  v9 = *a2;
  if (srtp_mod_aes_icm)
  {
    v4 = qword_2808D3540;
    v5 = v128_hex_string(&v9);
    srtp_err_report(3, "%s: setting iv: %s\n", v4, v5);
  }

  *iv = veorq_s8(v9, *(iv + 1));
  if (srtp_mod_aes_icm)
  {
    v6 = qword_2808D3540;
    v7 = v128_hex_string(iv);
    srtp_err_report(3, "%s: set_counter: %s\n", v6, v7);
  }

  return EVP_CipherInit_ex(*(iv + 5), 0, a3, 0, iv, 1) ^ 1u;
}

void *srtp_crypto_alloc(void *size)
{
  if (size)
  {
    v1 = size;
    size = malloc_type_calloc(1uLL, size, 0xAA3F5916uLL);
    if (size)
    {
      if (srtp_mod_alloc)
      {
        v2 = size;
        srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, size);
        return v2;
      }
    }

    else
    {
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v1);
      }

      return 0;
    }
  }

  return size;
}

uint64_t srtp_auth_type_test(uint64_t a1, unsigned int *a2)
{
  v3 = a1;
  v44 = *MEMORY[0x277D85DE8];
  if (srtp_mod_auth)
  {
    srtp_err_report(3, "%s: running self-test for auth function %s\n", off_2808D3560, *(a1 + 48));
  }

  if (!a2)
  {
    return 14;
  }

  v4 = 0;
  v42 = 0;
  while (1)
  {
    if (a2[8] > 32)
    {
      return 2;
    }

    result = (*v3)(&v42, *a2);
    if (result)
    {
      return result;
    }

    v6 = (*(*v42 + 16))(*(v42 + 8), *(a2 + 1), *(v42 + 20));
    if (v6)
    {
      goto LABEL_61;
    }

    v7 = a2[8];
    if (v7)
    {
      bzero(v43, v7);
    }

    v6 = (*(*v42 + 24))(*(v42 + 8), *(a2 + 3), a2[4], *(v42 + 16), v43);
    if (v6)
    {
LABEL_61:
      v41 = v6;
      goto LABEL_64;
    }

    if (srtp_mod_auth)
    {
      LODWORD(v9) = 2 * *a2;
      v9 = *a2 <= 512 ? v9 : 1022;
      if (v9 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = *(a2 + 1);
        do
        {
          v12 = &bit_string[v10];
          *v12 = __const_srtp_nibble_to_hex_char_buf[*v11 >> 4];
          v13 = *v11++;
          v12[1] = __const_srtp_nibble_to_hex_char_buf[v13 & 0xF];
          v10 += 2;
        }

        while (v10 < v9);
      }

      v14 = off_2808D3560;
      bit_string[v10] = 0;
      v8.n128_f64[0] = srtp_err_report(3, "%s: key: %s\n", v14, bit_string);
      if (srtp_mod_auth)
      {
        v15 = a2[4];
        LODWORD(v16) = 2 * v15;
        v16 = v15 <= 512 ? v16 : 1022;
        if (v16 < 1)
        {
          v17 = 0;
        }

        else
        {
          v17 = 0;
          v18 = *(a2 + 3);
          do
          {
            v19 = &bit_string[v17];
            *v19 = __const_srtp_nibble_to_hex_char_buf[*v18 >> 4];
            v20 = *v18++;
            v19[1] = __const_srtp_nibble_to_hex_char_buf[v20 & 0xF];
            v17 += 2;
          }

          while (v17 < v16);
        }

        v21 = off_2808D3560;
        bit_string[v17] = 0;
        v8.n128_f64[0] = srtp_err_report(3, "%s: data: %s\n", v21, bit_string);
        if (srtp_mod_auth)
        {
          v22 = a2[8];
          LODWORD(v23) = 2 * v22;
          v23 = v22 <= 512 ? v23 : 1022;
          if (v23 < 1)
          {
            v29 = 0;
          }

          else
          {
            v24 = 0;
            v25 = ((v23 - 1) >> 1) + 1;
            v26 = v43;
            v27 = bit_string;
            do
            {
              v28 = *v26++;
              *v27 = __const_srtp_nibble_to_hex_char_buf[v28 >> 4];
              v27[1] = __const_srtp_nibble_to_hex_char_buf[v28 & 0xF];
              v24 -= 2;
              v27 += 2;
              --v25;
            }

            while (v25);
            v29 = -v24;
          }

          v30 = off_2808D3560;
          bit_string[v29] = 0;
          v8.n128_f64[0] = srtp_err_report(3, "%s: tag computed: %s\n", v30, bit_string);
          if (srtp_mod_auth)
          {
            v31 = a2[8];
            LODWORD(v32) = 2 * v31;
            if (v31 <= 512)
            {
              v32 = v32;
            }

            else
            {
              v32 = 1022;
            }

            if (v32 < 1)
            {
              v33 = 0;
            }

            else
            {
              v33 = 0;
              v34 = *(a2 + 5);
              do
              {
                v35 = &bit_string[v33];
                *v35 = __const_srtp_nibble_to_hex_char_buf[*v34 >> 4];
                v36 = *v34++;
                v35[1] = __const_srtp_nibble_to_hex_char_buf[v36 & 0xF];
                v33 += 2;
              }

              while (v33 < v32);
            }

            v37 = off_2808D3560;
            bit_string[v33] = 0;
            v8.n128_f64[0] = srtp_err_report(3, "%s: tag expected: %s\n", v37, bit_string);
          }
        }
      }
    }

    if (a2[8] >= 1)
    {
      v38 = v3;
      v39 = 0;
      v40 = 0;
      do
      {
        if (v43[v39] != *(*(a2 + 5) + v39))
        {
          if (srtp_mod_auth)
          {
            v8.n128_f64[0] = srtp_err_report(3, "%s: test case %d failed\n", off_2808D3560, v4);
            if (srtp_mod_auth)
            {
              v8.n128_f64[0] = srtp_err_report(3, "%s:   (mismatch at octet %d)\n", off_2808D3560, v39);
            }
          }

          v40 = 11;
        }

        ++v39;
      }

      while (v39 < a2[8]);
      v3 = v38;
      if (v40)
      {
        break;
      }
    }

    result = (*(*v42 + 8))(v42, v8);
    if (result)
    {
      return result;
    }

    a2 = *(a2 + 6);
    ++v4;
    if (!a2)
    {
      return 0;
    }
  }

  v41 = 11;
LABEL_64:
  (*(*v42 + 8))(v42);
  return v41;
}

uint64_t srtp_cipher_type_test(uint64_t a1, unsigned int *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  if (srtp_mod_cipher)
  {
    srtp_err_report(3, "%s: running self-test for cipher %s\n", off_2808D3570, *(a1 + 64));
  }

  if (!a2)
  {
    return 14;
  }

  if (!a1)
  {
    return 2;
  }

  v110 = 0;
  *&__n[1] = 0;
  v112 = 0;
  v4 = a2;
  while (1)
  {
    if (!*a1)
    {
      return 2;
    }

    v5 = (*a1)(&v112, *v4, v4[18]);
    if (v5)
    {
      return v5;
    }

    if (srtp_mod_cipher)
    {
      v6.n128_f64[0] = srtp_err_report(3, "%s: testing encryption\n", off_2808D3570);
    }

    if (!v112)
    {
      return 2;
    }

    v7 = *v112;
    if (!*v112)
    {
      return 2;
    }

    if (!v112[1])
    {
LABEL_250:
      v19 = 2;
      goto LABEL_257;
    }

    v8 = (*(v7 + 16))(v112[1], *(v4 + 1), v6);
    if (v8)
    {
      goto LABEL_251;
    }

    if (v4[10] > 0x80)
    {
      if (v112)
      {
        v83 = *v112;
        if (*v112)
        {
          goto LABEL_167;
        }
      }

      return 2;
    }

    LODWORD(v9) = v4[6];
    if (v9)
    {
      v10 = 0;
      do
      {
        __src[v10] = *(*(v4 + 4) + v10);
        ++v10;
        v9 = v4[6];
      }

      while (v10 < v9);
    }

    if (srtp_mod_cipher)
    {
      LODWORD(v11) = 2 * v9;
      if (v9 <= 512)
      {
        v11 = v11;
      }

      else
      {
        v11 = 1022;
      }

      if (v11 < 1)
      {
        v17 = 0;
      }

      else
      {
        v12 = 0;
        v13 = ((v11 - 1) >> 1) + 1;
        v14 = __src;
        v15 = bit_string;
        do
        {
          v16 = *v14++;
          *v15 = __const_srtp_nibble_to_hex_char_buf[v16 >> 4];
          v15[1] = __const_srtp_nibble_to_hex_char_buf[v16 & 0xF];
          v12 -= 2;
          v15 += 2;
          --v13;
        }

        while (v13);
        v17 = -v12;
      }

      v18 = off_2808D3570;
      bit_string[v17] = 0;
      v6.n128_f64[0] = srtp_err_report(3, "%s: plaintext:    %s\n", v18, bit_string);
    }

    if (!v112)
    {
      return 2;
    }

    v7 = *v112;
    if (!*v112)
    {
      return 2;
    }

    if (!v112[1])
    {
      goto LABEL_250;
    }

    v19 = (*(v7 + 48))(v112[1], *(v4 + 2), 0, v6);
    v20 = v112;
    if (v19)
    {
      goto LABEL_253;
    }

    if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
    {
      if (srtp_mod_cipher)
      {
        v21 = *(v4 + 2);
        bit_string[0] = __const_srtp_nibble_to_hex_char_buf[*v21 >> 4];
        byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[*v21 & 0xF];
        byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[v21[1] >> 4];
        byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[v21[1] & 0xF];
        byte_280905CDC = __const_srtp_nibble_to_hex_char_buf[v21[2] >> 4];
        byte_280905CDD = __const_srtp_nibble_to_hex_char_buf[v21[2] & 0xF];
        byte_280905CDE = __const_srtp_nibble_to_hex_char_buf[v21[3] >> 4];
        byte_280905CDF = __const_srtp_nibble_to_hex_char_buf[v21[3] & 0xF];
        byte_280905CE0 = __const_srtp_nibble_to_hex_char_buf[v21[4] >> 4];
        byte_280905CE1 = __const_srtp_nibble_to_hex_char_buf[v21[4] & 0xF];
        byte_280905CE2 = __const_srtp_nibble_to_hex_char_buf[v21[5] >> 4];
        byte_280905CE3 = __const_srtp_nibble_to_hex_char_buf[v21[5] & 0xF];
        byte_280905CE4 = __const_srtp_nibble_to_hex_char_buf[v21[6] >> 4];
        byte_280905CE5 = __const_srtp_nibble_to_hex_char_buf[v21[6] & 0xF];
        byte_280905CE6 = __const_srtp_nibble_to_hex_char_buf[v21[7] >> 4];
        byte_280905CE7 = __const_srtp_nibble_to_hex_char_buf[v21[7] & 0xF];
        byte_280905CE8 = __const_srtp_nibble_to_hex_char_buf[v21[8] >> 4];
        byte_280905CE9 = __const_srtp_nibble_to_hex_char_buf[v21[8] & 0xF];
        byte_280905CEA = __const_srtp_nibble_to_hex_char_buf[v21[9] >> 4];
        byte_280905CEB = __const_srtp_nibble_to_hex_char_buf[v21[9] & 0xF];
        byte_280905CEC = __const_srtp_nibble_to_hex_char_buf[v21[10] >> 4];
        byte_280905CED = __const_srtp_nibble_to_hex_char_buf[v21[10] & 0xF];
        byte_280905CEE = __const_srtp_nibble_to_hex_char_buf[v21[11] >> 4];
        byte_280905CEF = __const_srtp_nibble_to_hex_char_buf[v21[11] & 0xF];
        byte_280905CF0 = 0;
        v6.n128_f64[0] = srtp_err_report(3, "%s: IV:    %s\n", off_2808D3570, bit_string);
        v20 = v112;
        if (!v112)
        {
          return 2;
        }
      }

      v7 = *v20;
      if (!*v20)
      {
        return 2;
      }

      if (!v20[1])
      {
        goto LABEL_250;
      }

      v22 = *(v7 + 24);
      if (!v22)
      {
        goto LABEL_256;
      }

      v8 = v22(v20[1], *(v4 + 8), v4[14]);
      if (v8)
      {
LABEL_251:
        v19 = v8;
        v20 = v112;
        if (!v112)
        {
          return v19;
        }

LABEL_254:
        v7 = *v20;
        if (!*v20)
        {
          return v19;
        }

        goto LABEL_257;
      }

      if (srtp_mod_cipher)
      {
        v23 = v4[14];
        LODWORD(v24) = 2 * v23;
        if (v23 <= 512)
        {
          v24 = v24;
        }

        else
        {
          v24 = 1022;
        }

        if (v24 < 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = 0;
          v26 = *(v4 + 8);
          do
          {
            v27 = &bit_string[v25];
            *v27 = __const_srtp_nibble_to_hex_char_buf[*v26 >> 4];
            v28 = *v26++;
            v27[1] = __const_srtp_nibble_to_hex_char_buf[v28 & 0xF];
            v25 += 2;
          }

          while (v25 < v24);
        }

        v29 = off_2808D3570;
        bit_string[v25] = 0;
        v6.n128_f64[0] = srtp_err_report(3, "%s: AAD:    %s\n", v29, bit_string);
      }

      v20 = v112;
      __n[1] = v4[6];
      if (!v112)
      {
        return 2;
      }
    }

    else
    {
      __n[1] = v4[6];
    }

    v7 = *v20;
    if (!*v20)
    {
      return 2;
    }

    if (!v20[1])
    {
      goto LABEL_250;
    }

    v19 = (*(v7 + 32))(v20[1], __src, &__n[1]);
    v20 = v112;
    if (v19)
    {
      goto LABEL_253;
    }

    if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
    {
      v7 = *v112;
      if (!*v112)
      {
        return 2;
      }

      if (!v112[1])
      {
        goto LABEL_250;
      }

      v30 = *(v7 + 56);
      if (!v30)
      {
        goto LABEL_256;
      }

      v8 = v30(v112[1], &__src[__n[1]], &__n[2]);
      if (v8)
      {
        goto LABEL_251;
      }

      __n[1] += __n[2];
    }

    if (srtp_mod_cipher)
    {
      v31 = v4[10];
      LODWORD(v32) = 2 * v31;
      if (v31 <= 512)
      {
        v32 = v32;
      }

      else
      {
        v32 = 1022;
      }

      if (v32 < 1)
      {
        v38 = 0;
      }

      else
      {
        v33 = 0;
        v34 = ((v32 - 1) >> 1) + 1;
        v35 = __src;
        v36 = bit_string;
        do
        {
          v37 = *v35++;
          *v36 = __const_srtp_nibble_to_hex_char_buf[v37 >> 4];
          v36[1] = __const_srtp_nibble_to_hex_char_buf[v37 & 0xF];
          v33 -= 2;
          v36 += 2;
          --v34;
        }

        while (v34);
        v38 = -v33;
      }

      v39 = off_2808D3570;
      bit_string[v38] = 0;
      v6.n128_f64[0] = srtp_err_report(3, "%s: ciphertext:   %s\n", v39, bit_string);
    }

    if (__n[1] != v4[10])
    {
      goto LABEL_162;
    }

    if (__n[1])
    {
      break;
    }

LABEL_75:
    if (srtp_mod_cipher)
    {
      v6.n128_f64[0] = srtp_err_report(3, "%s: testing decryption\n", off_2808D3570);
    }

    if (!v112)
    {
      return 2;
    }

    v7 = *v112;
    if (!*v112)
    {
      return 2;
    }

    if (!v112[1])
    {
      goto LABEL_250;
    }

    v8 = (*(v7 + 16))(v112[1], *(v4 + 1), v6);
    if (v8)
    {
      goto LABEL_251;
    }

    v41 = v4[10];
    if (v41 > 0x80)
    {
      if (v112)
      {
        v83 = *v112;
        if (*v112)
        {
LABEL_167:
          (*(v83 + 8))();
          return 2;
        }
      }

      return 2;
    }

    if (v41)
    {
      v42 = 0;
      do
      {
        __src[v42] = *(*(v4 + 6) + v42);
        ++v42;
      }

      while (v42 < v4[10]);
    }

    if (srtp_mod_cipher)
    {
      v43 = v4[6];
      LODWORD(v44) = 2 * v43;
      if (v43 <= 512)
      {
        v44 = v44;
      }

      else
      {
        v44 = 1022;
      }

      if (v44 < 1)
      {
        v50 = 0;
      }

      else
      {
        v45 = 0;
        v46 = ((v44 - 1) >> 1) + 1;
        v47 = __src;
        v48 = bit_string;
        do
        {
          v49 = *v47++;
          *v48 = __const_srtp_nibble_to_hex_char_buf[v49 >> 4];
          v48[1] = __const_srtp_nibble_to_hex_char_buf[v49 & 0xF];
          v45 -= 2;
          v48 += 2;
          --v46;
        }

        while (v46);
        v50 = -v45;
      }

      v51 = off_2808D3570;
      bit_string[v50] = 0;
      v6.n128_f64[0] = srtp_err_report(3, "%s: ciphertext:    %s\n", v51, bit_string);
    }

    if (!v112)
    {
      return 2;
    }

    v7 = *v112;
    if (!*v112)
    {
      return 2;
    }

    if (!v112[1])
    {
      goto LABEL_250;
    }

    v19 = (*(v7 + 48))(v112[1], *(v4 + 2), 1, v6);
    v20 = v112;
    if (v19)
    {
LABEL_253:
      if (!v20)
      {
        return v19;
      }

      goto LABEL_254;
    }

    if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
    {
      v7 = *v112;
      if (!*v112)
      {
        return 2;
      }

      if (!v112[1])
      {
        goto LABEL_250;
      }

      v52 = *(v7 + 24);
      if (v52)
      {
        v8 = v52(v112[1], *(v4 + 8), v4[14]);
        if (v8)
        {
          goto LABEL_251;
        }

        if (srtp_mod_cipher)
        {
          v53 = v4[14];
          LODWORD(v54) = 2 * v53;
          if (v53 <= 512)
          {
            v54 = v54;
          }

          else
          {
            v54 = 1022;
          }

          if (v54 < 1)
          {
            v55 = 0;
          }

          else
          {
            v55 = 0;
            v56 = *(v4 + 8);
            do
            {
              v57 = &bit_string[v55];
              *v57 = __const_srtp_nibble_to_hex_char_buf[*v56 >> 4];
              v58 = *v56++;
              v57[1] = __const_srtp_nibble_to_hex_char_buf[v58 & 0xF];
              v55 += 2;
            }

            while (v55 < v54);
          }

          v59 = off_2808D3570;
          bit_string[v55] = 0;
          v6.n128_f64[0] = srtp_err_report(3, "%s: AAD:    %s\n", v59, bit_string);
        }

        v20 = v112;
        __n[1] = v4[10];
        if (!v112)
        {
          return 2;
        }

        goto LABEL_116;
      }

LABEL_256:
      v19 = 12;
LABEL_257:
      (*(v7 + 8))(v6);
      return v19;
    }

    __n[1] = v4[10];
LABEL_116:
    v7 = *v20;
    if (!*v20)
    {
      return 2;
    }

    if (!v20[1])
    {
      goto LABEL_250;
    }

    v8 = (*(v7 + 40))(v20[1], __src, &__n[1]);
    if (v8)
    {
      goto LABEL_251;
    }

    if (srtp_mod_cipher)
    {
      v60 = v4[6];
      LODWORD(v61) = 2 * v60;
      if (v60 <= 512)
      {
        v61 = v61;
      }

      else
      {
        v61 = 1022;
      }

      if (v61 < 1)
      {
        v67 = 0;
      }

      else
      {
        v62 = 0;
        v63 = ((v61 - 1) >> 1) + 1;
        v64 = __src;
        v65 = bit_string;
        do
        {
          v66 = *v64++;
          *v65 = __const_srtp_nibble_to_hex_char_buf[v66 >> 4];
          v65[1] = __const_srtp_nibble_to_hex_char_buf[v66 & 0xF];
          v62 -= 2;
          v65 += 2;
          --v63;
        }

        while (v63);
        v67 = -v62;
      }

      v68 = off_2808D3570;
      bit_string[v67] = 0;
      v6.n128_f64[0] = srtp_err_report(3, "%s: plaintext:   %s\n", v68, bit_string);
    }

    if (__n[1] != v4[6])
    {
      goto LABEL_162;
    }

    if (__n[1])
    {
      v69 = 0;
      v70 = 0;
      do
      {
        if (__src[v69] != *(*(v4 + 4) + v69))
        {
          if (srtp_mod_cipher)
          {
            v6.n128_f64[0] = srtp_err_report(3, "%s: test case %d failed\n", off_2808D3570, v110);
            if (srtp_mod_cipher)
            {
              v6.n128_f64[0] = srtp_err_report(3, "%s: (failure at byte %u)\n", off_2808D3570, v69);
            }
          }

          v70 = 11;
        }

        ++v69;
        v71 = v4[6];
      }

      while (v69 < v71);
      if (v70)
      {
        if (srtp_mod_cipher)
        {
          v84 = off_2808D3570;
          v85 = srtp_octet_string_hex_string(__src, 2 * v71);
          v6.n128_f64[0] = srtp_err_report(3, "%s: p computed: %s\n", v84, v85);
          if (srtp_mod_cipher)
          {
            srtp_octet_string_hex_string(*(v4 + 4), 2 * v4[6]);
            v6.n128_f64[0] = srtp_err_report(3, "%s: p expected: %s\n");
          }
        }

        goto LABEL_162;
      }
    }

    if (!v112 || !*v112)
    {
      return 2;
    }

    v5 = (*(*v112 + 8))(v6);
    if (v5)
    {
      return v5;
    }

    v4 = *(v4 + 10);
    ++v110;
    if (!v4)
    {
      if (!*a1)
      {
        return 2;
      }

      v5 = (*a1)(&v112, *a2, a2[18]);
      if (v5)
      {
        return v5;
      }

      v86 = 0;
      while (1)
      {
        __n[0] = 0;
        v87 = rand();
        rand();
        rand();
        rand();
        v88 = v87 & 0x3F;
        __n[0] = v88;
        if (srtp_mod_cipher)
        {
          v6.n128_f64[0] = srtp_err_report(3, "%s: random plaintext length %d\n\n", off_2808D3570, v88);
          v88 = __n[0];
        }

        if (v88)
        {
          v89 = __src;
          do
          {
            *v89++ = rand();
            --v88;
          }

          while (v88);
          v90 = __n[0];
        }

        else
        {
          v90 = 0;
        }

        if (srtp_mod_cipher)
        {
          v91 = off_2808D3570;
          v92 = srtp_octet_string_hex_string(__src, v90);
          v6.n128_f64[0] = srtp_err_report(3, "%s: plaintext:    %s\n", v91, v92);
          v90 = __n[0];
        }

        if (v90)
        {
          memcpy(__dst, __src, v90);
        }

        v93 = *a2;
        if (*a2 >= 65)
        {
          if (!v112)
          {
            return 14;
          }

          v7 = *v112;
          v19 = 14;
          if (*v112)
          {
            goto LABEL_257;
          }

          return v19;
        }

        if (v93)
        {
          v94 = v113;
          do
          {
            *v94++ = rand();
            --v93;
          }

          while (v93);
        }

        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        rand();
        if (!v112)
        {
          return 2;
        }

        v7 = *v112;
        if (!*v112)
        {
          return 2;
        }

        if (!v112[1])
        {
          goto LABEL_250;
        }

        v19 = (*(v7 + 16))(v112[1], v113);
        v20 = v112;
        if (v19)
        {
          goto LABEL_253;
        }

        if (!v112)
        {
          return 2;
        }

        v7 = *v112;
        if (!*v112)
        {
          return 2;
        }

        if (!v112[1])
        {
          goto LABEL_250;
        }

        v19 = (*(v7 + 48))(v112[1], *(a2 + 2), 0);
        v20 = v112;
        if (v19)
        {
          goto LABEL_253;
        }

        if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
        {
          v7 = *v112;
          if (!*v112)
          {
            return 2;
          }

          if (!v112[1])
          {
            goto LABEL_250;
          }

          v95 = *(v7 + 24);
          if (!v95)
          {
            goto LABEL_256;
          }

          v8 = v95(v112[1], *(a2 + 8), a2[14]);
          if (v8)
          {
            goto LABEL_251;
          }

          if (srtp_mod_cipher)
          {
            v96 = off_2808D3570;
            v97 = srtp_octet_string_hex_string(*(a2 + 8), a2[14]);
            v6.n128_f64[0] = srtp_err_report(3, "%s: AAD:    %s\n", v96, v97);
          }

          v20 = v112;
          if (!v112)
          {
            return 2;
          }
        }

        v7 = *v20;
        if (!*v20)
        {
          return 2;
        }

        if (!v20[1])
        {
          goto LABEL_250;
        }

        v98 = __n[0];
        v19 = (*(v7 + 32))(v20[1], __src, __n, v6);
        v20 = v112;
        if (v19)
        {
          goto LABEL_253;
        }

        if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
        {
          v7 = *v112;
          if (!*v112)
          {
            return 2;
          }

          if (!v112[1])
          {
            goto LABEL_250;
          }

          v99 = *(v7 + 56);
          if (!v99)
          {
            goto LABEL_256;
          }

          v8 = v99(v112[1], &__src[__n[0]], &__n[2]);
          if (v8)
          {
            goto LABEL_251;
          }

          __n[0] += __n[2];
        }

        if (srtp_mod_cipher)
        {
          v100 = off_2808D3570;
          v101 = srtp_octet_string_hex_string(__src, __n[0]);
          v6.n128_f64[0] = srtp_err_report(3, "%s: ciphertext:   %s\n", v100, v101);
        }

        if (!v112)
        {
          return 2;
        }

        v7 = *v112;
        if (!*v112)
        {
          return 2;
        }

        if (!v112[1])
        {
          goto LABEL_250;
        }

        v19 = (*(v7 + 16))(v112[1], v113, v6);
        v20 = v112;
        if (v19)
        {
          goto LABEL_253;
        }

        if (!v112)
        {
          return 2;
        }

        v7 = *v112;
        if (!*v112)
        {
          return 2;
        }

        if (!v112[1])
        {
          goto LABEL_250;
        }

        v19 = (*(v7 + 48))(v112[1], *(a2 + 2), 1);
        v20 = v112;
        if (v19)
        {
          goto LABEL_253;
        }

        if ((*(v112 + 5) & 0xFFFFFFFE) == 6)
        {
          v7 = *v112;
          if (!*v112)
          {
            return 2;
          }

          if (!v112[1])
          {
            goto LABEL_250;
          }

          v102 = *(v7 + 24);
          if (!v102)
          {
            goto LABEL_256;
          }

          v8 = v102(v112[1], *(a2 + 8), a2[14]);
          if (v8)
          {
            goto LABEL_251;
          }

          if (srtp_mod_cipher)
          {
            v103 = off_2808D3570;
            v104 = srtp_octet_string_hex_string(*(a2 + 8), a2[14]);
            v6.n128_f64[0] = srtp_err_report(3, "%s: AAD:    %s\n", v103, v104);
          }

          v20 = v112;
          if (!v112)
          {
            return 2;
          }
        }

        v7 = *v20;
        if (!*v20)
        {
          return 2;
        }

        if (!v20[1])
        {
          goto LABEL_250;
        }

        v8 = (*(v7 + 40))(v20[1], __src, __n, v6);
        if (v8)
        {
          goto LABEL_251;
        }

        if (srtp_mod_cipher)
        {
          v105 = off_2808D3570;
          v106 = srtp_octet_string_hex_string(__src, __n[0]);
          v6.n128_f64[0] = srtp_err_report(3, "%s: plaintext[2]: %s\n", v105, v106);
        }

        if (__n[0] != v98)
        {
          break;
        }

        if (v98)
        {
          v107 = 0;
          v108 = 0;
          do
          {
            if (__src[v107] != __dst[v107])
            {
              if (srtp_mod_cipher)
              {
                v6.n128_f64[0] = srtp_err_report(3, "%s: random test case %d failed\n", off_2808D3570, v110);
                if (srtp_mod_cipher)
                {
                  v6.n128_f64[0] = srtp_err_report(3, "%s: (failure at byte %u)\n", off_2808D3570, v107);
                }
              }

              v108 = 11;
            }

            ++v107;
          }

          while (v98 != v107);
          if (v108)
          {
            break;
          }
        }

        if (++v86 == 128)
        {
          if (v112 && *v112)
          {
            return (*(*v112 + 8))(v6);
          }

          return 2;
        }
      }

      if (!v112)
      {
        return 11;
      }

      v7 = *v112;
      v19 = 11;
      if (*v112)
      {
        goto LABEL_257;
      }

      return v19;
    }
  }

  v40 = 0;
  while (__src[v40] == *(*(v4 + 6) + v40))
  {
    if (__n[1] == ++v40)
    {
      goto LABEL_75;
    }
  }

  if (srtp_mod_cipher)
  {
    v6.n128_f64[0] = srtp_err_report(3, "%s: test case %d failed\n", off_2808D3570, v110);
    if (srtp_mod_cipher)
    {
      v6.n128_f64[0] = srtp_err_report(3, "%s: (failure at byte %u)\n", off_2808D3570, v40);
      if (srtp_mod_cipher)
      {
        v72 = off_2808D3570;
        v73 = v4[6];
        v74 = 2 * v73;
        v75 = 4 * v73;
        v76 = v74 <= 512 ? v75 : 1022;
        if (v76 < 1)
        {
          v82 = 0;
        }

        else
        {
          v77 = 0;
          v78 = ((v76 - 1) >> 1) + 1;
          v79 = __src;
          v80 = bit_string;
          do
          {
            v81 = *v79++;
            *v80 = __const_srtp_nibble_to_hex_char_buf[v81 >> 4];
            v80[1] = __const_srtp_nibble_to_hex_char_buf[v81 & 0xF];
            v77 -= 2;
            v80 += 2;
            --v78;
          }

          while (v78);
          v82 = -v77;
        }

        bit_string[v82] = 0;
        v6.n128_f64[0] = srtp_err_report(3, "%s: c computed: %s\n", v72, bit_string);
        if (srtp_mod_cipher)
        {
          srtp_octet_string_hex_string(*(v4 + 6), 2 * v4[6]);
          v6.n128_f64[0] = srtp_err_report(3, "%s: c expected: %s\n");
        }
      }
    }
  }

LABEL_162:
  if (!v112 || !*v112)
  {
    return 11;
  }

  (*(*v112 + 8))(v6);
  return 11;
}

uint64_t srtp_crypto_kernel_init()
{
  if (crypto_kernel != 1)
  {
    v8 = qword_2808D3580;
    if (qword_2808D3580)
    {
      v9 = qword_280905CD0;
      if (qword_280905CD0)
      {
        while (strncmp(v8, *(*v9 + 8), 0x40uLL))
        {
          v9 = v9[1];
          if (!v9)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v10 = malloc_type_calloc(1uLL, 0x10uLL, 0xAA3F5916uLL);
        if (!v10)
        {
          if (srtp_mod_alloc)
          {
            srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x10uLL);
          }

          return 3;
        }

        v11 = v10;
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v10);
        }

        v12 = qword_280905CD0;
        *v11 = &srtp_mod_crypto_kernel;
        v11[1] = v12;
        qword_280905CD0 = v11;
        v13 = off_2808D3560;
        if (off_2808D3560)
        {
          while (strncmp(v13, *(*v11 + 8), 0x40uLL))
          {
            v11 = v11[1];
            if (!v11)
            {
              v14 = srtp_crypto_alloc(0x10);
              if (!v14)
              {
                return 3;
              }

              v15 = v14;
              v16 = qword_280905CD0;
              *v14 = &srtp_mod_auth;
              v14[1] = v16;
              qword_280905CD0 = v14;
              v17 = off_2808D3570;
              if (off_2808D3570)
              {
                while (strncmp(v17, *(*v15 + 8), 0x40uLL))
                {
                  v15 = v15[1];
                  if (!v15)
                  {
                    v18 = srtp_crypto_alloc(0x10);
                    if (!v18)
                    {
                      return 3;
                    }

                    v19 = qword_280905CD0;
                    *v18 = &srtp_mod_cipher;
                    v18[1] = v19;
                    qword_280905CD0 = v18;
                    result = srtp_crypto_kernel_load_debug_module(&srtp_mod_stat);
                    if (!result)
                    {
                      result = srtp_crypto_kernel_load_debug_module(&srtp_mod_alloc);
                      if (!result)
                      {
                        result = srtp_crypto_kernel_load_cipher_type(srtp_null_cipher, 0);
                        if (!result)
                        {
                          result = srtp_crypto_kernel_load_cipher_type(&srtp_aes_icm_128, 1);
                          if (!result)
                          {
                            result = srtp_crypto_kernel_load_cipher_type(&srtp_aes_icm_256, 5);
                            if (!result)
                            {
                              result = srtp_crypto_kernel_load_debug_module(&srtp_mod_aes_icm);
                              if (!result)
                              {
                                result = srtp_crypto_kernel_load_cipher_type(&srtp_aes_icm_192, 4);
                                if (!result)
                                {
                                  result = srtp_crypto_kernel_load_cipher_type(&srtp_aes_gcm_128, 6);
                                  if (!result)
                                  {
                                    result = srtp_crypto_kernel_load_cipher_type(&srtp_aes_gcm_256, 7);
                                    if (!result)
                                    {
                                      result = srtp_crypto_kernel_load_debug_module(&srtp_mod_aes_gcm);
                                      if (!result)
                                      {
                                        result = srtp_crypto_kernel_load_auth_type(srtp_null_auth, 0);
                                        if (!result)
                                        {
                                          result = srtp_crypto_kernel_load_auth_type(srtp_hmac, 3);
                                          if (!result)
                                          {
                                            result = srtp_crypto_kernel_load_debug_module(&srtp_mod_hmac);
                                            if (!result)
                                            {
                                              crypto_kernel = 1;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }
                }
              }

              return 2;
            }
          }
        }
      }
    }

    return 2;
  }

  v1 = qword_280905CC0;
  v0 = qword_280905CC8;
  if (qword_280905CC0)
  {
    while (1)
    {
      v2 = srtp_err_report(2, "cipher: %s\n", *(*(v1 + 8) + 64));
      srtp_err_report(2, "  self-test: ", v2);
      v3 = srtp_cipher_type_test(*(v1 + 8), *(*(v1 + 8) + 72));
      if (v3)
      {
        break;
      }

      srtp_err_report(2, "passed\n");
      v1 = *(v1 + 16);
      if (!v1)
      {
        goto LABEL_5;
      }
    }

LABEL_49:
    v20 = v3;
    srtp_err_report(0, "failed with error code %d\n", v3);
    exit(v20);
  }

LABEL_5:
  while (v0)
  {
    v4 = srtp_err_report(2, "auth func: %s\n", *(*(v0 + 8) + 48));
    srtp_err_report(2, "  self-test: ", v4);
    v3 = srtp_auth_type_test(*(v0 + 8), *(*(v0 + 8) + 56));
    if (v3)
    {
      goto LABEL_49;
    }

    srtp_err_report(2, "passed\n");
    v0 = *(v0 + 16);
  }

  v5 = qword_280905CD0;
  srtp_err_report(2, "debug modules loaded:\n");
  if (!v5)
  {
    return 0;
  }

  do
  {
    v6 = srtp_err_report(2, "  %s ", *(*v5 + 8));
    if (**v5)
    {
      srtp_err_report(2, "(on)\n", v6);
    }

    else
    {
      srtp_err_report(2, "(off)\n", v6);
    }

    v5 = v5[1];
  }

  while (v5);
  return 0;
}

uint64_t srtp_crypto_kernel_load_debug_module(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 2;
  }

  v3 = qword_280905CD0;
  if (qword_280905CD0)
  {
    while (strncmp(v1, *(*v3 + 8), 0x40uLL))
    {
      v3 = v3[1];
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    return 2;
  }

LABEL_6:
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xAA3F5916uLL);
  if (v4)
  {
    v5 = v4;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v4);
    }

    result = 0;
    v7 = qword_280905CD0;
    *v5 = a1;
    v5[1] = v7;
    qword_280905CD0 = v5;
  }

  else
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x10uLL);
    }

    return 3;
  }

  return result;
}

uint64_t srtp_crypto_kernel_load_cipher_type(uint64_t a1, int a2)
{
  if (!a1 || *(a1 + 80) != a2)
  {
    return 2;
  }

  result = srtp_cipher_type_test(a1, *(a1 + 72));
  if (!result)
  {
    v5 = qword_280905CC0;
    if (qword_280905CC0)
    {
      while (*v5 != a2 && *(v5 + 8) != a1)
      {
        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      return 2;
    }

    else
    {
LABEL_10:
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
      if (v6)
      {
        v7 = v6;
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
        }

        result = 0;
        v8 = qword_280905CC0;
        qword_280905CC0 = v7;
        *(v7 + 8) = a1;
        *(v7 + 16) = v8;
        *v7 = a2;
      }

      else
      {
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t srtp_crypto_kernel_load_auth_type(uint64_t a1, int a2)
{
  if (!a1 || *(a1 + 64) != a2)
  {
    return 2;
  }

  result = srtp_auth_type_test(a1, *(a1 + 56));
  if (!result)
  {
    v5 = qword_280905CC8;
    if (qword_280905CC8)
    {
      while (*v5 != a2 && *(v5 + 8) != a1)
      {
        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      return 2;
    }

    else
    {
LABEL_10:
      v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
      if (v6)
      {
        v7 = v6;
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
        }

        result = 0;
        v8 = qword_280905CC8;
        qword_280905CC8 = v7;
        *(v7 + 8) = a1;
        *(v7 + 16) = v8;
        *v7 = a2;
      }

      else
      {
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t srtp_crypto_kernel_shutdown()
{
  for (i = qword_280905CC0; qword_280905CC0; i = qword_280905CC0)
  {
    qword_280905CC0 = i[2];
    if (srtp_mod_crypto_kernel)
    {
      srtp_err_report(3, "%s: freeing memory for cipher %s\n", qword_2808D3580, *(i[1] + 64));
    }

    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, i);
    }

    free(i);
  }

  for (j = qword_280905CC8; qword_280905CC8; j = qword_280905CC8)
  {
    qword_280905CC8 = j[2];
    if (srtp_mod_crypto_kernel)
    {
      srtp_err_report(3, "%s: freeing memory for authentication %s\n", qword_2808D3580, *(j[1] + 48));
    }

    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, j);
    }

    free(j);
  }

  for (k = qword_280905CD0; qword_280905CD0; k = qword_280905CD0)
  {
    qword_280905CD0 = k[1];
    if (srtp_mod_crypto_kernel)
    {
      srtp_err_report(3, "%s: freeing memory for debug module %s\n", qword_2808D3580, *(*k + 8));
    }

    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, k);
    }

    free(k);
  }

  crypto_kernel = 0;
  return 0;
}

uint64_t srtp_replace_auth_type(uint64_t a1, int a2)
{
  if (!a1 || *(a1 + 64) != a2)
  {
    return 2;
  }

  result = srtp_auth_type_test(a1, *(a1 + 56));
  if (!result)
  {
    v5 = qword_280905CC8;
    if (qword_280905CC8)
    {
      while (1)
      {
        v6 = *(v5 + 8);
        if (*v5 == a2)
        {
          break;
        }

        if (v6 == a1)
        {
          return 2;
        }

        v5 = *(v5 + 16);
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      result = srtp_auth_type_test(a1, *(v6 + 56));
      if (result)
      {
        return result;
      }
    }

    else
    {
LABEL_10:
      v7 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
      if (!v7)
      {
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
        }

        return 3;
      }

      v5 = v7;
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v7);
      }

      *(v5 + 16) = qword_280905CC8;
      qword_280905CC8 = v5;
    }

    result = 0;
    *(v5 + 8) = a1;
    *v5 = a2;
  }

  return result;
}

char *srtp_octet_string_hex_string(char *a1, int a2)
{
  LODWORD(v3) = 2 * a2;
  if (a2 <= 512)
  {
    v3 = v3;
  }

  else
  {
    v3 = 1022;
  }

  result = bit_string;
  if (v3 < 1)
  {
    bit_string[0] = 0;
  }

  else
  {
    for (i = 0; i < v3; i += 2)
    {
      v6 = &bit_string[i];
      *v6 = __const_srtp_nibble_to_hex_char_buf[*a1 >> 4];
      v7 = *a1++;
      v6[1] = __const_srtp_nibble_to_hex_char_buf[v7 & 0xF];
    }

    bit_string[i] = 0;
  }

  return result;
}

char *v128_hex_string(unsigned __int8 *a1)
{
  v2 = __const_srtp_nibble_to_hex_char_buf[*a1 >> 4];
  result = bit_string;
  bit_string[0] = v2;
  byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[*a1 & 0xF];
  byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[a1[1] >> 4];
  byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[a1[1] & 0xF];
  byte_280905CDC = __const_srtp_nibble_to_hex_char_buf[a1[2] >> 4];
  byte_280905CDD = __const_srtp_nibble_to_hex_char_buf[a1[2] & 0xF];
  byte_280905CDE = __const_srtp_nibble_to_hex_char_buf[a1[3] >> 4];
  byte_280905CDF = __const_srtp_nibble_to_hex_char_buf[a1[3] & 0xF];
  byte_280905CE0 = __const_srtp_nibble_to_hex_char_buf[a1[4] >> 4];
  byte_280905CE1 = __const_srtp_nibble_to_hex_char_buf[a1[4] & 0xF];
  byte_280905CE2 = __const_srtp_nibble_to_hex_char_buf[a1[5] >> 4];
  byte_280905CE3 = __const_srtp_nibble_to_hex_char_buf[a1[5] & 0xF];
  byte_280905CE4 = __const_srtp_nibble_to_hex_char_buf[a1[6] >> 4];
  byte_280905CE5 = __const_srtp_nibble_to_hex_char_buf[a1[6] & 0xF];
  byte_280905CE6 = __const_srtp_nibble_to_hex_char_buf[a1[7] >> 4];
  byte_280905CE7 = __const_srtp_nibble_to_hex_char_buf[a1[7] & 0xF];
  byte_280905CE8 = __const_srtp_nibble_to_hex_char_buf[a1[8] >> 4];
  byte_280905CE9 = __const_srtp_nibble_to_hex_char_buf[a1[8] & 0xF];
  byte_280905CEA = __const_srtp_nibble_to_hex_char_buf[a1[9] >> 4];
  byte_280905CEB = __const_srtp_nibble_to_hex_char_buf[a1[9] & 0xF];
  byte_280905CEC = __const_srtp_nibble_to_hex_char_buf[a1[10] >> 4];
  byte_280905CED = __const_srtp_nibble_to_hex_char_buf[a1[10] & 0xF];
  byte_280905CEE = __const_srtp_nibble_to_hex_char_buf[a1[11] >> 4];
  byte_280905CEF = __const_srtp_nibble_to_hex_char_buf[a1[11] & 0xF];
  byte_280905CF0 = __const_srtp_nibble_to_hex_char_buf[a1[12] >> 4];
  byte_280905CF1 = __const_srtp_nibble_to_hex_char_buf[a1[12] & 0xF];
  byte_280905CF2 = __const_srtp_nibble_to_hex_char_buf[a1[13] >> 4];
  byte_280905CF3 = __const_srtp_nibble_to_hex_char_buf[a1[13] & 0xF];
  byte_280905CF4 = __const_srtp_nibble_to_hex_char_buf[a1[14] >> 4];
  byte_280905CF5 = __const_srtp_nibble_to_hex_char_buf[a1[14] & 0xF];
  byte_280905CF6 = __const_srtp_nibble_to_hex_char_buf[a1[15] >> 4];
  byte_280905CF7 = __const_srtp_nibble_to_hex_char_buf[a1[15] & 0xF];
  byte_280905CF8 = 0;
  return result;
}

uint64_t bitvector_alloc(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 31;
  v4 = (a2 + 31) >> 3;
  v5 = v4 & 0x1FFFFFFFFFFFFFFCLL;
  if ((v4 & 0x1FFFFFFFFFFFFFFCLL) == 0)
  {
LABEL_8:
    *(a1 + 8) = 0;
    *a1 = 0;
    return 0xFFFFFFFFLL;
  }

  v6 = malloc_type_calloc(1uLL, v4 & 0x1FFFFFFFFFFFFFFCLL, 0xAA3F5916uLL);
  if (!v6)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v5);
    }

    goto LABEL_8;
  }

  if (srtp_mod_alloc)
  {
    v7 = v6;
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  *a1 = v3 & 0xFFFFFFE0;
  bzero(v6, (v3 & 0xFFFFFFE0) >> 3);
  return 0;
}

void bitvector_left_shift(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 <= a2)
  {
    v13 = *(a1 + 1);
    v14 = v2 >> 3;
LABEL_10:
    bzero(v13, v14);
    return;
  }

  v3 = a2 >> 5;
  v4 = v2 >> 5;
  v5 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v6 = (v4 + ~v3);
    v7 = *(a1 + 1);
    if (v6 >= 1)
    {
      v8 = 32 - v5;
      v9 = 4 * v3;
      if (v6 > 7)
      {
        v10 = 0;
        if ((-4 * v3) >= 0x20 && v9 <= 0xFFFFFFFFFFFFFFDCLL)
        {
          v25 = vdupq_n_s32(v8);
          v10 = v6 & 0x7FFFFFF8;
          v26 = v7 + 1;
          v27 = (v7[1].i64 + v9 + 4);
          v28 = vnegq_s32(vdupq_n_s32(v5));
          v29 = v10;
          do
          {
            v30 = veorq_s8(vshlq_u32(*v27, v25), vshlq_u32(*(v27 - 4), v28));
            v26[-1] = veorq_s8(vshlq_u32(v27[-1], v25), vshlq_u32(*(v27 - 20), v28));
            *v26 = v30;
            v26 += 2;
            v27 += 2;
            v29 -= 8;
          }

          while (v29);
          if (v10 == v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v6 - v10;
      v12 = &v7->i32[v10];
      do
      {
        *v12 = (v12[v3 + 1] << v8) ^ (v12[v3] >> v5);
        ++v12;
        --v11;
      }

      while (v11);
    }

LABEL_8:
    v7->i32[v6] = v7->i32[v4 - 1] >> v5;
    goto LABEL_19;
  }

  v15 = (v4 - v3);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(a1 + 1);
    if (v15 < 8)
    {
      goto LABEL_17;
    }

    if ((-4 * v3) < 0x20)
    {
      goto LABEL_17;
    }

    v16 = v15 & 0x7FFFFFF8;
    v18 = (v17 + 16);
    v19 = (v17 + 16 + 4 * v3);
    v20 = v16;
    do
    {
      v21 = *v19;
      *(v18 - 1) = *(v19 - 1);
      *v18 = v21;
      v19 += 2;
      v18 += 2;
      v20 -= 8;
    }

    while (v20);
    if (v16 != v15)
    {
LABEL_17:
      v22 = v15 - v16;
      v23 = (v17 + 4 * v16);
      do
      {
        *v23 = v23[v3];
        ++v23;
        --v22;
      }

      while (v22);
    }
  }

LABEL_19:
  if (v3 >= 1)
  {
    v13 = (*(a1 + 1) + 4 * (v4 - v3));
    if (v4 <= v4 - v3 + 1)
    {
      v24 = v4 - v3 + 1;
    }

    else
    {
      v24 = v4;
    }

    v14 = 4 * (v3 + ~v4 + v24) + 4;
    goto LABEL_10;
  }
}

void srtp_ekt_write_data(unsigned __int16 **a1, char *a2, unsigned int a3, _DWORD *a4, unint64_t a5)
{
  if (a1)
  {
    v9 = a3;
    if (a3)
    {
      bzero(a2, a3);
    }

    v10 = &a2[v9];
    v11 = *(*a1 + 2);
    if (v11 == 1)
    {
      v12 = 24;
    }

    else
    {
      v12 = 0;
    }

    memcpy(v10, a1 + 10, v12);
    if (mod_srtp)
    {
      v13 = off_2808D35A0;
      if (v11 == 1)
      {
        v14 = 0;
        v15 = v10;
        do
        {
          v16 = &bit_string[v14];
          *v16 = __const_srtp_nibble_to_hex_char_buf[*v15 >> 4];
          v17 = *v15++;
          v16[1] = __const_srtp_nibble_to_hex_char_buf[v17 & 0xF];
          v18 = v14 + 2;
          v19 = v14 >= 0x2E;
          v14 += 2;
        }

        while (!v19);
      }

      else
      {
        v18 = 0;
      }

      bit_string[v18] = 0;
      srtp_err_report(3, "%s: writing EKT EMK: %s,\n", v13, bit_string);
    }

    v20 = &v10[v12];
    v21 = bswap32(a5 >> 16);
    *v20 = v21;
    if (mod_srtp)
    {
      bit_string[0] = __const_srtp_nibble_to_hex_char_buf[v21 >> 4];
      byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[*v20 & 0xF];
      byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[v20[1] >> 4];
      byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[v20[1] & 0xF];
      byte_280905CDC = __const_srtp_nibble_to_hex_char_buf[v20[2] >> 4];
      byte_280905CDD = __const_srtp_nibble_to_hex_char_buf[v20[2] & 0xF];
      byte_280905CDE = __const_srtp_nibble_to_hex_char_buf[v20[3] >> 4];
      byte_280905CDF = __const_srtp_nibble_to_hex_char_buf[v20[3] & 0xF];
      byte_280905CE0 = 0;
      srtp_err_report(3, "%s: writing EKT ROC: %s,\n", off_2808D35A0, bit_string);
      v22 = mod_srtp;
      v23 = bswap32(a5) >> 16;
      *(v20 + 2) = v23;
      if (v22)
      {
        bit_string[0] = __const_srtp_nibble_to_hex_char_buf[v23 >> 4];
        byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[v20[4] & 0xF];
        byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[v20[5] >> 4];
        byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[v20[5] & 0xF];
        byte_280905CDC = 0;
        srtp_err_report(3, "%s: writing EKT ISN: %s,\n", off_2808D35A0, bit_string);
        v24 = mod_srtp;
        v25 = bswap32(**a1) >> 16;
        *(v20 + 3) = v25;
        if (v24)
        {
          bit_string[0] = __const_srtp_nibble_to_hex_char_buf[v25 >> 4];
          byte_280905CD9 = __const_srtp_nibble_to_hex_char_buf[v20[6] & 0xF];
          byte_280905CDA = __const_srtp_nibble_to_hex_char_buf[v20[7] >> 4];
          byte_280905CDB = __const_srtp_nibble_to_hex_char_buf[v20[7] & 0xF];
          byte_280905CDC = 0;
          srtp_err_report(3, "%s: writing EKT SPI: %s,\n", off_2808D35A0, bit_string);
        }

        goto LABEL_23;
      }
    }

    else
    {
      *(v20 + 2) = bswap32(a5) >> 16;
    }

    *(v20 + 3) = bswap32(**a1) >> 16;
LABEL_23:
    *a4 += v12 + 8;
    return;
  }

  if (mod_srtp)
  {
    srtp_err_report(3, "%s: EKT not in use\n", off_2808D35A0);
  }
}

double srtp_err_report(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v7 = *MEMORY[0x277D85DE8];
  if (srtp_err_report_handler)
  {
    va_copy(v5, va);
    if (vsnprintf(__str, 0x200uLL, __format, va) >= 1)
    {
      v4 = strlen(__str);
      if (v4)
      {
        if (__str[v4 - 1] == 10)
        {
          __str[v4 - 1] = 0;
        }
      }

      srtp_err_report_handler(a1, __str);
      return 0.0;
    }
  }

  return result;
}

uint64_t srtp_hmac_alloc(uint64_t *a1, int a2, int a3)
{
  if (srtp_mod_hmac)
  {
    srtp_err_report(3, "%s: allocating auth func with key length %d\n", off_2808D3590, a2);
    if (srtp_mod_hmac)
    {
      srtp_err_report(3, "%s:                           tag length %d\n", off_2808D3590, a3);
    }
  }

  if (a3 > 20)
  {
    return 2;
  }

  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0xAA3F5916uLL);
  if (v7)
  {
    v8 = v7;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v7);
    }

    *a1 = v8;
    v9 = malloc_type_malloc(0x70uLL, 0xB4E622C9uLL);
    if (v9)
    {
      v10 = v9;
      result = 0;
      *v10 = 104;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 13) = 0;
      *(v10 + 8) = 0u;
      v11 = *a1;
      *v11 = srtp_hmac;
      v11[1] = v10 + 8;
      *(v11 + 4) = a3;
      *(v11 + 5) = a2;
      *(v11 + 6) = 0;
      return result;
    }

    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/boringssl/src/crypto/mem.cc", 217);
    v12 = *a1;
    *(*a1 + 8) = 0;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v12);
    }

    free(v12);
  }

  else if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x20uLL);
  }

  *a1 = 0;
  return 3;
}

uint64_t srtp_hmac_dealloc(char **a1)
{
  HMAC_CTX_free(a1[1]);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
  }

  free(a1);
  return 0;
}

uint64_t srtp_hmac_init(HMAC_CTX *a1, const void *a2, int a3)
{
  v6 = EVP_sha1();
  HMAC_Init_ex(a1, a2, a3, v6, 0);
  if (v7)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t srtp_hmac_compute(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a4 <= 20)
  {
    v9 = (a1 + 8);
    (*(*(a1 + 8) + 24))(a1 + 8, a2, a3);
    (v9->digest->update)(v9, v23);
    pkey_type = v9->digest->pkey_type;
    final_high = HIDWORD(v9->digest->final);
    if (final_high)
    {
      bzero(*(a1 + 16), final_high);
    }

    if (!EVP_MD_CTX_copy_ex(v9, (a1 + 72)))
    {
      return 7;
    }

    (v9->digest->init)(v9, v23, pkey_type);
    (v9->digest->update)(v9, __src);
    digest = v9->digest;
    v13 = v9->digest->pkey_type;
    v14 = HIDWORD(digest->final);
    if (v14)
    {
      bzero(*(a1 + 16), v14);
    }

    if (v13 < a4)
    {
      return 7;
    }

    if (a4 < 1)
    {
      if (srtp_mod_hmac)
      {
        v21 = 0;
        v16 = off_2808D3590;
LABEL_18:
        bit_string[v21] = 0;
        srtp_err_report(3, "%s: output: %s\n", v16, bit_string);
      }
    }

    else
    {
      memcpy(a5, __src, a4);
      if (srtp_mod_hmac)
      {
        v15 = 0;
        v16 = off_2808D3590;
        v17 = (((2 * a4) - 1) >> 1) + 1;
        v18 = __src;
        v19 = bit_string;
        do
        {
          v20 = *v18++;
          *v19 = __const_srtp_nibble_to_hex_char_buf[v20 >> 4];
          v19[1] = __const_srtp_nibble_to_hex_char_buf[v20 & 0xF];
          v15 -= 2;
          v19 += 2;
          --v17;
        }

        while (v17);
        v21 = -v15;
        goto LABEL_18;
      }
    }

    return 0;
  }

  return 2;
}

uint64_t srtp_hmac_update(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (srtp_mod_hmac)
  {
    v4 = off_2808D3590;
    if (a3 <= 512)
    {
      v5 = (2 * a3);
    }

    else
    {
      v5 = 1022;
    }

    v6 = a1;
    if (v5 < 1)
    {
      v8 = a2;
      v7 = 0;
    }

    else
    {
      v7 = 0;
      v8 = a2;
      v9 = a2;
      do
      {
        v10 = &bit_string[v7];
        *v10 = __const_srtp_nibble_to_hex_char_buf[*v9 >> 4];
        v11 = *v9++;
        v10[1] = __const_srtp_nibble_to_hex_char_buf[v11 & 0xF];
        v7 += 2;
      }

      while (v7 < v5);
    }

    bit_string[v7] = 0;
    srtp_err_report(3, "%s: input: %s\n", v4, bit_string);
    a2 = v8;
    a1 = v6;
  }

  (*(*(a1 + 8) + 24))(a1 + 8, a2, a3);
  return 0;
}

uint64_t srtp_hmac_start(HMAC_CTX *a1)
{
  HMAC_Init_ex(a1, 0, 0, 0, 0);
  if (v1)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t srtp_null_auth_alloc(void *a1, int a2, int a3)
{
  if (srtp_mod_auth)
  {
    srtp_err_report(3, "%s: allocating auth func with key length %d\n", off_2808D3560, a2);
    if (srtp_mod_auth)
    {
      srtp_err_report(3, "%s:                           tag length %d\n", off_2808D3560, a3);
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x21uLL, 0xAA3F5916uLL);
  if (v6)
  {
    v7 = v6;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
    }

    result = 0;
    *a1 = v7;
    *v7 = srtp_null_auth;
    v7[1] = v7 + 4;
    *(v7 + 5) = a2;
    *(v7 + 6) = a3;
    *(v7 + 4) = a3;
  }

  else
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x21uLL);
    }

    return 3;
  }

  return result;
}

uint64_t srtp_null_auth_dealloc(_BYTE *a1)
{
  a1[32] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if (srtp_mod_alloc)
  {
    v1 = a1;
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
    a1 = v1;
  }

  free(a1);
  return 0;
}

uint64_t srtp_null_cipher_alloc(void *a1, int a2)
{
  if (srtp_mod_cipher)
  {
    srtp_err_report(3, "%s: allocating cipher with key length %d\n", off_2808D3570, a2);
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
  if (v4)
  {
    v5 = v4;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v4);
    }

    result = 0;
    *a1 = v5;
    *v5 = srtp_null_cipher;
    v5[1] = 1;
    *(v5 + 4) = a2;
    *(v5 + 5) = 0;
  }

  else
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
    }

    *a1 = 0;
    return 3;
  }

  return result;
}

uint64_t srtp_null_cipher_dealloc(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (srtp_mod_alloc)
  {
    v1 = a1;
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
    a1 = v1;
  }

  free(a1);
  return 0;
}

uint64_t srtp_null_cipher_init()
{
  if (srtp_mod_cipher)
  {
    srtp_err_report(3, "%s: initializing null cipher\n", off_2808D3570);
  }

  return 0;
}

uint64_t srtp_rdb_add_index(uint64_t a1, unsigned int a2)
{
  v2 = a2 - *a1;
  if (a2 < *a1)
  {
    return 9;
  }

  v4 = v2 - 127;
  if (v2 <= 0x7F)
  {
    *(a1 + 4 * (v2 >> 5) + 8) |= 1 << v2;
    return 0;
  }

  v5 = (a1 + 8);
  if (v4 < 128)
  {
    v6 = v4 >> 5;
    v7 = v4 & 0x1F;
    if ((v4 & 0x1F) == 0)
    {
      if (v6 > 3)
      {
LABEL_25:
        v24 = a1;
        bzero(v5 - 4 * (v4 >> 5) + 16, 4 * (v4 >> 5));
        a1 = v24;
        goto LABEL_26;
      }

      v14 = 0;
      v15 = (4 - v6);
      if (v15 < 8)
      {
        goto LABEL_22;
      }

      if ((-4 * v6) < 0x20)
      {
        goto LABEL_22;
      }

      v14 = v15 & 0x7FFFFFF8;
      v16 = (a1 + 24);
      v17 = (a1 + 24 + 4 * v6);
      v18 = v14;
      do
      {
        v19 = *v17;
        *(v16 - 1) = *(v17 - 1);
        *v16 = v19;
        v17 += 2;
        v16 += 2;
        v18 -= 8;
      }

      while (v18);
      if (v14 != v15)
      {
LABEL_22:
        v20 = v15 - v14;
        v21 = (a1 + 4 * v14 + 8);
        v22 = (a1 + 4 * (v14 + v6) + 8);
        do
        {
          v23 = *v22++;
          *v21++ = v23;
          --v20;
        }

        while (v20);
      }

LABEL_14:
      if (v6 < 1)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v8 = (3 - v6);
    if (v6 <= 2)
    {
      v9 = 32 - v7;
      if (v8 > 7)
      {
        v10 = 0;
        v25 = 4 * v6;
        if ((-4 * v6) >= 0x20 && v25 <= 0xFFFFFFFFFFFFFFDCLL)
        {
          v26 = vdupq_n_s32(v9);
          v10 = v8 & 0xFFFFFFF8;
          v27 = a1 + 28;
          v28 = v25 + a1 + 24;
          v29 = vnegq_s32(vdupq_n_s32(v7));
          v30 = v10;
          do
          {
            v31 = veorq_s8(vshlq_u32(*(v28 + 4), v26), vshlq_u32(*v28, v29));
            *(v27 - 20) = veorq_s8(vshlq_u32(*(v28 - 12), v26), vshlq_u32(*(v28 - 16), v29));
            *(v27 - 4) = v31;
            v27 += 32;
            v28 += 32;
            v30 -= 8;
          }

          while (v30);
          if (v10 == v8)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v8 - v10;
      v12 = (a1 + 4 * v10 + 8);
      v13 = (a1 + 4 * (v10 + v6) + 12);
      do
      {
        *v12++ = (*v13 << v9) ^ (*(v13 - 1) >> v7);
        ++v13;
        --v11;
      }

      while (v11);
    }

LABEL_13:
    *(v5 + v8) = *(a1 + 20) >> v7;
    goto LABEL_14;
  }

  *v5 = 0;
  *(a1 + 16) = 0;
LABEL_26:
  *(a1 + 20) |= 0x80000000;
  *a1 += v4;
  return 0;
}

uint64_t srtp_rdbx_add_index(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    v3 = a2 + *(a1 + 8);
  }

  else
  {
    *a1 += a2;
    bitvector_left_shift((a1 + 8), a2);
    v3 = *(a1 + 8);
  }

  *(*(a1 + 16) + 4 * ((v3 - 1) >> 5)) |= 1 << (v3 - 1);
  return 0;
}

uint64_t srtp_rdbx_estimate_index(unsigned __int16 *a1, unint64_t *a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1 <= 0x8000uLL)
  {
    *a2 = a3;
    return a3 - *a1;
  }

  else
  {
    v4 = v3 >> 16;
    v5 = *a1;
    v6 = (v3 >> 15) & 1;
    v7 = a3 - v5;
    if (v5 - 0x8000 <= a3)
    {
      v8 = v4;
    }

    else
    {
      v8 = v4 + 1;
    }

    if (v5 - 0x8000 > a3)
    {
      v7 = (a3 | 0x10000) - v5;
    }

    v9 = a3 - v5;
    if (v9 > 0x8000)
    {
      LODWORD(v4) = v4 - 1;
      v9 -= 0x10000;
    }

    v10 = v6 == 0;
    if (v6)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (v10)
    {
      result = v9;
    }

    else
    {
      result = v7;
    }

    *a2 = a3 | (v11 << 16);
  }

  return result;
}

uint64_t srtp_rdbx_set_roc_seq(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < *a1 >> 16)
  {
    return 10;
  }

  *a1 = a3 | (a2 << 16);
  bzero(*(a1 + 16), *(a1 + 8) >> 3);
  return 0;
}

uint64_t srtp_stream_dealloc(void *a1, uint64_t a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_58;
  }

  LODWORD(v5) = *(a1 + 4);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = a1[1];
    if (!a2 || v5 != *(a2 + 16) || (v9 = *(a2 + 8)) == 0)
    {
      v10 = 0;
      v11 = *(v8 + v6);
      v12 = 1;
      if (!v11)
      {
        goto LABEL_15;
      }

LABEL_13:
      if (!*v11)
      {
        return 2;
      }

      result = (*(*v11 + 8))(v11);
      if (result)
      {
        return result;
      }

      goto LABEL_15;
    }

    v10 = (v9 + v6);
    v11 = *(v8 + v6);
    if (v11 == *(v9 + v6))
    {
      goto LABEL_18;
    }

    v12 = 0;
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (v12)
    {
      v14 = *(v8 + v6 + 16);
      v15 = 1;
      if (!v14)
      {
        goto LABEL_21;
      }

LABEL_20:
      result = (*(*v14 + 8))(v14);
      if (result)
      {
        return result;
      }

      goto LABEL_21;
    }

LABEL_18:
    v14 = *(v8 + v6 + 16);
    if (v14 == v10[2])
    {
      goto LABEL_24;
    }

    v15 = 0;
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v15)
    {
      v16 = *(v8 + v6 + 8);
      v17 = 1;
      if (!v16)
      {
        goto LABEL_28;
      }

LABEL_26:
      if (!*v16)
      {
        return 2;
      }

      result = (*(*v16 + 8))(v16);
      if (result)
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_24:
    v16 = *(v8 + v6 + 8);
    if (v16 == v10[1])
    {
      goto LABEL_31;
    }

    v17 = 0;
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_28:
    if (v17)
    {
      v18 = *(v8 + v6 + 24);
      v19 = 1;
      if (!v18)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_31:
    v18 = *(v8 + v6 + 24);
    if (v18 == v10[3])
    {
      goto LABEL_37;
    }

    v19 = 0;
    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_33:
    if (!*v18)
    {
      return 2;
    }

    result = (*(*v18 + 8))(v18);
    if (result)
    {
      return result;
    }

LABEL_35:
    if (!v19)
    {
LABEL_37:
      v21 = 0;
      v20 = *(v8 + v6 + 32);
      if (v20 == v10[4])
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v20 = *(v8 + v6 + 32);
    v21 = 1;
LABEL_38:
    if (v20)
    {
      result = (*(*v20 + 8))(v20);
      if (result)
      {
        return result;
      }
    }

LABEL_40:
    v22 = v8 + v6;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    v23 = *(v8 + v6 + 64);
    if (v23)
    {
      v24 = *(v22 + 72);
      if (v24)
      {
        bzero(v23, v24);
        v23 = *(v22 + 64);
      }

      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v23);
      }

      free(v23);
      *(v22 + 64) = 0;
    }

    v25 = *(v22 + 80);
    if (v21)
    {
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    else if (!v25 || v25 == v10[10])
    {
      goto LABEL_5;
    }

    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v25);
    }

    free(v25);
LABEL_5:
    ++v7;
    v5 = *(a1 + 4);
    v6 += 88;
  }

  while (v7 < v5);
  v4 = a1[1];
LABEL_55:
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v4);
  }

  free(v4);
LABEL_58:
  v26 = a1[5];
  if (v26)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v26);
    }

    free(v26);
  }

  a1[5] = 0;
  *(a1 + 8) = 0;
  v27 = a1[13];
  if (!a2)
  {
    if (!v27)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v27);
    }

    free(v27);
    goto LABEL_70;
  }

  if (v27 && v27 != *(a2 + 104))
  {
    goto LABEL_67;
  }

LABEL_70:
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, a1);
  }

  free(a1);
  return 0;
}

uint64_t srtp_stream_alloc(void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x80uLL, 0xAA3F5916uLL);
  if (!v4)
  {
    if (srtp_mod_alloc)
    {
      v8 = 3;
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x80uLL);
      return v8;
    }

    return 3;
  }

  v5 = v4;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v4);
  }

  *a1 = v5;
  if (*(a2 + 56))
  {
    *(v5 + 4) = 1;
    v6 = v5 + 2;
    v7 = 88;
  }

  else
  {
    v9 = *(a2 + 72);
    *(v5 + 4) = v9;
    v6 = v5 + 2;
    if (!v9)
    {
LABEL_51:
      v5[1] = 0;
LABEL_52:
      srtp_stream_dealloc(v5, 0);
      return 3;
    }

    v7 = 88 * v9;
  }

  v10 = malloc_type_calloc(1uLL, v7, 0xAA3F5916uLL);
  if (!v10)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v7);
    }

    goto LABEL_51;
  }

  v12 = v10;
  if (srtp_mod_alloc)
  {
    v11.n128_f64[0] = srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v10);
  }

  v5[1] = v12;
  if (!*(v5 + 4))
  {
    LODWORD(v26) = 0;
LABEL_55:
    v5[12] = 0;
    if (*(a2 + 104))
    {
      v27 = *(a2 + 112);
      if (v27 >= 1)
      {
        v28 = 4 * v27;
        v29 = malloc_type_calloc(1uLL, 4 * v27, 0xAA3F5916uLL);
        if (v29)
        {
          if (srtp_mod_alloc)
          {
            v30 = v29;
            srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v29);
            v29 = v30;
          }

          v5[13] = v29;
          memcpy(v29, *(a2 + 104), 4 * *(a2 + 112));
          *(v5 + 28) = *(a2 + 112);
          v31 = *(a2 + 8);
          if (v31 == 6)
          {
            v32 = 30;
            v31 = 1;
          }

          else if (v31 == 7)
          {
            v32 = 46;
            v31 = 5;
          }

          else
          {
            v32 = *(a2 + 12);
          }

          if (!*v6)
          {
            return 0;
          }

          v40 = 0;
          while (crypto_kernel == 1)
          {
            v41 = qword_280905CC0;
            if (!qword_280905CC0)
            {
              goto LABEL_88;
            }

            while (*v41 != v31)
            {
              v41 = *(v41 + 16);
              if (!v41)
              {
                goto LABEL_88;
              }
            }

            v42 = *(v41 + 8);
            if (!v42)
            {
              goto LABEL_88;
            }

            v8 = (*v42)(v5[1] + 88 * v40 + 8, v32, 0);
            if (v8)
            {
              goto LABEL_89;
            }

            if (++v40 >= *v6)
            {
              return v8;
            }
          }

          goto LABEL_91;
        }

        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v28);
        }

        v5[13] = 0;
        goto LABEL_52;
      }
    }

    if (v26)
    {
      v33 = v5[1];
      v34 = v26;
      if (v26 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = v26 & 0xFFFFFFFE;
        v36 = (v33 + 96);
        v37 = v34 & 0xFFFFFFFE;
        do
        {
          *(v36 - 11) = 0;
          *v36 = 0;
          v36 += 22;
          v37 -= 2;
        }

        while (v37);
        if (v35 == v34)
        {
          goto LABEL_71;
        }
      }

      v38 = v34 - v35;
      v39 = (v33 + 88 * v35 + 8);
      do
      {
        *v39 = 0;
        v39 += 11;
        --v38;
      }

      while (v38);
    }

LABEL_71:
    v8 = 0;
    v5[13] = 0;
    *(v5 + 28) = 0;
    return v8;
  }

  v13 = 0;
  while (crypto_kernel == 1)
  {
    v14 = qword_280905CC0;
    if (!qword_280905CC0)
    {
      goto LABEL_88;
    }

    v15 = v5[1] + 88 * v13;
    while (*v14 != *(a2 + 8))
    {
      v14 = *(v14 + 16);
      if (!v14)
      {
        goto LABEL_88;
      }
    }

    v16 = *(v14 + 8);
    if (!v16)
    {
      goto LABEL_88;
    }

    v17 = (*v16)(v5[1] + 88 * v13, *(a2 + 12), *(a2 + 24), v11);
    if (v17)
    {
      goto LABEL_93;
    }

    if (crypto_kernel != 1)
    {
      break;
    }

    v18 = qword_280905CC8;
    if (!qword_280905CC8)
    {
      goto LABEL_88;
    }

    while (*v18 != *(a2 + 16))
    {
      v18 = *(v18 + 16);
      if (!v18)
      {
        goto LABEL_88;
      }
    }

    v19 = *(v18 + 8);
    if (!v19)
    {
      goto LABEL_88;
    }

    v17 = (*v19)(v15 + 16, *(a2 + 20), *(a2 + 24));
    if (v17)
    {
      goto LABEL_93;
    }

    if (crypto_kernel != 1)
    {
      break;
    }

    v20 = qword_280905CC0;
    if (!qword_280905CC0)
    {
      goto LABEL_88;
    }

    while (*v20 != *(a2 + 32))
    {
      v20 = *(v20 + 16);
      if (!v20)
      {
        goto LABEL_88;
      }
    }

    v21 = *(v20 + 8);
    if (!v21)
    {
      goto LABEL_88;
    }

    v17 = (*v21)(v15 + 24, *(a2 + 36), *(a2 + 48));
    if (v17)
    {
      goto LABEL_93;
    }

    if (crypto_kernel != 1)
    {
      break;
    }

    v22 = qword_280905CC8;
    if (!qword_280905CC8)
    {
      goto LABEL_88;
    }

    while (*v22 != *(a2 + 40))
    {
      v22 = *(v22 + 16);
      if (!v22)
      {
        goto LABEL_88;
      }
    }

    v23 = *(v22 + 8);
    if (!v23)
    {
LABEL_88:
      v8 = 1;
      goto LABEL_89;
    }

    v17 = (*v23)(v15 + 32, *(a2 + 44), *(a2 + 48));
    if (v17)
    {
LABEL_93:
      v8 = v17;
      goto LABEL_89;
    }

    *(v15 + 64) = 0;
    v24 = malloc_type_calloc(1uLL, 0x10uLL, 0xAA3F5916uLL);
    if (!v24)
    {
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x10uLL);
      }

      *(v15 + 80) = 0;
      goto LABEL_52;
    }

    v25 = v24;
    if (srtp_mod_alloc)
    {
      v11.n128_f64[0] = srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v24);
    }

    *(v15 + 80) = v25;
    ++v13;
    v26 = *v6;
    if (v13 >= v26)
    {
      goto LABEL_55;
    }
  }

LABEL_91:
  v8 = 5;
LABEL_89:
  srtp_stream_dealloc(v5, 0);
  return v8;
}

uint64_t srtp_stream_clone(uint64_t a1, unsigned int a2, void **a3)
{
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: cloning stream (SSRC: 0x%08x)\n", off_2808D35A0, bswap32(a2));
  }

  v6 = malloc_type_calloc(1uLL, 0x80uLL, 0xAA3F5916uLL);
  if (!v6)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x80uLL);
    }

    return 3;
  }

  v7 = v6;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v6);
  }

  *a3 = v7;
  v8 = *(a1 + 16);
  *(v7 + 4) = v8;
  if (!v8)
  {
LABEL_28:
    *(v7 + 1) = 0;
    srtp_stream_dealloc(*a3, a1);
    result = 3;
    goto LABEL_37;
  }

  v9 = 88 * v8;
  v10 = malloc_type_calloc(1uLL, v9, 0xAA3F5916uLL);
  if (!v10)
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v9);
    }

    goto LABEL_28;
  }

  v11 = v10;
  v27 = a2;
  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v10);
  }

  *(v7 + 1) = v11;
  if (!*(a1 + 16))
  {
LABEL_20:
    v24 = *(a1 + 32);
    if (v24)
    {
      result = bitvector_alloc((v7 + 32), v24);
      if (!result)
      {
        *(v7 + 8) = 0;
        *(v7 + 9) = 0;
        *(v7 + 22) = *(a1 + 88);
        *(v7 + 3) = 0;
        *(v7 + 14) = 0;
        *v7 = v27;
        *(v7 + 29) = 0;
        *(v7 + 12) = *(a1 + 48);
        *(v7 + 10) = *(a1 + 80);
        *(v7 + 6) = *(a1 + 96);
        *(v7 + 28) = *(a1 + 112);
        a3 = (v7 + 120);
        goto LABEL_37;
      }

      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    srtp_stream_dealloc(*a3, a1);
    result = v26;
    goto LABEL_37;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *(v7 + 1);
    v15 = v14 + v12;
    v16 = *(a1 + 8);
    *v15 = *(v16 + v12);
    *(v15 + 16) = *(v16 + v12 + 16);
    *(v15 + 32) = *(v16 + v12 + 32);
    v17 = *(v16 + v12 + 72);
    *(v15 + 72) = v17;
    if (!v17)
    {
      *(v15 + 64) = 0;
      goto LABEL_18;
    }

    v18 = malloc_type_calloc(1uLL, v17, 0xAA3F5916uLL);
    if (!v18)
    {
      break;
    }

    if (srtp_mod_alloc)
    {
      v19 = v18;
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v18);
      v18 = v19;
    }

    *(v14 + v12 + 64) = v18;
    memcpy(v18, *(v16 + v12 + 64), *(v15 + 72));
LABEL_18:
    v20 = v14 + v12;
    v21 = *(v16 + v12 + 40);
    *(v20 + 48) = *(v16 + v12 + 48);
    *(v20 + 40) = v21;
    v22 = *(v16 + v12 + 52);
    *(v20 + 60) = *(v16 + v12 + 60);
    *(v20 + 52) = v22;
    v23 = *(v16 + v12 + 80);
    if (!v23)
    {
      srtp_stream_dealloc(*a3, a1);
      result = 2;
      goto LABEL_37;
    }

    *(v20 + 80) = v23;
    ++v13;
    v12 += 88;
    if (v13 >= *(a1 + 16))
    {
      goto LABEL_20;
    }
  }

  if (srtp_mod_alloc)
  {
    srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v17);
  }

  *(v14 + v12 + 64) = 0;
  srtp_stream_dealloc(*a3, a1);
  result = 5;
LABEL_37:
  *a3 = 0;
  return result;
}

uint64_t srtp_stream_init_keys(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v74 = 0;
  v3 = (a1 + 88 * a3);
  v4 = v3[10];
  *v4 = 0xFFFFFFFFFFFFLL;
  *(v4 + 2) = 0;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = malloc_type_calloc(1uLL, *(a2 + 16), 0xAA3F5916uLL);
    if (!v7)
    {
      if (srtp_mod_alloc)
      {
        srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, v5);
      }

      v3[8] = 0;
      return 5;
    }

    if (srtp_mod_alloc)
    {
      v8 = v7;
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v7);
      v7 = v8;
    }

    v3[8] = v7;
    memcpy(v7, *(a2 + 8), *(a2 + 16));
    v9 = *(a2 + 16);
  }

  else
  {
    v9 = 0;
    v3[8] = 0;
  }

  *(v3 + 18) = v9;
  v10 = *(*v3 + 4);
  v11 = *(v3[3] + 4);
  v12 = *(**v3 + 80);
  v13 = v10 - 12;
  if (v12 == 7)
  {
    v14 = v10 - 12;
  }

  else
  {
    v14 = *(*v3 + 4);
  }

  if (v12 != 6)
  {
    v13 = v14;
  }

  if ((v12 - 4) < 2 || v12 == 1)
  {
    v16 = v10 - 14;
  }

  else
  {
    v16 = *(*v3 + 4);
  }

  if (v12 <= 5)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  v18 = (v10 - v17);
  if (v10 <= 30)
  {
    v19 = 30;
  }

  else
  {
    v19 = 46;
  }

  if (v11 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = 46;
  }

  if (mod_srtp)
  {
    srtp_err_report(3, "%s: srtp key len: %d\n", off_2808D35A0, v10);
    if (mod_srtp)
    {
      srtp_err_report(3, "%s: srtcp key len: %d\n", off_2808D35A0, v11);
      if (mod_srtp)
      {
        srtp_err_report(3, "%s: base key len: %d\n", off_2808D35A0, v17);
        if (mod_srtp)
        {
          srtp_err_report(3, "%s: kdf key len: %d\n", off_2808D35A0, v20);
          if (mod_srtp)
          {
            srtp_err_report(3, "%s: rtp salt len: %d\n", off_2808D35A0, v18);
          }
        }
      }
    }
  }

  memset(v76, 0, sizeof(v76));
  __memcpy_chk();
  result = 5;
  if (v20 == 46)
  {
    v22 = 5;
    if (crypto_kernel != 1)
    {
      return result;
    }
  }

  else
  {
    v22 = 1;
    if (crypto_kernel != 1)
    {
      return result;
    }
  }

  v23 = qword_280905CC0;
  if (qword_280905CC0)
  {
    v24 = v11;
    while (*v23 != v22)
    {
      v23 = *(v23 + 16);
      if (!v23)
      {
        return 5;
      }
    }

    v25 = *(v23 + 8);
    if (!v25)
    {
      return 5;
    }

    if ((*v25)(&v74, v20, 0))
    {
      return 5;
    }

    v26 = v74;
    if (!v74 || !*v74)
    {
      return 5;
    }

    if (!v74[1])
    {
      goto LABEL_54;
    }

    v27 = (*(*v74 + 16))(v74[1], v76);
    v26 = v74;
    if (v27)
    {
      if (v74)
      {
LABEL_54:
        if (*v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      return 5;
    }

    LODWORD(v73) = v17;
    v75[0] = 0uLL;
    if (!v74)
    {
      return 5;
    }

    if (!*v74)
    {
      return 5;
    }

    v28 = v74[1];
    if (!v28 || (*(*v74 + 48))(v28, v75, 0))
    {
      return 5;
    }

    if (v17)
    {
      bzero(v76, v17);
    }

    if (!v74)
    {
      return 5;
    }

    if (!*v74)
    {
      return 5;
    }

    v29 = v74[1];
    if (!v29 || (*(*v74 + 32))(v29, v76, &v73))
    {
      return 5;
    }

    if (mod_srtp)
    {
      v31 = off_2808D35A0;
      v32 = srtp_octet_string_hex_string(v76, v17);
      v30.n128_f64[0] = srtp_err_report(3, "%s: cipher key: %s\n", v31, v32);
    }

    if (v18 >= 1)
    {
      if (mod_srtp)
      {
        v30.n128_f64[0] = srtp_err_report(3, "%s: found rtp_salt_len > 0, generating salt\n", off_2808D35A0);
      }

      LODWORD(v73) = v18;
      v75[0] = 0x200000000000000uLL;
      if (!v74)
      {
        return 5;
      }

      if (!*v74)
      {
        return 5;
      }

      v33 = v74[1];
      if (!v33)
      {
        return 5;
      }

      if ((*(*v74 + 48))(v33, v75, 0, v30))
      {
        return 5;
      }

      v34 = (v76 + v17);
      bzero(v34, v18);
      if (!v74)
      {
        return 5;
      }

      if (!*v74)
      {
        return 5;
      }

      v35 = v74[1];
      if (!v35 || (*(*v74 + 32))(v35, v76 + v17, &v73))
      {
        return 5;
      }

      v3[5] = *v34;
      *(v3 + 12) = v34[2];
      if (mod_srtp)
      {
        v36 = off_2808D35A0;
        v37 = srtp_octet_string_hex_string(v76 + v17, v18);
        v30.n128_f64[0] = srtp_err_report(3, "%s: cipher salt: %s\n", v36, v37);
      }
    }

    v38 = *v3;
    if (!*v3)
    {
      return 5;
    }

    if (!*v38)
    {
      return 5;
    }

    v39 = v38[1];
    if (!v39 || (*(*v38 + 16))(v39, v76, v30))
    {
      return 5;
    }

    v40 = v3[1];
    if (v40)
    {
      v73 = 0;
      v41 = *v40;
      v42 = **v3;
      if (*v40 == v42)
      {
        v45 = &v74;
      }

      else
      {
        v43 = *(v40 + 4);
        v44 = *(v41 + 80);
        if (v44 > 5)
        {
          if (v44 == 6 || (LODWORD(v17) = v43, v44 == 7))
          {
            LODWORD(v17) = v43 - 12;
          }
        }

        else if ((v44 - 4) < 2 || (LODWORD(v17) = v43, v44 == 1))
        {
          LODWORD(v17) = v43 - 14;
        }

        v46 = v43 - v17;
        if (v43 - v17 > v18)
        {
          v46 = v18;
          if ((*(v42 + 80) & 0xFFFFFFFE) != 6)
          {
            return 2;
          }
        }

        memset(v75, 0, sizeof(v75));
        __memcpy_chk();
        if (srtp_kdf_init(&v73, v75, v20))
        {
          return 5;
        }

        v45 = &v73;
        LODWORD(v18) = v46;
      }

      if (srtp_kdf_generate(v45, 6, v76, v17))
      {
        return 5;
      }

      if (mod_srtp)
      {
        v48 = off_2808D35A0;
        v49 = srtp_octet_string_hex_string(v76, v17);
        v47.n128_f64[0] = srtp_err_report(3, "%s: extensions cipher key: %s\n", v48, v49);
      }

      if (v18 >= 1)
      {
        if (mod_srtp)
        {
          srtp_err_report(3, "%s: found rtp_xtn_hdr_salt_len > 0, generating salt\n", off_2808D35A0);
        }

        v50 = v76 + v17;
        if (srtp_kdf_generate(v45, 7, v50, v18))
        {
          return 5;
        }

        if (mod_srtp)
        {
          v51 = off_2808D35A0;
          v52 = srtp_octet_string_hex_string(v50, v18);
          v47.n128_f64[0] = srtp_err_report(3, "%s: extensions cipher salt: %s\n", v51, v52);
        }
      }

      v53 = v3[1];
      if (!v53)
      {
        return 5;
      }

      if (!*v53)
      {
        return 5;
      }

      v54 = v53[1];
      if (!v54 || (*(*v53 + 16))(v54, v76, v47))
      {
        return 5;
      }

      if (v45 != &v74)
      {
        v55 = *v45;
        if (!*v45 || !*v55 || (*(*v55 + 8))(v55))
        {
          return 5;
        }

        *v45 = 0;
      }
    }

    if (srtp_kdf_generate(&v74, 1, v76, *(v3[2] + 5)))
    {
      return 5;
    }

    if (mod_srtp)
    {
      v57 = off_2808D35A0;
      v58 = srtp_octet_string_hex_string(v76, *(v3[2] + 5));
      v56.n128_f64[0] = srtp_err_report(3, "%s: auth key:   %s\n", v57, v58);
    }

    if ((*(*v3[2] + 16))(v3[2][1], v76, *(v3[2] + 5), v56))
    {
      return 5;
    }

    v59 = *(*v3[3] + 80);
    if (v59 > 5)
    {
      if (v59 == 6 || v59 == 7)
      {
        v24 = v11 - 12;
      }
    }

    else if ((v59 - 4) < 2 || v59 == 1)
    {
      v24 = v11 - 14;
    }

    v60 = v11 - v24;
    if (mod_srtp)
    {
      srtp_err_report(3, "%s: rtcp salt len: %d\n", off_2808D35A0, v11 - v24);
    }

    if (srtp_kdf_generate(&v74, 3, v76, v24))
    {
      return 5;
    }

    if (v60 >= 1)
    {
      if (mod_srtp)
      {
        srtp_err_report(3, "%s: found rtcp_salt_len > 0, generating rtcp salt\n", off_2808D35A0);
      }

      v62 = (v76 + v24);
      v63 = srtp_kdf_generate(&v74, 5, v62, v11 - v24);
      result = 5;
      if (v63)
      {
        return result;
      }

      *(v3 + 52) = *v62;
      *(v3 + 15) = v62[2];
    }

    if (mod_srtp)
    {
      v64 = off_2808D35A0;
      v65 = srtp_octet_string_hex_string(v76, v24);
      v61.n128_f64[0] = srtp_err_report(3, "%s: rtcp cipher key: %s\n", v64, v65);
      if (v60 >= 1)
      {
        if (mod_srtp)
        {
          v66 = off_2808D35A0;
          v67 = srtp_octet_string_hex_string(v76 + v24, v11 - v24);
          v61.n128_f64[0] = srtp_err_report(3, "%s: rtcp cipher salt: %s\n", v66, v67);
        }
      }
    }

    v68 = v3[3];
    if (!v68)
    {
      return 5;
    }

    if (!*v68)
    {
      return 5;
    }

    v69 = v68[1];
    if (!v69 || (*(*v68 + 16))(v69, v76, v61) || srtp_kdf_generate(&v74, 4, v76, *(v3[4] + 5)))
    {
      return 5;
    }

    if (mod_srtp)
    {
      v71 = off_2808D35A0;
      v72 = srtp_octet_string_hex_string(v76, *(v3[4] + 5));
      v70.n128_f64[0] = srtp_err_report(3, "%s: rtcp auth key:   %s\n", v71, v72);
    }

    if ((*(*v3[4] + 16))(v3[4][1], v76, *(v3[4] + 5), v70) || !v74 || !*v74)
    {
      return 5;
    }

    if ((*(*v74 + 8))())
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t srtp_kdf_init(void **a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 30)
  {
    v3 = 1;
    if (crypto_kernel == 1)
    {
      goto LABEL_7;
    }

    return 5;
  }

  if (a3 == 46)
  {
    v3 = 5;
    if (crypto_kernel == 1)
    {
      goto LABEL_7;
    }

    return 5;
  }

  if (a3 != 38)
  {
    return 2;
  }

  v3 = 4;
  if (crypto_kernel != 1)
  {
    return 5;
  }

LABEL_7:
  v4 = qword_280905CC0;
  if (!qword_280905CC0)
  {
    return 1;
  }

  while (*v4 != v3)
  {
    v4 = *(v4 + 16);
    if (!v4)
    {
      return 1;
    }
  }

  v6 = *(v4 + 8);
  if (!v6)
  {
    return 1;
  }

  result = (*v6)(a1, a3, 0);
  if (!result)
  {
    v9 = *a1;
    if (!*a1 || !*v9)
    {
      return 2;
    }

    v10 = v9[1];
    if (v10)
    {
      result = (*(*v9 + 16))(v10, a2);
      if (!result)
      {
        return result;
      }

      v9 = *a1;
      if (!*a1)
      {
        return result;
      }
    }

    else
    {
      result = 2;
    }

    if (*v9)
    {
      v11 = result;
      (*(*v9 + 8))(v9);
      return v11;
    }
  }

  return result;
}

uint64_t srtp_kdf_generate(uint64_t **a1, char a2, void *a3, unsigned int a4)
{
  v14 = a4;
  v13[0] = 0;
  v13[1] = 0;
  HIBYTE(v13[0]) = a2;
  v4 = *a1;
  if (!*a1)
  {
    return 2;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 2;
  }

  v6 = v4[1];
  if (!v6)
  {
    return 2;
  }

  result = (*(v5 + 48))(v6, v13, 0);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    bzero(a3, a4);
  }

  v11 = *a1;
  if (*a1 && *v11 && (v12 = v11[1]) != 0)
  {
    return (*(*v11 + 32))(v12, a3, &v14);
  }

  else
  {
    return 2;
  }
}

uint64_t srtp_stream_init(uint64_t a1, uint64_t a2)
{
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: initializing stream (SSRC: 0x%08x)\n", off_2808D35A0, *(a2 + 4));
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    if ((v4 - 0x8000) < 0xFFFFFFFFFFFF8040)
    {
      return 2;
    }
  }

  else
  {
    v4 = 128;
  }

  if (bitvector_alloc(a1 + 32, v4))
  {
    return 3;
  }

  *(a1 + 24) = 0;
  *a1 = bswap32(*(a2 + 4));
  *(a1 + 116) = 0;
  *(a1 + 48) = *(a2 + 28);
  *(a1 + 80) = *(a2 + 52);
  *(a1 + 84) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 96);
  if (v6 > 1)
  {
    result = 2;
  }

  else
  {
    *(a1 + 88) = v6;
    v7 = *(a2 + 56);
    if (v7)
    {
      *(a1 + 16) = 1;
      v13[1] = 0;
      v13[2] = 0;
      v13[0] = v7;
      result = srtp_stream_init_keys(*(a1 + 8), v13, 0);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = *(a2 + 64);
      v10 = *(a2 + 72);
      *(a1 + 16) = v10;
      if (!v10)
      {
        return 0;
      }

      v12 = 0;
      while (1)
      {
        result = srtp_stream_init_keys(*(a1 + 8), *(v11 + 8 * v12), v12);
        if (result)
        {
          break;
        }

        if (v12 <= 0xE && ++v12 < *(a1 + 16))
        {
          continue;
        }

        return 0;
      }
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = result;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v8);
    }

    free(v8);
    result = v9;
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return result;
}

double srtp_event_reporter(uint64_t a1)
{
  v2 = srtp_err_report(1, "srtp: in stream 0x%x: ", *(a1 + 8));
  v3 = *(a1 + 12);
  if (v3 > 3)
  {
    v4 = "\tunknown event reported to handler\n";
  }

  else
  {
    v4 = off_279EA2960[v3];
  }

  return srtp_err_report(1, v4, v2);
}

uint64_t srtp_protect_mki(uint64_t *a1, uint64_t a2, unsigned int *a3, int a4, unsigned int a5, __n128 a6)
{
  v94 = 0;
  if (mod_srtp)
  {
    a6.n128_f64[0] = srtp_err_report(3, "%s: function srtp_protect\n", off_2808D35A0);
  }

  v11 = *a3;
  if (*a3 < 12)
  {
    return 2;
  }

  v12 = *a2;
  v13 = 4 * (*a2 & 0xF);
  v14 = v13 + 12;
  v15 = v13 + 16;
  if ((*a2 & 0x10) != 0)
  {
    v14 = v15;
  }

  if (v14 > v11 || (v12 & 0x10) != 0 && v15 + 4 * (bswap32(*(a2 + 4 * (v12 & 0xF) + 14)) >> 16) > v11)
  {
    return 2;
  }

  v93 = 0;
  v91 = 0;
  v17 = *(a2 + 8);
  v18 = *a1;
  if (!*a1)
  {
LABEL_14:
    v19 = a1[1];
    if (!v19)
    {
      return 13;
    }

    v98.i64[0] = 0;
    result = srtp_stream_clone(v19, v17, &v98);
    if (result)
    {
      return result;
    }

    v18 = v98.i64[0];
    *(v98.i64[0] + 120) = *a1;
    *a1 = v18;
    goto LABEL_19;
  }

  while (*v18 != v17)
  {
    v18 = *(v18 + 120);
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  v20 = *(v18 + 84);
  if (v20 != 1)
  {
    if (!v20)
    {
LABEL_19:
      *(v18 + 84) = 1;
      goto LABEL_20;
    }

    if (srtp_event_handler)
    {
      v98 = a1;
      v98.i32[2] = bswap32(*v18);
      srtp_event_handler(&v98);
    }
  }

LABEL_20:
  if (a4)
  {
    if (*(v18 + 16) <= a5)
    {
      return 25;
    }

    v21 = (*(v18 + 8) + 88 * a5);
    if (!v21)
    {
      return 25;
    }
  }

  else
  {
    v21 = *(v18 + 8);
    if (!v21)
    {
      return 25;
    }
  }

  v92 = 0;
  if ((*(*v21 + 20) & 0xFFFFFFFE) == 6)
  {
    v100 = 0;
    if (mod_srtp)
    {
      a6.n128_f64[0] = srtp_err_report(3, "%s: function srtp_protect_aead\n", off_2808D35A0);
    }

    v99 = 0;
    v98 = 0uLL;
    v22 = v21[10];
    v23 = *v22 - 1;
    *v22 = v23;
    if (v23 >> 16)
    {
LABEL_41:
      LODWORD(v95) = *(v21[2] + 16);
      v26 = a2 + 4 * (*a2 & 0xFLL);
      v27 = (v26 + 12);
      if ((*a2 & 0x10) != 0)
      {
        v28 = &v27[2 * (bswap32(*(v26 + 14)) >> 16) + 2];
      }

      else
      {
        v28 = v26 + 12;
        v27 = 0;
      }

      v38 = *a3;
      if (v28 <= a2 + v38)
      {
        v100 = v38 - (v28 - a2);
        if (v100 >= 0)
        {
          v39 = srtp_rdbx_estimate_index((v18 + 24), &v99, bswap32(*(a2 + 2)) >> 16);
          if (v39 > 0)
          {
LABEL_63:
            srtp_rdbx_add_index(v18 + 24, v39);
            goto LABEL_64;
          }

          v73 = v39 + *(v18 + 32) - 1;
          if (v73 >= 0)
          {
            if (((*(*(v18 + 40) + 4 * (v73 >> 5)) >> v73) & 1) == 0)
            {
              goto LABEL_63;
            }

            if (*(v18 + 88))
            {
LABEL_64:
              v40 = v99;
              if (mod_srtp)
              {
                srtp_err_report(3, "%s: estimated packet index: %016llx\n", off_2808D35A0, v99);
              }

              v41 = srtp_calc_aead_iv(v21, &v98, v40, a2);
              v42 = bswap64(v40) >> 16;
              v99 = v42;
              v43 = *v21;
              if (!*v21)
              {
                return 8;
              }

              if (!*v43)
              {
                return 8;
              }

              v44 = v43[1];
              if (!v44)
              {
                return 8;
              }

              if ((*(*v43 + 48))(v44, &v98, 0, v41))
              {
                return 8;
              }

              v45 = v21[1];
              if (v45)
              {
                v46 = *(a2 + 8);
                v98.i32[0] = 0;
                v98.i32[1] = v46;
                v98.i64[1] = v42;
                if (!*v45)
                {
                  return 8;
                }

                v47 = v45[1];
                if (!v47 || (*(*v45 + 48))(v47, &v98, 0))
                {
                  return 8;
                }
              }

              if (!v27 || !v21[1] || (result = srtp_process_header_encryption(v18, v27, v21), !result))
              {
                v48 = *v21;
                if (*v21)
                {
                  if (*v48)
                  {
                    if (v48[1])
                    {
                      v49 = *(*v48 + 24);
                      if (v49)
                      {
                        if (!v49())
                        {
                          v50 = *v21;
                          if (*v21)
                          {
                            if (*v50)
                            {
                              v51 = v50[1];
                              if (v51)
                              {
                                if (!(*(*v50 + 32))(v51, v28, &v100))
                                {
                                  v52 = *v21;
                                  if (*v21)
                                  {
                                    if (*v52)
                                    {
                                      if (v52[1])
                                      {
                                        v53 = *(*v52 + 56);
                                        if (v53)
                                        {
                                          if (!v53())
                                          {
                                            v54 = *a3;
                                            v55 = v95;
                                            if (a4)
                                            {
                                              a4 = *(v21 + 18);
                                              if (a4)
                                              {
                                                memcpy((a2 + v54 + v95), v21[8], *(v21 + 18));
                                                LODWORD(v54) = *a3;
                                              }
                                            }

                                            result = 0;
                                            v56 = v54 + v55 + a4;
                                            goto LABEL_175;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                return 8;
              }

              return result;
            }

            return 9;
          }

          return 10;
        }
      }

      return 21;
    }

    if (v23)
    {
      v24 = *(v22 + 8) == 0;
    }

    else
    {
      v24 = 1;
    }

    if (!v24 || (v23 ? (v25 = 1) : (v25 = 2), *(v22 + 8) = v25, v23))
    {
      if (srtp_event_handler)
      {
        v95 = a1;
        v96 = bswap32(*v18);
        v97 = 1;
        srtp_event_handler(&v95);
      }

      goto LABEL_41;
    }

    v74 = srtp_event_handler;
    if (srtp_event_handler)
    {
      v95 = a1;
      v96 = bswap32(*v18);
      v97 = 2;
      v75 = &v95;
LABEL_134:
      v74(v75, a6);
      return 15;
    }

    return 15;
  }

  v29 = v21[10];
  v30 = *v29 - 1;
  *v29 = v30;
  if (!(v30 >> 16))
  {
    if (v30)
    {
      v31 = *(v29 + 8) == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v32 = v30 ? 1 : 2;
      *(v29 + 8) = v32;
      if (!v30)
      {
        v74 = srtp_event_handler;
        if (srtp_event_handler)
        {
          v98 = a1;
          v98.i64[1] = bswap32(*v18) | 0x200000000;
          v75 = &v98;
          goto LABEL_134;
        }

        return 15;
      }
    }

    if (srtp_event_handler)
    {
      v98 = a1;
      v98.i64[1] = bswap32(*v18) | 0x100000000;
      srtp_event_handler(&v98);
    }
  }

  v33 = *(v21[2] + 16);
  v34 = *(v18 + 48);
  if (v34)
  {
    v57 = a2 + 4 * (*a2 & 0xFLL);
    v36 = (v57 + 12);
    if ((*a2 & 0x10) != 0)
    {
      v35 = &v36[2 * (bswap32(*(v57 + 14)) >> 16) + 2];
    }

    else
    {
      v35 = v57 + 12;
      v36 = 0;
    }

    v37 = *a3;
    if (v35 > a2 + v37)
    {
      return 21;
    }

    v94 = v37 + a2 - v35;
    if (v94 < 0)
    {
      return 21;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = *a3;
  }

  v89 = v33;
  if (a4)
  {
    v58 = *(v21 + 18);
    if (v58)
    {
      memcpy((a2 + v37), v21[8], *(v21 + 18));
      v34 = *(v18 + 48);
    }
  }

  else
  {
    v58 = 0;
  }

  if ((v34 & 2) != 0)
  {
    v90 = (a2 + *a3 + v58);
    v59 = a2;
  }

  else
  {
    v59 = 0;
    v90 = 0;
  }

  result = srtp_get_est_pkt_index(*(a2 + 2), v18, &v93, &v92);
  if (result)
  {
    if (result != 27)
    {
      return result;
    }

    srtp_rdbx_set_roc_seq(v18 + 24, v93 >> 16, v93);
    *(v18 + 116) = 0;
    *(*(v18 + 40) + 4 * ((*(v18 + 32) - 1) >> 5)) |= 1 << (*(v18 + 32) - 1);
  }

  else
  {
    if (v92 <= 0)
    {
      v78 = v92 + *(v18 + 32) - 1;
      if (v78 < 0)
      {
        return 10;
      }

      if (((*(*(v18 + 40) + 4 * (v78 >> 5)) >> v78) & 1) != 0 && !*(v18 + 88))
      {
        return 9;
      }
    }

    srtp_rdbx_add_index(v18 + 24, v92);
  }

  if (mod_srtp)
  {
    v60.n128_f64[0] = srtp_err_report(3, "%s: estimated packet index: %016llx\n", off_2808D35A0, v93);
  }

  v61 = *v21;
  v62 = *(**v21 + 80);
  v63 = v62 > 5;
  v64 = (1 << v62) & 0x32;
  if (v63 || v64 == 0)
  {
    v67 = v93;
    v98.i64[0] = 0;
    v98.i64[1] = bswap64(v93);
    if (!*v61)
    {
      return 8;
    }

    v76 = v61[1];
    if (!v76 || (*(*v61 + 48))(v76, &v98, 0, v60))
    {
      return 8;
    }

    v77 = v21[1];
    if (!v77)
    {
      goto LABEL_149;
    }

    v71 = *v77;
    if (!*v77)
    {
      return 8;
    }

    v72 = v77[1];
    if (!v72)
    {
      return 8;
    }
  }

  else
  {
    v66 = *(a2 + 8);
    v67 = v93;
    v98.i32[0] = 0;
    v98.i64[1] = bswap64(v93) >> 16;
    v98.i32[1] = v66;
    if (!*v61)
    {
      return 8;
    }

    v68 = v61[1];
    if (!v68 || (*(*v61 + 48))(v68, &v98, 0, v60))
    {
      return 8;
    }

    v70 = v21[1];
    if (!v70)
    {
      goto LABEL_149;
    }

    v71 = *v70;
    if (!*v70)
    {
      return 8;
    }

    v72 = v70[1];
    if (!v72)
    {
      return 8;
    }
  }

  if ((*(v71 + 48))(v72, &v98, 0))
  {
    return 8;
  }

LABEL_149:
  v93 = bswap64(v67) >> 16;
  if (v59)
  {
    v79 = *(v21[2] + 24);
    v91 = v79;
    if (v79)
    {
      v80 = *v21;
      bzero(v90, v79);
      if ((*(*v80 + 32))(v80[1], v90, &v91))
      {
        return 8;
      }

      if (mod_srtp)
      {
        v81 = off_2808D35A0;
        v82 = srtp_octet_string_hex_string(v90, v91);
        v69.n128_f64[0] = srtp_err_report(3, "%s: keystream prefix: %s\n", v81, v82);
      }
    }
  }

  if (!v36 || !v21[1] || (result = srtp_process_header_encryption(v18, v36, v21), !result))
  {
    if (v35)
    {
      v83 = *v21;
      if (!*v21)
      {
        return 8;
      }

      if (!*v83)
      {
        return 8;
      }

      v84 = v83[1];
      if (!v84 || (*(*v83 + 32))(v84, v35, &v94, v69))
      {
        return 8;
      }
    }

    if (v59)
    {
      result = (*(*v21[2] + 40))(*(v21[2] + 8), v69);
      if (result)
      {
        return result;
      }

      result = (*(*v21[2] + 32))(*(v21[2] + 8), v59, *a3);
      if (result)
      {
        return result;
      }

      if (mod_srtp)
      {
        v85.n128_f64[0] = srtp_err_report(3, "%s: estimated packet index: %016llx\n", off_2808D35A0, v93);
      }

      v86 = (*(*v21[2] + 24))(*(v21[2] + 8), &v93, 4, *(v21[2] + 16), v90, v85);
      if (mod_srtp)
      {
        v87 = off_2808D35A0;
        v88 = srtp_octet_string_hex_string(v90, v89);
        srtp_err_report(3, "%s: srtp auth tag:    %s\n", v87, v88);
      }

      if (v86)
      {
        return 7;
      }
    }

    if (v90)
    {
      *a3 += v89;
    }

    result = 0;
    if (a4)
    {
      v56 = *a3 + v58;
LABEL_175:
      *a3 = v56;
    }
  }

  return result;
}

uint64_t srtp_get_est_pkt_index(unsigned int a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  v4 = *(a2 + 116);
  v5 = bswap32(a1) >> 16;
  if (!v4)
  {
    v9 = *(a2 + 24);
    if (v9 <= 0x8000)
    {
      v8 = 0;
      *a3 = v5;
      LODWORD(v7) = v5 - *(a2 + 24);
    }

    else
    {
      v8 = 0;
      v10 = v9 >> 16;
      v11 = *(a2 + 24);
      v12 = (v9 >> 15) & 1;
      v13 = v5 - v11;
      if (v11 - 0x8000 <= v5)
      {
        v14 = v10;
      }

      else
      {
        v14 = v10 + 1;
      }

      if (v11 - 0x8000 > v5)
      {
        v13 = (v5 | 0x10000) - v11;
      }

      v15 = v5 - v11;
      if (v15 > 0x8000)
      {
        LODWORD(v10) = v10 - 1;
        v15 -= 0x10000;
      }

      v16 = v12 == 0;
      if (v12)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }

      if (v16)
      {
        LODWORD(v7) = v15;
      }

      else
      {
        LODWORD(v7) = v13;
      }

      v5 = v5 & 0xFFFF00000000FFFFLL | (v17 << 16);
      *a3 = v5;
    }

    goto LABEL_25;
  }

  v5 |= v4 << 16;
  *a3 = v5;
  v6 = *(a2 + 24);
  *a4 = v5 - v6;
  v7 = 0;
  if (v5 > v6)
  {
    if (v5 - v6 <= 0x8000)
    {
      goto LABEL_26;
    }

    v8 = 27;
    goto LABEL_25;
  }

  v18 = v6 != v5;
  v19 = v6 - v5;
  if (v18 && v19 > 0x8000)
  {
    v8 = 26;
LABEL_25:
    *a4 = v7;
    v7 = v8;
  }

LABEL_26:
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: estimated u_packet index: %016llx\n", off_2808D35A0, v5);
  }

  return v7;
}

uint64_t srtp_process_header_encryption(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 2);
  v6 = 2 * __rev16(a2[1]);
  v7 = &a2[v6 + 2];
  v8 = *a2;
  if (v8 == 57022)
  {
    if (a2[1])
    {
      v9 = &a2[v6 + 2];
      while (1)
      {
        v11 = *v5++;
        v10 = v11;
        v12 = v11 & 0xF;
        v13 = v12 + 1;
        v48 = v12 + 2;
        v14 = &v5[v12 + 1];
        if (v14 > v7)
        {
          return 21;
        }

        v15 = v10 >> 4;
        if (v10 >> 4 == 15)
        {
          return 0;
        }

        v16 = *(a3 + 8);
        bzero(&v49, (v12 + 2));
        if ((*(*v16 + 32))(v16[1], &v49, &v48))
        {
          return 8;
        }

        v17 = *(a1 + 104);
        if (v17 && (v18 = *(a1 + 112), v18 >= 1))
        {
          v19 = v18 + 1;
          while (*v17 != v15)
          {
            ++v17;
            if (--v19 <= 1)
            {
              goto LABEL_13;
            }
          }

          if (v12 == 15 && (v5 >= &v50[16] || v50 >= v14))
          {
            *v5 = veorq_s8(*v5, *v50);
            v5 += v13;
            if (v5 < v7)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v50;
            do
            {
              v21 = *v20++;
              *v5++ ^= v21;
              LODWORD(v13) = v13 - 1;
            }

            while (v13);
            if (v5 < v7)
            {
LABEL_21:
              v22 = v9 - v5;
              while (!*v5)
              {
                ++v5;
                if (!--v22)
                {
                  v5 = v9;
                  break;
                }
              }
            }
          }
        }

        else
        {
LABEL_13:
          v5 += v12 + 1;
          if (v14 < v7)
          {
            goto LABEL_21;
          }
        }

        if (v5 >= v7)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if ((v8 & 0xFFFFF0FF) == 0x10)
  {
    if (!a2[1])
    {
      return 0;
    }

    v23 = a2 + 5;
    v24 = &a2[v6 + 2];
    while (1)
    {
      v25 = v5 + 2;
      v26 = *v5;
      v27 = *v23;
      v48 = v27 + 2;
      v28 = &v5[v27 + 2];
      if (v28 > v7)
      {
        return 21;
      }

      v29 = *(a3 + 8);
      bzero(&v49, v27 + 2);
      if ((*(*v29 + 32))(v29[1], &v49, &v48))
      {
        return 8;
      }

      if (v27)
      {
        v30 = *(a1 + 104);
        if (v30)
        {
          v31 = *(a1 + 112);
          if (v31 >= 1)
          {
            v32 = v31 + 1;
            while (*v30 != v26)
            {
              ++v30;
              if (--v32 <= 1)
              {
                goto LABEL_58;
              }
            }

            if (v27 <= 0x1F || ((v33 = (v27 - 1), v25 < &v50[v33 + 2]) ? (v34 = &v50[1] >= &v5[v33 + 3]) : (v34 = 1), !v34))
            {
              v43 = 2;
              goto LABEL_56;
            }

            v35 = v27 & 0xE0;
            v36 = veorq_s8(*(v5 + 18), v51);
            *(v5 + 2) = veorq_s8(*(v5 + 2), *&v50[1]);
            *(v5 + 18) = v36;
            if (v35 != 32)
            {
              v37 = veorq_s8(*(v5 + 50), v53);
              *(v5 + 34) = veorq_s8(*(v5 + 34), v52);
              *(v5 + 50) = v37;
              if (v35 != 64)
              {
                v38 = veorq_s8(*(v5 + 82), v55);
                *(v5 + 66) = veorq_s8(*(v5 + 66), v54);
                *(v5 + 82) = v38;
                if (v35 != 96)
                {
                  v39 = veorq_s8(*(v5 + 114), v57);
                  *(v5 + 98) = veorq_s8(*(v5 + 98), v56);
                  *(v5 + 114) = v39;
                  if (v35 != 128)
                  {
                    v40 = veorq_s8(*(v5 + 146), v59);
                    *(v5 + 130) = veorq_s8(*(v5 + 130), v58);
                    *(v5 + 146) = v40;
                    if (v35 != 160)
                    {
                      v41 = veorq_s8(*(v5 + 178), v61);
                      *(v5 + 162) = veorq_s8(*(v5 + 162), v60);
                      *(v5 + 178) = v41;
                      if (v35 != 192)
                      {
                        v42 = veorq_s8(*(v5 + 210), v63);
                        *(v5 + 194) = veorq_s8(*(v5 + 194), v62);
                        *(v5 + 210) = v42;
                      }
                    }
                  }
                }
              }
            }

            v25 += v35;
            if (v35 != v27)
            {
              v43 = v35 | 2;
              LODWORD(v27) = v27 - v35;
LABEL_56:
              v44 = &v50[v43 - 1];
              v28 = v25;
              do
              {
                v45 = *v44++;
                *v28++ ^= v45;
                LODWORD(v27) = v27 - 1;
              }

              while (v27);
              goto LABEL_58;
            }

            v28 = v25;
          }
        }
      }

LABEL_58:
      if (v28 < v7)
      {
        v46 = v24 - v28;
        while (!*v28)
        {
          ++v28;
          if (!--v46)
          {
            v28 = v24;
            break;
          }
        }
      }

      v23 = v28 + 1;
      v5 = v28;
      if ((v28 + 1) >= v7)
      {
        return 0;
      }
    }
  }

  return 21;
}

uint64_t srtp_unprotect_mki(void *a1, uint64_t a2, int *a3, int a4)
{
  v151 = *MEMORY[0x277D85DE8];
  v146 = 0;
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: function srtp_unprotect\n", off_2808D35A0);
  }

  v8 = *a3;
  if (*a3 < 12)
  {
    return 2;
  }

  v9 = *a2;
  v10 = 4 * (*a2 & 0xF);
  v11 = v10 + 12;
  v12 = v10 + 16;
  if ((*a2 & 0x10) != 0)
  {
    v11 = v12;
  }

  if (v11 > v8 || (v9 & 0x10) != 0 && v12 + 4 * (bswap32(*(a2 + 4 * (v9 & 0xF) + 14)) >> 16) > v8)
  {
    return 2;
  }

  v144 = 0;
  v145 = 0;
  v143 = 0;
  v142 = 0;
  v15 = *(a2 + 8);
  v16 = *a1;
  if (!*a1)
  {
LABEL_14:
    v16 = a1[1];
    if (!v16)
    {
      return 13;
    }

    if (mod_srtp)
    {
      srtp_err_report(3, "%s: using provisional stream (SSRC: 0x%08x)\n", off_2808D35A0, bswap32(v15));
    }

    LODWORD(v17) = 0;
    v18 = 0;
    v19 = bswap32(*(a2 + 2)) >> 16;
    v145 = v19;
    v141 = 1;
    LODWORD(v20) = v19;
LABEL_18:
    if (mod_srtp)
    {
      srtp_err_report(3, "%s: estimated u_packet index: %016llx\n", off_2808D35A0, v19);
    }

    if (!a4)
    {
      v139 = v18;
      v140 = v20;
      v27 = 0;
      v22 = v16[1];
      v28 = *v22;
      if ((*(*v22 + 20) & 0xFFFFFFFE) != 6)
      {
LABEL_49:
        v41 = *(*(v22 + 16) + 16);
        v42 = *(*v28 + 80);
        v43 = v42 > 5;
        v44 = (1 << v42) & 0x32;
        v45 = v43 || v44 == 0;
        v46 = bswap64(v19);
        if (!v45)
        {
          v47 = *(a2 + 8);
          LODWORD(v143) = 0;
          HIDWORD(v143) = v47;
          v144 = v46 >> 16;
          v48 = *v22;
          if (!*v22)
          {
            return 8;
          }

          goto LABEL_89;
        }

        v143 = 0;
        v144 = v46;
        v48 = *v22;
        if (*v22)
        {
LABEL_89:
          if (!*v48)
          {
            return 8;
          }

          v60 = v48[1];
          if (!v60)
          {
            return 8;
          }

          if ((*(*v48 + 48))(v60, &v143, 1))
          {
            return 8;
          }

          v61 = *(v22 + 8);
          if (v61)
          {
            if (!*v61)
            {
              return 8;
            }

            v62 = v61[1];
            if (!v62 || (*(*v61 + 48))(v62, &v143, 1))
            {
              return 8;
            }
          }

          v145 = bswap64(v145) >> 16;
          v63 = *(v16 + 12);
          if ((v63 & 1) == 0)
          {
            v64 = 0;
            v65 = 0;
            goto LABEL_133;
          }

          v76 = a2 + 4 * (*a2 & 0xFLL);
          v65 = (v76 + 12);
          if ((*a2 & 0x10) != 0)
          {
            v64 = &v65[2 * (bswap32(*(v76 + 14)) >> 16) + 2];
          }

          else
          {
            v64 = v76 + 12;
            v65 = 0;
          }

          v77 = (*a3 - v27 - v41);
          if (v64 <= a2 + v77)
          {
            v146 = v77 + a2 - v64;
LABEL_133:
            if ((v63 & 2) == 0)
            {
              goto LABEL_134;
            }

            v133 = *a3;
            v134 = v41;
            v89 = *(v22 + 16);
            v90 = *(v89 + 24);
            v136 = v17;
            v130 = v64;
            if (v90)
            {
              v131 = v41;
              v142 = *(v89 + 24);
              v91 = *v22;
              bzero(&v150, v90);
              v92 = (*(*v91 + 32))(v91[1], &v150, &v142);
              if (mod_srtp)
              {
                v93 = off_2808D35A0;
                v94 = srtp_octet_string_hex_string(v150.i8, v142);
                srtp_err_report(3, "%s: keystream prefix: %s\n", v93, v94);
              }

              if (v92)
              {
                return 8;
              }

              v89 = *(v22 + 16);
              v41 = v131;
            }

            v74 = (*(*v89 + 40))(*(v89 + 8));
            if (v74)
            {
              return v74;
            }

            v138 = a1;
            v74 = (*(**(v22 + 16) + 32))(*(*(v22 + 16) + 8), a2, (*a3 - v27 - v134));
            if (v74)
            {
              return v74;
            }

            v132 = v41;
            v129 = (a2 + v133 - v41);
            v95 = (*(**(v22 + 16) + 24))(*(*(v22 + 16) + 8), &v145, 4, *(*(v22 + 16) + 16), &v150);
            if (mod_srtp)
            {
              v96 = off_2808D35A0;
              v97 = srtp_octet_string_hex_string(v150.i8, v134);
              srtp_err_report(3, "%s: computed auth tag:    %s\n", v96, v97);
              if (mod_srtp)
              {
                v98 = off_2808D35A0;
                v99 = srtp_octet_string_hex_string(v129, v132);
                srtp_err_report(3, "%s: packet auth tag:      %s\n", v98, v99);
              }
            }

            if (v95)
            {
              return 7;
            }

            v64 = v130;
            LODWORD(v41) = v132;
            LODWORD(v17) = v136;
            a1 = v138;
            if (v132 < 1)
            {
LABEL_134:
              v78 = *(v22 + 80);
              v79 = *v78 - 1;
              *v78 = v79;
              if (v79 >> 16)
              {
                goto LABEL_146;
              }

              if (v79)
              {
                v80 = *(v78 + 8) == 0;
              }

              else
              {
                v80 = 1;
              }

              if (!v80 || (v79 ? (v81 = 1) : (v81 = 2), *(v78 + 8) = v81, v79))
              {
                if (srtp_event_handler)
                {
                  v147 = a1;
                  v148 = 0;
                  v148 = bswap32(*v16) | 0x100000000;
                  v82 = v64;
                  srtp_event_handler(&v147);
                  v64 = v82;
                }

LABEL_146:
                v83 = v41;
                v84 = v17;
                if (!v65 || !*(v22 + 8) || (v85 = v64, v74 = srtp_process_header_encryption(v16, v65, v22), v64 = v85, !v74))
                {
                  if (v64)
                  {
                    v86 = *v22;
                    if (!*v22)
                    {
                      return 8;
                    }

                    if (!*v86)
                    {
                      return 8;
                    }

                    v87 = v86[1];
                    if (!v87 || (*(*v86 + 40))(v87, v64, &v146))
                    {
                      return 8;
                    }
                  }

                  v88 = *(v16 + 21);
                  if (v88 != 2)
                  {
                    if (v88)
                    {
                      if (srtp_event_handler)
                      {
                        v147 = a1;
                        v148 = 0;
                        LODWORD(v148) = bswap32(*v16);
                        srtp_event_handler(&v147);
                      }
                    }

                    else
                    {
                      *(v16 + 21) = 2;
                    }
                  }

                  v100 = a1[1];
                  if (v16 != v100)
                  {
                    if (v141)
                    {
LABEL_174:
                      srtp_rdbx_add_index((v16 + 3), v140);
                      v13 = 0;
                      v101 = *a3 - (v83 + v27);
LABEL_175:
                      *a3 = v101;
                      return v13;
                    }

LABEL_173:
                    srtp_rdbx_set_roc_seq((v16 + 3), v84, v139);
                    v140 = 0;
                    *(v16 + 29) = 0;
                    goto LABEL_174;
                  }

                  v147 = 0;
                  v74 = srtp_stream_clone(v100, *(a2 + 8), &v147);
                  if (!v74)
                  {
                    v16 = v147;
                    v147[15] = *a1;
                    *a1 = v16;
                    if (v141)
                    {
                      goto LABEL_174;
                    }

                    goto LABEL_173;
                  }
                }

                return v74;
              }

              v102 = srtp_event_handler;
              if (srtp_event_handler)
              {
                v148 = 0;
LABEL_181:
                v147 = a1;
                v148 = bswap32(*v16) | 0x200000000;
                v102(&v147);
                return 15;
              }

              return 15;
            }

            v103 = a2 + v133 + v134 - v132;
            v104 = a2 + v133 - v132;
            if (v103 <= v104 + 1)
            {
              v103 = v104 + 1;
            }

            v105 = v103 + v132 - (a2 + v133);
            if (v105 < 8)
            {
              LOBYTE(v106) = 0;
              v107 = &v150;
              v108 = v129;
              goto LABEL_201;
            }

            if (v105 >= 0x20)
            {
              v109 = v105 & 0xFFFFFFFFFFFFFFE0;
              v110 = (v133 - v132 + a2 + 16);
              v111 = &v151;
              v112 = 0uLL;
              v113 = v105 & 0xFFFFFFFFFFFFFFE0;
              v114 = 0uLL;
              do
              {
                v112 = vorrq_s8(veorq_s8(v110[-1], v111[-1]), v112);
                v114 = vorrq_s8(veorq_s8(*v110, *v111), v114);
                v110 += 2;
                v111 += 2;
                v113 -= 32;
              }

              while (v113);
              v115 = vorrq_s8(v114, v112);
              *v115.i8 = vorr_s8(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
              v116 = v115.i64[0] | HIDWORD(v115.i64[0]) | ((v115.i64[0] | HIDWORD(v115.i64[0])) >> 16);
              v106 = (v116 | BYTE1(v116));
              if (v105 == v109)
              {
                goto LABEL_202;
              }

              if ((v105 & 0x18) == 0)
              {
                v108 = &v129[v109];
                v107 = (&v150 + v109);
                do
                {
LABEL_201:
                  v126 = v107->i8[0];
                  v107 = (v107 + 1);
                  v125 = v126;
                  v127 = *v108++;
                  LOBYTE(v106) = v127 ^ v125 | v106;
                }

                while (v108 < &v129[v134]);
                goto LABEL_202;
              }
            }

            else
            {
              LOBYTE(v106) = 0;
              v109 = 0;
            }

            v107 = (&v150 + (v105 & 0xFFFFFFFFFFFFFFF8));
            v117 = v106;
            v108 = &v129[v105 & 0xFFFFFFFFFFFFFFF8];
            v118 = (a2 + v109 + v133 - v132);
            v119 = &v150.i8[v109];
            v120 = v109 - (v105 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v121 = *v119++;
              v122 = v121;
              v123 = *v118++;
              v117 = vorr_s8(veor_s8(v123, v122), v117);
              v120 += 8;
            }

            while (v120);
            v124 = *&v117 | HIDWORD(*&v117) | ((*&v117 | HIDWORD(*&v117)) >> 16);
            LOBYTE(v106) = v124 | BYTE1(v124);
            if (v105 != (v105 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_201;
            }

LABEL_202:
            a1 = v138;
            LODWORD(v41) = v132;
            if (v106)
            {
              return 7;
            }

            goto LABEL_134;
          }

          return 21;
        }

        return 8;
      }

      goto LABEL_29;
    }

    v21 = *a3;
    v22 = v16[1];
    if ((*(*v22 + 20) & 0xFFFFFFFE) == 6)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(*(v22 + 16) + 16);
      if (v23 > v21)
      {
        return 25;
      }
    }

    v137 = a1;
    v39 = *(v16 + 4);
    if (v39)
    {
      v139 = v18;
      v135 = v17;
      v140 = v20;
      v40 = v21 - v23;
      v13 = 25;
      while (1)
      {
        v27 = *(v22 + 72);
        if (v27 - 1 < v40 && !memcmp((a2 + v40 - v27), *(v22 + 64), *(v22 + 72)))
        {
          break;
        }

        v22 += 88;
        if (!--v39)
        {
          return v13;
        }
      }

      LODWORD(v17) = v135;
      a1 = v137;
      v28 = *v22;
      if ((*(*v22 + 20) & 0xFFFFFFFE) != 6)
      {
        goto LABEL_49;
      }

LABEL_29:
      if (mod_srtp)
      {
        srtp_err_report(3, "%s: function srtp_unprotect_aead\n", off_2808D35A0);
        if (mod_srtp)
        {
          srtp_err_report(3, "%s: estimated u_packet index: %016llx\n", off_2808D35A0, v19);
        }
      }

      v150 = 0uLL;
      v29 = *(*(v22 + 16) + 16);
      v30 = srtp_calc_aead_iv(v22, &v150, v19, a2);
      v31 = *v22;
      if (!*v22)
      {
        return 8;
      }

      if (!*v31)
      {
        return 8;
      }

      v32 = v31[1];
      if (!v32)
      {
        return 8;
      }

      if ((*(*v31 + 48))(v32, &v150, 1, v30))
      {
        return 8;
      }

      v33 = *(v22 + 8);
      if (v33)
      {
        v34 = *(a2 + 8);
        v150.i32[0] = 0;
        v150.i32[1] = v34;
        v150.i64[1] = bswap64(v19) >> 16;
        if (!*v33)
        {
          return 8;
        }

        v35 = v33[1];
        if (!v35 || (*(*v33 + 48))(v35, &v150, 0))
        {
          return 8;
        }
      }

      v36 = a2 + 4 * (*a2 & 0xFLL);
      v37 = (v36 + 12);
      if ((*a2 & 0x10) != 0)
      {
        v38 = &v37[2 * (bswap32(*(v36 + 14)) >> 16) + 2];
      }

      else
      {
        v38 = v36 + 12;
        v37 = 0;
      }

      v66 = v29 + v27;
      if (v38 > a2 + (*a3 - (v29 + v27)))
      {
        return 21;
      }

      v149 = *a3 - v27 - (v38 - a2);
      if (v149 < v29)
      {
        return 8;
      }

      v67 = *(v22 + 80);
      v68 = *v67 - 1;
      *v67 = v68;
      if (!(v68 >> 16))
      {
        if (!v68 || !*(v67 + 8))
        {
          v69 = v68 ? 1 : 2;
          *(v67 + 8) = v69;
          if (!v68)
          {
            v102 = srtp_event_handler;
            if (srtp_event_handler)
            {
              goto LABEL_181;
            }

            return 15;
          }
        }

        if (srtp_event_handler)
        {
          v147 = a1;
          v148 = bswap32(*v16) | 0x100000000;
          srtp_event_handler(&v147);
        }
      }

      v70 = *v22;
      if (!*v22)
      {
        return 8;
      }

      if (!*v70)
      {
        return 8;
      }

      if (!v70[1])
      {
        return 8;
      }

      v71 = *(*v70 + 24);
      if (!v71 || v71())
      {
        return 8;
      }

      v72 = *v22;
      if (*v22)
      {
        if (*v72)
        {
          v73 = v72[1];
          if (v73)
          {
            v74 = (*(*v72 + 40))(v73, v38, &v149);
            if (v74)
            {
              return v74;
            }

            if (v37)
            {
              if (*(v22 + 8))
              {
                v74 = srtp_process_header_encryption(v16, v37, v22);
                if (v74)
                {
                  return v74;
                }
              }
            }

            v75 = *(v16 + 21);
            if (v75 != 2)
            {
              if (v75)
              {
                if (srtp_event_handler)
                {
                  v147 = a1;
                  v148 = bswap32(*v16);
                  srtp_event_handler(&v147);
                }
              }

              else
              {
                *(v16 + 21) = 2;
              }
            }

            v128 = a1[1];
            if (v128 == v16)
            {
              v147 = 0;
              v74 = srtp_stream_clone(v128, *(a2 + 8), &v147);
              if (v74)
              {
                return v74;
              }

              v16 = v147;
              v147[15] = *a1;
              *a1 = v16;
            }

            srtp_rdbx_add_index((v16 + 3), v140);
            v13 = 0;
            v101 = *a3 - v66;
            goto LABEL_175;
          }
        }
      }

      return 2;
    }

    return 25;
  }

  while (*v16 != v15)
  {
    v16 = v16[15];
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  v24 = *(v16 + 29);
  v19 = bswap32(*(a2 + 2)) >> 16;
  if (!v24)
  {
    v49 = v16[3];
    if (v49 <= 0x8000)
    {
      v26 = 0;
      v145 = v19;
      LODWORD(v13) = v19 - v49;
    }

    else
    {
      v26 = 0;
      v50 = v49 >> 16;
      v51 = v16[3];
      v52 = (v49 >> 15) & 1;
      v53 = v19 - v51;
      if (v51 - 0x8000 <= v19)
      {
        v54 = v50;
      }

      else
      {
        v54 = v50 + 1;
      }

      if (v51 - 0x8000 > v19)
      {
        v53 = (v19 | 0x10000) - v51;
      }

      v55 = v19 - v51;
      if (v55 > 0x8000)
      {
        LODWORD(v50) = v50 - 1;
        v55 -= 0x10000;
      }

      v56 = v52 == 0;
      if (v52)
      {
        v57 = v54;
      }

      else
      {
        v57 = v50;
      }

      if (v56)
      {
        LODWORD(v13) = v55;
      }

      else
      {
        LODWORD(v13) = v53;
      }

      v19 = v19 & 0xFFFF00000000FFFFLL | (v57 << 16);
      v145 = v19;
    }

    goto LABEL_76;
  }

  v19 |= v24 << 16;
  v145 = v19;
  v25 = v16[3];
  v13 = 0;
  v20 = v19 - v25;
  if (v19 > v25)
  {
    if (v20 <= 0x8000)
    {
      goto LABEL_77;
    }

    v26 = 27;
    goto LABEL_76;
  }

  v43 = v25 > v19;
  v58 = v25 - v19;
  if (v43 && v58 > 0x8000)
  {
    v26 = 26;
LABEL_76:
    LODWORD(v20) = v13;
    v13 = v26;
  }

LABEL_77:
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: estimated u_packet index: %016llx\n", off_2808D35A0, v19);
  }

  if (v13 == 27 || !v13)
  {
    if (v13 == 27)
    {
      v141 = 0;
      v17 = v19 >> 16;
      v18 = v19;
    }

    else
    {
      if (v20 <= 0)
      {
        v59 = v20 + *(v16 + 8) - 1;
        if (v59 < 0)
        {
          return 10;
        }

        if ((*(v16[5] + 4 * (v59 >> 5)) >> v59))
        {
          return 9;
        }
      }

      LODWORD(v17) = 0;
      v18 = 0;
      v141 = 1;
    }

    goto LABEL_18;
  }

  return v13;
}

uint64_t srtp_add_stream(uint64_t *a1, uint64_t a2)
{
  result = 2;
  if (a1 && a2)
  {
    if (*(a2 + 56))
    {
LABEL_4:
      v11 = 0;
      result = srtp_stream_alloc(&v11, a2);
      if (result)
      {
        return result;
      }

      v7 = v11;
      v8 = srtp_stream_init(v11, a2);
      if (v8)
      {
        v9 = v8;
        srtp_stream_dealloc(v7, 0);
        return v9;
      }

      v10 = *a2;
      if (*a2 == 1)
      {
        result = 0;
        *(v7 + 120) = *a1;
        *a1 = v7;
        return result;
      }

      if (v10 == 2)
      {
        if (!a1[1])
        {
          result = 0;
          a1[1] = v7;
          *(v7 + 84) = 2;
          return result;
        }
      }

      else if (v10 == 3 && !a1[1])
      {
        result = 0;
        a1[1] = v7;
        *(v7 + 84) = 1;
        return result;
      }

      srtp_stream_dealloc(v7, 0);
      return 2;
    }

    v5 = *(a2 + 72);
    if ((v5 - 17) >= 0xFFFFFFFFFFFFFFF0)
    {
      v6 = *(a2 + 64);
      while (**v6 && *(*v6 + 16) <= 0x80u)
      {
        v6 += 8;
        if (!--v5)
        {
          goto LABEL_4;
        }
      }

      return 2;
    }
  }

  return result;
}

uint64_t srtp_create(uint64_t **a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0xAA3F5916uLL);
  if (v4)
  {
    v5 = v4;
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: (location: %p) allocated\n", off_2808D3550, v4);
    }

    *a1 = v5;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    if (a2)
    {
      while (1)
      {
        v6 = srtp_add_stream(v5, a2);
        if (v6)
        {
          break;
        }

        a2 = *(a2 + 120);
        if (!a2)
        {
          return 0;
        }
      }

      v8 = v6;
      v9 = *a1;
      v10 = **a1;
      while (v10)
      {
        v11 = v10[15];
        v12 = srtp_stream_dealloc(v10, v9[1]);
        v10 = v11;
        if (v12)
        {
          goto LABEL_22;
        }
      }

      v13 = v9[1];
      if (!v13 || !srtp_stream_dealloc(v13, 0))
      {
        if (srtp_mod_alloc)
        {
          srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v9);
        }

        free(v9);
      }

LABEL_22:
      *a1 = 0;
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (srtp_mod_alloc)
    {
      srtp_err_report(3, "%s: allocation failed (asked for %zu bytes)\n\n", off_2808D3550, 0x18uLL);
    }

    return 3;
  }
}

uint64_t srtp_update_stream(uint64_t *a1, uint64_t a2)
{
  v2 = 2;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (!*(a2 + 56))
  {
    v8 = *(a2 + 72);
    if ((v8 - 17) >= 0xFFFFFFFFFFFFFFF0)
    {
      v9 = *(a2 + 64);
      while (**v9 && *(*v9 + 16) <= 0x80u)
      {
        v9 += 8;
        if (!--v8)
        {
          goto LABEL_4;
        }
      }
    }

    return 2;
  }

LABEL_4:
  if ((*a2 - 2) < 2)
  {
    if (a1[1])
    {
      v41 = 0;
      v2 = srtp_stream_alloc(&v41, a2);
      if (!v2)
      {
        v5 = v41;
        v6 = srtp_stream_init(v41, a2);
        if (v6)
        {
          v7 = v6;
          if (srtp_mod_alloc)
          {
            srtp_err_report(3, "%s: (location: %p) freed\n", off_2808D3550, v5);
          }

          free(v5);
          return v7;
        }

        else
        {
          v42 = 0uLL;
          v43 = 0;
          v20 = a1;
          v21 = *a1;
          if (*a1)
          {
            v22 = 0;
            while (1)
            {
              v23 = v21;
              while (*(v23[1] + 16) != *(*(v20[1] + 8) + 16))
              {
                v23 = v23[15];
                if (!v23)
                {
                  v31 = v22;
                  goto LABEL_52;
                }
              }

              v40 = v23;
              v24 = *v23;
              v25 = v23[3];
              v43 = v23[9];
              v42 = *(v23 + 7);
              v26 = v21;
              if (*v21 != v24)
              {
                break;
              }

LABEL_43:
              v27 = v22;
              if (v26 == v21)
              {
                v28 = v20;
              }

              else
              {
                v28 = v26 + 15;
              }

              *v28 = v21[15];
              v29 = srtp_stream_dealloc(v21, v20[1]);
              if (v29)
              {
                v35 = v29;
                v36 = v27;
                if (!v27)
                {
                  goto LABEL_64;
                }

                goto LABEL_63;
              }

              v30 = srtp_stream_clone(v5, v24, &v40);
              if (v30)
              {
                v35 = v30;
                if (v27)
                {
                  v38 = v27;
                  do
                  {
                    v39 = v38[15];
                    srtp_stream_dealloc(v38, v5);
                    v38 = v39;
                  }

                  while (v39);
                }

                goto LABEL_64;
              }

              v31 = v40;
              v40[15] = v27;
              v31[3] = v25;
              *(v31 + 7) = v42;
              v31[9] = v43;
              v40 = 0;
              v42 = 0uLL;
              v43 = 0;
              v20 = a1;
              v21 = *a1;
              v22 = v31;
              if (!*a1)
              {
                goto LABEL_52;
              }
            }

            while (1)
            {
              v26 = v21;
              v21 = v21[15];
              if (!v21)
              {
                break;
              }

              if (*v21 == v24)
              {
                goto LABEL_43;
              }
            }

            v35 = 13;
            v36 = v22;
            if (v22)
            {
              do
              {
LABEL_63:
                v37 = v36[15];
                srtp_stream_dealloc(v36, v5);
                v36 = v37;
              }

              while (v37);
            }

LABEL_64:
            srtp_stream_dealloc(v5, 0);
            return v35;
          }

          else
          {
            v31 = 0;
LABEL_52:
            srtp_stream_dealloc(v20[1], 0);
            a1[1] = v5;
            if (v31)
            {
              v2 = v31;
              do
              {
                v32 = v2;
                v2 = *(v2 + 120);
              }

              while (v2);
              *(v32 + 120) = *a1;
              *a1 = v31;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return v2;
    }

    return 2;
  }

  if (*a2 != 1)
  {
    return 2;
  }

  v10 = *a1;
  if (!*a1)
  {
    return 2;
  }

  v11 = bswap32(*(a2 + 4));
  v12 = *a1;
  while (*v12 != v11)
  {
    v12 = *(v12 + 120);
    if (!v12)
    {
      return 2;
    }
  }

  v14 = *(v12 + 24);
  v42 = *(v12 + 56);
  v43 = *(v12 + 72);
  if (*v10 == v11)
  {
    v15 = v10;
LABEL_28:
    if (v15 == v10)
    {
      v17 = a1;
    }

    else
    {
      v17 = v15 + 15;
    }

    *v17 = v10[15];
    v19 = srtp_stream_dealloc(v10, a1[1]);
    if (v19)
    {
      return v19;
    }

    v19 = srtp_add_stream(a1, a2);
    if (v19)
    {
      return v19;
    }

    else
    {
      v33 = *a1;
      if (*a1)
      {
        v34 = bswap32(*(a2 + 4));
        while (*v33 != v34)
        {
          v33 = *(v33 + 120);
          v2 = 1;
          if (!v33)
          {
            return v2;
          }
        }

        v2 = 0;
        *(v33 + 24) = v14;
        *(v33 + 56) = v42;
        *(v33 + 72) = v43;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    while (1)
    {
      v15 = v10;
      v10 = v10[15];
      if (!v10)
      {
        return 13;
      }

      if (*v10 == v11)
      {
        goto LABEL_28;
      }
    }
  }

  return v2;
}

uint64_t srtp_protect_rtcp_mki(uint64_t *a1, uint64_t a2, int *a3, int a4, unsigned int a5)
{
  v87 = 0;
  if (*a3 < 8)
  {
    return 2;
  }

  v86 = 0;
  v6 = *(a2 + 4);
  v7 = *a1;
  if (*a1)
  {
    while (*v7 != v6)
    {
      v7 = *(v7 + 120);
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v8 = a1[1];
    if (!v8)
    {
      return 13;
    }

    v9 = a1;
    v10 = a5;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    v89.i64[0] = 0;
    result = srtp_stream_clone(v8, v6, &v89);
    if (result)
    {
      return result;
    }

    a1 = v9;
    v7 = v89.i64[0];
    *(v89.i64[0] + 120) = *v9;
    *v9 = v7;
    a3 = v13;
    a2 = v12;
    a4 = v11;
    a5 = v10;
  }

  v14 = *(v7 + 84);
  if (v14 != 1)
  {
    if (v14)
    {
      if (srtp_event_handler)
      {
        v89 = a1;
        v89.i32[2] = bswap32(*v7);
        v15 = a3;
        v16 = a2;
        v17 = a4;
        v18 = a5;
        srtp_event_handler(&v89);
        a5 = v18;
        a4 = v17;
        a2 = v16;
        a3 = v15;
      }
    }

    else
    {
      *(v7 + 84) = 1;
    }
  }

  if (a4)
  {
    if (*(v7 + 16) <= a5)
    {
      return 25;
    }

    v19 = *(v7 + 8) + 88 * a5;
    if (!v19)
    {
      return 25;
    }
  }

  else
  {
    v19 = *(v7 + 8);
    if (!v19)
    {
      return 25;
    }
  }

  if ((*(*v19 + 20) & 0xFFFFFFFE) == 6)
  {
    v20 = *(*(v19 + 32) + 16);
    v21 = a2 + 8;
    v22 = *a3;
    v23 = (v22 - 8);
    v90 = *(*(v19 + 32) + 16);
    v91 = v22 - 8;
    if (*(v7 + 80))
    {
      v24 = 128;
      v25 = a2 + 8;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v91 = 0;
    }

    if (a4 && (v34 = *(v19 + 72)) != 0)
    {
      v35 = a2;
      v36 = a2 + v22 + v20;
      v37 = a3;
      memcpy((v36 + 4), *(v19 + 64), *(v19 + 72));
      a3 = v37;
      v38 = v34 + 4;
      v39 = *(v7 + 56);
      if (v39 <= 0x7FFFFFFE)
      {
LABEL_32:
        v83 = v38;
        v84 = a3;
        v40 = v21 + v23;
        v41 = v39 + 1;
        *(v7 + 56) = v39 + 1;
        v42 = bswap32(v39 + 1) | v24;
        if (mod_srtp)
        {
          srtp_err_report(3, "%s: srtcp index: %x\n", off_2808D35A0, v41);
        }

        v89 = 0uLL;
        *(v40 + v20) = v42;
        v43 = srtp_calc_aead_iv_srtcp(v19, &v89, v41, *(v35 + 4));
        if (v44)
        {
          return 8;
        }

        v45 = *(v19 + 24);
        if (!v45)
        {
          return 8;
        }

        if (!*v45)
        {
          return 8;
        }

        v46 = v45[1];
        if (!v46 || (*(*v45 + 48))(v46, &v89, 0, v43))
        {
          return 8;
        }

        v47 = *(v19 + 24);
        if (v25)
        {
          if (!v47)
          {
            return 8;
          }

          if (!*v47)
          {
            return 8;
          }

          if (!v47[1])
          {
            return 8;
          }

          v48 = *(*v47 + 24);
          if (!v48)
          {
            return 8;
          }

          v49 = v48();
          result = 8;
          if (v49)
          {
            return result;
          }
        }

        else
        {
          if (!v47)
          {
            return 8;
          }

          if (!*v47)
          {
            return 8;
          }

          if (!v47[1])
          {
            return 8;
          }

          v74 = *(*v47 + 24);
          if (!v74 || v74())
          {
            return 8;
          }
        }

        v88[1] = v42;
        v75 = *(v19 + 24);
        if (v75)
        {
          if (*v75)
          {
            if (v75[1])
            {
              v76 = *(*v75 + 24);
              if (v76)
              {
                if (!v76())
                {
                  if (v25)
                  {
                    v77 = *(v19 + 24);
                    if (!v77)
                    {
                      return 8;
                    }

                    if (!*v77)
                    {
                      return 8;
                    }

                    v78 = v77[1];
                    if (!v78 || (*(*v77 + 32))(v78, v25, &v91))
                    {
                      return 8;
                    }
                  }

                  else
                  {
                    v88[0] = 0;
                    v79 = *(v19 + 24);
                    if (!v79)
                    {
                      return 8;
                    }

                    if (!*v79)
                    {
                      return 8;
                    }

                    v80 = v79[1];
                    if (!v80 || (*(*v79 + 32))(v80, 0, v88))
                    {
                      return 8;
                    }
                  }

                  v81 = *(v19 + 24);
                  if (v81)
                  {
                    if (*v81)
                    {
                      if (v81[1])
                      {
                        v82 = *(*v81 + 56);
                        if (v82)
                        {
                          if (!v82())
                          {
                            result = 0;
                            *v84 += v90 + v83;
                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return 8;
      }
    }

    else
    {
      v35 = a2;
      v38 = 4;
      v39 = *(v7 + 56);
      if (v39 <= 0x7FFFFFFE)
      {
        goto LABEL_32;
      }
    }

    return 15;
  }

  v26 = *(*(v19 + 32) + 16);
  v27 = *a3;
  v28 = v27 - 8;
  v29 = *(v7 + 80);
  v87 = (v29 << 31 >> 31) & (v27 - 8);
  if (a4)
  {
    v30 = *(v19 + 72);
    if (v30)
    {
      v31 = a2;
      v32 = a3;
      memcpy((a2 + v27 + 4), *(v19 + 64), *(v19 + 72));
      a2 = v31;
      v33 = v32;
      v27 = *v32;
    }

    else
    {
      v33 = a3;
    }
  }

  else
  {
    v33 = a3;
    v30 = 0;
  }

  v50 = a2;
  v51 = a2 + v27 + v30;
  srtp_ekt_write_data(*(v7 + 96), (v51 + 4), v26, v33, *(v7 + 24));
  v52 = *(v7 + 56);
  if (v52 > 0x7FFFFFFE)
  {
    return 15;
  }

  v53 = v29 & 1;
  v54 = v50;
  v85 = v50 + 8;
  v55 = v52 + 1;
  *(v7 + 56) = v55;
  v56 = bswap32(v55);
  if (mod_srtp)
  {
    srtp_err_report(3, "%s: srtcp index: %x\n", off_2808D35A0, v55);
    v54 = v50;
  }

  *(v85 + v28) = v56 | (v53 << 7);
  v57 = *(v19 + 24);
  v58 = *v57;
  v59 = *(*v57 + 80);
  v60 = v59 > 5;
  v61 = (1 << v59) & 0x32;
  if (v60 || v61 == 0)
  {
    v89.i64[0] = 0;
    v89.i32[2] = 0;
    v89.i32[3] = v56;
    v63 = v57[1];
    if (!v63)
    {
      return 8;
    }
  }

  else
  {
    v89.i64[0] = 0;
    v89.i32[1] = *(v54 + 4);
    v89.i32[2] = v56 << 16;
    v89.i32[3] = HIWORD(v56);
    v63 = v57[1];
    if (!v63)
    {
      return 8;
    }
  }

  if ((*(v58 + 48))(v63, &v89, 0))
  {
    return 8;
  }

  if (v50)
  {
    v64 = *(v19 + 24);
    v65 = *(*(v19 + 32) + 24);
    v86 = v65;
    if (v65)
    {
      bzero((v51 + 4), v65);
    }

    v66 = (*(*v64 + 32))(v64[1], v51 + 4, &v86);
    if (mod_srtp)
    {
      v67 = off_2808D35A0;
      v68 = srtp_octet_string_hex_string((v51 + 4), v86);
      srtp_err_report(3, "%s: keystream prefix: %s\n", v67, v68);
    }

    if (v66)
    {
      return 8;
    }
  }

  if (v53)
  {
    v72 = *(v19 + 24);
    if (!v72)
    {
      return 8;
    }

    if (!*v72)
    {
      return 8;
    }

    v73 = v72[1];
    if (!v73 || (*(*v72 + 32))(v73, v85, &v87))
    {
      return 8;
    }
  }

  result = (*(**(v19 + 32) + 40))(*(*(v19 + 32) + 8));
  if (!result)
  {
    v69 = (*(**(v19 + 32) + 24))(*(*(v19 + 32) + 8), v50, (*v33 + 4), *(*(v19 + 32) + 16), v51 + 4);
    if (mod_srtp)
    {
      v70 = off_2808D35A0;
      v71 = srtp_octet_string_hex_string((v51 + 4), v26);
      srtp_err_report(3, "%s: srtcp auth tag:    %s\n", v70, v71);
    }

    if (v69)
    {
      return 7;
    }

    else
    {
      result = 0;
      *v33 += v26 + v30 + 4;
    }
  }

  return result;
}

uint64_t srtp_unprotect_rtcp_mki(void *a1, uint64_t a2, int *a3, int a4)
{
  v125 = *MEMORY[0x277D85DE8];
  v118[0] = 0;
  v4 = *a3;
  if (*a3 < 12)
  {
    return 2;
  }

  v117 = 0;
  v8 = *a1;
  if (!*a1)
  {
LABEL_6:
    v8 = a1[1];
    if (v8)
    {
      v9 = v8[12];
      if (!v9)
      {
LABEL_12:
        if (mod_srtp)
        {
          v15 = a3;
          v16 = a4;
          srtp_err_report(3, "%s: srtcp using provisional stream (SSRC: 0x%08x)\n", off_2808D35A0, bswap32(*(a2 + 4)));
          a4 = v16;
          a3 = v15;
        }

        goto LABEL_14;
      }

      v10 = *v9;
      if (*v10 == *(a2 + (v4 - 2)))
      {
        if (*(v10 + 2) != 1)
        {
          return 2;
        }

        v11 = a4;
        v12 = a3;
        v13 = *(a2 + (v4 - 4));
        bzero(v8[5], *(v8 + 8) >> 3);
        v14 = v8[3];
        if (v13 < v14 >> 16)
        {
          return 10;
        }

        v123 = 0u;
        memset(v124, 0, sizeof(v124));
        v8[3] = v14 | (v13 << 16);
        result = srtp_stream_init(v8, &v123);
        a3 = v12;
        a4 = v11;
        if (result)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    return 13;
  }

  while (*v8 != *(a2 + 4))
  {
    v8 = v8[15];
    if (!v8)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  if (a4)
  {
    v17 = *a3;
    v18 = v8[1];
    if ((*(*v18 + 20) & 0xFFFFFFFE) == 6)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(v18 + 16) + 16);
      if (v19 > v17)
      {
        return 25;
      }
    }

    v24 = *(v8 + 4);
    if (v24)
    {
      v25 = a3;
      v26 = v17 - v19;
      while (1)
      {
        v20 = *(v18 + 72);
        if (v20 - 1 < v26 && !memcmp((a2 + v26 - v20), *(v18 + 64), *(v18 + 72)))
        {
          break;
        }

        v18 += 88;
        if (!--v24)
        {
          return 25;
        }
      }

      a3 = v25;
      v21 = *(*(v18 + 32) + 16);
      v22 = v21 + v20;
      v23 = v17 - (v21 + v20 + 12);
      if (v17 < (v21 + v20 + 12))
      {
        return 2;
      }

      goto LABEL_27;
    }

    return 25;
  }

  v20 = 0;
  v18 = v8[1];
  v17 = *a3;
  v21 = *(*(v18 + 32) + 16);
  v22 = v21;
  v23 = *a3 - (v21 + 12);
  if (*a3 < v21 + 12)
  {
    return 2;
  }

LABEL_27:
  if ((*(*v18 + 20) & 0xFFFFFFFE) != 6)
  {
    v28 = *(v8 + 20);
    v118[0] = v23;
    v29 = *(a2 + v17 - v22 - 4);
    if (((v28 & 0xFFFFFFFD) == 1) == ((v29 & 0x80) == 0))
    {
      return 14;
    }

    if ((v28 | 2) == 3)
    {
      v108 = a2 + 8;
    }

    else
    {
      v108 = 0;
      v118[0] = 0;
    }

    v43 = (a2 + v17 - v22 + v20);
    v44 = v8[12];
    v111 = v17 - v22;
    if (v44)
    {
      v113 = a3;
      if (*(*v44 + 2) == 1)
      {
        v45 = -24;
      }

      else
      {
        v45 = 0;
      }

      __memcpy_chk();
      if (v21)
      {
        bzero(&v43[v45], v21);
      }

      a3 = v113;
      v111 = (v111 + v21);
      v109 = &v120;
    }

    else
    {
      v109 = v43;
    }

    v46 = bswap32(v29 & 0xFFFFFF7F);
    if (mod_srtp)
    {
      v107 = v46;
      v47 = v46;
      v48 = a3;
      srtp_err_report(3, "%s: srtcp index: %x\n", off_2808D35A0, v107);
      a3 = v48;
      v46 = v47;
    }

    v49 = *(v8 + 14);
    if (v49 + 128 > v46)
    {
      v34 = v46 >= v49;
      v50 = v46 - v49;
      if (!v34)
      {
        return 10;
      }

      if ((*(v8 + (v50 >> 5) + 16) >> v50))
      {
        return 9;
      }
    }

    v51 = *(v18 + 24);
    v52 = *(*v51 + 80);
    if (v52 <= 5 && ((1 << v52) & 0x32) != 0)
    {
      v123.i64[0] = 0;
      v123.i32[1] = *(a2 + 4);
      v123.i32[2] = (v29 & 0xFFFFFF7F) << 16;
      v123.i32[3] = HIWORD(v29);
      v53 = *v51;
      if (!*v51 || (v54 = v51[1]) == 0)
      {
LABEL_82:
        v56 = 2;
LABEL_83:
        if (v56)
        {
          return 8;
        }

        v114 = a3;
        result = (*(**(v18 + 32) + 40))(*(*(v18 + 32) + 8));
        if (result)
        {
          return result;
        }

        v57 = (*(**(v18 + 32) + 24))(*(*(v18 + 32) + 8), a2, v111, *(*(v18 + 32) + 16), &v123);
        if (mod_srtp)
        {
          v59 = off_2808D35A0;
          v60 = srtp_octet_string_hex_string(v123.i8, v21);
          v58.n128_f64[0] = srtp_err_report(3, "%s: srtcp computed tag:       %s\n", v59, v60);
        }

        if (v57)
        {
          return 7;
        }

        if (mod_srtp)
        {
          v61 = off_2808D35A0;
          v62 = srtp_octet_string_hex_string(v109, v21);
          v58.n128_f64[0] = srtp_err_report(3, "%s: srtcp tag from packet:    %s\n", v61, v62);
        }

        v63 = v109;
        if (v21 < 1)
        {
LABEL_126:
          v91 = *(*(v18 + 32) + 24);
          v117 = v91;
          if (!v91)
          {
            goto LABEL_165;
          }

          v92 = *(v18 + 24);
          v93 = v63;
          bzero(v63, v91);
          v94 = (*(*v92 + 32))(v92[1], v93, &v117);
          if (mod_srtp)
          {
            v95 = off_2808D35A0;
            v96 = srtp_octet_string_hex_string(v93, v117);
            v58.n128_f64[0] = srtp_err_report(3, "%s: keystream prefix: %s\n", v95, v96);
          }

          if (!v94)
          {
LABEL_165:
            if (!v108 || (v97 = *(v18 + 24)) != 0 && *v97 && (v98 = v97[1]) != 0 && !(*(*v97 + 40))(v98, v108, v118, v58))
            {
              v99 = v8[12];
              if (v99)
              {
                if (*(*v99 + 2) == 1)
                {
                  LODWORD(v99) = -24;
                }

                else
                {
                  LODWORD(v99) = 0;
                }
              }

              *v114 = v99 + *v114 - v22 - 4;
              v100 = *(v8 + 21);
              if (v100 != 2)
              {
                if (v100)
                {
                  if (srtp_event_handler)
                  {
                    v115 = a1;
                    v116 = 0;
                    LODWORD(v116) = bswap32(*v8);
                    srtp_event_handler(&v115);
                  }
                }

                else
                {
                  *(v8 + 21) = 2;
                }
              }

              v101 = a1[1];
              if (v8 == v101)
              {
                v115 = 0;
                result = srtp_stream_clone(v101, *(a2 + 4), &v115);
                if (result)
                {
                  return result;
                }

                v8 = v115;
                v115[15] = *a1;
                *a1 = v8;
              }

              v102 = (v8 + 7);
              v103 = v46;
LABEL_146:
              srtp_rdb_add_index(v102, v103);
              return 0;
            }
          }

          return 8;
        }

        if (&v109[v21] <= v109 + 1)
        {
          v64 = v109 + 1;
        }

        else
        {
          v64 = &v109[v21];
        }

        v65 = v64 - v109;
        if (v65 < 8)
        {
          LOBYTE(v66) = 0;
          v67 = &v123;
          v68 = v109;
          goto LABEL_124;
        }

        if (v65 >= 0x20)
        {
          v74 = v65 & 0xFFFFFFFFFFFFFFE0;
          v75 = (v109 + 16);
          v76 = v124;
          v77 = 0uLL;
          v78 = v65 & 0xFFFFFFFFFFFFFFE0;
          v79 = 0uLL;
          do
          {
            v77 = vorrq_s8(veorq_s8(v75[-1], v76[-1]), v77);
            v79 = vorrq_s8(veorq_s8(*v75, *v76), v79);
            v75 += 2;
            v76 += 2;
            v78 -= 32;
          }

          while (v78);
          v58 = vorrq_s8(v79, v77);
          v58.n128_u64[0] = vorr_s8(v58.n128_u64[0], *&vextq_s8(v58, v58, 8uLL));
          v80 = v58.n128_u64[0] | HIDWORD(v58.n128_u64[0]) | ((v58.n128_u64[0] | HIDWORD(v58.n128_u64[0])) >> 16);
          v66 = (v80 | BYTE1(v80));
          if (v65 == v74)
          {
            goto LABEL_125;
          }

          if ((v65 & 0x18) == 0)
          {
            v68 = &v109[v74];
            v67 = (&v123 + v74);
            do
            {
LABEL_124:
              v89 = v67->i8[0];
              v67 = (v67 + 1);
              v88 = v89;
              v90 = *v68++;
              LOBYTE(v66) = v90 ^ v88 | v66;
            }

            while (v68 < &v109[v21]);
            goto LABEL_125;
          }
        }

        else
        {
          LOBYTE(v66) = 0;
          v74 = 0;
        }

        v67 = (&v123 + (v65 & 0xFFFFFFFFFFFFFFF8));
        v68 = &v109[v65 & 0xFFFFFFFFFFFFFFF8];
        v58 = v66;
        v81 = &v109[v74];
        v82 = &v123.i8[v74];
        v83 = v74 - (v65 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v84 = *v82++;
          v85 = v84;
          v86 = *v81++;
          v58.n128_u64[0] = vorr_s8(veor_s8(v86, v85), v58.n128_u64[0]);
          v83 += 8;
        }

        while (v83);
        v87 = v58.n128_u64[0] | HIDWORD(v58.n128_u64[0]) | ((v58.n128_u64[0] | HIDWORD(v58.n128_u64[0])) >> 16);
        LOBYTE(v66) = v87 | BYTE1(v87);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_124;
        }

LABEL_125:
        v63 = v109;
        if (v66)
        {
          return 7;
        }

        goto LABEL_126;
      }
    }

    else
    {
      v123.i64[0] = 0;
      v123.i32[2] = 0;
      v123.i32[3] = v29 & 0xFFFFFF7F;
      v53 = *v51;
      if (!*v51)
      {
        goto LABEL_82;
      }

      v54 = v51[1];
      if (!v54)
      {
        goto LABEL_82;
      }
    }

    v55 = a3;
    v56 = (*(v53 + 48))(v54, &v123, 1);
    a3 = v55;
    goto LABEL_83;
  }

  if (v20)
  {
    v27 = *(v18 + 72);
  }

  else
  {
    v27 = 0;
  }

  v30 = *(a2 + v17 - v27 - 4);
  LODWORD(v115) = v17 - v27 - 12;
  if ((v30 & 0x80) != 0)
  {
    v110 = a2 + 8;
  }

  else
  {
    v110 = 0;
    LODWORD(v115) = 0;
  }

  v31 = bswap32(v30 & 0xFFFFFF7F);
  if (mod_srtp)
  {
    v32 = a3;
    srtp_err_report(3, "%s: srtcp index: %x\n", off_2808D35A0, v31);
    a3 = v32;
  }

  v33 = *(v8 + 14);
  if (v33 + 128 > v31)
  {
    v34 = v31 >= v33;
    v35 = v31 - v33;
    if (!v34)
    {
      return 10;
    }

    if ((*(v8 + (v35 >> 5) + 16) >> v35))
    {
      return 9;
    }
  }

  v112 = a3;
  v119 = 0;
  v123 = 0uLL;
  v36 = srtp_calc_aead_iv_srtcp(v18, &v123, v31, *(a2 + 4));
  if (v37)
  {
    return 8;
  }

  v38 = *(v18 + 24);
  if (!v38)
  {
    return 8;
  }

  if (!*v38)
  {
    return 8;
  }

  v39 = v38[1];
  if (!v39 || (*(*v38 + 48))(v39, &v123, 1, v36))
  {
    return 8;
  }

  v40 = *(v18 + 24);
  if (v110)
  {
    if (!v40)
    {
      return 8;
    }

    if (!*v40)
    {
      return 8;
    }

    if (!v40[1])
    {
      return 8;
    }

    v41 = *(*v40 + 24);
    if (!v41)
    {
      return 8;
    }

    v42 = v41();
    result = 8;
    if (v42)
    {
      return result;
    }
  }

  else
  {
    if (!v40)
    {
      return 8;
    }

    if (!*v40)
    {
      return 8;
    }

    if (!v40[1])
    {
      return 8;
    }

    v69 = *(*v40 + 24);
    if (!v69 || v69())
    {
      return 8;
    }
  }

  v118[1] = v30;
  v70 = *(v18 + 24);
  if (!v70)
  {
    return 8;
  }

  if (!*v70)
  {
    return 8;
  }

  if (!v70[1])
  {
    return 8;
  }

  v71 = *(*v70 + 24);
  if (!v71 || v71())
  {
    return 8;
  }

  if (v110)
  {
    v72 = *(v18 + 24);
    if (v72 && *v72 && v72[1])
    {
      v73 = *(*v72 + 40);
      goto LABEL_153;
    }

    return 2;
  }

  v119 = v21;
  v104 = *(v18 + 24);
  if (!v104 || !*v104 || !v104[1])
  {
    return 2;
  }

  v73 = *(*v104 + 40);
LABEL_153:
  result = v73();
  if (!result)
  {
    *v112 = *v112 - v27 - v21 - 4;
    v105 = *(v8 + 21);
    if (v105 != 2)
    {
      if (v105)
      {
        if (srtp_event_handler)
        {
          v120 = a1;
          v121 = bswap32(*v8);
          v122 = 0;
          srtp_event_handler(&v120);
        }
      }

      else
      {
        *(v8 + 21) = 2;
      }
    }

    v106 = a1[1];
    if (v106 != v8)
    {
      goto LABEL_160;
    }

    v120 = 0;
    result = srtp_stream_clone(v106, *(a2 + 4), &v120);
    if (!result)
    {
      v8 = v120;
      v120[15] = *a1;
      *a1 = v8;
LABEL_160:
      v102 = (v8 + 7);
      v103 = v31;
      goto LABEL_146;
    }
  }

  return result;
}

uint64_t srtp_err_handler(uint64_t result, uint64_t a2)
{
  if (_MergedGlobals_26)
  {
    if ((result - 1) >= 3)
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    return _MergedGlobals_26(result, a2, qword_28100BF20);
  }

  return result;
}

uint64_t srtp_install_log_handler(uint64_t (*a1)(void, void, void), uint64_t a2)
{
  if (_MergedGlobals_26)
  {
    srtp_err_report_handler = 0;
  }

  _MergedGlobals_26 = a1;
  qword_28100BF20 = a2;
  if (a1)
  {
    srtp_err_report_handler = srtp_err_handler;
  }

  return 0;
}

int8x16_t srtp_calc_aead_iv(uint64_t a1, int8x16_t *a2, unint64_t a3, uint64_t a4)
{
  v14.i64[0] = 0;
  v14.i16[7] = 0;
  v13 = 0uLL;
  *(&v14.i32[2] + 2) = bswap32(a3) >> 16;
  *(&v14.i32[1] + 2) = bswap32(a3 >> 16);
  *(v14.i32 + 2) = *(a4 + 8);
  v6 = mod_srtp;
  if (mod_srtp)
  {
    v7 = off_2808D35A0;
    v8 = v128_hex_string(&v14);
    srtp_err_report(3, "%s: Pre-salted RTP IV = %s\n\n", v7, v8);
    v6 = mod_srtp;
    *&v13 = *(a1 + 40);
    DWORD2(v13) = *(a1 + 48);
    if (mod_srtp)
    {
      v9 = off_2808D35A0;
      v10 = v128_hex_string(&v13);
      srtp_err_report(3, "%s: RTP SALT = %s\n\n", v9, v10);
      v6 = HIDWORD(v13);
    }
  }

  else
  {
    *&v13 = *(a1 + 40);
    DWORD2(v13) = *(a1 + 48);
  }

  v11.i64[0] = v13;
  v11.i64[1] = __PAIR64__(v6, DWORD2(v13));
  result = veorq_s8(v14, v11);
  *a2 = result;
  return result;
}

int8x16_t srtp_calc_aead_iv_srtcp(uint64_t a1, int8x16_t *a2, unsigned int a3, __int32 a4)
{
  v14.i64[1] = 0;
  v13 = 0uLL;
  v14.i16[0] = 0;
  *(v14.i32 + 2) = a4;
  v14.i16[3] = 0;
  if ((a3 & 0x80000000) == 0)
  {
    v14.i32[2] = bswap32(a3);
    v6 = mod_srtp;
    if (mod_srtp)
    {
      v7 = off_2808D35A0;
      v8 = v128_hex_string(&v14);
      srtp_err_report(3, "%s: Pre-salted RTCP IV = %s\n\n", v7, v8);
      v6 = mod_srtp;
      *&v13 = *(a1 + 52);
      DWORD2(v13) = *(a1 + 60);
      if (mod_srtp)
      {
        v9 = off_2808D35A0;
        v10 = v128_hex_string(&v13);
        srtp_err_report(3, "%s: RTCP SALT = %s\n\n", v9, v10);
        v6 = HIDWORD(v13);
      }
    }

    else
    {
      *&v13 = *(a1 + 52);
      DWORD2(v13) = *(a1 + 60);
    }

    v11.i64[0] = v13;
    v11.i64[1] = __PAIR64__(v6, DWORD2(v13));
    result = veorq_s8(v14, v11);
    *a2 = result;
  }

  return result;
}

uint64_t arm_cpu_caps()
{
  v0 = getenv("VPX_SIMD_CAPS");
  if (v0 && *v0)
  {
    v1 = strtol(v0, 0, 0);
  }

  else
  {
    v2 = getenv("VPX_SIMD_CAPS_MASK");
    if (v2 && *v2)
    {
      v1 = strtol(v2, 0, 0) & 1;
    }

    else
    {
      v1 = 1;
    }
  }

  v3 = v1 & 0xFFFFFFF9;
  if ((v1 & 2) != 0)
  {
    v3 = v1;
  }

  if ((v3 & 2) == 0)
  {
    v3 &= 0xFFFFFFF5;
  }

  if ((v3 & 4) == 0)
  {
    v3 &= 0xFFFFFFF3;
  }

  if ((v3 & 8) != 0)
  {
    return v3;
  }

  else
  {
    return v3 & 0xFFFFFFE7;
  }
}

void vp8_de_alloc_frame_buffers(uint64_t a1)
{
  v2 = (a1 + 1856);
  if (*(a1 + 1952))
  {
    v3 = *(a1 + 1944);
    if (v3)
    {
      free(*(v3 - 8));
    }
  }

  v4 = 0uLL;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  if (*(a1 + 2112))
  {
    v5 = *(a1 + 2104);
    if (v5)
    {
      free(*(v5 - 8));
      v4 = 0uLL;
    }
  }

  *(a1 + 2144) = v4;
  *(a1 + 2160) = v4;
  *(a1 + 2112) = v4;
  *(a1 + 2128) = v4;
  *(a1 + 2080) = v4;
  *(a1 + 2096) = v4;
  *(a1 + 2048) = v4;
  *(a1 + 2064) = v4;
  *(a1 + 2016) = v4;
  *(a1 + 2032) = v4;
  if (*(a1 + 2272))
  {
    v6 = *(a1 + 2264);
    if (v6)
    {
      free(*(v6 - 8));
    }
  }

  v7 = 0uLL;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  if (*(a1 + 2432))
  {
    v8 = *(a1 + 2424);
    if (v8)
    {
      free(*(v8 - 8));
      v7 = 0uLL;
    }
  }

  *(a1 + 2464) = v7;
  *(a1 + 2480) = v7;
  *(a1 + 2432) = v7;
  *(a1 + 2448) = v7;
  *(a1 + 2400) = v7;
  *(a1 + 2416) = v7;
  *(a1 + 2368) = v7;
  *(a1 + 2384) = v7;
  *(a1 + 2336) = v7;
  *(a1 + 2352) = v7;
  if (*(a1 + 2624))
  {
    v9 = *(a1 + 2616);
    if (v9)
    {
      free(*(v9 - 8));
    }
  }

  v10 = 0uLL;
  *(a1 + 2656) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2592) = 0u;
  *(a1 + 2608) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2528) = 0u;
  *(a1 + 2544) = 0u;
  if (*(a1 + 2784))
  {
    v11 = *(a1 + 2776);
    if (v11)
    {
      free(*(v11 - 8));
      v10 = 0uLL;
    }
  }

  *(a1 + 2816) = v10;
  *(a1 + 2832) = v10;
  *(a1 + 2784) = v10;
  *(a1 + 2800) = v10;
  *(a1 + 2752) = v10;
  *(a1 + 2768) = v10;
  *(a1 + 2720) = v10;
  *(a1 + 2736) = v10;
  *(a1 + 2688) = v10;
  *(a1 + 2704) = v10;
  if (*(a1 + 3008))
  {
    if (*(a1 + 2944))
    {
      v12 = *(a1 + 2936);
      if (v12)
      {
        free(*(v12 - 8));
      }
    }

    *(a1 + 2976) = 0u;
    *(a1 + 2992) = 0u;
    *(a1 + 2944) = 0u;
    *(a1 + 2960) = 0u;
    *(a1 + 2912) = 0u;
    *(a1 + 2928) = 0u;
    *(a1 + 2880) = 0u;
    *(a1 + 2896) = 0u;
    *(a1 + 2848) = 0u;
    *(a1 + 2864) = 0u;
  }

  v13 = *(a1 + 3016);
  if (v13)
  {
    free(*(v13 - 8));
  }

  *(a1 + 3016) = 0;
  v14 = *(a1 + 5864);
  if (v14)
  {
    free(*(v14 - 8));
  }

  *(a1 + 5864) = 0;
  v15 = *(a1 + 3576);
  if (v15)
  {
    free(*(v15 - 8));
  }

  v16 = *(a1 + 3096);
  if (v16)
  {
    free(*(v16 - 8));
  }

  *(a1 + 3576) = 0;
  *(a1 + 3096) = 0;
}

uint64_t vp8_alloc_frame_buffers(uint64_t a1, int a2, int a3)
{
  vp8_de_alloc_frame_buffers(a1);
  v6 = a2 + 15;
  v7 = a3 + 15;
  *(a1 + 2496) = 0;
  *(a1 + 2008) = 0;
  if (*(a1 + 1952))
  {
    v8 = *(a1 + 1944);
    if (v8)
    {
      free(*(v8 - 8));
    }
  }

  *(a1 + 1984) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 1856, v6 & 0xFFFFFFF0, v7 & 0xFFFFFFF0, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 2500) = 0;
  *(a1 + 2168) = 0;
  if (*(a1 + 2112))
  {
    v9 = *(a1 + 2104);
    if (v9)
    {
      free(*(v9 - 8));
    }
  }

  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2112) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2096) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2032) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 2016, v6 & 0xFFFFFFF0, v7 & 0xFFFFFFF0, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 2504) = 0;
  *(a1 + 2328) = 0;
  if (*(a1 + 2272))
  {
    v10 = *(a1 + 2264);
    if (v10)
    {
      free(*(v10 - 8));
    }
  }

  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 2176, v6 & 0xFFFFFFF0, v7 & 0xFFFFFFF0, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 2508) = 0;
  *(a1 + 2488) = 0;
  if (*(a1 + 2432))
  {
    v11 = *(a1 + 2424);
    if (v11)
    {
      free(*(v11 - 8));
    }
  }

  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 2336, v6 & 0xFFFFFFF0, v7 & 0xFFFFFFF0, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 2512) = xmmword_273B90830;
  *&v12 = 0x100000001;
  *(&v12 + 1) = 0x100000001;
  *(a1 + 2496) = v12;
  if (*(a1 + 2624))
  {
    v13 = *(a1 + 2616);
    if (v13)
    {
      free(*(v13 - 8));
    }
  }

  *(a1 + 2656) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2624) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2592) = 0u;
  *(a1 + 2608) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2528) = 0u;
  *(a1 + 2544) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 2528, v6 & 0xFFFFFFF0, 16, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 3044) = v7 >> 4;
  *(a1 + 3048) = v6 >> 4;
  *(a1 + 3040) = (v7 >> 4) * (v6 >> 4);
  v14 = (v6 >> 4) + 1;
  *(a1 + 3052) = v14;
  v15 = v14 + v14 * (v7 >> 4);
  if ((v15 & 0x80000000) != 0 || (v16 = 76 * v15, (v17 = malloc_type_malloc(v16 + 23, 0xD93B561uLL)) == 0) || (v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0, *(v18 - 8) = v17, !v18))
  {
    v22 = 3096;
LABEL_28:
    *(a1 + v22) = 0;
LABEL_29:
    vp8_de_alloc_frame_buffers(a1);
    return 1;
  }

  bzero(((v17 + 23) & 0xFFFFFFFFFFFFFFF0), v16);
  *(a1 + 3096) = v18;
  *(a1 + 3104) = v18 + 76 * *(a1 + 3052) + 76;
  v19 = *(a1 + 3048);
  v20 = 9 * v19;
  if (v19)
  {
    if (v20 > 0xFFFFFFFFE9)
    {
LABEL_41:
      v22 = 3576;
      goto LABEL_28;
    }

    v21 = v20 + 23;
  }

  else
  {
    v21 = 23;
  }

  v24 = malloc_type_malloc(v21, 0xD93B561uLL);
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v25 - 8) = v24;
  if (!v25)
  {
    goto LABEL_41;
  }

  bzero(((v24 + 23) & 0xFFFFFFFFFFFFFFF0), v20);
  *(a1 + 3576) = v25;
  if (*(a1 + 2784))
  {
    v26 = *(a1 + 2776);
    if (v26)
    {
      free(*(v26 - 8));
    }
  }

  *(a1 + 2816) = 0u;
  *(a1 + 2832) = 0u;
  *(a1 + 2784) = 0u;
  *(a1 + 2800) = 0u;
  *(a1 + 2752) = 0u;
  *(a1 + 2768) = 0u;
  *(a1 + 2720) = 0u;
  *(a1 + 2736) = 0u;
  *(a1 + 2688) = 0u;
  *(a1 + 2704) = 0u;
  if ((vp8_yv12_realloc_frame_buffer(a1 + 2688, v6 & 0xFFFFFFF0, v7 & 0xFFFFFFF0, 32) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  *(a1 + 3008) = 0;
  *(a1 + 5840) = 0u;
  *(a1 + 5856) = 0u;
  memset(*(a1 + 2776), 128, *(a1 + 2800));
  v27 = 24 * ((*(a1 + 3048) + 1) & 0x1FFFFFFFFFFFFFFELL) + 23;
  if (v27 > 0x10000000000 || (v28 = malloc_type_malloc(v27, 0xD93B561uLL)) == 0)
  {
    v22 = 3016;
    goto LABEL_28;
  }

  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v29 - 8) = v28;
  *(a1 + 3016) = v29;
  if (!v29)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t *vp8_bilinear_predict4x4_neon(uint64_t *result, int a2, int a3, int a4, _DWORD *a5, int a6)
{
  if (!a3)
  {
    v26 = (result + a2);
    v27 = *v26;
    v28 = (v26 + a2);
    v29 = vshld_n_s64(*v28, 0x20uLL);
    v30 = (v28 + a2);
    v22 = *(v30 + a2);
    *v20.i8 = vext_s8(vshld_n_s64(*result, 0x20uLL), v27, 4uLL);
    v21 = vext_s8(v29, *v30, 4uLL);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20.u64[1] = v21;
    goto LABEL_6;
  }

  v6 = &bifilter4_coeff + 2 * a3;
  v7 = vld1_dup_s8(v6++);
  v8 = vld1_dup_s8(v6);
  v9.i64[0] = *result;
  v10 = (result + a2);
  v11 = *v10;
  v12 = (v10 + a2);
  v13.i64[0] = *v12;
  v14 = (v12 + a2);
  v15 = vzip1_s32(*result, v11);
  v9.u64[1] = v11;
  v13.u64[1] = *v14;
  v16 = vshrq_n_u64(v9, 8uLL);
  v17 = vshrq_n_u64(v13, 8uLL);
  v18 = vmlal_u8(vmull_u8(vzip1_s32(vshrn_n_s64(v13, 8uLL), *&vextq_s8(v17, v17, 8uLL)), v8), vzip1_s32(*v13.i8, *v14), v7);
  v19 = vmlal_u8(vmull_u8(vshrd_n_u64(*(v14 + a2), 8uLL), v8), *(v14 + a2), v7);
  *v20.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vzip1_s32(vshrn_n_s64(v9, 8uLL), *&vextq_s8(v16, v16, 8uLL)), v8), v15, v7), 7uLL);
  v21 = vqrshrn_n_u16(v18, 7uLL);
  v22 = vqrshrn_n_u16(v19, 7uLL);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = &bifilter4_coeff + 2 * a4;
  v24 = vld1_dup_s8(v23++);
  v25 = vld1_dup_s8(v23);
  v20 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(*v20.i8, v21, 4uLL), v25), *v20.i8, v24), 7uLL), vmlal_u8(vmull_u8(vext_s8(v21, v22, 4uLL), v25), v21, v24), 7uLL);
LABEL_6:
  *a5 = v20.i32[0];
  v31 = (a5 + a6);
  *v31 = v20.i32[1];
  v32 = (v31 + a6);
  *v32 = v20.i32[2];
  *(v32 + a6) = v20.i32[3];
  return result;
}

int8x16_t *vp8_bilinear_predict8x4_neon(int8x16_t *result, int a2, int a3, int a4, uint8x8_t *a5, int a6)
{
  v6 = (result + a2 + a2);
  v7 = &v6->i8[a2];
  if (!a3)
  {
    v12 = *&result->i8[a2];
    v11 = *result->i8;
    v13 = *v6->i8;
    v14 = *&v6->i8[a2];
    v15 = *&v7[a2];
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = &bifilter4_coeff + 2 * a3;
  v9 = vld1_dup_s8(v8++);
  v10 = vld1_dup_s8(v8);
  v11 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*result, *result, 1uLL), v10), *result->i8, v9), 7uLL);
  v12 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*(result + a2), *(result + a2), 1uLL), v10), *&result->i8[a2], v9), 7uLL);
  v13 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*v6, *v6, 1uLL), v10), *v6->i8, v9), 7uLL);
  v14 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*(v6 + a2), *(v6 + a2), 1uLL), v10), *&v6->i8[a2], v9), 7uLL);
  v15 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*&v7[a2], *&v7[a2], 1uLL), v10), *&v7[a2], v9), 7uLL);
  if (a4)
  {
LABEL_3:
    v16 = &bifilter4_coeff + 2 * a4;
    v17 = vld1_dup_s8(v16++);
    v18 = vld1_dup_s8(v16);
    v11 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v12, v18), v11, v17), 7uLL);
    v12 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v13, v18), v12, v17), 7uLL);
    v13 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v14, v18), v13, v17), 7uLL);
    v14 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v15, v18), v14, v17), 7uLL);
  }

LABEL_4:
  *a5 = v11;
  v19 = (a5 + a6);
  *v19 = v12;
  v20 = (v19 + a6);
  *v20 = v13;
  *(v20 + a6) = v14;
  return result;
}

int8x16_t *vp8_bilinear_predict8x8_neon(int8x16_t *result, int a2, int a3, int a4, uint8x8_t *a5, int a6)
{
  v6 = &result->i8[a2 + a2];
  v7 = (v6 + 2 * a2);
  if (!a3)
  {
    v15 = *result->i8;
    v16 = *&result->i8[a2];
    v17 = *v6;
    v18 = *(v6 + a2);
    v30 = *v7;
    v44 = (v7 + a2);
    v31 = *v44;
    v45 = (v44 + a2);
    v32 = *v45;
    v46 = (v45 + a2);
    v33 = *v46;
    v34 = *(v46 + a2);
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *v6->i8;
  v9 = *&v6->i8[a2];
  v10 = &bifilter4_coeff + 2 * a3;
  v11 = vld1_dup_s8(v10++);
  v12 = vld1_dup_s8(v10);
  v13 = vmlal_u8(vmull_u8(*&vextq_s8(v8, v8, 1uLL), v12), *v8.i8, v11);
  v14 = vmlal_u8(vmull_u8(*&vextq_s8(v9, v9, 1uLL), v12), *v9.i8, v11);
  v15 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*result, *result, 1uLL), v12), *result->i8, v11), 7uLL);
  v16 = vqrshrn_n_u16(vmlal_u8(vmull_u8(*&vextq_s8(*(result + a2), *(result + a2), 1uLL), v12), *&result->i8[a2], v11), 7uLL);
  v17 = vqrshrn_n_u16(v13, 7uLL);
  v18 = vqrshrn_n_u16(v14, 7uLL);
  v19 = *v7->i8;
  v20 = (v7 + a2);
  v21 = *v20;
  v22 = (v20 + a2);
  v23 = *v22;
  v24 = (v22 + a2);
  v25 = vmlal_u8(vmull_u8(*&vextq_s8(v19, v19, 1uLL), v12), *v19.i8, v11);
  v26 = vmlal_u8(vmull_u8(*&vextq_s8(v21, v21, 1uLL), v12), *v21.i8, v11);
  v27 = vmlal_u8(vmull_u8(*&vextq_s8(v23, v23, 1uLL), v12), *v23.i8, v11);
  v28 = vmlal_u8(vmull_u8(*&vextq_s8(*v24, *v24, 1uLL), v12), *v24->i8, v11);
  v29 = vmlal_u8(vmull_u8(*&vextq_s8(*(v24 + a2), *(v24 + a2), 1uLL), v12), *&v24->i8[a2], v11);
  v30 = vqrshrn_n_u16(v25, 7uLL);
  v31 = vqrshrn_n_u16(v26, 7uLL);
  v32 = vqrshrn_n_u16(v27, 7uLL);
  v33 = vqrshrn_n_u16(v28, 7uLL);
  v34 = vqrshrn_n_u16(v29, 7uLL);
  if (a4)
  {
LABEL_3:
    v35 = &bifilter4_coeff + 2 * a4;
    v36 = vld1_dup_s8(v35++);
    v37 = vld1_dup_s8(v35);
    v15 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v16, v37), v15, v36), 7uLL);
    v16 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v17, v37), v16, v36), 7uLL);
    v17 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v18, v37), v17, v36), 7uLL);
    v18 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v30, v37), v18, v36), 7uLL);
    v30 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v31, v37), v30, v36), 7uLL);
    v31 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v32, v37), v31, v36), 7uLL);
    v32 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v33, v37), v32, v36), 7uLL);
    v33 = vqrshrn_n_u16(vmlal_u8(vmull_u8(v34, v37), v33, v36), 7uLL);
  }

LABEL_4:
  *a5 = v15;
  v38 = (a5 + a6);
  *v38 = v16;
  v39 = (v38 + a6);
  *v39 = v17;
  v40 = (v39 + a6);
  *v40 = v18;
  v41 = (v40 + a6);
  *v41 = v30;
  v42 = (v41 + a6);
  *v42 = v31;
  v43 = (v42 + a6);
  *v43 = v32;
  *(v43 + a6) = v33;
  return result;
}

int8x16_t vp8_bilinear_predict16x16_neon(int8x8_t *a1, int a2, int a3, int a4, uint8x16_t *a5, int a6, int8x8_t a7, int8x8_t a8, int8x8_t a9)
{
  v208 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = &bifilter4_coeff + 2 * a3;
    a7.i8[0] = *v9;
    a9.i8[0] = v9[1];
    if (a4)
    {
      v10 = a1[1];
      v11 = (a1 + a2);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = (v11 + a2);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = (v15 + a2);
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = (v19 + a2);
      v24 = vdup_lane_s8(a7, 0);
      v25 = vdup_lane_s8(a9, 0);
      v26 = vmlal_u8(vmull_u8(vext_s8(*a1, v10, 1uLL), v25), *a1, v24);
      v27 = vmlal_u8(vmull_u8(vext_s8(v12, v13, 1uLL), v25), v12, v24);
      v28 = vmlal_u8(vmull_u8(vext_s8(v16, v17, 1uLL), v25), v16, v24);
      v29 = vmlal_u8(vmull_u8(vext_s8(v10, a1[2], 1uLL), v25), v10, v24);
      v30 = vmlal_u8(vmull_u8(vext_s8(v13, v14, 1uLL), v25), v13, v24);
      v31 = vmlal_u8(vmull_u8(vext_s8(v17, v18, 1uLL), v25), v17, v24);
      v32 = vmlal_u8(vmull_u8(vext_s8(v21, v22, 1uLL), v25), v21, v24);
      v33 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v20, v21, 1uLL), v25), v20, v24), 7uLL);
      v34 = *v23;
      v35 = v23[1];
      v36 = v23[2];
      v37 = (v23 + a2);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = (v37 + a2);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41[2];
      v45 = (v41 + a2);
      v46 = *v45;
      v47 = v45[1];
      v48 = v45[2];
      result = vqrshrn_high_n_u16(vqrshrn_n_u16(v26, 7uLL), v29, 7uLL);
      v204 = vqrshrn_high_n_u16(vqrshrn_n_u16(v27, 7uLL), v30, 7uLL);
      v205 = vqrshrn_high_n_u16(vqrshrn_n_u16(v28, 7uLL), v31, 7uLL);
      v206 = vqrshrn_high_n_u16(v33, v32, 7uLL);
      v50 = v207;
      v51 = (v45 + a2);
      v52 = vmlal_u8(vmull_u8(vext_s8(v34, v35, 1uLL), v25), v34, v24);
      v53 = vmlal_u8(vmull_u8(vext_s8(v35, v36, 1uLL), v25), v35, v24);
      v54 = vmlal_u8(vmull_u8(vext_s8(v39, v40, 1uLL), v25), v39, v24);
      v55 = vmlal_u8(vmull_u8(vext_s8(v43, v44, 1uLL), v25), v43, v24);
      v56 = vmlal_u8(vmull_u8(vext_s8(v47, v48, 1uLL), v25), v47, v24);
      *v30.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v38, v39, 1uLL), v25), v38, v24), 7uLL);
      *v29.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v42, v43, 1uLL), v25), v42, v24), 7uLL);
      *v28.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v46, v47, 1uLL), v25), v46, v24), 7uLL);
      v57 = *v51;
      v58 = v51[1];
      v59 = v51[2];
      v60 = (v51 + a2);
      v61 = *v60;
      v62 = v60[1];
      v63 = v60[2];
      v64 = (v60 + a2);
      v65 = *v64;
      v66 = v64[1];
      v67 = v64[2];
      v68 = (v64 + a2);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[2];
      v207[0] = vqrshrn_high_n_u16(vqrshrn_n_u16(v52, 7uLL), v53, 7uLL);
      v207[1] = vqrshrn_high_n_u16(*v30.i8, v54, 7uLL);
      v207[2] = vqrshrn_high_n_u16(*v29.i8, v55, 7uLL);
      v207[3] = vqrshrn_high_n_u16(*v28.i8, v56, 7uLL);
      v72 = (v68 + a2);
      v73 = vmlal_u8(vmull_u8(vext_s8(v58, v59, 1uLL), v25), v58, v24);
      v74 = vmlal_u8(vmull_u8(vext_s8(v62, v63, 1uLL), v25), v62, v24);
      v75 = vmlal_u8(vmull_u8(vext_s8(v66, v67, 1uLL), v25), v66, v24);
      v76 = vmlal_u8(vmull_u8(vext_s8(v70, v71, 1uLL), v25), v70, v24);
      *v52.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v57, v58, 1uLL), v25), v57, v24), 7uLL);
      *v30.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v61, v62, 1uLL), v25), v61, v24), 7uLL);
      *v29.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v65, v66, 1uLL), v25), v65, v24), 7uLL);
      *v28.i8 = vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v69, v70, 1uLL), v25), v69, v24), 7uLL);
      v77 = *v72;
      v78 = v72[1];
      v79 = v72[2];
      v80 = (v72 + a2);
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[2];
      v84 = (v80 + a2);
      v85 = *v84;
      v86 = v84[1];
      v87 = v84[2];
      v88 = (v84 + a2);
      v89 = *v88;
      v90 = v88[1];
      v91 = v88[2];
      v207[4] = vqrshrn_high_n_u16(*v52.i8, v73, 7uLL);
      v207[5] = vqrshrn_high_n_u16(*v30.i8, v74, 7uLL);
      v207[6] = vqrshrn_high_n_u16(*v29.i8, v75, 7uLL);
      v207[7] = vqrshrn_high_n_u16(*v28.i8, v76, 7uLL);
      v92 = (v88 + a2);
      *v30.i8 = v92[1];
      v93 = vmlal_u8(vmull_u8(vext_s8(v77, v78, 1uLL), v25), v77, v24);
      v94 = vmlal_u8(vmull_u8(vext_s8(v81, v82, 1uLL), v25), v81, v24);
      v95 = vmlal_u8(vmull_u8(vext_s8(v85, v86, 1uLL), v25), v85, v24);
      v96 = vmlal_u8(vmull_u8(vext_s8(v78, v79, 1uLL), v25), v78, v24);
      v97 = vmlal_u8(vmull_u8(vext_s8(v82, v83, 1uLL), v25), v82, v24);
      v98 = vmlal_u8(vmull_u8(vext_s8(v86, v87, 1uLL), v25), v86, v24);
      v99 = vmlal_u8(vmull_u8(vext_s8(v89, v90, 1uLL), v25), v89, v24);
      v100 = vmlal_u8(vmull_u8(vext_s8(*v92, *v30.i8, 1uLL), v25), *v92, v24);
      v101 = vmlal_u8(vmull_u8(vext_s8(v90, v91, 1uLL), v25), v90, v24);
      v102 = vmlal_u8(vmull_u8(vext_s8(*v30.i8, v92[2], 1uLL), v25), *v30.i8, v24);
      v103 = vqrshrn_high_n_u16(vqrshrn_n_u16(v93, 7uLL), v96, 7uLL);
      v207[8] = v103;
      v207[9] = vqrshrn_high_n_u16(vqrshrn_n_u16(v94, 7uLL), v97, 7uLL);
      v207[10] = vqrshrn_high_n_u16(vqrshrn_n_u16(v95, 7uLL), v98, 7uLL);
      v207[11] = vqrshrn_high_n_u16(vqrshrn_n_u16(v99, 7uLL), v101, 7uLL);
      v207[12] = vqrshrn_high_n_u16(vqrshrn_n_u16(v100, 7uLL), v102, 7uLL);
      v104 = &bifilter4_coeff + 2 * a4;
      v103.i8[0] = *v104;
      v102.i8[0] = v104[1];
      v105 = 5;
      v106 = vdupq_lane_s8(*v103.i8, 0);
      v107 = vdupq_lane_s8(*v102.i8, 0);
      do
      {
        v108 = *v50[-6].i8;
        v109 = *v50[-4].i8;
        v110 = vmlal_u8(vmull_u8(*v108.i8, *v107.i8), *result.i8, *v106.i8);
        v111 = vmlal_high_u8(vmull_high_u8(v108, v107), result, v106);
        v112 = *v50[-2].i8;
        v113 = *v50->i8;
        v114 = vmlal_u8(vmull_u8(*v109.i8, *v107.i8), *v108.i8, *v106.i8);
        v115 = vmlal_high_u8(vmull_high_u8(v109, v107), v108, v106);
        v116 = vmlal_u8(vmull_u8(*v112.i8, *v107.i8), *v109.i8, *v106.i8);
        v117 = vmlal_high_u8(vmull_high_u8(v112, v107), v109, v106);
        v118 = vmlal_u8(vmull_u8(*v50, *v107.i8), *v112.i8, *v106.i8);
        v119 = vmlal_high_u8(vmull_high_u8(*v50->i8, v107), v112, v106);
        *a5 = vqrshrn_high_n_u16(vqrshrn_n_u16(v110, 7uLL), v111, 7uLL);
        *(a5 + a6) = vqrshrn_high_n_u16(vqrshrn_n_u16(v114, 7uLL), v115, 7uLL);
        v120 = (a5 + a6 + a6);
        *v120 = vqrshrn_high_n_u16(vqrshrn_n_u16(v116, 7uLL), v117, 7uLL);
        v121 = (v120 + a6);
        *v121 = vqrshrn_high_n_u16(vqrshrn_n_u16(v118, 7uLL), v119, 7uLL);
        a5 = (v121 + a6);
        --v105;
        v50 += 8;
        result = v113;
      }

      while (v105 > 1);
    }

    else
    {
      v133 = (a1 + a2);
      v134 = *v133;
      v135 = v133[1];
      v136 = v133[2];
      v137 = (v133 + a2);
      v138 = *v137;
      v139 = v137[1];
      v140 = v137[2];
      v141 = (v137 + a2);
      v142 = (v141 + a2);
      v143 = vdup_lane_s8(a7, 0);
      v144 = vdup_lane_s8(a9, 0);
      v145 = vmlal_u8(vmull_u8(vext_s8(v134, v135, 1uLL), v144), v134, v143);
      v146 = vmlal_u8(vmull_u8(vext_s8(v138, v139, 1uLL), v144), v138, v143);
      v147 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(*v141, v141[1], 1uLL), v144), *v141, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(v141[1], v141[2], 1uLL), v144), v141[1], v143), 7uLL);
      *a5 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(*a1, a1[1], 1uLL), v144), *a1, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(a1[1], a1[2], 1uLL), v144), a1[1], v143), 7uLL);
      v148 = (a5 + a6);
      *v148 = vqrshrn_high_n_u16(vqrshrn_n_u16(v145, 7uLL), vmlal_u8(vmull_u8(vext_s8(v135, v136, 1uLL), v144), v135, v143), 7uLL);
      v149 = (v148 + a6);
      *v149 = vqrshrn_high_n_u16(vqrshrn_n_u16(v146, 7uLL), vmlal_u8(vmull_u8(vext_s8(v139, v140, 1uLL), v144), v139, v143), 7uLL);
      v150 = (v149 + a6);
      *v150 = v147;
      v151 = (v150 + a6);
      v152 = *v142;
      *v145.i8 = v142[1];
      v153 = v142[2];
      v154 = (v142 + a2);
      v155 = *v154;
      *v146.i8 = v154[1];
      v156 = v154[2];
      v157 = (v154 + a2);
      v158 = *v157;
      *v147.i8 = v157[1];
      v159 = v157[2];
      v160 = (v157 + a2);
      v161 = *v160;
      v162 = v160[1];
      v163 = v160[2];
      v164 = (v160 + a2);
      *v151 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v152, *v145.i8, 1uLL), v144), v152, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v145.i8, v153, 1uLL), v144), *v145.i8, v143), 7uLL);
      v165 = (v151 + a6);
      *v165 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v155, *v146.i8, 1uLL), v144), v155, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v146.i8, v156, 1uLL), v144), *v146.i8, v143), 7uLL);
      v166 = (v165 + a6);
      *v166 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v158, *v147.i8, 1uLL), v144), v158, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v147.i8, v159, 1uLL), v144), *v147.i8, v143), 7uLL);
      v167 = (v166 + a6);
      *v167 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v161, v162, 1uLL), v144), v161, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(v162, v163, 1uLL), v144), v162, v143), 7uLL);
      v168 = (v167 + a6);
      v169 = *v164;
      *v145.i8 = v164[1];
      v170 = v164[2];
      v171 = (v164 + a2);
      v172 = *v171;
      *v146.i8 = v171[1];
      v173 = v171[2];
      v174 = (v171 + a2);
      v175 = *v174;
      *v147.i8 = v174[1];
      v176 = v174[2];
      v177 = (v174 + a2);
      v178 = *v177;
      v179 = v177[1];
      v180 = v177[2];
      v181 = (v177 + a2);
      *v168 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v169, *v145.i8, 1uLL), v144), v169, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v145.i8, v170, 1uLL), v144), *v145.i8, v143), 7uLL);
      v182 = (v168 + a6);
      *v182 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v172, *v146.i8, 1uLL), v144), v172, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v146.i8, v173, 1uLL), v144), *v146.i8, v143), 7uLL);
      v183 = (v182 + a6);
      *v183 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v175, *v147.i8, 1uLL), v144), v175, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(*v147.i8, v176, 1uLL), v144), *v147.i8, v143), 7uLL);
      v184 = (v183 + a6);
      *v184 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(vext_s8(v178, v179, 1uLL), v144), v178, v143), 7uLL), vmlal_u8(vmull_u8(vext_s8(v179, v180, 1uLL), v144), v179, v143), 7uLL);
      v185 = (v184 + a6);
      v186 = *v181;
      *v145.i8 = v181[1];
      v187 = v181[2];
      v188 = (v181 + a2);
      v189 = *v188;
      *v146.i8 = v188[1];
      v190 = v188[2];
      v191 = (v188 + a2);
      *v147.i8 = v191[1];
      v192 = (v191 + a2);
      v193 = v192[1];
      v194 = vmlal_u8(vmull_u8(vext_s8(v186, *v145.i8, 1uLL), v144), v186, v143);
      v195 = vmlal_u8(vmull_u8(vext_s8(v189, *v146.i8, 1uLL), v144), v189, v143);
      v196 = vmlal_u8(vmull_u8(vext_s8(*v191, *v147.i8, 1uLL), v144), *v191, v143);
      v197 = vmlal_u8(vmull_u8(vext_s8(*v192, v193, 1uLL), v144), *v192, v143);
      v198 = vmlal_u8(vmull_u8(vext_s8(*v145.i8, v187, 1uLL), v144), *v145.i8, v143);
      v199 = vmlal_u8(vmull_u8(vext_s8(*v146.i8, v190, 1uLL), v144), *v146.i8, v143);
      v200 = vmlal_u8(vmull_u8(vext_s8(*v147.i8, v191[2], 1uLL), v144), *v147.i8, v143);
      v201 = vmlal_u8(vmull_u8(vext_s8(v193, v192[2], 1uLL), v144), v193, v143);
      result = vqrshrn_high_n_u16(vqrshrn_n_u16(v194, 7uLL), v198, 7uLL);
      *v185 = result;
      v202 = (v185 + a6);
      *v202 = vqrshrn_high_n_u16(vqrshrn_n_u16(v195, 7uLL), v199, 7uLL);
      v203 = (v202 + a6);
      *v203 = vqrshrn_high_n_u16(vqrshrn_n_u16(v196, 7uLL), v200, 7uLL);
      *(v203 + a6) = vqrshrn_high_n_u16(vqrshrn_n_u16(v197, 7uLL), v201, 7uLL);
    }
  }

  else
  {
    v122 = &bifilter4_coeff + 2 * a4;
    a7.i8[0] = *v122;
    a8.i8[0] = v122[1];
    v123 = *a1->i8;
    v124 = 5;
    result = vdupq_lane_s8(a7, 0);
    v125 = vdupq_lane_s8(a8, 0);
    do
    {
      v126 = *&a1->i8[a2];
      v127 = *&a1->i8[2 * a2];
      v128 = *&a1->i8[3 * a2];
      v129 = vmlal_u8(vmull_u8(*v126.i8, *v125.i8), *v123.i8, *result.i8);
      v130 = vmlal_high_u8(vmull_high_u8(v126, v125), v123, result);
      v123 = *&a1->i8[4 * a2];
      a1 = (a1 + 2 * a2 + a2 + a2);
      *a5 = vqrshrn_high_n_u16(vqrshrn_n_u16(v129, 7uLL), v130, 7uLL);
      *(a5 + a6) = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*v127.i8, *v125.i8), *v126.i8, *result.i8), 7uLL), vmlal_high_u8(vmull_high_u8(v127, v125), v126, result), 7uLL);
      v131 = (a5 + a6 + a6);
      *v131 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*v128.i8, *v125.i8), *v127.i8, *result.i8), 7uLL), vmlal_high_u8(vmull_high_u8(v128, v125), v127, result), 7uLL);
      v132 = (v131 + a6);
      *v132 = vqrshrn_high_n_u16(vqrshrn_n_u16(vmlal_u8(vmull_u8(*v123.i8, *v125.i8), *v128.i8, *result.i8), 7uLL), vmlal_high_u8(vmull_high_u8(v123, v125), v128, result), 7uLL);
      a5 = (v132 + a6);
      --v124;
    }

    while (v124 > 1);
  }

  return result;
}

BOOL vpx_reader_init(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6, double a7, double a8, double a9, double a10, uint64x2_t a11)
{
  if (!a2 && a3)
  {
    return 1;
  }

  *(a1 + 16) = a2 + a3;
  *(a1 + 24) = a2;
  *a1 = 0;
  *(a1 + 8) = 0xFFFFFFF8000000FFLL;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  v13 = 8 * a3;
  if (a4)
  {
    a4(a5);
    a2 = (a1 + 48);
  }

  if (v13 < 0x41)
  {
    if (!v13)
    {
      v15 = 0;
      v16 = 1073741816;
      v14 = a2;
      goto LABEL_28;
    }

    if (64 - v13 >= 49)
    {
      v17 = 49;
    }

    else
    {
      v17 = 64 - v13;
    }

    v18 = 56;
    v19 = 56 - v17;
    if ((56 - v17) < 0x18)
    {
      v15 = 0;
      v20 = a2;
      goto LABEL_26;
    }

    v21 = (v19 >> 3) + 1;
    if (v19 >= 0x78)
    {
      v22 = v21 & 0x3FFFFFF0;
      v23 = 56 - 8 * (v21 & 0x3FFFFFF0);
      v24 = xmmword_273BC31E0;
      v25 = xmmword_273BC31F0;
      v26 = xmmword_273BC3200;
      v27 = 0uLL;
      a11.i64[0] = 0x7F0000007FLL;
      a11.i64[1] = 0x7F0000007FLL;
      v28 = 0uLL;
      v29 = xmmword_273BC3210;
      v30 = v22;
      v31 = a2;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      do
      {
        v38 = *v31++;
        v39 = vmovl_high_u8(v38);
        v40 = vmovl_high_u16(v39);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v42 = v41;
        v43 = vmovl_u16(*v39.i8);
        v41.i64[0] = v43.u32[2];
        v41.i64[1] = v43.u32[3];
        v44 = v41;
        v45 = vmovl_u8(*v38.i8);
        v46 = vmovl_high_u16(v45);
        v41.i64[0] = v46.u32[2];
        v41.i64[1] = v46.u32[3];
        v47 = v41;
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v48 = v41;
        v41.i64[0] = v43.u32[0];
        v41.i64[1] = v43.u32[1];
        v49 = v41;
        v41.i64[0] = v46.u32[0];
        v41.i64[1] = v46.u32[1];
        v50 = v41;
        v51 = vmovl_u16(*v45.i8);
        v41.i64[0] = v51.u32[2];
        v41.i64[1] = v51.u32[3];
        v52 = v41;
        v41.i64[0] = v51.u32[0];
        v41.i64[1] = v51.u32[1];
        v53 = v41;
        v41.i64[0] = v24.u32[0];
        v41.i64[1] = v24.u32[1];
        v54 = v41;
        v41.i64[0] = v25.u32[2];
        v41.i64[1] = v25.u32[3];
        v55 = v41;
        v41.i64[0] = v26.u32[2];
        v41.i64[1] = v26.u32[3];
        v56 = v41;
        v41.i64[0] = v24.u32[2];
        v41.i64[1] = v24.u32[3];
        v57 = v41;
        v41.i64[0] = v25.u32[0];
        v41.i64[1] = v25.u32[1];
        v58 = v41;
        v41.i64[0] = v26.u32[0];
        v41.i64[1] = v26.u32[1];
        v59 = v41;
        v41.i64[0] = v29.u32[2];
        v41.i64[1] = v29.u32[3];
        v60 = v41;
        v41.i64[0] = v29.u32[0];
        v41.i64[1] = v29.u32[1];
        v36 = vorrq_s8(vshlq_u64(v42, v54), v36);
        v35 = vorrq_s8(vshlq_u64(v44, v55), v35);
        v33 = vorrq_s8(vshlq_u64(v47, v56), v33);
        v37 = vorrq_s8(vshlq_u64(v48, v57), v37);
        v34 = vorrq_s8(vshlq_u64(v49, v58), v34);
        v32 = vorrq_s8(vshlq_u64(v50, v59), v32);
        v28 = vorrq_s8(vshlq_u64(v52, v60), v28);
        v27 = vorrq_s8(vshlq_u64(v53, v41), v27);
        v29 = vaddq_s32(v29, a11);
        v26 = vaddq_s32(v26, a11);
        v25 = vaddq_s32(v25, a11);
        v24 = vaddq_s32(v24, a11);
        v30 -= 16;
      }

      while (v30);
      v61 = vorrq_s8(vorrq_s8(vorrq_s8(v27, v34), vorrq_s8(v32, v36)), vorrq_s8(vorrq_s8(v28, v35), vorrq_s8(v33, v37)));
      v15 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
      if (v22 == v21)
      {
        goto LABEL_27;
      }

      if ((v21 & 0xC) == 0)
      {
        v18 = 56 - 8 * v22;
        v20 = (a2 + v22);
        do
        {
LABEL_26:
          v76 = *v20;
          v20 = (v20 + 1);
          v15 |= v76 << v18;
          v18 -= 8;
        }

        while (v18 >= 64 - v13);
LABEL_27:
        v16 = v13 + 1073741816;
        v14 = (a2 + ((v13 - 8) >> 3) + 1);
        goto LABEL_28;
      }
    }

    else
    {
      v15 = 0;
      v22 = 0;
      v23 = 56;
    }

    v20 = (a2 + (v21 & 0x3FFFFFFC));
    v18 = 56 - 8 * (v21 & 0x3FFFFFFC);
    v62 = 0uLL;
    v63 = v15;
    v64 = vaddq_s32(vdupq_n_s32(v23), xmmword_273BC3220);
    v65 = (a2 + v22);
    v66 = v22 - (v21 & 0x3FFFFFFC);
    v67.i64[0] = 255;
    v67.i64[1] = 255;
    v68.i64[0] = 0x1F0000001FLL;
    v68.i64[1] = 0x1F0000001FLL;
    do
    {
      v69 = *v65++;
      a11.i32[0] = v69;
      v70 = vmovl_u16(*&vmovl_u8(*a11.i8));
      v71.i64[0] = v70.u32[2];
      v71.i64[1] = v70.u32[3];
      v72 = vandq_s8(v71, v67);
      v71.i64[0] = v70.u32[0];
      v71.i64[1] = v70.u32[1];
      v73 = vandq_s8(v71, v67);
      v71.i64[0] = v64.u32[2];
      v71.i64[1] = v64.u32[3];
      v74 = v71;
      v71.i64[0] = v64.u32[0];
      v71.i64[1] = v64.u32[1];
      a11 = vshlq_u64(v73, v71);
      v62 = vorrq_s8(vshlq_u64(v72, v74), v62);
      v63 = vorrq_s8(a11, v63);
      v64 = vaddq_s32(v64, v68);
      v66 += 4;
    }

    while (v66);
    v75 = vorrq_s8(v63, v62);
    v15 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
    if ((v21 & 0x3FFFFFFC) == v21)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v14 = a2 + 1;
  v15 = bswap64(*a2) | *a1;
  v16 = 56;
LABEL_28:
  *(a1 + 24) += v14 - a2;
  v77 = *(a1 + 8);
  v78 = ((v77 << 7) + 128) >> 8;
  v79 = v77 - v78;
  result = v15 >= v78 << 56;
  if (v15 >= v78 << 56)
  {
    v80 = v78 << 56;
  }

  else
  {
    v79 = v78;
    v80 = 0;
  }

  v81 = vpx_norm[v79];
  *a1 = (v15 - v80) << v81;
  *(a1 + 8) = v79 << v81;
  *(a1 + 12) = v16 - v81;
  return result;
}