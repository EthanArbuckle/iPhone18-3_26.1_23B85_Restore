uint64_t copy_to_prebuf(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = bn_copy_words((a3 + 8 * a4 * a2), a2, a1);
  if (!result)
  {
    copy_to_prebuf_cold_1();
  }

  return result;
}

uint64_t copy_from_prebuf(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v10 = a2;
  result = bn_wexpand(a1, a2);
  if (result)
  {
    v12 = 8 * v10;
    if (a2)
    {
      bzero(*a1, v12);
    }

    v13 = 0;
    do
    {
      if (a2 >= 1)
      {
        v14 = 0;
        v15 = *a1;
        do
        {
          v15[v14] |= *(a3 + v14 * 8) & ((((v13 ^ a4) - 1) & ~(v13 ^ a4)) >> 63);
          ++v14;
        }

        while (a2 != v14);
      }

      ++v13;
      a3 += v12;
    }

    while (!(v13 >> a5));
    *(a1 + 8) = a2;
    return 1;
  }

  return result;
}

int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  neg = a->neg;
  if (neg == b->neg)
  {
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = neg == 0;
  if (neg)
  {
    v7 = b;
  }

  else
  {
    v7 = a;
  }

  if (v6)
  {
    v8 = b;
  }

  else
  {
    v8 = a;
  }

  if (BN_ucmp(v7, v8) < 0)
  {
    result = bn_usub_consttime(r, v8, v7);
    if (!result)
    {
      return result;
    }

    neg = 1;
    goto LABEL_15;
  }

  v9 = bn_usub_consttime(r, v7, v8);
  neg = 0;
  result = 0;
  if (v9)
  {
LABEL_15:
    bn_set_minimal_width(r);
    result = 1;
LABEL_16:
    r->neg = neg;
  }

  return result;
}

int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  result = bn_usub_consttime(r, a, b);
  if (result)
  {
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
}

uint64_t bn_uadd_consttime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a3 + 8);
  if (v4 >= v5)
  {
    v6 = a3;
  }

  else
  {
    v6 = a2;
  }

  if (v4 >= v5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(v7 + 8);
  v9 = *(v6 + 8);
  result = bn_wexpand(a1, v8 + 1);
  if (result)
  {
    *(a1 + 8) = v8 + 1;
    v11 = bn_add_words(*a1, *v7, *v6, v9);
    if (v9 >= v8)
    {
      v16 = *a1;
    }

    else
    {
      v12 = 8 * v9;
      v13 = v8 - v9;
      do
      {
        if (v11 >= 2)
        {
          bn_uadd_consttime_cold_1();
        }

        v14 = *(*v7 + v12);
        v15 = v14 + v11;
        v11 = __CFADD__(v14, v11);
        v16 = *a1;
        *(*a1 + v12) = v15;
        v12 += 8;
        --v13;
      }

      while (v13);
    }

    v16[v8] = v11;
    return 1;
  }

  return result;
}

int BN_add_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    goto LABEL_16;
  }

  v2 = w;
  if (!BN_is_zero(a))
  {
    if (a->neg)
    {
      a->neg = 0;
      LODWORD(v2) = BN_sub_word(a, v2);
      if (!BN_is_zero(a))
      {
        a->neg = a->neg == 0;
      }

      return v2;
    }

    v5 = 0;
    top = a->top;
    while ((top & ~(top >> 31)) != v5)
    {
      v7 = a->d[v5];
      v8 = __CFADD__(v7, v2);
      a->d[v5++] = v7 + v2;
      v2 = 1;
      if (!v8)
      {
        return v2;
      }
    }

    if ((top & 0x80000000) == 0)
    {
      if (!bn_wexpand(&a->d, top + 1))
      {
        LODWORD(v2) = 0;
        return v2;
      }

      ++a->top;
      a->d[top] = v2;
    }

LABEL_16:
    LODWORD(v2) = 1;
    return v2;
  }

  return BN_set_word(a, v2);
}

int BN_sub_word(BIGNUM *a, unint64_t w)
{
  if (!w)
  {
    return 1;
  }

  v2 = w;
  if (BN_is_zero(a))
  {
    v4 = BN_set_word(a, v2);
    if (v4)
    {
      BN_set_negative(a, 1);
    }

    return v4;
  }

  if (a->neg)
  {
    a->neg = 0;
    result = BN_add_word(a, v2);
    a->neg = 1;
    return result;
  }

  v6 = bn_minimal_width(a);
  d = a->d;
  v8 = *a->d;
  if (v6 != 1 || v8 >= v2)
  {
    v9 = 0;
    v10 = v8 - v2;
    if (v8 < v2)
    {
      v2 = 1;
      do
      {
        *d = v10;
        v11 = d[1];
        ++d;
        v8 = v11;
        ++v9;
        v10 = -1;
      }

      while (!v11);
    }

    v12 = v8 - v2;
    *d = v12;
    if (!v12 && v9 == a->top - 1)
    {
      a->top = v9;
    }

    return 1;
  }

  *d = v2 - v8;
  v4 = 1;
  a->neg = 1;
  return v4;
}

int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  v3 = b;
  neg = b->neg;
  if (a->neg)
  {
    if (neg)
    {
      v6 = a;
      goto LABEL_10;
    }

    v7 = 1;
LABEL_7:
    result = bn_uadd_consttime(r, a, b);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (neg)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = b;
  v3 = a;
LABEL_10:
  if (BN_ucmp(v3, v6) < 0)
  {
    result = bn_usub_consttime(r, v6, v3);
    if (!result)
    {
      return result;
    }

    v7 = 1;
    goto LABEL_15;
  }

  v9 = bn_usub_consttime(r, v3, v6);
  v7 = 0;
  result = 0;
  if (v9)
  {
LABEL_15:
    bn_set_minimal_width(r);
    r->neg = v7;
    return 1;
  }

  return result;
}

uint64_t bn_usub_consttime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a2 + 8);
  if (v6 > v7)
  {
    if (!bn_fits_in_words(a3, v7))
    {
      v16 = 229;
      goto LABEL_16;
    }

    v7 = *(a2 + 8);
    v6 = v7;
  }

  result = bn_wexpand(a1, v7);
  if (!result)
  {
    return result;
  }

  v9 = bn_sub_words(*a1, *a2, *a3, v6);
  v10 = *(a2 + 8);
  v11 = v10 - v6;
  if (v10 > v6)
  {
    v12 = 8 * v6;
    do
    {
      if (v9 >= 2)
      {
        bn_usub_consttime_cold_1();
      }

      v13 = *(*a2 + v12);
      v14 = v13 >= v9;
      v15 = v13 - v9;
      v9 = !v14;
      *(*a1 + v12) = v15;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  if (!v9)
  {
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    return 1;
  }

  v16 = 245;
LABEL_16:
  ERR_put_error(3, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/add.c.inc", v16);
  return 0;
}

BIGNUM *__cdecl BN_mod_sqrt(BIGNUM *ret, const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
{
  if (!BN_is_odd(n) || BN_abs_is_word(n, 1))
  {
    if (!BN_abs_is_word(n, 2))
    {
      ERR_put_error(3, 0, 114, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/sqrt.c.inc", 88);
      return 0;
    }

    v8 = ret;
    if (ret || (v8 = BN_new()) != 0)
    {
      is_bit_set = BN_is_bit_set(a, 0);
      goto LABEL_13;
    }

LABEL_14:
    if (v8 != ret)
    {
      BN_free(v8);
    }

    return 0;
  }

  if (!BN_is_zero(a) && !BN_is_one(a))
  {
    BN_CTX_start(ctx);
    v11 = BN_CTX_get(ctx);
    v12 = BN_CTX_get(ctx);
    v13 = BN_CTX_get(ctx);
    v14 = BN_CTX_get(ctx);
    v15 = BN_CTX_get(ctx);
    v16 = BN_CTX_get(ctx);
    if (!v16)
    {
LABEL_62:
      v8 = 0;
      goto LABEL_63;
    }

    v17 = v16;
    r = v12;
    v8 = ret;
    if (!ret)
    {
      v8 = BN_new();
      if (!v8)
      {
        goto LABEL_60;
      }
    }

    if (!BN_nnmod(v11, a, n, ctx))
    {
      goto LABEL_60;
    }

    v18 = 0;
    do
    {
      ++v18;
    }

    while (!BN_is_bit_set(n, v18));
    if (v18 == 2)
    {
      if (!bn_mod_lshift1_consttime(v14, v11, n, ctx))
      {
        goto LABEL_60;
      }

      if (!BN_rshift(v13, n, 3))
      {
        goto LABEL_60;
      }

      v13->neg = 0;
      if (!BN_mod_exp_mont(r, v14, v13, n, ctx, 0) || !BN_mod_sqr(v17, r, n, ctx) || !BN_mod_mul(v14, v14, v17, n, ctx) || !BN_sub_word(v14, 1uLL) || !BN_mod_mul(v15, v11, r, n, ctx) || !BN_mod_mul(v15, v15, v14, n, ctx))
      {
        goto LABEL_60;
      }

      v21 = v8;
LABEL_41:
      if (!BN_copy(v21, v15))
      {
        goto LABEL_60;
      }

      goto LABEL_29;
    }

    if (v18 == 1)
    {
      if (BN_rshift(v13, n, 2))
      {
        v13->neg = 0;
        if (BN_add_word(v13, 1uLL))
        {
          if (BN_mod_exp_mont(v8, v11, v13, n, ctx, 0))
          {
LABEL_29:
            if (!BN_mod_sqr(v15, v8, n, ctx))
            {
              goto LABEL_60;
            }

            if (!BN_cmp(v15, v11))
            {
LABEL_63:
              BN_CTX_end(ctx);
              return v8;
            }

            v19 = 110;
            v20 = 409;
            goto LABEL_59;
          }
        }
      }

LABEL_60:
      if (v8 != ret)
      {
        BN_clear_free(v8);
      }

      goto LABEL_62;
    }

    if (!BN_copy(v13, n))
    {
      goto LABEL_60;
    }

    aa = v15;
    v13->neg = 0;
    v22 = 2;
    while (1)
    {
      if (v22 <= 0x15)
      {
        goto LABEL_50;
      }

      v23 = BN_num_bits(n);
      if (!BN_pseudo_rand(v17, v23, 0, 0) || (BN_ucmp(v17, n) & 0x80000000) == 0 && BN_usub(v17, v17, n))
      {
        goto LABEL_60;
      }

      if (BN_is_zero(v17))
      {
LABEL_50:
        if (!BN_set_word(v17, v22))
        {
          goto LABEL_60;
        }
      }

      v24 = bn_jacobi(v17, v13, ctx);
      if (v24 < -1)
      {
        goto LABEL_60;
      }

      if (v24 != 1)
      {
        break;
      }

      if (++v22 == 82)
      {
        goto LABEL_58;
      }
    }

    if (v24 != -1)
    {
      if (!v24)
      {
        v19 = 114;
        v20 = 257;
        goto LABEL_59;
      }

LABEL_58:
      v19 = 115;
      v20 = 267;
      goto LABEL_59;
    }

    if (!BN_rshift(v13, v13, v18) || !BN_mod_exp_mont(v17, v17, v13, n, ctx, 0))
    {
      goto LABEL_60;
    }

    if (BN_is_one(v17))
    {
      v19 = 114;
      v20 = 282;
LABEL_59:
      ERR_put_error(3, 0, v19, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/sqrt.c.inc", v20);
      goto LABEL_60;
    }

    if (!BN_rshift1(v14, v13))
    {
      goto LABEL_60;
    }

    if (BN_is_zero(v14))
    {
      if (!BN_nnmod(v14, v11, n, ctx))
      {
        goto LABEL_60;
      }

      if (!BN_is_zero(v14))
      {
        if (!BN_one(aa))
        {
          goto LABEL_60;
        }

LABEL_77:
        if (BN_mod_sqr(r, aa, n, ctx) && BN_mod_mul(r, r, v11, n, ctx))
        {
          v25 = aa;
          v26 = aa;
          for (i = v11; BN_mod_mul(v25, v26, i, n, ctx); i = v17)
          {
            if (BN_is_one(r))
            {
              v21 = v8;
              v15 = aa;
              goto LABEL_41;
            }

            v28 = v18 - 2;
            if (v18 < 2)
            {
LABEL_98:
              v19 = 110;
              v20 = 377;
              goto LABEL_59;
            }

            v29 = v18 - 1;
            v18 = 1;
            while (1)
            {
              if (v18 == 1)
              {
                if (!BN_mod_sqr(v14, r, n, ctx))
                {
                  goto LABEL_60;
                }
              }

              else if (!BN_mod_mul(v14, v14, v14, n, ctx))
              {
                goto LABEL_60;
              }

              if (BN_is_one(v14))
              {
                break;
              }

              ++v18;
              --v28;
              --v29;
              if (v28 == -1)
              {
                goto LABEL_98;
              }
            }

            if (!BN_copy(v14, v17))
            {
              goto LABEL_60;
            }

            if (v28 >= 1)
            {
              while (BN_mod_sqr(v14, v14, n, ctx))
              {
                if (--v29 < 2)
                {
                  goto LABEL_95;
                }
              }

              goto LABEL_60;
            }

LABEL_95:
            if (!BN_mod_mul(v17, v14, v14, n, ctx) || !BN_mod_mul(aa, aa, v14, n, ctx))
            {
              goto LABEL_60;
            }

            v25 = r;
            v26 = r;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!BN_mod_exp_mont(aa, v11, v14, n, ctx, 0))
      {
        goto LABEL_60;
      }

      if (!BN_is_zero(aa))
      {
        goto LABEL_77;
      }
    }

    BN_zero(v8);
    goto LABEL_63;
  }

  v8 = ret;
  if (!ret)
  {
    v8 = BN_new();
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  is_bit_set = BN_is_one(a);
LABEL_13:
  if (!BN_set_word(v8, is_bit_set))
  {
    goto LABEL_14;
  }

  return v8;
}

void *bn_mul_comba8(void *result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a2;
  v3 = (*a3 * v5) >> 64;
  *result = *a3 * *a2;
  v6 = a2[1];
  v8 = *a3;
  v7 = a3[1];
  v9 = (__PAIR128__(v7, v4) * v5) >> 64;
  if (__CFADD__(v7 * *a2, v3))
  {
    v10 = ((v7 * *a2) >> 64) + 1;
  }

  else
  {
    v10 = (v7 * *a2) >> 64;
  }

  v11 = (v8 * v6) >> 64;
  v12 = v8 * v6;
  v13 = __CFADD__(v12, v9);
  v14 = v12 + v9;
  if (v13)
  {
    v15 = v11 + 1;
  }

  else
  {
    v15 = v11;
  }

  result[1] = v14;
  v16 = a2[2];
  v17 = a3[1];
  v18 = (*a3 * v16) >> 64;
  v19 = *a3 * v16;
  v13 = __CFADD__(v19, v15 + v10);
  v20 = v19 + v15 + v10;
  if (v13)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = v18;
  }

  v13 = __CFADD__(__CFADD__(v15, v10), v21);
  v22 = __CFADD__(v15, v10) + v21;
  v23 = v13;
  v25 = *a2;
  v24 = a2[1];
  v26 = (v17 * v24) >> 64;
  v27 = v17 * v24;
  v13 = __CFADD__(v20, v27);
  v28 = v20 + v27;
  if (v13)
  {
    v29 = v26 + 1;
  }

  else
  {
    v29 = v26;
  }

  v13 = __CFADD__(v22, v29);
  v30 = v22 + v29;
  v31 = v13;
  v32 = a3[2];
  v33 = (v32 * v25) >> 64;
  v34 = v32 * v25;
  v13 = __CFADD__(v28, v34);
  v35 = v28 + v34;
  if (v13)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v13 = __CFADD__(v30, v36);
  v37 = v30 + v36;
  v38 = v23 + v13 + v31;
  result[2] = v35;
  v39 = a2[1];
  v41 = a3[2];
  v40 = a3[3];
  v42 = v40 * *a2;
  v13 = __CFADD__(v42, v37);
  v43 = v42 + v37;
  if (v13)
  {
    v44 = ((v40 * *a2) >> 64) + 1;
  }

  else
  {
    v44 = (v40 * *a2) >> 64;
  }

  v45 = v38 + v44;
  v46 = (v41 * v39) >> 64;
  v47 = v41 * v39;
  v13 = __CFADD__(v43, v47);
  v48 = v43 + v47;
  if (v13)
  {
    v49 = v46 + 1;
  }

  else
  {
    v49 = v46;
  }

  v13 = __CFADD__(v45, v49);
  v50 = v45 + v49;
  v51 = v13;
  if (__CFADD__(v38, v44))
  {
    v52 = v51 + 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = a2[2];
  v54 = a2[3];
  v56 = *a3;
  v55 = a3[1];
  v57 = (v55 * v53) >> 64;
  v58 = v55 * v53;
  v13 = __CFADD__(v48, v58);
  v59 = v48 + v58;
  if (v13)
  {
    v60 = v57 + 1;
  }

  else
  {
    v60 = v57;
  }

  v13 = __CFADD__(v50, v60);
  v61 = v50 + v60;
  v62 = v13;
  v63 = (v56 * v54) >> 64;
  v64 = v56 * v54;
  v13 = __CFADD__(v59, v64);
  v65 = v59 + v64;
  if (v13)
  {
    v66 = v63 + 1;
  }

  else
  {
    v66 = v63;
  }

  v67 = __PAIR128__(v52, v61) + __PAIR128__(v62, v66);
  result[3] = v65;
  v68 = a3[1];
  v69 = *a3 * a2[4] + v67;
  v70 = *(&v67 + 1) + v67;
  v71 = __CFADD__(*(&v67 + 1), v67);
  v73 = a2[2];
  v72 = a2[3];
  v74 = (v68 * v72) >> 64;
  v75 = v68 * v72;
  v13 = __CFADD__(v69, v75);
  v76 = v69 + v75;
  if (v13)
  {
    v77 = v74 + 1;
  }

  else
  {
    v77 = v74;
  }

  v13 = __CFADD__(v70, v77);
  v78 = v70 + v77;
  v79 = v13;
  v80 = a3[2];
  v81 = a3[3];
  v82 = (v80 * v73) >> 64;
  v83 = v80 * v73;
  v13 = __CFADD__(v76, v83);
  v84 = v76 + v83;
  if (v13)
  {
    v85 = v82 + 1;
  }

  else
  {
    v85 = v82;
  }

  v13 = __CFADD__(v78, v85);
  v86 = v78 + v85;
  v87 = v71 + v13 + v79;
  v89 = *a2;
  v88 = a2[1];
  v90 = (v81 * v88) >> 64;
  v91 = v81 * v88;
  v13 = __CFADD__(v84, v91);
  v92 = v84 + v91;
  if (v13)
  {
    v93 = v90 + 1;
  }

  else
  {
    v93 = v90;
  }

  v13 = __CFADD__(v86, v93);
  v94 = v86 + v93;
  v95 = v13;
  v96 = a3[4];
  v97 = (v96 * v89) >> 64;
  v98 = v96 * v89;
  v13 = __CFADD__(v92, v98);
  v99 = v92 + v98;
  if (v13)
  {
    v100 = v97 + 1;
  }

  else
  {
    v100 = v97;
  }

  v101 = __PAIR128__(v87, v94) + __PAIR128__(v95, v100);
  result[4] = v99;
  v102 = a2[1];
  v104 = a3[4];
  v103 = a3[5];
  v105 = v103 * *a2;
  v13 = __CFADD__(v105, v101);
  v106 = v105 + v101;
  if (v13)
  {
    v107 = ((v103 * *a2) >> 64) + 1;
  }

  else
  {
    v107 = (v103 * *a2) >> 64;
  }

  v108 = *(&v101 + 1) + v101;
  v109 = (v104 * v102) >> 64;
  v110 = v104 * v102;
  v13 = __CFADD__(v106, v110);
  v111 = v106 + v110;
  if (v13)
  {
    v112 = v109 + 1;
  }

  else
  {
    v112 = v109;
  }

  v13 = __CFADD__(v108, v112);
  v113 = v108 + v112;
  v114 = v13;
  if (__CFADD__(*(&v101 + 1), v101))
  {
    v115 = v114 + 1;
  }

  else
  {
    v115 = v114;
  }

  v116 = a2[2];
  v117 = a2[3];
  v119 = a3[2];
  v118 = a3[3];
  v120 = (v118 * v116) >> 64;
  v121 = v118 * v116;
  v13 = __CFADD__(v111, v121);
  v122 = v111 + v121;
  if (v13)
  {
    v123 = v120 + 1;
  }

  else
  {
    v123 = v120;
  }

  v13 = __CFADD__(v113, v123);
  v124 = v113 + v123;
  v125 = v13;
  v126 = (v119 * v117) >> 64;
  v127 = v119 * v117;
  v13 = __CFADD__(v122, v127);
  v128 = v122 + v127;
  if (v13)
  {
    v129 = v126 + 1;
  }

  else
  {
    v129 = v126;
  }

  v130 = __PAIR128__(v115, v124) + __PAIR128__(v125, v129);
  v131 = a2[4];
  v132 = a2[5];
  v134 = *a3;
  v133 = a3[1];
  v135 = (v133 * v131) >> 64;
  v136 = v133 * v131;
  v13 = __CFADD__(v128, v136);
  v137 = v128 + v136;
  if (v13)
  {
    v138 = v135 + 1;
  }

  else
  {
    v138 = v135;
  }

  v139 = __CFADD__(v130, v138);
  v140 = (v134 * v132) >> 64;
  v141 = v134 * v132;
  v13 = __CFADD__(v137, v141);
  v142 = v137 + v141;
  if (v13)
  {
    v143 = v140 + 1;
  }

  else
  {
    v143 = v140;
  }

  v144 = v130 + __PAIR128__(v139, v143);
  result[5] = v142;
  v145 = a3[1];
  v146 = *a3 * a2[6] + v144;
  v147 = *(&v144 + 1) + v144;
  v148 = __CFADD__(*(&v144 + 1), v144);
  v150 = a2[4];
  v149 = a2[5];
  v151 = (v145 * v149) >> 64;
  v152 = v145 * v149;
  v13 = __CFADD__(v146, v152);
  v153 = v146 + v152;
  if (v13)
  {
    v154 = v151 + 1;
  }

  else
  {
    v154 = v151;
  }

  v13 = __CFADD__(v147, v154);
  v155 = v147 + v154;
  v156 = v13;
  v157 = a3[2];
  v158 = a3[3];
  v159 = (v157 * v150) >> 64;
  v160 = v157 * v150;
  v13 = __CFADD__(v153, v160);
  v161 = v153 + v160;
  if (v13)
  {
    v162 = v159 + 1;
  }

  else
  {
    v162 = v159;
  }

  v13 = __CFADD__(v155, v162);
  v163 = v155 + v162;
  v164 = v148 + v13 + v156;
  v166 = a2[2];
  v165 = a2[3];
  v167 = (v158 * v165) >> 64;
  v168 = v158 * v165;
  v13 = __CFADD__(v161, v168);
  v169 = v161 + v168;
  if (v13)
  {
    v170 = v167 + 1;
  }

  else
  {
    v170 = v167;
  }

  v13 = __CFADD__(v163, v170);
  v171 = v163 + v170;
  v172 = v13;
  v173 = a3[4];
  v174 = a3[5];
  v175 = (v173 * v166) >> 64;
  v176 = v173 * v166;
  v13 = __CFADD__(v169, v176);
  v177 = v169 + v176;
  if (v13)
  {
    v178 = v175 + 1;
  }

  else
  {
    v178 = v175;
  }

  v179 = __PAIR128__(v164, v171) + __PAIR128__(v172, v178);
  v181 = *a2;
  v180 = a2[1];
  v182 = (v174 * v180) >> 64;
  v183 = v174 * v180;
  v13 = __CFADD__(v177, v183);
  v184 = v177 + v183;
  if (v13)
  {
    v185 = v182 + 1;
  }

  else
  {
    v185 = v182;
  }

  v186 = __CFADD__(v179, v185);
  v187 = a3[6];
  v188 = (v187 * v181) >> 64;
  v189 = v187 * v181;
  v13 = __CFADD__(v184, v189);
  v190 = v184 + v189;
  if (v13)
  {
    v191 = v188 + 1;
  }

  else
  {
    v191 = v188;
  }

  v192 = v179 + __PAIR128__(v186, v191);
  result[6] = v190;
  v193 = a2[1];
  v195 = a3[6];
  v194 = a3[7];
  v196 = v194 * *a2;
  v13 = __CFADD__(v196, v192);
  v197 = v196 + v192;
  if (v13)
  {
    v198 = ((v194 * *a2) >> 64) + 1;
  }

  else
  {
    v198 = (v194 * *a2) >> 64;
  }

  v199 = *(&v192 + 1) + v192;
  v200 = (v195 * v193) >> 64;
  v201 = v195 * v193;
  v13 = __CFADD__(v197, v201);
  v202 = v197 + v201;
  if (v13)
  {
    v203 = v200 + 1;
  }

  else
  {
    v203 = v200;
  }

  v13 = __CFADD__(v199, v203);
  v204 = v199 + v203;
  v205 = v13;
  if (__CFADD__(*(&v192 + 1), v192))
  {
    v206 = v205 + 1;
  }

  else
  {
    v206 = v205;
  }

  v207 = a2[2];
  v208 = a2[3];
  v210 = a3[4];
  v209 = a3[5];
  v211 = (v209 * v207) >> 64;
  v212 = v209 * v207;
  v13 = __CFADD__(v202, v212);
  v213 = v202 + v212;
  if (v13)
  {
    v214 = v211 + 1;
  }

  else
  {
    v214 = v211;
  }

  v13 = __CFADD__(v204, v214);
  v215 = v204 + v214;
  v216 = v13;
  v217 = (v210 * v208) >> 64;
  v218 = v210 * v208;
  v13 = __CFADD__(v213, v218);
  v219 = v213 + v218;
  if (v13)
  {
    v220 = v217 + 1;
  }

  else
  {
    v220 = v217;
  }

  v221 = __PAIR128__(v206, v215) + __PAIR128__(v216, v220);
  v222 = a2[4];
  v223 = a2[5];
  v225 = a3[2];
  v224 = a3[3];
  v226 = (v224 * v222) >> 64;
  v227 = v224 * v222;
  v13 = __CFADD__(v219, v227);
  v228 = v219 + v227;
  if (v13)
  {
    v229 = v226 + 1;
  }

  else
  {
    v229 = v226;
  }

  v230 = __CFADD__(v221, v229);
  v231 = (v225 * v223) >> 64;
  v232 = v225 * v223;
  v13 = __CFADD__(v228, v232);
  v233 = v228 + v232;
  if (v13)
  {
    v234 = v231 + 1;
  }

  else
  {
    v234 = v231;
  }

  v235 = v221 + __PAIR128__(v230, v234);
  v236 = a2[6];
  v237 = a2[7];
  v239 = *a3;
  v238 = a3[1];
  v240 = (v238 * v236) >> 64;
  v241 = v238 * v236;
  v13 = __CFADD__(v233, v241);
  v242 = v233 + v241;
  if (v13)
  {
    v243 = v240 + 1;
  }

  else
  {
    v243 = v240;
  }

  v244 = __CFADD__(v235, v243);
  v245 = (v239 * v237) >> 64;
  v246 = v239 * v237;
  v13 = __CFADD__(v242, v246);
  v247 = v242 + v246;
  if (v13)
  {
    v248 = v245 + 1;
  }

  else
  {
    v248 = v245;
  }

  v249 = v235 + __PAIR128__(v244, v248);
  result[7] = v247;
  v250 = a3[2];
  v251 = a3[1] * a2[7] + v249;
  v252 = *(&v249 + 1) + v249;
  v253 = __CFADD__(*(&v249 + 1), v249);
  v255 = a2[5];
  v254 = a2[6];
  v256 = (v250 * v254) >> 64;
  v257 = v250 * v254;
  v13 = __CFADD__(v251, v257);
  v258 = v251 + v257;
  if (v13)
  {
    v259 = v256 + 1;
  }

  else
  {
    v259 = v256;
  }

  v13 = __CFADD__(v252, v259);
  v260 = v252 + v259;
  v261 = v13;
  v262 = a3[3];
  v263 = a3[4];
  v264 = (v262 * v255) >> 64;
  v265 = v262 * v255;
  v13 = __CFADD__(v258, v265);
  v266 = v258 + v265;
  if (v13)
  {
    v267 = v264 + 1;
  }

  else
  {
    v267 = v264;
  }

  v13 = __CFADD__(v260, v267);
  v268 = v260 + v267;
  v269 = v253 + v13 + v261;
  v271 = a2[3];
  v270 = a2[4];
  v272 = (v263 * v270) >> 64;
  v273 = v263 * v270;
  v13 = __CFADD__(v266, v273);
  v274 = v266 + v273;
  if (v13)
  {
    v275 = v272 + 1;
  }

  else
  {
    v275 = v272;
  }

  v13 = __CFADD__(v268, v275);
  v276 = v268 + v275;
  v277 = v13;
  v278 = a3[5];
  v279 = a3[6];
  v280 = (v278 * v271) >> 64;
  v281 = v278 * v271;
  v13 = __CFADD__(v274, v281);
  v282 = v274 + v281;
  if (v13)
  {
    v283 = v280 + 1;
  }

  else
  {
    v283 = v280;
  }

  v284 = __PAIR128__(v269, v276) + __PAIR128__(v277, v283);
  v286 = a2[1];
  v285 = a2[2];
  v287 = (v279 * v285) >> 64;
  v288 = v279 * v285;
  v13 = __CFADD__(v282, v288);
  v289 = v282 + v288;
  if (v13)
  {
    v290 = v287 + 1;
  }

  else
  {
    v290 = v287;
  }

  v291 = __CFADD__(v284, v290);
  v292 = a3[7];
  v293 = (v292 * v286) >> 64;
  v294 = v292 * v286;
  v13 = __CFADD__(v289, v294);
  v295 = v289 + v294;
  if (v13)
  {
    v296 = v293 + 1;
  }

  else
  {
    v296 = v293;
  }

  v297 = v284 + __PAIR128__(v291, v296);
  result[8] = v295;
  v298 = a2[3];
  v299 = a3[6];
  v300 = a3[7] * a2[2] + v297;
  v301 = *(&v297 + 1) + v297;
  v302 = (v299 * v298) >> 64;
  v303 = v299 * v298;
  v13 = __CFADD__(v300, v303);
  v304 = v300 + v303;
  if (v13)
  {
    v305 = v302 + 1;
  }

  else
  {
    v305 = v302;
  }

  v13 = __CFADD__(v301, v305);
  v306 = v301 + v305;
  v307 = v13;
  if (__CFADD__(*(&v297 + 1), v297))
  {
    v308 = v307 + 1;
  }

  else
  {
    v308 = v307;
  }

  v309 = a2[4];
  v310 = a2[5];
  v312 = a3[4];
  v311 = a3[5];
  v313 = (v311 * v309) >> 64;
  v314 = v311 * v309;
  v13 = __CFADD__(v304, v314);
  v315 = v304 + v314;
  if (v13)
  {
    v316 = v313 + 1;
  }

  else
  {
    v316 = v313;
  }

  v13 = __CFADD__(v306, v316);
  v317 = v306 + v316;
  v318 = v13;
  v319 = (v312 * v310) >> 64;
  v320 = v312 * v310;
  v13 = __CFADD__(v315, v320);
  v321 = v315 + v320;
  if (v13)
  {
    v322 = v319 + 1;
  }

  else
  {
    v322 = v319;
  }

  v323 = __PAIR128__(v308, v317) + __PAIR128__(v318, v322);
  v324 = a2[6];
  v325 = a2[7];
  v327 = a3[2];
  v326 = a3[3];
  v328 = (v326 * v324) >> 64;
  v329 = v326 * v324;
  v13 = __CFADD__(v321, v329);
  v330 = v321 + v329;
  if (v13)
  {
    v331 = v328 + 1;
  }

  else
  {
    v331 = v328;
  }

  v332 = __CFADD__(v323, v331);
  v333 = (v327 * v325) >> 64;
  v334 = v327 * v325;
  v13 = __CFADD__(v330, v334);
  v335 = v330 + v334;
  if (v13)
  {
    v336 = v333 + 1;
  }

  else
  {
    v336 = v333;
  }

  v337 = v323 + __PAIR128__(v332, v336);
  result[9] = v335;
  v338 = a3[4];
  v339 = a3[3] * a2[7] + v337;
  v340 = *(&v337 + 1) + v337;
  v341 = __CFADD__(*(&v337 + 1), v337);
  v343 = a2[5];
  v342 = a2[6];
  v344 = (v338 * v342) >> 64;
  v345 = v338 * v342;
  v13 = __CFADD__(v339, v345);
  v346 = v339 + v345;
  if (v13)
  {
    v347 = v344 + 1;
  }

  else
  {
    v347 = v344;
  }

  v13 = __CFADD__(v340, v347);
  v348 = v340 + v347;
  v349 = v13;
  v350 = a3[5];
  v351 = a3[6];
  v352 = (v350 * v343) >> 64;
  v353 = v350 * v343;
  v13 = __CFADD__(v346, v353);
  v354 = v346 + v353;
  if (v13)
  {
    v355 = v352 + 1;
  }

  else
  {
    v355 = v352;
  }

  v13 = __CFADD__(v348, v355);
  v356 = v348 + v355;
  v357 = v341 + v13 + v349;
  v359 = a2[3];
  v358 = a2[4];
  v360 = (v351 * v358) >> 64;
  v361 = v351 * v358;
  v13 = __CFADD__(v354, v361);
  v362 = v354 + v361;
  if (v13)
  {
    v363 = v360 + 1;
  }

  else
  {
    v363 = v360;
  }

  v13 = __CFADD__(v356, v363);
  v364 = v356 + v363;
  v365 = v13;
  v366 = a3[7];
  v367 = (v366 * v359) >> 64;
  v368 = v366 * v359;
  v13 = __CFADD__(v362, v368);
  v369 = v362 + v368;
  if (v13)
  {
    v370 = v367 + 1;
  }

  else
  {
    v370 = v367;
  }

  v371 = __PAIR128__(v357, v364) + __PAIR128__(v365, v370);
  result[10] = v369;
  v372 = a2[5];
  v373 = a3[6];
  v374 = a3[7] * a2[4] + v371;
  v375 = *(&v371 + 1) + v371;
  v376 = (v373 * v372) >> 64;
  v377 = v373 * v372;
  v13 = __CFADD__(v374, v377);
  v378 = v374 + v377;
  if (v13)
  {
    v379 = v376 + 1;
  }

  else
  {
    v379 = v376;
  }

  v13 = __CFADD__(v375, v379);
  v380 = v375 + v379;
  v381 = v13;
  v382 = a2[6];
  v383 = a2[7];
  v385 = a3[4];
  v384 = a3[5];
  v386 = (v384 * v382) >> 64;
  v387 = v384 * v382;
  if (__CFADD__(*(&v371 + 1), v371))
  {
    ++v381;
  }

  v13 = __CFADD__(v378, v387);
  v388 = v378 + v387;
  if (v13)
  {
    v389 = v386 + 1;
  }

  else
  {
    v389 = v386;
  }

  v13 = __CFADD__(v380, v389);
  v390 = v380 + v389;
  v391 = v13;
  v392 = (v385 * v383) >> 64;
  v393 = v385 * v383;
  v13 = __CFADD__(v388, v393);
  v394 = v388 + v393;
  if (v13)
  {
    v395 = v392 + 1;
  }

  else
  {
    v395 = v392;
  }

  v396 = __PAIR128__(v381, v390) + __PAIR128__(v391, v395);
  result[11] = v394;
  v397 = a3[6];
  v398 = a3[5] * a2[7] + v396;
  v399 = *(&v396 + 1) + v396;
  v400 = __CFADD__(*(&v396 + 1), v396);
  v402 = a2[5];
  v401 = a2[6];
  v403 = (v397 * v401) >> 64;
  v404 = v397 * v401;
  v13 = __CFADD__(v398, v404);
  v405 = v398 + v404;
  if (v13)
  {
    v406 = v403 + 1;
  }

  else
  {
    v406 = v403;
  }

  v13 = __CFADD__(v399, v406);
  v407 = v399 + v406;
  v408 = v13;
  v409 = a3[7];
  v410 = (v409 * v402) >> 64;
  v411 = v409 * v402;
  v13 = __CFADD__(v405, v411);
  v412 = v405 + v411;
  if (v13)
  {
    v413 = v410 + 1;
  }

  else
  {
    v413 = v410;
  }

  v13 = __CFADD__(v407, v413);
  v414 = v407 + v413;
  v415 = v400 + v13 + v408;
  result[12] = v412;
  v416 = a2[6];
  v417 = a2[7];
  v419 = a3[6];
  v418 = a3[7];
  v420 = (v418 * v416) >> 64;
  v421 = v418 * v416;
  v13 = __CFADD__(v421, v414);
  v422 = v421 + v414;
  if (v13)
  {
    v423 = v420 + 1;
  }

  else
  {
    v423 = v420;
  }

  v424 = v415 + v423;
  v425 = (v419 * v417) >> 64;
  v426 = v419 * v417;
  v13 = __CFADD__(v422, v426);
  v427 = v422 + v426;
  if (v13)
  {
    v428 = v425 + 1;
  }

  else
  {
    v428 = v425;
  }

  v13 = __CFADD__(v424, v428);
  v429 = v424 + v428;
  v430 = v13;
  result[13] = v427;
  v431 = a2[7];
  v432 = a3[7];
  v433 = (v432 * v431) >> 64;
  v434 = v432 * v431;
  v13 = __CFADD__(v434, v429);
  v435 = v434 + v429;
  if (v13)
  {
    v436 = v433 + 1;
  }

  else
  {
    v436 = v433;
  }

  result[14] = v435;
  result[15] = v430 + __CFADD__(v415, v423) + v436;
  return result;
}

void *bn_sqr_comba8(void *result, unint64_t *a2)
{
  v2 = (*a2 * *a2) >> 64;
  *result = *a2 * *a2;
  v3 = a2[1];
  v4 = (*a2 * v3) >> 64;
  v5 = *a2 * v3;
  v6 = __CFADD__(v5, v2);
  v7 = v5 + v2;
  if (v6)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  v6 = __CFADD__(v7, v5);
  v9 = v7 + v5;
  if (v6)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  result[1] = v9;
  v12 = *a2;
  v11 = a2[1];
  v13 = (v11 * v11) >> 64;
  v14 = v11 * v11;
  v6 = __CFADD__(v14, v10 + v8);
  v15 = v14 + v10 + v8;
  if (v6)
  {
    v16 = v13 + 1;
  }

  else
  {
    v16 = v13;
  }

  v6 = __CFADD__(__CFADD__(v10, v8), v16);
  v17 = __CFADD__(v10, v8) + v16;
  v18 = v6;
  v19 = a2[2];
  v20 = (v12 * v19) >> 64;
  v21 = v12 * v19;
  v6 = __CFADD__(v15, v21);
  v22 = v15 + v21;
  if (v6)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v20;
  }

  v6 = __CFADD__(v17, v23);
  v24 = v17 + v23;
  v25 = v6;
  v6 = __CFADD__(v22, v21);
  v26 = v22 + v21;
  if (v6)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v20;
  }

  v6 = __CFADD__(v24, v27);
  v28 = v24 + v27;
  v29 = v18 + v6 + v25;
  result[2] = v26;
  v31 = a2[2];
  v30 = a2[3];
  v32 = a2[1];
  v33 = (*a2 * v30) >> 64;
  v34 = *a2 * v30;
  v6 = __CFADD__(v34, v28);
  v35 = v34 + v28;
  if (v6)
  {
    v36 = v33 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v29 + v36;
  v6 = __CFADD__(v35, v34);
  v38 = v35 + v34;
  if (v6)
  {
    v39 = v33 + 1;
  }

  else
  {
    v39 = v33;
  }

  v6 = __CFADD__(v37, v39);
  v40 = v37 + v39;
  v41 = v6;
  if (__CFADD__(v29, v36))
  {
    v42 = v41 + 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = (v32 * v31) >> 64;
  v44 = v32 * v31;
  v6 = __CFADD__(v38, v44);
  v45 = v38 + v44;
  if (v6)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v43;
  }

  v6 = __CFADD__(v40, v46);
  v47 = v40 + v46;
  v48 = v6;
  v6 = __CFADD__(v45, v44);
  v49 = v45 + v44;
  if (v6)
  {
    v50 = v43 + 1;
  }

  else
  {
    v50 = v43;
  }

  v51 = __PAIR128__(v42, v47) + __PAIR128__(v48, v50);
  result[3] = v49;
  v52 = a2[3];
  v53 = a2[2] * a2[2] + v51;
  v54 = *(&v51 + 1) + v51;
  v55 = __CFADD__(*(&v51 + 1), v51);
  v57 = *a2;
  v56 = a2[1];
  v58 = (v56 * v52) >> 64;
  v59 = v56 * v52;
  v6 = __CFADD__(v53, v59);
  v60 = v53 + v59;
  if (v6)
  {
    v61 = v58 + 1;
  }

  else
  {
    v61 = v58;
  }

  v6 = __CFADD__(v54, v61);
  v62 = v54 + v61;
  v63 = v6;
  v6 = __CFADD__(v60, v59);
  v64 = v60 + v59;
  if (v6)
  {
    v65 = v58 + 1;
  }

  else
  {
    v65 = v58;
  }

  v6 = __CFADD__(v62, v65);
  v66 = v62 + v65;
  v67 = v55 + v6 + v63;
  v68 = a2[4];
  v69 = (v57 * v68) >> 64;
  v70 = v57 * v68;
  v6 = __CFADD__(v64, v70);
  v71 = v64 + v70;
  if (v6)
  {
    v72 = v69 + 1;
  }

  else
  {
    v72 = v69;
  }

  v6 = __CFADD__(v66, v72);
  v73 = v66 + v72;
  v74 = v6;
  v6 = __CFADD__(v71, v70);
  v75 = v71 + v70;
  if (v6)
  {
    v76 = v69 + 1;
  }

  else
  {
    v76 = v69;
  }

  v77 = __PAIR128__(v67, v73) + __PAIR128__(v74, v76);
  result[4] = v75;
  v79 = a2[4];
  v78 = a2[5];
  v80 = a2[1];
  v81 = (*a2 * v78) >> 64;
  v82 = *a2 * v78;
  v83 = v82 + v77;
  if (__CFADD__(v82, v77))
  {
    v84 = v81 + 1;
  }

  else
  {
    v84 = v81;
  }

  v85 = *(&v77 + 1) + v84;
  v6 = __CFADD__(v83, v82);
  v86 = v83 + v82;
  if (v6)
  {
    v87 = v81 + 1;
  }

  else
  {
    v87 = v81;
  }

  v6 = __CFADD__(v85, v87);
  v88 = v85 + v87;
  v89 = v6;
  if (__CFADD__(*(&v77 + 1), v84))
  {
    v90 = v89 + 1;
  }

  else
  {
    v90 = v89;
  }

  v91 = (v80 * v79) >> 64;
  v92 = v80 * v79;
  v6 = __CFADD__(v86, v92);
  v93 = v86 + v92;
  if (v6)
  {
    v94 = v91 + 1;
  }

  else
  {
    v94 = v91;
  }

  v6 = __CFADD__(v88, v94);
  v95 = v88 + v94;
  v96 = v6;
  v6 = __CFADD__(v93, v92);
  v97 = v93 + v92;
  if (v6)
  {
    v98 = v91 + 1;
  }

  else
  {
    v98 = v91;
  }

  v99 = __PAIR128__(v90, v95) + __PAIR128__(v96, v98);
  v101 = a2[2];
  v100 = a2[3];
  v102 = (v101 * v100) >> 64;
  v103 = v101 * v100;
  v6 = __CFADD__(v97, v103);
  v104 = v97 + v103;
  if (v6)
  {
    v105 = v102 + 1;
  }

  else
  {
    v105 = v102;
  }

  v106 = __CFADD__(v99, v105);
  v6 = __CFADD__(v104, v103);
  v107 = v104 + v103;
  if (v6)
  {
    v108 = v102 + 1;
  }

  else
  {
    v108 = v102;
  }

  v109 = v99 + __PAIR128__(v106, v108);
  result[5] = v107;
  v110 = a2[2];
  v111 = a2[3] * a2[3] + v109;
  v112 = *(&v109 + 1) + v109;
  v113 = __CFADD__(*(&v109 + 1), v109);
  v114 = a2[4];
  v115 = a2[5];
  v116 = (v110 * v114) >> 64;
  v117 = v110 * v114;
  v6 = __CFADD__(v111, v117);
  v118 = v111 + v117;
  if (v6)
  {
    v119 = v116 + 1;
  }

  else
  {
    v119 = v116;
  }

  v6 = __CFADD__(v112, v119);
  v120 = v112 + v119;
  v121 = v6;
  v6 = __CFADD__(v118, v117);
  v122 = v118 + v117;
  if (v6)
  {
    v123 = v116 + 1;
  }

  else
  {
    v123 = v116;
  }

  v6 = __CFADD__(v120, v123);
  v124 = v120 + v123;
  v125 = v113 + v6 + v121;
  v127 = *a2;
  v126 = a2[1];
  v128 = (v126 * v115) >> 64;
  v129 = v126 * v115;
  v6 = __CFADD__(v122, v129);
  v130 = v122 + v129;
  if (v6)
  {
    v131 = v128 + 1;
  }

  else
  {
    v131 = v128;
  }

  v6 = __CFADD__(v124, v131);
  v132 = v124 + v131;
  v133 = v6;
  v6 = __CFADD__(v130, v129);
  v134 = v130 + v129;
  if (v6)
  {
    v135 = v128 + 1;
  }

  else
  {
    v135 = v128;
  }

  v136 = __PAIR128__(v125, v132) + __PAIR128__(v133, v135);
  v137 = a2[6];
  v138 = (v127 * v137) >> 64;
  v139 = v127 * v137;
  v6 = __CFADD__(v134, v139);
  v140 = v134 + v139;
  if (v6)
  {
    v141 = v138 + 1;
  }

  else
  {
    v141 = v138;
  }

  v142 = __CFADD__(v136, v141);
  v6 = __CFADD__(v140, v139);
  v143 = v140 + v139;
  if (v6)
  {
    v144 = v138 + 1;
  }

  else
  {
    v144 = v138;
  }

  v145 = v136 + __PAIR128__(v142, v144);
  result[6] = v143;
  v147 = a2[6];
  v146 = a2[7];
  v148 = a2[1];
  v149 = (*a2 * v146) >> 64;
  v150 = *a2 * v146;
  v151 = v150 + v145;
  if (__CFADD__(v150, v145))
  {
    v152 = v149 + 1;
  }

  else
  {
    v152 = v149;
  }

  v153 = *(&v145 + 1) + v152;
  v6 = __CFADD__(v151, v150);
  v154 = v151 + v150;
  if (v6)
  {
    v155 = v149 + 1;
  }

  else
  {
    v155 = v149;
  }

  v6 = __CFADD__(v153, v155);
  v156 = v153 + v155;
  v157 = v6;
  if (__CFADD__(*(&v145 + 1), v152))
  {
    v158 = v157 + 1;
  }

  else
  {
    v158 = v157;
  }

  v159 = (v148 * v147) >> 64;
  v160 = v148 * v147;
  v6 = __CFADD__(v154, v160);
  v161 = v154 + v160;
  if (v6)
  {
    v162 = v159 + 1;
  }

  else
  {
    v162 = v159;
  }

  v6 = __CFADD__(v156, v162);
  v163 = v156 + v162;
  v164 = v6;
  v6 = __CFADD__(v161, v160);
  v165 = v161 + v160;
  if (v6)
  {
    v166 = v159 + 1;
  }

  else
  {
    v166 = v159;
  }

  v167 = __PAIR128__(v158, v163) + __PAIR128__(v164, v166);
  v169 = a2[4];
  v168 = a2[5];
  v170 = a2[2];
  v171 = a2[3];
  v172 = (v170 * v168) >> 64;
  v173 = v170 * v168;
  v6 = __CFADD__(v165, v173);
  v174 = v165 + v173;
  if (v6)
  {
    v175 = v172 + 1;
  }

  else
  {
    v175 = v172;
  }

  v176 = __CFADD__(v167, v175);
  v6 = __CFADD__(v174, v173);
  v177 = v174 + v173;
  if (v6)
  {
    v178 = v172 + 1;
  }

  else
  {
    v178 = v172;
  }

  v179 = v167 + __PAIR128__(v176, v178);
  v180 = (v171 * v169) >> 64;
  v181 = v171 * v169;
  v6 = __CFADD__(v177, v181);
  v182 = v177 + v181;
  if (v6)
  {
    v183 = v180 + 1;
  }

  else
  {
    v183 = v180;
  }

  v184 = __CFADD__(v179, v183);
  v6 = __CFADD__(v182, v181);
  v185 = v182 + v181;
  if (v6)
  {
    ++v180;
  }

  v186 = v179 + __PAIR128__(v184, v180);
  result[7] = v185;
  v187 = a2[3];
  v188 = a2[4] * a2[4] + v186;
  v189 = *(&v186 + 1) + v186;
  v190 = __CFADD__(*(&v186 + 1), v186);
  v191 = a2[5];
  v192 = a2[6];
  v193 = (v187 * v191) >> 64;
  v194 = v187 * v191;
  v6 = __CFADD__(v188, v194);
  v195 = v188 + v194;
  if (v6)
  {
    v196 = v193 + 1;
  }

  else
  {
    v196 = v193;
  }

  v6 = __CFADD__(v189, v196);
  v197 = v189 + v196;
  v198 = v6;
  v6 = __CFADD__(v195, v194);
  v199 = v195 + v194;
  if (v6)
  {
    v200 = v193 + 1;
  }

  else
  {
    v200 = v193;
  }

  v6 = __CFADD__(v197, v200);
  v201 = v197 + v200;
  v202 = v190 + v6 + v198;
  v204 = a2[1];
  v203 = a2[2];
  v205 = (v203 * v192) >> 64;
  v206 = v203 * v192;
  v6 = __CFADD__(v199, v206);
  v207 = v199 + v206;
  if (v6)
  {
    v208 = v205 + 1;
  }

  else
  {
    v208 = v205;
  }

  v6 = __CFADD__(v201, v208);
  v209 = v201 + v208;
  v210 = v6;
  v6 = __CFADD__(v207, v206);
  v211 = v207 + v206;
  if (v6)
  {
    v212 = v205 + 1;
  }

  else
  {
    v212 = v205;
  }

  v213 = __PAIR128__(v202, v209) + __PAIR128__(v210, v212);
  v214 = a2[7];
  v215 = (v204 * v214) >> 64;
  v216 = v204 * v214;
  v6 = __CFADD__(v211, v216);
  v217 = v211 + v216;
  if (v6)
  {
    v218 = v215 + 1;
  }

  else
  {
    v218 = v215;
  }

  v219 = __CFADD__(v213, v218);
  v6 = __CFADD__(v217, v216);
  v220 = v217 + v216;
  if (v6)
  {
    v221 = v215 + 1;
  }

  else
  {
    v221 = v215;
  }

  v222 = v213 + __PAIR128__(v219, v221);
  result[8] = v220;
  v224 = a2[6];
  v223 = a2[7];
  v225 = a2[2];
  v226 = a2[3];
  v227 = (v225 * v223) >> 64;
  v228 = v225 * v223;
  v229 = v228 + v222;
  if (__CFADD__(v228, v222))
  {
    v230 = v227 + 1;
  }

  else
  {
    v230 = v227;
  }

  v231 = *(&v222 + 1) + v230;
  v6 = __CFADD__(v229, v228);
  v232 = v229 + v228;
  if (v6)
  {
    v233 = v227 + 1;
  }

  else
  {
    v233 = v227;
  }

  v6 = __CFADD__(v231, v233);
  v234 = v231 + v233;
  v235 = v6;
  if (__CFADD__(*(&v222 + 1), v230))
  {
    v236 = v235 + 1;
  }

  else
  {
    v236 = v235;
  }

  v237 = (v226 * v224) >> 64;
  v238 = v226 * v224;
  v6 = __CFADD__(v232, v238);
  v239 = v232 + v238;
  if (v6)
  {
    v240 = v237 + 1;
  }

  else
  {
    v240 = v237;
  }

  v6 = __CFADD__(v234, v240);
  v241 = v234 + v240;
  v242 = v6;
  v6 = __CFADD__(v239, v238);
  v243 = v239 + v238;
  if (v6)
  {
    v244 = v237 + 1;
  }

  else
  {
    v244 = v237;
  }

  v245 = __PAIR128__(v236, v241) + __PAIR128__(v242, v244);
  v247 = a2[4];
  v246 = a2[5];
  v248 = (v247 * v246) >> 64;
  v249 = v247 * v246;
  v6 = __CFADD__(v243, v249);
  v250 = v243 + v249;
  if (v6)
  {
    v251 = v248 + 1;
  }

  else
  {
    v251 = v248;
  }

  v252 = __CFADD__(v245, v251);
  v6 = __CFADD__(v250, v249);
  v253 = v250 + v249;
  if (v6)
  {
    v254 = v248 + 1;
  }

  else
  {
    v254 = v248;
  }

  v255 = v245 + __PAIR128__(v252, v254);
  result[9] = v253;
  v256 = a2[6];
  v257 = a2[5] * a2[5] + v255;
  v258 = *(&v255 + 1) + v255;
  v259 = __CFADD__(*(&v255 + 1), v255);
  v261 = a2[3];
  v260 = a2[4];
  v262 = (v260 * v256) >> 64;
  v263 = v260 * v256;
  v6 = __CFADD__(v257, v263);
  v264 = v257 + v263;
  if (v6)
  {
    v265 = v262 + 1;
  }

  else
  {
    v265 = v262;
  }

  v6 = __CFADD__(v258, v265);
  v266 = v258 + v265;
  v267 = v6;
  v6 = __CFADD__(v264, v263);
  v268 = v264 + v263;
  if (v6)
  {
    v269 = v262 + 1;
  }

  else
  {
    v269 = v262;
  }

  v6 = __CFADD__(v266, v269);
  v270 = v266 + v269;
  v271 = v259 + v6 + v267;
  v272 = a2[7];
  v273 = (v261 * v272) >> 64;
  v274 = v261 * v272;
  v6 = __CFADD__(v268, v274);
  v275 = v268 + v274;
  if (v6)
  {
    v276 = v273 + 1;
  }

  else
  {
    v276 = v273;
  }

  v6 = __CFADD__(v270, v276);
  v277 = v270 + v276;
  v278 = v6;
  v6 = __CFADD__(v275, v274);
  v279 = v275 + v274;
  if (v6)
  {
    v280 = v273 + 1;
  }

  else
  {
    v280 = v273;
  }

  v281 = __PAIR128__(v271, v277) + __PAIR128__(v278, v280);
  result[10] = v279;
  v283 = a2[6];
  v282 = a2[7];
  v284 = a2[4];
  v285 = a2[5];
  v286 = (v284 * v282) >> 64;
  v287 = v284 * v282;
  v288 = v287 + v281;
  if (__CFADD__(v287, v281))
  {
    v289 = v286 + 1;
  }

  else
  {
    v289 = v286;
  }

  v290 = *(&v281 + 1) + v289;
  v6 = __CFADD__(v288, v287);
  v291 = v288 + v287;
  if (v6)
  {
    v292 = v286 + 1;
  }

  else
  {
    v292 = v286;
  }

  v6 = __CFADD__(v290, v292);
  v293 = v290 + v292;
  v294 = v6;
  if (__CFADD__(*(&v281 + 1), v289))
  {
    v295 = v294 + 1;
  }

  else
  {
    v295 = v294;
  }

  v296 = (v285 * v283) >> 64;
  v297 = v285 * v283;
  v6 = __CFADD__(v291, v297);
  v298 = v291 + v297;
  if (v6)
  {
    v299 = v296 + 1;
  }

  else
  {
    v299 = v296;
  }

  v6 = __CFADD__(v293, v299);
  v300 = v293 + v299;
  v301 = v6;
  v6 = __CFADD__(v298, v297);
  v302 = v298 + v297;
  if (v6)
  {
    v303 = v296 + 1;
  }

  else
  {
    v303 = v296;
  }

  v304 = __PAIR128__(v295, v300) + __PAIR128__(v301, v303);
  result[11] = v302;
  v305 = a2[5];
  v306 = a2[6] * a2[6] + v304;
  v307 = *(&v304 + 1) + v304;
  v308 = __CFADD__(*(&v304 + 1), v304);
  v309 = a2[7];
  v310 = (v305 * v309) >> 64;
  v311 = v305 * v309;
  v6 = __CFADD__(v306, v311);
  v312 = v306 + v311;
  if (v6)
  {
    v313 = v310 + 1;
  }

  else
  {
    v313 = v310;
  }

  v6 = __CFADD__(v307, v313);
  v314 = v307 + v313;
  v315 = v6;
  v6 = __CFADD__(v312, v311);
  v316 = v312 + v311;
  if (v6)
  {
    v317 = v310 + 1;
  }

  else
  {
    v317 = v310;
  }

  v6 = __CFADD__(v314, v317);
  v318 = v314 + v317;
  v319 = v308 + v6 + v315;
  result[12] = v316;
  v321 = a2[6];
  v320 = a2[7];
  v322 = (v321 * v320) >> 64;
  v323 = v321 * v320;
  v6 = __CFADD__(v323, v318);
  v324 = v323 + v318;
  if (v6)
  {
    v325 = v322 + 1;
  }

  else
  {
    v325 = v322;
  }

  v326 = v319 + v325;
  v6 = __CFADD__(v324, v323);
  v327 = v324 + v323;
  if (v6)
  {
    v328 = v322 + 1;
  }

  else
  {
    v328 = v322;
  }

  v6 = __CFADD__(v326, v328);
  v329 = v326 + v328;
  v330 = v6;
  result[13] = v327;
  v331 = a2[7];
  v332 = (v331 * v331) >> 64;
  v333 = v331 * v331;
  v6 = __CFADD__(v333, v329);
  v334 = v333 + v329;
  if (v6)
  {
    v335 = v332 + 1;
  }

  else
  {
    v335 = v332;
  }

  result[14] = v334;
  result[15] = v330 + __CFADD__(v319, v325) + v335;
  return result;
}

int BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/shift.c.inc", 73);
    return 0;
  }

  else
  {
    r->neg = a->neg;
    v6 = n >> 6;
    v7 = (n >> 6) + 1;
    result = bn_wexpand(&r->d, (v7 + a->top));
    if (result)
    {
      d = a->d;
      v10 = r->d;
      top = a->top;
      r->d[(top + v6)] = 0;
      v12 = n & 0x3F;
      if ((n & 0x3F) != 0)
      {
        if (top >= 1)
        {
          v13 = v10[top + v6];
          v14 = &d[top - 1];
          v15 = top + 1;
          v16 = &v10[top + v6];
          do
          {
            v17 = *v14--;
            *v16 = v13 | (v17 >> (64 - v12));
            v13 = v17 << v12;
            *--v16 = v17 << v12;
            --v15;
          }

          while (v15 > 1);
        }
      }

      else if (top >= 1)
      {
        v18 = top - 1;
        do
        {
          v10[v6 + v18] = d[v18];
          v19 = v18-- + 1;
        }

        while (v19 > 1);
      }

      if (n >= 0x40)
      {
        bzero(v10, 8 * v6);
        LODWORD(top) = a->top;
      }

      r->top = v7 + top;
      bn_set_minimal_width(r);
      return 1;
    }
  }

  return result;
}

int BN_lshift1(BIGNUM *r, const BIGNUM *a)
{
  if (r == a)
  {
    result = bn_wexpand(&r->d, a->top + 1);
    if (!result)
    {
      return result;
    }

    top = a->top;
  }

  else
  {
    r->neg = a->neg;
    result = bn_wexpand(&r->d, a->top + 1);
    if (!result)
    {
      return result;
    }

    top = a->top;
    r->top = top;
  }

  if (top < 1)
  {
    return 1;
  }

  v6 = 0;
  d = r->d;
  v8 = a->d;
  do
  {
    v10 = *v8++;
    v9 = v10;
    *d++ = v6 | (2 * v10);
    v6 = v10 >> 63;
    --top;
  }

  while (top);
  if ((v9 & 0x8000000000000000) == 0)
  {
    return 1;
  }

  result = 1;
  *d = 1;
  ++r->top;
  return result;
}

void bn_rshift_words(void *__dst, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v5 = __dst;
  v6 = a3 >> 6;
  v7 = a4 - v6;
  if (a4 <= v6)
  {
    if (!a4)
    {
      return;
    }

    v13 = 8 * a4;
    goto LABEL_14;
  }

  v9 = a3 & 0x3F;
  if ((a3 & 0x3F) != 0)
  {
    if (a4 - 1 > v6)
    {
      v10 = ~v6 + a4;
      v11 = (a2 + 8 * v6 + 8);
      v12 = __dst;
      do
      {
        *v12++ = (*v11 << (64 - v9)) | (*(v11 - 1) >> v9);
        ++v11;
        --v10;
      }

      while (v10);
    }

    __dst[a4 - 1 - v6] = *(a2 + 8 * (a4 - 1)) >> v9;
  }

  else if (8 * v7)
  {
    memmove(__dst, (a2 + 8 * v6), 8 * v7);
  }

  if (a3 >= 0x40)
  {
    v13 = 8 * v6;
    __dst = &v5[a4 - v6];
LABEL_14:

    bzero(__dst, v13);
  }
}

int BN_rshift(BIGNUM *r, const BIGNUM *a, int n)
{
  if (n < 0)
  {
    ERR_put_error(3, 0, 109, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/shift.c.inc", 158);
    return 0;
  }

  else
  {
    result = bn_wexpand(&r->d, a->top);
    if (result)
    {
      bn_rshift_words(r->d, a->d, n, a->top);
      r->neg = a->neg;
      r->top = a->top;
      bn_set_minimal_width(r);
      return 1;
    }
  }

  return result;
}

uint64_t bn_rshift_secret_shift(uint64_t a1, const BIGNUM *a2, unsigned int a3, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (v8 && (v9 = v8, BN_copy(a1, a2)) && bn_wexpand(v9, *(a1 + 8)))
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = 0;
      v12 = v10 << 6;
      do
      {
        v13 = 1;
        bn_rshift_words(*v9, *a1, 1 << v11, *(a1 + 8));
        bn_select_words(*a1, -((a3 >> v11++) & 1), *v9, *a1, *(a1 + 8));
      }

      while (v12 >> v11);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  BN_CTX_end(ctx);
  return v13;
}

int BN_rshift1(BIGNUM *r, const BIGNUM *a)
{
  result = bn_wexpand(&r->d, a->top);
  if (result)
  {
    top = a->top;
    if (top)
    {
      d = r->d;
      v7 = a->d;
      if (top != 1)
      {
        v8 = v7 + 1;
        v9 = top - 1;
        v10 = r->d;
        do
        {
          *v10++ = *(v8++ - 1) >> 1;
          --v9;
        }

        while (v9);
      }

      d[top - 1] = v7[top - 1] >> 1;
    }

    r->top = top;
    r->neg = a->neg;
    bn_set_minimal_width(r);
    return 1;
  }

  return result;
}

int BN_set_bit(BIGNUM *a, int n)
{
  if (n < 0)
  {
    return 0;
  }

  v2 = n;
  v4 = n >> 6;
  if (a->top <= (n >> 6))
  {
    result = bn_wexpand(&a->d, (v4 + 1));
    if (!result)
    {
      return result;
    }

    top = a->top;
    if (v4 >= top)
    {
      bzero(&a->d[top], 8 * (v4 - top) + 8);
    }

    a->top = v4 + 1;
  }

  result = 1;
  a->d[v4] |= 1 << (v2 & 0x3F);
  return result;
}

uint64_t bn_is_bit_set_words(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >> 6 >= a2)
  {
    return 0;
  }

  else
  {
    return (*(a1 + 8 * (a3 >> 6)) >> a3) & 1;
  }
}

int BN_is_bit_set(const BIGNUM *a, int n)
{
  if (n < 0 || (v2 = n >> 6, v2 >= a->top))
  {
    LODWORD(v3) = 0;
  }

  else
  {
    return (a->d[v2] >> n) & 1;
  }

  return v3;
}

uint64_t BN_count_low_zero_bits(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  v4 = 0;
  v5 = *v2;
  v6 = v1 << 6;
  do
  {
    v7 = *v5++;
    v8 = (((v7 << 32) - 1) & ~(v7 << 32)) >> 63;
    v9 = v8 & 0x20;
    v10 = v8 & HIDWORD(v7) | v7 & ~v8;
    v11 = (((v10 << 48) - 1) & ~(v10 << 48)) >> 63;
    v12 = v11 & 0x10;
    v13 = v11 & (v10 >> 16) | v10 & ~v11;
    v14 = (((v13 << 56) - 1) & ~(v13 << 56)) >> 63;
    v15 = v14 & 8;
    v16 = v14 & (v13 >> 8) | v13 & ~v14;
    v17 = (((v16 << 60) - 1) & ~(v16 << 60)) >> 63;
    v18 = v17 & 4;
    v19 = v17 & (v16 >> 4) | v16 & ~v17;
    v20 = (((v19 << 62) - 1) & ~(v19 << 62)) >> 63;
    LODWORD(v17) = v20 & 2;
    v21 = v20 & (v19 >> 2);
    LODWORD(v19) = v19 & ~v20;
    v22 = ((v7 - 1) & ~v7) >> 63;
    v23 = v9 | v12 | v15 | v18 | v17 | (((((v21 | v19) << 63) - 1) & ~((v21 | v19) << 63)) >> 63);
    LODWORD(v19) = v22 | v4;
    v4 |= ~v22;
    result = (v3 + v23) & ~v19 | result;
    v3 += 64;
  }

  while (v6 != v3);
  return result;
}

uint64_t bn_jacobi(const BIGNUM *a1, const BIGNUM *a2, BN_CTX *a3)
{
  if (!BN_is_odd(a2))
  {
    v6 = 104;
    v7 = 73;
    goto LABEL_5;
  }

  if (!BN_is_negative(a2))
  {
    BN_CTX_start(a3);
    v9 = BN_CTX_get(a3);
    v10 = BN_CTX_get(a3);
    if (v10)
    {
      v11 = v10;
      if (BN_copy(v9, a1))
      {
        if (BN_copy(v11, a2))
        {
          v12 = 1;
          if (BN_is_zero(v9))
          {
LABEL_10:
            if (BN_is_one(v11))
            {
              v8 = v12;
            }

            else
            {
              v8 = 0;
            }

            goto LABEL_38;
          }

          v13 = v11;
          while (1)
          {
            v11 = v9;
            v9 = v13;
            v14 = -1;
            do
            {
              ++v14;
            }

            while (!BN_is_bit_set(v11, v14));
            if (!BN_rshift(v11, v11, v14))
            {
              break;
            }

            if (v14)
            {
              if (v9->top)
              {
                v15 = *v9->d & 7;
              }

              else
              {
                v15 = 0;
              }

              v12 *= bn_jacobi_tab[v15];
            }

            top = v11->top;
            if (v11->neg)
            {
              if (top)
              {
                v17 = ~*v11->d;
              }

              else
              {
                LOBYTE(v17) = -1;
              }
            }

            else if (top)
            {
              v17 = *v11->d;
            }

            else
            {
              LOBYTE(v17) = 0;
            }

            if (v9->top)
            {
              v18 = *v9->d;
            }

            else
            {
              LOBYTE(v18) = 0;
            }

            if (!BN_nnmod(v9, v9, v11, a3))
            {
              break;
            }

            if ((v17 & v18 & 2) != 0)
            {
              v12 = -v12;
            }

            v11->neg = 0;
            is_zero = BN_is_zero(v9);
            v13 = v11;
            if (is_zero)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    v8 = 4294967294;
LABEL_38:
    BN_CTX_end(a3);
    return v8;
  }

  v6 = 109;
  v7 = 79;
LABEL_5:
  ERR_put_error(3, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/bn/jacobi.c.inc", v7);
  return 4294967294;
}

int BIO_puts(BIO *bp, const char *buf)
{
  v4 = strlen(buf);
  if (v4 >> 31)
  {
    ERR_put_error(17, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", 201);
    return -1;
  }

  else
  {

    return BIO_write(bp, buf, v4);
  }
}

BIO *__cdecl BIO_find_type(BIO *b, int bio_type)
{
  for (; b; b = b->ptr)
  {
    if (b->method)
    {
      type = b->method->type;
      if (bio_type)
      {
        if (type == bio_type)
        {
          return b;
        }
      }

      else if ((type & bio_type) != 0)
      {
        return b;
      }
    }
  }

  return b;
}

int BIO_indent(BIO *b, int indent, int max)
{
  if (indent >= max)
  {
    v4 = max;
  }

  else
  {
    v4 = indent;
  }

  v5 = v4 + 1;
  while (--v5)
  {
    if (BIO_puts(b, " ") != 1)
    {
      return 0;
    }
  }

  return 1;
}

void *EVP_AEAD_CTX_new(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OPENSSL_malloc(0x248uLL);
  bzero(v8, 0x248uLL);
  if (!EVP_AEAD_CTX_init(v8, a1, a2, a3, a4) && v8)
  {
    if (*v8)
    {
      (*(*v8 + 24))(v8);
      *v8 = 0;
    }

    OPENSSL_free(v8);
    return 0;
  }

  return v8;
}

uint64_t EVP_AEAD_CTX_init(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 8))
  {

    return EVP_AEAD_CTX_init_with_direction(a1, a2, a3, a4, a5, 0);
  }

  else
  {
    ERR_put_error(30, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", 65);
    *a1 = 0;
    return 0;
  }
}

uint64_t EVP_AEAD_CTX_seal(uint64_t a1, char *a2, unint64_t *a3, size_t a4, uint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  if (__CFADD__(a8, *(*a1 + 2)))
  {
    v12 = 117;
    v13 = 123;
LABEL_10:
    ERR_put_error(30, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", v13);
    goto LABEL_11;
  }

  if (a4 < a8)
  {
    v12 = 103;
    v13 = 128;
    goto LABEL_10;
  }

  if (a7 != a2 && &a2[a4] > a7 && &a7[a8] > a2)
  {
    v12 = 115;
    v13 = 133;
    goto LABEL_10;
  }

  v16 = *(*a1 + 40);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (v16(a1, a2, &a2[a8], &v17, a4 - a8))
  {
    v14 = v17 + a8;
    result = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (a4)
  {
    bzero(a2, a4);
  }

  v14 = 0;
  result = 0;
LABEL_14:
  *a3 = v14;
  return result;
}

BOOL RSA_encrypt(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!a1)
  {
    v10 = 67;
    v11 = 125;
    goto LABEL_7;
  }

  if (!a2)
  {
    v10 = 67;
    v11 = 129;
    goto LABEL_7;
  }

  if (BN_num_bytes(*(a1 + 8)) < 0x401)
  {
    v18 = 0;
    v19 = 0;
    if (!RSA_public_key_to_bytes(&v19, &v18, a1) || !v19)
    {
      return 0;
    }

    v14 = ccrsa_import_pub_n();
    v15 = malloc_type_malloc(24 * v14 + 40, 0x10600407F0B3959uLL);
    if (!v15)
    {
      if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        RSA_encrypt_cold_3();
      }

      return 0;
    }

    v16 = v15;
    *v15 = v14;
    if (ccrsa_import_pub())
    {
      OPENSSL_free(v19);
      free(v16);
      return 0;
    }

    *a2 = ccrsa_block_size();
    switch(a7)
    {
      case 4:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          RSA_encrypt_cold_2();
        }

        v17 = 175;
        break;
      case 3:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          RSA_encrypt_cold_1();
        }

        v17 = 180;
        break;
      case 1:
        ccrng();
        v12 = ccrsa_encrypt_eme_pkcs1v15() == 0;
LABEL_32:
        OPENSSL_free(v19);
        free(v16);
        return v12;
      default:
LABEL_31:
        v12 = 0;
        goto LABEL_32;
    }

    ERR_put_error(4, 0, 143, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v17);
    goto LABEL_31;
  }

  v10 = 500;
  v11 = 133;
LABEL_7:
  ERR_put_error(4, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v11);
  return 0;
}

uint64_t RSA_padding_check_PKCS1_OAEP_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_padding_check_PKCS1_OAEP_mgf1_cold_1();
  }

  return 0;
}

uint64_t RSA_padding_add_PKCS1_OAEP_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_padding_add_PKCS1_OAEP_mgf1_cold_1();
  }

  return 0;
}

uint64_t RSA_add_pkcs1_prefix(void *a1, void *a2, _DWORD *a3, int a4, const void *a5, size_t a6)
{
  if (a4 == 4)
  {
    v12 = &kPKCS1SigPrefixes;
LABEL_9:
    v16 = v12[4];
    v17 = v16 + a6;
    if (v16 + a6 >= v16)
    {
      v20 = v17;
      v21 = malloc_type_malloc(v17, 0xE9349F5FuLL);
      if (v21)
      {
        v22 = v21;
        memcpy(v21, v12 + 5, v16);
        memcpy(&v22[v16], a5, a6);
        *a1 = v22;
        *a2 = v20;
        result = 1;
        *a3 = 1;
        return result;
      }

      v18 = 65;
      v19 = 545;
    }

    else
    {
      v18 = 140;
      v19 = 539;
    }
  }

  else if (a4 == 114)
  {
    if (a6 == 36)
    {
      *a1 = a5;
      *a2 = 36;
      *a3 = 0;
      return 1;
    }

    v18 = 125;
    v19 = 516;
  }

  else
  {
    v13 = &kPKCS1SigPrefixes;
    v14 = 6;
    while (--v14)
    {
      v12 = (v13 + 6);
      v15 = v13[6];
      v13 += 6;
      if (v15 == a4)
      {
        goto LABEL_9;
      }
    }

    v18 = 142;
    v19 = 559;
  }

  ERR_put_error(4, 0, v18, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_rsa.m", v19);
  return 0;
}

uint64_t RSA_decrypt()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_decrypt_cold_1();
  }

  return 0;
}

uint64_t rsa_default_sign_raw()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    rsa_default_sign_raw_cold_1();
  }

  return 0;
}

uint64_t RSA_sign_raw()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_raw_cold_1();
  }

  return 0;
}

int RSA_sign(int type, const unsigned __int8 *m, unsigned int m_length, unsigned __int8 *sigret, unsigned int *siglen, RSA *rsa)
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_cold_1();
  }

  return 0;
}

uint64_t RSA_sign_pss_mgf1()
{
  if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
  {
    RSA_sign_pss_mgf1_cold_1();
  }

  return 0;
}

uint64_t ec_GFp_nistp224_point_get_affine_coordinates(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    ERR_put_error(15, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/p224-64.c.inc", 868);
    result = 0;
  }

  else
  {
    v8 = *(a2 + 152) >> 48;
    v9 = *(a2 + 160) >> 40;
    v10 = *(a2 + 144);
    v32[0] = v10 & 0xFFFFFFFFFFFFFFLL;
    v32[1] = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v31[0] = v11;
    v31[1] = v11;
    v30[5] = v11;
    v30[6] = v11;
    v30[3] = v11;
    v30[4] = v11;
    v30[1] = v11;
    v30[2] = v11;
    v30[0] = v11;
    v32[2] = v8 & 0xFFFFFFFFFFFFFFLL;
    v32[3] = v9 & 0xFFFFFFFFFFFFFFLL;
    v43 = v11;
    v44 = v11;
    v42[0] = v11;
    v42[1] = v11;
    v41[0] = v11;
    v41[1] = v11;
    v40[0] = v11;
    v40[1] = v11;
    v38 = v11;
    v39 = v11;
    v36 = v11;
    v37 = v11;
    v34 = v11;
    v35 = v11;
    v33 = v11;
    p224_felem_square(&v33, v32);
    p224_felem_reduce(&v43, &v33);
    p224_felem_mul(&v33, v32, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_square(&v33, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_mul(&v33, v32, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_square(&v33, &v43);
    p224_felem_reduce(v42, &v33);
    p224_felem_square(&v33, v42);
    p224_felem_reduce(v42, &v33);
    p224_felem_square(&v33, v42);
    p224_felem_reduce(v42, &v33);
    p224_felem_mul(&v33, v42, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_square(&v33, &v43);
    p224_felem_reduce(v42, &v33);
    v12 = 5;
    do
    {
      p224_felem_square(&v33, v42);
      p224_felem_reduce(v42, &v33);
      --v12;
    }

    while (v12);
    p224_felem_mul(&v33, v42, &v43);
    p224_felem_reduce(v42, &v33);
    p224_felem_square(&v33, v42);
    p224_felem_reduce(v41, &v33);
    v13 = 11;
    do
    {
      p224_felem_square(&v33, v41);
      p224_felem_reduce(v41, &v33);
      --v13;
    }

    while (v13);
    p224_felem_mul(&v33, v41, v42);
    p224_felem_reduce(v42, &v33);
    p224_felem_square(&v33, v42);
    p224_felem_reduce(v41, &v33);
    v14 = 23;
    do
    {
      p224_felem_square(&v33, v41);
      p224_felem_reduce(v41, &v33);
      --v14;
    }

    while (v14);
    p224_felem_mul(&v33, v41, v42);
    p224_felem_reduce(v41, &v33);
    p224_felem_square(&v33, v41);
    p224_felem_reduce(v40, &v33);
    v15 = 47;
    do
    {
      p224_felem_square(&v33, v40);
      p224_felem_reduce(v40, &v33);
      --v15;
    }

    while (v15);
    p224_felem_mul(&v33, v41, v40);
    p224_felem_reduce(v41, &v33);
    p224_felem_square(&v33, v41);
    p224_felem_reduce(v40, &v33);
    v16 = 23;
    do
    {
      p224_felem_square(&v33, v40);
      p224_felem_reduce(v40, &v33);
      --v16;
    }

    while (v16);
    p224_felem_mul(&v33, v42, v40);
    p224_felem_reduce(v42, &v33);
    v17 = 6;
    do
    {
      p224_felem_square(&v33, v42);
      p224_felem_reduce(v42, &v33);
      --v17;
    }

    while (v17);
    p224_felem_mul(&v33, v42, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_square(&v33, &v43);
    p224_felem_reduce(&v43, &v33);
    p224_felem_mul(&v33, &v43, v32);
    p224_felem_reduce(&v43, &v33);
    v18 = 97;
    do
    {
      p224_felem_square(&v33, &v43);
      p224_felem_reduce(&v43, &v33);
      --v18;
    }

    while (v18);
    p224_felem_mul(&v33, &v43, v41);
    p224_felem_reduce(v31, &v33);
    p224_felem_square(v30, v31);
    p224_felem_reduce(v32, v30);
    if (a3)
    {
      v19 = *(a2 + 8);
      *(&v20 + 1) = v19;
      *&v20 = *a2;
      *&v33 = *a2 & 0xFFFFFFFFFFFFFFLL;
      *(&v33 + 1) = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v20 + 1) = *(a2 + 16);
      *&v20 = v19;
      v21 = v20 >> 48;
      v22 = *(a2 + 16);
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v23;
      v44 = v23;
      *&v34 = v21 & 0xFFFFFFFFFFFFFFLL;
      *(&v34 + 1) = (v22 >> 40) & 0xFFFFFFFFFFFFFFLL;
      p224_felem_mul(v30, &v33, v32);
      p224_felem_reduce(&v43, v30);
      p224_felem_to_generic(a3, &v43);
    }

    if (a4)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v24;
      v44 = v24;
      v25 = *(a2 + 80);
      *(&v26 + 1) = v25;
      *&v26 = *(a2 + 72);
      *&v33 = v26 & 0xFFFFFFFFFFFFFFLL;
      *(&v33 + 1) = (v26 >> 56) & 0xFFFFFFFFFFFFFFLL;
      *(&v26 + 1) = *(a2 + 88);
      *&v26 = v25;
      v27 = (v26 >> 48) & 0xFFFFFFFFFFFFFFLL;
      v28 = *(a2 + 88);
      *&v34 = v27;
      *(&v34 + 1) = (v28 >> 40) & 0xFFFFFFFFFFFFFFLL;
      p224_felem_mul(v30, v32, v31);
      p224_felem_reduce(v32, v30);
      p224_felem_mul(v30, &v33, v32);
      p224_felem_reduce(&v43, v30);
      p224_felem_to_generic(a4, &v43);
    }

    result = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_add(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  *(&v6 + 1) = v5;
  *&v6 = *a3;
  v37.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v37.i64[1] = (v6 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v6 + 1) = a3[2];
  *&v6 = v5;
  v7 = (v6 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v8 = *(a3 + 1);
  v38 = v7;
  v39 = (v8 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v9 = a3[10];
  *(&v8 + 1) = v9;
  *&v8 = a3[9];
  v34.i64[0] = v8 & 0xFFFFFFFFFFFFFFLL;
  v34.i64[1] = (v8 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v8 + 1) = a3[11];
  *&v8 = v9;
  v10 = (v8 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v11 = *(a3 + 11);
  v35 = v10;
  v36 = (v11 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v12 = a3[19];
  *(&v11 + 1) = v12;
  *&v11 = a3[18];
  v31.i64[0] = v11 & 0xFFFFFFFFFFFFFFLL;
  v31.i64[1] = (v11 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v11 + 1) = a3[20];
  *&v11 = v12;
  v13 = (v11 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v14 = *(a3 + 10);
  v32 = v13;
  v33 = (v14 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v15 = a4[1];
  *(&v14 + 1) = v15;
  *&v14 = *a4;
  v30[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v30[1] = (v14 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v14 + 1) = a4[2];
  *&v14 = v15;
  v16 = (v14 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v17 = *(a4 + 1);
  v30[2] = v16;
  v30[3] = (v17 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v18 = a4[10];
  *(&v17 + 1) = v18;
  *&v17 = a4[9];
  v29[0] = v17 & 0xFFFFFFFFFFFFFFLL;
  v29[1] = (v17 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v17 + 1) = a4[11];
  *&v17 = v18;
  v19 = (v17 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v20 = *(a4 + 11);
  v29[2] = v19;
  v29[3] = (v20 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v21 = a4[19];
  *(&v20 + 1) = v21;
  *&v20 = a4[18];
  v26.i64[0] = v20 & 0xFFFFFFFFFFFFFFLL;
  v26.i64[1] = (v20 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v20 + 1) = a4[20];
  *&v20 = v21;
  v22 = (v20 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v23 = *(a4 + 10);
  v27 = v22;
  v28 = (v23 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_point_add(&v37, &v34, &v31, &v37, &v34, &v31, 0, v30, v29, &v26);
  p224_felem_to_generic(a2, &v37);
  p224_felem_to_generic(a2 + 9, &v34);
  result = p224_felem_to_generic(a2 + 18, &v31);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_dbl(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v22.i64[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v22.i64[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = (v5 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v7 = *(a3 + 1);
  v23 = v6;
  v24 = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v8 = a3[10];
  *(&v7 + 1) = v8;
  *&v7 = a3[9];
  v19.i64[0] = v7 & 0xFFFFFFFFFFFFFFLL;
  v19.i64[1] = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[11];
  *&v7 = v8;
  v9 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v10 = *(a3 + 11);
  v20 = v9;
  v21 = (v10 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v11 = a3[19];
  *(&v10 + 1) = v11;
  *&v10 = a3[18];
  v16.i64[0] = v10 & 0xFFFFFFFFFFFFFFLL;
  v16.i64[1] = (v10 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v10 + 1) = a3[20];
  *&v10 = v11;
  v12 = (v10 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v13 = *(a3 + 10);
  v17 = v12;
  v18 = (v13 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_point_double(&v22, &v19, &v16, &v22, &v19, &v16);
  p224_felem_to_generic(a2, &v22);
  p224_felem_to_generic(a2 + 9, &v19);
  result = p224_felem_to_generic(a2 + 18, &v16);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_point_mul(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  ec_GFp_nistp224_make_precomp(__b, a3);
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v6;
  v26[1] = v6;
  v24 = v6;
  v25 = v6;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = 1;
  v8 = 220;
  v31 = 0u;
  v32 = 0u;
  do
  {
    if (!v7)
    {
      p224_point_double(&v27, &v29, &v31, &v27, &v29, &v31);
    }

    if (-858993459 * v8 < 0x33333334)
    {
      if (v8 == 220)
      {
        v10 = 0;
      }

      else
      {
        v10 = 32 * ((*(a4 + (((v8 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 4)) & 1);
      }

      v9 = v8 - 1;
      if (v8 - 1 <= 0xDF)
      {
        v11 = (*(a4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = (16 * ((*(a4 + (((v8 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 3)) & 1)) | v10 | (8 * ((*(a4 + (((v8 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 2)) & 1)) | (4 * ((*(a4 + (((v8 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v8 + 1)) & 1)) | (2 * ((*(a4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1));
      v18 = 0xAAAAAAAAAAAAAAAALL;
      v19 = 0xAAAAAAAAAAAAAAAALL;
      ec_GFp_nistp_recode_scalar_bits(&v19, &v18, v12 | v11);
      p224_select_point(v18, 17, __b, &v20);
      p224_felem_neg(v26, &v22);
      v13 = 0;
      v14 = vdupq_n_s64(-v19);
      do
      {
        *(&v22 + v13 * 16) = vbslq_s8(v14, v26[v13], *(&v22 + v13 * 16));
        ++v13;
      }

      while (v13 != 2);
      if (v7)
      {
        v29 = v22;
        v30 = v23;
        v31 = v24;
        v32 = v25;
        v27 = v20;
        v28 = v21;
      }

      else
      {
        p224_point_add(&v27, &v29, &v31, &v27, &v29, &v31, 0, &v20, &v22, &v24);
      }

      v7 = 0;
    }

    else
    {
      v9 = v8 - 1;
    }

    v8 = v9;
  }

  while (v9 < 0xDD);
  p224_felem_to_generic(a2, &v27);
  p224_felem_to_generic(a2 + 9, &v29);
  result = p224_felem_to_generic(a2 + 18, &v31);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_point_mul_base(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = 0;
  v27 = *MEMORY[0x1E69E9840];
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = v5;
  v20 = v5;
  v17 = v5;
  v18 = v5;
  v15 = v5;
  v16 = v5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = a3[3];
  v14 = *(a3 + 1);
  v7 = 195;
  v8 = *a3;
  do
  {
    if (v4)
    {
      p224_point_double(&v21, &v23, &v25, &v21, &v23, &v25);
    }

    v9 = vandq_s8(vshlq_u64(vshlq_u64(v14, vsubq_s64(xmmword_1A90A9AC0, vdupq_n_s64(v7 - 168))), xmmword_1A90A9AD0), xmmword_1A90A9AE0);
    p224_select_point(v9.i64[1] | (8 * ((v6 >> (v7 + 92)) & 1)) | v9.i64[0] | (v8 >> (v7 + 116)) & 1, 16, &unk_1A90AA130, &v15);
    if (v4)
    {
      p224_point_add(&v21, &v23, &v25, &v21, &v23, &v25, 1, &v15, &v17, &v19);
    }

    else
    {
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v21 = v15;
      v22 = v16;
    }

    p224_select_point((8 * ((*(a3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1)) | (4 * ((*(a3 + (((v7 - 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 - 56)) & 1)) | (2 * ((*(a3 + (((v7 - 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v7 - 112)) & 1)) | (v8 >> (v7 + 88)) & 1, 16, &g_p224_pre_comp, &v15);
    v4 = 1;
    p224_point_add(&v21, &v23, &v25, &v21, &v23, &v25, 1, &v15, &v17, &v19);
    v10 = v7 - 169;
    --v7;
  }

  while (v10 < 0x1C);
  p224_felem_to_generic(a2, &v21);
  p224_felem_to_generic(a2 + 9, &v23);
  result = p224_felem_to_generic(a2 + 18, &v25);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_point_mul_public(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  ec_GFp_nistp224_make_precomp(__b, a4);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = 1;
  v9 = 220;
  do
  {
    if (!v8)
    {
      p224_point_double(&v32, &v34, &v36, &v32, &v34, &v36);
    }

    if (v9 <= 0x1B)
    {
      v10 = vandq_s8(vshlq_u64(vshlq_u64(*(a3 + 1), vsubq_s64(xmmword_1A90A9AC0, vdupq_n_s64(v9))), xmmword_1A90A9AD0), xmmword_1A90A9AE0);
      v11 = *a3;
      v12 = (&g_p224_pre_comp + 96 * (v10.i64[1] | (8 * ((a3[3] >> (v9 + 4)) & 1)) | v10.i64[0] | (*a3 >> (v9 + 28)) & 1));
      p224_point_add(&v32, &v34, &v36, &v32, &v34, &v36, 1, &v12[96], &v12[98], v12 + 100);
      if (v8)
      {
        ec_GFp_nistp224_point_mul_public_cold_1();
      }

      v13 = (&g_p224_pre_comp + 96 * ((8 * ((*(a3 + (((v9 + 168) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 88)) & 1)) | (4 * ((*(a3 + (((v9 + 112) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 112)) & 1)) | (2 * ((*(a3 + (((v9 + 56) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 56)) & 1)) | (v11 >> v9) & 1));
      p224_point_add(&v32, &v34, &v36, &v32, &v34, &v36, 1, v13, &v13[2], v13 + 4);
    }

    if (-858993459 * v9 < 0x33333334)
    {
      if (v9 == 220)
      {
        v14 = 0;
      }

      else
      {
        v14 = 32 * ((*(a5 + (((v9 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 4)) & 1);
      }

      if (v9 - 1 <= 0xDF)
      {
        v15 = (*(a5 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)) & 1;
      }

      else
      {
        v15 = 0;
      }

      v16 = (16 * ((*(a5 + (((v9 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 3)) & 1)) | v14 | (8 * ((*(a5 + (((v9 + 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 2)) & 1)) | (4 * ((*(a5 + (((v9 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 + 1)) & 1)) | (2 * ((*(a5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1));
      v24 = 0xAAAAAAAAAAAAAAAALL;
      v25 = 0xAAAAAAAAAAAAAAAALL;
      ec_GFp_nistp_recode_scalar_bits(&v25, &v24, v16 | v15);
      v17 = &__b[6 * v24];
      v18 = v17[3];
      v28 = v17[2];
      v29 = v18;
      v19 = v17[5];
      v30 = v17[4];
      v31 = v19;
      v20 = v17[1];
      v26 = *v17;
      v27 = v20;
      if (v25)
      {
        p224_felem_neg(&v28, &v28);
      }

      if (v8)
      {
        v34 = v28;
        v35 = v29;
        v36 = v30;
        v37 = v31;
        v32 = v26;
        v33 = v27;
      }

      else
      {
        p224_point_add(&v32, &v34, &v36, &v32, &v34, &v36, 0, &v26, &v28, &v30);
      }

      v8 = 0;
      --v9;
    }

    else
    {
      --v9;
    }
  }

  while (v9 < 0xDD);
  p224_felem_to_generic(a2, &v32);
  p224_felem_to_generic(a2 + 9, &v34);
  result = p224_felem_to_generic(a2 + 18, &v36);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_felem_mul(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[5] = v5;
  v15[6] = v5;
  v15[3] = v5;
  v15[4] = v5;
  v15[1] = v5;
  v15[2] = v5;
  v15[0] = v5;
  v6 = a3[1];
  *(&v7 + 1) = v6;
  *&v7 = *a3;
  v17[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v17[1] = (v7 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v7 + 1) = a3[2];
  *&v7 = v6;
  v8 = (v7 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v9 = *(a3 + 1);
  v17[2] = v8;
  v17[3] = (v9 >> 40) & 0xFFFFFFFFFFFFFFLL;
  v10 = a4[1];
  *(&v9 + 1) = v10;
  *&v9 = *a4;
  v16[0] = *a4 & 0xFFFFFFFFFFFFFFLL;
  v16[1] = (v9 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v9 + 1) = a4[2];
  *&v9 = v10;
  v11 = (v9 >> 48) & 0xFFFFFFFFFFFFFFLL;
  v12 = *(a4 + 1);
  v16[2] = v11;
  v16[3] = (v12 >> 40) & 0xFFFFFFFFFFFFFFLL;
  p224_felem_mul(v15, v17, v16);
  p224_felem_reduce(v17, v15);
  result = p224_felem_to_generic(a2, v17);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ec_GFp_nistp224_felem_sqr(uint64_t a1, uint64_t *a2, void *a3)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  *(&v5 + 1) = v4;
  *&v5 = *a3;
  v12[0] = *a3 & 0xFFFFFFFFFFFFFFLL;
  v12[1] = (v5 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(&v5 + 1) = a3[2];
  *&v5 = v4;
  v6 = v5 >> 48;
  v7 = *(a3 + 1);
  v12[2] = v6 & 0xFFFFFFFFFFFFFFLL;
  v12[3] = (v7 >> 40) & 0xFFFFFFFFFFFFFFLL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[5] = v8;
  v11[6] = v8;
  v11[3] = v8;
  v11[4] = v8;
  v11[1] = v8;
  v11[2] = v8;
  v11[0] = v8;
  p224_felem_square(v11, v12);
  p224_felem_reduce(v12, v11);
  result = p224_felem_to_generic(a2, v12);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *p224_felem_square(_OWORD *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 2 * *a2;
  v5 = a2[2];
  v6 = a2[3];
  *result = *a2 * *a2;
  result[1] = 2 * v3 * v2;
  result[2] = 2 * v5 * v2 + v3 * v3;
  result[3] = v6 * v4 + 2 * v5 * v3;
  result[4] = v6 * (2 * v3) + v5 * v5;
  result[5] = v6 * (2 * v5);
  result[6] = v6 * v6;
  return result;
}

void *p224_felem_reduce(void *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v7 = a2[6];
  v6 = a2[7];
  v8 = *(a2 + 6);
  v9 = (v8 >> 16) + *(a2 + 4);
  v10 = v8 << 40;
  v11 = __CFADD__(v10, v7);
  v12 = v10 + v7;
  if (v11)
  {
    ++v6;
  }

  v13 = (*(a2 + 2) - *(a2 + 6)) >> 64;
  v14 = a2[4] - a2[12];
  v15 = a2[10];
  v16 = a2[11];
  v17 = v15 << 40;
  v11 = __CFADD__(v14, v17);
  v18 = v14 + v17;
  if (v11)
  {
    ++v13;
  }

  *(&v19 + 1) = v16;
  *&v19 = v15;
  v20 = __PAIR128__(v6, v12) + (v19 >> 16);
  v21 = __PAIR128__(v13, v18) + (v9 >> 16);
  v23 = v5 - v15;
  v22 = (__PAIR128__(v4, v5) - __PAIR128__(v16, v15)) >> 64;
  v24 = v9 << 40;
  v25 = v23 + v24;
  if (__CFADD__(v23, v24))
  {
    ++v22;
  }

  *(&v26 + 1) = *(&v21 + 1) + 0x7FFFFFFFFFFFFF80;
  *&v26 = v21;
  v27 = v20 + (v26 >> 56);
  v28 = (v27 >> 16) & 0xFFFF0000000000;
  v11 = __CFADD__(v25, v28);
  v29 = v25 + v28;
  if (v11)
  {
    ++v22;
  }

  v30 = (v21 & 0xFFFFFFFFFFFFFFLL) + (*(&v27 + 1) >> 8);
  v31 = __PAIR128__(v2, v3) - (v9 + (v27 >> 56)) + __PAIR128__(0x8000000000000000, 0x8000);
  v34 = __PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000);
  v32 = (__PAIR128__(HIBYTE(*(&v31 + 1)) + __CFADD__(v29, (v31 >> 56)) + v22, v29 + (v31 >> 56)) + __PAIR128__(0x7FFFFFFFFFFFFF7FLL, 0xFF80000000000000)) >> 64;
  v33 = v29 + (v31 >> 56) - 0x80000000000000;
  v35 = __PAIR128__(v32, v34) >> 56;
  v36 = HIBYTE(v32);
  v11 = __CFADD__(v30, v35);
  v37 = v30 + v35;
  if (v11)
  {
    ++v36;
  }

  *result = v31 & 0xFFFFFFFFFFFFFFLL;
  result[1] = v33 & 0xFFFFFFFFFFFFFFLL;
  *(&v38 + 1) = v36;
  *&v38 = v37;
  result[2] = v37 & 0xFFFFFFFFFFFFFFLL;
  result[3] = (v38 >> 56) + (v27 & 0xFFFFFFFFFFFFFFLL);
  return result;
}

uint64_t p224_felem_mul(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = (*a3 * *a2) >> 64;
  *result = *a3 * *a2;
  *(result + 8) = v7;
  *(result + 16) = v5 * v4 + v3 * v6;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  *(result + 32) = v8 * v6 + v5 * v3 + v10 * v4;
  *(result + 48) = v10 * v3 + v8 * v5 + v9 * v6 + v11 * v4;
  *(result + 64) = v9 * v5 + v10 * v8 + v11 * v3;
  v12 = (v11 * v8) >> 64;
  v13 = v11 * v8;
  *(result + 80) = v13 + v9 * v10;
  *(result + 88) = ((v9 * v10) >> 64) + __CFADD__(v13, v9 * v10) + v12;
  *(result + 96) = v11 * v9;
  return result;
}

uint64_t *p224_felem_to_generic(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = a2[3];
  v4 = v2 + (HIBYTE(v3) << 40);
  v5 = v3 & 0xFFFFFFFFFFFFFFLL;
  v7 = (((a2[2] & v3 & (v2 | 0xFFFFFFFFFFLL)) + 1) | ((*a2 + (v2 & 0xFFFFFFFFFFLL) - 1) >> 63)) & 0xFFFFFFFFFFFFFFLL;
  v6 = v7 == 0;
  if (v7)
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xFFFFFFFFFFLL;
  if (v7)
  {
    v9 = -1;
  }

  v10 = *a2 - HIBYTE(v3) + ((v7 - 1) >> 63);
  v11 = v10 + (v10 >> 63 << 56);
  v12 = (v9 & v4) + (v10 >> 63);
  v13 = v8 + (v12 >> 56);
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14 + (v13 >> 56);
  *result = v11 | (v12 << 56);
  result[1] = (v12 >> 8) & 0xFFFFFFFFFFFFLL | (v13 << 48);
  result[2] = (v13 >> 16) & 0xFFFFFFFFFFLL | (v15 << 40);
  result[3] = v15 >> 24;
  return result;
}

double p224_point_add(int64x2_t *a1, int8x16_t *a2, int8x16_t *a3, int64x2_t *a4, int64x2_t *a5, int8x16_t *a6, int a7, unint64_t *a8, unint64_t *a9, int8x16_t *a10)
{
  v100 = *MEMORY[0x1E69E9840];
  v14.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v14.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v98 = v14;
  v99 = v14;
  v96 = v14;
  v97 = v14;
  v95[0] = v14;
  v95[1] = v14;
  v93 = v14;
  v94 = v14;
  v91 = v14;
  v92 = v14;
  v89 = v14;
  v90 = v14;
  v87 = v14;
  v88 = v14;
  v85 = v14;
  v86 = v14;
  v83 = v14;
  v84 = v14;
  v81 = v14;
  v82 = v14;
  v79 = v14;
  v80 = v14;
  v77 = v14;
  v78 = v14;
  v75 = v14;
  v76 = v14;
  v73 = v14;
  v74 = v14;
  v71 = v14;
  v72 = v14;
  if (a7)
  {
    v16 = a5->i64[0];
    v15 = a5->i64[1];
    v93.i64[0] = a5->i64[0];
    v93.i64[1] = v15;
    v18 = a5[1].i64[0];
    v17 = a5[1].i64[1];
    v94.i64[0] = v18;
    v94.i64[1] = v17;
    v19 = a4->i64[1];
    v65 = a4->i64[0];
    v96.i64[0] = a4->i64[0];
    v96.i64[1] = v19;
    v66 = v19;
    v20 = a4[1].i64[1];
    v68 = a4[1].i64[0];
    v97.i64[0] = v68;
    v97.i64[1] = v20;
  }

  else
  {
    p224_felem_square(&v78, a10);
    p224_felem_reduce(&v96, &v78);
    p224_felem_mul(&v78, &v96, a10);
    p224_felem_reduce(&v93, &v78);
    p224_felem_mul(&v71, &v93, a5);
    p224_felem_reduce(&v93, &v71);
    p224_felem_mul(&v71, &v96, a4);
    p224_felem_reduce(&v96, &v71);
    v15 = v93.i64[1];
    v16 = v93.i64[0];
    v17 = v94.i64[1];
    v18 = v94.i64[0];
    v66 = v96.i64[1];
    v65 = v96.i64[0];
    v20 = v97.i64[1];
    v68 = v97.i64[0];
  }

  v69 = v20;
  p224_felem_square(&v78, a6);
  p224_felem_reduce(&v98, &v78);
  p224_felem_mul(&v78, &v98, a6);
  p224_felem_reduce(v95, &v78);
  p224_felem_mul(&v78, v95, a9);
  v78 = v78 - v16 + __PAIR128__(1, 256);
  v21 = (*&v79 - v15) >> 64;
  if ((v79.i64[0] - v15) >= 0x1000000000100)
  {
    ++v21;
  }

  v79.i64[0] = v79.i64[0] - v15 - 0x1000000000100;
  v79.i64[1] = v21;
  v22 = (*&v80 - v18) >> 64;
  if ((v80.i64[0] - v18) >= 0x100)
  {
    ++v22;
  }

  v80.i64[0] = v80.i64[0] - v18 - 256;
  v80.i64[1] = v22;
  v23 = (*&v81 - v17) >> 64;
  if ((v81.i64[0] - v17) >= 0x100)
  {
    ++v23;
  }

  v81.i64[0] = v81.i64[0] - v17 - 256;
  v81.i64[1] = v23;
  p224_felem_reduce(v95, &v78);
  p224_felem_mul(&v78, &v98, a8);
  v78 = v78 - v65 + __PAIR128__(1, 256);
  v24 = (*&v79 - v66) >> 64;
  if ((v79.i64[0] - v66) >= 0x1000000000100)
  {
    ++v24;
  }

  v79.i64[0] = v79.i64[0] - v66 - 0x1000000000100;
  v79.i64[1] = v24;
  v25 = (*&v80 - v68) >> 64;
  if ((v80.i64[0] - v68) >= 0x100)
  {
    ++v25;
  }

  v80.i64[0] = v80.i64[0] - v68 - 256;
  v80.i64[1] = v25;
  v26 = (*&v81 - v69) >> 64;
  if ((v81.i64[0] - v69) >= 0x100)
  {
    ++v26;
  }

  v81.i64[0] = v81.i64[0] - v69 - 256;
  v81.i64[1] = v26;
  p224_felem_reduce(&v98, &v78);
  is_zero = p224_felem_is_zero(&v98);
  v28 = p224_felem_is_zero(v95);
  v29 = p224_felem_is_zero(a6);
  v30 = p224_felem_is_zero(a10);
  if ((v28 & is_zero & ~v29 & (v30 ^ 1)) != 0)
  {
    v31 = *MEMORY[0x1E69E9840];

    p224_point_double(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v33 = v30;
    if (a7)
    {
      v34 = a6[1];
      v91 = *a6;
      v92 = v34;
    }

    else
    {
      p224_felem_mul(&v78, a6, a10);
      p224_felem_reduce(&v91, &v78);
    }

    p224_felem_mul(&v78, &v98, &v91);
    p224_felem_reduce(&v85, &v78);
    v91 = v98;
    v92 = v99;
    p224_felem_square(&v78, &v98);
    p224_felem_reduce(&v98, &v78);
    p224_felem_mul(&v78, &v98, &v91);
    p224_felem_reduce(&v91, &v78);
    p224_felem_mul(&v78, &v96, &v98);
    p224_felem_reduce(&v96, &v78);
    p224_felem_mul(&v78, &v93, &v91);
    p224_felem_square(&v71, v95);
    v70 = v96;
    v35 = __CFADD__(v91.i64[0], 2 * v96.i64[0]);
    v71 = v71 - __PAIR128__(v35, v91.i64[0] + 2 * v96.i64[0]) + __PAIR128__(2, 512);
    v36 = __CFADD__(v91.i64[1], 2 * v96.i64[1]);
    v72 = v72 - __PAIR128__(v36, v91.i64[1] + 2 * v96.i64[1]) + __PAIR128__(1, 0xFFFDFFFFFFFFFE00);
    v67 = v97;
    v37 = __CFADD__(v92.i64[0], 2 * v97.i64[0]);
    v38 = *&v73 - __PAIR128__(v37, v92.i64[0] + 2 * v97.i64[0]);
    v73.i64[0] = v73.i64[0] - (v92.i64[0] + 2 * v97.i64[0]) - 512;
    v73.i64[1] = (v38 >= 0x200) + *(&v38 + 1) + 1;
    v39 = __CFADD__(v92.i64[1], 2 * v97.i64[1]);
    v40 = (*&v74 - __PAIR128__(v39, v92.i64[1] + 2 * v97.i64[1])) >> 64;
    v41 = (v74.i64[0] - (v92.i64[1] + 2 * v97.i64[1])) >= 0x200;
    v74.i64[0] = v74.i64[0] - (v92.i64[1] + 2 * v97.i64[1]) - 512;
    v74.i64[1] = v41 + v40 + 1;
    p224_felem_reduce(&v89, &v71);
    v96 = vaddq_s64(vsubq_s64(v70, v89), xmmword_1A90A9AF0);
    v97 = vaddq_s64(vsubq_s64(v67, v90), vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL));
    p224_felem_mul(&v71, v95, &v96);
    v42 = ((v71 - v78) >> 64) + 0x100000000000000;
    *&v71 = v71 - v78;
    *(&v71 + 1) = v42;
    v43 = ((v72 - *&v79) >> 64) + 0xFFFFFFFFFFFFFFLL;
    *&v72 = v72 - v79.i64[0];
    *(&v72 + 1) = v43;
    v44 = ((*&v73 - *&v80) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v73.i64[0] -= v80.i64[0];
    v73.i64[1] = v44;
    v45 = ((*&v74 - *&v81) >> 64) + 0x100000000000000;
    v74.i64[0] -= v81.i64[0];
    v74.i64[1] = v45;
    v46 = ((*&v75 - *&v82) >> 64) + 0xFFFEFFFFFFFFFFLL;
    v75.i64[0] -= v82.i64[0];
    v75.i64[1] = v46;
    v47 = ((*&v76 - *&v83) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v76.i64[0] -= v83.i64[0];
    v76.i64[1] = v47;
    v48 = ((*&v77 - *&v84) >> 64) + 0xFFFFFFFFFFFFFFLL;
    v77.i64[0] -= v84.i64[0];
    v77.i64[1] = v48;
    p224_felem_reduce(&v87, &v71);
    v49 = 0;
    v50 = vdupq_n_s64(-v29);
    do
    {
      *(&v89 + v49 * 8) = vbslq_s8(v50, *&a8[v49], *(&v89 + v49 * 8));
      v49 += 2;
    }

    while (v49 != 4);
    v51 = 0;
    v52 = vdupq_n_s64(-v33);
    do
    {
      *(&v89 + v51 * 16) = vbslq_s8(v52, a4[v51], *(&v89 + v51 * 16));
      ++v51;
    }

    while (v51 != 2);
    for (i = 0; i != 4; i += 2)
    {
      *(&v87 + i * 8) = vbslq_s8(v50, *&a9[i], *(&v87 + i * 8));
    }

    for (j = 0; j != 2; ++j)
    {
      *(&v87 + j * 16) = vbslq_s8(v52, a5[j], *(&v87 + j * 16));
    }

    for (k = 0; k != 2; ++k)
    {
      *(&v85 + k * 16) = vbslq_s8(v50, a10[k], *(&v85 + k * 16));
    }

    for (m = 0; m != 2; ++m)
    {
      *(&v85 + m * 16) = vbslq_s8(v52, a6[m], *(&v85 + m * 16));
    }

    v57 = v90;
    *a1 = v89;
    a1[1] = v57;
    v58 = v88;
    *a2 = v87;
    a2[1] = v58;
    result = *v85.i64;
    v59 = v86;
    *a3 = v85;
    a3[1] = v59;
    v60 = *MEMORY[0x1E69E9840];
  }

  return result;
}

unint64_t p224_felem_is_zero(int8x16_t *a1)
{
  v1 = a1[1].i64[0];
  v2 = a1[1].u64[1];
  v3 = veorq_s8(*a1, xmmword_1A90A9B00);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(veorq_s8(*a1, xmmword_1A90A9B10), vextq_s8(v3, v3, 8uLL)), vdupq_n_s64(v1 ^ 0xFFFFFFFFFFFFFFuLL)), veorq_s8(vdupq_n_s64(v2), xmmword_1A90A9B20));
  v3.i64[0] = -1;
  v3.i64[1] = -1;
  v5 = vaddq_s64(v4, v3);
  return (v5.i64[0] | ((vorrq_s8(vdupq_laneq_s64(*a1, 1), *a1).u64[0] | v1 | v2) - 1) | v5.i64[1]) >> 63;
}

void *p224_point_double(int64x2_t *a1, void *a2, void *a3, int64x2_t *a4, int64x2_t *a5, int64x2_t *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  v11.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v69 = v11;
  v70 = v11;
  v67 = v11;
  v68 = v11;
  v65 = v11;
  v66 = v11;
  v64 = v11;
  v62 = v11;
  v63 = v11;
  v60 = v11;
  v61 = v11;
  v58 = v11;
  v59 = v11;
  v56 = v11;
  v57 = v11;
  v54 = v11;
  v55 = v11;
  v52 = v11;
  v53 = v11;
  v50[1] = v11;
  v51 = v11;
  v50[0] = v11;
  v41 = *a4;
  v43 = a4[1];
  p224_felem_square(&v64, a6);
  p224_felem_reduce(&v55, &v64);
  p224_felem_square(&v64, a5);
  p224_felem_reduce(&v53, &v64);
  p224_felem_mul(&v64, a4, &v53);
  p224_felem_reduce(&v51, &v64);
  v45 = vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL);
  v48 = vaddq_s64(vsubq_s64(v41, v55), xmmword_1A90A9AF0);
  v49 = vaddq_s64(vsubq_s64(v43, v56), v45);
  v12 = v55.i64[1];
  v13 = v55.i64[0];
  v14 = v56.i64[1];
  v15 = v56.i64[0];
  v47[0] = 3 * (v55.i64[0] + v41.i64[0]);
  v47[1] = 3 * (v55.i64[1] + v41.i64[1]);
  v47[2] = 3 * (v56.i64[0] + v43.i64[0]);
  v47[3] = 3 * (v56.i64[1] + v43.i64[1]);
  p224_felem_mul(&v64, &v48, v47);
  p224_felem_reduce(v50, &v64);
  p224_felem_square(&v64, v50);
  v42 = v52;
  v44 = v51;
  v64 = v64 - (8 * v51.i64[0]) + __PAIR128__(1, 256);
  v17 = (*&v65 - 8 * v51.i64[1]) >> 64;
  v16 = v65.i64[0] - 8 * v51.i64[1];
  v18 = __CFADD__(v16, 0xFFFEFFFFFFFFFF00);
  v19 = v16 - 0x1000000000100;
  if (v18)
  {
    ++v17;
  }

  v65.i64[0] = v19;
  v65.i64[1] = v17;
  v21 = (v66 - (8 * v52.i64[0])) >> 64;
  v20 = v66 - 8 * v52.i64[0];
  v18 = v20 >= 0x100;
  v22 = v20 - 256;
  if (v18)
  {
    ++v21;
  }

  *&v66 = v22;
  *(&v66 + 1) = v21;
  v24 = (v67 - (8 * v52.i64[1])) >> 64;
  v23 = v67 - 8 * v52.i64[1];
  v18 = v23 >= 0x100;
  v25 = v23 - 256;
  if (v18)
  {
    ++v24;
  }

  *&v67 = v25;
  *(&v67 + 1) = v24;
  p224_felem_reduce(a1, &v64);
  v26 = vaddq_s64(*a6, *a5);
  v27 = vaddq_s64(a6[1], a5[1]);
  v28 = v53.i64[0] + v13;
  v29 = v53.i64[1] + v12;
  v30 = v54.i64[0] + v15;
  v31 = v54.i64[1] + v14;
  v48 = v26;
  v49 = v27;
  p224_felem_square(&v64, &v48);
  v64 = v64 - v28 + __PAIR128__(1, 256);
  v32 = (*&v65 - v29) >> 64;
  if ((v65.i64[0] - v29) >= 0x1000000000100)
  {
    ++v32;
  }

  v65.i64[0] = v65.i64[0] - v29 - 0x1000000000100;
  v65.i64[1] = v32;
  v33 = (v66 - v30) >> 64;
  if ((v66 - v30) >= 0x100)
  {
    ++v33;
  }

  *&v66 = v66 - v30 - 256;
  *(&v66 + 1) = v33;
  v34 = (v67 - v31) >> 64;
  if ((v67 - v31) >= 0x100)
  {
    ++v34;
  }

  *&v67 = v67 - v31 - 256;
  *(&v67 + 1) = v34;
  p224_felem_reduce(a3, &v64);
  v35 = vaddq_s64(vsubq_s64(vshlq_n_s64(v42, 2uLL), a1[1]), v45);
  v51 = vaddq_s64(vsubq_s64(vshlq_n_s64(v44, 2uLL), *a1), xmmword_1A90A9AF0);
  v52 = v35;
  p224_felem_mul(&v64, v50, &v51);
  p224_felem_square(&v57, &v53);
  v36 = ((v64 - *&v57 * 8) >> 64) + 0x100000000000000;
  *&v64 = v64 - 8 * v57.i64[0];
  *(&v64 + 1) = v36;
  v37 = *&v65 - *&v58 * 8;
  v65.i64[0] -= 8 * v58.i64[0];
  v65.i64[1] = *(&v37 + 1) + 0xFFFFFFFFFFFFFFLL;
  v66 = v66 - *&v59 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v67 = v67 - *&v60 * 8 + __PAIR128__(0x100000000000000, 0);
  v68 = v68 - *&v61 * 8 + __PAIR128__(0xFFFEFFFFFFFFFFLL, 0);
  v69 = v69 - *&v62 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v38 = ((*&v70 - *&v63 * 8) >> 64) + 0xFFFFFFFFFFFFFFLL;
  v70.i64[0] -= 8 * v63.i64[0];
  v70.i64[1] = v38;
  result = p224_felem_reduce(a2, &v64);
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

void ec_GFp_nistp224_make_precomp(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = *a2 & 0xFFFFFFFFFFFFFFLL;
  v4 = (a1 + 96);
  *(a1 + 104) = (*a2 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 112) = (*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 120) = (*(a2 + 16) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 128) = *(a2 + 72) & 0xFFFFFFFFFFFFFFLL;
  v5 = (a1 + 128);
  *(a1 + 136) = (*(a2 + 72) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 144) = (*(a2 + 80) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 152) = (*(a2 + 88) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 160) = *(a2 + 144) & 0xFFFFFFFFFFFFFFLL;
  v6 = (a1 + 160);
  *(a1 + 168) = (*(a2 + 144) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 176) = (*(a2 + 152) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 184) = (*(a2 + 160) >> 40) & 0xFFFFFFFFFFFFFFLL;
  v7 = 2;
  do
  {
    v8 = a1 + v3;
    if (v7)
    {
      p224_point_add((v8 + 192), (v8 + 224), (v8 + 256), v4, v5, v6, 0, (v8 + 96), (v8 + 128), (v8 + 160));
    }

    else
    {
      p224_point_double((v8 + 192), (v8 + 224), (v8 + 256), (a1 + 96 * (v7 >> 1)), (a1 + 96 * (v7 >> 1) + 32), (a1 + 96 * (v7 >> 1) + 64));
    }

    ++v7;
    v3 += 96;
  }

  while (v3 != 1440);
}

uint64_t p224_select_point(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      for (j = 0; j != 96; j += 8)
      {
        *(a4 + j) |= *(a3 + j) & ((((i ^ result) - 1) & ~result) >> 63);
      }

      a3 += 96;
    }
  }

  return result;
}

void *p224_felem_neg(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v3 = a2[1];
  v4 = *a2 <= 0x100uLL;
  v8[0] = 256 - *a2;
  v8[1] = v4;
  v9 = 0xFFFEFFFFFFFFFF00 - __PAIR128__(v4, v3);
  v5 = a2[3];
  v10 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v2, a2[2]);
  v11 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v10, v5);
  result = p224_felem_reduce(a1, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bn_mod_u16_consttime(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = BN_num_bits_word(a2 - 1);
  if (v4 >= 0x11)
  {
    bn_mod_u16_consttime_cold_1();
  }

  v5 = *(a1 + 8);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v4;
  LODWORD(result) = 0;
  v8 = v5 - 1;
  v9 = ((a2 | (1 << (v6 | 0x20u))) - 1) / a2;
  do
  {
    v10 = *(*a1 + 8 * v8 + 4);
    v11 = mod_u16(__PAIR64__(result, v10) >> 16, a2, v6, v9);
    v12 = mod_u16(v10 | (v11 << 16), a2, v6, v9);
    v13 = *(*a1 + 8 * v8);
    v14 = mod_u16(__PAIR64__(v12, v13) >> 16, a2, v6, v9);
    result = mod_u16(v13 | (v14 << 16), a2, v6, v9);
    v15 = v8-- + 1;
  }

  while (v15 > 1);
  return result;
}

uint64_t mod_u16(unsigned int a1, unsigned int a2, char a3, unsigned int a4)
{
  if (a1 - ((((a4 * a1) >> 32) + ((a1 - ((a4 * a1) >> 32)) >> 1)) >> (a3 - 1)) * a2 >= a2)
  {
    mod_u16_cold_1();
  }

  return (a1 - ((((a4 * a1) >> 32) + ((a1 - ((a4 * a1) >> 32)) >> 1)) >> (a3 - 1)) * a2);
}

uint64_t mem_write(uint64_t a1, const void *a2, int a3)
{
  BIO_clear_retry_flags(a1);
  if (a3 < 1)
  {
    return 0;
  }

  if ((*(a1 + 25) & 2) != 0)
  {
    ERR_put_error(17, 0, 116, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio_mem.c", 168);
    return 0xFFFFFFFFLL;
  }

  else if (BUF_MEM_append(*(a1 + 40), a2, a3))
  {
    return a3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

size_t mem_read(uint64_t a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  BIO_clear_retry_flags(a1);
  if (v3 < 1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *v6;
  if (*v6 >= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v7;
  }

  if (v3 >= 1)
  {
    memcpy(a2, v6[1], v3);
    v8 = *v6;
    v9 = *v6 - v3;
    *v6 = v9;
    if ((*(a1 + 25) & 2) != 0)
    {
      v6[1] += v3;
    }

    else if (v8 != v3)
    {
      memmove(v6[1], (v6[1] + v3), v9);
    }

    return v3;
  }

  if (v7)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    BIO_set_retry_read(a1);
  }

  return v3;
}

size_t mem_gets(uint64_t a1, void *a2, int a3)
{
  BIO_clear_retry_flags(a1);
  v6 = (a3 - 1);
  if (a3 < 1)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  if (*v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v7;
  }

  if (v8)
  {
    v9 = v7[1];
    v10 = memchr(v9, 10, v8);
    if (v10)
    {
      LODWORD(v8) = v10 - v9 + 1;
    }
  }

  result = mem_read(a1, a2, v8);
  if ((result & 0x80000000) == 0)
  {
    *(a2 + result) = 0;
  }

  return result;
}

uint64_t mem_ctrl(uint64_t a1, int a2, int a3, uint64_t **a4)
{
  result = 0;
  v8 = *(a1 + 40);
  if (a2 > 9)
  {
    if (a2 <= 113)
    {
      if (a2 == 10)
      {
        return *v8;
      }

      else
      {
        return a2 == 11;
      }
    }

    switch(a2)
    {
      case 114:
        mem_free(a1);
        *(a1 + 20) = a3;
        *(a1 + 40) = a4;
        break;
      case 115:
        if (a4)
        {
          *a4 = v8;
        }

        break;
      case 130:
        *(a1 + 32) = a3;
        break;
      default:
        return result;
    }

    return 1;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return *v8 == 0;
      }

      return result;
    }

    v9 = v8[1];
    if (v9)
    {
      v10 = v8[2];
      if ((*(a1 + 25) & 2) != 0)
      {
        v11 = &v9[*v8 - v10];
        *v8 = v10;
        v8[1] = v11;
      }

      else
      {
        if (v10)
        {
          bzero(v9, v10);
        }

        *v8 = 0;
      }
    }

    return 1;
  }

  if (a2 != 3)
  {
    if (a2 == 8)
    {
      return *(a1 + 20);
    }

    if (a2 != 9)
    {
      return result;
    }

    *(a1 + 20) = a3;
    return 1;
  }

  result = *v8;
  if (a4)
  {
    *a4 = v8[1];
  }

  return result;
}

BUF_MEM *mem_new(uint64_t a1)
{
  result = BUF_MEM_new();
  if (result)
  {
    *(a1 + 16) = 0x100000001;
    *(a1 + 32) = -1;
    *(a1 + 40) = result;
    return 1;
  }

  return result;
}

uint64_t mem_free(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        if ((*(a1 + 25) & 2) != 0)
        {
          v2->data = 0;
        }

        BUF_MEM_free(v2);
        *(a1 + 40) = 0;
      }
    }
  }

  return 1;
}

uint64_t null_cipher(int a1, void *__dst, void *__src, size_t __n)
{
  if (__src != __dst && __n)
  {
    memcpy(__dst, __src, __n);
  }

  return 1;
}

int SHA256_Final(unsigned __int8 *md, SHA256_CTX *c)
{
  if (c->md_len > 0x20)
  {
    return 0;
  }

  BCM_sha256_final(md, c);
  return 1;
}

unsigned __int8 *EC_POINT_point2buf(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t a3, unsigned __int8 **a4, uint64_t a5, BN_CTX *a6)
{
  *a4 = 0;
  result = EC_POINT_point2oct(a1, a2, a3, 0, 0, a6);
  if (result)
  {
    v11 = result;
    result = OPENSSL_malloc(result);
    if (result)
    {
      v13 = result;
      result = EC_POINT_point2oct(a1, a2, a3, result, v11, v12);
      if (result)
      {
        *a4 = v13;
      }

      else
      {
        OPENSSL_free(v13);
        return 0;
      }
    }
  }

  return result;
}

int EC_POINT_set_compressed_coordinates_GFp(const EC_GROUP *a1, EC_POINT *a2, const BIGNUM *x, int y_bit, BN_CTX *a5)
{
  if (!EC_GROUP_cmp(a1, *a2, 0))
  {
    if (BN_is_negative(x) || (BN_cmp(x, (a1 + 320)) & 0x80000000) == 0)
    {
      v10 = 107;
      v11 = 265;
      goto LABEL_6;
    }

    ERR_clear_error();
    if (a5)
    {
      v14 = 0;
    }

    else
    {
      v14 = BN_CTX_new();
      a5 = v14;
      if (!v14)
      {
        return 0;
      }
    }

    v23 = y_bit != 0;
    BN_CTX_start(a5);
    v15 = BN_CTX_get(a5);
    v16 = BN_CTX_get(a5);
    v17 = BN_CTX_get(a5);
    v18 = BN_CTX_get(a5);
    v19 = BN_CTX_get(a5);
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = v19;
    if (!EC_GROUP_get_curve_GFp(a1, 0, v17, v18, a5) || !BN_mod_sqr(v16, x, (a1 + 320), a5) || !BN_mod_mul(v15, v16, x, (a1 + 320), a5))
    {
      goto LABEL_35;
    }

    if (*(a1 + 132))
    {
      if (!bn_mod_lshift1_consttime(v16, x, a1 + 320, a5) || !bn_mod_add_consttime(v16, v16, x, a1 + 320, a5) || !bn_mod_sub_consttime(v15, v15, v16, a1 + 320, a5))
      {
        goto LABEL_35;
      }
    }

    else if (!BN_mod_mul(v16, v17, x, (a1 + 320), a5) || !bn_mod_add_consttime(v15, v15, v16, a1 + 320, a5))
    {
      goto LABEL_35;
    }

    if (!bn_mod_add_consttime(v15, v15, v18, a1 + 320, a5))
    {
LABEL_35:
      v12 = 0;
      goto LABEL_36;
    }

    if (BN_mod_sqrt(v20, v15, (a1 + 320), a5))
    {
      if (BN_is_odd(v20) == v23)
      {
LABEL_26:
        if (BN_is_odd(v20) == v23)
        {
          v12 = EC_POINT_set_affine_coordinates_GFp(a1, a2, x, v20, a5) != 0;
LABEL_36:
          BN_CTX_end(a5);
          BN_CTX_free(v14);
          return v12;
        }

        v21 = 68;
        v22 = 345;
        goto LABEL_34;
      }

      if (!BN_is_zero(v20))
      {
        if (!BN_usub(v20, (a1 + 320), v20))
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v21 = 108;
      v22 = 337;
    }

    else if ((ERR_peek_last_error() & 0xFF000FFF) == 0x300006E)
    {
      ERR_clear_error();
      v21 = 107;
      v22 = 328;
    }

    else
    {
      v21 = 3;
      v22 = 330;
    }

LABEL_34:
    ERR_put_error(15, 0, v21, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v22);
    goto LABEL_35;
  }

  v10 = 106;
  v11 = 259;
LABEL_6:
  ERR_put_error(15, 0, v10, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/ec/oct.c.inc", v11);
  return 0;
}

void *SPAKE2PLUS_CTX_new_context(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const unsigned __int8 *a8, int a9, const unsigned __int8 *a10, int a11, const unsigned __int8 *a12, size_t a13, const BIGNUM *a14, const BIGNUM *a15)
{
  if (!a1)
  {
    v26 = 0;
    if (!a8)
    {
      return v26;
    }

    v27 = a10 && a12 == 0;
    if (!v27 || a15 != 0)
    {
      return v26;
    }

    goto LABEL_24;
  }

  if (a1 != 1)
  {
LABEL_24:
    v38 = a14;
    v39 = a12;
    v37 = a15;
    v36 = 0;
    goto LABEL_25;
  }

  if (a10)
  {
    v23 = 1;
  }

  else
  {
    v23 = a8 == 0;
  }

  if (v23 || a12 == 0 || a14 != 0)
  {
    return 0;
  }

  v38 = a14;
  v39 = a12;
  v37 = a15;
  v36 = 1;
LABEL_25:
  v29 = OPENSSL_zalloc(0x160uLL);
  v26 = v29;
  if (v29)
  {
    *(v29 + 12) = a1;
    v42[0] = a2;
    v42[1] = a3;
    v41[0] = a4;
    v41[1] = a5;
    v40[0] = a6;
    v40[1] = a7;
    if (!CBS_stow(v42, v29, v29 + 1))
    {
      goto LABEL_46;
    }

    if (!CBS_stow(v41, v26 + 2, v26 + 3))
    {
      goto LABEL_46;
    }

    if (!CBS_stow(v40, v26 + 4, v26 + 5))
    {
      goto LABEL_46;
    }

    if (a8)
    {
      BN_init((v26 + 7));
      if (!BN_bin2bn(a8, a9, (v26 + 7)))
      {
        goto LABEL_46;
      }
    }

    if (a10)
    {
      BN_init((v26 + 10));
      if (!BN_bin2bn(a10, a11, (v26 + 10)))
      {
        goto LABEL_46;
      }
    }

    v30 = EC_group_p256();
    v31 = v30;
    if (v39)
    {
      v32 = EC_POINT_new(v30);
      v26[13] = v32;
      if (!EC_POINT_oct2point(v31, v32, v39, a13, 0))
      {
        goto LABEL_46;
      }
    }

    if (v38)
    {
      BN_init((v26 + 14));
      if (!BN_copy((v26 + 14), v38))
      {
LABEL_46:
        SPAKE2PLUS_CTX_free(v26);
        return 0;
      }
    }

    else if (!a1)
    {
      BN_init((v26 + 14));
      v33 = EC_GROUP_get0_order(v31);
      if (!BN_rand_range_ex((v26 + 14), 1uLL, v33))
      {
        goto LABEL_46;
      }
    }

    if (v37)
    {
      BN_init((v26 + 17));
      if (!BN_copy((v26 + 17), v37))
      {
        goto LABEL_46;
      }
    }

    else if (v36)
    {
      BN_init((v26 + 17));
      v34 = EC_GROUP_get0_order(v31);
      if (!BN_rand_range_ex((v26 + 17), 1uLL, v34))
      {
        goto LABEL_46;
      }
    }

    *(v26 + 13) = 0;
  }

  return v26;
}

void SPAKE2PLUS_CTX_free(void *a1)
{
  if (a1)
  {
    OPENSSL_free(*a1);
    OPENSSL_free(a1[2]);
    OPENSSL_free(a1[4]);
    BN_free((a1 + 7));
    BN_free((a1 + 10));
    BN_free((a1 + 14));
    BN_free((a1 + 17));
    EC_POINT_free(a1[13]);
    EC_POINT_free(a1[20]);
    EC_POINT_free(a1[21]);
    EC_POINT_free(a1[22]);
    EC_POINT_free(a1[23]);

    OPENSSL_free(a1);
  }
}

uint64_t SPAKE2PLUS_generate_prover_share(uint64_t a1, unsigned __int8 *a2, void *a3, size_t a4)
{
  if (!*(a1 + 48) && !*(a1 + 52))
  {
    v10 = EC_group_p256();
    v11 = EC_POINT_new(v10);
    if (v11)
    {
      v12 = EC_POINT_new(v10);
      if (v12 && EC_POINT_mul(v10, v11, (a1 + 112), 0, 0, 0))
      {
        v13 = EC_POINT_new(v10);
        if (EC_POINT_oct2point(v10, v13, M_bytes, 0x21uLL, 0))
        {
          if (EC_POINT_mul(v10, v12, 0, v13, (a1 + 56), 0))
          {
            v14 = EC_POINT_new(v10);
            *(a1 + 160) = v14;
            if (EC_POINT_add(v10, v14, v11, v12, 0))
            {
              v15 = EC_POINT_point2oct(v10, *(a1 + 160), POINT_CONVERSION_UNCOMPRESSED, a2, a4, 0);
              if (v15)
              {
                v16 = v15;
                *a3 = v15;
                if (v15 << 32)
                {
                  memcpy((a1 + 192), a2, v15);
                }

                *(a1 + 264) = v16;
                v5 = 1;
                *(a1 + 52) = 1;
                goto LABEL_18;
              }
            }
          }
        }

LABEL_17:
        v5 = 0;
LABEL_18:
        EC_POINT_free(v11);
        EC_POINT_free(v12);
        EC_POINT_free(v13);
        return v5;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t SPAKE2PLUS_process_prover_share(uint64_t a1, const void *a2, uint64_t a3, void *a4, size_t *a5, size_t a6, void *a7, size_t *a8, unint64_t a9, void *__dst, size_t *a11, unint64_t a12)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v12 = 0;
    if (a3 == 65 && !*(a1 + 52))
    {
      v20 = EC_group_p256();
      v21 = EC_POINT_new(v20);
      if (v21)
      {
        v22 = EC_POINT_new(v20);
        if (v22 && EC_POINT_mul(v20, v21, (a1 + 136), 0, 0, 0))
        {
          v43 = EC_POINT_new(v20);
          if (EC_POINT_oct2point(v20, v43, M_bytes, 0x21uLL, 0))
          {
            r = v22;
            v23 = EC_POINT_new(v20);
            if (EC_POINT_oct2point(v20, v23, N_bytes, 0x21uLL, 0))
            {
              v41 = v23;
              if (EC_POINT_mul(v20, r, 0, v23, (a1 + 56), 0))
              {
                v24 = EC_POINT_new(v20);
                *(a1 + 168) = v24;
                v22 = r;
                if (EC_POINT_add(v20, v24, v21, r, 0) && (v25 = EC_POINT_point2oct(v20, *(a1 + 168), POINT_CONVERSION_UNCOMPRESSED, a4, a6, 0)) != 0 && (*a5 = v25, v26 = EC_POINT_new(v20), *(a1 + 160) = v26, EC_POINT_oct2point(v20, v26, a2, 0x41uLL, 0)))
                {
                  v27 = EC_POINT_new(v20);
                  if (EC_POINT_mul(v20, v27, 0, v43, (a1 + 56), 0))
                  {
                    b = v27;
                    if (EC_POINT_invert(v20, v27, 0))
                    {
                      v28 = EC_POINT_new(v20);
                      if (v28)
                      {
                        v29 = EC_POINT_new(v20);
                        *(a1 + 176) = v29;
                        if (v29)
                        {
                          if (EC_POINT_add(v20, v28, *(a1 + 160), b, 0))
                          {
                            if (EC_POINT_mul(v20, *(a1 + 176), 0, v28, (a1 + 136), 0))
                            {
                              v30 = EC_POINT_new(v20);
                              *(a1 + 184) = v30;
                              if (EC_POINT_mul(v20, v30, 0, *(a1 + 104), (a1 + 136), 0))
                              {
                                *&v31 = 0xAAAAAAAAAAAAAAAALL;
                                *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
                                v49[0] = v31;
                                v49[1] = v31;
                                v45 = 32;
                                __n = 32;
                                __src[0] = v31;
                                __src[1] = v31;
                                v47[0] = v31;
                                v47[1] = v31;
                                if (compute_transcript_and_confirmation_messages(a1, a2, 0x41uLL, a4, *a5, v49, &__n, __src, &v45, v47, &v44))
                                {
                                  if (v45 >= a9)
                                  {
                                    v32 = a9;
                                  }

                                  else
                                  {
                                    v32 = v45;
                                  }

                                  if (v32)
                                  {
                                    memcpy(a7, __src, v32);
                                  }

                                  *a8 = v32;
                                  v33 = __n;
                                  if (__n)
                                  {
                                    memcpy((a1 + 272), v49, __n);
                                  }

                                  *(a1 + 304) = v33;
                                  if (a12 >= 0x20)
                                  {
                                    v34 = 32;
                                  }

                                  else
                                  {
                                    v34 = a12;
                                  }

                                  if (a12)
                                  {
                                    memcpy(__dst, v47, v34);
                                  }

                                  *a11 = v34;
                                  *(a1 + 52) = 3;
                                  v12 = 1;
                                  v22 = r;
                                  v35 = v43;
                                  goto LABEL_48;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      v28 = 0;
                    }

                    v12 = 0;
                    v35 = v43;
LABEL_48:
                    v36 = v41;
                    v37 = b;
                    goto LABEL_37;
                  }

                  v37 = v27;
                }

                else
                {
                  v37 = 0;
                }

                v28 = 0;
                v12 = 0;
                v35 = v43;
              }

              else
              {
                v37 = 0;
                v28 = 0;
                v12 = 0;
                v22 = r;
                v35 = v43;
              }

              v36 = v41;
            }

            else
            {
              v37 = 0;
              v28 = 0;
              v12 = 0;
              v36 = v23;
              v22 = r;
              v35 = v43;
            }
          }

          else
          {
            v36 = 0;
            v37 = 0;
            v28 = 0;
            v12 = 0;
            v35 = v43;
          }

LABEL_37:
          EC_POINT_free(v21);
          EC_POINT_free(v22);
          EC_POINT_free(v35);
          EC_POINT_free(v36);
          EC_POINT_free(v37);
          EC_POINT_free(v28);
          goto LABEL_38;
        }
      }

      else
      {
        v22 = 0;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      v28 = 0;
      v12 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_38:
  v38 = *MEMORY[0x1E69E9840];
  return v12;
}

size_t compute_transcript_and_confirmation_messages(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, void *a6, void *a7, void *a8, void *a9, _OWORD *a10, void *a11)
{
  data[1] = *MEMORY[0x1E69E9840];
  v17 = EC_group_p256();
  v78 = -86;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  buf[2] = v18;
  buf[3] = v18;
  buf[0] = v18;
  buf[1] = v18;
  v19 = EC_POINT_point2oct(v17, *(a1 + 176), POINT_CONVERSION_UNCOMPRESSED, buf, 0x41uLL, 0);
  if (!v19)
  {
    v25 = 0;
    v24 = 0;
    goto LABEL_20;
  }

  v76 = -86;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75[2] = v20;
  v75[3] = v20;
  v75[0] = v20;
  v75[1] = v20;
  v21 = EC_POINT_point2oct(v17, *(a1 + 184), POINT_CONVERSION_UNCOMPRESSED, v75, 0x41uLL, 0);
  if (!v21 || (*&v22 = 0xAAAAAAAAAAAAAAAALL, *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL, v74[0] = v22, v74[1] = v22, v23 = BN_num_bytes((a1 + 56)), !BN_bn2bin_padded(v74, v23, a1 + 56)))
  {
    v25 = 0;
    v24 = 0;
LABEL_18:
    v19 = 0;
    goto LABEL_20;
  }

  __dst = a6;
  v24 = EC_POINT_new(v17);
  if (!EC_POINT_oct2point(v17, v24, M_bytes, 0x21uLL, 0))
  {
    v25 = 0;
    goto LABEL_18;
  }

  v54 = a7;
  v25 = EC_POINT_new(v17);
  if (!EC_POINT_oct2point(v17, v25, N_bytes, 0x21uLL, 0))
  {
    goto LABEL_18;
  }

  v53 = a8;
  v73 = -86;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v72[2] = v26;
  v72[3] = v26;
  v72[0] = v26;
  v72[1] = v26;
  v27 = EC_POINT_point2oct(v17, v24, POINT_CONVERSION_UNCOMPRESSED, v72, 0x41uLL, 0);
  if (!v27)
  {
    goto LABEL_18;
  }

  v52 = v27;
  v71 = -86;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[2] = v28;
  v70[3] = v28;
  v70[0] = v28;
  v70[1] = v28;
  v29 = EC_POINT_point2oct(v17, v25, POINT_CONVERSION_UNCOMPRESSED, v70, 0x41uLL, 0);
  if (!v29)
  {
    goto LABEL_18;
  }

  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.data[10] = v30;
  *&c.data[14] = v30;
  *&c.data[2] = v30;
  *&c.data[6] = v30;
  *&c.h[4] = v30;
  *&c.Nl = v30;
  *c.h = v30;
  SHA256_Init(&c);
  v49 = *a1;
  data[0] = *(a1 + 8);
  v31 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v49, v31);
  v50 = *(a1 + 16);
  data[0] = *(a1 + 24);
  v32 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v50, v32);
  v51 = *(a1 + 32);
  data[0] = *(a1 + 40);
  v33 = data[0];
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v51, v33);
  data[0] = v52;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v72, v52);
  data[0] = v29;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v70, v29);
  data[0] = a3;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, a2, a3);
  data[0] = a5;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, a4, a5);
  data[0] = v19;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, buf, v19);
  data[0] = v21;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v75, v21);
  v34 = BN_num_bytes((a1 + 56));
  data[0] = v34;
  SHA256_Update(&c, data, 8uLL);
  SHA256_Update(&c, v74, v34);
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md[0] = v35;
  md[1] = v35;
  SHA256_Final(md, &c);
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  key[0] = v36;
  key[1] = v36;
  v67[0] = v36;
  v67[1] = v36;
  v37 = EVP_sha256();
  if (!HKDF(key, 64, v37, md, 32, 0, 0, "ConfirmationKeys", 16))
  {
    goto LABEL_18;
  }

  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v38;
  v65 = v38;
  v39 = EVP_sha256();
  if (!HKDF(&v64, 32, v39, md, 32, 0, 0, "SharedKey", 9))
  {
    goto LABEL_18;
  }

  *&v40 = 0xAAAAAAAAAAAAAAAALL;
  *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__src = v40;
  v63 = v40;
  __n_4 = 32;
  v41 = EVP_sha256();
  if (!HMAC(v41, key, 32, a4, a5, __src, &__n_4))
  {
    goto LABEL_18;
  }

  *&v42 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v60 = v42;
  v61 = v42;
  __n = 32;
  v43 = EVP_sha256();
  if (!HMAC(v43, v67, 32, a2, a3, v60, &__n))
  {
    goto LABEL_18;
  }

  v44 = __n_4;
  if (__n_4)
  {
    memcpy(__dst, __src, __n_4);
  }

  *v54 = v44;
  v45 = __n;
  if (__n)
  {
    memcpy(v53, v60, __n);
  }

  *a9 = v45;
  v46 = v65;
  *a10 = v64;
  a10[1] = v46;
  *a11 = 32;
  v19 = 1;
LABEL_20:
  EC_POINT_free(v24);
  EC_POINT_free(v25);
  v47 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t SPAKE2PLUS_compute_prover_confirmation(uint64_t a1, const void *a2, uint64_t a3, char *a4, uint64_t a5, void *a6, size_t *a7, unint64_t a8, void *__dst, size_t *a10, unint64_t a11)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v11 = 0;
    goto LABEL_34;
  }

  v11 = 0;
  if (a5 == 32 && a3 == 65 && *(a1 + 52) == 1)
  {
    v18 = EC_group_p256();
    v19 = EC_POINT_new(v18);
    *(a1 + 168) = v19;
    if (EC_POINT_oct2point(v18, v19, a2, 0x41uLL, 0))
    {
      v20 = EC_POINT_new(v18);
      if (EC_POINT_oct2point(v18, v20, N_bytes, 0x21uLL, 0))
      {
        v21 = EC_POINT_new(v18);
        if (v21 && EC_POINT_mul(v18, v21, 0, v20, (a1 + 56), 0) && EC_POINT_invert(v18, v21, 0))
        {
          v22 = EC_POINT_new(v18);
          if (v22)
          {
            if (EC_POINT_add(v18, v22, *(a1 + 168), v21, 0))
            {
              v23 = EC_POINT_new(v18);
              *(a1 + 176) = v23;
              if (EC_POINT_mul(v18, v23, 0, v22, (a1 + 112), 0))
              {
                v24 = EC_POINT_new(v18);
                *(a1 + 184) = v24;
                if (EC_POINT_mul(v18, v24, 0, v22, (a1 + 80), 0))
                {
                  *&v25 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  __src[0] = v25;
                  __src[1] = v25;
                  v34[0] = v25;
                  v34[1] = v25;
                  v31 = 32;
                  v33[0] = v25;
                  v33[1] = v25;
                  v11 = 0;
                  if (!compute_transcript_and_confirmation_messages(a1, (a1 + 192), *(a1 + 264), a2, 0x41uLL, __src, &v32, v34, &v31, v33, &v30) || v31 != 32)
                  {
                    goto LABEL_33;
                  }

                  if (!CRYPTO_memcmp(v34, a4, 32))
                  {
                    if (a8 >= 0x20)
                    {
                      v26 = 32;
                    }

                    else
                    {
                      v26 = a8;
                    }

                    if (a8)
                    {
                      memcpy(a6, __src, v26);
                    }

                    *a7 = v26;
                    if (a11 >= 0x20)
                    {
                      v27 = 32;
                    }

                    else
                    {
                      v27 = a11;
                    }

                    if (a11)
                    {
                      memcpy(__dst, v33, v27);
                    }

                    *a10 = v27;
                    *(a1 + 52) = 3;
                    v11 = 1;
                    goto LABEL_33;
                  }
                }
              }
            }
          }

LABEL_32:
          v11 = 0;
LABEL_33:
          EC_POINT_free(v20);
          EC_POINT_free(v21);
          EC_POINT_free(v22);
          goto LABEL_34;
        }

LABEL_31:
        v22 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    goto LABEL_31;
  }

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

int AES_set_encrypt_key(const unsigned __int8 *userKey, const int bits, AES_KEY *key)
{
  if (bits == 128 || bits == 256 || bits == 192)
  {
    return aes_nohw_set_encrypt_key(userKey, bits, key);
  }

  else
  {
    return -2;
  }
}

double ec_GFp_nistp256_add(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v23 = *a3;
  v24 = v5;
  v6 = *(a3 + 88);
  v21 = *(a3 + 72);
  v22 = v6;
  v7 = a3[10];
  v19 = a3[9];
  v20 = v7;
  v8 = a4[1];
  v18[0] = *a4;
  v18[1] = v8;
  v9 = *(a4 + 88);
  v17[0] = *(a4 + 72);
  v17[1] = v9;
  v10 = a4[10];
  v16[0] = a4[9];
  v16[1] = v10;
  fiat_p256_point_add(&v23, &v21, &v19, &v23, &v21, &v19, 0, v18, v17, v16);
  v11 = v24;
  *a2 = v23;
  a2[1] = v11;
  v12 = v22;
  *(a2 + 72) = v21;
  *(a2 + 88) = v12;
  result = *&v19;
  v14 = v20;
  a2[9] = v19;
  a2[10] = v14;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

double ec_GFp_nistp256_dbl(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3[1];
  v16 = *a3;
  v17 = v4;
  v5 = *(a3 + 88);
  v14 = *(a3 + 72);
  v15 = v5;
  v6 = a3[10];
  v12 = a3[9];
  v13 = v6;
  fiat_p256_point_double(&v16, &v14, &v12, &v16, &v14, &v12);
  v7 = v17;
  *a2 = v16;
  a2[1] = v7;
  v8 = v15;
  *(a2 + 72) = v14;
  *(a2 + 88) = v8;
  result = *&v12;
  v10 = v13;
  a2[9] = v12;
  a2[10] = v10;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

double ec_GFp_nistp256_point_mul(uint64_t a1, int8x16_t *a2, _OWORD *a3, uint64_t a4)
{
  v85 = *MEMORY[0x1E69E9840];
  bzero(v80, 0x660uLL);
  v6 = a3[1];
  v82[0] = *a3;
  v82[1] = v6;
  v7 = *(a3 + 88);
  v83[0] = *(a3 + 72);
  v83[1] = v7;
  v8 = a3[9];
  v9 = a3[10];
  v10 = -1440;
  v11 = 2;
  v84[0] = v8;
  v84[1] = v9;
  do
  {
    v12 = &v80[v10];
    if (v11)
    {
      fiat_p256_point_add(v12 + 204, v12 + 208, v12 + 212, v82, v83, v84, 0, v12 + 192, v12 + 196, v12 + 200);
    }

    else
    {
      fiat_p256_point_double(v12 + 204, v12 + 208, v12 + 212, &v80[96 * (v11 >> 1)], &v80[96 * (v11 >> 1) + 32], &v80[96 * (v11 >> 1) + 64]);
    }

    ++v11;
    v10 += 96;
  }

  while (v10);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v13 = 1;
  v74 = 0u;
  v75 = 0u;
  for (i = 255; i < 0x100; --i)
  {
    if (!v13)
    {
      fiat_p256_point_double(v74.i64, v76.i64, v78.i64, &v74, &v76, &v78);
    }

    if (-858993459 * i <= 0x33333333)
    {
      if (i <= 0xFB)
      {
        v15 = 32 * ((*(a4 + 8 * ((i + 4) >> 6)) >> (i + 4)) & 1);
        v16 = i + 3;
      }

      else
      {
        if (i != 252)
        {
          if (i > 0xFD)
          {
            v19 = 0;
            if (i == 255)
            {
LABEL_17:
              if ((i - 1) <= 0xFF)
              {
                v21 = (*(a4 + 8 * ((i - 1) >> 6)) >> (i - 1)) & 1;
              }

              else
              {
                v21 = 0;
              }

              v22 = (2 * ((*(a4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1)) | v19;
              v66 = 0xAAAAAAAAAAAAAAAALL;
              v67 = 0xAAAAAAAAAAAAAAAALL;
              ec_GFp_nistp_recode_scalar_bits(&v67, &v66, v22 | v21);
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = 0uLL;
              v28 = v66;
              v29 = &v81;
              v30 = 17;
              v31 = 0uLL;
              v32 = 0uLL;
              v33 = 0uLL;
              do
              {
                v34 = v28-- != 0;
                v35 = v34;
                v36 = v35 << 63 >> 63;
                v26 = v26 & v36 | v29[-2].i64[0] & ~v36;
                v25 = v25 & v36 | v29[-2].i64[1] & ~v36;
                v24 = v24 & v36 | v29[-1].i64[0] & ~v36;
                v37 = vdupq_n_s64(v36);
                v38 = vdupq_n_s64(~v36);
                v31 = vorrq_s8(vandq_s8(v37, v31), vandq_s8(v38, v29[-3]));
                v27 = vorrq_s8(vandq_s8(v37, v27), vandq_s8(v38, v29[-4]));
                v23 = v23 & v36 | v29[-1].i64[1] & ~v36;
                v40 = *v29;
                v39 = v29[1];
                v29 += 6;
                v33 = vorrq_s8(vandq_s8(v33, v37), vandq_s8(v39, v38));
                v32 = vorrq_s8(vandq_s8(v32, v37), vandq_s8(v40, v38));
                --v30;
              }

              while (v30);
              v68 = v27;
              v69 = v31;
              v72 = v32;
              v73 = v33;
              v34 = __CFADD__(v25, -(-__PAIR128__(v29, v26) >> 64));
              v41 = v25 + -(-__PAIR128__(v29, v26) >> 64);
              v42 = v34;
              v34 = v41 == 0;
              v43 = -v41;
              v45 = (v42 + !v34);
              v44 = v24 + v45;
              v46 = __CFADD__(v24, v45);
              v34 = v44 == 0;
              v47 = -v44;
              v49 = (v46 + !v34);
              v48 = v23 + v49;
              v50 = __CFADD__(v23, v49);
              v34 = v48 == 0;
              v51 = -v48;
              if (v50 + !v34)
              {
                v52 = -1;
              }

              else
              {
                v52 = 0;
              }

              v53 = v52 - v26;
              v34 = __CFADD__(__CFADD__(-v26, v52), v43);
              v54 = __CFADD__(-v26, v52) + v43;
              v34 |= __CFADD__(v52, v54);
              v54 += v52;
              v56 = v34;
              v34 = __CFADD__(v34, v47);
              v55 = v56 + v47;
              v57 = v51 + v34 + (v52 & 0xFFFFFFFF00000001);
              if (v67)
              {
                v58 = 0;
              }

              else
              {
                v58 = -1;
              }

              if (v67)
              {
                v59 = -1;
              }

              else
              {
                v59 = 0;
              }

              v70.i64[0] = v58 & v26 | v59 & v53;
              v70.i64[1] = v59 & v54 | v58 & v25;
              v71.i64[0] = v59 & v55 | v58 & v24;
              v71.i64[1] = v57 & v59 | v58 & v23;
              if (v13)
              {
                v74 = v68;
                v75 = v69;
                v76 = v70;
                v77 = v71;
                v78 = v72;
                v79 = v73;
              }

              else
              {
                fiat_p256_point_add(v74.i64, v76.i64, v78.i64, &v74, &v76, &v78, 0, &v68, &v70, &v72);
              }

              v13 = 0;
              continue;
            }

            v20 = 255;
LABEL_16:
            v19 |= 4 * ((*(a4 + 8 * (v20 >> 6)) >> v20) & 1);
            goto LABEL_17;
          }

          v17 = 0;
          v18 = 255;
LABEL_15:
          v19 = (8 * ((*(a4 + 8 * (v18 >> 6)) >> v18) & 1)) | v17;
          v20 = i + 1;
          goto LABEL_16;
        }

        v15 = 0;
        v16 = 255;
      }

      v17 = (16 * ((*(a4 + 8 * (v16 >> 6)) >> v16) & 1)) | v15;
      v18 = i + 2;
      goto LABEL_15;
    }
  }

  v60 = v75;
  *a2 = v74;
  a2[1] = v60;
  v61 = v77;
  *(a2 + 72) = v76;
  *(a2 + 88) = v61;
  result = *v78.i64;
  v63 = v79;
  a2[9] = v78;
  a2[10] = v63;
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

double ec_GFp_nistp256_point_mul_base(uint64_t a1, _OWORD *a2, unint64_t *a3)
{
  v4 = 0;
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v5;
  v22 = v5;
  v19 = v5;
  v20 = v5;
  v6 = 31;
  v17 = v5;
  v18 = v5;
  do
  {
    if (v4)
    {
      fiat_p256_point_double(&v23, &v25, &v27, &v23, &v25, &v27);
    }

    v7 = a3[2];
    v8 = a3[3];
    v10 = *a3;
    v9 = a3[1];
    fiat_p256_select_point_affine((8 * ((v8 >> (v6 + 32)) & 1)) | (4 * ((v7 >> (v6 + 32)) & 1)) | (2 * ((v9 >> (v6 + 32)) & 1)) | (*a3 >> (v6 + 32)) & 1, &unk_1A90AF1C8, &v17);
    if (v4)
    {
      fiat_p256_point_add(&v23, &v25, &v27, &v23, &v25, &v27, 1, &v17, &v19, &v21);
    }

    else
    {
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v26 = v20;
      v27 = v21;
      v28 = v22;
    }

    fiat_p256_select_point_affine((8 * ((v8 >> v6) & 1)) | (4 * ((v7 >> v6) & 1)) | (2 * ((v9 >> v6) & 1)) | (v10 >> v6) & 1, &fiat_p256_g_pre_comp, &v17);
    v4 = 1;
    fiat_p256_point_add(&v23, &v25, &v27, &v23, &v25, &v27, 1, &v17, &v19, &v21);
    --v6;
  }

  while (v6 < 0x20);
  v11 = v24;
  *a2 = v23;
  a2[1] = v11;
  v12 = v26;
  *(a2 + 72) = v25;
  *(a2 + 88) = v12;
  result = *&v27;
  v14 = v28;
  a2[9] = v27;
  a2[10] = v14;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

double ec_GFp_nistp256_point_mul_public(uint64_t a1, _OWORD *a2, unint64_t *a3, _OWORD *a4, _DWORD *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v9 = a4[1];
  v74[0] = *a4;
  v74[1] = v9;
  v10 = *(a4 + 88);
  v75[0] = *(a4 + 72);
  v75[1] = v10;
  memset(v77, 170, sizeof(v77));
  v11 = a4[10];
  v76[0] = a4[9];
  v76[1] = v11;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73[0] = v12;
  v73[1] = v12;
  v72[0] = v12;
  v72[1] = v12;
  v71[0] = v12;
  v71[1] = v12;
  fiat_p256_point_double(v71, v72, v73, v74, v75, v76);
  for (i = 0; i != 42; i += 6)
  {
    fiat_p256_point_add(&v77[i * 16], &v77[i * 16 + 32], &v77[i * 16 + 64], &v74[i], &v74[i + 2], &v76[i], 0, v71, v72, v73);
  }

  v70 = -86;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[14] = v14;
  v69[15] = v14;
  v69[12] = v14;
  v69[13] = v14;
  v69[10] = v14;
  v69[11] = v14;
  v69[8] = v14;
  v69[9] = v14;
  v69[6] = v14;
  v69[7] = v14;
  v69[4] = v14;
  v69[5] = v14;
  v69[2] = v14;
  v69[3] = v14;
  v69[0] = v14;
  v69[1] = v14;
  v15 = 256;
  ec_compute_wNAF(a1, v69, a5, 0x100uLL, 4);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = 1;
  do
  {
    if (!v17)
    {
      fiat_p256_point_double(&v63, &v65, &v67, &v63, &v65, &v67);
    }

    if (v15 <= 0x1F)
    {
      v19 = a3[2];
      v18 = a3[3];
      v20 = *a3;
      v21 = a3[1];
      v22 = (8 * ((v18 >> (v15 + 32)) & 1)) | (4 * ((v19 >> (v15 + 32)) & 1)) | (2 * ((v21 >> (v15 + 32)) & 1)) | (*a3 >> (v15 + 32)) & 1;
      if (v22)
      {
        fiat_p256_point_add(&v63, &v65, &v67, &v63, &v65, &v67, 1, &fiat_p256_g_pre_comp[8 * v22 + 112], &fiat_p256_g_pre_comp[8 * v22 + 116], fiat_p256_one);
        v17 = 0;
      }

      v23 = (8 * ((v18 >> v15) & 1)) | (4 * ((v19 >> v15) & 1)) | (2 * ((v21 >> v15) & 1)) | (v20 >> v15) & 1;
      if (v23)
      {
        fiat_p256_point_add(&v63, &v65, &v67, &v63, &v65, &v67, 1, &fiat_p256_g_pre_comp[8 * v23 - 8], &fiat_p256_g_pre_comp[8 * v23 - 4], fiat_p256_one);
        v17 = 0;
      }
    }

    v24 = *(v69 + v15);
    if (*(v69 + v15))
    {
      if ((v24 & 1) == 0)
      {
        ec_GFp_nistp256_point_mul_public_cold_1();
      }

      if (v24 >= 0)
      {
        v25 = *(v69 + v15);
      }

      else
      {
        v25 = -v24;
      }

      v26 = v25 >> 1;
      v27 = &v74[6 * v26];
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = v28;
      v62 = v28;
      if (v24 < 0)
      {
        v34 = *(v27 + 4);
        v35 = *(v27 + 5);
        v36 = v34 == 0;
        v37 = -v34;
        v38 = v16 + !v36;
        v36 = __CFADD__(v35, v38);
        v39 = v35 + v38;
        v40 = v36;
        v36 = v39 == 0;
        v41 = -v39;
        v42 = *(v27 + 6);
        v43 = *(v27 + 7);
        v45 = (v40 + !v36);
        v44 = v42 + v45;
        v46 = __CFADD__(v42, v45);
        v36 = v44 == 0;
        v47 = -v44;
        v49 = (v46 + !v36);
        v48 = v43 + v49;
        v50 = __CFADD__(v43, v49);
        v36 = v48 == 0;
        v51 = -v48;
        if (v50 + !v36)
        {
          v52 = -1;
        }

        else
        {
          v52 = 0;
        }

        v36 = __CFADD__(__CFADD__(v37, v52), v41);
        v53 = __CFADD__(v37, v52) + v41;
        *&v61 = v37 + v52;
        *(&v61 + 1) = v52 + v53;
        v54 = (__PAIR128__(v52 & 0xFFFFFFFF00000001, v36 | __CFADD__(v52, v53)) + __PAIR128__(v51, v47)) >> 64;
        v16 = (v36 | __CFADD__(v52, v53)) + v47;
        v62 = __PAIR128__(v54, v16);
        v29 = &v61;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = (v27 + 2);
        if (v17)
        {
LABEL_18:
          v30 = &v74[6 * v26];
          v31 = v30[1];
          v63 = *v30;
          v64 = v31;
          v32 = *(v29 + 1);
          v65 = *v29;
          v66 = v32;
          v33 = v27[5];
          v67 = v27[4];
          v68 = v33;
LABEL_33:
          v17 = 0;
          goto LABEL_34;
        }
      }

      fiat_p256_point_add(&v63, &v65, &v67, &v63, &v65, &v67, 0, v27, v29, v27 + 8);
      goto LABEL_33;
    }

LABEL_34:
    --v15;
  }

  while (v15 != -1);
  v55 = v64;
  *a2 = v63;
  a2[1] = v55;
  v56 = v66;
  *(a2 + 72) = v65;
  *(a2 + 88) = v56;
  result = *&v67;
  v58 = v68;
  a2[9] = v67;
  a2[10] = v58;
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ec_GFp_nistp256_cmp_x_coordinate(uint64_t a1, __int128 *a2, const unint64_t *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  if (ec_GFp_simple_is_at_infinity(a1, a2))
  {
    goto LABEL_2;
  }

  v8 = a2[10];
  v97[0] = a2[9];
  v97[1] = v8;
  fiat_p256_mul(v97, v97, v97);
  v9 = *(a3 + 1);
  v95 = *a3;
  v96 = v9;
  fiat_p256_mul(&v95, &v95, v97);
  v10 = 0;
  v11 = a2[1];
  v93 = *a2;
  v12 = (v93 * 0xFFFFFFFF00000001) >> 64;
  v13 = (v93 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v14 = 0xFFFFFFFFLL * v93 + __CFADD__(-v93, v93) + v13;
  v15 = __CFADD__(__CFADD__(-v93, v93), v13) | __CFADD__(0xFFFFFFFFLL * v93, __CFADD__(-v93, v93) + v13) ? ((v93 * 0xFFFFFFFFuLL) >> 64) + 1 : (v93 * 0xFFFFFFFFuLL) >> 64;
  v32 = __CFADD__(v14, *(&v93 + 1));
  v16 = v14 + *(&v93 + 1);
  v17 = v32;
  v18 = 0xFFFFFFFF00000001 * v16;
  v19 = (__PAIR128__(0xFFFFFFFFLL, -1) * v16) >> 64;
  v20 = v17 + __CFADD__(-v16, v16) + v15;
  v32 = __CFADD__(v20, v19);
  v21 = v20 + v19;
  v22 = v32 - 0xFFFFFFFFLL * v93;
  v23 = __CFADD__(v32, 0xFFFFFFFF00000001 * v93);
  v32 = __CFADD__(v18, v12);
  v24 = v18 + v12;
  v25 = v32;
  v32 = __CFADD__((v16 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFFLL * v16);
  v94 = v11;
  v26 = (v16 * 0xFFFFFFFF00000001) >> 64;
  v27 = (v16 * 0xFFFFFFFFuLL) >> 64;
  v29 = v32 + v22;
  v32 = __CFADD__(v32, v22) | __CFADD__(v27, v29);
  v28 = v27 + v29;
  v30 = v23 + v32 + v24;
  v31 = __CFADD__(v32, v24) | __CFADD__(v23, v32 + v24) ? v25 + 1 : v25;
  v32 = __CFADD__(v21, v94);
  v33 = v21 + v94;
  v34 = v32;
  v35 = v32 + v28;
  v37 = __CFADD__(v32, v28);
  v32 = __CFADD__(v37, v30);
  v36 = v37 + v30;
  v38 = (v33 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v39 = v26 + v32 + v31;
  v40 = 0xFFFFFFFF * v33;
  v41 = (__PAIR128__(0xFFFFFFFFLL, -1) * v33) >> 64;
  v42 = 0xFFFFFFFF00000001 * v33;
  v43 = v34 + __CFADD__(-v33, v33) + v28;
  v32 = __CFADD__(__CFADD__(__CFADD__(-v33, v33), v35) | __CFADD__(v41, __CFADD__(-v33, v33) + v35), v36);
  v44 = (__CFADD__(__CFADD__(-v33, v33), v35) | __CFADD__(v41, __CFADD__(-v33, v33) + v35)) + v36;
  v45 = v32;
  v32 = __CFADD__(v42, v39);
  v46 = v42 + v39;
  v47 = v32;
  v48 = 0xFFFFFFFF * v33;
  v49 = (v33 * 0xFFFFFFFF00000001) >> 64;
  v50 = (v33 * 0xFFFFFFFFuLL) >> 64;
  v51 = v43 + v38 + v40;
  v32 = __CFADD__(__CFADD__(v38, v40), v44) | __CFADD__(v50, (__PAIR128__(v44, v38) + v48) >> 64);
  v52 = v50 + ((__PAIR128__(v44, v38) + v48) >> 64);
  v53 = v45 + v32 + v46;
  v54 = __CFADD__(v32, v46) | __CFADD__(v45, v32 + v46) ? v47 + 1 : v47;
  v55 = __CFADD__(v51, *(&v94 + 1));
  v56 = v51 + *(&v94 + 1);
  v57 = v55;
  v58 = v55 + v52;
  v60 = __CFADD__(v55, v52);
  v32 = __CFADD__(v60, v53);
  v59 = v60 + v53;
  v61 = (v56 * 0xFFFFFFFF00000001) >> 64;
  v62 = v49 + v32 + v54;
  v63 = 0xFFFFFFFF00000001 * v56;
  v64 = -v56;
  v65 = (__PAIR128__(0xFFFFFFFFLL, -1) * v56) >> 64;
  v66 = __CFADD__((v56 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v56) ? ((v56 * 0xFFFFFFFFuLL) >> 64) + 1 : (v56 * 0xFFFFFFFFuLL) >> 64;
  v32 = __CFADD__(v64, v56);
  v67 = v57 + __CFADD__(v64, v56) + v52 + v65;
  v69 = __CFADD__(v32, v58) | __CFADD__(v65, v32 + v58);
  v68 = v66 + v69 + v59;
  v71 = __CFADD__(v69, v59) | __CFADD__(v66, v69 + v59);
  v70 = v62 + v71 + v63;
  v72 = __CFADD__(v71, v63) | __CFADD__(v62, v71 + v63) ? v61 + 1 : v61;
  v73 = v68 - (1 - __CFADD__(v67, 1));
  v74 = v72 - -((v70 - (1 - (__CFADD__(v73, 0xFFFFFFFF00000001) + BYTE8(v73)))) >> 64);
  if (1 == __CFADD__(v74, 0xFFFFFFFFLL) + BYTE8(v74))
  {
    v10 = -1;
    v75 = 0;
  }

  else
  {
    v75 = -1;
  }

  v76 = v10 & (v67 + 1) | v75 & v67;
  v77 = v10 & (v73 - 0xFFFFFFFF) | v75 & v68;
  v78 = v10 & (v70 - (1 - (__CFADD__(v73, 0xFFFFFFFF00000001) + BYTE8(v73)))) | v75 & v70;
  v79 = v10 & (v74 + 0xFFFFFFFF) | v72 & v75;
  *&v93 = v76;
  *(&v93 + 1) = v77;
  *&v94 = v78;
  *(&v94 + 1) = v79;
  v80 = v95 == v76 && *(&v95 + 1) == v77;
  v81 = v80 && v96 == v78;
  if (v81 && *(&v96 + 1) == v79)
  {
    goto LABEL_67;
  }

  v83 = *(a1 + 328);
  if (v83 != *(a1 + 264))
  {
    ec_GFp_nistp256_cmp_x_coordinate_cold_1();
  }

  v92 = 0xAAAAAAAAAAAAAAAALL;
  *&v84 = 0xAAAAAAAAAAAAAAAALL;
  *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90 = v84;
  v91 = v84;
  v88 = v84;
  v89 = v84;
  if (bn_add_words(&v88, a3, *(a1 + 256), v83) || !bn_less_than_words(&v88, *(a1 + 320), *(a1 + 328)))
  {
    goto LABEL_2;
  }

  v95 = v88;
  v96 = v89;
  fiat_p256_mul(&v95, &v95, v97);
  v85 = v95 == v93 && *(&v95 + 1) == *(&v93 + 1);
  v86 = v85 && v96 == v94;
  if (v86 && *(&v96 + 1) == *(&v94 + 1))
  {
LABEL_67:
    result = 1;
  }

  else
  {
LABEL_2:
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void fiat_p256_point_add(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6, int a7, unint64_t *a8, unint64_t *a9, unint64_t *a10)
{
  v231 = *MEMORY[0x1E69E9840];
  v12.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v12.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v229 = v12;
  v230 = v12;
  v227 = v12;
  v228 = v12;
  v225 = v12;
  v226 = v12;
  v13 = *a6;
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v195 = v14 | *a6 | v15 | v16;
  v17 = *a10;
  v18 = a10[1];
  v20 = a10[2];
  v19 = a10[3];
  v197 = v18 | *a10 | v20 | v19;
  v223 = v12;
  v224 = v12;
  fiat_p256_square(v223.i64, a6);
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v221 = v23;
  v222 = v23;
  v219 = v23;
  v220 = v23;
  v217 = v23;
  v218 = v23;
  if (a7)
  {
    v24 = a4;
    v25 = *(a4 + 16);
    *(&v27 + 1) = v14;
    *&v27 = v13;
    v26 = v27 >> 63;
    v221 = *a4;
    v222 = v25;
    *(&v27 + 1) = v15;
    *&v27 = v14;
    v28 = v27 >> 63;
    *(&v27 + 1) = v16;
    *&v27 = v15;
    v29 = v27 >> 63;
    v30 = v29 - __PAIR128__(v22, -((v28 - __PAIR128__(v21, (1 - __CFADD__(v26, 0xFFFFFFFF00000000)))) >> 64));
    if ((v16 < 0) + (v16 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if ((v16 < 0) + (v16 >> 63 < (1 - (__CFADD__(v30, 0xFFFFFFFFLL) + BYTE8(v30)))))
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    *&v217 = v31 & ((2 * v13) | 1) | v32 & (2 * v13);
    *(&v217 + 1) = v31 & (v26 - 0x100000000) | v32 & v26;
    *&v218 = v31 & (v28 - (1 - __CFADD__(v26, 0xFFFFFFFF00000000))) | v32 & v28;
    *(&v218 + 1) = v31 & (v30 + 0xFFFFFFFF) | v32 & v29;
    v33 = a10;
    v34 = a5;
    v35 = *(a5 + 16);
    v219 = *a5;
    v220 = v35;
  }

  else
  {
    v215 = v23;
    v216 = v23;
    fiat_p256_square(&v215, a10);
    v36 = fiat_p256_mul(&v221, a4, &v215);
    v38 = v17 + v13;
    v39 = v14 + __CFADD__(v17, v13) + v18;
    v40 = v15 + (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20;
    v41 = v16 + (__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20)) + v19;
    if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20), v19) | __CFADD__(v16, (__CFADD__(__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18), v20) | __CFADD__(v15, (__CFADD__(__CFADD__(v17, v13), v18) | __CFADD__(v14, __CFADD__(v17, v13) + v18)) + v20)) + v19))
    {
      v42 = 1;
    }

    else
    {
      v42 = 0;
    }

    v43 = v39 - __PAIR128__(v37, (1 - __CFADD__(v38, 1)));
    v44 = v41 - __PAIR128__(v36, -((v40 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43))))) >> 64));
    v45 = -(v42 + (v42 < (1 - (__CFADD__(v44, 0xFFFFFFFFLL) + BYTE8(v44)))));
    v46 = v45 == 0;
    if (v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1;
    }

    if (v46)
    {
      v48 = 0;
    }

    else
    {
      v48 = -1;
    }

    *&v217 = v47 & (v38 + 1) | v48 & v38;
    *(&v217 + 1) = v47 & (v43 - 0xFFFFFFFF) | v48 & v39;
    *&v218 = v47 & (v40 - (1 - (__CFADD__(v43, 0xFFFFFFFF00000001) + BYTE8(v43)))) | v48 & v40;
    *(&v218 + 1) = v47 & (v44 + 0xFFFFFFFF) | v48 & v41;
    fiat_p256_square(&v217, &v217);
    v49 = v217 - v223.i64[0];
    v50 = v223.i64[1] + -((v217 - __PAIR128__(v223.u64[0], v223.u64[0])) >> 64);
    v51 = *(&v217 + 1) - v50;
    v58 = __CFADD__(v224.i64[0], -((*(&v217 + 1) - __PAIR128__(v50, v50)) >> 64));
    v52 = v224.i64[0] + -((*(&v217 + 1) - __PAIR128__(v50, v50)) >> 64);
    v53 = v58;
    v54 = v218 - v52;
    v58 = __CFADD__(v224.i64[1], -((v218 - __PAIR128__(v53, v52)) >> 64));
    v55 = v224.i64[1] + -((v218 - __PAIR128__(v53, v52)) >> 64);
    v56 = v58;
    v57 = *(&v218 + 1) - __PAIR128__(v56, v55);
    v58 = __CFADD__(__CFADD__(v49, *(&v57 + 1)), v51) | __CFADD__(DWORD2(v57), __CFADD__(v49, *(&v57 + 1)) + v51);
    v59 = DWORD2(v57) + __CFADD__(v49, *(&v57 + 1)) + v51;
    v60 = v57 + __CFADD__(v58, v54) + (*(&v57 + 1) & 0xFFFFFFFF00000001);
    v62 = ((v49 + *(&v57 + 1)) - __PAIR128__(v215, v215)) >> 64;
    v61 = v49 + *(&v57 + 1) - v215;
    v63 = v59 - __PAIR128__(*(&v215 + 1) + -v62, *(&v215 + 1) + -v62);
    v64 = (v58 + v54 - __PAIR128__(v216 + -BYTE8(v63), v216 + -BYTE8(v63))) >> 64;
    if (((v60 - __PAIR128__(*(&v216 + 1) + -v64, *(&v216 + 1) + -v64)) >> 64))
    {
      v65 = -1;
    }

    else
    {
      v65 = 0;
    }

    v66 = __CFADD__(v61, v65) + v63;
    *&v217 = v61 + v65;
    *(&v217 + 1) = v65 + v66;
    v218 = __PAIR128__(v65 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v61, v65), v63) | __CFADD__(v65, v66)) + __PAIR128__(v60 - (*(&v216 + 1) + -((v58 + v54 - __PAIR128__(v216 + -BYTE8(v63), v216 + -BYTE8(v63))) >> 64)), v58 + v54 - (v216 + -BYTE8(v63)));
    fiat_p256_mul(&v219, a10, &v215);
    v34 = a5;
    fiat_p256_mul(&v219, &v219, a5);
    v24 = a4;
    v33 = a10;
  }

  *&v67 = 0xAAAAAAAAAAAAAAAALL;
  *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v215 = v67;
  v216 = v67;
  fiat_p256_mul(&v215, a8, &v223);
  v68 = v215 - v221;
  v69 = *(&v221 + 1) + -((v215 - __PAIR128__(v221, v221)) >> 64);
  v70 = *(&v215 + 1) - v69;
  v58 = __CFADD__(v222, -((*(&v215 + 1) - __PAIR128__(v69, v69)) >> 64));
  v71 = v222 + -((*(&v215 + 1) - __PAIR128__(v69, v69)) >> 64);
  v72 = v58;
  v74 = v216 - v71;
  v73 = (v216 - __PAIR128__(v72, v71)) >> 64;
  v58 = __CFADD__(*(&v222 + 1), -v73);
  v75 = *(&v222 + 1) + -v73;
  v76 = v58;
  v77 = *(&v216 + 1) - v75;
  if (((*(&v216 + 1) - __PAIR128__(v76, v75)) >> 64))
  {
    v78 = -1;
  }

  else
  {
    v78 = 0;
  }

  v79 = v68 + v78;
  v80 = v78 + __CFADD__(v68, v78) + v70;
  v213[0] = v68 + v78;
  v213[1] = v80;
  v81 = __PAIR128__(v78 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v78), v70) | __CFADD__(v78, __CFADD__(v68, v78) + v70)) + __PAIR128__(v77, v74);
  v214 = __PAIR128__(v78 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v68, v78), v70) | __CFADD__(v78, __CFADD__(v68, v78) + v70)) + __PAIR128__(v77, v74);
  fiat_p256_mul(v225.i64, v213, &v217);
  *&v82 = 0xAAAAAAAAAAAAAAAALL;
  *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v212[0] = v82;
  v212[1] = v82;
  fiat_p256_mul(v212, a6, &v223);
  *&v83 = 0xAAAAAAAAAAAAAAAALL;
  *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v210 = v83;
  v211 = v83;
  v84 = fiat_p256_mul(&v210, a9, v212);
  v86 = v210 - v219;
  v87 = *(&v219 + 1) + -((v210 - __PAIR128__(v219, v219)) >> 64);
  v88 = *(&v210 + 1) - v87;
  v58 = __CFADD__(v220, -((*(&v210 + 1) - __PAIR128__(v87, v87)) >> 64));
  v89 = v220 + -((*(&v210 + 1) - __PAIR128__(v87, v87)) >> 64);
  v90 = v58;
  v92 = v211 - v89;
  v91 = (v211 - __PAIR128__(v90, v89)) >> 64;
  v58 = __CFADD__(*(&v220 + 1), -v91);
  v93 = *(&v220 + 1) + -v91;
  v94 = v58;
  if (((*(&v211 + 1) - __PAIR128__(v94, v93)) >> 64))
  {
    v95 = -1;
  }

  else
  {
    v95 = 0;
  }

  v96 = v86 + v95;
  v97 = __CFADD__(v86, v95) + v88;
  v98 = __PAIR128__(v95 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v86, v95), v88) | __CFADD__(v95, v97)) + __PAIR128__(*(&v211 + 1) - v93, v92);
  *(&v100 + 1) = v95 + v97;
  *&v100 = v86 + v95;
  v99 = v100 >> 63;
  *(&v100 + 1) = (__CFADD__(__CFADD__(v86, v95), v88) | __CFADD__(v95, v97)) + v92;
  *&v100 = v95 + v97;
  v101 = v100 >> 63;
  v102 = v98 >> 63;
  v103 = v99 - 0x100000000;
  v104 = v101 - (1 - __CFADD__(v99, 0xFFFFFFFF00000000));
  v105 = v102 - __PAIR128__(v85, -((v101 - __PAIR128__(v84, (1 - __CFADD__(v99, 0xFFFFFFFF00000000)))) >> 64));
  if ((v98 < 0) + (*(&v98 + 1) >> 63 < (1 - (__CFADD__(v105, 0xFFFFFFFFLL) + BYTE8(v105)))))
  {
    v106 = 0;
  }

  else
  {
    v106 = -1;
  }

  v206 = v106 & ((2 * v96) | 1) | *(&v105 + 1) & (2 * v96);
  v207 = v106 & v103 | *(&v105 + 1) & v99;
  v208 = v106 & v104 | *(&v105 + 1) & v101;
  v209 = v106 & (v105 + 0xFFFFFFFF) | *(&v105 + 1) & v102;
  v107 = v80 | v79 | v81 | *(&v81 + 1) | v207 | v206 | v208 | v209;
  if (((v197 | -v197) & (v195 | -v195) & ~v107 & (v107 - 1) & 0x8000000000000000) == 0)
  {
    *(&v110 + 1) = v80;
    *&v110 = v79;
    v109 = v110 >> 63;
    *(&v110 + 1) = v81;
    *&v110 = v80;
    v111 = v110 >> 63;
    v112 = v81 >> 63;
    v113 = v112 - __PAIR128__(v104, -((v111 - __PAIR128__(v103, (1 - __CFADD__(v109, 0xFFFFFFFF00000000)))) >> 64));
    if (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)) + (*(&v81 + 1) >> 63 < (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)))))
    {
      v114 = 0;
    }

    else
    {
      v114 = -1;
    }

    if (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)) + (*(&v81 + 1) >> 63 < (1 - (__CFADD__(v113, 0xFFFFFFFFLL) + BYTE8(v113)))))
    {
      v115 = -1;
    }

    else
    {
      v115 = 0;
    }

    v205[0] = v114 & ((2 * v79) | 1) | v115 & (2 * v79);
    v205[1] = v114 & (v109 - 0x100000000) | v115 & v109;
    v205[2] = v114 & (v111 - (1 - __CFADD__(v109, 0xFFFFFFFF00000000))) | v115 & v111;
    v205[3] = v114 & (v113 + 0xFFFFFFFF) | v115 & v112;
    fiat_p256_square(v205, v205);
    *&v116 = 0xAAAAAAAAAAAAAAAALL;
    *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v203 = v116;
    v204 = v116;
    fiat_p256_mul(&v203, v213, v205);
    *&v117 = 0xAAAAAAAAAAAAAAAALL;
    *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v201 = v117;
    v202 = v117;
    fiat_p256_mul(&v201, &v221, v205);
    fiat_p256_square(v229.i64, &v206);
    v118 = v229.i64[0] - v203;
    v119 = *(&v203 + 1) + -((v229.u64[0] - __PAIR128__(v203, v203)) >> 64);
    v120 = v229.i64[1] - v119;
    v58 = __CFADD__(v204, -((v229.u64[1] - __PAIR128__(v119, v119)) >> 64));
    v121 = v204 + -((v229.u64[1] - __PAIR128__(v119, v119)) >> 64);
    v122 = v58;
    v124 = v230.i64[0] - v121;
    v123 = (v230.u64[0] - __PAIR128__(v122, v121)) >> 64;
    v58 = __CFADD__(*(&v204 + 1), -v123);
    v125 = *(&v204 + 1) + -v123;
    v126 = v58;
    if (((v230.u64[1] - __PAIR128__(v126, v125)) >> 64))
    {
      v127 = -1;
    }

    else
    {
      v127 = 0;
    }

    v128 = v118 + v127 - v201;
    v129 = v127 + __CFADD__(v118, v127) + v120 - __PAIR128__(*(&v201 + 1) + -(((v118 + v127) - __PAIR128__(v124, v201)) >> 64), *(&v201 + 1) + -(((v118 + v127) - __PAIR128__(v124, v201)) >> 64));
    v131 = ((__CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + v124 - __PAIR128__(v202 + -BYTE8(v129), v202 + -BYTE8(v129))) >> 64;
    v130 = (__CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + v124 - (v202 + -BYTE8(v129));
    v132 = ((__PAIR128__(v127 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v118, v127), v120) | __CFADD__(v127, __CFADD__(v118, v127) + v120)) + __PAIR128__(v230.i64[1] - v125, v124)) >> 64) - __PAIR128__(*(&v202 + 1) + -v131, *(&v202 + 1) + -v131);
    v133 = v132 + __CFADD__(__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129), v130) + (*(&v132 + 1) & 0xFFFFFFFF00000001);
    LOBYTE(v131) = ((v128 + *(&v132 + 1)) - __PAIR128__(*(&v132 + 1) & 0xFFFFFFFF00000001, v201)) >> 64;
    v134 = v128 + *(&v132 + 1) - v201;
    v135 = DWORD2(v132) + __CFADD__(v128, *(&v132 + 1)) + v129 - (*(&v201 + 1) + -(((v128 + *(&v132 + 1)) - __PAIR128__(*(&v132 + 1) & 0xFFFFFFFF00000001, v201)) >> 64));
    LOBYTE(v131) = (DWORD2(v132) + __CFADD__(v128, *(&v132 + 1)) + v129 - __PAIR128__(*(&v201 + 1) + -v131, *(&v201 + 1) + -v131)) >> 64;
    v136 = (__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129)) + v130 - (v202 + -v131);
    LOBYTE(v131) = ((__CFADD__(__CFADD__(v128, *(&v132 + 1)), v129) | __CFADD__(DWORD2(v132), __CFADD__(v128, *(&v132 + 1)) + v129)) + v130 - __PAIR128__(v202 + -v131, v202 + -v131)) >> 64;
    v137 = v133 - (*(&v202 + 1) + -v131);
    if (((v133 - __PAIR128__(*(&v202 + 1) + -v131, *(&v202 + 1) + -v131)) >> 64))
    {
      v138 = -1;
    }

    else
    {
      v138 = 0;
    }

    v139 = v134 + v138;
    v192 = (__CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + v136;
    v194 = v138 + __CFADD__(v134, v138) + v135;
    v140 = __PAIR128__(v138 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + __PAIR128__(v137, v136);
    v188 = (__PAIR128__(v138 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v134, v138), v135) | __CFADD__(v138, __CFADD__(v134, v138) + v135)) + __PAIR128__(v137, v136)) >> 64;
    v142 = v201 - (v134 + v138);
    v141 = (v201 - __PAIR128__(v137, v134 + v138)) >> 64;
    v143 = *(&v201 + 1) - __PAIR128__(v194 + -v141, v194 + -v141);
    v144 = (v202 - __PAIR128__(v140 + -BYTE8(v143), v140 + -BYTE8(v143))) >> 64;
    if (((*(&v202 + 1) - __PAIR128__(*(&v140 + 1) + -v144, *(&v140 + 1) + -v144)) >> 64))
    {
      v145 = -1;
    }

    else
    {
      v145 = 0;
    }

    v146 = __CFADD__(v142, v145) + v143;
    v227.i64[0] = v142 + v145;
    v227.i64[1] = v145 + v146;
    v228 = __PAIR128__(v145 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v142, v145), v143) | __CFADD__(v145, v146)) + __PAIR128__(*(&v202 + 1) - (*(&v140 + 1) + -((v202 - __PAIR128__(v140 + -BYTE8(v143), v140 + -BYTE8(v143))) >> 64)), v202 - (v140 + -BYTE8(v143)));
    fiat_p256_mul(v227.i64, &v227, &v206);
    *&v147 = 0xAAAAAAAAAAAAAAAALL;
    *(&v147 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v199 = v147;
    v200 = v147;
    fiat_p256_mul(&v199, &v219, &v203);
    v149 = v227.i64[0] - v199;
    v150 = v227.i64[1] - (*(&v199 + 1) + -((v227.u64[0] - __PAIR128__(v148, v199)) >> 64));
    v58 = __CFADD__(v200, -((v227.u64[1] - __PAIR128__(*(&v199 + 1) + -((v227.u64[0] - __PAIR128__(v148, v199)) >> 64), *(&v199 + 1) + -((v227.u64[0] - __PAIR128__(v148, v199)) >> 64))) >> 64));
    v151 = v200 + -((v227.u64[1] - __PAIR128__(*(&v199 + 1) + -((v227.u64[0] - __PAIR128__(v148, v199)) >> 64), *(&v199 + 1) + -((v227.u64[0] - __PAIR128__(v148, v199)) >> 64))) >> 64);
    v152 = v58;
    v153 = v228 - v151;
    v58 = __CFADD__(*(&v200 + 1), -((v228 - __PAIR128__(v152, v151)) >> 64));
    v154 = *(&v200 + 1) + -((v228 - __PAIR128__(v152, v151)) >> 64);
    v155 = v58;
    v156 = *(&v228 + 1) - __PAIR128__(v155, v154);
    v157 = __CFADD__(v149, *(&v156 + 1)) + v150;
    v159 = __CFADD__(__CFADD__(v149, *(&v156 + 1)), v150) | __CFADD__(DWORD2(v156), v157);
    v158 = v159 + v153;
    v160 = v156 + __CFADD__(v159, v153) + (*(&v156 + 1) & 0xFFFFFFFF00000001);
    v161 = v149 + *(&v156 + 1) - v199;
    v162 = DWORD2(v156) + v157 - (*(&v199 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v199, v199)) >> 64));
    v58 = __CFADD__(v200, -((DWORD2(v156) + v157 - __PAIR128__(DWORD2(v156) + v157, *(&v199 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v199, v199)) >> 64))) >> 64));
    v163 = v200 + -((DWORD2(v156) + v157 - __PAIR128__(DWORD2(v156) + v157, *(&v199 + 1) + -(((v149 + *(&v156 + 1)) - __PAIR128__(v199, v199)) >> 64))) >> 64);
    v164 = v58;
    v166 = v158 - v163;
    v165 = (v158 - __PAIR128__(v164, v163)) >> 64;
    v58 = __CFADD__(*(&v200 + 1), -v165);
    v167 = *(&v200 + 1) + -v165;
    v168 = v58;
    if (((v160 - __PAIR128__(v168, v167)) >> 64))
    {
      v169 = -1;
    }

    else
    {
      v169 = 0;
    }

    v170 = v161 + v169;
    v171 = v169 + __CFADD__(v161, v169) + v162;
    v172 = __PAIR128__(v169 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v161, v169), v162) | __CFADD__(v169, __CFADD__(v161, v169) + v162)) + __PAIR128__(v160 - v167, v166);
    v173 = v34;
    if (v195)
    {
      v174 = 0;
    }

    else
    {
      v174 = -1;
    }

    v175 = v24;
    if (v195)
    {
      v176 = -1;
    }

    else
    {
      v176 = 0;
    }

    v177 = a8[1] & v174 | v176 & v194;
    v178 = a8[2] & v174 | v176 & v192;
    v179 = a8[3] & v174;
    v229.i64[0] = v174 & *a8 | v176 & v139;
    v229.i64[1] = v177;
    v230.i64[0] = v178;
    v230.i64[1] = v179 | v176 & v188;
    fiat_p256_cmovznz(a1, v197, v175, &v229);
    v180 = a9[1] & v174 | v176 & v171;
    v181 = a9[2] & v174 | v176 & v172;
    v182 = a9[3] & v174;
    v227.i64[0] = *a9 & v174 | v176 & v170;
    v227.i64[1] = v180;
    *&v228 = v181;
    *(&v228 + 1) = v182 | *(&v172 + 1) & v176;
    fiat_p256_cmovznz(a2, v197, v173, &v227);
    v183 = vdupq_n_s64(v176);
    v184 = vdupq_n_s64(v174);
    v185 = vorrq_s8(vandq_s8(v225, v183), vandq_s8(*v33, v184));
    v186 = vorrq_s8(vandq_s8(v226, v183), vandq_s8(v33[1], v184));
    v225 = v185;
    v226 = v186;
    fiat_p256_cmovznz(a3, v197, a6, &v225);
    v187 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v108 = *MEMORY[0x1E69E9840];

    fiat_p256_point_double(a1, a2, a3, v24, v34, a6);
  }
}

uint64_t *fiat_p256_point_double(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v254 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v252 = v10;
  v253 = v10;
  *v251 = v10;
  *&v251[16] = v10;
  *v250 = v10;
  *&v250[16] = v10;
  v244[0] = v10;
  v244[1] = v10;
  fiat_p256_square(&v252, a6);
  fiat_p256_square(v251, a5);
  fiat_p256_mul(v250, a4, v251);
  v13 = *a4;
  v14 = a4[1];
  v15 = v252;
  v17 = *a4 - v252;
  v18 = __CFADD__(*(&v252 + 1), -((*a4 - __PAIR128__(v16, v252)) >> 64));
  v19 = *(&v252 + 1) + -((*a4 - __PAIR128__(v16, v252)) >> 64);
  v20 = v18;
  v21 = v14 - v19;
  v22 = v253;
  v18 = __CFADD__(v253, -((v14 - __PAIR128__(v20, v19)) >> 64));
  v23 = v253 + -((v14 - __PAIR128__(v20, v19)) >> 64);
  v24 = v18;
  v25 = a4[2];
  v26 = a4[3];
  v27 = v25 - v23;
  v18 = __CFADD__(*(&v253 + 1), -((v25 - __PAIR128__(v24, v23)) >> 64));
  v28 = *(&v253 + 1) + -((v25 - __PAIR128__(v24, v23)) >> 64);
  v29 = v18;
  v30 = v26 - __PAIR128__(v29, v28);
  v31 = __CFADD__(v17, *(&v30 + 1)) + v21;
  v32 = __CFADD__(__CFADD__(v17, *(&v30 + 1)), v21) | __CFADD__(DWORD2(v30), v31);
  v246 = v17 + *(&v30 + 1);
  v247 = DWORD2(v30) + v31;
  v248 = v32 + v27;
  v249 = v30 + __CFADD__(v32, v27) + (*(&v30 + 1) & 0xFFFFFFFF00000001);
  v18 = __CFADD__(v252, v13);
  v33 = v252 + v13;
  v35 = v18;
  v18 = __CFADD__(v18, v14);
  v34 = v35 + v14;
  v36 = v18;
  v37 = v253 + v25;
  v38 = __CFADD__(v253, v25);
  v39 = *(&v253 + 1) + v26;
  v40 = __CFADD__(*(&v253 + 1), v26);
  v42 = v34 + *(&v252 + 1);
  v18 = __CFADD__(__CFADD__(v34, *(&v252 + 1)), v37) | __CFADD__(v36, (__PAIR128__(v37, v34) + *(&v252 + 1)) >> 64);
  v41 = v36 + ((__PAIR128__(v37, v34) + *(&v252 + 1)) >> 64);
  v44 = v18 + v39;
  v18 = __CFADD__(v18, v39) | __CFADD__(v38, v44);
  v43 = v38 + v44;
  if (v18)
  {
    v45 = v40 + 1;
  }

  else
  {
    v45 = v40;
  }

  v46 = v42 - __PAIR128__(v26, (1 - __CFADD__(v33, 1)));
  v47 = v43 - -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64);
  v48 = -(v45 + (v45 < (1 - (__CFADD__(v47, 0xFFFFFFFFLL) + ((v43 - __PAIR128__(DWORD2(v30), -((v41 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46))))) >> 64))) >> 64)))));
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = -1;
  }

  if (v48)
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = v49 & (v33 + 1) | v50 & v33;
  v52 = v49 & (v46 - 0xFFFFFFFF) | v50 & v42;
  v53 = v49 & (v41 - (1 - (__CFADD__(v46, 0xFFFFFFFF00000001) + BYTE8(v46)))) | v50 & v41;
  v54 = v49 & (v47 + 0xFFFFFFFF) | v50 & v43;
  *(&v56 + 1) = v52;
  *&v56 = v51;
  v55 = v56 >> 63;
  *(&v56 + 1) = v53;
  *&v56 = v52;
  v57 = v56 >> 63;
  *(&v56 + 1) = v54;
  *&v56 = v53;
  v58 = v56 >> 63;
  v59 = v57 - (1 - __CFADD__(v55, 0xFFFFFFFF00000000));
  v60 = v58 - -((v57 - __PAIR128__(v11, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64);
  v61 = 1 - (__CFADD__(v60, 0xFFFFFFFFLL) + ((v58 - __PAIR128__(v12, -((v57 - __PAIR128__(v11, (1 - __CFADD__(v55, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v62 = 0;
  }

  else
  {
    v62 = -1;
  }

  if ((v54 < 0) + (v54 >> 63 < v61))
  {
    v63 = -1;
  }

  else
  {
    v63 = 0;
  }

  v64 = v62 & ((2 * v51) | 1) | v63 & (2 * v51);
  v65 = v62 & (v55 - 0x100000000) | v63 & v55;
  v66 = v62 & v59;
  v67 = v62 & v59 | v63 & v57;
  v68 = v62 & (v60 + 0xFFFFFFFF) | v63 & v58;
  v18 = __CFADD__(v64, v51);
  v69 = v64 + v51;
  v71 = v18;
  v18 = __CFADD__(v18, v52);
  v70 = v71 + v52;
  v72 = v18;
  v18 = __CFADD__(v70, v65);
  v73 = v70 + v65;
  v75 = v18;
  v18 = __CFADD__(v18, v53);
  v74 = v75 + v53;
  v18 |= __CFADD__(v72, v74);
  v74 += v72;
  v76 = v18;
  v18 = __CFADD__(v74, v67);
  v77 = v74 + v67;
  v79 = v18;
  v18 = __CFADD__(v18, v54);
  v78 = v79 + v54;
  v18 |= __CFADD__(v76, v78);
  v78 += v76;
  v80 = v18;
  v18 = __CFADD__(v78, v68);
  v81 = v78 + v68;
  if (v18)
  {
    ++v80;
  }

  v82 = v73 - __PAIR128__(v72, (1 - __CFADD__(v69, 1)));
  v83 = v81 - __PAIR128__(v66, -((v77 - __PAIR128__(v64, (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82))))) >> 64));
  if (v80 + (v80 < (1 - (__CFADD__(v83, 0xFFFFFFFFLL) + BYTE8(v83)))))
  {
    v84 = 0;
  }

  else
  {
    v84 = -1;
  }

  v245[0] = v84 & (v69 + 1) | v69 & *(&v83 + 1);
  v245[1] = v84 & (v82 - 0xFFFFFFFF) | *(&v83 + 1) & v73;
  v245[2] = v84 & (v77 - (1 - (__CFADD__(v82, 0xFFFFFFFF00000001) + BYTE8(v82)))) | *(&v83 + 1) & v77;
  v245[3] = v84 & (v83 + 0xFFFFFFFF) | *(&v83 + 1) & v81;
  fiat_p256_mul(v244, &v246, v245);
  fiat_p256_square(a1, v244);
  v85 = *v250 >> 63;
  v86 = *&v250[8] >> 63;
  v87 = *&v250[16] >> 63;
  v89 = v86 - (1 - __CFADD__(v85, 0xFFFFFFFF00000000));
  v92 = v87 - -((v86 - __PAIR128__(v88, (1 - __CFADD__(v85, 0xFFFFFFFF00000000)))) >> 64);
  v91 = (v87 - __PAIR128__(v90, -((v86 - __PAIR128__(v88, (1 - __CFADD__(v85, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v93 = v92 + 0xFFFFFFFF;
  v94 = 1 - (__CFADD__(v92, 0xFFFFFFFFLL) + v91);
  if ((*&v250[24] < 0) + (*&v250[24] >> 63 < v94))
  {
    v95 = 0;
  }

  else
  {
    v95 = -1;
  }

  if ((*&v250[24] < 0) + (*&v250[24] >> 63 < v94))
  {
    v96 = -1;
  }

  else
  {
    v96 = 0;
  }

  v97 = v95 & ((2 * *v250) | 1) | v96 & (2 * *v250);
  v98 = v95 & (v85 - 0x100000000) | v96 & v85;
  v99 = v95 & v89 | v96 & v86;
  v100 = v95 & v93 | v96 & v87;
  *(&v102 + 1) = v98;
  *&v102 = v97;
  v101 = v102 >> 63;
  *(&v102 + 1) = v99;
  *&v102 = v98;
  v103 = v102 >> 63;
  *(&v102 + 1) = v100;
  *&v102 = v99;
  v104 = v102 >> 63;
  v105 = v103 - (1 - __CFADD__(v101, 0xFFFFFFFF00000000));
  v106 = v104 - __PAIR128__(v96, -((v103 - __PAIR128__(v93, (1 - __CFADD__(v101, 0xFFFFFFFF00000000)))) >> 64));
  v107 = v106 + 0xFFFFFFFF;
  if ((v100 < 0) + (v100 >> 63 < (1 - (__CFADD__(v106, 0xFFFFFFFFLL) + BYTE8(v106)))))
  {
    v108 = 0;
  }

  else
  {
    v108 = -1;
  }

  v109 = ((2 * v97) | 1) & v108 | *(&v106 + 1) & (2 * v97);
  *&v240[8] = v108 & v105 | *(&v106 + 1) & v103;
  *&v240[16] = v108 & v107 | *(&v106 + 1) & v104;
  *v240 = v108 & (v101 - 0x100000000) | *(&v106 + 1) & v101;
  *(&v111 + 1) = *v240;
  *&v111 = v109;
  v110 = v111 >> 63;
  v112 = *v240 >> 63;
  v113 = *&v240[8] >> 63;
  v114 = v112 - (1 - __CFADD__(v110, 0xFFFFFFFF00000000));
  v116 = v113 - -((v112 - __PAIR128__(v105, (1 - __CFADD__(v110, 0xFFFFFFFF00000000)))) >> 64);
  v115 = (v113 - __PAIR128__(v107, -((v112 - __PAIR128__(v105, (1 - __CFADD__(v110, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v117 = v116 + 0xFFFFFFFF;
  v118 = 1 - (__CFADD__(v116, 0xFFFFFFFFLL) + v115);
  if ((*&v240[16] < 0) + (*&v240[16] >> 63 < v118))
  {
    v119 = 0;
  }

  else
  {
    v119 = -1;
  }

  if ((*&v240[16] < 0) + (*&v240[16] >> 63 < v118))
  {
    v120 = -1;
  }

  else
  {
    v120 = 0;
  }

  v121 = v120 & (2 * v109);
  v122 = v119 & (v110 - 0x100000000) | v120 & v110;
  v123 = v119 & v114 | v120 & v112;
  v124 = v119 & v117 | v120 & v113;
  v126 = (*a1 - __PAIR128__(((2 * v109) | 1) & v119 | v121, ((2 * v109) | 1) & v119 | v121)) >> 64;
  v125 = *a1 - (((2 * v109) | 1) & v119 | v121);
  LODWORD(v126) = -v126;
  v18 = __CFADD__(v122, v126);
  v127 = v122 + v126;
  v128 = v18;
  v129 = a1[1] - v127;
  v130 = -((a1[1] - __PAIR128__(v128, v127)) >> 64);
  v18 = __CFADD__(v123, v130);
  v131 = v123 + v130;
  v132 = v18;
  v133 = a1[2] - v131;
  v134 = -((a1[2] - __PAIR128__(v132, v131)) >> 64);
  v18 = __CFADD__(v124, v134);
  v135 = v124 + v134;
  v136 = v18;
  v137 = a1[3] - __PAIR128__(v136, v135);
  *a1 = v125 + *(&v137 + 1);
  a1[1] = DWORD2(v137) + __CFADD__(v125, *(&v137 + 1)) + v129;
  a1[2] = (__CFADD__(__CFADD__(v125, *(&v137 + 1)), v129) | __CFADD__(DWORD2(v137), __CFADD__(v125, *(&v137 + 1)) + v129)) + v133;
  a1[3] = v137 + __CFADD__(__CFADD__(__CFADD__(v125, *(&v137 + 1)), v129) | __CFADD__(DWORD2(v137), __CFADD__(v125, *(&v137 + 1)) + v129), v133) + (*(&v137 + 1) & 0xFFFFFFFF00000001);
  v138 = *v251;
  v139 = *v251 + v15;
  v140 = *&v251[16];
  v141 = v22 + (__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8])) + *&v251[16];
  v142 = *(&v22 + 1) + (__CFADD__(__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8]), v140) | __CFADD__(v22, (__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8])) + v140)) + *&v251[24];
  if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8]), *&v251[16]) | __CFADD__(v22, (__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8])) + *&v251[16]), *&v251[24]) | __CFADD__(*(&v22 + 1), (__CFADD__(__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8]), *&v251[16]) | __CFADD__(v22, (__CFADD__(__CFADD__(*v251, v15), *&v251[8]) | __CFADD__(*(&v15 + 1), __CFADD__(*v251, v15) + *&v251[8])) + *&v251[16])) + *&v251[24]))
  {
    v143 = 1;
  }

  else
  {
    v143 = 0;
  }

  v144 = *(&v139 + 1) - __PAIR128__(v117, (1 - __CFADD__(v139, 1)));
  v146 = v142 - -((v141 - __PAIR128__(v120, (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144))))) >> 64);
  v145 = (v142 - __PAIR128__(v121, -((v141 - __PAIR128__(v120, (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144))))) >> 64))) >> 64;
  v147 = v146 + 0xFFFFFFFF;
  v148 = -(v143 + (v143 < (1 - (__CFADD__(v146, 0xFFFFFFFFLL) + v145))));
  v149 = v148 == 0;
  if (v148)
  {
    v150 = 0;
  }

  else
  {
    v150 = -1;
  }

  if (v149)
  {
    v151 = 0;
  }

  else
  {
    v151 = -1;
  }

  v152 = v150 & (v139 + 1) | v151 & v139;
  v153 = v150 & (v144 - 0xFFFFFFFF) | v151 & *(&v139 + 1);
  v154 = v150 & (v141 - (1 - (__CFADD__(v144, 0xFFFFFFFF00000001) + BYTE8(v144)))) | v151 & v141;
  v239 = v150 & v147 | v151 & v142;
  v155 = a6[1];
  v157 = (*a6 + *a5) >> 64;
  v156 = *a6 + *a5;
  v158 = __CFADD__(__CFADD__(*a6, *a5), a5[1]);
  v159 = a5[2];
  v160 = a5[3];
  v161 = a6[2];
  v162 = a6[3];
  v18 = __CFADD__(v161, v159);
  v163 = v161 + v159;
  v164 = v18;
  v18 = __CFADD__(v162, v160);
  v165 = v162 + v160;
  v166 = v18;
  v168 = v157 + v155;
  v18 = __CFADD__(__CFADD__(v157, v155), v163) | __CFADD__(v158, (__PAIR128__(v163, v157) + v155) >> 64);
  v167 = v158 + ((__PAIR128__(v163, v157) + v155) >> 64);
  v169 = v164 + v18 + v165;
  if (__CFADD__(v18, v165) | __CFADD__(v164, v18 + v165))
  {
    v170 = v166 + 1;
  }

  else
  {
    v170 = v166;
  }

  v171 = v168 - __PAIR128__(v166, (1 - __CFADD__(v156, 1)));
  v172 = v169 - __PAIR128__(v151, -((v167 - __PAIR128__(v147, (1 - (__CFADD__(v171, 0xFFFFFFFF00000001) + BYTE8(v171))))) >> 64));
  if (v170 + (v170 < (1 - (__CFADD__(v172, 0xFFFFFFFFLL) + BYTE8(v172)))))
  {
    v173 = 0;
  }

  else
  {
    v173 = -1;
  }

  v246 = v173 & (v156 + 1) | *(&v172 + 1) & v156;
  v247 = v173 & (v171 - 0xFFFFFFFF) | *(&v172 + 1) & v168;
  v248 = v173 & (v167 - (1 - (__CFADD__(v171, 0xFFFFFFFF00000001) + BYTE8(v171)))) | *(&v172 + 1) & v167;
  v249 = v173 & (v172 + 0xFFFFFFFF) | *(&v172 + 1) & v169;
  fiat_p256_square(a3, &v246);
  v177 = *a3 - v152;
  v178 = a3[1] - (v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64));
  v18 = __CFADD__(v154, -((a3[1] - __PAIR128__(v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64), v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64))) >> 64));
  v179 = v154 + -((a3[1] - __PAIR128__(v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64), v153 + -((*a3 - __PAIR128__(v176, v152)) >> 64))) >> 64);
  v180 = v18;
  v181 = a3[2] - v179;
  v18 = __CFADD__(v239, -((a3[2] - __PAIR128__(v180, v179)) >> 64));
  v182 = v239 + -((a3[2] - __PAIR128__(v180, v179)) >> 64);
  v183 = v18;
  v184 = a3[3] - __PAIR128__(v183, v182);
  v185 = __CFADD__(v177, *(&v184 + 1)) + v178;
  v186 = __CFADD__(__CFADD__(v177, *(&v184 + 1)), v178) | __CFADD__(DWORD2(v184), v185);
  *a3 = v177 + *(&v184 + 1);
  a3[1] = DWORD2(v184) + v185;
  a3[2] = v186 + v181;
  a3[3] = v184 + __CFADD__(v186, v181) + (*(&v184 + 1) & 0xFFFFFFFF00000001);
  v187 = a1[1];
  v188 = v109 - *a1;
  v18 = __CFADD__(v187, -((v109 - __PAIR128__(v186 + v181, *a1)) >> 64));
  v189 = v187 + -((v109 - __PAIR128__(v186 + v181, *a1)) >> 64);
  v190 = v18;
  v191 = *v240 - v189;
  v192 = a1[2];
  v193 = a1[3];
  v18 = __CFADD__(v192, -((*v240 - __PAIR128__(v190, v189)) >> 64));
  v194 = v192 + -((*v240 - __PAIR128__(v190, v189)) >> 64);
  v195 = v18;
  v197 = *&v240[8] - v194;
  v196 = (*&v240[8] - __PAIR128__(v195, v194)) >> 64;
  v18 = __CFADD__(v193, -v196);
  v198 = v193 + -v196;
  v199 = v18;
  v200 = *&v240[16] - __PAIR128__(v199, v198);
  v201 = __CFADD__(v188, *(&v200 + 1)) + v191;
  v202 = __CFADD__(__CFADD__(v188, *(&v200 + 1)), v191) | __CFADD__(DWORD2(v200), v201);
  *a2 = v188 + *(&v200 + 1);
  a2[1] = DWORD2(v200) + v201;
  a2[2] = v202 + v197;
  a2[3] = v200 + __CFADD__(v202, v197) + (*(&v200 + 1) & 0xFFFFFFFF00000001);
  v203 = v138 >> 63;
  *(&v205 + 1) = v140;
  *&v205 = *(&v138 + 1);
  v204 = v205 >> 63;
  v206 = v140 >> 63;
  v207 = v206 - -((v204 - __PAIR128__(v174, (1 - __CFADD__(v203, 0xFFFFFFFF00000000)))) >> 64);
  v208 = 1 - (__CFADD__(v207, 0xFFFFFFFFLL) + ((v206 - __PAIR128__(v175, -((v204 - __PAIR128__(v174, (1 - __CFADD__(v203, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v140 < 0) + (*(&v140 + 1) >> 63 < v208))
  {
    v209 = 0;
  }

  else
  {
    v209 = -1;
  }

  if ((v140 < 0) + (*(&v140 + 1) >> 63 < v208))
  {
    v210 = -1;
  }

  else
  {
    v210 = 0;
  }

  *v251 = v209 & ((2 * v138) | 1) | v210 & (2 * v138);
  *&v251[8] = v209 & (v203 - 0x100000000) | v210 & v203;
  *&v251[16] = v209 & (v204 - (1 - __CFADD__(v203, 0xFFFFFFFF00000000))) | v210 & v204;
  *&v251[24] = v209 & (v207 + 0xFFFFFFFF) | v210 & v206;
  fiat_p256_square(v251, v251);
  result = fiat_p256_mul(a2, v244, a2);
  v212 = *v251 >> 63;
  v213 = *&v251[8] >> 63;
  v214 = *&v251[16] >> 63;
  v216 = v213 - (1 - __CFADD__(v212, 0xFFFFFFFF00000000));
  v218 = v214 - -((v213 - __PAIR128__(v215, (1 - __CFADD__(v212, 0xFFFFFFFF00000000)))) >> 64);
  v219 = 1 - (__CFADD__(v218, 0xFFFFFFFFLL) + ((v214 - __PAIR128__(v217, -((v213 - __PAIR128__(v215, (1 - __CFADD__(v212, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((*&v251[24] < 0) + (*&v251[24] >> 63 < v219))
  {
    v220 = 0;
  }

  else
  {
    v220 = -1;
  }

  if ((*&v251[24] < 0) + (*&v251[24] >> 63 < v219))
  {
    v221 = -1;
  }

  else
  {
    v221 = 0;
  }

  v222 = v220 & (v212 - 0x100000000) | v221 & v212;
  v223 = v220 & v216 | v221 & v213;
  v224 = v220 & (v218 + 0xFFFFFFFF) | v221 & v214;
  v225 = *a2 - (v220 & ((2 * *v251) | 1) | v221 & (2 * *v251));
  v226 = -((*a2 - __PAIR128__(*a2, v220 & ((2 * *v251) | 1) | v221 & (2 * *v251))) >> 64);
  v18 = __CFADD__(v222, v226);
  v227 = v222 + v226;
  v228 = v18;
  v229 = a2[1] - v227;
  v230 = -((a2[1] - __PAIR128__(v228, v227)) >> 64);
  v18 = __CFADD__(v223, v230);
  v231 = v223 + v230;
  v232 = v18;
  v233 = a2[2] - v231;
  v234 = -((a2[2] - __PAIR128__(v232, v231)) >> 64);
  v18 = __CFADD__(v224, v234);
  v235 = v224 + v234;
  v236 = v18;
  v237 = a2[3] - __PAIR128__(v236, v235);
  *a2 = v225 + *(&v237 + 1);
  a2[1] = DWORD2(v237) + __CFADD__(v225, *(&v237 + 1)) + v229;
  a2[2] = (__CFADD__(__CFADD__(v225, *(&v237 + 1)), v229) | __CFADD__(DWORD2(v237), __CFADD__(v225, *(&v237 + 1)) + v229)) + v233;
  a2[3] = v237 + __CFADD__(__CFADD__(__CFADD__(v225, *(&v237 + 1)), v229) | __CFADD__(DWORD2(v237), __CFADD__(v225, *(&v237 + 1)) + v229), v233) + (*(&v237 + 1) & 0xFFFFFFFF00000001);
  v238 = *MEMORY[0x1E69E9840];
  return result;
}

int8x16_t fiat_p256_cmovznz(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (a2)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a4 + 24) & v5 | *(a3 + 24) & v4;
  v7 = vandq_s8(*(a4 + 8), vdupq_n_s64(v5));
  v8 = vandq_s8(*(a3 + 8), vdupq_n_s64(v4));
  *a1 = v4 & *a3 | v5 & *a4;
  result = vorrq_s8(v7, v8);
  *(a1 + 8) = result;
  *(a1 + 24) = v6;
  return result;
}

double fiat_p256_select_point_affine(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = 0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  v7 = (a3 + 2);
  v8 = a1 - 1;
  do
  {
    fiat_p256_cmovznz(a3, v6 ^ v8, a2, a3);
    fiat_p256_cmovznz(v7, v6++ ^ v8, a2 + 32, v7);
    a2 += 64;
  }

  while (v6 != 15);

  *&result = fiat_p256_cmovznz((a3 + 4), a1, (a3 + 4), &fiat_p256_one).u64[0];
  return result;
}

BIO *__cdecl BIO_new_fp(FILE *stream, int close_flag)
{
  v4 = BIO_new(&methods_filep);
  v5 = v4;
  if (v4)
  {
    BIO_ctrl(v4, 106, close_flag, stream);
  }

  return v5;
}

uint64_t file_write(uint64_t a1, void *__ptr, unsigned int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  LODWORD(result) = fwrite(__ptr, a3, 1uLL, *(a1 + 40));
  if (result <= 0)
  {
    return result;
  }

  else
  {
    return a3;
  }
}

size_t file_read(uint64_t a1, void *__ptr, int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = fread(__ptr, 1uLL, a3, *(a1 + 40));
  if (!v4 && ferror(*(a1 + 40)))
  {
    ERR_put_error(2, 0, 0, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 161);
    ERR_put_error(17, 0, 2, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 162);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

char *file_gets(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = fgets(a2, a3, *(a1 + 40));
  if (result)
  {
    return strlen(a2);
  }

  *a2 = 0;
  return result;
}

uint64_t file_ctrl(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = a3;
  result = 0;
  if (a2 > 10)
  {
    if (a2 <= 107)
    {
      switch(a2)
      {
        case 11:
          return fflush(*(a1 + 40)) == 0;
        case 106:
          file_free(a1);
          *(a1 + 40) = a4;
          result = 1;
          *(a1 + 16) = 1;
          *(a1 + 20) = v4 & 1;
          break;
        case 107:
          if (a4)
          {
            *a4 = *(a1 + 40);
          }

          return 1;
      }

      return result;
    }

    if (a2 != 108)
    {
      if (a2 != 128)
      {
        if (a2 != 133)
        {
          return result;
        }

LABEL_17:
        v8 = *(a1 + 40);

        JUMPOUT(0x1AC57E7E0);
      }

      goto LABEL_24;
    }

    file_free(a1);
    *(a1 + 20) = v4 & 1;
    if ((v4 & 8) != 0)
    {
      if ((v4 & 2) != 0)
      {
        v10 = "ab+";
      }

      else
      {
        v10 = "ab";
      }
    }

    else
    {
      v9 = v4 & 6;
      if (v9 == 6)
      {
        v10 = "rb+";
      }

      else
      {
        if ((v4 & 4) != 0)
        {
          v10 = "wb";
        }

        else
        {
          v10 = "rb";
        }

        if (!v9)
        {
          v12 = 100;
          v13 = 235;
LABEL_43:
          ERR_put_error(17, 0, v12, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", v13);
          return 0;
        }
      }
    }

    v11 = fopen(a4, v10);
    if (v11)
    {
      *(a1 + 40) = v11;
      result = 1;
      *(a1 + 16) = 1;
      return result;
    }

    ERR_put_error(2, 0, 0, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/file.c", 241);
    ERR_add_error_data(5, "fopen('", a4, "','", v10, "')");
    v12 = 2;
    v13 = 243;
    goto LABEL_43;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      LODWORD(result) = feof(*(a1 + 40));
      return result;
    }

    v4 = 0;
LABEL_24:
    LODWORD(result) = fseek(*(a1 + 40), v4, 0);
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_17;
    case 8:
      return *(a1 + 20);
    case 9:
      *(a1 + 20) = a3;
      return 1;
  }

  return result;
}

uint64_t file_free(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        fclose(v2);
        *(a1 + 40) = 0;
      }
    }

    *(a1 + 16) = 0;
  }

  return 1;
}

uint64_t BIO_hexdump(BIO *a1, uint64_t a2, unint64_t a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  indent[1] = 0;
  v19 = 0u;
  v20 = 0u;
  indent[0] = a4;
  v23 = -21846;
  data = 0xAAAAAAAAAAAAAAAALL;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    for (i = 0; i != a3; v7 = i >= a3)
    {
      if (!v6)
      {
        BIO_indent(a1, indent[0], -1);
        LOBYTE(data) = hexbyte_hextable[DWORD2(v20) >> 28];
        BYTE1(data) = hexbyte_hextable[(*(&v20 + 1) >> 24) & 0xFLL];
        BYTE2(data) = hexbyte_hextable[(*(&v20 + 1) >> 20) & 0xFLL];
        BYTE3(data) = hexbyte_hextable[(*(&v20 + 1) >> 16) & 0xFLL];
        BYTE4(data) = hexbyte_hextable[WORD4(v20) >> 12];
        BYTE5(data) = hexbyte_hextable[(*(&v20 + 1) >> 8) & 0xFLL];
        BYTE6(data) = hexbyte_hextable[BYTE8(v20) >> 4];
        HIBYTE(data) = hexbyte_hextable[BYTE8(v20) & 0xF];
        v23 = 8224;
        if (BIO_write(a1, &data, 10) < 0)
        {
          break;
        }

        v6 = DWORD1(v20);
      }

      v9 = *(a2 + i);
      LOBYTE(data) = hexbyte_hextable[v9 >> 4];
      BYTE1(data) = hexbyte_hextable[v9 & 0xF];
      BYTE2(data) = 32;
      if (v6 == 15)
      {
        *(&data + 3) = 31776;
        v10 = 5;
      }

      else if (v6 == 7)
      {
        BYTE3(data) = 32;
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      if (BIO_write(a1, &data, v10) < 0)
      {
        break;
      }

      v11 = *(a2 + i);
      if ((v11 - 127) < 0xFFFFFFA1)
      {
        LOBYTE(v11) = 46;
      }

      *(&v19 + DWORD1(v20)) = v11;
      v6 = DWORD1(v20) + 1;
      DWORD1(v20) = v6;
      ++*(&v20 + 1);
      if (v6 == 16)
      {
        LOWORD(v20) = 2684;
        if (BIO_write(a1, &v19, 18) < 0)
        {
          break;
        }

        v6 = 0;
        DWORD1(v20) = 0;
      }

      ++i;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    v12 = DWORD1(v20);
    if (DWORD1(v20))
    {
      qmemcpy(&data, "    |", 5);
      if (DWORD1(v20) <= 0xF)
      {
        for (j = DWORD1(v20); j < 0x10; DWORD1(v20) = j)
        {
          v14 = j == 15 ? 5 : 3;
          v15 = j == 7 ? 4 : v14;
          if (BIO_write(a1, &data, v15) < 0)
          {
            goto LABEL_32;
          }

          j = DWORD1(v20) + 1;
        }
      }

      *(&v19 + v12) = 124;
      *(&v19 + v12 + 1) = 10;
      if (BIO_write(a1, &v19, v12 + 2) < 0)
      {
LABEL_32:
        result = 0;
        goto LABEL_33;
      }
    }
  }

  result = 1;
LABEL_33:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SSL_SESSION_to_bytes_for_ticket(uint64_t a1, void *a2, void *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = v6;
  v9[2] = v6;
  v9[0] = v6;
  CBB_zero(v9);
  v7 = CBB_init(v9, 0x100uLL) && bssl::SSL_SESSION_to_bytes_full(a1, v9, 1) && CBB_finish(v9, a2, a3) != 0;
  CBB_cleanup(v9);
  return v7;
}

ssize_t sock_write(uint64_t a1, const void *a2, int a3)
{
  EVP_HPKE_KEY_cleanup(a1);
  v6 = write(*(a1 + 32), a2, a3);
  BIO_clear_retry_flags(a1);
  if (v6 <= 0 && bio_socket_should_retry(v6))
  {
    BIO_set_retry_write(a1);
  }

  return v6;
}

void *sock_read(uint64_t a1, void *a2, int a3)
{
  v3 = a2;
  if (a2)
  {
    EVP_HPKE_KEY_cleanup(a1);
    v3 = read(*(a1 + 32), v3, a3);
    BIO_clear_retry_flags(a1);
    if (v3 <= 0)
    {
      if (bio_socket_should_retry(v3))
      {
        BIO_set_retry_read(a1);
      }
    }
  }

  return v3;
}

uint64_t sock_ctrl(_DWORD *a1, int a2, int a3, _DWORD *a4)
{
  if (a2 <= 10)
  {
    if (a2 == 8)
    {
      return a1[5];
    }

    if (a2 != 9)
    {
      return 0;
    }

    a1[5] = a3;
    return 1;
  }

  if (a2 == 11)
  {
    return 1;
  }

  if (a2 != 105)
  {
    if (a2 == 104)
    {
      if (a1[5])
      {
        if (a1[4])
        {
          close(a1[8]);
        }

        a1[4] = 0;
        a1[6] = 0;
      }

      a1[8] = *a4;
      result = 1;
      a1[4] = 1;
      a1[5] = a3;
      return result;
    }

    return 0;
  }

  if (!a1[4])
  {
    return -1;
  }

  v8 = a1[8];
  result = v8;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sock_free(_DWORD *a1)
{
  if (a1[5])
  {
    if (a1[4])
    {
      close(a1[8]);
    }

    a1[4] = 0;
    a1[6] = 0;
  }

  return 1;
}

unint64_t bn_mont_n0(unint64_t **a1)
{
  if (BN_is_zero(a1))
  {
    bn_mont_n0_cold_1();
  }

  if (BN_is_negative(a1))
  {
    bn_mont_n0_cold_2();
  }

  if (!BN_is_odd(a1))
  {
    bn_mont_n0_cold_6();
  }

  v2 = **a1;
  if ((v2 & 1) == 0)
  {
    bn_mont_n0_cold_5();
  }

  v3 = 0;
  v4 = 64;
  v5 = 1;
  do
  {
    v6 = 1 << v4;
    if ((v4 & 0x40) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1 << v4;
    }

    if ((v4 & 0x40) == 0)
    {
      v6 = 0;
    }

    if (v6 != v5 - (((v3 * v2) >> 64) + (v3 * v2 != 0)) || v7 != -(v3 * v2))
    {
      bn_mont_n0_cold_3();
    }

    v9 = -(v5 & 1);
    v5 = (v2 & v9 & v5) + ((v2 & v9 ^ v5) >> 1);
    result = v9 & 0x8000000000000000 | (v3 >> 1);
    v3 = result;
    --v4;
  }

  while (v4);
  if (-(result * v2) ^ 1 | (v5 - (((result * v2) >> 64) + (result * v2 != 0))))
  {
    bn_mont_n0_cold_4();
  }

  return result;
}

uint64_t bn_mont_ctx_set_RR_consttime(BIGNUM *a1, BN_CTX *a2)
{
  if (BN_is_zero(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_1();
  }

  if (BN_is_negative(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_2();
  }

  if (!BN_is_odd(&a1[1]))
  {
    bn_mont_ctx_set_RR_consttime_cold_7();
  }

  if (bn_minimal_width(&a1[1]) != a1[1].top)
  {
    bn_mont_ctx_set_RR_consttime_cold_3();
  }

  v4 = BN_num_bits(a1 + 1);
  if (v4 == 1)
  {
    BN_zero(a1);
LABEL_16:
    top = a1[1].top;

    return bn_resize_words(a1, top);
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      bn_mont_ctx_set_RR_consttime_cold_4();
    }

    v6 = a1[1].top;
    if (v6 << 6 < v4)
    {
      bn_mont_ctx_set_RR_consttime_cold_6();
    }

    if (BN_set_bit(a1, v4 - 1) && bn_mod_lshift_consttime(a1, a1, v6 - v5 + (v6 << 6) + 1, &a1[1], a2))
    {
      if (v6 != a1[1].top)
      {
        bn_mont_ctx_set_RR_consttime_cold_5();
      }

      v7 = 6;
      while (BN_mod_mul_montgomery(a1, a1, a1, a1, a2))
      {
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }
}

uint64_t RSA_padding_add_PKCS1_PSS_mgf1(const RSA *a1, unsigned __int8 *a2, const void *a3, EVP_MD *md, const EVP_MD *a5, unsigned int a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = md;
  }

  v12 = EVP_MD_size(md);
  if (BN_is_zero(a1->version))
  {
    v13 = 120;
    v14 = 328;
LABEL_37:
    ERR_put_error(4, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/rsa/padding.c.inc", v14);
    v27 = 0;
    v21 = 0;
    goto LABEL_38;
  }

  v15 = (BN_num_bits(a1->version) - 1) & 7;
  v16 = RSA_size(a1);
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      RSA_padding_add_PKCS1_PSS_mgf1_cold_1();
    }

    *a2++ = 0;
    v17 = v16 - 1;
  }

  if (v17 < v12 + 2)
  {
    v13 = 114;
    v14 = 341;
    goto LABEL_37;
  }

  v18 = v12;
  if (a6 != -1)
  {
    if (a6 == -2)
    {
      v18 = v17 - v12 - 2;
    }

    else
    {
      if ((a6 & 0x80000000) != 0)
      {
        v13 = 138;
        v14 = 355;
        goto LABEL_37;
      }

      v18 = a6;
    }
  }

  v19 = v17 - v12;
  if (v17 - v12 - 2 < v18)
  {
    v13 = 114;
    v14 = 362;
    goto LABEL_37;
  }

  if (v18)
  {
    v20 = OPENSSL_malloc(v18);
    v21 = v20;
    if (!v20)
    {
LABEL_35:
      v27 = 0;
      goto LABEL_38;
    }

    BCM_rand_bytes(v20, v18);
  }

  else
  {
    v21 = 0;
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v29.digest = v22;
  *&v29.flags = v22;
  EVP_MD_CTX_init(&v29);
  if (!EVP_DigestInit_ex(&v29, md, 0) || !EVP_DigestUpdate(&v29, &kPSSZeroes, 8uLL) || !EVP_DigestUpdate(&v29, a3, v12) || !EVP_DigestUpdate(&v29, v21, v18))
  {
    EVP_MD_CTX_cleanup(&v29);
    goto LABEL_35;
  }

  v23 = EVP_DigestFinal_ex(&v29, &a2[v19 - 1], 0);
  EVP_MD_CTX_cleanup(&v29);
  if (!v23 || !PKCS1_MGF1(a2, v19 - 1, &a2[v19 - 1], v12, v11))
  {
    goto LABEL_35;
  }

  a2[v17 - (v12 + v18) - 2] ^= 1u;
  if (v18)
  {
    v24 = &a2[~(v12 + v18) + v17];
    v25 = v21;
    do
    {
      v26 = *v25++;
      *v24++ ^= v26;
      --v18;
    }

    while (v18);
  }

  if (v15)
  {
    *a2 &= 0xFFu >> (8 - v15);
  }

  a2[v17 - 1] = -68;
  v27 = 1;
LABEL_38:
  OPENSSL_free(v21);
  return v27;
}

uint64_t EVP_marshal_public_key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 32)) != 0)
  {

    return v4();
  }

  else
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 147);
    return 0;
  }
}

EVP_PKEY *EVP_parse_private_key(__int128 *a1)
{
  memset(v10, 170, sizeof(v10));
  memset(v9, 170, sizeof(v9));
  if (!CBS_get_asn1(a1, &v10[1], 536870928) || !CBS_get_asn1_uint64(&v10[1], v9) || v9[0] || !CBS_get_asn1(&v10[1], v10, 536870928) || !CBS_get_asn1(&v10[1], &v9[1], 4))
  {
    v6 = 102;
    v7 = 163;
LABEL_12:
    ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", v7);
    return 0;
  }

  v1 = parse_key_type(v10);
  if (!v1)
  {
    v6 = 128;
    v7 = 168;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = EVP_PKEY_new();
  v4 = v3;
  if (!v3)
  {
LABEL_17:
    EVP_PKEY_free(v4);
    return 0;
  }

  evp_pkey_set_method(v3, v2);
  v5 = *(v4->pkey.ptr + 6);
  if (!v5)
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 183);
    goto LABEL_17;
  }

  if (!v5(v4, v10, &v9[1]))
  {
    goto LABEL_17;
  }

  return v4;
}

uint64_t EVP_marshal_private_key(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 56)) != 0)
  {

    return v4();
  }

  else
  {
    ERR_put_error(6, 0, 128, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 199);
    return 0;
  }
}

EVP_PKEY *__cdecl d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned __int8 **pp, uint64_t length)
{
  if (length < 0)
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 250);
    return 0;
  }

  *&v15 = *pp;
  *(&v15 + 1) = length;
  v8 = EVP_PKEY_new();
  if (v8)
  {
    v9 = v8;
    switch(type)
    {
      case 6:
        v12 = RSA_parse_private_key(&v15);
        if (v12 && EVP_PKEY_assign_RSA(v9, v12))
        {
          goto LABEL_20;
        }

        RSA_free(v12);
        break;
      case 116:
        v11 = DSA_parse_private_key(&v15);
        if (v11 && EVP_PKEY_assign_DSA(v9, v11))
        {
          goto LABEL_20;
        }

        DSA_free(v11);
        break;
      case 408:
        v10 = EC_KEY_parse_private_key(&v15, 0);
        if (v10 && EVP_PKEY_assign_EC_KEY(v9, v10))
        {
          goto LABEL_20;
        }

        EC_KEY_free(v10);
        break;
      default:
        ERR_put_error(6, 0, 127, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 238);
        break;
    }

    EVP_PKEY_free(v9);
  }

  ERR_clear_error();
  *&v15 = *pp;
  *(&v15 + 1) = length;
  v13 = EVP_parse_private_key(&v15);
  v9 = v13;
  if (!v13)
  {
    return v9;
  }

  if (v13->save_type != type)
  {
    ERR_put_error(6, 0, 103, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/evp_asn1.c", 267);
    EVP_PKEY_free(v9);
    return 0;
  }

LABEL_20:
  if (a)
  {
    EVP_PKEY_free(*a);
    *a = v9;
  }

  *pp = v15;
  return v9;
}

DSA *dsa_pub_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = DSA_parse_parameters(a2);
    if (!v6 || *(a2 + 8))
    {
      v7 = 81;
LABEL_10:
      ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
      goto LABEL_11;
    }
  }

  else
  {
    result = DSA_new();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  v9 = BN_new();
  v6->p = v9;
  if (v9)
  {
    if (BN_parse_asn1_unsigned(a3, v9) && !*(a3 + 8))
    {
      evp_pkey_set_method(a1, &dsa_asn1_meth);
      *(a1 + 8) = v6;
      return 1;
    }

    v7 = 93;
    goto LABEL_10;
  }

LABEL_11:
  DSA_free(v6);
  return 0;
}

uint64_t dsa_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *v3 && *(v3 + 8) && *(v3 + 16) != 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = v5;
  v10[2] = v5;
  v10[0] = v5;
  v9[1] = v5;
  v9[2] = v5;
  v8[2] = v5;
  v9[0] = v5;
  v8[0] = v5;
  v8[1] = v5;
  v7[1] = v5;
  v7[2] = v5;
  v7[0] = v5;
  if (CBB_add_asn1(a1, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 0x20000010u) && CBB_add_asn1(v9, v8, 6u) && CBB_add_bytes(v8, &unk_1F1CAF9E4, 7uLL) && (!v4 || DSA_marshal_parameters(v9, v3)) && CBB_add_asn1(v10, v7, 3u) && CBB_add_u8(v7, 0) && BN_marshal_asn1(v7, *(v3 + 24)) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", 121);
  return 0;
}

BOOL dsa_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = DSA_get0_pub_key(*(a2 + 8));
  v4 = DSA_get0_pub_key(v2);
  return BN_cmp(v3, v4) == 0;
}

uint64_t dsa_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = DSA_parse_parameters(a2);
  if (!v6 || *(a2 + 8))
  {
    v7 = 135;
LABEL_4:
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
LABEL_5:
    v8 = 0;
LABEL_6:
    BN_CTX_free(v8);
    DSA_free(v6);
    return 0;
  }

  v10 = BN_new();
  v6->q = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  if (!BN_parse_asn1_unsigned(a3, v10) || *(a3 + 8))
  {
    v7 = 145;
    goto LABEL_4;
  }

  if (!dsa_check_key(&v6->pad))
  {
    v7 = 153;
    goto LABEL_4;
  }

  v8 = BN_CTX_new();
  v11 = BN_new();
  v6->p = v11;
  if (!v8 || !v11 || !BN_mod_exp_mont_consttime(v11, *&v6->write_params, v6->q, *&v6->pad, v8, 0))
  {
    goto LABEL_6;
  }

  BN_CTX_free(v8);
  evp_pkey_set_method(a1, &dsa_asn1_meth);
  *(a1 + 8) = v6;
  return 1;
}

uint64_t dsa_priv_encode(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && v2[4])
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[1] = v4;
    v11[2] = v4;
    v11[0] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v9[2] = v4;
    v10[0] = v4;
    v9[0] = v4;
    v9[1] = v4;
    v8[1] = v4;
    v8[2] = v4;
    v8[0] = v4;
    if (CBB_add_asn1(a1, v11, 0x20000010u) && CBB_add_asn1_uint64(v11, 0) && CBB_add_asn1(v11, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 6u) && CBB_add_bytes(v9, &unk_1F1CAF9E4, 7uLL) && DSA_marshal_parameters(v10, v2) && CBB_add_asn1(v11, v8, 4u) && BN_marshal_asn1(v8, v2[4]) && CBB_flush(a1))
    {
      return 1;
    }

    v6 = 105;
    v7 = 194;
  }

  else
  {
    v6 = 118;
    v7 = 179;
  }

  ERR_put_error(6, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_dsa_asn1.c", v7);
  return 0;
}

uint64_t dsa_bits(uint64_t a1)
{
  v1 = EVP_AEAD_CTX_aead(*(a1 + 8));

  return BN_num_bits(v1);
}

uint64_t dsa_copy_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!dup_bn_into(v2, *v3) || !dup_bn_into(v2 + 1, v3[1]))
  {
    return 0;
  }

  v4 = v3[2];

  return dup_bn_into(v2 + 2, v4);
}

BOOL dsa_cmp_parameters(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EVP_AEAD_CTX_aead(v2);
  v5 = EVP_AEAD_CTX_aead(v3);
  if (BN_cmp(v4, v5))
  {
    return 0;
  }

  v6 = EVP_HPKE_CTX_aead(v2);
  v7 = EVP_HPKE_CTX_aead(v3);
  if (BN_cmp(v6, v7))
  {
    return 0;
  }

  v9 = EVP_HPKE_CTX_kdf(v2);
  v10 = EVP_HPKE_CTX_kdf(v3);
  return BN_cmp(v9, v10) == 0;
}

BOOL EVP_PKEY_assign_DSA(uint64_t a1, uint64_t a2)
{
  evp_pkey_set_method(a1, &dsa_asn1_meth);
  *(a1 + 8) = a2;
  return a2 != 0;
}

uint64_t dup_bn_into(BIGNUM **a1, BIGNUM *a)
{
  result = BN_dup(a);
  if (result)
  {
    v4 = result;
    BN_free(*a1);
    *a1 = v4;
    return 1;
  }

  return result;
}

uint64_t MLKEM768_parse_public_key(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  cckem_kyber768();
  v4 = cckem_sizeof_pub_ctx();
  v5 = malloc_type_malloc(v4, 0x9C9C07E6uLL);
  *a1 = v5;
  if (!v5)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        goto LABEL_8;
      }

      MLKEM768_parse_public_key_cold_1();
    }

    result = 0;
    goto LABEL_8;
  }

  memset(__b, 170, sizeof(__b));
  result = CBS_copy_bytes(a2, __b, 0x4A0uLL);
  if (result)
  {
    v7 = *a1;
    cckem_pub_ctx_init();
    result = cckem_import_pubkey() == 0;
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void MLKEM768_encap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    ccrng();
    if (cckem_encapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      MLKEM768_encap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    MLKEM768_encap_cold_2();
  }
}

BOOL MLKEM768_decap(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!*a4)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      MLKEM768_decap_cold_2();
    }

    return 0;
  }

  if (cckem_decapsulate())
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      MLKEM768_decap_cold_1();
    }

    return 0;
  }

  return 1;
}

void KYBER_generate_key(uint64_t a1, void *a2)
{
  cckem_kyber768();
  v3 = cckem_sizeof_full_ctx();
  v4 = malloc_type_malloc(v3, 0xDF036E84uLL);
  *a2 = v4;
  if (v4)
  {
    cckem_full_ctx_init();
    ccrng();
    cckem_generate_key();
    cckem_public_ctx();
    if (cckem_export_pubkey() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_generate_key_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_generate_key_cold_2();
  }
}

uint64_t KYBER_parse_public_key(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  cckem_kyber768();
  v4 = cckem_sizeof_pub_ctx();
  v5 = malloc_type_malloc(v4, 0x3888F686uLL);
  *a1 = v5;
  if (!v5)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        goto LABEL_8;
      }

      KYBER_parse_public_key_cold_1();
    }

    result = 0;
    goto LABEL_8;
  }

  memset(__b, 170, sizeof(__b));
  result = CBS_copy_bytes(a2, __b, 0x4A0uLL);
  if (result)
  {
    v7 = *a1;
    cckem_pub_ctx_init();
    result = cckem_import_pubkey() == 0;
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void KYBER_encap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    ccrng();
    if (cckem_encapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_encap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_encap_cold_2();
  }
}

void KYBER_decap(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    if (cckem_decapsulate() && g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
    {
      KYBER_decap_cold_1();
    }
  }

  else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
  {
    KYBER_decap_cold_2();
  }
}

double EVP_aead_aes_128_gcm_tls13_init()
{
  unk_1ED4C01D0 = 0u;
  *&qword_1ED4C01E0 = 0u;
  unk_1ED4C0200 = 0u;
  *&result = 269487120;
  EVP_aead_aes_128_gcm_tls13_storage = 269487120;
  dword_1ED4C01CC = 1;
  qword_1ED4C01D8 = aead_aes_gcm_init_with_dir;
  qword_1ED4C01E0 = aead_aes_gcm_cleanup;
  qword_1ED4C01F0 = aead_aes_gcm_tls13_seal_scatter;
  qword_1ED4C01F8 = aead_aes_gcm_open_gather;
  return result;
}

uint64_t aes_init_key(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*a1 + 20) & 0x3F;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_2();
        }

        return 0;
      case 4u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_1();
        }

        return 0;
      case 5u:
        if (g_boringssl_log)
        {
          result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          aes_init_key_cold_4();
        }

        return 0;
    }

LABEL_22:
    v8 = g_boringssl_log;
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      aes_init_key_cold_5(v4, v8);
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (g_boringssl_log)
    {
      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      aes_init_key_cold_3();
    }

    return 0;
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  if ((*(a1 + 24) - 65) < 0xFFFFFFC0)
  {
    return 0;
  }

  if (a4)
  {
    v7 = ccaes_cbc_encrypt_mode();
  }

  else
  {
    v7 = ccaes_cbc_decrypt_mode();
  }

  v9 = v7;
  result = malloc_type_malloc(((v7[1] + ((*v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0) + 16, 0x7A0E2781uLL);
  if (result)
  {
    v10 = result;
    *result = v9;
    v11 = *(a1 + 24);
    if (!cccbc_init())
    {
      v12 = (**v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (!cccbc_set_iv())
      {
        *(a1 + 8) = v10;
        return 1;
      }
    }

    free(v10);
    return 0;
  }

  return result;
}

uint64_t aes_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((*(*a1 + 20) & 2) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *v6;
  if (!*v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 && (!a2 || !a3))
  {
    aes_cipher_cold_1();
  }

  if (a4 % v7[1])
  {
    return 0xFFFFFFFFLL;
  }

  v8 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = cccbc_set_iv();
  v10 = (**v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (cccbc_update() | v9)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 52) = *(v6 + ((**v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  return 1;
}

void aes_cleanup(void *a1)
{
  if ((*(*a1 + 20) & 2) != 0)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = **v2;
      cc_clear();
      free(v2);
    }
  }

  a1[1] = 0;
}

uint64_t pkey_ec_keygen(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 40) + 8);
  if (!v3)
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 212);
      return 0;
    }

    v3 = EC_KEY_get0_group(*(v4 + 8));
  }

  v5 = EC_KEY_new();
  v6 = v5;
  if (v5 && EC_KEY_set_group(v5, v3) && EC_KEY_generate_key(v6))
  {
    EVP_PKEY_assign_EC_KEY(a2, v6);
    return 1;
  }

  EC_KEY_free(v6);
  return 0;
}

uint64_t pkey_ec_sign(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, const unsigned __int8 *a4, int a5)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  if (!a2)
  {
    *a3 = ECDSA_size(*(v6 + 8));
    return 1;
  }

  v11 = *a3;
  if (v11 < ECDSA_size(*(v6 + 8)))
  {
    ERR_put_error(6, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 120);
    return 0;
  }

  siglen = -1431655766;
  result = ECDSA_sign(0, a4, a5, a2, &siglen, v7);
  if (result)
  {
    *a3 = siglen;
    return 1;
  }

  return result;
}

uint64_t pkey_ec_derive(uint64_t a1, void *a2, size_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3 || (v4 = *(a1 + 24)) == 0)
  {
    ERR_put_error(6, 0, 117, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 141);
    return 0;
  }

  v7 = *(v3 + 8);
  if (!a2)
  {
    v12 = EC_KEY_get0_group(*(v3 + 8));
    v10 = (EC_GROUP_get_degree(v12) + 7) >> 3;
    goto LABEL_9;
  }

  v8 = EC_KEY_get0_public_key(*(v4 + 8));
  v9 = ECDH_compute_key(a2, *a3, v8, v7, 0);
  if ((v9 & 0x80000000) != 0)
  {
    return 0;
  }

  v10 = v9;
LABEL_9:
  *a3 = v10;
  return 1;
}

uint64_t pkey_ec_paramgen(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 8))
  {
    v4 = EC_KEY_new();
    v5 = v4;
    if (v4 && EC_KEY_set_group(v4, *(v2 + 8)))
    {
      EVP_PKEY_assign_EC_KEY(a2, v5);
      return 1;
    }

    EC_KEY_free(v5);
  }

  else
  {
    ERR_put_error(6, 0, 124, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec.c", 231);
  }

  return 0;
}

EVP_MD_CTX *EVP_MD_CTX_create(void)
{
  result = OPENSSL_malloc(0x20uLL);
  if (result)
  {
    *&result->digest = 0u;
    *&result->flags = 0u;
  }

  return result;
}

void EVP_MD_CTX_destroy(EVP_MD_CTX *ctx)
{
  if (ctx)
  {
    EVP_MD_CTX_cleanup(ctx);

    OPENSSL_free(ctx);
  }
}

double EVP_MD_CTX_move(uint64_t a1, _OWORD *a2)
{
  EVP_MD_CTX_cleanup(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  EVP_DigestFinal_ex(ctx, md, s);
  EVP_MD_CTX_cleanup(ctx);
  return 1;
}

uint64_t eckey_pub_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = EC_KEY_get0_group(v3);
  v5 = EC_KEY_get0_public_key(v3);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v6;
  v11[2] = v6;
  v11[0] = v6;
  v10[1] = v6;
  v10[2] = v6;
  v9[2] = v6;
  v10[0] = v6;
  v9[0] = v6;
  v9[1] = v6;
  v8[1] = v6;
  v8[2] = v6;
  v8[0] = v6;
  if (CBB_add_asn1(a1, v11, 0x20000010u) && CBB_add_asn1(v11, v10, 0x20000010u) && CBB_add_asn1(v10, v9, 6u) && CBB_add_bytes(v9, &unk_1F1CAFC04, 7uLL) && EC_KEY_marshal_curve_name(v10, v4) && CBB_add_asn1(v11, v8, 3u) && CBB_add_u8(v8, 0) && EC_POINT_point2cbb(v8, v4, v5, POINT_CONVERSION_UNCOMPRESSED, 0) && CBB_flush(a1))
  {
    return 1;
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 85);
  return 0;
}

uint64_t eckey_pub_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = EC_KEY_get0_group(v3);
  v5 = EC_KEY_get0_public_key(v2);
  v6 = EC_KEY_get0_public_key(v3);
  v7 = EC_POINT_cmp(v4, v5, v6, 0);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -2;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t eckey_priv_decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = EC_KEY_parse_parameters(a2);
  if (!v6 || *(a2 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 138);
    return 0;
  }

  v8 = EC_KEY_parse_private_key(a3, v6);
  if (!v8 || *(a3 + 8))
  {
    ERR_put_error(6, 0, 102, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 144);
    EC_KEY_free(v8);
    return 0;
  }

  evp_pkey_set_method(a1, &ec_asn1_meth);
  *(a1 + 8) = v8;
  return 1;
}

uint64_t eckey_priv_encode(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  enc_flags = EC_KEY_get_enc_flags(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[1] = v5;
  v11[2] = v5;
  v11[0] = v5;
  v10[1] = v5;
  v10[2] = v5;
  v9[2] = v5;
  v10[0] = v5;
  v9[0] = v5;
  v9[1] = v5;
  v8[1] = v5;
  v8[2] = v5;
  v8[0] = v5;
  if (CBB_add_asn1(a1, v11, 0x20000010u))
  {
    if (CBB_add_asn1_uint64(v11, 0))
    {
      if (CBB_add_asn1(v11, v10, 0x20000010u))
      {
        if (CBB_add_asn1(v10, v9, 6u))
        {
          if (CBB_add_bytes(v9, &unk_1F1CAFC04, 7uLL))
          {
            v6 = EC_KEY_get0_group(v3);
            if (EC_KEY_marshal_curve_name(v10, v6))
            {
              if (CBB_add_asn1(v11, v8, 4u) && EC_KEY_marshal_private_key(v8, v3, enc_flags | 1u) && CBB_flush(a1))
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  ERR_put_error(6, 0, 105, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/evp/p_ec_asn1.c", 173);
  return 0;
}