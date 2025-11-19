uint64_t *ec_GFp_mont_batch_precomp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ec_GFp_simple_point_set_to_infinity(a1, a2);
  ec_GFp_simple_point_copy(a2 + 216, a3);
  v6 = (a2 + 432);
  for (i = 2; i != 17; ++i)
  {
    if (i)
    {
      result = ec_GFp_mont_add(a1, v6, a2 + 216, (v6 - 27));
    }

    else
    {
      result = ec_GFp_mont_dbl(a1, v6, (a2 + 216 * (i >> 1)));
    }

    v6 += 27;
  }

  return result;
}

uint64_t *ec_GFp_mont_batch_get_window(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  v10 = *(a1 + 264);
  is_bit_set_words = bn_is_bit_set_words(a4, v10, a5 + 4);
  v12 = (16 * bn_is_bit_set_words(a4, v10, a5 + 3)) | (32 * is_bit_set_words);
  v13 = v12 | (8 * bn_is_bit_set_words(a4, v10, a5 + 2));
  v14 = v13 | (4 * bn_is_bit_set_words(a4, v10, a5 + 1));
  v15 = v14 & 0xFC | (2 * bn_is_bit_set_words(a4, v10, a5));
  if (a5)
  {
    LOBYTE(v15) = bn_is_bit_set_words(a4, v10, a5 - 1) | v15;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  ec_GFp_nistp_recode_scalar_bits(&v22, &v21, v15);
  v16 = 0;
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    ec_point_select(a1, a2, (((v21 ^ v16++) - 1) & ~v21) >> 63, a3, a2);
    a3 += 27;
  }

  while (v16 != 17);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[2] = v17;
  v19[3] = v17;
  v19[0] = v17;
  v19[1] = v17;
  ec_felem_neg(a1, v19, (a2 + 72));
  return ec_felem_select(a1, (a2 + 72), -v22, v19, (a2 + 72));
}

uint64_t ec_GFp_mont_init_precomp()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v23 = *MEMORY[0x1E69E9840];
  v4 = EC_GROUP_get_degree(v0) + 4;
  memset(v22, 170, sizeof(v22));
  v5 = *(v2 + 176);
  v20[10] = *(v2 + 160);
  v20[11] = v5;
  v20[12] = *(v2 + 192);
  v21 = *(v2 + 208);
  v6 = *(v2 + 112);
  v20[6] = *(v2 + 96);
  v20[7] = v6;
  v7 = *(v2 + 144);
  v20[8] = *(v2 + 128);
  v20[9] = v7;
  v8 = *(v2 + 48);
  v20[2] = *(v2 + 32);
  v20[3] = v8;
  v9 = *(v2 + 80);
  v20[4] = *(v2 + 64);
  v20[5] = v9;
  v10 = *(v2 + 16);
  v11 = 1;
  v20[0] = *v2;
  v20[1] = v10;
  do
  {
    v12 = 1 << v11;
    ec_GFp_mont_dbl(v3, &v20[-13] + 27 * v12 - 1, &v20[-13] + 27 * (v12 >> 1) - 1);
    v13 = v4 / 5 - 1;
    if (v4 >= 0xA)
    {
      do
      {
        ec_GFp_mont_dbl(v3, &v20[-13] + 27 * v12 - 1, &v20[-13] + 27 * v12 - 1);
        --v13;
      }

      while (v13);
    }

    if (v12 <= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12;
    }

    v15 = 216 * v12;
    v16 = v14 - 1;
    v17 = v20;
    do
    {
      ec_GFp_mont_add(v3, v17 + v15, v20 + 216 * ((1 << v11) - 1), v17);
      v17 = (v17 + 216);
      --v16;
    }

    while (v16);
    ++v11;
  }

  while (v11 != 5);
  result = ec_jacobian_to_affine_batch(v3);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void ec_GFp_mont_mul_precomp(const EC_GROUP *a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v16 = EC_GROUP_get_degree(a1) + 4;
  if (v16 >= 5)
  {
    v17 = 0;
    v18 = v16 / 5;
    v19 = v16 / 5 - 1;
    while ((v17 & 1) == 0)
    {
      v35 = 0xAAAAAAAAAAAAAAAALL;
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v21;
      v34 = v21;
      v31 = v21;
      v32 = v21;
      v29 = v21;
      v30 = v21;
      v27 = v21;
      v28 = v21;
      v25 = v21;
      v26 = v21;
      v23 = v21;
      v24 = v21;
      v22 = v21;
      ec_GFp_mont_get_comb_window(a1, &v22, a3, a4, v19);
      ec_GFp_simple_point_copy(a2, &v22);
      if (a5)
      {
        goto LABEL_10;
      }

LABEL_11:
      if (a7)
      {
        ec_GFp_mont_get_comb_window(a1, &v22, a7, a8, v19);
        ec_GFp_mont_add(a1, a2, a2, &v22);
      }

      --v19;
      v17 = 1;
      if (v19 >= v18)
      {
        return;
      }
    }

    ec_GFp_mont_dbl(a1, a2, a2);
    v35 = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v33 = v20;
    v34 = v20;
    v31 = v20;
    v32 = v20;
    v29 = v20;
    v30 = v20;
    v27 = v20;
    v28 = v20;
    v25 = v20;
    v26 = v20;
    v23 = v20;
    v24 = v20;
    v22 = v20;
    ec_GFp_mont_get_comb_window(a1, &v22, a3, a4, v19);
    ec_GFp_mont_add(a1, a2, a2, &v22);
    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_10:
    ec_GFp_mont_get_comb_window(a1, &v22, a5, a6, v19);
    ec_GFp_mont_add(a1, a2, a2, &v22);
    goto LABEL_11;
  }

  ec_GFp_simple_point_set_to_infinity(a1, a2);
}

uint64_t *ec_GFp_mont_get_comb_window(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  LODWORD(v13) = a5;
  v9 = *(a1 + 264);
  v10 = 0;
  LODWORD(v11) = 0;
  v12 = (EC_GROUP_get_degree(a1) + 4) / 5uLL;
  v13 = v13;
  do
  {
    v11 = (bn_is_bit_set_words(a4, v9, v13) << v10++) | v11;
    v13 += v12;
  }

  while (v10 != 5);
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v14 = -31;
  *a2 = 0u;
  do
  {
    ec_felem_select(a1, a2, ((v11 ^ (v14 + 32)) - 1) >> 63, a3, a2);
    ec_felem_select(a1, (a2 + 72), ((v11 ^ (v14 + 32)) - 1) >> 63, a3 + 9, (a2 + 72));
    a3 += 18;
  }

  while (!__CFADD__(v14++, 1));
  v16 = ec_felem_one(a1);

  return ec_felem_select(a1, (a2 + 144), (v11 - 1) >> 63, (a2 + 144), v16);
}

const __CFArray *boringssl_identity_create_from_identity_array(const __CFArray *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(boringssl_concrete_boringssl_identity);
    if (v2 && (v3 = boringssl_helper_copy_leaf_private_key_from_identity_array(v1), (v2->private_key = v3) != 0))
    {
      v4 = boringssl_helper_copy_identity_certificate_chain_from_identity_array(v1);
      if (v4)
      {
        v5 = v4;
        certificate_sec_array_from_CFArray = boringssl_helper_create_certificate_sec_array_from_CFArray(v4);
        certificates = v2->certificates;
        v2->certificates = certificate_sec_array_from_CFArray;

        CFRelease(v5);
      }

      if (v2->certificates)
      {
        v1 = v2;
      }

      else
      {
        private_key = v2->private_key;
        if (private_key)
        {
          CFRelease(private_key);
        }

        v1 = 0;
        v2->private_key = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

boringssl_concrete_boringssl_identity *boringssl_identity_create_from_identity(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v3 = objc_alloc_init(boringssl_concrete_boringssl_identity);
    if (v3)
    {
      v4 = sec_identity_copy_ref(v2);
      certificateRef = 0;
      SecIdentityCopyCertificate(v4, &certificateRef);
      v5 = sec_identity_copy_certificates_ref(v2);
      objc_storeStrong(&v3->identity, a1);
      v6 = sec_array_create();
      certificates = v3->certificates;
      v3->certificates = v6;

      v8 = sec_certificate_create(certificateRef);
      v9 = v3->certificates;
      sec_array_append();
      if (v5 && CFArrayGetCount(v5) >= 1)
      {
        v10 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
          v12 = sec_certificate_create(ValueAtIndex);
          v13 = v3->certificates;
          sec_array_append();

          ++v10;
        }

        while (v10 < CFArrayGetCount(v5));
      }

      v17 = 0;
      if (SecIdentityCopyPrivateKey(v4, &v17))
      {
        if (certificateRef)
        {
          CFRelease(certificateRef);
        }

        certificateRef = 0;
        if (v4)
        {
          CFRelease(v4);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        v14 = 0;
      }

      else
      {
        v15 = certificateRef;
        v3->private_key = v17;
        if (v15)
        {
          CFRelease(v15);
        }

        certificateRef = 0;
        if (v4)
        {
          CFRelease(v4);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        v14 = v3;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

SecIdentityRef boringssl_identity_create_from_identity_without_certificates(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v3 = objc_alloc_init(boringssl_concrete_boringssl_identity);
    v4 = v3;
    if (v3)
    {
      objc_storeStrong(&v3->identity, a1);
      v5 = sec_identity_copy_ref(v2);
      privateKeyRef = 0;
      if (!SecIdentityCopyPrivateKey(v5, &privateKeyRef))
      {
        v4->private_key = privateKeyRef;
        if (v5)
        {
          CFRelease(v5);
        }

        v5 = v4;
        goto LABEL_11;
      }

      if (!v5)
      {
LABEL_11:

        goto LABEL_12;
      }

      CFRelease(v5);
    }

    v5 = 0;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

boringssl_concrete_boringssl_identity *boringssl_identity_create_from_external_identity(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  v13 = 0;
  if (v8 && v9 && v10 && v11)
  {
    v14 = objc_alloc_init(boringssl_concrete_boringssl_identity);
    v13 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->certificates, a1);
      v15 = MEMORY[0x1AC57F4F0](v9);
      sign_block = v13->sign_block;
      v13->sign_block = v15;

      v17 = MEMORY[0x1AC57F4F0](v10);
      decrypt_block = v13->decrypt_block;
      v13->decrypt_block = v17;

      objc_storeStrong(&v13->queue, a4);
      v19 = v13;
    }
  }

  return v13;
}

void __boringssl_identity_private_key_sign_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __boringssl_identity_private_key_sign_block_invoke_2;
  v5[3] = &unk_1E785F9E0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  (*(v2 + 16))(v2, v3, v4, v5);
}

void __boringssl_identity_private_key_sign_block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 3);
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[4];
  v5 = v3;
  nw_queue_context_async();
}

uint64_t __boringssl_identity_private_key_sign_block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  *(*(a1 + 32) + 56) = 1;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

uint64_t boringssl_identity_private_key_decrypt(void *a1, void *a2, size_t *a3, size_t a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (*(v13 + 5) && *(v13 + 6))
  {
    v17 = MEMORY[0x1AC57F4F0]();
    v18 = *(v13 + 6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __boringssl_identity_private_key_decrypt_block_invoke;
    block[3] = &unk_1E785FA30;
    v29 = v17;
    block[4] = v14;
    v27 = v15;
    v28 = v13;
    v30 = v16;
    v19 = v17;
    boringssl_context_async(v27, v18, block);

    v20 = 2;
  }

  else
  {
    v21 = boringssl_private_key_decrypt(*(v13 + 1), v14);
    v22 = v21;
    if (v21)
    {
      size = dispatch_data_get_size(v21);
      v24 = dispatch_data_get_size(v14) - size;
      bzero(a2, a4);
      boringssl_helper_dispatch_data_copyout(v22, a2 + v24, size);
      v20 = 0;
      *a3 = a4;
    }

    else
    {
      v20 = 1;
    }
  }

  return v20;
}

void __boringssl_identity_private_key_decrypt_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __boringssl_identity_private_key_decrypt_block_invoke_2;
  v4[3] = &unk_1E785F9E0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  (*(v2 + 16))(v2, v3, v4);
}

void __boringssl_identity_private_key_decrypt_block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 3);
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[4];
  v5 = v3;
  nw_queue_context_async();
}

uint64_t __boringssl_identity_private_key_decrypt_block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  *(*(a1 + 32) + 56) = 1;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

uint64_t boringssl_identity_private_key_complete(void *a1, uint64_t a2, size_t *a3, uint64_t a4)
{
  v7 = a1;
  v8 = v7;
  if (*(v7 + 6))
  {
    v9 = *(v7 + 8);
    if (v9 || (v9 = *(v7 + 9)) != 0)
    {
      v10 = v9;
      boringssl_helper_dispatch_data_copyout(v10, a2, a4);
      *a3 = dispatch_data_get_size(v10);

      v11 = 0;
    }

    else if (*(v7 + 56))
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

int BN_cmp(const BIGNUM *a, const BIGNUM *b)
{
  if (a && b)
  {
    neg = a->neg;
    if (neg == b->neg)
    {
      result = bn_cmp_words_consttime(a->d, a->top, b->d, b->top);
      if (neg)
      {
        return -result;
      }
    }

    else if (neg)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (a)
  {
    return -1;
  }

  else
  {
    return b != 0;
  }

  return result;
}

BOOL BN_abs_is_word(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (v2)
  {
    a2 ^= **a1;
    if (v2 >= 2)
    {
      v3 = (*a1 + 8);
      v4 = v2 - 1;
      do
      {
        v5 = *v3++;
        a2 |= v5;
        --v4;
      }

      while (v4);
    }
  }

  return a2 == 0;
}

BOOL BN_is_one(unsigned int *a1)
{
  if (a1[4])
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    v3 = **a1 ^ 1;
    if (v2 >= 2)
    {
      v4 = v2 - 1;
      v5 = (*a1 + 8);
      do
      {
        v6 = *v5++;
        v3 |= v6;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 == 0;
}

BOOL BN_is_word(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a2;
  if (v2)
  {
    v3 = **a1 ^ a2;
    if (v2 >= 2)
    {
      v4 = v2 - 1;
      v5 = (*a1 + 8);
      do
      {
        v6 = *v5++;
        v3 |= v6;
        --v4;
      }

      while (v4);
    }
  }

  if (v3)
  {
    return 0;
  }

  if (a2)
  {
    return a1[4] == 0;
  }

  return 1;
}

uint64_t BN_is_odd(uint64_t a1)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  else
  {
    return **a1 & 1;
  }
}

BOOL BN_equal_consttime(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = (*a2 + 8 * v2);
    v6 = v3 - v2;
    do
    {
      v7 = *v5++;
      v4 |= v7;
      --v6;
    }

    while (v6);
  }

  if (v3 < v2)
  {
    v8 = (*a1 + 8 * v3);
    v9 = v2 - v3;
    do
    {
      v10 = *v8++;
      v4 |= v10;
      --v9;
    }

    while (v9);
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2 >= 1)
  {
    v11 = *a1;
    v12 = *a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v4 |= v15 ^ v13;
      --v2;
    }

    while (v2);
  }

  return (v4 | *(a2 + 16) ^ *(a1 + 16)) == 0;
}

int ECDH_compute_key(void *out, size_t outlen, const EC_POINT *pub_key, EC_KEY *ecdh, void *(__cdecl *KDF)(const void *, size_t, void *, size_t *))
{
  v8 = outlen;
  v29 = outlen;
  if (!ccrng())
  {
LABEL_17:
    LODWORD(v8) = -1;
    return v8;
  }

  v10 = *(ecdh + 2);
  v11 = BN_num_bytes(v10);
  v12 = malloc_type_malloc(v11, 0xFD59BA5FuLL);
  if (!v12)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDH_compute_key_cold_8();
    }

    goto LABEL_17;
  }

  v13 = v12;
  BN_bn2bin(v10, v12);
  v14 = EC_POINT_point2oct(*ecdh, pub_key, *(ecdh + 7), 0, 0, 0);
  if (!v14)
  {
    v17 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      goto LABEL_29;
    }

    if (!os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
LABEL_26:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        ECDH_compute_key_cold_7();
      }

      v17 = 0;
      goto LABEL_29;
    }

    ECDH_compute_key_cold_6();
LABEL_25:
    v17 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v15 = v14;
  v16 = malloc_type_malloc(v14, 0xBC8D9D86uLL);
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  if (EC_POINT_point2oct(*ecdh, pub_key, *(ecdh + 7), v16, v15, 0) <= 0)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDH_compute_key_cold_5();
    }

    free(v17);
    goto LABEL_25;
  }

  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    v25 = g_boringssl_log;
    if (!g_boringssl_log)
    {
      goto LABEL_29;
    }

    if (!os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    ECDH_compute_key_cold_3();
    goto LABEL_41;
  }

  cp = ccec_get_cp();
  if (!cp)
  {
LABEL_41:
    v25 = g_boringssl_log;
    if (g_boringssl_log)
    {
LABEL_42:
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        ECDH_compute_key_cold_4();
      }
    }

LABEL_29:
    v21 = 0;
    goto LABEL_30;
  }

  v19 = cp;
  v20 = malloc_type_malloc(8 * *cp, 0xC965AF6EuLL);
  if (!v20)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDH_compute_key_cold_2();
    }

    goto LABEL_29;
  }

  v21 = v20;
  v22 = malloc_type_malloc((32 * *v19) | 0x10, 0x61B60CE2uLL);
  if (v22)
  {
    *v22 = v19;
    v27 = v22;
    if (MEMORY[0x1AC57E2E0](v19, v15, v17, v21))
    {
      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        ECDH_compute_key_cold_1();
      }
    }

    else
    {
      v26 = **v27;
      if (ccn_read_uint() != -1)
      {
        v28 = 8 * *v19;
        v23 = malloc_type_malloc(v28, 0xBF1889D4uLL);
        if (!ccecdh_compute_shared_secret())
        {
          if (!KDF)
          {
            if (v28 < v8)
            {
              v29 = v28;
              v8 = v28;
            }

            memcpy(out, v23, v8);
            goto LABEL_54;
          }

          if ((KDF)(v23, v28, out, &v29))
          {
            LODWORD(v8) = v29;
LABEL_54:
            cc_clear();
            free(v27);
            goto LABEL_31;
          }

          ERR_put_error(27, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_ecdh.m", 124);
        }

LABEL_53:
        LODWORD(v8) = -1;
        goto LABEL_54;
      }
    }

    v23 = 0;
    goto LABEL_53;
  }

LABEL_30:
  v23 = 0;
  LODWORD(v8) = -1;
LABEL_31:
  cc_clear();
  free(v13);
  if (v17)
  {
    cc_clear();
    free(v17);
  }

  if (v23)
  {
    cc_clear();
    free(v23);
  }

  if (v21)
  {
    free(v21);
  }

  return v8;
}

int BN_rand(BIGNUM *rnd, int bits, int top, int bottom)
{
  if (rnd)
  {
    if ((top - 2) <= 0xFFFFFFFC)
    {
      v5 = 66;
      v6 = 130;
LABEL_9:
      ERR_put_error(3, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/random.c.inc", v6);
      LODWORD(rnd) = 0;
      return rnd;
    }

    if (bottom >= 2)
    {
      v5 = 66;
      v6 = 135;
      goto LABEL_9;
    }

    v9 = rnd;
    if (!bits)
    {
      BN_zero(rnd);
LABEL_32:
      LODWORD(rnd) = 1;
      return rnd;
    }

    if (bits >= 2147483585)
    {
      v5 = 102;
      v6 = 145;
      goto LABEL_9;
    }

    v10 = bits >= -63 ? bits + 63 : bits + 126;
    v11 = 1 - bits >= 0 ? -((1 - bits) & 0x3F) : (bits - 1) & 0x3F;
    v12 = v10 >> 6;
    LODWORD(rnd) = bn_wexpand(&rnd->d, v12);
    if (rnd)
    {
      v13 = v10 >> 6;
      if (v11 < 63)
      {
        v14 = ~(-1 << (v11 + 1));
      }

      else
      {
        v14 = -1;
      }

      BCM_rand_bytes(v9->d, 8 * v12);
      d = v9->d;
      v16 = &v9->d[v12];
      v17 = *(v16 - 8) & v14;
      *(v16 - 8) = v17;
      if (top != -1)
      {
        if (bits >= 2 && top == 1)
        {
          if (!v11)
          {
            *(v16 - 8) = v17 | 1;
            d[v13 - 2] |= 0x8000000000000000;
            goto LABEL_29;
          }

          v18 = 3 << (v11 - 1);
        }

        else
        {
          v18 = 1 << v11;
        }

        *(v16 - 8) = v17 | v18;
      }

LABEL_29:
      if (bottom == 1)
      {
        *d |= 1uLL;
      }

      v9->neg = 0;
      v9->top = v13;
      goto LABEL_32;
    }
  }

  return rnd;
}

uint64_t bn_in_range_words(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = 0;
      v5 = a4 - 1;
      if (a4 != 1)
      {
        v6 = a1 + 1;
        do
        {
          v7 = *v6++;
          v4 |= v7;
          --v5;
        }

        while (v5);
      }

      v8 = ~(((v4 - 1) & ~v4 & (((*a1 - a2) ^ *a1 | *a1 ^ a2) ^ *a1)) >> 63);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = -1;
  }

  return bn_less_than_words(a1, a3, a4) & v8;
}

uint64_t bn_rand_range_words(uint64_t *a1, unint64_t a2, unint64_t *a3, uint64_t a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = bn_range_to_mask(&v16, &v15, a2, a3, a4);
  if (result)
  {
    v9 = v16;
    v10 = &a1[v16];
    v11 = 8 * (a4 - v16);
    if (v11)
    {
      bzero(&a1[v16], v11);
    }

    v12 = -100;
    v13 = v15;
    while (!__CFADD__(v12++, 1))
    {
      BCM_rand_bytes(a1, 8 * v9);
      *(v10 - 1) &= v13;
      if (bn_in_range_words(a1, a2, a3, v9))
      {
        return 1;
      }
    }

    ERR_put_error(3, 0, 115, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/random.c.inc", 269);
    return 0;
  }

  return result;
}

uint64_t bn_range_to_mask(void *a1, unint64_t *a2, unint64_t a3, unint64_t *a4, uint64_t a5)
{
  if (!a5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v5 = a4[a5 - 1];
    if (v5)
    {
      break;
    }

    if (!--a5)
    {
      goto LABEL_8;
    }
  }

  if (a5 == 1 && *a4 <= a3)
  {
LABEL_8:
    ERR_put_error(3, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/random.c.inc", 228);
    return 0;
  }

  else
  {
    v6 = v5 | (v5 >> 1) | ((v5 | (v5 >> 1)) >> 2);
    v7 = v6 | (v6 >> 4) | ((v6 | (v6 >> 4)) >> 8);
    *a1 = a5;
    *a2 = v7 | (v7 >> 16) | ((v7 | (v7 >> 16)) >> 32);
    return 1;
  }
}

uint64_t BN_rand_range_ex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = bn_wexpand(a1, *(a3 + 8));
  if (result)
  {
    result = bn_rand_range_words(*a1, a2, *a3, *(a3 + 8));
    if (result)
    {
      *(a1 + 16) = 0;
      *(a1 + 8) = *(a3 + 8);
      return 1;
    }
  }

  return result;
}

uint64_t bn_rand_secret_range(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = bn_range_to_mask(&v18, &v17, a3, *a4, *(a4 + 8));
  if (result)
  {
    v9 = v18;
    result = bn_wexpand(a1, v18);
    if (result)
    {
      if (!v9)
      {
        bn_rand_secret_range_cold_3();
      }

      v10 = v17;
      if (!v17)
      {
        bn_rand_secret_range_cold_2();
      }

      v11 = v17 >> 1;
      if (v9 == 1 && v11 < a3)
      {
        ERR_put_error(3, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/random.c.inc", 321);
        return 0;
      }

      else
      {
        BCM_rand_bytes(*a1, 8 * v9);
        v12 = *a1;
        *(*a1 + 8 * v9 - 8) &= v10;
        v13 = bn_in_range_words(v12, a3, *a4, v9);
        *a2 = v13;
        v14 = -v13;
        v15 = a3 & (v13 - 1);
        v16 = *a1;
        *v16 = **a1 | v15;
        v16[v9 - 1] &= v14 | v11;
        if (!bn_in_range_words(v16, a3, *a4, v9))
        {
          bn_rand_secret_range_cold_1();
        }

        *(a1 + 16) = 0;
        *(a1 + 8) = v9;
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_compute_wNAF(uint64_t result, _BYTE *a2, _DWORD *a3, unint64_t a4, int a5)
{
  if ((a5 - 8) <= 0xFFFFFFF8)
  {
    ec_compute_wNAF_cold_9();
  }

  if (!a4)
  {
    ec_compute_wNAF_cold_8();
  }

  v6 = a5;
  v8 = 2 << a5;
  v9 = (2 << a5) - 1;
  v10 = v9 & *a3;
  if (a4 != -1)
  {
    v12 = result;
    v13 = 1 << a5;
    v14 = (a5 + 1);
    v17 = -(1 << a5);
    v18 = v9 >> 1;
    v15 = a4 + 1;
    do
    {
      if (v10 < 0 || v10 > v8)
      {
        ec_compute_wNAF_cold_6();
      }

      if (v10)
      {
        v16 = v10 - v8;
        if (v10 >= v8)
        {
          ec_compute_wNAF_cold_1();
        }

        if (v14 >= a4)
        {
          v16 = v10 & v18;
        }

        if ((v10 & v13) == 0)
        {
          v16 = v10;
        }

        v10 -= v16;
        if (v10 && v10 != v8 && v10 != v13)
        {
          ec_compute_wNAF_cold_4();
        }

        if (v16 <= v17 || v16 >= v13)
        {
          ec_compute_wNAF_cold_3();
        }

        if ((v16 & 1) == 0)
        {
          ec_compute_wNAF_cold_2();
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      *a2 = v16;
      result = bn_is_bit_set_words(a3, *(v12 + 264), v14);
      v10 = (result << v6) + (v10 >> 1);
      if (v10 > v8)
      {
        ec_compute_wNAF_cold_5();
      }

      ++a2;
      ++v14;
      --v15;
    }

    while (v15);
  }

  if (v10)
  {
    ec_compute_wNAF_cold_7();
  }

  return result;
}

uint64_t ec_GFp_mont_mul_public_batch()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v39 = *MEMORY[0x1E69E9840];
  LODWORD(v12) = EC_GROUP_order_bits(v0);
  v32 = v38;
  memset(v38, 170, sizeof(v38));
  v31 = __b;
  memset(__b, 170, 0x1440uLL);
  if (v2 >= 4)
  {
    v13 = OPENSSL_calloc(v2, 0x211uLL);
    v15 = OPENSSL_calloc(v2, 0x6C0uLL);
    v14 = v15;
    v16 = 0;
    if (!v13)
    {
      goto LABEL_31;
    }

    v31 = v15;
    v32 = v13;
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v12 = v12;
  memset(v36, 170, sizeof(v36));
  memset(v35, 170, 0x6C0uLL);
  v30 = v12 + 1;
  if (v30 >= 0x212)
  {
    ec_GFp_mont_mul_public_batch_cold_1();
  }

  v28 = v14;
  v29 = v13;
  if (v8)
  {
    ec_compute_wNAF(v11, v36, v8, v12, 4);
    compute_precomp(v11, v35, (v11 + 16));
  }

  v17 = v8;
  if (v2)
  {
    v18 = v31;
    v19 = v32;
    v20 = v2;
    do
    {
      ec_compute_wNAF(v11, v19, v4, v12, 4);
      compute_precomp(v11, v18, v6);
      v6 += 27;
      v18 += 1728;
      v4 += 18;
      v19 += 529;
      --v20;
    }

    while (v20);
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[11] = v21;
  v33[12] = v21;
  v33[9] = v21;
  v33[10] = v21;
  v33[7] = v21;
  v33[8] = v21;
  v33[5] = v21;
  v33[6] = v21;
  v33[3] = v21;
  v33[4] = v21;
  v33[1] = v21;
  v33[2] = v21;
  v33[0] = v21;
  if (v12 == -1)
  {
LABEL_29:
    ec_GFp_simple_point_set_to_infinity(v11, v10);
    goto LABEL_30;
  }

  v22 = 1;
  do
  {
    if (v22)
    {
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else
    {
      ec_GFp_mont_dbl(v11, v10, v10);
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    if (v36[v12])
    {
      lookup_precomp(v11, v33, v35, v36[v12]);
      if (v22)
      {
        ec_GFp_simple_point_copy(v10, v33);
        v22 = 0;
      }

      else
      {
        ec_GFp_mont_add(v11, v10, v10, v33);
      }
    }

LABEL_21:
    v23 = v31;
    v24 = v32;
    for (i = v2; i; --i)
    {
      if (v24[v12])
      {
        lookup_precomp(v11, v33, v23, v24[v12]);
        if (v22)
        {
          ec_GFp_simple_point_copy(v10, v33);
          v22 = 0;
        }

        else
        {
          ec_GFp_mont_add(v11, v10, v10, v33);
        }
      }

      v24 += 529;
      v23 += 1728;
    }

    --v12;
  }

  while (v12 < v30);
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_30:
  v16 = 1;
  v14 = v28;
  v13 = v29;
LABEL_31:
  OPENSSL_free(v13);
  OPENSSL_free(v14);
  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t *compute_precomp(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2;
  ec_GFp_simple_point_copy(a2, a3);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[11] = v6;
  v9[12] = v6;
  v9[9] = v6;
  v9[10] = v6;
  v9[7] = v6;
  v9[8] = v6;
  v9[5] = v6;
  v9[6] = v6;
  v9[3] = v6;
  v9[4] = v6;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  ec_GFp_mont_dbl(a1, v9, a3);
  v7 = 7;
  do
  {
    result = ec_GFp_mont_add(a1, v4 + 216, v4, v9);
    v4 += 216;
    --v7;
  }

  while (v7);
  return result;
}

void lookup_precomp(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    ec_GFp_simple_point_copy(a2, a3 + 216 * (-a4 >> 1));

    ec_GFp_simple_invert(a1, a2);
  }

  else
  {

    ec_GFp_simple_point_copy(a2, a3 + 216 * (a4 >> 1));
  }
}

uint64_t EVP_tls_cbc_remove_padding(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 + 1 > a4)
  {
    return 0;
  }

  v7 = *(a3 + a4 - 1);
  v8 = (((a4 - (a6 + 1 + v7)) ^ a4 | (a6 + 1 + v7) ^ a4) ^ ~a4) >> 63;
  v9 = 256;
  if (a4 < 0x100)
  {
    v9 = a4;
  }

  if (a4)
  {
    v10 = 0;
    v11 = (a3 + a4 - 1);
    do
    {
      v12 = *v11--;
      v13 = v12 ^ ~v7;
      if (v10 > v7)
      {
        v13 = -1;
      }

      LOBYTE(v8) = v13 & v8;
      ++v10;
    }

    while (v9 != v10);
  }

  v14 = v8 == 255;
  if (v8 == 255)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = ~v7;
  }

  else
  {
    v16 = 0;
  }

  *a2 = v16 + a4;
  *a1 = v15;
  return 1;
}

void *EVP_tls_cbc_copy_mac(void *a1, size_t a2, uint64_t a3, size_t a4, unint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5 < a4)
  {
    EVP_tls_cbc_copy_mac_cold_4();
  }

  if (a4 < a2)
  {
    EVP_tls_cbc_copy_mac_cold_3();
  }

  if (a2 >= 0x41)
  {
    EVP_tls_cbc_copy_mac_cold_2();
  }

  if (!a2)
  {
    EVP_tls_cbc_copy_mac_cold_1();
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[2] = v10;
  v32[3] = v10;
  v32[0] = v10;
  v32[1] = v10;
  if (a5 >= (a2 | 0x100))
  {
    v11 = a5 - (a2 | 0x100);
  }

  else
  {
    v11 = 0;
  }

  __memset_chk();
  v12 = 0;
  if (v11 < a5)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = a2 + 256;
    if (a5 < a2 + 256)
    {
      v15 = a5;
    }

    do
    {
      if (v13 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = 0;
      }

      v17 = v13 - v16;
      v18 = ((v11 ^ (a4 - a2)) - 1) & ~(v11 ^ (a4 - a2));
      v14 |= v18 >> 63;
      *(v32 + v17) |= ((((v11 - a4) ^ v11 | v11 ^ a4) ^ v11) >> 63) & v14 & *(a3 + v11);
      v12 |= v17 & (v18 >> 63);
      ++v11;
      v13 = v17 + 1;
      --v15;
    }

    while (v15);
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[2] = v19;
  v31[3] = v19;
  v31[0] = v19;
  v31[1] = v19;
  if (a2 == 1)
  {
    v20 = v32;
  }

  else
  {
    v21 = v31;
    v22 = v32;
    v23 = 1;
    do
    {
      v24 = 0;
      v25 = v22;
      v26 = v23;
      do
      {
        if (v26 >= a2)
        {
          v27 = a2;
        }

        else
        {
          v27 = 0;
        }

        v28 = v26 - v27;
        *(v21 + v24) = ((v12 & 1) - 1) & *(v22 + v24) | ~((v12 & 1) - 1) & *(v22 + v28);
        ++v24;
        v26 = v28 + 1;
      }

      while (a2 != v24);
      v23 *= 2;
      v12 >>= 1;
      v20 = v21;
      v22 = v21;
      v21 = v25;
    }

    while (v23 < a2);
  }

  result = memcpy(a1, v20, a2);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EVP_tls_cbc_digest_record(const EVP_MD *a1, unsigned __int8 *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unsigned int a9)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a7 >= 0x100000)
  {
    EVP_tls_cbc_digest_record_cold_4();
  }

  *&c.num = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.u.p[96] = v15;
  *&c.u.p[112] = v15;
  *&c.u.p[64] = v15;
  *&c.u.p[80] = v15;
  *&c.u.p[32] = v15;
  *&c.u.p[48] = v15;
  *c.u.d = v15;
  *&c.u.p[16] = v15;
  *&c.h[6] = v15;
  *&c.Nl = v15;
  *&c.h[2] = v15;
  *&c.h[4] = v15;
  *c.h = v15;
  v16 = EVP_MD_type(a1);
  v69 = a5;
  if (v16 == 673)
  {
    SHA384_Init(&c);
    v77 = tls1_sha512_final_raw;
    v17 = tls1_sha512_transform;
    v18 = 48;
    v19 = 128;
    v20 = 7;
    v21 = 16;
  }

  else
  {
    if (v16 == 672)
    {
      SHA256_Init(&c);
      v77 = tls1_sha256_final_raw;
      v17 = tls1_sha256_transform;
      v18 = 32;
    }

    else
    {
      if (v16 != 64)
      {
        EVP_tls_cbc_digest_record_cold_3();
      }

      SHA1_Init(&c);
      v77 = tls1_sha1_final_raw;
      v17 = tls1_sha1_transform;
      v18 = 20;
    }

    v19 = 64;
    v20 = 6;
    v21 = 8;
  }

  if (v19 != 1 << v20)
  {
    EVP_tls_cbc_digest_record_cold_1();
  }

  v73 = v20;
  v75 = a6;
  v22 = a3;
  v23 = v19;
  v78 = a7 + 13;
  v24 = v19 - 1;
  v25 = (v24 + a7 + 13 + v21 - v18) / v19;
  v71 = ((v18 | v19) + 255) / v19 + 1;
  v26 = v25 >= v71;
  v27 = v25 > v71;
  v28 = v25 - v71;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  d[6] = v29;
  d[7] = v29;
  d[4] = v29;
  d[5] = v29;
  d[2] = v29;
  d[3] = v29;
  v30 = v21;
  v31 = v19;
  v32 = v28 * v19;
  if (v27)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (!v26)
  {
    v28 = 0;
  }

  cnt = v23;
  v81 = v28;
  d[0] = v29;
  d[1] = v29;
  __memset_chk();
  if (a9 >= 0x81)
  {
    EVP_tls_cbc_digest_record_cold_2();
  }

  type = a1;
  md = a2;
  v67 = v22;
  v34 = v18;
  v35 = v75 - v18 + 13;
  v70 = v31;
  v36 = 8 * v31;
  if (a9)
  {
    __memcpy_chk();
  }

  v37 = 0;
  v38 = v35 & v24;
  v39 = v35 >> v73;
  v74 = (v35 + v30) >> v73;
  v76 = v39;
  v40.i64[0] = 0x3636363636363636;
  v40.i64[1] = 0x3636363636363636;
  v41 = v36 + 8 * v35;
  do
  {
    d[v37 / 0x10] = veorq_s8(d[v37 / 0x10], v40);
    v37 += 16;
  }

  while (cnt != v37);
  v17(&c, d);
  v86[0] = 0xAAAAAAAAAAAAAAAALL;
  v86[1] = 0xAAAAAAAAAAAAAAAALL;
  __memset_chk();
  *(v86 + v30 - 4) = HIBYTE(v41);
  *(v86 + v30 - 3) = BYTE2(v41);
  *(v86 + v30 - 2) = BYTE1(v41);
  *(v86 + v30 - 1) = 8 * v35;
  v42 = a4;
  if (v33)
  {
    *&ctx[124] = -1431655766;
    *&v43 = 0xAAAAAAAAAAAAAAAALL;
    *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx[109] = v43;
    *&ctx[93] = v43;
    *&ctx[77] = v43;
    *&ctx[61] = v43;
    *&ctx[45] = v43;
    *&ctx[29] = v43;
    *ctx = *a4;
    *&ctx[5] = *(a4 + 5);
    *&ctx[13] = v43;
    __memcpy_chk();
    v17(&c, ctx);
    if (v33 / cnt >= 2)
    {
      v44 = v33 / cnt - 1;
      v45 = cnt + v69 - 13;
      do
      {
        v17(&c, v45);
        v45 += cnt;
        --v44;
      }

      while (v44);
    }

    v42 = a4;
  }

  memset(v84, 0, sizeof(v84));
  v47 = cnt;
  v46 = v81;
  v72 = v81 + v71;
  v48 = v70 - v30;
  v49 = v78;
  do
  {
    v50 = 0;
    *&v51 = 0xAAAAAAAAAAAAAAAALL;
    *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&ctx[96] = v51;
    *&ctx[112] = v51;
    *&ctx[64] = v51;
    *&ctx[80] = v51;
    *&ctx[32] = v51;
    *&ctx[48] = v51;
    *ctx = v51;
    *&ctx[16] = v51;
    v82 = v46;
    v52 = (((v46 ^ v74) - 1) & ~(v46 ^ v74)) >> 63;
    v53 = (((v46 ^ v76) - 1) & ~(v46 ^ v76)) >> 63;
    do
    {
      v54 = v42;
      if (v33 + v50 >= 0xD && (v54 = (v69 - 13), v33 + v50 >= v49))
      {
        v55 = 0;
      }

      else
      {
        v55 = *(v54 + v33 + v50);
      }

      if (v50 >= v38)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0;
      }

      v57 = v56 & 0x80 | v55 & ~v56;
      if (v38 >= v50)
      {
        v58 = -1;
      }

      else
      {
        v58 = ~v53;
      }

      v59 = v58 & (v53 | ~v52) & v57;
      if (v50 >= v48)
      {
        v59 = v52 & *(v86 + v50 - v48) | v59 & ~v52;
      }

      ctx[v50++] = v59;
    }

    while (v47 != v50);
    v17(&c, ctx);
    v77(&c, ctx);
    v60 = 0;
    v33 += v50;
    do
    {
      *(v84 + v60) |= ctx[v60] & v52;
      ++v60;
    }

    while (v34 != v60);
    v47 = cnt;
    v46 = v82 + 1;
    v49 = v78;
    v42 = a4;
  }

  while (v82 + 1 <= v72);
  *&v61 = 0xAAAAAAAAAAAAAAAALL;
  *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *ctx = v61;
  *&ctx[16] = v61;
  EVP_MD_CTX_init(ctx);
  if (EVP_DigestInit_ex(ctx, type, 0))
  {
    v62 = 0;
    v63.i64[0] = 0x6A6A6A6A6A6A6A6ALL;
    v63.i64[1] = 0x6A6A6A6A6A6A6A6ALL;
    do
    {
      d[v62 / 0x10] = veorq_s8(d[v62 / 0x10], v63);
      v62 += 16;
    }

    while (cnt != v62);
    EVP_DigestUpdate(ctx, d, cnt);
    EVP_DigestUpdate(ctx, v84, v34);
    s = -1431655766;
    EVP_DigestFinal(ctx, md, &s);
    *v67 = s;
    EVP_MD_CTX_cleanup(ctx);
    result = 1;
  }

  else
  {
    EVP_MD_CTX_cleanup(ctx);
    result = 0;
  }

  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tls1_sha1_final_raw(uint64_t result, _BYTE *a2)
{
  *a2 = *(result + 3);
  a2[1] = *(result + 2);
  a2[2] = BYTE1(*result);
  a2[3] = *result;
  a2[4] = *(result + 7);
  a2[5] = *(result + 6);
  a2[6] = BYTE1(*(result + 4));
  a2[7] = *(result + 4);
  a2[8] = *(result + 11);
  a2[9] = *(result + 10);
  a2[10] = BYTE1(*(result + 8));
  a2[11] = *(result + 8);
  a2[12] = *(result + 15);
  a2[13] = *(result + 14);
  a2[14] = BYTE1(*(result + 12));
  a2[15] = *(result + 12);
  a2[16] = *(result + 19);
  a2[17] = *(result + 18);
  a2[18] = BYTE1(*(result + 16));
  a2[19] = *(result + 16);
  return result;
}

uint64_t tls1_sha256_final_raw(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 32; i += 4)
  {
    v3 = (a2 + i);
    *v3 = *(result + i + 3);
    v3[1] = *(result + i + 2);
    v3[2] = BYTE1(*(result + i));
    v3[3] = *(result + i);
  }

  return result;
}

uint64_t tls1_sha512_final_raw(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 64; i += 8)
  {
    v3 = (a2 + i);
    *v3 = *(result + i + 7);
    v3[1] = *(result + i + 6);
    v3[2] = WORD2(*(result + i)) >> 8;
    v3[3] = *(result + i + 4);
    v3[4] = BYTE3(*(result + i));
    v3[5] = BYTE2(*(result + i));
    v3[6] = BYTE1(*(result + i));
    v3[7] = *(result + i);
  }

  return result;
}

int *bssl::ssl_reset_error_state(bssl *this, ssl_st *a2)
{
  *(*(this + 6) + 196) = 0;
  ERR_clear_error();

  return ERR_clear_system_error();
}

void bssl::ssl_set_read_error(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  *(v2 + 172) = 2;
  v3 = ERR_save_state();

  std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 184), v3);
}

BOOL bssl::cbb_add_hex_consttime(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v5 = CBB_add_space(a1, &v12, 2 * a3);
  if (v5 && v3)
  {
    do
    {
      v6 = *a2++;
      v7 = bssl::hex_char_consttime((v6 >> 4));
      v8 = v12++;
      *v8 = v7;
      v9 = bssl::hex_char_consttime((v6 & 0xF));
      v10 = v12++;
      *v10 = v9;
      --v3;
    }

    while (v3);
  }

  return v5 != 0;
}

uint64_t SSL_generate_authenticator(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 **a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  if (*(v5 + 280) || !*(v5 + 288))
  {
    goto LABEL_2;
  }

  session = SSL_get_session(a1);
  digest = bssl::ssl_session_get_digest(session, v13);
  v15 = EVP_MD_size(digest);
  memset(d, 0, sizeof(d));
  v16 = (*(a1 + 180) & 1) != 0 ? "EXPORTER-server authenticator handshake context" : "EXPORTER-client authenticator handshake context";
  if (!SSL_export_keying_material(a1, d, v15, v16, 0x2FuLL, 0, 0, 0))
  {
    goto LABEL_2;
  }

  v17 = EVP_MD_size(digest);
  memset(key, 0, sizeof(key));
  v18 = (*(a1 + 180) & 1) != 0 ? "EXPORTER-server authenticator finished key" : "EXPORTER-client authenticator finished key";
  if (!SSL_export_keying_material(a1, key, v17, v18, 0x2AuLL, 0, 0, 0))
  {
    goto LABEL_2;
  }

  v38 = 0;
  v39 = 0;
  v20 = *(*(a1 + 48) + 288);
  *(v20 + 1) = *(a1 + 8);
  if (!bssl::tls13_add_certificate_in_buffer(v20, 1, &v39, &v38, v19))
  {
    OPENSSL_free(v39);
    goto LABEL_2;
  }

  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v21;
  v51 = v21;
  *md = v21;
  v49 = v21;
  s = -1431655766;
  *&ctx.digest = v21;
  *&ctx.flags = v21;
  EVP_MD_CTX_init(&ctx);
  EVP_DigestInit_ex(&ctx, digest, 0);
  EVP_DigestUpdate(&ctx, d, v15);
  EVP_DigestUpdate(&ctx, v39, v38);
  EVP_DigestFinal_ex(&ctx, md, &s);
  EVP_MD_CTX_cleanup(&ctx);
  *&n[1] = 0;
  v35 = 0;
  *(*(*(a1 + 48) + 288) + 1600) &= ~0x1000000u;
  if (bssl::tls13_add_certificate_verify_in_buffer(*(*(a1 + 48) + 288), 1, &v35, &n[1], md, s))
  {
    OPENSSL_free(v39);
    OPENSSL_free(v35);
LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v22;
  v47 = v22;
  *v44 = v22;
  v45 = v22;
  n[0] = -1431655766;
  *&v33.digest = v22;
  *&v33.flags = v22;
  EVP_MD_CTX_init(&v33);
  EVP_DigestInit_ex(&v33, digest, 0);
  EVP_DigestUpdate(&v33, d, v15);
  EVP_DigestUpdate(&v33, v39, v38);
  EVP_DigestUpdate(&v33, v35, *&n[1]);
  EVP_DigestFinal_ex(&v33, v44, n);
  EVP_MD_CTX_cleanup(&v33);
  md_len = -1431655766;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v23;
  v43 = v23;
  *v40 = v23;
  v41 = v23;
  if (!HMAC(digest, key, v17, v44, n[0], v40, &md_len))
  {
    OPENSSL_free(v39);
    OPENSSL_free(v35);
    goto LABEL_2;
  }

  v30 = 0;
  v31 = 0;
  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[1] = v24;
  v29[2] = v24;
  v29[0] = v24;
  CBB_zero(v29);
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[1] = v25;
  v28[2] = v25;
  v28[0] = v25;
  if ((*(*a1 + 88))(a1, v29, v28, 20) && CBB_add_bytes(v28, v40, md_len) && CBB_finish(v29, &v31, &v30))
  {
    v26 = &v38[*&n[1] + v30];
    *a5 = v26;
    v27 = OPENSSL_malloc(v26);
    *a4 = v27;
    memcpy(v27, v39, v38);
    memcpy(&v38[*a4], v35, *&n[1]);
    memcpy(&v38[*a4 + *&n[1]], v31, v30);
    OPENSSL_free(v39);
    OPENSSL_free(v35);
    OPENSSL_free(v31);
    v6 = 1;
  }

  else
  {
    OPENSSL_free(v39);
    OPENSSL_free(v35);
    OPENSSL_free(v31);
    v6 = 0;
  }

  CBB_cleanup(v29);
LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1A906FC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SSL_validate_authenticator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  if (*(v3 + 280) || !*(v3 + 288))
  {
    goto LABEL_2;
  }

  session = SSL_get_session(a1);
  digest = bssl::ssl_session_get_digest(session, v10);
  v12 = EVP_MD_size(digest);
  memset(d, 0, 64);
  if (*(a1 + 180))
  {
    v13 = "EXPORTER-client authenticator handshake context";
  }

  else
  {
    v13 = "EXPORTER-server authenticator handshake context";
  }

  result = SSL_export_keying_material(a1, d, v12, v13, 0x2FuLL, 0, 0, 0);
  if (result)
  {
    v14 = EVP_MD_size(digest);
    memset(key, 0, sizeof(key));
    v15 = (*(a1 + 180) & 1) != 0 ? "EXPORTER-client authenticator finished key" : "EXPORTER-server authenticator finished key";
    result = SSL_export_keying_material(a1, key, v14, v15, 0x2AuLL, 0, 0, 0);
    if (result)
    {
      v40[0] = a2;
      v40[1] = a3;
      v39 = 0xAAAAAAAAAAAAAAAALL;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v37 = v16;
      v38 = v16;
      result = parse_handshake_message(v40, &v37);
      if (result)
      {
        if (BYTE1(v37) == 25 || BYTE1(v37) == 11)
        {
          v36 = 0xAAAAAAAAAAAAAAAALL;
          *&v17 = 0xAAAAAAAAAAAAAAAALL;
          *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v34 = v17;
          v35 = v17;
          v18 = parse_handshake_message(v40, &v34);
          result = 0;
          if (v18)
          {
            if (BYTE1(v34) == 15)
            {
              v33 = 0xAAAAAAAAAAAAAAAALL;
              *&v19 = 0xAAAAAAAAAAAAAAAALL;
              *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v32[0] = v19;
              v32[1] = v19;
              v20 = parse_handshake_message(v40, v32);
              result = 0;
              if (v20)
              {
                if (BYTE1(v32[0]) == 20)
                {
                  bssl::SSL_SESSION_dup(*(*(a1 + 48) + 472), 2, md);
                  v21 = *(*(a1 + 48) + 288);
                  v22 = *&md[0];
                  *&md[0] = 0;
                  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v21 + 1536), v22);
                  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](md, 0);
                  v23 = bssl::tls13_process_certificate(*(*(a1 + 48) + 288), &v37, 0);
                  result = 0;
                  if (v23)
                  {
                    *&v24 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    md[2] = v24;
                    md[3] = v24;
                    md[0] = v24;
                    md[1] = v24;
                    s = -1431655766;
                    *&n_4.digest = v24;
                    *&n_4.flags = v24;
                    EVP_MD_CTX_init(&n_4);
                    EVP_DigestInit_ex(&n_4, digest, 0);
                    EVP_DigestUpdate(&n_4, d, v12);
                    EVP_DigestUpdate(&n_4, *(&v38 + 1), v39);
                    EVP_DigestFinal_ex(&n_4, md, &s);
                    EVP_MD_CTX_cleanup(&n_4);
                    result = bssl::tls13_process_certificate_verify_with_transcript(*(*(a1 + 48) + 288), &v34, 1, md, s);
                    if (result)
                    {
                      *&v25 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v42[2] = v25;
                      v42[3] = v25;
                      v42[0] = v25;
                      v42[1] = v25;
                      n = -1431655766;
                      *&v28.digest = v25;
                      *&v28.flags = v25;
                      EVP_MD_CTX_init(&v28);
                      EVP_DigestInit_ex(&v28, digest, 0);
                      EVP_DigestUpdate(&v28, d, v12);
                      EVP_DigestUpdate(&v28, *(&v38 + 1), v39);
                      EVP_DigestUpdate(&v28, *(&v35 + 1), v36);
                      EVP_DigestFinal_ex(&v28, v42, &n);
                      EVP_MD_CTX_cleanup(&v28);
                      md_len = -1431655766;
                      *&v26 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v41[2] = v26;
                      v41[3] = v26;
                      v41[0] = v26;
                      v41[1] = v26;
                      result = HMAC(digest, key, v14, v42, n, v41, &md_len);
                      if (result)
                      {
                        result = CBS_mem_equal(v32 + 8, v41, md_len);
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_3;
        }

LABEL_2:
        result = 0;
      }
    }
  }

LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t parse_handshake_message(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = CBS_get_u8(a1, (a2 + 1));
  if (result)
  {
    v7 = -1431655766;
    result = CBS_get_u24(a1, &v7);
    if (result)
    {
      result = CBS_get_bytes(a1, (a2 + 8), v7);
      if (result)
      {
        v6 = v7 + 4;
        *(a2 + 24) = v4;
        *(a2 + 32) = v6;
        return 1;
      }
    }
  }

  return result;
}

int SSL_accept(SSL *ssl)
{
  if (!*&ssl->rwstate)
  {
    BYTE4(ssl->param) |= 1u;
    *&ssl->rwstate = bssl::ssl_server_handshake;
  }

  return SSL_do_handshake(ssl);
}

uint64_t SSL_set_quic_early_data_context(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  result = bssl::Array<unsigned char>::InitUninitialized(v3 + 248, a3);
  if (result)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v3 + 248);
    do
    {
      v9 = *a2++;
      *v8++ = v9;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t SSL_get_quic_early_data_context(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  result = *(v2 + 248);
  *a2 = *(v2 + 256);
  return result;
}

void SSL_reset_early_data_reject(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (!v1 || *(v1 + 16) != 13)
  {
    abort();
  }

  *(v1 + 16) = 1;
  *(v1 + 1600) &= ~0x400u;
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 1544), 0);
  v3 = *(a1 + 48);
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
}

uint64_t SSL_CTX_set_options(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 424) | a2;
  *(a1 + 424) = v2;
  return v2;
}

uint64_t SSL_CTX_clear_options(uint64_t a1, int a2)
{
  v2 = *(a1 + 424) & ~a2;
  *(a1 + 424) = v2;
  return v2;
}

uint64_t SSL_CTX_set_mode(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 428) | a2;
  *(a1 + 428) = v2;
  return v2;
}

uint64_t SSL_CTX_clear_mode(uint64_t a1, int a2)
{
  v2 = *(a1 + 428) & ~a2;
  *(a1 + 428) = v2;
  return v2;
}

int SSL_renegotiate(SSL *s)
{
  if ((*(s->handshake_func + 111) & 0x800) == 0)
  {
    v2 = 66;
    v3 = 2030;
LABEL_11:
    ERR_put_error(16, 0, v2, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v3);
    return 0;
  }

  if (!bssl::ssl_can_renegotiate(s, v1))
  {
    v2 = 182;
    v3 = 2035;
    goto LABEL_11;
  }

  can_renegotiate = bssl::ssl_can_renegotiate(s, v5);
  handshake_func = s->handshake_func;
  if (!can_renegotiate)
  {
    v8 = *(handshake_func + 35);
    if (!v8 || (*(v8 + 1603) & 1) != 0)
    {
      SSL_renegotiate_cold_1();
    }
  }

  if (*(handshake_func + 58) || *(handshake_func + 44))
  {
    v2 = 182;
    v3 = 2048;
    goto LABEL_11;
  }

  if (*(handshake_func + 35))
  {
    v2 = 68;
    v3 = 2054;
    goto LABEL_11;
  }

  bssl::ssl_handshake_new(s, &v13);
  v10 = s->handshake_func;
  v11 = v13;
  v13 = 0;
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](v10 + 35, v11);
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](&v13, 0);
  v12 = s->handshake_func;
  if (*(v12 + 35))
  {
    *(v12 + 111) &= ~0x800u;
    ++*(s->handshake_func + 48);
    return 1;
  }

  return 0;
}

BOOL bssl::ssl_can_renegotiate(bssl *this, const ssl_st *a2)
{
  if ((*(this + 180) & 1) != 0 || (**this & 1) != 0 || *(*(this + 6) + 208) && bssl::ssl_protocol_version(this, a2) > 0x303 || !*(this + 1))
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 44);
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_16;
      }

      return *(*(this + 6) + 192) == 0;
    }
  }

  else
  {
    if (v4 == 4)
    {
      return 1;
    }

    if (v4 != 3)
    {
      if (v4 == 2)
      {
        return 1;
      }

LABEL_16:
      bssl::ssl_can_renegotiate();
    }
  }

  return result;
}

int SSL_renegotiate_pending(SSL *s)
{
  handshake_func = s->handshake_func;
  v2 = *(handshake_func + 35);
  if (!v2 || (*(v2 + 1600) & 8) != 0)
  {
    return 0;
  }

  else
  {
    return (*(handshake_func + 111) >> 4) & 1;
  }
}

uint64_t SSL_set_mtu(bssl *a1, unsigned int a2)
{
  if (!**a1 || bssl::dtls1_min_mtu(a1) > a2)
  {
    return 0;
  }

  *(*(a1 + 7) + 320) = a2;
  return 1;
}

uint64_t SSL_CTX_set_tlsext_ticket_keys(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (!a2)
  {
    return 48;
  }

  if (a3 == 48)
  {
    result = OPENSSL_malloc(0x38uLL);
    if (result)
    {
      *(result + 48) = 0;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *result = *a2;
      *(result + 16) = a2[1];
      *(result + 32) = a2[2];
      *(result + 48) = 0;
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 544), result);
      std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 552), 0);
      return 1;
    }
  }

  else
  {
    ERR_put_error(16, 0, 161, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2191);
    return 0;
  }

  return result;
}

int SSL_CTX_set_cipher_list(SSL_CTX *a1, const char *str)
{
  v4 = *&a1[1].sid_ctx[8];
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
  }

  return bssl::ssl_create_cipher_list(&a1->sha1, is_opaque != 0, str, 0);
}

int SSL_set_cipher_list(SSL *s, const char *str)
{
  method = s->method;
  if (!method)
  {
    return 0;
  }

  v4 = *(&method[1].ssl_shutdown + 5);
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
    method = s->method;
  }

  return bssl::ssl_create_cipher_list(&method->ssl_free, is_opaque != 0, str, 0);
}

uint64_t SSL_CTX_set_next_protos_advertised_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 600) = a2;
  *(result + 608) = a3;
  return result;
}

uint64_t SSL_CTX_set_next_proto_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 616) = a2;
  *(result + 624) = a3;
  return result;
}

uint64_t SSL_CTX_set_alpn_protos(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a3)
  {
    return bssl::Array<unsigned char>::InitUninitialized(a1 + 648, 0) ^ 1;
  }

  v4 = a3;
  v5 = a2;
  if ((bssl::ssl_is_valid_alpn_list(a2, a3) & 1) == 0)
  {
    ERR_put_error(16, 0, 315, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2642);
    return 1;
  }

  v6 = (a1 + 648);
  if (!bssl::Array<unsigned char>::InitUninitialized(v6, v4))
  {
    return 1;
  }

  v7 = *v6;
  do
  {
    v8 = *v5++;
    *v7++ = v8;
    --v4;
  }

  while (v4);
  return 0;
}

uint64_t SSL_CTX_set_alpn_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 632) = a2;
  *(result + 640) = a3;
  return result;
}

uint64_t SSL_set_alpn_select_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t SSL_get0_certificate_types(uint64_t a1, void *a2)
{
  if ((*(a1 + 180) & 1) != 0 || (v2 = *(*(a1 + 48) + 280)) == 0)
  {
    result = 0;
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 1504);
    result = *(v2 + 1512);
  }

  *a2 = v3;
  return result;
}

void SSL_set_shutdown(SSL *ssl, int mode)
{
  handshake_func = ssl->handshake_func;
  v4 = *(handshake_func + 43);
  v3 = *(handshake_func + 44);
  if ((((v3 == 1) | (2 * (v4 != 0))) & ~mode) != 0)
  {
    SSL_set_shutdown_cold_1();
  }

  if ((mode & 2) != 0 && !v4)
  {
    *(handshake_func + 43) = 1;
  }

  if ((mode & 1) != 0 && !v3)
  {
    *(handshake_func + 44) = 1;
  }
}

uint64_t use_psk_identity_hint(void **a1, char *__s)
{
  if (__s)
  {
    if (strlen(__s) >= 0x81)
    {
      ERR_put_error(16, 0, 136, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 3040);
      return 0;
    }

    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);
    if (*__s)
    {
      v5 = OPENSSL_strdup(__s);
      std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, v5);
      if (!*a1)
      {
        return 0;
      }
    }
  }

  else
  {
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);
  }

  return 1;
}

uint64_t SSL_use_psk_identity_hint(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return use_psk_identity_hint((v2 + 56), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_get_psk_identity_hint(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (!v1)
    {
      SSL_get_psk_identity_hint_cold_1();
    }

    return *(v1 + 56);
  }

  return result;
}

const SSL *SSL_get_psk_identity(const SSL *result)
{
  if (result)
  {
    result = SSL_get_session(result);
    if (result)
    {
      return result->s3;
    }
  }

  return result;
}

uint64_t SSL_set_psk_client_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 64) = a2;
  }

  return result;
}

uint64_t SSL_set_psk_server_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 72) = a2;
  }

  return result;
}

uint64_t SSL_set_psk_client13_ext_callback(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 80) = a2;
  }

  return result;
}

size_t SSL_get_client_random(uint64_t a1, void *__dst, unint64_t a3)
{
  if (!a3)
  {
    return 32;
  }

  if (a3 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a3;
  }

  memcpy(__dst, (*(a1 + 48) + 48), v3);
  return v3;
}

size_t SSL_get_server_random(uint64_t a1, void *__dst, unint64_t a3)
{
  if (!a3)
  {
    return 32;
  }

  if (a3 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a3;
  }

  memcpy(__dst, (*(a1 + 48) + 16), v3);
  return v3;
}

uint64_t SSL_get_pending_cipher(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return *(v1 + 1568);
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_CTX_use_server_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 680), result);
    result = bssl::Array<unsigned char>::InitUninitialized(a1 + 664, 1uLL);
    if (result)
    {
      if (!*(a1 + 672))
      {
        abort();
      }

      **(a1 + 664) = 2;
      return 1;
    }
  }

  return result;
}

ssl_credential_st *ssl_new_raw_public_key_credential_from_certificate(const unsigned __int8 *a1, uint64_t a2)
{
  v4 = SSL_CREDENTIAL_new_raw_public_key();
  if (v4)
  {
    *&v9 = a1;
    *(&v9 + 1) = a2;
    v5 = EVP_parse_public_key(&v9);
    if (v5)
    {
      v7 = v5;
      SSL_CREDENTIAL_set1_raw_public_key(v4, v5, v6);
      EVP_PKEY_free(v7);
    }

    else
    {
      SSL_CREDENTIAL_free(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t SSL_CTX_use_client_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 704), result);
    result = bssl::Array<unsigned char>::InitUninitialized(a1 + 688, 1uLL);
    if (result)
    {
      if (!*(a1 + 696))
      {
        abort();
      }

      **(a1 + 688) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_use_server_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(a1 + 8) + 192), result);
    result = bssl::Array<unsigned char>::InitUninitialized(*(a1 + 8) + 176, 1uLL);
    if (result)
    {
      v5 = *(a1 + 8);
      if (!*(v5 + 184))
      {
        abort();
      }

      **(v5 + 176) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_use_client_raw_public_key_certificate(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  result = ssl_new_raw_public_key_credential_from_certificate(a2, a3);
  if (result)
  {
    std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(a1 + 8) + 216), result);
    result = bssl::Array<unsigned char>::InitUninitialized(*(a1 + 8) + 200, 1uLL);
    if (result)
    {
      v5 = *(a1 + 8);
      if (!*(v5 + 208))
      {
        abort();
      }

      **(v5 + 200) = 2;
      return 1;
    }
  }

  return result;
}

uint64_t SSL_CTX_use_ticket_request(uint64_t a1, char a2, char a3)
{
  *(a1 + 712) = a2;
  *(a1 + 713) = a3;
  return 1;
}

uint64_t bssl::hex_char_consttime(bssl *this)
{
  v1 = -1;
  if (this >= 0xA)
  {
    v1 = 0;
  }

  return ((this + 48) & v1 | (this + 87) & ~v1);
}

ECDSA_SIG *ECDSA_SIG_new(void)
{
  result = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  if (result)
  {
    result->r = 0;
    result->s = 0;
  }

  return result;
}

void ECDSA_SIG_free(ECDSA_SIG *a)
{
  if (a)
  {
    r = a->r;
    if (r)
    {
      BN_free(r);
    }

    s = a->s;
    if (s)
    {
      BN_free(s);
    }

    free(a);
  }
}

int ECDSA_sign(int type, const unsigned __int8 *dgst, int dgstlen, unsigned __int8 *sig, unsigned int *siglen, EC_KEY *eckey)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_sign_cold_1();
  }

  return 0;
}

ECDSA_SIG *__cdecl ECDSA_do_sign(const unsigned __int8 *dgst, int dgst_len, EC_KEY *eckey)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_do_sign_cold_1();
  }

  return 0;
}

int ECDSA_size(const EC_KEY *eckey)
{
  v1 = EC_KEY_get0_group(eckey);
  curve_name = EC_GROUP_get_curve_name(v1);
  if (boringssl_ecdsa_get_cc_curve_parameters(curve_name))
  {
    return (((cczp_bitlen() + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 9;
  }

  else
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_size_cold_1();
    }

    LODWORD(v3) = 0;
  }

  return v3;
}

int ECDSA_do_verify(const unsigned __int8 *dgst, int dgst_len, const ECDSA_SIG *sig, EC_KEY *eckey)
{
  v6 = EC_KEY_get0_group(eckey);
  curve_name = EC_GROUP_get_curve_name(v6);
  cc_curve_parameters = boringssl_ecdsa_get_cc_curve_parameters(curve_name);
  if (!cc_curve_parameters)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ECDSA_do_verify_cold_7();
    }

    return 0;
  }

  v9 = cc_curve_parameters;
  v10 = malloc_type_malloc(24 * *cc_curve_parameters + 16, 0x60040B37CB4BBuLL);
  if (!v10)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      ECDSA_do_verify_cold_6();
    }

    return 0;
  }

  v11 = v10;
  *v10 = v9;
  out = 0;
  v12 = i2o_ECPublicKey(eckey, &out);
  if (!out)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_5();
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1AC57E2E0](v9, v12, out, v11))
  {
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        ECDSA_do_verify_cold_1();
      }
    }

    OPENSSL_free(out);
LABEL_18:
    v14 = v11;
LABEL_19:
    free(v14);
    return 0;
  }

  v15 = ccec_signature_r_s_size();
  v16 = malloc_type_malloc(v15, 0x5B7BC468uLL);
  v17 = malloc_type_malloc(v15, 0x56CEC1ABuLL);
  v18 = v17;
  if (v16)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_4();
    }

    OPENSSL_free(out);
    free(v11);
    if (v16)
    {
      free(v16);
    }

    if (!v18)
    {
      return 0;
    }

    goto LABEL_45;
  }

  v20 = BN_bn2bin_padded(v16, v15, sig->r);
  if (!v20 || !BN_bn2bin_padded(v18, v15, sig->s))
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      ECDSA_do_verify_cold_3();
    }

    OPENSSL_free(out);
    free(v11);
    free(v16);
LABEL_45:
    v14 = v18;
    goto LABEL_19;
  }

  if (ccec_verify_composite() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    ECDSA_do_verify_cold_2();
  }

  OPENSSL_free(out);
  free(v11);
  free(v16);
  free(v18);
  return 0;
}

void OUTLINED_FUNCTION_4_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

void bssl::DTLS1_STATE::~DTLS1_STATE(bssl::DTLS1_STATE *this)
{
  v2 = *(this + 304);
  if (*(this + 304))
  {
    v3 = this + 136;
    do
    {
      v3 = (bssl::Array<unsigned char>::~Array(v3) + 24);
      --v2;
    }

    while (v2);
  }

  *(this + 304) = 0;
  for (i = 128; i != 72; i -= 8)
  {
    std::unique_ptr<bssl::hm_fragment,bssl::internal::Deleter>::reset[abi:ne200100]((this + i), 0);
  }

  std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](this + 7, 0);
}

uint64_t bssl::dtls1_new(ssl_st *this, ssl_st *a2)
{
  if (!bssl::tls_new(this, a2))
  {
    return 0;
  }

  bssl::New<bssl::DTLS1_STATE>();
  v12 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = OPENSSL_malloc(0x10uLL);
  if (v5)
  {
    *v5 = 0;
    v5[1] = 0;
  }

  std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](v12 + 9, v5);
  if (!v12[9])
  {
    goto LABEL_9;
  }

  bssl::SSLAEADContext::CreateNullCipher(&v11);
  v6 = v11;
  v7 = v12[9];
  v11 = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v7, v6);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v11, 0);
  v8 = v12;
  if (*v12[9])
  {
    v12 = 0;
    *&this->server = v8;
    v9 = 1;
  }

  else
  {
LABEL_9:
    bssl::tls_free(this, v3);
    v9 = 0;
  }

  std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](&v12, 0);
  return v9;
}

void sub_1A9071260(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void bssl::dtls1_free(bssl::DTLS1_STATE **this, ssl_st *a2)
{
  bssl::tls_free(this, a2);
  if (this)
  {
    v3 = this[7];
    if (v3)
    {
      bssl::DTLS1_STATE::~DTLS1_STATE(v3);
      OPENSSL_free(v4);
    }

    this[7] = 0;
  }
}

uint64_t bssl::dtls1_start_timer(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  if (!*(v3 + 328) && !*(v3 + 336))
  {
    *(v3 + 344) = *(this + 24);
  }

  result = bssl::ssl_get_current_time(this, v3 + 328);
  v5 = *(this + 7);
  v6 = *(v5 + 344);
  v7 = *(v5 + 328) + v6 / 0x3E8uLL;
  *(v5 + 328) = v7;
  v8 = *(v5 + 336) + 1000 * (v6 % 0x3E8);
  *(v5 + 336) = v8;
  if (v8 >= 0xF4240)
  {
    *(v5 + 328) = v7 + 1;
    *(v5 + 336) = v8 - 1000000;
  }

  return result;
}

uint64_t bssl::dtls1_is_timer_expired(bssl *this, ssl_st *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = DTLSv1_get_timeout(this, &v4);
  if (result)
  {
    return v4 < 1 && v5 < 1;
  }

  return result;
}

uint64_t DTLSv1_get_timeout(uint64_t a1, unint64_t *a2)
{
  result = SSL_is_dtls(a1);
  if (result)
  {
    v5 = *(a1 + 56);
    if (!*(v5 + 328) && !*(v5 + 336))
    {
      return 0;
    }

    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    bssl::ssl_get_current_time(a1, &v14);
    v6 = *(a1 + 56);
    v7 = *(v6 + 328);
    v8 = v7 >= v14;
    v9 = v7 - v14;
    if (!v8)
    {
      goto LABEL_5;
    }

    if (v9)
    {
      v10 = *(v6 + 336);
    }

    else
    {
      v10 = *(v6 + 336);
      if (v10 <= v15)
      {
LABEL_5:
        *a2 = 0;
        a2[1] = 0;
        return 1;
      }
    }

    v11 = v10 < v15;
    if (v10 < v15)
    {
      v10 += 1000000;
    }

    v12 = v10 - v15;
    v13 = v9 - v11;
    if (v13 || v12 >> 3 >= 0x753)
    {
      if (v13 >> 31)
      {
        DTLSv1_get_timeout_cold_1();
      }
    }

    else
    {
      v12 = 0;
    }

    *a2 = v13;
    *(a2 + 2) = v12;
    return 1;
  }

  return result;
}

uint64_t bssl::dtls1_stop_timer(uint64_t this, ssl_st *a2)
{
  v2 = *(this + 56);
  *(v2 + 340) = 0;
  *(v2 + 332) = 0;
  *(v2 + 324) = 0;
  *(*(this + 56) + 344) = *(this + 96);
  return this;
}

BOOL bssl::dtls1_check_timeout_num(bssl *this, ssl_st *a2)
{
  v3 = *(this + 7);
  v4 = *(v3 + 324) + 1;
  *(v3 + 324) = v4;
  if (v4 >= 3 && (SSL_get_options(this) & 0x1000) == 0)
  {
    v5 = BIO_ctrl(*(this + 4), 47, 0, 0);
    if (v5 <= 0x40000000)
    {
      v6 = v5;
      if (bssl::dtls1_min_mtu(v5) <= v5)
      {
        *(*(this + 7) + 320) = v6;
      }
    }
  }

  v7 = *(*(this + 7) + 324);
  if (v7 >= 0xD)
  {
    ERR_put_error(16, 0, 198, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_lib.cc", 187);
  }

  return v7 < 0xD;
}

uint64_t DTLSv1_handle_timeout(bssl *a1, ssl_st *a2)
{
  bssl::ssl_reset_error_state(a1, a2);
  if (!SSL_is_dtls(a1))
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/d1_lib.cc", 256);
    return 0xFFFFFFFFLL;
  }

  result = bssl::dtls1_is_timer_expired(a1, v3);
  if (!result)
  {
    return result;
  }

  if (!bssl::dtls1_check_timeout_num(a1, v5))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 7);
  v8 = 2 * *(v7 + 344);
  if (v8 >= 0xEA60)
  {
    v8 = 60000;
  }

  *(v7 + 344) = v8;
  bssl::dtls1_start_timer(a1, v6);

  return bssl::dtls1_retransmit_outgoing_messages(a1, v9);
}

void std::unique_ptr<bssl::DTLSEpochState,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSLAEADContext ***a1, bssl::SSLAEADContext **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::Delete<bssl::DTLSEpochState>(v3);
  }
}

void bssl::Delete<bssl::DTLSEpochState>(bssl::SSLAEADContext **a1)
{
  if (a1)
  {
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](a1, 0);

    OPENSSL_free(a1);
  }
}

double bssl::New<bssl::DTLS1_STATE>()
{
  v0 = OPENSSL_malloc(0x160uLL);
  if (v0)
  {
    *v0 &= 0xF8u;
    *(v0 + 2) = 0;
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;
    *(v0 + 86) = 0;
    result = 0.0;
    *(v0 + 1) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 36) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 13) = 0u;
    *(v0 + 15) = 0u;
    *(v0 + 324) = 0;
    *(v0 + 332) = 0;
    *(v0 + 316) = 0;
  }

  return result;
}

void std::unique_ptr<bssl::DTLS1_STATE,bssl::internal::Deleter>::reset[abi:ne200100](bssl::DTLS1_STATE **a1, bssl::DTLS1_STATE *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::DTLS1_STATE::~DTLS1_STATE(v3);
    OPENSSL_free(v4);
  }
}

uint64_t bssl::ssl_decode_client_hello_inner(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v10;
  v47 = v10;
  v44 = v10;
  v45 = v10;
  v42 = v10;
  v43 = v10;
  v41 = v10;
  v40[0] = a4;
  v40[1] = a5;
  if (bssl::ssl_parse_client_hello_with_trailing_data(a1, v40, &v41))
  {
    v39 = -86;
    while (CBS_get_u8(v40, &v39))
    {
      if (v39)
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 140);
        v11 = 0;
        *a2 = 47;
        return v11;
      }
    }

    if (*(&v47 + 1))
    {
      v13 = *(&v44 + 1) == 0;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v12 = 150;
      goto LABEL_12;
    }

    v15 = a6[7];
    *&v44 = a6[6];
    *(&v44 + 1) = v15;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v38[1] = v16;
    v38[2] = v16;
    v38[0] = v16;
    CBB_zero(v38);
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37[2] = v17;
    v37[0] = v17;
    v37[1] = v17;
    v36[1] = v17;
    v36[2] = v17;
    v36[0] = v17;
    if (!(*(*a1 + 88))(a1, v38, v37, 1) || !CBB_add_u16(v37, WORD4(v42)) || !CBB_add_bytes(v37, v43, *(&v43 + 1)) || (*&v18 = 0xAAAAAAAAAAAAAAAALL, *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL, v48[1] = v18, v48[2] = v18, v48[0] = v18, !CBB_add_u8_length_prefixed(v37, v48)) || !CBB_add_bytes(v48, v44, *(&v44 + 1)) || !CBB_add_u16_length_prefixed(v37, v48) || !CBB_add_bytes(v48, v45, *(&v45 + 1)) || !CBB_add_u8_length_prefixed(v37, v48) || !CBB_add_bytes(v48, v46, *(&v46 + 1)) || !CBB_flush(v37) || !CBB_add_u16_length_prefixed(v37, v36))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 162);
      v11 = 0;
LABEL_49:
      CBB_cleanup(v38);
      return v11;
    }

    v19 = v47;
    *&v48[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v48[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (bssl::ssl_client_hello_get_extension(&v41, v48, 64768))
    {
      v20 = *&v48[0] - v19 + *(&v48[0] + 1);
      if (*(&v19 + 1) < v20)
      {
        abort();
      }

      if (*(&v19 + 1) >= (*&v48[0] - v19 - 4))
      {
        v21 = *&v48[0] - v19 - 4;
      }

      else
      {
        v21 = *(&v19 + 1);
      }

      if (!CBB_add_bytes(v36, v19, v21))
      {
        ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 185);
        goto LABEL_65;
      }

      v34 = 0xAAAAAAAAAAAAAAAALL;
      v35 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBS_get_u8_length_prefixed(v48, &v34) || !v35 || *(&v48[0] + 1))
      {
        ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 193);
        goto LABEL_65;
      }

      v22 = a6[13];
      v32 = a6[12];
      v33 = v22;
      while (2)
      {
        v31 = -21846;
        if (CBS_get_u16(&v34, &v31))
        {
          if (v31 != -499)
          {
            v30 = -21846;
            v28 = 0xAAAAAAAAAAAAAAAALL;
            v29 = 0xAAAAAAAAAAAAAAAALL;
            do
            {
              if (!v33)
              {
                *a2 = 47;
                v26 = 219;
                v27 = 320;
                goto LABEL_64;
              }

              if (!CBS_get_u16(&v32, &v30) || !CBS_get_u16_length_prefixed(&v32, &v28))
              {
                v26 = 224;
LABEL_60:
                v27 = 137;
                goto LABEL_64;
              }
            }

            while (v30 != v31);
            if (!CBB_add_u16(v36, v30) || !CBB_add_u16(v36, v29) || !CBB_add_bytes(v36, v28, v29))
            {
              v26 = 233;
              goto LABEL_60;
            }

            if (v35)
            {
              continue;
            }

            if (!CBB_add_bytes(v36, (v19 + v20), *(&v19 + 1) - v20))
            {
              ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 240);
              goto LABEL_65;
            }

            goto LABEL_51;
          }

          *a2 = 47;
          v26 = 209;
          v27 = 320;
        }

        else
        {
          v26 = 203;
          v27 = 137;
        }

        break;
      }

LABEL_64:
      ERR_put_error(16, 0, v27, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v26);
      goto LABEL_65;
    }

    if (!CBB_add_bytes(v36, v19, *(&v19 + 1)))
    {
      v25 = 174;
      goto LABEL_62;
    }

LABEL_51:
    if (CBB_flush(v37))
    {
      v23 = CBB_data(v37);
      v24 = CBB_len(v37);
      if (bssl::is_valid_client_hello_inner(a1, a2, v23, v24))
      {
        if ((*(*a1 + 96))(a1, v38, a3))
        {
          v11 = 1;
          goto LABEL_49;
        }

        v25 = 255;
        goto LABEL_62;
      }

LABEL_65:
      v11 = 0;
      goto LABEL_49;
    }

    v25 = 245;
LABEL_62:
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v25);
    goto LABEL_65;
  }

  v12 = 133;
LABEL_12:
  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v12);
  return 0;
}

uint64_t bssl::is_valid_client_hello_inner(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[5] = v5;
  v15[6] = v5;
  v15[3] = v5;
  v15[4] = v5;
  v15[1] = v5;
  v15[2] = v5;
  v15[0] = v5;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::ssl_client_hello_init(a1, v15, a3, a4) && bssl::ssl_client_hello_get_extension(v15, &v14, 65037) && *(&v14 + 1) == 1 && *v14 == 1 && (bssl::ssl_client_hello_get_extension(v15, &v14, 43) & 1) != 0)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_u8_length_prefixed(&v14, &v12) && !*(&v14 + 1) && v13)
    {
      while (1)
      {
        v11 = -21846;
        if (!CBS_get_u16(&v12, &v11))
        {
          break;
        }

        if (v11 - 768 < 4 || v11 == 65279 || v11 == 65277)
        {
          *a2 = 47;
          v9 = 314;
          v10 = 118;
          goto LABEL_20;
        }

        if (!v13)
        {
          return 1;
        }
      }

      *a2 = 50;
      v9 = 137;
      v10 = 111;
    }

    else
    {
      *a2 = 50;
      v9 = 137;
      v10 = 104;
    }
  }

  else
  {
    *a2 = 47;
    v9 = 314;
    v10 = 94;
  }

LABEL_20:
  ERR_put_error(16, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v10);
  return 0;
}

uint64_t bssl::ssl_client_hello_decrypt(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t *a4, void *a5, char *a6, unint64_t a7)
{
  *a3 = 0;
  v28 = 0;
  v29 = 0;
  v15 = a5[1];
  v14 = a5[2];
  if (bssl::Array<unsigned char>::InitUninitialized(&v28, v14))
  {
    if (v14)
    {
      v16 = v28;
      do
      {
        v17 = *v15++;
        *v16++ = v17;
        --v14;
      }

      while (v14);
    }

    v18 = a5[12];
    if (v18 > a6)
    {
      v23 = "reinterpret_cast<uintptr_t>(client_hello_outer->extensions) <= reinterpret_cast<uintptr_t>(payload.data())";
      v24 = 280;
    }

    else
    {
      if (v18 + a5[13] >= &a6[a7])
      {
        v19 = &a6[-a5[1]];
        if (v29 >= v19)
        {
          if (v29 - v19 >= a7)
          {
            v20 = a7;
          }

          else
          {
            v20 = v29 - v19;
          }

          if (v20)
          {
            bzero(&v19[v28], v20);
          }

          v26 = 0;
          v27 = 0;
          if ((bssl::Array<unsigned char>::InitUninitialized(&v26, a7) & 1) == 0)
          {
            v21 = 0;
            *a2 = 80;
            goto LABEL_22;
          }

          v25 = 0xAAAAAAAAAAAAAAAALL;
          if (!EVP_HPKE_CTX_open((a1 + 94), v26, &v25, v27, a6, a7))
          {
            *a2 = 51;
            *a3 = 1;
            ERR_put_error(16, 0, 138, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 316);
            goto LABEL_21;
          }

          if (v27 >= v25)
          {
            v27 = v25;
            if (bssl::ssl_decode_client_hello_inner(*a1, a2, a4, v26, v25, a5))
            {
              bssl::ssl_do_msg_callback(*a1, 0, 257, *a4, a4[1]);
              v21 = 1;
LABEL_22:
              OPENSSL_free(v26);
              goto LABEL_23;
            }

LABEL_21:
            v21 = 0;
            goto LABEL_22;
          }
        }

        abort();
      }

      v23 = "reinterpret_cast<uintptr_t>(client_hello_outer->extensions + client_hello_outer->extensions_len) >= reinterpret_cast<uintptr_t>(payload.data() + payload.size())";
      v24 = 283;
    }

    __assert_rtn("ssl_client_hello_decrypt", "encrypted_client_hello.cc", v24, v23);
  }

  v21 = 0;
  *a2 = 80;
LABEL_23:
  OPENSSL_free(v28);
  return v21;
}

void sub_1A9071FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  bssl::Array<unsigned char>::~Array(va);
  bssl::Array<unsigned char>::~Array(va1);
  _Unwind_Resume(a1);
}

BOOL bssl::ssl_is_valid_ech_public_name(unsigned __int8 *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v5 = 0;
    while (2)
    {
      v6 = 0;
      v7 = a1;
      v8 = v2;
      v9 = &a1[v2];
      while (a1[v6] != 46)
      {
        if (v2 == ++v6)
        {
          goto LABEL_8;
        }
      }

      v9 = &a1[v6];
LABEL_8:
      v10 = v9 - a1;
      if (v10 == v2)
      {
        a1 = 0;
        v2 = 0;
        v5 = v7;
        v4 = v8;
      }

      else
      {
        v11 = v10 + 1;
        if (v2 < v10 + 1)
        {
          abort();
        }

        if (v2 < v10)
        {
          v10 = v2;
        }

        v2 -= v11;
        if (v8 == v11)
        {
          return 0;
        }

        a1 += v11;
        v8 = v10;
      }

      if (v8 - 64 >= 0xFFFFFFFFFFFFFFC1 && *v7 != 45 && v7[v8 - 1] != 45)
      {
        do
        {
          v12 = *v7;
          v13 = OPENSSL_isalnum(v12);
          if (v12 != 45 && !v13)
          {
            return 0;
          }

          ++v7;
          --v8;
        }

        while (v8);
        if (v2)
        {
          continue;
        }

        if (v4 >= 2)
        {
          if (*v5 != 48 || (v5[1] | 0x20) != 0x78)
          {
LABEL_31:
            v17 = v4 - 1;
            do
            {
              v18 = *v5++;
              result = (v18 - 58) < 0xFFFFFFF6;
            }

            while ((v18 - 58) >= 0xFFFFFFF6 && v17-- != 0);
            return result;
          }

          v16 = v4 - 2;
          if (v4 == 2)
          {
            return 0;
          }

          for (i = v5 + 2; OPENSSL_isxdigit(*i); ++i)
          {
            result = 0;
            if (!--v16)
            {
              return result;
            }
          }
        }

        if (!v4)
        {
          return 1;
        }

        goto LABEL_31;
      }

      break;
    }
  }

  return 0;
}

uint64_t bssl::parse_ech_config(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  v30 = -21846;
  v8 = *a1;
  v9 = *(a1 + 8);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16(a1, &v30) || !CBS_get_u16_length_prefixed(a1, &v28))
  {
    v22 = 413;
LABEL_33:
    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", v22);
    return 0;
  }

  if (v30 != -499)
  {
    goto LABEL_34;
  }

  v10 = *(a1 + 8);
  v11 = v9 - v10;
  result = bssl::Array<unsigned char>::InitUninitialized(a2, v9 - v10);
  if (!result)
  {
    return result;
  }

  if (v9 != v10)
  {
    v13 = *a2;
    do
    {
      v14 = *v8;
      v8 = (v8 + 1);
      *v13++ = v14;
      --v11;
    }

    while (v11);
  }

  v15 = *(a2 + 8);
  v27[0] = *a2;
  v27[1] = v15;
  memset(v26, 170, sizeof(v26));
  memset(v25, 170, sizeof(v25));
  if (!CBS_skip(v27, 2uLL) || !CBS_get_u16_length_prefixed(v27, &v28) || !CBS_get_u8(&v28, (a2 + 67)) || !CBS_get_u16(&v28, (a2 + 64)) || !CBS_get_u16_length_prefixed(&v28, v26) || !v26[1] || !CBS_get_u16_length_prefixed(&v28, &v25[2]) || !v25[3] || (v25[3] & 3) != 0 || !CBS_get_u8(&v28, (a2 + 66)) || !CBS_get_u8_length_prefixed(&v28, &v26[2]) || !v26[3] || !CBS_get_u16_length_prefixed(&v28, v25) || v29)
  {
    v22 = 444;
    goto LABEL_33;
  }

  if (bssl::ssl_is_valid_ech_public_name(v26[2], v26[3]))
  {
    v16 = v26[1];
    *(a2 + 16) = v26[0];
    *(a2 + 24) = v16;
    v17 = v26[3];
    *(a2 + 32) = v26[2];
    *(a2 + 40) = v17;
    v18 = v25[3];
    *(a2 + 48) = v25[2];
    *(a2 + 56) = v18;
    if (v25[1])
    {
      v19 = 0;
      while (1)
      {
        v24 = -21846;
        v23[0] = 0xAAAAAAAAAAAAAAAALL;
        v23[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16(v25, &v24) || !CBS_get_u16_length_prefixed(v25, v23))
        {
          break;
        }

        if (v24 < 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = a4;
        }

        v19 |= v20;
        if (!v25[1])
        {
          v21 = v19 ^ 1;
          goto LABEL_40;
        }
      }

      v22 = 468;
      goto LABEL_33;
    }

    v21 = 1;
LABEL_40:
    *a3 = v21 & 1;
    return 1;
  }

LABEL_34:
  *a3 = 0;
  return 1;
}

BOOL bssl::ECHServerConfig::SetupContext(uint64_t a1, void *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 56);
  v28 = *(a1 + 48);
  v29 = v6;
  if (v6)
  {
    while (1)
    {
      LOWORD(v26[0]) = -21846;
      v27 = -21846;
      if (!CBS_get_u16(&v28, v26) || !CBS_get_u16(&v28, &v27))
      {
        return 0;
      }

      if (LOWORD(v26[0]) == a3 && v27 == a4)
      {
        break;
      }

      if (!v29)
      {
        return 0;
      }
    }

    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[1] = v16;
    v26[2] = v16;
    v26[0] = v16;
    CBB_zero(v26);
    if (CBB_init(v26, *(a1 + 8) + 8) && CBB_add_bytes(v26, "tls ech", 8uLL) && CBB_add_bytes(v26, *a1, *(a1 + 8)))
    {
      if (a3 == 1)
      {
        v17 = 0;
        v18 = "get_ech_aead(aead_id) != NULL";
        while (1)
        {
          v19 = bssl::kSupportedAEADs[v17]();
          if (EVP_HPKE_KDF_id(v19) == a4)
          {
            break;
          }

          if (++v17 == 3)
          {
            goto LABEL_18;
          }
        }

        if (v19)
        {
          v21 = EVP_hpke_hkdf_sha256();
          v22 = 0;
          while (1)
          {
            v23 = bssl::kSupportedAEADs[v22]();
            if (EVP_HPKE_KDF_id(v23) == a4)
            {
              break;
            }

            if (++v22 == 3)
            {
              v23 = 0;
              break;
            }
          }

          v24 = CBB_data(v26);
          v25 = CBB_len(v26);
          v14 = EVP_HPKE_CTX_setup_recipient(a2, (a1 + 72), v21, v23, a5, a6, v24, v25) != 0;
          goto LABEL_26;
        }

        v18 = "get_ech_aead(aead_id) != NULL";
LABEL_18:
        v20 = 578;
      }

      else
      {
        v18 = "kdf_id == EVP_HPKE_HKDF_SHA256";
        v20 = 577;
      }

      __assert_rtn("SetupContext", "encrypted_client_hello.cc", v20, v18);
    }

    v14 = 0;
LABEL_26:
    CBB_cleanup(v26);
    return v14;
  }

  return 0;
}

uint64_t bssl::ssl_is_valid_ech_config_list(unsigned __int8 *a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (!CBS_get_u16_length_prefixed(&v14, &v12))
  {
    return 0;
  }

  if (!v13 || v15 != 0)
  {
    return 0;
  }

  do
  {
    *v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0xAAAAAAAA00000000;
    v3 = bssl::parse_ech_config(&v12, v7, &v6, 0);
    OPENSSL_free(v7[0]);
    if (v13)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  while ((v4 & 1) != 0);
  return v3;
}

void sub_1A9072710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  bssl::Array<unsigned char>::~Array(va);
  _Unwind_Resume(a1);
}

uint64_t SSL_set1_ech_config_list(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v3 = a3;
  v4 = a2;
  if (bssl::ssl_is_valid_ech_config_list(a2, a3))
  {
    v6 = *(a1 + 8);
    result = bssl::Array<unsigned char>::InitUninitialized(v6 + 288, v3);
    if (result)
    {
      v8 = v3 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(v6 + 288);
      do
      {
        v10 = *v4++;
        *v9++ = v10;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    ERR_put_error(16, 0, 318, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/encrypted_client_hello.cc", 916);
    return 0;
  }

  return result;
}

void SSL_ECH_KEYS_free(unsigned int *a1)
{
  if (a1)
  {
    bssl::RefCounted<ssl_ech_keys_st>::DecRefInternal(a1);
  }
}

void bssl::RefCounted<ssl_ech_keys_st>::DecRefInternal(unsigned int *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    bssl::Vector<std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>>::clear((a1 + 2));

    OPENSSL_free(a1);
  }
}

BOOL SSL_ech_accepted(uint64_t a1)
{
  if (SSL_in_early_data(a1) && (*(a1 + 180) & 1) == 0)
  {
    return *(*(*(a1 + 48) + 280) + 1560) != 0;
  }

  else
  {
    return *(*(a1 + 48) + 216) == 1;
  }
}

void *bssl::New<bssl::ECHConfig,bssl::ECHConfig>(uint64_t a1)
{
  v2 = OPENSSL_malloc(0x48uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    OPENSSL_free(0);
    *v3 = 0;
    v3[1] = 0;
    v4 = *(a1 + 8);
    *v3 = *a1;
    v3[1] = v4;
    *a1 = 0;
    *(a1 + 8) = 0;
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    *(v3 + 16) = *(a1 + 64);
    *(v3 + 2) = v6;
    *(v3 + 3) = v7;
    *(v3 + 1) = v5;
  }

  return v3;
}

void bssl::Vector<std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>>::clear(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    do
    {
      std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>::reset[abi:ne200100](v2++, 0);
      --v3;
    }

    while (v3);
    v2 = *a1;
  }

  OPENSSL_free(v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void std::unique_ptr<bssl::ECHServerConfig,bssl::internal::Deleter>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    EVP_HPKE_KEY_cleanup(v2 + 72);
    v3 = bssl::Array<unsigned char>::~Array(v2);
    OPENSSL_free(v3);
  }
}

DSA *DSA_new(void)
{
  v0 = OPENSSL_zalloc(0x110uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 64) = 1;
    CRYPTO_MUTEX_init((v0 + 5));
    CRYPTO_new_ex_data(v1 + 264, v2, v3);
  }

  return v1;
}

void DSA_free(DSA *r)
{
  if (r && CRYPTO_refcount_dec_and_test_zero(&r[1].meth))
  {
    CRYPTO_free_ex_data(&g_ex_data_class_1, r, &r[1].engine);
    BN_clear_free(*&r->pad);
    BN_clear_free(r->version);
    BN_clear_free(*&r->write_params);
    BN_clear_free(r->p);
    BN_clear_free(r->q);
    BN_MONT_CTX_free(r[1].ex_data.sk);
    BN_MONT_CTX_free(*&r[1].ex_data.dummy);
    CRYPTO_MUTEX_cleanup(&r->g);

    OPENSSL_free(r);
  }
}

int DSA_size(const DSA *a1)
{
  version = a1->version;
  if (version)
  {
    v2 = BN_num_bytes(version);
    v3 = v2;
    if (v2 >= 0x7F)
    {
      v5 = v2 + 1;
      v4 = 1;
      do
      {
        ++v4;
        v6 = v5 >= 0xFF;
        v7 = v5 == 255;
        v5 >>= 8;
      }

      while (!v7 && v6);
    }

    else
    {
      v4 = 1;
    }

    LODWORD(version) = 0;
    v8 = v3 + v4 + 2;
    if (v8 >= v3 && (v8 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v8;
      if (v8 >= 0x40)
      {
        v10 = 1;
        v11 = v9;
        do
        {
          ++v10;
          v6 = v11 >= 0xFF;
          v7 = v11 == 255;
          v11 >>= 8;
        }

        while (!v7 && v6);
      }

      else
      {
        v10 = 1;
      }

      v12 = v10 + v9 + 1;
      if (v12 >= v9)
      {
        LODWORD(version) = v12;
      }

      else
      {
        LODWORD(version) = 0;
      }
    }
  }

  return version;
}

uint64_t dtls1_on_handshake_complete(ssl_st *a1, ssl_st *a2)
{
  result = bssl::dtls1_stop_timer(a1, a2);
  if ((**&a1->server & 4) != 0)
  {

    return bssl::dtls_clear_outgoing_messages(a1, v4);
  }

  return result;
}

BOOL dtls1_set_read_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    dtls1_set_read_state();
  }

  v6 = a2;
  has_unprocessed_handshake_data = bssl::dtls_has_unprocessed_handshake_data(a1, a2);
  if (has_unprocessed_handshake_data)
  {
    ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/dtls_method.cc", 86);
    bssl::ssl_send_alert(a1, 2, 10);
  }

  else
  {
    if (bssl::ssl_protocol_version(a1, v8) < 0x304)
    {
      v10 = *(a1 + 7);
      ++*(v10 + 2);
    }

    else
    {
      v10 = *(a1 + 7);
      *(v10 + 2) = v6;
    }

    *(v10 + 40) = 0;
    *(v10 + 24) = 0u;
    *(v10 + 8) = 0u;
    v11 = *(a1 + 6);
    *v11 = 0;
    v12 = *a3;
    *a3 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v11 + 264), v12);
    v13 = *(a1 + 7);
    *(*(a1 + 6) + 200) = v6;
    *v13 &= ~1u;
  }

  return !has_unprocessed_handshake_data;
}

uint64_t dtls1_set_write_state(bssl *a1, const ssl_st *a2, bssl::SSLAEADContext **a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    dtls1_set_write_state();
  }

  v6 = a2;
  v8 = *(a1 + 6);
  ++*(*(a1 + 7) + 4);
  *(v8 + 8) = 0;
  v9 = bssl::ssl_protocol_version(a1, a2);
  v10 = *(a1 + 7);
  if (v9 >= 0x304)
  {
    *(v10 + 4) = v6;
  }

  v11 = *(a1 + 6);
  v12 = *(v11 + 272);
  *(v11 + 272) = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v10 + 56), v12);
  v13 = *(a1 + 6);
  *(*(a1 + 7) + 64) = *(v13 + 8);
  v14 = *a3;
  *a3 = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100]((v13 + 272), v14);
  *(*(a1 + 6) + 204) = v6;
  return 1;
}

uint64_t dsa_check_key(uint64_t *a1)
{
  v2 = *a1;
  if (!v2 || !a1[1] || !a1[2])
  {
    v3 = 101;
    v4 = 73;
    goto LABEL_10;
  }

  if (BN_is_negative(v2) || BN_is_negative(a1[1]) || BN_is_zero(*a1) || BN_is_zero(a1[1]) || !BN_is_odd(*a1) || !BN_is_odd(a1[1]) || (BN_cmp(a1[1], *a1) & 0x80000000) == 0 || BN_is_negative(a1[2]) || BN_is_zero(a1[2]) || (BN_cmp(a1[2], *a1) & 0x80000000) == 0)
  {
    v3 = 107;
    v4 = 90;
LABEL_10:
    ERR_put_error(10, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", v4);
    return 0;
  }

  v6 = BN_num_bits(a1[1]);
  if (v6 != 160 && v6 != 224 && v6 != 256)
  {
    v3 = 100;
    v4 = 97;
    goto LABEL_10;
  }

  if (BN_num_bits(*a1) >= 0x2711)
  {
    v3 = 102;
    v4 = 104;
    goto LABEL_10;
  }

  v7 = a1[3];
  if (v7 && (BN_is_negative(v7) || BN_is_zero(a1[3]) || (BN_cmp(a1[3], *a1) & 0x80000000) == 0))
  {
    v3 = 107;
    v4 = 112;
    goto LABEL_10;
  }

  v8 = a1[4];
  if (v8 && (BN_is_negative(v8) || BN_is_zero(a1[4]) || BN_cmp(a1[4], a1[1]) >= 0))
  {
    v3 = 107;
    v4 = 123;
    goto LABEL_10;
  }

  return 1;
}

DSA *DSA_parse_parameters(__int128 *a1)
{
  v2 = DSA_new();
  if (v2)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_asn1(a1, &v4, 536870928) || !parse_integer_0(&v4, v2) || !parse_integer_0(&v4, &v2->version) || !parse_integer_0(&v4, &v2->write_params) || *(&v4 + 1))
    {
      ERR_put_error(10, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", 228);
LABEL_10:
      DSA_free(v2);
      return 0;
    }

    if (!dsa_check_key(&v2->pad))
    {
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t DSA_marshal_parameters(uint64_t *a1, const BIGNUM **a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v6, 0x20000010u) && marshal_integer_0(v6, *a2) && marshal_integer_0(v6, a2[1]) && marshal_integer_0(v6, a2[2]) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(10, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", 248);
  return 0;
}

DSA *DSA_parse_private_key(__int128 *a1)
{
  v2 = DSA_new();
  if (v2)
  {
    memset(v6, 170, sizeof(v6));
    if (CBS_get_asn1(a1, &v6[1], 536870928) && CBS_get_asn1_uint64(&v6[1], v6))
    {
      if (v6[0])
      {
        v3 = 104;
        v4 = 269;
      }

      else
      {
        if (parse_integer_0(&v6[1], v2) && parse_integer_0(&v6[1], &v2->version) && parse_integer_0(&v6[1], &v2->write_params) && parse_integer_0(&v6[1], &v2->p) && parse_integer_0(&v6[1], &v2->q) && !v6[2])
        {
          if (dsa_check_key(&v2->pad))
          {
            return v2;
          }

          goto LABEL_8;
        }

        v3 = 105;
        v4 = 279;
      }
    }

    else
    {
      v3 = 105;
      v4 = 264;
    }

    ERR_put_error(10, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/dsa/dsa_asn1.c", v4);
LABEL_8:
    DSA_free(v2);
    return 0;
  }

  return v2;
}

xpc_object_t boringssl_metrics_create_connection_failure_event(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    boringssl_metrics_log_configuration_data(a1, v3);
    boringssl_metrics_log_connection_data(a1, v3);
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_TYPE, *(v2 + 304));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_LEVEL, *(v2 + 308));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_ALERT_CODE, *(v2 + 309));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_HANDSHAKE_STATE, *(v2 + 296));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_HANDSHAKE_TYPE, *(v2 + 300));
    xpc_dictionary_set_uint64(v3, TLS_METRIC_FAILURE_INTERNAL_ERROR, *(v2 + 288));
    v4 = TLS_METRIC_FAILURE_STACK_ERROR;
    stack_error = boringssl_session_get_stack_error(a1);
    xpc_dictionary_set_uint64(v3, v4, stack_error);
    v6 = v3;
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    boringssl_metrics_create_connection_failure_event_cold_1();
  }

  return v3;
}

BOOL boringssl_metrics_log_connection_failure(uint64_t a1)
{
  if (!a1 || *a1 != -1252936367 || !*(a1 + 8))
  {
    return 0;
  }

  if (metricsQueueToken != -1)
  {
    v5 = a1;
    boringssl_metrics_log_connection_failure_cold_1();
    a1 = v5;
  }

  if (!boringssl_context_metrics_queue)
  {
    return 0;
  }

  connection_failure_event = boringssl_metrics_create_connection_failure_event(a1);
  if (!connection_failure_event)
  {
    return 0;
  }

  v2 = connection_failure_event;
  v3 = boringssl_metrics_log_event("TLSFailureEvent", connection_failure_event, boringssl_context_metrics_queue);

  return v3;
}

uint64_t __boringssl_metrics_log_connection_failure_block_invoke()
{
  boringssl_context_metrics_queue = dispatch_queue_create("com.apple.network.boringssl.metrics_queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __boringssl_metrics_log_ech_block_invoke()
{
  boringssl_context_metrics_queue = dispatch_queue_create("com.apple.network.boringssl.metrics_queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ec_bignum_to_scalar(uint64_t a1, void *__dst, uint64_t a3)
{
  if (bn_copy_words(__dst, *(a1 + 264), a3) && bn_less_than_words(__dst, *(a1 + 256), *(a1 + 264)))
  {
    return 1;
  }

  ERR_put_error(15, 0, 133, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/scalar.c.inc", 32);
  return 0;
}

BOOL ec_scalar_is_zero(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 264);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    v3 |= v4;
    --v2;
  }

  while (v2);
  return v3 == 0;
}

uint64_t ec_simple_scalar_to_montgomery_inv_vartime(unsigned int *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[66];
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 8 * v3;
  do
  {
    v7 |= *(a3 + v6);
    v6 += 8;
  }

  while (v8 != v6);
  if (!v7)
  {
    return 0;
  }

  (*(*a1 + 136))(a1, a2);
  bn_from_montgomery_small(a2, a1[66], a2, a1[66], (a1 + 58));
  return 1;
}

uint64_t ec_bignum_to_felem(uint64_t a1, uint64_t a2, const BIGNUM *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = BN_num_bytes((a1 + 320));
  if (v6 >= 0x43)
  {
    ec_bignum_to_felem_cold_1();
  }

  v7 = v6;
  v12 = -21846;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v8;
  v11[3] = v8;
  v11[0] = v8;
  v11[1] = v8;
  if (!BN_is_negative(a3) && BN_cmp(a3, (a1 + 320)) < 0 && BN_bn2bin_padded(v11, v7, a3))
  {
    result = (*(*a1 + 112))(a1, a2, v11, v7);
  }

  else
  {
    ERR_put_error(15, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/felem.c.inc", 37);
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ec_felem_to_bignum(uint64_t a1, BIGNUM *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = -21846;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v4;
  v11 = v4;
  *s = v4;
  v9 = v4;
  *len = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 104))(a1, s, len, a3);
  result = BN_bin2bn(s, len[0], a2) != 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t x25519_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 133);
    return 0;
  }

  else
  {
    v5 = *a3;
    v6 = *(a3 + 8);

    return x25519_set_pub_raw(a1, v5, v6);
  }
}

uint64_t x25519_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v4;
  v9[2] = v4;
  v9[0] = v4;
  v8[1] = v4;
  v8[2] = v4;
  v7[2] = v4;
  v8[0] = v4;
  v7[0] = v4;
  v7[1] = v4;
  v6[1] = v4;
  v6[2] = v4;
  v6[0] = v4;
  if (CBB_add_asn1(a1, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 0x20000010u) && CBB_add_asn1(v8, v7, 6u) && CBB_add_bytes(v7, &unk_1F1CB063C, 3uLL) && CBB_add_asn1(v9, v6, 3u) && CBB_add_u8(v6, 0) && CBB_add_bytes(v6, v3, 0x20uLL) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 153);
  return 0;
}

BOOL x25519_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *v2;
  v5 = v2[1];
  v6 = *v3;
  v7 = v3[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v3[2];
  v10 = v3[3];
  return v4 == v6 && v5 == v7 && v9 == v11 && v8 == v10;
}

uint64_t x25519_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a2 + 8) && CBS_get_asn1(a3, &v6, 4) && !*(a3 + 8))
  {
    return x25519_set_priv_raw(a1, v6, v7);
  }

  ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 175);
  return 0;
}

uint64_t x25519_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(v2 + 64))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[1] = v4;
    v12[2] = v4;
    v11[2] = v4;
    v12[0] = v4;
    v11[0] = v4;
    v11[1] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v9[2] = v4;
    v10[0] = v4;
    v9[0] = v4;
    v9[1] = v4;
    v8[1] = v4;
    v8[2] = v4;
    v8[0] = v4;
    if (CBB_add_asn1(a1, v12, 0x20000010u) && CBB_add_asn1_uint64(v12, 0) && CBB_add_asn1(v12, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 6u) && CBB_add_bytes(v10, &unk_1F1CB063C, 3uLL) && CBB_add_asn1(v12, v9, 4u) && CBB_add_asn1(v9, v8, 4u) && CBB_add_bytes(v8, (v2 + 32), 0x20uLL) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 202;
  }

  else
  {
    v6 = 130;
    v7 = 185;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", v7);
  return 0;
}

uint64_t x25519_set_priv_raw(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 != 32)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 33);
    return 0;
  }

  v5 = OPENSSL_malloc(0x41uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a2[1];
  *(v5 + 2) = *a2;
  *(v5 + 3) = v7;
  X25519_public_from_private(v5, (v5 + 4));
  v8 = 1;
  *(v6 + 64) = 1;
  OPENSSL_free(*(a1 + 8));
  *(a1 + 8) = v6;
  return v8;
}

uint64_t x25519_set_pub_raw(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (a3 == 32)
  {
    result = OPENSSL_malloc(0x41uLL);
    if (result)
    {
      v6 = result;
      v7 = a2[1];
      *result = *a2;
      *(result + 16) = v7;
      *(result + 64) = 0;
      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v6;
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 53);
    return 0;
  }

  return result;
}

uint64_t x25519_get_priv_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 64))
  {
    v4 = 130;
    v5 = 74;
    goto LABEL_6;
  }

  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      v4 = 100;
      v5 = 84;
LABEL_6:
      ERR_put_error(6, 0, v4, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", v5);
      return 0;
    }

    v7 = *(v3 + 48);
    *a2 = *(v3 + 32);
    a2[1] = v7;
  }

  *a3 = 32;
  return 1;
}

uint64_t x25519_get_pub_raw(uint64_t a1, _OWORD *a2, void *a3)
{
  if (a2)
  {
    if (*a3 <= 0x1FuLL)
    {
      ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 102);
      return 0;
    }

    v4 = *(a1 + 8);
    v5 = v4[1];
    *a2 = *v4;
    a2[1] = v5;
  }

  *a3 = 32;
  return 1;
}

uint64_t x25519_get1_tls_encodedpoint(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = OPENSSL_memdup(v2, 0x20uLL);
    *a2 = v4;
    return 32 * (v4 != 0);
  }

  else
  {
    ERR_put_error(6, 0, 120, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_x25519_asn1.c", 120);
    return 0;
  }
}

uint64_t OPENSSL_sk_delete(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (*a1 <= a2)
  {
    return 0;
  }

  v4 = (a1[1] + 8 * a2);
  v5 = *v4;
  v6 = v3 - 1;
  v7 = 8 * (v3 + ~a2);
  if (v3 - 1 != a2 && v7 != 0)
  {
    memmove(v4, v4 + 1, v7);
    v6 = *a1 - 1;
  }

  *a1 = v6;
  return v5;
}

uint64_t OPENSSL_sk_pop(uint64_t *a1)
{
  if (a1 && *a1)
  {
    return OPENSSL_sk_delete(a1, *a1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t OPENSSL_lh_retrieve(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  next_ptr_and_hash = get_next_ptr_and_hash(a1, 0, a2, a3, a4);
  if (*next_ptr_and_hash)
  {
    return **next_ptr_and_hash;
  }

  else
  {
    return 0;
  }
}

void *get_next_ptr_and_hash(void *a1, unsigned int *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v9 = a4(a1[5], a3);
  if (a2)
  {
    *a2 = v9;
  }

  v10 = (a1[1] + 8 * (v9 % a1[2]));
  v11 = *v10;
  if (*v10 && a5(a1[4], *v11, a3))
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11 && a5(a1[4], *v11, a3));
    return v12 + 1;
  }

  return v10;
}

uint64_t OPENSSL_lh_retrieve_key(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int (*a4)(uint64_t, void))
{
  v4 = *(a1 + 8) + 8 * (a3 % *(a1 + 16));
  v5 = *v4;
  if (*v4)
  {
    if (a4(a2, *v5))
    {
      while (1)
      {
        v8 = v5;
        v5 = v5[1];
        if (!v5)
        {
          break;
        }

        if (!a4(a2, *v5))
        {
          v4 = (v8 + 1);
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*v4)
      {
        return **v4;
      }
    }
  }

  return 0;
}

uint64_t OPENSSL_lh_insert(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v11 = -1431655766;
  *a2 = 0;
  next_ptr_and_hash = get_next_ptr_and_hash(a1, &v11, a3, a4, a5);
  v9 = next_ptr_and_hash;
  if (*next_ptr_and_hash)
  {
    *a2 = **next_ptr_and_hash;
    **next_ptr_and_hash = a3;
  }

  else
  {
    result = OPENSSL_malloc(0x18uLL);
    if (!result)
    {
      return result;
    }

    *(result + 16) = v11;
    *result = a3;
    *(result + 8) = 0;
    *v9 = result;
    ++*a1;
    lh_maybe_resize(a1);
  }

  return 1;
}

uint64_t OPENSSL_lh_delete(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  next_ptr_and_hash = get_next_ptr_and_hash(a1, 0, a2, a3, a4);
  v6 = *next_ptr_and_hash;
  if (!*next_ptr_and_hash)
  {
    return 0;
  }

  *next_ptr_and_hash = v6[1];
  v7 = *v6;
  OPENSSL_free(v6);
  --*a1;
  lh_maybe_resize(a1);
  return v7;
}

void lh_rebucket(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    v4 = OPENSSL_zalloc(8 * a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = *(*(a1 + 8) + 8 * i);
          if (v8)
          {
            do
            {
              v9 = *(v8 + 16) % a2;
              v10 = *(v8 + 8);
              *(v8 + 8) = v4[v9];
              v4[v9] = v8;
              v8 = v10;
            }

            while (v10);
          }
        }
      }

      OPENSSL_free(*(a1 + 8));
      *(a1 + 8) = v5;
      *(a1 + 16) = a2;
    }
  }
}

uint64_t get_error_values(int a1, int a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  state = err_get_state();
  if (!state)
  {
    return 0;
  }

  v13 = state;
  v14 = *(state + 97);
  v15 = *(state + 96);
  if (v14 == v15)
  {
    return 0;
  }

  if (a2)
  {
    if (a1)
    {
      get_error_values_cold_1();
    }
  }

  else
  {
    v15 = (v14 + 1) & 0xF;
  }

  v17 = &state[3 * v15];
  v16 = *(v17 + 4);
  if (a3 && a4)
  {
    v18 = *v17;
    if (*v17)
    {
      *a3 = v18;
      LODWORD(v18) = *(v17 + 10);
    }

    else
    {
      *a3 = "NA";
    }

    *a4 = v18;
  }

  if (!a5)
  {
    goto LABEL_24;
  }

  v19 = v17[1];
  if (!v19)
  {
    *a5 = &unk_1A9098A9F;
    if (a6)
    {
      *a6 = 0;
    }

LABEL_24:
    if (!a1)
    {
      return v16;
    }

    goto LABEL_25;
  }

  *a5 = v19;
  if (a6)
  {
    *a6 = 3;
  }

  if (a1)
  {
    if (v17[1])
    {
      free(state[49]);
      v13[49] = v17[1];
    }

    v17[1] = 0;
LABEL_25:
    if (a2)
    {
      get_error_values_cold_2();
    }

    free(v17[1]);
    *v17 = 0;
    v17[1] = 0;
    v17[2] = 0;
    *(v13 + 97) = v15;
  }

  return v16;
}

unint64_t ERR_peek_last_error(void)
{
  result = err_get_state();
  if (result)
  {
    v1 = *(result + 384);
    if (*(result + 388) == v1)
    {
      return 0;
    }

    else
    {
      return *(result + 24 * v1 + 16);
    }
  }

  return result;
}

const char *__cdecl ERR_reason_error_string(unint64_t e)
{
  result = err_reason_error_string(e, 0);
  if (!result)
  {
    return "unknown error";
  }

  return result;
}

char *err_reason_error_string(unsigned int a1, int a2)
{
  v5 = HIBYTE(a1);
  v6 = a1 & 0xFFF;
  if (v5 != 2)
  {
    if (v6 > 0x21)
    {
      if (v6 > 0x63)
      {
        v7 = 0;
        if (!(a1 >> 30) && v6 <= 0x7FF)
        {
          v15 = v2;
          v16 = v3;
          v14 = (v6 << 15) | (v5 << 26);
          v13 = bsearch(&v14, &kOpenSSLReasonValues, 0x2F4uLL, 4uLL, err_string_cmp);
          if (v13)
          {
            return &kOpenSSLReasonStringData[*v13 & 0x7FFF];
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        if (v6 <= 66)
        {
          v7 = "MALLOC_FAILURE";
          if (a2)
          {
            v10 = "SHOULD_NOT_HAVE_BEEN_CALLED";
          }

          else
          {
            v7 = "malloc failure";
            v10 = "function should not have been called";
          }

          if (v6 != 66)
          {
            v10 = 0;
          }

          v12 = v6 == 65;
        }

        else
        {
          v7 = "PASSED_NULL_PARAMETER";
          if (!a2)
          {
            v7 = "passed a null parameter";
          }

          v10 = "INTERNAL_ERROR";
          if (!a2)
          {
            v10 = "internal error";
          }

          v11 = "OVERFLOW";
          if (!a2)
          {
            v11 = "overflow";
          }

          if (v6 != 69)
          {
            v11 = 0;
          }

          if (v6 != 68)
          {
            v10 = v11;
          }

          v12 = v6 == 67;
        }

        if (!v12)
        {
          return v10;
        }
      }
    }

    else
    {
      v9 = &(&kLibraryNames)[3 * v6];
      if (a2)
      {
        v9 += 2;
      }

      return *v9;
    }

    return v7;
  }

  v7 = 0;
  if (a2 || v6 > 0x7E)
  {
    return v7;
  }

  return strerror(v6);
}

void ERR_error_string_n(unint64_t e, char *buf, size_t len)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!len)
  {
    goto LABEL_19;
  }

  v5 = e;
  v6 = BYTE3(e);
  if (e >> 25 <= 0x10)
  {
    v7 = (&kLibraryNames)[3 * v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = err_reason_error_string(e, 0);
  v9 = v8;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v10;
  v20 = v10;
  *v17 = v10;
  v18 = v10;
  if (!v7)
  {
    v7 = __str;
    snprintf(__str, 0x20uLL, "lib(%u)", v6);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_17:
    v9 = v17;
    snprintf(v17, 0x20uLL, "reason(%u)", v5 & 0xFFF);
    goto LABEL_8;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_8:
  v11 = snprintf(buf, len, "error:%08x:%s:OPENSSL_internal:%s", v5, v7, v9);
  if (len >= 5 && (v11 & 0x80000000) == 0 && v11 >= len)
  {
    v12 = &buf[len - 5];
    v13 = 4;
    v14 = buf;
    while (1)
    {
      v15 = strchr(v14, 58);
      if (!v15 || v15 > v12)
      {
        break;
      }

      v14 = v15 + 1;
      ++v12;
      if (!--v13)
      {
        goto LABEL_19;
      }
    }

    memset(v12, 58, v13);
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
}

void ERR_print_errors_cb(int (__cdecl *cb)(const char *, size_t, void *), void *u)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buf[5] = v4;
  buf[6] = v4;
  buf[3] = v4;
  buf[4] = v4;
  buf[1] = v4;
  buf[2] = v4;
  buf[0] = v4;
  memset(__b, 170, sizeof(__b));
  memset(v10, 170, sizeof(v10));
  state = err_get_state();
  do
  {
    error_values = get_error_values(1, 0, &v10[2], v10 + 1, &v10[1], v10);
    if (!error_values)
    {
      break;
    }

    ERR_error_string_n(error_values, buf, 0x78uLL);
    v7 = (v10[0] & 1) != 0 ? v10[1] : &unk_1A9098A9F;
    snprintf(__b, 0x400uLL, "%lu:%s:%s:%d:%s\n", state, buf, v10[2], HIDWORD(v10[0]), v7);
    v8 = strlen(__b);
  }

  while ((cb)(__b, v8, u) > 0);
  v9 = *MEMORY[0x1E69E9840];
}

BOOL print_errors_to_file(const char *a1, uint64_t a2, FILE *a3)
{
  if (a1[a2])
  {
    print_errors_to_file_cold_1();
  }

  return fputs(a1, a3) >= 0;
}

void ERR_add_error_data(int num, ...)
{
  va_start(va, num);
  va_copy(v10, va);
  va_copy(v11, va);
  v2 = num;
  v3 = 0;
  if (!num)
  {
    goto LABEL_8;
  }

  v4 = num;
  do
  {
    v5 = va_arg(v10, const char *);
    if (v5)
    {
      v6 = strlen(v5);
      if (__CFADD__(v3, v6))
      {
        return;
      }

      v3 += v6;
    }

    --v4;
  }

  while (v4);
  if (v3 != -1)
  {
LABEL_8:
    v7 = malloc_type_malloc(v3 + 1, 0xAA451E0uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = 0;
      if (num)
      {
        do
        {
          v9 = v11;
          v11 += 8;
          if (*v9)
          {
            if (OPENSSL_strlcat(v8, *v9, v3 + 1) > v3)
            {
              ERR_add_error_data_cold_1();
            }
          }

          --v2;
        }

        while (v2);
      }

      err_set_error_data(v8);
    }
  }
}

void ERR_add_error_dataf(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  if (OPENSSL_vasprintf_internal(&v9, a1, &a9, 1) != -1)
  {
    err_set_error_data(v9);
  }
}

void err_set_error_data(void *a1)
{
  state = err_get_state();
  if (state && (v3 = *(state + 96), v3 != *(state + 97)))
  {
    v4 = &state[3 * v3];
    free(v4[1]);
    v4[1] = a1;
  }

  else
  {

    free(a1);
  }
}

void *strdup_libc_malloc(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0xB2A0D864uLL);
  if (result)
  {

    return memcpy(result, a1, v2 + 1);
  }

  return result;
}

void ERR_SAVE_STATE_free(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = *a1 + v2;
        free(*(v4 + 8));
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        ++v3;
        v2 += 24;
      }

      while (v3 < *(a1 + 8));
    }

    free(*a1);

    free(a1);
  }
}

void *ERR_save_state()
{
  state = err_get_state();
  if (!state)
  {
    return 0;
  }

  v1 = state;
  if (*(state + 96) == *(state + 97))
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (!v2)
  {
    return v2;
  }

  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  if (v4 >= v5)
  {
    v6 = *(v1 + 96);
  }

  else
  {
    v6 = v4 + 16;
  }

  v7 = v6 - v5;
  if (v7 >= 0x10)
  {
    ERR_save_state_cold_1();
  }

  v8 = malloc_type_malloc(24 * v7, 0x10500400B811B97uLL);
  *v2 = v8;
  if (!v8)
  {
    free(v2);
    return 0;
  }

  if (v6 == v5)
  {
    v2[1] = v7;
  }

  else
  {
    bzero(v8, 24 * v7);
    v9 = 0;
    v2[1] = v7;
    if (v7 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6 - v5;
    }

    v11 = 24 * v10;
    v12 = 1;
    do
    {
      err_copy(*v2 + v9, &v1[3 * ((v12 + *(v1 + 97)) & 0xF)]);
      v9 += 24;
      ++v12;
    }

    while (v11 != v9);
  }

  return v2;
}

const char *err_copy(uint64_t a1, uint64_t a2)
{
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *(a2 + 8);
  *a1 = *a2;
  if (result)
  {
    result = strdup_libc_malloc(result);
    *(a1 + 8) = result;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

void ERR_restore_state(void *a1)
{
  if (a1 && (v2 = a1[1]) != 0)
  {
    if (v2 >= 0x10)
    {
      abort();
    }

    state = err_get_state();
    if (state)
    {
      v4 = state;
      if (a1[1])
      {
        v5 = 0;
        v6 = 0;
        do
        {
          err_copy(&v4[v5], *a1 + v5 * 8);
          ++v6;
          v7 = a1[1];
          v5 += 3;
        }

        while (v6 < v7);
        v8 = v7 - 1;
      }

      else
      {
        v8 = -1;
      }

      *(v4 + 96) = v8;
      *(v4 + 97) = 15;
    }
  }

  else
  {

    ERR_clear_error();
  }
}

uint64_t err_string_cmp(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 >> 15;
  v3 = v2 >= *a2 >> 15;
  v4 = v2 > *a2 >> 15;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

boringssl_concrete_boringssl_context_state *boringssl_context_state_create(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(boringssl_concrete_boringssl_context_state);
  v3 = v2;
  if (v2)
  {
    v2->cached_content_type = 2;
    v2->ssl_ctx = a1;
    SSL_CTX_up_ref(a1);
    v4 = v3;
  }

  else
  {
    v5 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_state_create_cold_1(v5);
    }
  }

  return v3;
}

uint64_t boringssl_context_state_get_ssl_ctx(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL boringssl_context_state_is_context_state(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 2;
  }

  return result;
}

void BN_BLINDING_free(BN_BLINDING *b)
{
  if (b)
  {
    BN_free(*b);
    BN_free(*(b + 1));

    OPENSSL_free(b);
  }
}

int BIO_printf(BIO *bio, const char *format, ...)
{
  va_start(va, format);
  v28 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v22 = v4;
  v23 = v4;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  v14 = v4;
  v15 = v4;
  *__str = v4;
  v13 = v4;
  v5 = vsnprintf(__str, 0x100uLL, format, va);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (v5 <= 0xFF)
  {
    v7 = BIO_write(bio, __str, v5);
    goto LABEL_8;
  }

  v8 = OPENSSL_malloc(v5 + 1);
  if (!v8)
  {
LABEL_7:
    v7 = -1;
    goto LABEL_8;
  }

  v9 = v8;
  if (vsnprintf(v8, (v6 + 1), format, va) != v6)
  {
    BIO_printf_cold_1();
  }

  v7 = BIO_write(bio, v9, v6);
  OPENSSL_free(v9);
LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t CBS_asn1_ber_to_der(uint64_t a1, void *a2, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v6;
  v11[2] = v6;
  v11[0] = v6;
  v10 = -1431655766;
  result = cbs_find_ber(a1, &v10, 0);
  if (result)
  {
    if (v10)
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      if (!CBB_init(v11, *(a1 + 8)) || !cbs_convert_ber(a1, v11, 0, 0, 0) || !CBB_finish(v11, a3, &v9))
      {
        CBB_cleanup(v11);
        return 0;
      }

      v8 = v9;
      *a2 = *a3;
      a2[1] = v8;
    }

    else
    {
      result = CBS_get_any_asn1_element(a1, a2, 0, 0);
      if (!result)
      {
        return result;
      }

      *a3 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t cbs_find_ber(__int128 *a1, char *a2, unsigned int a3)
{
  if (a3 <= 0x80)
  {
    v11 = *a1;
    *a2 = 0;
    v3 = 1;
    if (!*(&v11 + 1))
    {
      return v3;
    }

    while (1)
    {
      memset(v10, 170, sizeof(v10));
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v8 = -1431655766;
      if (!CBS_get_any_ber_asn1_element(&v11, &v10[1], v10, &v9, a2, &v8))
      {
        break;
      }

      if (*a2)
      {
        return 1;
      }

      if ((v10[0] & 0x20000000) != 0)
      {
        if ((v10[0] & 0xDFFFFFFF) <= 0x1E && ((1 << SLOBYTE(v10[0])) & 0x5E7C1010) != 0)
        {
          v3 = 1;
          *a2 = 1;
          return v3;
        }

        if (!CBS_skip(&v10[1], v9) || !cbs_find_ber(&v10[1], a2, a3 + 1))
        {
          return 0;
        }

        if (*a2)
        {
          return 1;
        }
      }

      if (!*(&v11 + 1))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t cbs_convert_ber(__int128 *a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5)
{
  if ((a3 & 0x20000000) != 0)
  {
    cbs_convert_ber_cold_1();
  }

  if (a5 > 0x80)
  {
    return 0;
  }

  while (1)
  {
    v11 = *(a1 + 1);
    if (!v11)
    {
      return a4 == 0;
    }

    if (a4 && v11 != 1 && !**a1 && !*(*a1 + 1) && CBS_skip(a1, 2uLL))
    {
      return 1;
    }

    memset(v25, 170, sizeof(v25));
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v23 = -1431655766;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[1] = v12;
    v22[2] = v12;
    v22[0] = v12;
    if (!CBS_get_any_ber_asn1_element(a1, &v25[1], v25, &v24, 0, &v23))
    {
      return 0;
    }

    v13 = v25[0];
    if (a3)
    {
      v14 = a3;
      v15 = a2;
      if ((v25[0] & 0xDFFFFFFF) != a3)
      {
        return 0;
      }
    }

    else
    {
      if (v25[0] & 0x20000000) != 0 && (v16 = (v25[0] & 0xDFFFFFFF) - 4, v16 <= 0x1A) && ((0x5E7C101u >> (LOBYTE(v25[0]) - 4)))
      {
        v14 = dword_1A90AFB60[v16];
        v13 = dword_1A90AFB60[v16];
      }

      else
      {
        v14 = 0;
      }

      v15 = v22;
      if (!CBB_add_asn1(a2, v22, v13))
      {
        return 0;
      }
    }

    if (v23)
    {
      v17 = a5 + 1;
      v18 = a1;
      v19 = v15;
      v20 = v14;
      v21 = 1;
      goto LABEL_27;
    }

    if (!CBS_skip(&v25[1], v24))
    {
      return 0;
    }

    if ((v25[0] & 0x20000000) != 0)
    {
      v18 = &v25[1];
      v17 = a5 + 1;
      v19 = v15;
      v20 = v14;
      v21 = 0;
LABEL_27:
      if (!cbs_convert_ber(v18, v19, v20, v21, v17))
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (!CBB_add_bytes(v15, *&v25[1], *&v25[3]))
    {
      return 0;
    }

LABEL_28:
    result = CBB_flush(a2);
    if (!result)
    {
      return result;
    }
  }
}

uint64_t CBS_get_asn1_implicit_string(uint64_t a1, unint64_t *a2, unint64_t *a3, int a4, unsigned int a5)
{
  if ((a4 & 0x20000000) != 0)
  {
    CBS_get_asn1_implicit_string_cold_1();
  }

  if ((a5 & 0x20000000) != 0)
  {
    CBS_get_asn1_implicit_string_cold_2();
  }

  if (a5 > 0x1E || ((1 << a5) & 0x5E7C1010) == 0)
  {
    CBS_get_asn1_implicit_string_cold_3();
  }

  if (CBS_peek_asn1_tag(a1, a4))
  {
    *a3 = 0;

    return CBS_get_asn1(a1, a2, a4);
  }

  else
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19[1] = v11;
    v19[2] = v11;
    v19[0] = v11;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (CBB_init(v19, *(a1 + 8)) && CBS_get_asn1(a1, &v18, a4 | 0x20000000u))
    {
      if (*(&v18 + 1))
      {
        while (1)
        {
          v16 = 0xAAAAAAAAAAAAAAAALL;
          v17 = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_asn1(&v18, &v16, a5) || !CBB_add_bytes(v19, v16, v17))
          {
            break;
          }

          if (!*(&v18 + 1))
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v14 = 0xAAAAAAAAAAAAAAAALL;
        v15 = 0xAAAAAAAAAAAAAAAALL;
        if (CBB_finish(v19, &v15, &v14))
        {
          v13 = v14;
          v12 = v15;
          *a2 = v15;
          a2[1] = v13;
          *a3 = v12;
          return 1;
        }
      }
    }

    CBB_cleanup(v19);
    return 0;
  }
}

uint64_t CBB_init_fixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) &= 0xFCu;
  return 1;
}

void *CBB_data(uint64_t a1)
{
  if (*a1)
  {
    CBB_data_cold_1();
  }

  v1 = *(a1 + 16);
  if (*(a1 + 8))
  {
    return (*v1 + *(a1 + 24) + *(a1 + 32));
  }

  return v1;
}

BOOL add_base128_integer(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    do
    {
      ++v4;
      v6 = v5 > 0x7F;
      v5 >>= 7;
    }

    while (v6);
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 - 1;
  v9 = 7 * v7 - 7;
  do
  {
    v10 = v8;
    if (v8 >= v7)
    {
      break;
    }

    v11 = cbb_add_u(a1, (a2 >> v9) & 0x7F | ((v8 != 0) << 7), 1uLL);
    v8 = v10 - 1;
    v9 -= 7;
  }

  while (v11);
  return v10 >= v7;
}

uint64_t CBB_reserve(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = (a1 + 16);
    if (*(a1 + 8))
    {
      v7 = *v7;
    }

    return cbb_buffer_reserve(v7, a2, a3) != 0;
  }

  return result;
}

uint64_t *CBB_discard_child(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result + 2;
    if (*(result + 8))
    {
      v2 = *v2;
    }

    if (!*(v1 + 8))
    {
      CBB_discard_child_cold_1();
    }

    v2[1] = *(v1 + 24);
    *(v1 + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t CBS_skip(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *a1 += a2;
  a1[1] = v4;
  return 1;
}

uint64_t CBS_stow(uint64_t a1, uint64_t *a2, void *a3)
{
  OPENSSL_free(*a2);
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    result = OPENSSL_memdup(*a1, v6);
    *a2 = result;
    if (!result)
    {
      return result;
    }

    *a3 = *(a1 + 8);
  }

  return 1;
}

BOOL CBS_strdup(uint64_t a1, void **a2)
{
  if (*a2)
  {
    OPENSSL_free(*a2);
  }

  v4 = OPENSSL_strndup(*a1, *(a1 + 8));
  *a2 = v4;
  return v4 != 0;
}

uint64_t CBS_copy_bytes(uint64_t a1, void *__dst, size_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += a3;
  *(a1 + 8) = v4;
  if (a3)
  {
    memcpy(__dst, v6, a3);
  }

  return 1;
}

uint64_t CBS_get_any_ber_asn1_element(__int128 *a1, void *a2, _DWORD *a3, unint64_t *a4, char *a5, _DWORD *a6)
{
  if (!a5)
  {
    a5 = &v7;
  }

  return cbs_get_any_asn1_element(a1, a2, a3, a4, a5, a6, 1);
}

uint64_t aes_nohw_set_encrypt_key(_OWORD *a1, int a2, uint64_t a3)
{
  v120 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 256:
      *(a3 + 240) = 14;
      *v119 = *a1;
      v74 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v75 = v119[0] ^ (16 * v74);
      v76 = v75 ^ v74;
      v77 = (v75 ^ (v76 >> 8)) & 0xFF000000FF00;
      v78 = v76 ^ (v77 << 8);
      v79 = v78 ^ v77;
      v80 = ((v79 >> 16) ^ v78) & 0xFFFF0000;
      v81 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v82 = v119[1] ^ (16 * v81);
      v83 = v82 ^ v81;
      v84 = (v82 ^ (v83 >> 8)) & 0xFF000000FF00;
      v85 = v83 ^ (v84 << 8);
      v86 = v85 ^ v84;
      v87 = ((v86 >> 16) ^ v85) & 0xFFFF0000;
      v119[0] = v80 ^ v79 | ((v87 ^ v86) << 32);
      v119[1] = (v86 & 0xFFFFFFFF00000000 ^ (v87 << 16)) & 0xFFFFFFFF00000000 | ((v79 ^ (v80 << 16)) >> 32);
      *a3 = *v119;
      v118 = a1[1];
      v88 = (v118 ^ (v118 >> 4)) & 0xF000F000F000F0;
      v89 = v118 ^ (16 * v88);
      v90 = v89 ^ v88;
      v91 = (v89 ^ (v90 >> 8)) & 0xFF000000FF00;
      v92 = v90 ^ (v91 << 8);
      v93 = v92 ^ v91;
      v94 = ((v93 >> 16) ^ v92) & 0xFFFF0000;
      v95 = (*(&v118 + 1) ^ (*(&v118 + 1) >> 4)) & 0xF000F000F000F0;
      v96 = *(&v118 + 1) ^ (16 * v95);
      v97 = v96 ^ v95;
      v98 = (v96 ^ (v97 >> 8)) & 0xFF000000FF00;
      v99 = v97 ^ (v98 << 8);
      v100 = v99 ^ v98;
      v101 = ((v100 >> 16) ^ v99) & 0xFFFF0000;
      *&v118 = v94 ^ v93 | ((v101 ^ v100) << 32);
      *(&v118 + 1) = (v100 & 0xFFFFFFFF00000000 ^ (v101 << 16)) & 0xFFFFFFFF00000000 | ((v93 ^ (v94 << 16)) >> 32);
      *(a3 + 16) = v118;
      for (i = 2; ; i += 2)
      {
        v116 = 0xAAAAAAAAAAAAAAAALL;
        v117 = 0xAAAAAAAAAAAAAAAALL;
        v103 = &v116;
        aes_nohw_sub_block(&v116, &v118);
        v104 = 0;
        v105 = *(&aes_nohw_rcon + (i >> 1) - 1);
        v106 = v119;
        v107 = 1;
        do
        {
          v108 = v107;
          v109 = *v106 ^ (v105 >> v104) & 0xF ^ ((*v103 >> 36) & 0xF000 | (*v103 >> 52));
          *v106 = (v109 << 16) ^ (v109 << 32) ^ (v109 << 48) ^ v109;
          v104 = 4;
          v103 = &v117;
          v106 = &v119[1];
          v107 = 0;
        }

        while ((v108 & 1) != 0);
        *(a3 + 16 * i) = *v119;
        if (i == 14)
        {
          break;
        }

        v110 = &v116;
        aes_nohw_sub_block(&v116, v119);
        v111 = &v118;
        v112 = 1;
        do
        {
          v113 = v112;
          v114 = *(v110 + 3) ^ *v111;
          *v111 = (v114 << 16) ^ (v114 << 32) ^ (v114 << 48) ^ v114;
          v110 = &v117;
          v111 = &v118 + 1;
          v112 = 0;
        }

        while ((v113 & 1) != 0);
        *(a3 + 16 * i + 16) = v118;
      }

      break;
    case 192:
      v26 = 0;
      *(a3 + 240) = 12;
      *v119 = *a1;
      v27 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v28 = v119[0] ^ (16 * v27);
      v29 = v28 ^ v27;
      v30 = (v28 ^ (v29 >> 8)) & 0xFF000000FF00;
      v31 = v29 ^ (v30 << 8);
      v32 = v31 ^ v30;
      v33 = ((v32 >> 16) ^ v31) & 0xFFFF0000;
      v34 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v35 = v119[1] ^ (16 * v34);
      v36 = v35 ^ v34;
      v37 = (v35 ^ (v36 >> 8)) & 0xFF000000FF00;
      v38 = v36 ^ (v37 << 8);
      v39 = v38 ^ v37;
      v40 = ((v39 >> 16) ^ v38) & 0xFFFF0000;
      v119[0] = v33 ^ v32 | ((v40 ^ v39) << 32);
      v119[1] = (v39 & 0xFFFFFFFF00000000 ^ (v40 << 16)) & 0xFFFFFFFF00000000 | ((v32 ^ (v33 << 16)) >> 32);
      *a3 = *v119;
      v41 = *(a1 + 2);
      v42 = (v41 ^ (v41 >> 4)) & 0xF000F000F000F0;
      v43 = v41 ^ (16 * v42);
      v44 = v43 ^ v42;
      v45 = (v43 ^ (v44 >> 8)) & 0xFF000000FF00;
      v46 = v44 ^ (v45 << 8);
      v47 = v46 ^ v45;
      v48 = ((v47 >> 16) ^ v46) & 0xFFFF0000;
      *&v118 = v48 ^ v47;
      *(&v118 + 1) = (v47 ^ (v48 << 16)) >> 32;
      v49 = &v118;
      v50 = v119;
      do
      {
        v51 = v50;
        v116 = 0xAAAAAAAAAAAAAAAALL;
        v117 = 0xAAAAAAAAAAAAAAAALL;
        v52 = &v116;
        aes_nohw_sub_block(&v116, v49);
        v53 = 0;
        v54 = *(&aes_nohw_rcon + 2 * v26);
        v55 = 1;
        do
        {
          v56 = v49[v53];
          v57 = v51[v53];
          v58 = v55;
          v59 = v56 | ((v57 ^ (v54 >> (4 * v53)) & 0xF) << 32);
          v49[v53] = v59;
          v60 = v59 ^ (((*v52 >> 4) & 0xFFF0000 | (((*v52 >> 16) & 0xF) << 28)) << 16);
          v61 = v60 ^ (HIDWORD(v60) << 48);
          v49[v53] = v61;
          *(&v62 + 1) = v56;
          *&v62 = v57;
          v51[v53] = (((v62 >> 32) ^ HIWORD(v61)) << 16) ^ (((v62 >> 32) ^ HIWORD(v61)) << 32) ^ (((v62 >> 32) ^ HIWORD(v61)) << 48) ^ (v62 >> 32) ^ HIWORD(v61);
          v52 = &v117;
          v53 = 1;
          v55 = 0;
        }

        while ((v58 & 1) != 0);
        v63 = (a3 + 48 * v26);
        v63[1] = *v49;
        v63[2] = *v51;
        v64 = &v116;
        aes_nohw_sub_block(&v116, v51);
        v65 = 0;
        v66 = *(&aes_nohw_rcon + 2 * v26 + 1);
        v67 = 1;
        do
        {
          v68 = v67;
          *(&v69 + 1) = v51[v65];
          *&v69 = v49[v65];
          v70 = (v69 >> 32) ^ (v66 >> (4 * v65)) & 0xF;
          v49[v65] = v70;
          v71 = ((*v64 >> 36) & 0xF000 | (*v64 >> 52)) ^ v70;
          v72 = (v71 << 16) ^ (v71 << 32) ^ (v71 << 48) ^ v71;
          v49[v65] = v72;
          v51[v65] = ((HIWORD(v72) ^ WORD6(v69)) << 16) ^ HIWORD(v72) ^ HIDWORD(*(&v69 + 1));
          v64 = &v117;
          v65 = 1;
          v67 = 0;
        }

        while ((v68 & 1) != 0);
        v63[3] = *v49;
        ++v26;
        v50 = v49;
        v49 = v51;
      }

      while (v26 != 4);
      break;
    case 128:
      *(a3 + 240) = 10;
      *v119 = *a1;
      v4 = (v119[0] ^ (v119[0] >> 4)) & 0xF000F000F000F0;
      v5 = v119[0] ^ (16 * v4);
      v6 = v5 ^ v4;
      v7 = (v5 ^ (v6 >> 8)) & 0xFF000000FF00;
      v8 = v6 ^ (v7 << 8);
      v9 = v8 ^ v7;
      v10 = ((v9 >> 16) ^ v8) & 0xFFFF0000;
      v11 = (v119[1] ^ (v119[1] >> 4)) & 0xF000F000F000F0;
      v12 = v119[1] ^ (16 * v11);
      v13 = v12 ^ v11;
      v14 = (v12 ^ (v13 >> 8)) & 0xFF000000FF00;
      v15 = v13 ^ (v14 << 8);
      v16 = v15 ^ v14;
      v17 = ((v16 >> 16) ^ v15) & 0xFFFF0000;
      v119[0] = v10 ^ v9 | ((v17 ^ v16) << 32);
      v119[1] = (v16 & 0xFFFFFFFF00000000 ^ (v17 << 16)) & 0xFFFFFFFF00000000 | ((v9 ^ (v10 << 16)) >> 32);
      *a3 = *v119;
      v18 = 1u;
      do
      {
        *&v118 = 0xAAAAAAAAAAAAAAAALL;
        *(&v118 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v19 = &v118;
        v20 = v119;
        aes_nohw_sub_block(&v118, v119);
        v21 = 0;
        v22 = *(&aes_nohw_rcon + v18 - 1);
        v23 = 1;
        do
        {
          v24 = v23;
          v25 = *v20 ^ (v22 >> v21) & 0xF ^ ((*v19 >> 36) & 0xF000 | (*v19 >> 52));
          *v20 = (v25 << 16) ^ (v25 << 32) ^ (v25 << 48) ^ v25;
          v21 = 4;
          v19 = (&v118 + 8);
          v20 = &v119[1];
          v23 = 0;
        }

        while ((v24 & 1) != 0);
        *(a3 + 16 * v18++) = *v119;
      }

      while (v18 != 11);
      break;
    default:
      result = 1;
      goto LABEL_24;
  }

  result = 0;
LABEL_24:
  v115 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *aes_nohw_encrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(__b, 170, sizeof(__b));
  aes_nohw_expand_round_keys(__b, a3);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[2] = v6;
  v8[3] = v6;
  v8[0] = v6;
  v8[1] = v6;
  aes_nohw_to_batch(v8, a1, 1uLL);
  aes_nohw_encrypt_batch(__b, *(a3 + 240), v8);
  return aes_nohw_from_batch(a2, 1uLL, v8);
}

uint64_t *aes_nohw_expand_round_keys(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 32);
  do
  {
    v6 = (a2 + 16 * v4);
    v7 = v5;
    v8 = 4;
    do
    {
      v9 = v6[1];
      *(v7 - 4) = *v6;
      *v7++ = v9;
      --v8;
    }

    while (v8);
    result = aes_nohw_transpose((a1 + (v4 << 6)));
    v5 += 8;
  }

  while (v4++ < *(a2 + 240));
  return result;
}

uint64_t *aes_nohw_to_batch(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 > 4)
  {
    aes_nohw_to_batch_cold_1();
  }

  if (a3)
  {
    v3 = (a2 + 8);
    v4 = (a1 + 32);
    do
    {
      v5 = *(v3 - 1);
      v6 = (v5 ^ (v5 >> 4)) & 0xF000F000F000F0;
      v7 = v5 ^ (16 * v6);
      v8 = v7 ^ v6;
      v9 = (v7 ^ (v8 >> 8)) & 0xFF000000FF00;
      v10 = v8 ^ (v9 << 8);
      v11 = v10 ^ v9;
      v12 = ((v11 >> 16) ^ v10) & 0xFFFF0000;
      v13 = (*v3 ^ (*v3 >> 4)) & 0xF000F000F000F0;
      v14 = *v3 ^ (16 * v13);
      v15 = v14 ^ v13;
      v16 = (v14 ^ (v15 >> 8)) & 0xFF000000FF00;
      v17 = v15 ^ (v16 << 8);
      v18 = v17 ^ v16;
      v19 = ((v18 >> 16) ^ v17) & 0xFFFF0000;
      *(v4 - 4) = v12 ^ v11 | ((v19 ^ v18) << 32);
      *v4++ = (v18 & 0xFFFFFFFF00000000 ^ (v19 << 16)) & 0xFFFFFFFF00000000 | ((v11 ^ (v12 << 16)) >> 32);
      v3 += 2;
      --a3;
    }

    while (a3);
  }

  return aes_nohw_transpose(a1);
}

uint64_t *aes_nohw_encrypt_batch(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  for (i = 0; i != 8; ++i)
  {
    a3[i] ^= *(a1 + i * 8);
  }

  if (a2 >= 2)
  {
    v7 = a1 + 64;
    for (j = 1; j != a2; ++j)
    {
      aes_nohw_sub_bytes(a3);
      v9 = 0;
      v10.i64[0] = 0xF000F000F000FLL;
      v10.i64[1] = 0xF000F000F000FLL;
      v11.i64[0] = 0xF000F000F000F0;
      v11.i64[1] = 0xF000F000F000F0;
      v12.i64[0] = 0xF000F000F000F00;
      v12.i64[1] = 0xF000F000F000F00;
      v13.i64[0] = 0xF000F000F000F000;
      v13.i64[1] = 0xF000F000F000F000;
      do
      {
        v14 = *&a3[v9];
        v15 = vandq_s8(v14, v10);
        v16 = vandq_s8(v14, v11);
        v17 = vandq_s8(v14, v12);
        v18 = vandq_s8(v14, v13);
        *&a3[v9] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v17, 0x20uLL), v17, 0x20uLL), v15), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v18, 0x10uLL), v18, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v16, 0x30uLL), v16, 0x10uLL)));
        v9 += 2;
      }

      while (v9 != 8);
      aes_nohw_mix_columns(a3);
      for (k = 0; k != 8; ++k)
      {
        a3[k] ^= *(v7 + k * 8);
      }

      v7 += 64;
    }
  }

  result = aes_nohw_sub_bytes(a3);
  v21 = 0;
  v22.i64[0] = 0xF000F000F000FLL;
  v22.i64[1] = 0xF000F000F000FLL;
  v23.i64[0] = 0xF000F000F000F0;
  v23.i64[1] = 0xF000F000F000F0;
  v24.i64[0] = 0xF000F000F000F00;
  v24.i64[1] = 0xF000F000F000F00;
  v25.i64[0] = 0xF000F000F000F000;
  v25.i64[1] = 0xF000F000F000F000;
  do
  {
    v26 = *&a3[v21];
    v27 = vandq_s8(v26, v22);
    v28 = vandq_s8(v26, v23);
    v29 = vandq_s8(v26, v24);
    v30 = vandq_s8(v26, v25);
    *&a3[v21] = vorrq_s8(vorrq_s8(vsraq_n_u64(vshlq_n_s64(v29, 0x20uLL), v29, 0x20uLL), v27), vorrq_s8(vsraq_n_u64(vshlq_n_s64(v30, 0x10uLL), v30, 0x30uLL), vsraq_n_u64(vshlq_n_s64(v28, 0x30uLL), v28, 0x10uLL)));
    v21 += 2;
  }

  while (v21 != 8);
  for (m = 0; m != 8; ++m)
  {
    a3[m] ^= *(a1 + (a2 << 6) + m * 8);
  }

  return result;
}

uint64_t *aes_nohw_from_batch(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v21[0] = *a3;
  v21[1] = v5;
  v6 = a3[3];
  v22[0] = a3[2];
  v22[1] = v6;
  result = aes_nohw_transpose(v21);
  if (a2 > 4)
  {
    aes_nohw_from_batch_cold_1();
  }

  if (a2)
  {
    v8 = (a1 + 8);
    v9 = v22;
    do
    {
      v10 = *(v9 - 4);
      v11 = *v9++;
      v12 = (v10 ^ (v11 << 16)) & 0xFFFF0000;
      v13 = (v10 | (v11 << 32)) ^ (v12 << 16);
      v14 = v13 ^ v12;
      v15 = (v13 ^ (v14 >> 8)) & 0xFF000000FF00;
      v16 = v11 & 0xFFFFFFFF00000000 | HIDWORD(v10);
      v17 = ((v11 >> 16) ^ HIDWORD(v10)) & 0xFFFF0000;
      v18 = v16 ^ (v17 << 16);
      v19 = v18 ^ v17;
      v20 = (v18 ^ (v19 >> 8)) & 0xFF000000FF00;
      *(v8 - 1) = v14 ^ (v15 << 8) ^ v15 ^ (16 * ((v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0)) ^ (v14 ^ (v15 << 8) ^ ((v14 ^ (v15 << 8) ^ v15) >> 4)) & 0xF000F000F000F0;
      *v8 = v19 ^ (v20 << 8) ^ v20 ^ (16 * ((v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0)) ^ (v19 ^ (v20 << 8) ^ ((v19 ^ (v20 << 8) ^ v20) >> 4)) & 0xF000F000F000F0;
      v8 += 2;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t *aes_nohw_sub_block(void *a1, uint64_t *a2)
{
  v8 = 0u;
  v10 = 0;
  v9 = 0u;
  v7 = 0u;
  v3 = a2[1];
  v6 = *a2;
  *(&v8 + 1) = v3;
  aes_nohw_transpose(&v6);
  aes_nohw_sub_bytes(&v6);
  result = aes_nohw_transpose(&v6);
  v5 = *(&v8 + 1);
  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t *aes_nohw_transpose(uint64_t *result)
{
  v1 = result[1];
  v2 = (v1 ^ (*result >> 1)) & 0x5555555555555555;
  v3 = *result ^ (2 * v2);
  v4 = v2 ^ v1;
  v5 = result[2];
  v6 = result[3];
  v7 = (v6 ^ (v5 >> 1)) & 0x5555555555555555;
  v8 = v5 ^ (2 * v7);
  v9 = v7 ^ v6;
  v10 = result[4];
  v11 = result[5];
  v12 = (v11 ^ (v10 >> 1)) & 0x5555555555555555;
  v13 = v10 ^ (2 * v12);
  v14 = v12 ^ v11;
  v15 = result[6];
  v16 = result[7];
  v17 = (v16 ^ (v15 >> 1)) & 0x5555555555555555;
  v18 = v15 ^ (2 * v17);
  v19 = v17 ^ v16;
  v20 = (v8 ^ (v3 >> 2)) & 0x3333333333333333;
  v21 = v3 ^ (4 * v20);
  v22 = v20 ^ v8;
  v23 = (v9 ^ (v4 >> 2)) & 0x3333333333333333;
  *result = v21;
  result[1] = v4 ^ (4 * v23);
  result[2] = v22;
  result[3] = v23 ^ v9;
  v24 = (v18 ^ (v13 >> 2)) & 0x3333333333333333;
  v25 = (v19 ^ (v14 >> 2)) & 0x3333333333333333;
  result[4] = v13 ^ (4 * v24);
  result[5] = v14 ^ (4 * v25);
  result[6] = v24 ^ v18;
  result[7] = v25 ^ v19;
  return result;
}

uint64_t *aes_nohw_sub_bytes(uint64_t *result)
{
  v1 = result[6];
  v2 = result[7];
  v3 = result[4];
  v4 = result[2];
  v5 = v4 ^ v3;
  v6 = result[1];
  v7 = v6 ^ v2;
  v8 = v3 ^ v2;
  v9 = v4 ^ v2;
  v10 = result[5] ^ v1;
  v11 = *result ^ v10;
  v12 = v11 ^ v3;
  v13 = v6 ^ v2 ^ v5;
  v63 = v11 ^ v2;
  v14 = v11 ^ v6;
  v15 = v14 ^ v4 ^ v2;
  v16 = v13 ^ result[3];
  v17 = v16 ^ v4;
  v18 = v16 ^ v1;
  v19 = v17 ^ v10;
  v20 = v18 ^ v8;
  v21 = v18 ^ v8 ^ *result;
  v22 = v18 ^ v8 ^ v17 ^ v10;
  v23 = v18 ^ v8 ^ v10;
  v24 = (v18 ^ v8) & v8;
  v25 = v22 & v5 ^ v24;
  v26 = v24 ^ v19 & v9;
  v27 = v18 ^ v17 & v13 ^ (v17 ^ *result) & v15 ^ v25;
  v28 = v12 & *result ^ v9 ^ v17 & v13 ^ v19 ^ v26;
  v29 = v14 & v11 ^ v7 ^ v23 & v7 ^ v25;
  v30 = v21 & (v11 ^ v2) ^ v2 ^ v23 & v7 ^ v26;
  v31 = v30 ^ v23;
  v32 = v28 ^ v27;
  v33 = (v29 ^ v23) & v27;
  v34 = v33 ^ v30 ^ v23;
  v35 = v34 & v32 ^ v28;
  v36 = (v33 ^ v28) & (v30 ^ v29);
  v37 = v36 ^ v31;
  v38 = (v36 ^ v33) & v31;
  v39 = v38 ^ v29 ^ v23;
  v40 = (v38 ^ v34) & v35 ^ v32;
  v41 = v40 ^ v39 ^ v37;
  v42 = v41 ^ v37 ^ v35;
  v43 = (v39 ^ v37) & (v17 ^ *result);
  v44 = v37 & *result;
  v45 = (v40 ^ v35) & v23;
  v46 = v40 & v11;
  v47 = v35 & v21;
  v48 = v42 & v22;
  v49 = (v39 ^ v37) & v15;
  v50 = (v40 ^ v35) & v7;
  v51 = v42 & v5;
  v52 = v51 ^ (v37 ^ v35) & v8;
  v53 = v49 ^ v37 & v12;
  v54 = v40 & v14 ^ v47;
  v55 = v49 ^ v39 & v13;
  v56 = v45 ^ v39 & v17;
  v57 = v50 ^ v44 ^ v56;
  v58 = v45 ^ (v37 ^ v35) & v20 ^ v48;
  v59 = v48 ^ v41 & v19 ^ v52 ^ v46;
  v60 = v55 ^ v52 ^ v46;
  v61 = v58 ^ v46;
  v62 = v57 ^ v35 & v63 ^ v59;
  *result = v54 ^ v52 ^ ~v57;
  result[1] = v54 ^ v50 ^ ~v59;
  result[2] = v53 ^ v62;
  result[3] = v47 ^ v44 ^ v60 ^ v43;
  result[4] = v60 ^ v43 ^ v56;
  result[5] = v61 ^ v41 & v9 ^ v51 ^ ~v62;
  result[6] = v61 ^ ~(v60 ^ v43 ^ v56);
  result[7] = v60 ^ v58;
  return result;
}

int8x16_t aes_nohw_mix_columns(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*a1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (*a1 << 12) & 0xF000F000F000F000;
  v5 = v4 ^ *a1;
  v6 = (v1 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v1 << 12) & 0xF000F000F000F000;
  v7 = v6 ^ v1;
  v8 = (v2 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v2 << 12) & 0xF000F000F000F000;
  v9 = v8 ^ v2;
  v10 = (v3 >> 4) & 0xFFF0FFF0FFF0FFFLL | (v3 << 12) & 0xF000F000F000F000;
  v11 = v10 ^ v3;
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14.i64[0] = 0xF000F000F000F000;
  v14.i64[1] = 0xF000F000F000F000;
  v15 = vbslq_s8(v14, vshrq_n_u64(v12, 4uLL), vshlq_n_s64(v12, 0xCuLL));
  v16 = veorq_s8(v15, v12);
  v17 = vdupq_laneq_s64(v16, 1);
  v18 = vbslq_s8(v14, vshrq_n_u64(v13, 4uLL), vshlq_n_s64(v13, 0xCuLL));
  *a1 = __rev16(v5) ^ v4 ^ v11;
  *(a1 + 8) = v5 ^ v6 ^ __rev16(v7) ^ v11;
  v19 = veorq_s8(veorq_s8(vzip1q_s64(vdupq_laneq_s64(v15, 1), v18), vdupq_n_s64(v11)), v16);
  *(a1 + 16) = __rev16(v16.u64[0]) ^ v15.i64[0] ^ v7;
  v20 = veorq_s8(v18, v13);
  v21 = vzip1q_s64(v17, v20);
  v17.i64[0] = 0xFF00FF00FF00FFLL;
  v17.i64[1] = 0xFF00FF00FF00FFLL;
  *(a1 + 24) = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), v19);
  v21.i64[0] = vdupq_laneq_s64(v20, 1).u64[0];
  v21.i64[1] = v9;
  v15.i64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v15.i64[1] = v8;
  result = veorq_s8(vbslq_s8(v17, vshrq_n_u64(v21, 8uLL), vshlq_n_s64(v21, 8uLL)), veorq_s8(v15, v20));
  *(a1 + 40) = result;
  *(a1 + 56) = v9 ^ v10 ^ __rev16(v11);
  return result;
}

double EC_group_p384_init()
{
  qword_1EB381BB0 = "NIST P-384";
  unk_1EB381BB8 = 0x4812B000002CBLL;
  byte_1EB381BC0 = 34;
  byte_1EB381BC5 = 5;
  bn_set_static_words(&unk_1EB381AF8, &kP384Field, 6uLL);
  bn_set_static_words(&unk_1EB381AE0, &kP384FieldRR, 6uLL);
  qword_1EB381B10 = 0x100000001;
  bn_set_static_words(&unk_1EB381AB8, &kP384Order, 6uLL);
  bn_set_static_words(&unk_1EB381AA0, &kP384OrderRR, 6uLL);
  qword_1EB381AD0 = 0x6ED46089E88FDC45;
  EC_group_p384_storage = EC_GFp_mont_method();
  unk_1EB3819C0 = &EC_group_p384_storage;
  xmmword_1EB3819C8 = kP384MontGX;
  unk_1EB3819D8 = unk_1A90AFE88;
  xmmword_1EB3819E8 = xmmword_1A90AFE98;
  unk_1EB381A10 = kP384MontGY;
  unk_1EB381A20 = unk_1A90AFEB8;
  unk_1EB381A30 = xmmword_1A90AFEC8;
  xmmword_1EB381A68 = xmmword_1A90AFEE8;
  unk_1EB381A78 = unk_1A90AFEF8;
  xmmword_1EB381A58 = kP384FieldR;
  xmmword_1EB381B68 = kP384MontB;
  unk_1EB381B78 = unk_1A90AFF18;
  xmmword_1EB381B88 = xmmword_1A90AFF28;
  ec_group_set_a_minus3(&EC_group_p384_storage);
  *&result = 0x100000001;
  qword_1EB381BCC = 0x100000001;
  return result;
}

double EC_group_p521_init()
{
  qword_1EB381DD0 = "NIST P-521";
  unk_1EB381DD8 = 0x4812B000002CCLL;
  byte_1EB381DE0 = 35;
  byte_1EB381DE5 = 5;
  bn_set_static_words(&unk_1EB381D18, &kP521Field, 9uLL);
  bn_set_static_words(&unk_1EB381D00, &kP521FieldRR, 9uLL);
  qword_1EB381D30 = 1;
  bn_set_static_words(&unk_1EB381CD8, &kP521Order, 9uLL);
  bn_set_static_words(&unk_1EB381CC0, &kP521OrderRR, 9uLL);
  qword_1EB381CF0 = 0x1D2F5CCD79A995C7;
  EC_group_p521_storage = EC_GFp_mont_method();
  unk_1EB381BE0 = &EC_group_p521_storage;
  qword_1EB381C28 = 116;
  xmmword_1EB381BE8 = kP521MontGX;
  unk_1EB381BF8 = unk_1A90B0068;
  xmmword_1EB381C08 = xmmword_1A90B0078;
  unk_1EB381C18 = unk_1A90B0088;
  qword_1EB381C70 = 480;
  unk_1EB381C30 = kP521MontGY;
  unk_1EB381C40 = unk_1A90B00B0;
  unk_1EB381C50 = xmmword_1A90B00C0;
  unk_1EB381C60 = unk_1A90B00D0;
  qword_1EB381CB8 = 0;
  xmmword_1EB381C78 = kP521FieldR;
  unk_1EB381C88 = unk_1A90B0140;
  xmmword_1EB381C98 = xmmword_1A90B0150;
  unk_1EB381CA8 = unk_1A90B0160;
  qword_1EB381DC8 = 77;
  xmmword_1EB381D88 = kP521MontB;
  unk_1EB381D98 = unk_1A90B00F8;
  xmmword_1EB381DA8 = xmmword_1A90B0108;
  unk_1EB381DB8 = unk_1A90B0118;
  ec_group_set_a_minus3(&EC_group_p521_storage);
  *&result = 0x100000001;
  qword_1EB381DEC = 0x100000001;
  return result;
}

EC_GROUP *__cdecl EC_GROUP_new_by_curve_name(int nid)
{
  if (nid > 714)
  {
    if (nid != 715)
    {
      if (nid == 716)
      {
        CRYPTO_once(&EC_group_p521_once, EC_group_p521_init);
        return &EC_group_p521_storage;
      }

      goto LABEL_8;
    }

    CRYPTO_once(&EC_group_p384_once, EC_group_p384_init);
    return &EC_group_p384_storage;
  }

  else
  {
    if (nid != 415)
    {
      if (nid == 713)
      {
        CRYPTO_once(&EC_group_p224_once, EC_group_p224_init);
        return &EC_group_p224_storage;
      }

LABEL_8:
      ERR_put_error(15, 0, 123, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 342);
      return 0;
    }

    CRYPTO_once(&EC_group_p256_once, EC_group_p256_init);
    return &EC_group_p256_storage;
  }
}

const EC_POINT *__cdecl EC_GROUP_get0_generator(const EC_GROUP *a1)
{
  if (*(a1 + 133))
  {
    return (a1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t EC_GROUP_get0_order(uint64_t a1)
{
  if (!*(a1 + 532))
  {
    EC_GROUP_get0_order_cold_1();
  }

  return a1 + 256;
}

int EC_POINT_is_at_infinity(const EC_GROUP *a1, const EC_POINT *a2)
{
  if (EC_GROUP_cmp(a1, *a2, v2))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 537);
    return 0;
  }

  else
  {

    return ec_GFp_simple_is_at_infinity(a1, a2 + 8);
  }
}

int EC_POINT_is_on_curve(const EC_GROUP *a1, const EC_POINT *a2, BN_CTX *a3)
{
  if (EC_GROUP_cmp(a1, *a2, a3))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 546);
    return 0;
  }

  else
  {

    return ec_GFp_simple_is_on_curve(a1, a2 + 8);
  }
}

int EC_POINT_cmp(const EC_GROUP *a1, const EC_POINT *a, const EC_POINT *b, BN_CTX *a4)
{
  if (!EC_GROUP_cmp(a1, *a, b) && !EC_GROUP_cmp(a1, *b, v7))
  {
    return ec_GFp_simple_points_equal(a1, a + 8, (b + 8)) == 0;
  }

  ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 556);
  return -1;
}

int EC_POINT_get_affine_coordinates_GFp(const EC_GROUP *a1, const EC_POINT *a2, BIGNUM *x, BIGNUM *y, BN_CTX *a5)
{
  if (!**a1)
  {
    v9 = 66;
    v10 = 568;
    goto LABEL_5;
  }

  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 572;
LABEL_5:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v10);
    return 0;
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v12;
  v17[3] = v12;
  v17[0] = v12;
  v17[1] = v12;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v15[2] = v12;
  v15[3] = v12;
  v15[0] = v12;
  v15[1] = v12;
  if (x)
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  if (y)
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  result = (**a1)(a1, a2 + 8, v13, v14);
  if (result)
  {
    if (!x || (result = ec_felem_to_bignum(a1, x, v17)) != 0)
    {
      if (!y)
      {
        return 1;
      }

      result = ec_felem_to_bignum(a1, y, v15);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ec_jacobian_to_affine_batch(uint64_t a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {

    return v2();
  }

  else
  {
    ERR_put_error(15, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 607);
    return 0;
  }
}

int EC_POINT_set_affine_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, const BIGNUM *y, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *a2, x))
  {
    v9 = 106;
    v10 = 649;
LABEL_10:
    ERR_put_error(15, 0, v9, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v10);
    return 0;
  }

  if (!x || !y)
  {
    v9 = 67;
    v10 = 654;
    goto LABEL_10;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[2] = v11;
  v28[3] = v11;
  v28[0] = v11;
  v28[1] = v11;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v26[2] = v11;
  v26[3] = v11;
  v26[0] = v11;
  v26[1] = v11;
  *&v25[48] = v11;
  *&v25[64] = v11;
  *&v25[16] = v11;
  *&v25[32] = v11;
  v24 = v11;
  *v25 = v11;
  v22 = v11;
  v23 = v11;
  v21 = v11;
  if (ec_bignum_to_felem(a1, v28, x) && ec_bignum_to_felem(a1, v26, y) && ec_point_set_affine_coordinates(a1, &v21, v28, v26))
  {
    v12 = v21;
    *(a2 + 24) = v22;
    v13 = v24;
    *(a2 + 40) = v23;
    *(a2 + 56) = v13;
    *(a2 + 9) = *v25;
    *(a2 + 8) = v12;
    v14 = *&v25[24];
    v15 = *&v25[56];
    *(a2 + 7) = *&v25[40];
    *(a2 + 8) = v15;
    *(a2 + 18) = *&v25[72];
    *(a2 + 5) = *&v25[8];
    *(a2 + 6) = v14;
    v16 = ec_felem_one(a1);
    *(a2 + 152) = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 64);
    *(a2 + 168) = *(v16 + 16);
    *(a2 + 27) = v19;
    *(a2 + 200) = v17;
    *(a2 + 184) = v18;
    return 1;
  }

  ec_set_to_safe_point(a1, a2 + 8);
  return 0;
}

double ec_set_to_safe_point(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 532))
  {
    return ec_GFp_simple_point_set_to_infinity(a1, a2);
  }

  *&result = ec_GFp_simple_point_copy(a2, a1 + 16).n128_u64[0];
  return result;
}

int EC_POINT_add(const EC_GROUP *a1, EC_POINT *r, const EC_POINT *a, const EC_POINT *b, BN_CTX *a5)
{
  if (EC_GROUP_cmp(a1, *r, a) || EC_GROUP_cmp(a1, *a, v9) || EC_GROUP_cmp(a1, *b, v10))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 684);
    return 0;
  }

  else
  {
    (*(*a1 + 16))(a1, r + 8, a + 8, b + 8);
    return 1;
  }
}

int EC_POINT_invert(const EC_GROUP *a1, EC_POINT *a2, BN_CTX *a3)
{
  if (EC_GROUP_cmp(a1, *a2, a3))
  {
    ERR_put_error(15, 0, 106, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 705);
    return 0;
  }

  else
  {
    ec_GFp_simple_invert(a1, a2 + 8);
    return 1;
  }
}

uint64_t ec_point_mul_no_self_test(const EC_GROUP *a1, uint64_t a2, BIGNUM *a3, const EC_GROUP **a4, const BIGNUM *a5, BN_CTX *a6)
{
  if ((a4 == 0) != (a5 == 0) || !(a3 | a5))
  {
    v13 = 67;
    v14 = 738;
  }

  else
  {
    if (!EC_GROUP_cmp(a1, *a2, a3) && (!a4 || !EC_GROUP_cmp(a1, *a4, v12)))
    {
      if (a6)
      {
        v17 = 0;
      }

      else
      {
        a6 = BN_CTX_new();
        v17 = a6;
        if (!a6)
        {
          goto LABEL_21;
        }
      }

      if (!a3 || (*&v30 = 0xAAAAAAAAAAAAAAAALL, *&v18 = 0xAAAAAAAAAAAAAAAALL, *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL, v28 = v18, v29 = v18, v26 = v18, v27 = v18, arbitrary_bignum_to_scalar(a1, &v26, a3, a6)) && ec_point_mul_scalar_base(a1, a2 + 8, &v26))
      {
        if (!a5)
        {
LABEL_23:
          v15 = 1;
          goto LABEL_24;
        }

        v41 = 0xAAAAAAAAAAAAAAAALL;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40[2] = v19;
        v40[3] = v19;
        v40[0] = v19;
        v40[1] = v19;
        v39 = 0xAAAAAAAAAAAAAAAALL;
        v37 = v19;
        v38 = v19;
        v35 = v19;
        v36 = v19;
        v33 = v19;
        v34 = v19;
        v31 = v19;
        v32 = v19;
        v29 = v19;
        v30 = v19;
        v27 = v19;
        v28 = v19;
        v26 = v19;
        if (arbitrary_bignum_to_scalar(a1, v40, a5, a6) && ec_point_mul_scalar(a1, &v26, (a4 + 1), v40))
        {
          if (a3)
          {
            (*(*a1 + 16))(a1, a2 + 8, a2 + 8, &v26);
          }

          else
          {
            v20 = v37;
            *(a2 + 168) = v36;
            *(a2 + 184) = v20;
            *(a2 + 200) = v38;
            v21 = v33;
            *(a2 + 104) = v32;
            *(a2 + 120) = v21;
            v22 = v35;
            *(a2 + 136) = v34;
            *(a2 + 152) = v22;
            v23 = v29;
            *(a2 + 40) = v28;
            *(a2 + 56) = v23;
            v24 = v31;
            *(a2 + 72) = v30;
            *(a2 + 88) = v24;
            v25 = v27;
            *(a2 + 8) = v26;
            *(a2 + 216) = v39;
            *(a2 + 24) = v25;
          }

          goto LABEL_23;
        }
      }

LABEL_21:
      v15 = 0;
LABEL_24:
      BN_CTX_free(v17);
      return v15;
    }

    v13 = 106;
    v14 = 744;
  }

  ERR_put_error(15, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v14);
  return 0;
}

uint64_t arbitrary_bignum_to_scalar(uint64_t a1, void *a2, const BIGNUM *a3, BN_CTX *a4)
{
  if (ec_bignum_to_scalar(a1, a2, a3))
  {
    return 1;
  }

  ERR_clear_error();
  BN_CTX_start(a4);
  v9 = BN_CTX_get(a4);
  if (!v9)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 532))
  {
    EC_GROUP_get0_order_cold_1();
  }

  v10 = v9;
  if (BN_nnmod(v9, a3, (a1 + 256), a4))
  {
    v8 = ec_bignum_to_scalar(a1, a2, v10) != 0;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  BN_CTX_end(a4);
  return v8;
}

uint64_t ec_point_mul_scalar_base(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a1 + 40))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    v6 = 68;
    v7 = 867;
  }

  else
  {
    v6 = 67;
    v7 = 856;
  }

  ERR_put_error(15, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v7);
  return 0;
}

uint64_t ec_point_mul_scalar(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    (*(*a1 + 32))(a1);
    if (ec_GFp_simple_is_on_curve(a1, a2))
    {
      return 1;
    }

    v7 = 68;
    v8 = 846;
  }

  else
  {
    v7 = 67;
    v8 = 837;
  }

  ERR_put_error(15, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", v8);
  return 0;
}

uint64_t *ec_point_select(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  ec_felem_select(a1, a2, a3, a4, a5);
  ec_felem_select(a1, a2 + 9, a3, a4 + 9, a5 + 9);

  return ec_felem_select(a1, a2 + 18, a3, a4 + 18, a5 + 18);
}

uint64_t ec_get_x_coordinate_as_scalar(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = -21846;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v5;
  v10[3] = v5;
  v10[0] = v5;
  v10[1] = v5;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = ec_get_x_coordinate_as_bytes(a1, v10, &v8, 0x42uLL, a3);
  if (result)
  {
    if (!*(a1 + 532))
    {
      EC_GROUP_get0_order_cold_1();
    }

    memset(v9, 0, sizeof(v9));
    bn_big_endian_to_words(v9, *(a1 + 264) + 1, v10, v8);
    bn_reduce_once(a2, v9, *(v9 + *(a1 + 264)), *(a1 + 256), *(a1 + 264));
    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ec_get_x_coordinate_as_bytes(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = BN_num_bytes((a1 + 320));
  if (v9 >= 0x43)
  {
    ec_get_x_coordinate_as_bytes_cold_1();
  }

  v10 = v9;
  if (v9 <= a4)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[2] = v12;
    v13[3] = v12;
    v13[0] = v12;
    v13[1] = v12;
    result = (**a1)(a1, a5, v13, 0);
    if (result)
    {
      ec_felem_to_bytes(a1);
      *a3 = v10;
      return 1;
    }
  }

  else
  {
    ERR_put_error(15, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/ec.c.inc", 996);
    return 0;
  }

  return result;
}

boringssl_concrete_boringssl_psk_cache *boringssl_psk_cache_create_with_context(void *a1)
{
  v2 = objc_alloc_init(boringssl_concrete_boringssl_psk_cache);
  v3 = v2;
  if (v2)
  {
    list = v2->list;
    v2->list = 0;

    objc_storeStrong(&v3->context, a1);
  }

  return v3;
}

void boringssl_psk_cache_add_psk(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  if (v7 && v3)
  {
    if (!v7[1])
    {
      v4 = sec_array_create();
      v5 = v7[1];
      v7[1] = v4;

      v6 = v7[1];
    }

    sec_array_append();
  }
}

id boringssl_psk_cache_lookup_psk(void *a1, void *a2, void *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    goto LABEL_83;
  }

  v8 = v5[1];
  if (sec_array_get_count())
  {
    if (v5[3] && v5[4])
    {
      if (v7)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy__2;
        *&buf[32] = __Block_byref_object_dispose__2;
        v97 = 0;
        v9 = v5[2];
        if (!v9)
        {
          goto LABEL_33;
        }

        WeakRetained = objc_loadWeakRetained((v9 + 16));
        if (WeakRetained)
        {
          v11 = WeakRetained;
          v12 = objc_loadWeakRetained((v5[2] + 16));
          v13 = v12[435];

          if (v13)
          {
            goto LABEL_114;
          }
        }

        v14 = v5[2];
        if (v14)
        {
          v15 = objc_loadWeakRetained((v14 + 16));
          if (v15)
          {
            v16 = objc_loadWeakRetained((v5[2] + 16));
            v17 = (v16[435] & 1) == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            goto LABEL_114;
          }
        }

        else
        {
LABEL_33:
          v17 = 1;
        }

        if (!g_boringssl_log)
        {
LABEL_114:
          v78 = v5[4];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __boringssl_psk_cache_lookup_psk_block_invoke;
          block[3] = &unk_1E785FDE0;
          v84 = v5;
          v85 = v7;
          v86 = v6;
          v87 = buf;
          dispatch_sync(v78, block);
          v44 = *(*&buf[8] + 40);

          _Block_object_dispose(buf, 8);
          goto LABEL_130;
        }

        v61 = g_boringssl_log;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          goto LABEL_113;
        }

        v62 = v5[2];
        if (v62)
        {
          v63 = objc_loadWeakRetained((v62 + 16));
          v17 = v63;
          v64 = v5[2];
          if (v63)
          {
            v65 = v64 != 0;
            if (v64)
            {
              v63 = objc_loadWeakRetained((v64 + 16));
              v64 = v5[2];
            }

            else
            {
              v63 = 0;
            }

            v73 = v63 + 351;
          }

          else
          {
            v65 = 0;
            v73 = &unk_1A9098A9F;
          }

          v82 = v63;
          if (v64)
          {
            v71 = objc_loadWeakRetained((v64 + 16));
            v72 = 0;
          }

          else
          {
            v71 = 0;
            v72 = 1;
          }
        }

        else
        {
          v65 = 0;
          v71 = 0;
          v72 = 1;
          v73 = &unk_1A9098A9F;
        }

        *v88 = 136446978;
        v89 = "boringssl_psk_cache_lookup_psk";
        v90 = 1024;
        v91 = 104;
        v92 = 2082;
        v93 = v73;
        v94 = 2048;
        v95 = v71;
        _os_log_impl(&dword_1A8FF5000, v61, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Invoking client PSK selection callback.", v88, 0x26u);
        if (v72)
        {
          if (!v65)
          {
            goto LABEL_111;
          }
        }

        else
        {

          if (!v65)
          {
LABEL_111:
            if (v62)
            {
LABEL_112:
            }

LABEL_113:

            goto LABEL_114;
          }
        }

        if (!v62)
        {
          goto LABEL_113;
        }

        goto LABEL_112;
      }

      goto LABEL_83;
    }

    v18 = v5[2];
    if (v6)
    {
      if (v18)
      {
        v19 = objc_loadWeakRetained((v18 + 16));
        if (v19)
        {
          v20 = v19;
          v21 = objc_loadWeakRetained((v5[2] + 16));
          v22 = v21[435];

          if (v22)
          {
            goto LABEL_99;
          }
        }

        v23 = v5[2];
        if (v23)
        {
          v24 = objc_loadWeakRetained((v23 + 16));
          if (v24)
          {
            v25 = objc_loadWeakRetained((v5[2] + 16));
            v26 = (v25[435] & 1) == 0;
          }

          else
          {
            v26 = 1;
          }

          if (!v26)
          {
            goto LABEL_99;
          }
        }
      }

      if (!g_boringssl_log)
      {
        goto LABEL_99;
      }

      v53 = g_boringssl_log;
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        goto LABEL_98;
      }

      v54 = v5[2];
      if (v54)
      {
        v55 = objc_loadWeakRetained((v54 + 16));
        v56 = v5[2];
        v82 = v55;
        if (v55)
        {
          v57 = v56 != 0;
          if (v56)
          {
            v55 = objc_loadWeakRetained((v56 + 16));
            v56 = v5[2];
          }

          else
          {
            v55 = 0;
          }

          v60 = v55 + 351;
        }

        else
        {
          v57 = 0;
          v60 = &unk_1A9098A9F;
        }

        v81 = v55;
        if (v56)
        {
          v58 = objc_loadWeakRetained((v56 + 16));
          v59 = 0;
        }

        else
        {
          v58 = 0;
          v59 = 1;
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 1;
        v60 = &unk_1A9098A9F;
      }

      *buf = 136446978;
      *&buf[4] = "boringssl_psk_cache_lookup_psk";
      *&buf[12] = 1024;
      *&buf[14] = 124;
      *&buf[18] = 2082;
      *&buf[20] = v60;
      *&buf[28] = 2048;
      *&buf[30] = v58;
      _os_log_impl(&dword_1A8FF5000, v53, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] No PSK selection logic. Indexing cache using identity hint verbatim.", buf, 0x26u);
      if (v59)
      {
        if (!v57)
        {
          goto LABEL_96;
        }
      }

      else
      {

        if (!v57)
        {
LABEL_96:
          if (v54)
          {
LABEL_97:
          }

LABEL_98:

LABEL_99:
          psk = boringssl_psk_cache_lookup_psk_inner(v5, v6);
LABEL_129:
          v44 = psk;
          goto LABEL_130;
        }
      }

      if (!v54)
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    if (v18)
    {
      v36 = objc_loadWeakRetained((v18 + 16));
      if (v36)
      {
        v37 = v36;
        v38 = objc_loadWeakRetained((v5[2] + 16));
        v39 = v38[435];

        if (v39)
        {
          goto LABEL_128;
        }
      }

      v40 = v5[2];
      if (v40)
      {
        v41 = objc_loadWeakRetained((v40 + 16));
        if (v41)
        {
          v42 = objc_loadWeakRetained((v5[2] + 16));
          v43 = (v42[435] & 1) == 0;
        }

        else
        {
          v43 = 1;
        }

        if (!v43)
        {
          goto LABEL_128;
        }
      }
    }

    if (!g_boringssl_log)
    {
LABEL_128:
      psk = boringssl_psk_cache_copy_first_psk(v5);
      goto LABEL_129;
    }

    v66 = g_boringssl_log;
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      goto LABEL_127;
    }

    v67 = v5[2];
    if (v67)
    {
      v68 = objc_loadWeakRetained((v67 + 16));
      v69 = v5[2];
      v82 = v68;
      if (v68)
      {
        v70 = v69 != 0;
        if (v69)
        {
          v68 = objc_loadWeakRetained((v69 + 16));
          v69 = v5[2];
        }

        else
        {
          v68 = 0;
        }

        v76 = v68 + 351;
      }

      else
      {
        v70 = 0;
        v76 = &unk_1A9098A9F;
      }

      v81 = v68;
      if (v69)
      {
        v74 = objc_loadWeakRetained((v69 + 16));
        v75 = 0;
      }

      else
      {
        v74 = 0;
        v75 = 1;
      }
    }

    else
    {
      v70 = 0;
      v74 = 0;
      v75 = 1;
      v76 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    *&buf[4] = "boringssl_psk_cache_lookup_psk";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    *&buf[18] = 2082;
    *&buf[20] = v76;
    *&buf[28] = 2048;
    *&buf[30] = v74;
    _os_log_impl(&dword_1A8FF5000, v66, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] No PSK hint or selection logic. Using first PSK in the cache.", buf, 0x26u);
    if (v75)
    {
      if (!v70)
      {
        goto LABEL_125;
      }
    }

    else
    {

      if (!v70)
      {
LABEL_125:
        if (v67)
        {
LABEL_126:
        }

LABEL_127:

        goto LABEL_128;
      }
    }

    if (!v67)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  v27 = v5[2];
  if (!v27)
  {
    goto LABEL_25;
  }

  v28 = objc_loadWeakRetained((v27 + 16));
  if (v28)
  {
    v29 = v28;
    v30 = objc_loadWeakRetained((v5[2] + 16));
    v31 = v30[435];

    if (v31)
    {
      goto LABEL_83;
    }
  }

  v32 = v5[2];
  if (v32)
  {
    v33 = objc_loadWeakRetained((v32 + 16));
    if (v33)
    {
      v34 = objc_loadWeakRetained((v5[2] + 16));
      v35 = (v34[435] & 1) == 0;
    }

    else
    {
      v35 = 1;
    }
  }

  else
  {
LABEL_25:
    v35 = 1;
  }

  v44 = 0;
  if (v35 && g_boringssl_log)
  {
    v45 = g_boringssl_log;
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_82;
    }

    v46 = v5[2];
    if (v46)
    {
      v47 = objc_loadWeakRetained((v46 + 16));
      v48 = v5[2];
      v82 = v47;
      if (v47)
      {
        v49 = v48 != 0;
        if (v48)
        {
          v47 = objc_loadWeakRetained((v48 + 16));
          v48 = v5[2];
        }

        else
        {
          v47 = 0;
        }

        v52 = v47 + 351;
      }

      else
      {
        v49 = 0;
        v52 = &unk_1A9098A9F;
      }

      v81 = v47;
      if (v48)
      {
        v50 = objc_loadWeakRetained((v48 + 16));
        v51 = 0;
      }

      else
      {
        v50 = 0;
        v51 = 1;
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = 1;
      v52 = &unk_1A9098A9F;
    }

    *buf = 136446978;
    *&buf[4] = "boringssl_psk_cache_lookup_psk";
    *&buf[12] = 1024;
    *&buf[14] = 96;
    *&buf[18] = 2082;
    *&buf[20] = v52;
    *&buf[28] = 2048;
    *&buf[30] = v50;
    _os_log_impl(&dword_1A8FF5000, v45, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] PSK cache is empty.", buf, 0x26u);
    if (v51)
    {
      if (!v49)
      {
        goto LABEL_80;
      }
    }

    else
    {

      if (!v49)
      {
LABEL_80:
        if (v46)
        {
LABEL_81:
        }

LABEL_82:

LABEL_83:
        v44 = 0;
        goto LABEL_130;
      }
    }

    if (!v46)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

LABEL_130:

  v79 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __boringssl_psk_cache_lookup_psk_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[3];
  v5 = a1[6];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __boringssl_psk_cache_lookup_psk_block_invoke_2;
  v8[3] = &unk_1E785FDB8;
  v6 = v2;
  v7 = a1[7];
  v9 = v6;
  v10 = v7;
  (*(v4 + 16))(v4, v3, v5, v8);
}

void __boringssl_psk_cache_lookup_psk_block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 16));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 16));
      v9 = v8[435];

      if (v9)
      {
        goto LABEL_32;
      }
    }
  }

  v10 = *(*(a1 + 32) + 16);
  if (v10)
  {
    v11 = objc_loadWeakRetained((v10 + 16));
    if (v11)
    {
      v12 = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 16));
      v13 = (v12[435] & 1) == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v13 = 1;
  }

  if (g_boringssl_log)
  {
    v14 = g_boringssl_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 16);
      if (v16)
      {
        v13 = objc_loadWeakRetained((v16 + 16));
        v15 = *(a1 + 32);
        if (v13)
        {
          v17 = *(v15 + 16);
          v18 = v17 != 0;
          if (v17)
          {
            v2 = objc_loadWeakRetained((v17 + 16));
            v15 = *(a1 + 32);
          }

          else
          {
            v2 = 0;
          }

          v19 = v2 + 351;
        }

        else
        {
          v18 = 0;
          v19 = &unk_1A9098A9F;
        }
      }

      else
      {
        v18 = 0;
        v19 = &unk_1A9098A9F;
      }

      v20 = *(v15 + 16);
      if (v20)
      {
        v21 = objc_loadWeakRetained((v20 + 16));
      }

      else
      {
        v21 = 0;
      }

      v28 = "boringssl_psk_cache_lookup_psk_block_invoke_2";
      v29 = 1024;
      v22 = "with";
      v30 = 108;
      v27 = 136447234;
      if (!v4)
      {
        v22 = "without";
      }

      v31 = 2082;
      v32 = v19;
      v33 = 2048;
      v34 = v21;
      v35 = 2082;
      v36 = v22;
      _os_log_impl(&dword_1A8FF5000, v14, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Returned from client PSK selection callback %{public}s PSK.", &v27, 0x30u);
      if (v20)
      {
      }

      if (v18)
      {
      }

      if (v16)
      {
      }
    }
  }

LABEL_32:
  v23 = boringssl_psk_cache_lookup_psk_inner(*(a1 + 32), v4);
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = *MEMORY[0x1E69E9840];
}

void *boringssl_psk_cache_lookup_psk_inner(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__2;
    v33 = __Block_byref_object_dispose__2;
    v34 = 0;
    v7 = v3[1];
    v28 = v4;
    sec_array_apply();
    v6 = v30[5];
    if (v6)
    {
      v8 = v6;
LABEL_5:

      _Block_object_dispose(&v29, 8);
      goto LABEL_6;
    }

    v11 = v3[2];
    if (!v11)
    {
      goto LABEL_13;
    }

    WeakRetained = objc_loadWeakRetained((v11 + 16));
    if (WeakRetained)
    {
      v13 = objc_loadWeakRetained((v3[2] + 16));
      v14 = (v13[435] & 1) == 0;

      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v15 = v3[2];
    if (v15)
    {
      v16 = objc_loadWeakRetained((v15 + 16));
      if (v16)
      {
        v17 = objc_loadWeakRetained((v3[2] + 16));
        v18 = (v17[435] & 1) == 0;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
LABEL_13:
      v18 = 1;
    }

    if (v18 && g_boringssl_log)
    {
      v19 = g_boringssl_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = v3[2];
        if (v20)
        {
          v21 = objc_loadWeakRetained((v20 + 16));
          v18 = v21;
          v22 = v3[2];
          if (v21)
          {
            v23 = v22 != 0;
            if (v22)
            {
              v21 = objc_loadWeakRetained((v22 + 16));
              v22 = v3[2];
            }

            else
            {
              v21 = 0;
            }

            v26 = v21 + 351;
          }

          else
          {
            v23 = 0;
            v26 = &unk_1A9098A9F;
          }

          v27 = v21;
          if (v22)
          {
            v24 = objc_loadWeakRetained((v22 + 16));
            v25 = 0;
          }

          else
          {
            v24 = 0;
            v25 = 1;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = 1;
          v26 = &unk_1A9098A9F;
        }

        *buf = 136446978;
        v36 = "boringssl_psk_cache_lookup_psk_inner";
        v37 = 1024;
        v38 = 81;
        v39 = 2082;
        v40 = v26;
        v41 = 2048;
        v42 = v24;
        _os_log_impl(&dword_1A8FF5000, v19, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] PSK lookup using identity hint did not find a match.", buf, 0x26u);
        if ((v25 & 1) == 0)
        {
        }

        if (v23)
        {
        }

        if (v20)
        {
        }
      }
    }

    goto LABEL_5;
  }

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1A9078A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id boringssl_psk_cache_copy_first_psk(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2;
    v10 = __Block_byref_object_dispose__2;
    v11 = 0;
    v3 = *(v1 + 1);
    sec_array_apply();
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A9078B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void boringssl_psk_cache_set_selection_block_and_queue(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a1 && a2 && v6)
  {
    v10 = v6;
    v7 = a1;
    v8 = MEMORY[0x1AC57F4F0](a2);
    v9 = *(v7 + 3);
    *(v7 + 3) = v8;

    objc_storeStrong(v7 + 4, a3);
    v6 = v10;
  }
}

id boringssl_psk_cache_copy_psk_object_array(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = xpc_array_create(0, 0);
  v2 = v1[1];
  sec_array_apply();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void sub_1A9078CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __boringssl_psk_cache_copy_psk_object_array_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = boringssl_psk_copy_xpc_object(a3);
  xpc_array_set_value(*(*(*(a1 + 32) + 8) + 40), 0xFFFFFFFFFFFFFFFFLL, v4);

  return 1;
}

uint64_t boringssl_psk_cache_clear_context(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    *(result + 16) = 0;
    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t __boringssl_psk_cache_lookup_psk_inner_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = boringssl_psk_matches_identity_hint(v5, *(a1 + 32));
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  return v6 ^ 1u;
}

uint64_t des_cbc_ede3_init_key(uint64_t a1, void *key, void *iv, int a4)
{
  cryptorRef = 0;
  v5 = CCCryptorCreate(a4 == 0, 2u, 0, key, *(a1 + 24), iv, &cryptorRef);
  result = 0;
  if (!v5)
  {
    *(a1 + 8) = cryptorRef;
    return 1;
  }

  return result;
}

BOOL des_ede3_cbc_cipher(uint64_t a1, void *a2, const void *a3, size_t a4)
{
  v4 = *(a1 + 8);
  if (v4 && !CCCryptorReset(*(a1 + 8), (a1 + 52)) && ((dataOutMoved = 0, !CCCryptorUpdate(v4, a3, a4, a2, a4, &dataOutMoved)) ? (v8 = dataOutMoved == a4) : (v8 = 0), v8))
  {
    return CCCryptorGetIV() == 0;
  }

  else
  {
    return 0;
  }
}

_CCCryptor *des_cleanup(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CCCryptorRelease(result);
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t pkey_ed25519_keygen(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = OPENSSL_malloc(0x41uLL);
  if (v3)
  {
    v4 = v3;
    evp_pkey_set_method(a2, &ed25519_asn1_meth);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[0] = v5;
    v9[1] = v5;
    ED25519_keypair(v9, v4);
    v6 = 1;
    *(v4 + 64) = 1;
    OPENSSL_free(*(a2 + 8));
    *(a2 + 8) = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t pkey_ed25519_sign_message(uint64_t a1, _BYTE *a2, void *a3, const void *a4, size_t a5)
{
  v5 = *(*(a1 + 16) + 8);
  if (!v5[64])
  {
    v7 = 130;
    v8 = 49;
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

  if (*a3 <= 0x3FuLL)
  {
    v7 = 100;
    v8 = 59;
LABEL_6:
    ERR_put_error(6, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519.c", v8);
    return 0;
  }

  result = ED25519_sign(a2, a4, a5, v5);
  if (result)
  {
LABEL_8:
    *a3 = 64;
    return 1;
  }

  return result;
}

uint64_t pkey_ed25519_verify_message(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const void *a4, size_t a5)
{
  if (a3 == 64 && ED25519_verify(a4, a5, a2, (*(*(a1 + 16) + 8) + 32)))
  {
    return 1;
  }

  ERR_put_error(6, 0, 131, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ed25519.c", 77);
  return 0;
}

int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b)
{
  length = a->length;
  v3 = b->length;
  if (length < v3)
  {
    return -1;
  }

  if (length > v3)
  {
    return 1;
  }

  if (length)
  {
    return memcmp(a->data, b->data, length);
  }

  return 0;
}

int OBJ_obj2nid(const ASN1_OBJECT *o)
{
  if (o)
  {
    v1 = o;
    LODWORD(o) = o->nid;
    if (!o)
    {
      CRYPTO_MUTEX_lock_read(&global_added_lock);
      if (global_added_by_data)
      {
        v2 = OPENSSL_lh_retrieve(global_added_by_data, v1, lh_ASN1_OBJECT_call_hash_func, lh_ASN1_OBJECT_call_cmp_func);
        if (v2)
        {
          v3 = v2;
          CRYPTO_MUTEX_unlock_read(&global_added_lock);
          v4 = (v3 + 16);
LABEL_9:
          LODWORD(o) = *v4;
          return o;
        }
      }

      CRYPTO_MUTEX_unlock_read(&global_added_lock);
      o = bsearch(v1, &kNIDsInOIDOrder, 0x371uLL, 2uLL, obj_cmp);
      if (o)
      {
        v5 = LOWORD(o->sn) - 1;
        if (v5 >= 0x3C5)
        {
          abort();
        }

        v4 = &kObjects[5 * v5 + 2];
        goto LABEL_9;
      }
    }
  }

  return o;
}

uint64_t obj_cmp(const ASN1_OBJECT *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C5)
  {
    abort();
  }

  return OBJ_cmp(a1, &kObjects[5 * v3]);
}

uint64_t boringssl_context_set_internal_error(uint64_t result, int a2)
{
  if (result && *result == -1252936367)
  {
    v2 = *(result + 8);
    if (v2)
    {
      *(v2 + 288) = a2;
    }
  }

  return result;
}

uint64_t boringssl_context_get_peer_hostname(uint64_t a1, const char **a2, size_t *a3)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3)
  {
    if (a2)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 392);
        if (v8 && (servername = SSL_get_servername(v8, 0)) != 0)
        {
          v10 = servername;
          v11 = strnlen(servername, 0xFFFFuLL);
          result = 0;
          *a3 = v11;
          *a2 = v10;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t boringssl_context_set_psk_identity_hint(uint64_t a1, void *a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = a2[1];
      if (v5)
      {
        if (*a2)
        {
          v6 = *(v4 + 392);
          if (v6)
          {
            if (SSL_use_psk_identity_hint(v6, v5) == 1)
            {
              return 0;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t boringssl_session_set_quic_early_data_context(uint64_t a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 392);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 0 || a3 == 0)
  {
    a3 = 32;
    a2 = "Default QUIC Early Data Context";
  }

  if (SSL_set_quic_early_data_context(v4, a2, a3) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t boringssl_session_get_quic_early_data_context(uint64_t a1, void *a2)
{
  if (a1 && *a1 == -1252936367 && (v2 = *(a1 + 8)) != 0 && (v3 = *(v2 + 392)) != 0)
  {
    return SSL_get_quic_early_data_context(v3, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t boringssl_context_zlib_compress_data(const SSL *a1, uint64_t a2, uint64_t a3, uLong a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = SSL_get_ex_data(a1, 0);
  if (!v7 || *v7 != -1252936367)
  {
    return 0;
  }

  v8 = 0;
  if (a2)
  {
    v9 = v7[1];
    if (v9)
    {
      *(v9 + 551) |= 0x80u;
      *(v9 + 328) = 1;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __boringssl_context_zlib_compress_data_block_invoke;
      v11[3] = &__block_descriptor_48_e12_B24__0r_8Q16lu40l8;
      v11[4] = a2;
      v11[5] = v9;
      return boringssl_helper_zlib_compress_data(v9, a3, a4, v11);
    }
  }

  return v8;
}

uint64_t boringssl_context_zlib_uncompress_data(const SSL *a1, uint64_t *a2, size_t a3, char *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1 || (v9 = SSL_get_ex_data(a1, 0)) == 0 || *v9 != -1252936367)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  if (a3)
  {
    if (a2)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = malloc_type_malloc(a3, 0x100004077774924uLL);
        if (v12)
        {
          v13 = v12;
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v40 = 0;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __boringssl_context_zlib_uncompress_data_block_invoke;
          v36[3] = &unk_1E78697B8;
          v36[4] = &v37;
          v36[5] = a3;
          v36[6] = v11;
          v36[7] = v12;
          if (boringssl_helper_zlib_decompress_data(v11, a4, a5, v36))
          {
            if (v38[3] == a3)
            {
              *a2 = CRYPTO_BUFFER_new(v13, a3, 0);
              free(v13);
              *(v11 + 551) |= 0x80u;
              v10 = 1;
              *(v11 + 328) = 1;
LABEL_40:
              _Block_object_dispose(&v37, 8);
              goto LABEL_15;
            }

            WeakRetained = objc_loadWeakRetained((v11 + 16));
            if (!WeakRetained || (v23 = objc_loadWeakRetained((v11 + 16)), v24 = (v23[435] & 1) == 0, v23, WeakRetained, v24))
            {
              v25 = objc_loadWeakRetained((v11 + 16));
              if (v25)
              {
                v26 = objc_loadWeakRetained((v11 + 16));
                v27 = (v26[435] & 1) == 0;
              }

              else
              {
                v27 = 1;
              }

              if (g_boringssl_log && v27)
              {
                v31 = g_boringssl_log;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = objc_loadWeakRetained((v11 + 16));
                  if (v32)
                  {
                    a4 = objc_loadWeakRetained((v11 + 16));
                    v33 = a4 + 351;
                  }

                  else
                  {
                    v33 = &unk_1A9098A9F;
                  }

                  v34 = objc_loadWeakRetained((v11 + 16));
                  v35 = v38[3];
                  *buf = 136447490;
                  v42 = "boringssl_context_zlib_uncompress_data";
                  v43 = 1024;
                  v44 = 801;
                  v45 = 2082;
                  v46 = v33;
                  v47 = 2048;
                  v48 = v34;
                  v49 = 2048;
                  v50 = a3;
                  v51 = 2048;
                  v52 = v35;
                  _os_log_error_impl(&dword_1A8FF5000, v31, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Incorrect uncompressed length. Expected %zu, got %zu", buf, 0x3Au);

                  if (v32)
                  {
                  }
                }
              }
            }
          }

          else
          {
            v16 = objc_loadWeakRetained((v11 + 16));
            if (!v16 || (v17 = objc_loadWeakRetained((v11 + 16)), v18 = (v17[435] & 1) == 0, v17, v16, v18))
            {
              v19 = objc_loadWeakRetained((v11 + 16));
              if (v19)
              {
                v20 = objc_loadWeakRetained((v11 + 16));
                v21 = (v20[435] & 1) == 0;
              }

              else
              {
                v21 = 1;
              }

              if (g_boringssl_log && v21)
              {
                v29 = g_boringssl_log;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  boringssl_context_zlib_uncompress_data_cold_1();
                }
              }
            }
          }

          v10 = 0;
          goto LABEL_40;
        }

        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_zlib_uncompress_data_cold_2();
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}