ssize_t sock_comm_flush(uint64_t a1)
{
  v2 = *(a1 + 1296);
  v3 = *(a1 + 1304) - v2;
  v4 = *(a1 + 1288) & v2;
  v5 = *(a1 + 1280) - v4;
  if (v3 >= v5)
  {
    v6 = *(a1 + 1280) - v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = sock_comm_send_socket(*(a1 + 1232), (*(a1 + 1320) + v4), v6);
  v8 = v7;
  if (v7 >= 1)
  {
    *(a1 + 1296) += v7;
  }

  v9 = v5 < v3 && v7 == v6;
  if (v9 && (v10 = sock_comm_send_socket(*(a1 + 1232), (*(a1 + 1320) + (*(a1 + 1288) & *(a1 + 1296))), v3 - v6), v10 >= 1))
  {
    *(a1 + 1296) += v10;
  }

  else
  {
    v10 = 0;
  }

  if (v8 <= 0)
  {
    return 0;
  }

  else
  {
    return v10 + v8;
  }
}

ssize_t sock_comm_send_socket(int *a1, const void *a2, size_t a3)
{
  v4 = *a1;
  if (a3 >= 0x7FFFFFFF)
  {
    a3 = 0x7FFFFFFFLL;
  }

  v5 = send(v4, a2, a3, 0x80000);
  if (v5 < 0)
  {
    if (*__error() == 35 || *__error() == 35)
    {
      return 0;
    }

    else if (*__error() == 32)
    {
      a1[1] = 0;
    }
  }

  return v5;
}

ssize_t sock_comm_send(void *a1, char *__src, size_t a3)
{
  v3 = a3;
  if (a1[166] >= a3)
  {
    v9 = a1[160];
    v10 = v9 - a1[163] + a1[162];
    if (v10 < a3)
    {
      if (sock_comm_flush(a1) < 1)
      {
        return 0;
      }

      v9 = a1[160];
      v10 = v9 - a1[163] + a1[162];
    }

    if (v10 < v3)
    {
      v3 = v10;
    }

    v11 = a1[161] & a1[164];
    v12 = v9 - v11;
    v13 = (a1[165] + v11);
    if (v3 <= v9 - v11)
    {
      v14 = __src;
      v15 = v3;
    }

    else
    {
      memcpy(v13, __src, v12);
      v13 = a1[165];
      v14 = &__src[v12];
      v15 = v3 - v12;
    }

    memcpy(v13, v14, v15);
    v16 = a1[164] + v3;
    a1[164] = v16;
    a1[163] = v16;
    return v3;
  }

  v6 = a1[163] - a1[162];
  if (v6 != sock_comm_flush(a1))
  {
    return 0;
  }

  v7 = a1[154];

  return sock_comm_send_socket(v7, __src, v3);
}

ssize_t sock_comm_recv(uint64_t a1, char *a2, size_t a3)
{
  v3 = a3;
  v6 = *(a1 + 1304);
  v7 = (a1 + 1296);
  v8 = *(a1 + 1296);
  if (v6 != v8)
  {
LABEL_19:
    v18 = v6 - v8;
    if (v18 < v3)
    {
      v3 = v18;
    }

    v19 = *(a1 + 1288) & v8;
    v20 = *(a1 + 1280) - v19;
    v21 = (*(a1 + 1320) + v19);
    if (v3 <= v20)
    {
      v22 = a2;
      v23 = v3;
    }

    else
    {
      memcpy(a2, v21, *(a1 + 1280) - v19);
      v21 = *(a1 + 1320);
      v22 = &a2[v20];
      v23 = v3 - v20;
    }

    memcpy(v22, v21, v23);
    *v7 += v3;
    return v3;
  }

  if (*(a1 + 1328) >= a3)
  {
    v12 = *(a1 + 1280);
    *(a1 + 1304) = 0;
    *(a1 + 1312) = 0;
    *v7 = 0;
    v13 = *(a1 + 1208);
    if (!v13)
    {
      v13 = *(a1 + 1192) - *(a1 + 1184);
    }

    v14 = *(a1 + 1232);
    if (v13 < v12)
    {
      v12 = v13;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v15 = 0x7FFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = recv(*v14, *(a1 + 1320), v15, 0);
    if (v16)
    {
      v17 = v16 & ~(v16 >> 63);
    }

    else
    {
      v17 = 0;
      v14[1] = 0;
    }

    v6 = *(a1 + 1312) + v17;
    *(a1 + 1312) = v6;
    *(a1 + 1304) = v6;
    v8 = *(a1 + 1296);
    goto LABEL_19;
  }

  v9 = *(a1 + 1232);
  if (a3 >= 0x7FFFFFFF)
  {
    a3 = 0x7FFFFFFFLL;
  }

  v10 = recv(*v9, a2, a3, 0);
  if (v10)
  {
    return v10 & ~(v10 >> 63);
  }

  v3 = 0;
  v9[1] = 0;
  return v3;
}

ssize_t sock_comm_peek(int *a1, void *a2, size_t a3)
{
  v4 = *a1;
  if (a3 >= 0x7FFFFFFF)
  {
    a3 = 0x7FFFFFFFLL;
  }

  result = recv(v4, a2, a3, 2);
  if (result)
  {
    return result & ~(result >> 63);
  }

  a1[1] = 0;
  return result;
}

char *sock_comm_discard(uint64_t a1, size_t size)
{
  result = malloc_type_malloc(size, 0xD7763DFuLL);
  if (result)
  {
    v5 = result;
    v6 = sock_comm_recv(a1, result, size);
    free(v5);
    return v6;
  }

  return result;
}

uint64_t sock_domain(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  if (!a2 || !*(a2 + 12))
  {
    sock_domain_cold_1();
  }

  v8 = malloc_type_calloc(1uLL, 0x368uLL, 0x10F0040B414259CuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  pthread_mutex_init((v8 + 168), 0);
  v9[58] = 0;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *(a2 + 14);
  *(v9 + 6) = a2[6];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  *(v9 + 2) = a2[2];
  *(v9 + 3) = v15;
  *v9 = v13;
  *(v9 + 1) = v14;
  *(v9 + 14) = v12;
  *(v9 + 4) = v10;
  *(v9 + 5) = v11;
  *(v9 + 12) = 0;
  *(v9 + 15) = 2;
  *(v9 + 16) = a4;
  *(v9 + 17) = &sock_dom_fi_ops;
  *(v9 + 18) = &sock_dom_ops;
  *(v9 + 19) = &sock_dom_mr_ops;
  v16 = *(*(a2 + 12) + 24);
  if (v16 <= 1)
  {
    v16 = 1;
  }

  v9[62] = v16;
  v17 = sock_pe_init(v9);
  *(v9 + 36) = v17;
  if (!v17)
  {
    if (fi_log_enabled(&sock_prov, 0, 2))
    {
      v29 = *__error();
      fi_log(&sock_prov, 0, 2, "sock_domain", 182, "Failed to init PE\n");
      *__error() = v29;
    }

    goto LABEL_15;
  }

  *(v9 + 20) = a1;
  *a3 = v9 + 30;
  v18 = *(a2 + 12);
  *(v9 + 78) = *v18;
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[4];
  *(v9 + 90) = v18[3];
  *(v9 + 94) = v21;
  *(v9 + 82) = v19;
  *(v9 + 86) = v20;
  v22 = v18[5];
  v23 = v18[6];
  v24 = v18[8];
  *(v9 + 106) = v18[7];
  *(v9 + 110) = v24;
  *(v9 + 98) = v22;
  *(v9 + 102) = v23;
  v25 = v18[9];
  v26 = v18[10];
  v27 = v18[12];
  *(v9 + 122) = v18[11];
  *(v9 + 126) = v27;
  *(v9 + 114) = v25;
  *(v9 + 118) = v26;
  if (ofi_mr_map_init(&sock_prov, v9[87], (v9 + 64)) || sock_conn_start_listener_thread((v9 + 130)))
  {
LABEL_11:
    sock_pe_finalize(*(v9 + 36));
LABEL_15:
    pthread_mutex_destroy((v9 + 42));
    free(v9);
    return 4294967274;
  }

  if (sock_ep_cm_start_thread((v9 + 172)))
  {
    sock_conn_stop_listener_thread((v9 + 130));
    goto LABEL_11;
  }

  sock_dom_add_to_list(v9);
  return 0;
}

uint64_t sock_dom_close(uint64_t a1)
{
  if (atomic_load((a1 + 112)))
  {
    return 4294967280;
  }

  v4 = (a1 - 120);
  sock_conn_stop_listener_thread(a1 + 400);
  sock_ep_cm_stop_thread(a1 + 568);
  sock_pe_finalize(*(a1 + 168));
  pthread_mutex_destroy((a1 + 48));
  ofi_mr_map_close(a1 + 136);
  sock_dom_remove_from_list(v4);
  free(v4);
  return 0;
}

uint64_t sock_dom_bind(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {
    return 4294967274;
  }

  result = 0;
  *(a1 + 120) = a2;
  return result;
}

uint64_t sock_dom_ctrl(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 11)
  {
    return sock_queue_work(a1 - 120, a3);
  }

  else
  {
    return 4294967218;
  }
}

uint64_t sock_endpoint(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = **(a2 + 88);
  switch(v4)
  {
    case 1:
      return sock_msg_ep(a1, a2, a3, a4);
    case 2:
      return sock_dgram_ep(a1, a2, a3, a4);
    case 3:
      return sock_rdm_ep(a1, a2, a3, a4);
  }

  return 4294967254;
}

uint64_t sock_scalable_ep(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = **(a2 + 88);
  switch(v4)
  {
    case 1:
      return sock_msg_sep(a1, a2, a3, a4);
    case 2:
      return sock_dgram_sep(a1, a2, a3, a4);
    case 3:
      return sock_rdm_sep(a1, a2, a3, a4);
  }

  return 4294967254;
}

uint64_t sock_ep_rma_readmsg(void *a1, uint64_t a2, unint64_t a3)
{
  v27 = 0;
  v28 = 0;
  __src = 0;
  v26 = 0;
  v24 = 0;
  if (*a1 == 7)
  {
    v8 = a1 + 53;
    v6 = a1[39];
    v7 = a1;
LABEL_7:
    if (!*(v7 + 202))
    {
      return -258;
    }

    v9 = *v8;
    LODWORD(result) = sock_ep_get_conn(v6, v7, *(a2 + 24), &v24);
    if (result)
    {
      return result;
    }

    v12 = v9 & ((4 * a3) >> 63);
    v13 = ~(2 * a3) & 0x8000000 | a3;
    v14 = v13 | v12;
    if (((v13 | v12) & 0x100000) == 0 || (result = sock_queue_rma_op(a1, a2, v13 | v12, 4), result == 1))
    {
      v15 = 24 * (*(a2 + 40) + *(a2 + 16)) + 56;
      sock_tx_ctx_start(v7);
      if (*(v7 + 88) - *(v7 + 112) + *(v7 + 104) >= v15)
      {
        v28 = 6;
        v16 = *(a2 + 48);
        BYTE1(v28) = *(a2 + 40);
        v17 = *(a2 + 24);
        BYTE2(v28) = *(a2 + 16);
        sock_tx_ctx_write_op_send(v7, &v28, v14, v16, v17, **a2, v6, v24);
        if (*(a2 + 40))
        {
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = (*(a2 + 32) + v18);
            __src = *v20;
            v27 = v20[2];
            v26 = v20[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v19;
            v18 += 24;
          }

          while (v19 < *(a2 + 40));
        }

        if (*(a2 + 16))
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = (*a2 + v21);
            __src = *v23;
            v26 = v23[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v22;
            v21 += 16;
          }

          while (v22 < *(a2 + 16));
        }

        sock_tx_ctx_commit(v7);
        return 0;
      }

      else
      {
        sock_tx_ctx_abort(v7);
        return -35;
      }
    }

    return result;
  }

  if (*a1 == 3)
  {
    v6 = a1[28];
    v7 = *(v6 + 72);
    if (*(v7 + 204))
    {
      v7 = *(v7 + 304);
    }

    v8 = a1 + 12;
    goto LABEL_7;
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v11 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_ep_rma_readmsg", 93, "Invalid EP type\n");
    *__error() = v11;
  }

  return -22;
}

uint64_t sock_ep_rma_writemsg(void *a1, void *a2, unint64_t a3)
{
  v34 = 0;
  v35 = 0;
  __src = 0;
  v33 = 0;
  v31 = 0;
  if (*a1 == 7)
  {
    v8 = a1 + 53;
    v6 = a1[39];
    v7 = a1;
  }

  else
  {
    if (*a1 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v11 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_ep_rma_writemsg", 255, "Invalid EP type\n");
        *__error() = v11;
      }

      return -22;
    }

    v6 = a1[28];
    v7 = *(v6 + 72);
    if (*(v7 + 204))
    {
      v7 = *(v7 + 304);
    }

    v8 = a1 + 12;
  }

  if (!*(v7 + 202))
  {
    return -258;
  }

  v9 = *v8;
  LODWORD(result) = sock_ep_get_conn(v6, v7, a2[3], &v31);
  if (result)
  {
    return result;
  }

  v12 = v9 & ((4 * a3) >> 63);
  v13 = ~(2 * a3) & 0x8000000 | a3;
  v14 = v13 | v12;
  if (((v13 | v12) & 0x100000) == 0 || (result = sock_queue_rma_op(a1, a2, v13 | v12, 5), result == 1))
  {
    v35 = 3;
    v15 = a2[5];
    *(&v35 + 2) = v15;
    v16 = a2[2];
    if ((v14 & 0x2000000) == 0)
    {
      v17 = 24 * v16;
      v18 = a2[2];
      goto LABEL_25;
    }

    v18 = 0;
    if (!v16)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v19 = (*a2 + 8);
    do
    {
      v20 = *v19;
      v19 += 2;
      v18 += v20;
      --v16;
    }

    while (v16);
    v17 = v18;
    if (v18 <= 0xFF)
    {
LABEL_25:
      BYTE1(v35) = v18;
      v21 = v17 + 24 * v15 + 56;
      sock_tx_ctx_start(v7);
      if (*(v7 + 88) - *(v7 + 112) + *(v7 + 104) >= v21)
      {
        sock_tx_ctx_write_op_send(v7, &v35, v14, a2[6], a2[3], **a2, v6, v31);
        if ((v14 & 0x20000) != 0)
        {
          sock_tx_ctx_write(v7, a2 + 56, 8uLL);
        }

        v22 = a2[2];
        if ((v14 & 0x2000000) != 0)
        {
          if (v22)
          {
            v26 = 0;
            v27 = 0;
            do
            {
              sock_tx_ctx_write(v7, *(*a2 + v26), *(*a2 + v26 + 8));
              ++v27;
              v26 += 16;
            }

            while (v27 < a2[2]);
          }
        }

        else if (v22)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v25 = (*a2 + v23);
            __src = *v25;
            v33 = v25[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v24;
            v23 += 16;
          }

          while (v24 < a2[2]);
        }

        if (a2[5])
        {
          v28 = 0;
          v29 = 0;
          do
          {
            v30 = (a2[4] + v28);
            __src = *v30;
            v34 = v30[2];
            v33 = v30[1];
            sock_tx_ctx_write(v7, &__src, 0x18uLL);
            ++v29;
            v28 += 24;
          }

          while (v29 < a2[5]);
        }

        sock_tx_ctx_commit(v7);
        return 0;
      }

      else
      {
        sock_tx_ctx_abort(v7);
        return -35;
      }
    }

    return -22;
  }

  return result;
}

uint64_t sock_ep_rma_read(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a3;
  v12 = a4;
  v10[2] = a7;
  v11[0] = a2;
  v10[0] = a6;
  v10[1] = a3;
  v9[0] = v11;
  v9[1] = &v12;
  v9[2] = 1;
  v9[3] = a5;
  v9[4] = v10;
  v9[5] = 1;
  v9[6] = a8;
  v9[7] = 0;
  return sock_ep_rma_readmsg(a1, v9, 0x2000000000000000uLL);
}

uint64_t sock_ep_rma_readv(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v14[1] = v8;
  v14[2] = a7;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v14;
  v13[5] = 1;
  v13[6] = a8;
  v13[7] = 0;
  return sock_ep_rma_readmsg(a1, v13, 0x2000000000000000uLL);
}

uint64_t sock_ep_rma_write(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a3;
  v12 = a4;
  v10[2] = a7;
  v11[0] = a2;
  v10[0] = a6;
  v10[1] = a3;
  v9[0] = v11;
  v9[1] = &v12;
  v9[2] = 1;
  v9[3] = a5;
  v9[4] = v10;
  v9[5] = 1;
  v9[6] = a8;
  v9[7] = 0;
  return sock_ep_rma_writemsg(a1, v9, 0x2000000000000000uLL);
}

uint64_t sock_ep_rma_writev(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a6;
  v8 = 0;
  if (a4)
  {
    v9 = (a2 + 8);
    v10 = a4;
    do
    {
      v11 = *v9;
      v9 += 2;
      v8 += v11;
      --v10;
    }

    while (v10);
  }

  v14[1] = v8;
  v14[2] = a7;
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = v14;
  v13[5] = 1;
  v13[6] = a8;
  v13[7] = 0;
  return sock_ep_rma_writemsg(a1, v13, 0x2000000000000000uLL);
}

uint64_t sock_ep_rma_inject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a2;
  v9[1] = a3;
  v8[0] = a5;
  v8[1] = a3;
  v8[2] = a6;
  v7[0] = v9;
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = a4;
  v7[4] = v8;
  v7[5] = 1;
  v7[6] = 0;
  v7[7] = 0;
  return sock_ep_rma_writemsg(a1, v7, 0x3000000002000000uLL);
}

uint64_t sock_ep_rma_writedata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[1] = a3;
  v13 = a4;
  v11[2] = a8;
  v12[0] = a2;
  v11[0] = a7;
  v11[1] = a3;
  v10[0] = v12;
  v10[1] = &v13;
  v10[2] = 1;
  v10[3] = a6;
  v10[4] = v11;
  v10[5] = 1;
  v10[6] = a9;
  v10[7] = a5;
  return sock_ep_rma_writemsg(a1, v10, 0x2000000000020000uLL);
}

uint64_t sock_ep_rma_injectdata(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a2;
  v10[1] = a3;
  v9[0] = a6;
  v9[1] = a3;
  v9[2] = a7;
  v8[0] = v10;
  v8[1] = 0;
  v8[2] = 1;
  v8[3] = a5;
  v8[4] = v9;
  v8[5] = 1;
  v8[6] = 0;
  v8[7] = a4;
  return sock_ep_rma_writemsg(a1, v8, 0x3000000002020000uLL);
}

uint64_t sock_rx_peek_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v25 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((a1 + 352));
  if ((*(a1 + 424) & 0x800000000000000) != 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = -1;
  }

  buffered_entry = sock_rx_get_buffered_entry(a1, v14, a3, a4, a7);
  bzero(v21, 0x538uLL);
  v24 = a1 + 136;
  v21[141] = a5;
  v16 = 1034;
  if (!a7)
  {
    v16 = 1026;
  }

  v21[140] = v16 | a6;
  if (buffered_entry)
  {
    v23 = buffered_entry[3];
    v22 = *(buffered_entry + 7);
    buffered_entry[5] = a5;
    if ((a6 & 0x800000000000000) != 0)
    {
      *(buffered_entry + 10) = 1;
    }

    if ((a6 & 0x400000000000000) != 0)
    {
      v17 = buffered_entry[35];
      v18 = buffered_entry[36];
      *v18 = v17;
      *(v17 + 8) = v18;
      sock_rx_release_entry(buffered_entry);
    }

    sock_pe_report_recv_completion(v21);
  }

  else
  {
    sock_cq_report_error(*(a1 + 152), v21, 0, 0x5Bu, 0xFFFFFFA5, 0, 0);
  }

  pthread_mutex_unlock((a1 + 352));
  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sock_pe_report_recv_completion(uint64_t result)
{
  if (!*(result + 1173))
  {
    v1 = result;
    if ((*(result + 1127) & 0x40) != 0)
    {
      result = (*(*(*(*(result + 1128) + 24) + 24) + 24))();
    }

    else
    {
      sock_pe_report_recv_cq_completion(result);
      result = *(*(v1 + 1240) + 32);
      if (result)
      {
        result = sock_cntr_inc(result);
      }
    }

    *(v1 + 1173) = 1;
  }

  return result;
}

uint64_t sock_rx_claim_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, unint64_t a8)
{
  v37 = *MEMORY[0x29EDCA608];
  memset(v29, 0, 512);
  pthread_mutex_lock((a1 + 352));
  v15 = (a1 + 320);
  v16 = *(a1 + 320);
  if (v16 == (a1 + 320))
  {
LABEL_7:
    v18 = -91;
  }

  else
  {
    while (1)
    {
      if (*(v16 - 270))
      {
        if (*(v16 - 30) == a2 && *(v16 - 268) == a6)
        {
          v17 = *(v16 - 27);
          if (((v17 ^ a4) & ~a5) == 0)
          {
            break;
          }
        }
      }

      v16 = *v16;
      if (v16 == v15)
      {
        goto LABEL_7;
      }
    }

    bzero(v29, 0x538uLL);
    v36 = a1 + 136;
    v21 = *(v16 - 32);
    v35 = v21;
    v33 = v17;
    v31 = a2;
    v30 = a3 | 0x402;
    v32 = *(v16 - 29);
    if (a6)
    {
      v30 = a3 | 0x40A;
    }

    if ((a3 & 0x400000000000000) != 0)
    {
      goto LABEL_22;
    }

    v34 = *a7;
    if (a8 && v21)
    {
      v22 = 0;
      v23 = a7 + 1;
      v24 = 1;
      do
      {
        if (*v23 >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = *v23;
        }

        memcpy(*(v23 - 1), (*(v16 - 24) + v22), v25);
        v21 -= v25;
        if (v24 >= a8)
        {
          break;
        }

        v22 += v25;
        ++v24;
        v23 += 2;
      }

      while (v21);
    }

    if (!v21)
    {
LABEL_22:
      sock_pe_report_recv_completion(v29);
    }

    else
    {
      sock_pe_report_rx_error(v29, v21, 0x109u);
    }

    v26 = *v16;
    v27 = v16[1];
    *v27 = *v16;
    *(v26 + 8) = v27;
    sock_rx_release_entry(v16 - 35);
    v18 = 0;
    if (*(a1 + 416) == v16)
    {
      *(a1 + 416) = v15;
    }
  }

  pthread_mutex_unlock((a1 + 352));
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t sock_pe_report_rx_error(uint64_t result, int a2, unsigned int a3)
{
  if (!*(result + 1173))
  {
    v5 = result;
    v6 = *(result + 1240);
    v7 = *(v6 + 32);
    if (v7)
    {
      v8 = *(v7 + 24);
      if (v8)
      {
        if (*v8 >= 0x31uLL)
        {
          v9 = v8[6];
          if (v9)
          {
            v9();
            v6 = *(v5 + 1240);
          }
        }
      }
    }

    result = *(v6 + 16);
    if (result)
    {
      result = sock_cq_report_error(result, v5, a2, a3, -a3, 0, 0);
    }

    *(v5 + 1173) = 1;
  }

  return result;
}

uint64_t sock_pe_signal(uint64_t result)
{
  v4 = 0;
  if (*(*result + 248) == 1)
  {
    v1 = result;
    v2 = (result + 167936);
    pthread_mutex_lock((result + 171088));
    if (v2[820] == v2[821])
    {
      if (send(v2[823], &v4, 1uLL, 0) == 1)
      {
        ++v2[820];
      }

      else if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v3 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_signal", 2303, "Failed to signal\n");
        *__error() = v3;
      }
    }

    return pthread_mutex_unlock((v1 + 171088));
  }

  return result;
}

uint64_t sock_pe_poll_add(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((a1 + 171088));
  v4 = *(a1 + 171360);
  changelist.ident = a2;
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  v9 = a2;
  v10 = 131070;
  v12 = 0;
  v11 = 0;
  v13 = 0;
  if (kevent(v4, &changelist, 2, 0, 0, 0) < 0 && *__error() && fi_log_enabled(&sock_prov, 0, 4))
  {
    v7 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_poll_add", 2314, "failed to add to epoll set: %d\n", a2);
    *__error() = v7;
  }

  result = pthread_mutex_unlock((a1 + 171088));
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ofi_epoll_add(int a1, int a2)
{
  v11 = *MEMORY[0x29EDCA608];
  changelist.ident = a2;
  *&changelist.filter = 0x1FFFF;
  memset(&changelist.fflags, 0, 20);
  v6 = a2;
  v7 = 131070;
  v9 = 0;
  v8 = 0;
  v10 = 0;
  v2 = kevent(a1, &changelist, 2, 0, 0, 0);
  result = 0;
  if (v2 < 0)
  {
    result = -*__error();
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_poll_del(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock((a1 + 171088));
  v4 = *(a1 + 171360);
  changelist.ident = a2;
  *&changelist.filter = 196607;
  memset(&changelist.fflags, 0, 20);
  v8 = a2;
  v9 = 196606;
  v11 = 0;
  v10 = 0;
  v12 = 0;
  if (kevent(v4, &changelist, 2, 0, 0, 0) < 0 && *__error() != 2)
  {
    __error();
  }

  result = pthread_mutex_unlock((a1 + 171088));
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_add_tx_ctx(uint64_t a1, void *a2)
{
  v4 = a1 + 167936;
  pthread_mutex_lock((a1 + 171152));
  v5 = (a1 + 171304);
  while (1)
  {
    v5 = *v5;
    if (v5 == (a1 + 171304))
    {
      break;
    }

    if (v5 - 43 == a2)
    {
      goto LABEL_6;
    }
  }

  v6 = *(v4 + 3376);
  v7 = *v6;
  a2[43] = *v6;
  a2[44] = v6;
  *(v7 + 8) = a2 + 43;
  *v6 = (a2 + 43);
  sock_pe_signal(a1);
LABEL_6:

  return pthread_mutex_unlock((a1 + 171152));
}

uint64_t sock_pe_add_rx_ctx(uint64_t a1, void *a2)
{
  v4 = a1 + 167936;
  pthread_mutex_lock((a1 + 171152));
  v5 = (a1 + 171320);
  while (1)
  {
    v5 = *v5;
    if (v5 == (a1 + 171320))
    {
      break;
    }

    if (v5 - 32 == a2)
    {
      goto LABEL_6;
    }
  }

  v6 = *(v4 + 3392);
  v7 = *v6;
  a2[32] = *v6;
  a2[33] = v6;
  *(v7 + 8) = a2 + 32;
  *v6 = (a2 + 32);
  sock_pe_signal(a1);
LABEL_6:

  return pthread_mutex_unlock((a1 + 171152));
}

uint64_t sock_pe_remove_tx_ctx(void *a1)
{
  pthread_mutex_lock((*(a1[42] + 288) + 171152));
  v3 = a1[43];
  v2 = a1[44];
  v4 = a1[42];
  *v2 = v3;
  *(v3 + 8) = v2;
  v5 = (*(v4 + 288) + 171152);

  return pthread_mutex_unlock(v5);
}

uint64_t sock_pe_remove_rx_ctx(void *a1)
{
  pthread_mutex_lock((*(a1[31] + 288) + 171152));
  v3 = a1[32];
  v2 = a1[33];
  v4 = a1[31];
  *v2 = v3;
  *(v3 + 8) = v2;
  v5 = (*(v4 + 288) + 171152);

  return pthread_mutex_unlock(v5);
}

uint64_t sock_pe_progress_rx_ctx(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 171024));
  pthread_mutex_lock((a2 + 352));
  sock_pe_progress_buffered_rx();
  pthread_mutex_unlock((a2 + 352));
  if (*a2 == 6)
  {
    v4 = *(a2 + 336);
    if (v4 != (a2 + 336))
    {
      while (1)
      {
        v5 = *v4;
        v6 = sock_pe_progress_rx_ep(a1, (v4 - 13), a2);
        if ((v6 & 0x80000000) != 0)
        {
          goto LABEL_14;
        }

        v4 = v5;
        if (v5 == (a2 + 336))
        {
          goto LABEL_9;
        }
      }
    }

    v6 = 0;
  }

  else
  {
    v6 = sock_pe_progress_rx_ep(a1, *(a2 + 224), a2);
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_9:
  v7 = *(a2 + 288);
  if (v7 == (a2 + 288))
  {
    goto LABEL_16;
  }

  while (1)
  {
    v8 = (v7 - 158);
    v7 = *v7;
    v9 = sock_pe_progress_rx_pe_entry(a1, v8, a2);
    if ((v9 & 0x80000000) != 0)
    {
      break;
    }

    if (v7 == (a2 + 288))
    {
      v6 = 0;
      goto LABEL_16;
    }
  }

  v6 = v9;
LABEL_14:
  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v10 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_progress_rx_ctx", 2466, "failed to progress RX ctx\n");
    *__error() = v10;
  }

LABEL_16:
  pthread_mutex_unlock((a1 + 171024));
  return v6;
}

void sock_pe_progress_buffered_rx()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v76 = *MEMORY[0x29EDCA608];
  if (v0[38] != v0 + 38)
  {
    v2 = v0;
    v3 = v0 + 40;
    v4 = v0[40];
    if (v4 != v0 + 40)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      memset(v35, 0, sizeof(v35));
      if (v1)
      {
        v4 = v0[52];
        if (v4 == v3)
        {
          v4 = *v4;
        }

        v5 = 10;
      }

      else
      {
        v5 = -1;
      }

      if (v4 != v3)
      {
        v6 = 0;
        v32 = v5;
        v33 = v0 + 40;
        v34 = v0;
        while (1)
        {
          v7 = *v4;
          if (*(v4 - 269))
          {
            if (!*(v4 - 270))
            {
              entry = sock_rx_get_entry(v2, *(v4 - 29), *(v4 - 27), *(v4 - 268));
              if (entry)
              {
                break;
              }
            }
          }

LABEL_49:
          if (++v6 < v5)
          {
            v4 = v7;
            if (v7 != v3)
            {
              continue;
            }
          }

          goto LABEL_53;
        }

        v9 = entry;
        if ((*(v4 - 31) & 0x10) != 0)
        {
          v10 = ofi_datatype_size(*(v4 - 276));
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v4 - 23);
        *(v2 + 112) -= v11;
        v12 = v9[2];
        bzero(v35, 0x538uLL);
        v13 = *(v9 + 2);
        if (v13)
        {
          v14 = v11 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v6 = 0;
          v15 = 0;
        }

        else
        {
          v15 = 0;
          v6 = 0;
          v16 = v9 + 11;
          do
          {
            v17 = v16[1];
            if (v12 >= v17)
            {
              v12 -= v17;
            }

            else
            {
              if (v17 >= v11)
              {
                v18 = v11;
              }

              else
              {
                v18 = v16[1];
              }

              v70 = *v16 + v12;
              v19 = *(v4 - 24);
              v20 = *v16;
              if (v10)
              {
                v21 = *(v4 - 276);
                v22 = *(v4 - 277);
                v23 = (v22 - 12);
                if (v23 > 6)
                {
                  if (v22 <= 0xB && v22 != 10)
                  {
                    (*(&ofi_atomic_write_handlers[16 * v22] + v21))(v20 + v12, v19 + v15, v18 / v10);
                  }
                }

                else
                {
                  (*(&ofi_atomic_swap_handlers[16 * v23] + v21))(v20 + v12, v19 + v15, 0, v75, v18 / v10);
                }
              }

              else
              {
                memcpy((v20 + v12), (v19 + v15), v18);
              }

              v12 = 0;
              v15 += v18;
              v11 -= v18;
              v9[2] += v18;
              v73 = *(v4 - 33);
              v13 = *(v9 + 2);
            }

            if (++v6 >= v13)
            {
              break;
            }

            v16 += 3;
          }

          while (v11);
        }

        v72 = v15;
        v69 = *(v4 - 14);
        v67 = v9[5];
        *&v36 = v9[11];
        v71 = 0;
        v74 = *(v4 - 25);
        v24 = v9[4];
        v68 = *(v4 - 29);
        v2 = v34;
        v25 = 1034;
        if (!*(v4 - 268))
        {
          v25 = 1026;
        }

        v26 = v24 | v25;
        v66 = v26 & 0xFFFFFFFFFFFEFFFFLL;
        v5 = v32;
        if ((v24 & 0x10000) != 0)
        {
          if (v9[3] - v9[2] >= v34[15])
          {
LABEL_43:
            if (v11)
            {
              sock_pe_report_rx_error(v35, v11, 0x109u);
            }

            else
            {
              sock_pe_report_recv_completion(v35);
            }

            v3 = v33;
            *(v9 + 9) = 0;
            v29 = *v4;
            v30 = v4[1];
            *v30 = *v4;
            *(v29 + 8) = v30;
            sock_rx_release_entry(v4 - 35);
            if ((*(v9 + 34) & 1) == 0 || (v66 & 0x10000) != 0)
            {
              sock_rx_release_entry(v9);
              ++v34[13];
            }

            goto LABEL_49;
          }

          v66 = v26;
        }

        v27 = v9[35];
        v28 = v9[36];
        *v28 = v27;
        *(v27 + 8) = v28;
        goto LABEL_43;
      }

      v7 = v4;
LABEL_53:
      *(v2 + 416) = v7;
    }
  }

  v31 = *MEMORY[0x29EDCA608];
}

uint64_t sock_pe_progress_rx_ep(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 12868);
  if (v3)
  {
    v7 = *(a2 + 12864);
    if (v7 < v3)
    {
      v8 = malloc_type_realloc(*(a2 + 12856), v3 << 6, 0x108004019856BD9uLL);
      if (v8)
      {
        v7 = 2 * v3;
        *(a2 + 12856) = v8;
        *(a2 + 12864) = 2 * v3;
      }

      else
      {
        v7 = *(a2 + 12864);
      }
    }

    v9 = *(a2 + 12848);
    v10 = *(a2 + 12856);
    if (*(a2 + 12868) >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(a2 + 12868);
    }

    timeout.tv_sec = 0;
    timeout.tv_nsec = 0;
    v3 = kevent(v9, 0, 0, v10, v11, &timeout);
    if ((v3 & 0x80000000) != 0)
    {
      v3 = -*__error();
    }

    if (v3 > 0)
    {
      pthread_mutex_lock((a2 + 12880));
      v12 = v3;
      v13 = 24;
      do
      {
        v14 = *(*(a2 + 12856) + v13);
        if (v14)
        {
          if (!*(v14 + 64))
          {
            v15 = sock_pe_acquire_entry(a1);
            if (v15)
            {
              *(v15 + 13) = 0u;
              *(v15 + 14) = 0u;
              *(v15 + 11) = 0u;
              *(v15 + 12) = 0u;
              *(v15 + 9) = 0u;
              *(v15 + 10) = 0u;
              *(v15 + 7) = 0u;
              *(v15 + 8) = 0u;
              *(v15 + 5) = 0u;
              *(v15 + 6) = 0u;
              *(v15 + 3) = 0u;
              *(v15 + 4) = 0u;
              *(v15 + 1) = 0u;
              *(v15 + 2) = 0u;
              *v15 = 0u;
              v15[154] = v14;
              *(v15 + 584) = 0;
              v15[153] = a2;
              v15[148] = 0;
              *(v15 + 1173) = 0;
              if (*(a2 + 352) == 1 || !*(a2 + 48))
              {
                v16 = -1;
              }

              else
              {
                v16 = *(v14 + 88);
              }

              v15[142] = v16;
              v18 = a3;
              if (*a3 == 6)
              {
                v18 = *(a2 + 64);
              }

              v15[155] = (v18 + 17);
              v19 = a3[37];
              v20 = *v19;
              v15[158] = *v19;
              v15[159] = v19;
              *(v20 + 8) = v15 + 158;
              *v19 = (v15 + 158);
            }
          }
        }

        else if (fi_log_enabled(&sock_prov, 0, 4))
        {
          v17 = *__error();
          fi_log(&sock_prov, 0, 4, "sock_pe_progress_rx_ep", 2414, "ofi_idm_lookup failed\n");
          *__error() = v17;
        }

        v13 += 32;
        --v12;
      }

      while (v12);
      pthread_mutex_unlock((a2 + 12880));
      return 0;
    }

    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (fi_log_enabled(&sock_prov, 0, 4))
    {
      v22 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_pe_progress_rx_ep", 2406, "epoll failed: %d\n", v3);
      *__error() = v22;
    }
  }

  return v3;
}

uint64_t sock_pe_progress_rx_pe_entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sock_comm_is_disconnected(a2))
  {
    ofi_straddr_log_internal("sock_pe_progress_rx_pe_entry", 2040, 0, &sock_prov, 0, 4, "Peer disconnected: removing fd from pollset", *(a2 + 1232) + 16);
    pthread_mutex_lock((*(a2 + 1224) + 12880));
    sock_ep_remove_conn(*(a2 + 1224), *(a2 + 1232));
    pthread_mutex_unlock((*(a2 + 1224) + 12880));
    if (*(a2 + 16))
    {
      sock_pe_report_rx_error(a2, 0, 5u);
    }

    goto LABEL_4;
  }

  if (*(a2 + 17))
  {
    sock_pe_progress_pending_ack(a2);
    goto LABEL_10;
  }

  if (*(a2 + 1170))
  {
    goto LABEL_10;
  }

  if (!*(a2 + 16))
  {
    if (sock_pe_read_hdr(a3, a2) == -1)
    {
LABEL_4:
      sock_pe_release_entry(a1, a2);
      return 0;
    }

    if (!*(a2 + 16))
    {
LABEL_10:
      if (*(a2 + 1170))
      {
        v8 = *(a2 + 1208);
        if (v8)
        {
          v9 = *(a2 + 1208) - sock_comm_discard(a2, v8);
          *(a2 + 1208) = v9;
          if (v9)
          {
            goto LABEL_16;
          }

          *(*(a2 + 1232) + 64) = 0;
        }

        if (*(a2 + 1184) == *(a2 + 1192))
        {
          *(a2 + 1169) = 1;
        }
      }

LABEL_16:
      if (!*(a2 + 1169) || *(a2 + 17))
      {
        return 0;
      }

      goto LABEL_4;
    }
  }

  if (*(a2 + 1056) == 2)
  {
    v10 = *(a2 + 1057);
    if (v10 <= 6)
    {
      if (*(a2 + 1057) <= 3u)
      {
        if (v10 >= 2)
        {
          if (v10 != 2)
          {
            v11 = *(a2 + 1184);
            if ((*(a2 + 1066) & 2) != 0)
            {
              if (v11 <= 0x1F)
              {
                v86 = 32 - v11;
                v87 = sock_comm_recv(a2, (a2 + v11 + 1120), 32 - v11);
                if (v87 < 1)
                {
                  goto LABEL_10;
                }

                v11 = *(a2 + 1184) + v87;
                *(a2 + 1184) = v11;
                if (v87 != v86)
                {
                  goto LABEL_10;
                }
              }

              v12 = 32;
            }

            else
            {
              v12 = 24;
            }

            LODWORD(v88) = *(a2 + 1059);
            v89 = (a2 + 32);
            v90 = v12 + 24 * *(a2 + 1059);
            if (v11 < v90)
            {
              v91 = v11 - v12;
              v92 = 24 * *(a2 + 1059) - v91;
              v93 = sock_comm_recv(a2, v89 + v91, v92);
              if (v93 < 1)
              {
                goto LABEL_10;
              }

              *(a2 + 1184) += v93;
              if (v93 != v92)
              {
                goto LABEL_10;
              }

              LODWORD(v88) = *(a2 + 1059);
            }

            if (v88 && !*(a2 + 1171))
            {
              v148 = 0;
              while (sock_mr_verify_key(*(a3 + 248), v89[2], v89, v89[1], 0x2000))
              {
                ++v148;
                v88 = *(a2 + 1059);
                if (v148 < v88)
                {
                  v89 += 3;
                  if (!*(a2 + 1171))
                  {
                    continue;
                  }
                }

                goto LABEL_157;
              }

              if (fi_log_enabled(&sock_prov, 0, 4))
              {
                v153 = *__error();
                fi_log(&sock_prov, 0, 4, "sock_pe_process_rx_write", 811, "Remote memory access error: %p, %zu, %llu\n", *v89, v89[1], v89[2]);
                *__error() = v153;
              }

              *(a2 + 1170) = 1;
              *(a2 + 1208) = *(a2 + 1192) - *(a2 + 1184);
              v143 = a1;
              v144 = a2;
              v145 = 0;
              v146 = 5;
LABEL_274:
              v152 = 13;
              goto LABEL_268;
            }

LABEL_157:
            v94 = 1;
            *(a2 + 1171) = 1;
            v95 = *(a2 + 1072);
            v96 = v95 - v90;
            if (v95 != v90)
            {
              v97 = (a2 + 40);
              v98 = -1;
              while (1)
              {
                v88 = *(a2 + 1059);
                if (++v98 >= v88)
                {
                  break;
                }

                v99 = *v97;
                v100 = *(a2 + 1184);
                if (v100 >= *v97 + v90)
                {
                  v90 += *v97;
                }

                else
                {
                  v101 = v100 - v90;
                  v102 = v99 - v101;
                  v103 = sock_comm_recv(a2, (*(v97 - 1) + v101), v99 - v101);
                  if (v103 < 1)
                  {
                    goto LABEL_10;
                  }

                  *(a2 + 1184) += v103;
                  if (v103 != v102)
                  {
                    goto LABEL_10;
                  }

                  v99 = *v97;
                  v90 += *v97;
                }

                v97 += 3;
                v96 -= v99;
                if (!v96)
                {
                  LODWORD(v88) = *(a2 + 1059);
                  v94 = 1;
                  goto LABEL_256;
                }
              }

              v94 = 0;
            }

LABEL_256:
            *(a2 + 1160) = *(a2 + 32);
            *(a2 + 1200) = 0;
            if (v88)
            {
              v149 = 0;
              v150 = ofi_pmem_commit;
              v151 = (a2 + 40);
              do
              {
                *(a2 + 1200) += *v151;
                if ((*(a2 + 1067) & 0x40) != 0 && v150)
                {
                  v150(*(v151 - 1));
                  v150 = ofi_pmem_commit;
                  LODWORD(v88) = *(a2 + 1059);
                }

                ++v149;
                v151 += 3;
              }

              while (v149 < v88);
            }

            if ((v94 & 1) == 0)
            {
              sock_pe_report_rx_error(a2, v96, 0x109u);
            }

            *(a2 + 1120) |= 0x2004uLL;
            if (!*(a2 + 1173))
            {
              sock_pe_report_remote_write(a2);
              sock_pe_report_mr_completion(*(a3 + 248), a2);
              *(a2 + 1173) = 1;
            }

            v143 = a1;
            v144 = a2;
            v145 = 0;
            v146 = 4;
LABEL_267:
            v152 = 0;
LABEL_268:
            sock_pe_send_response(v143, v144, v145, v146, v152);
            goto LABEL_10;
          }

          v52 = *(a2 + 1184);
          v53 = (a2 + 1104);
          if (v52 < 0x28)
          {
            v81 = 40 - v52;
            v82 = sock_comm_recv(a2, &v53[v52 - 24], 40 - v52);
            if (v82 < 1)
            {
              goto LABEL_10;
            }

            *(a2 + 1184) += v82;
            if (v82 != v81)
            {
              goto LABEL_10;
            }

            v54 = bswap32(*(a2 + 1104)) >> 16;
            *(a2 + 1104) = v54;
            *(a2 + 1108) = bswap32(*(a2 + 1108));
          }

          else
          {
            v54 = *v53;
          }

          if (v54 >= 0x81)
          {
            sock_pe_progress_rx_pe_entry_cold_10();
          }

          v83 = a1 + 1336 * v54;
          if (*(v83 + 1184) != 1)
          {
            sock_pe_progress_rx_pe_entry_cold_9();
          }

          sock_pe_report_send_completion(v83 + 16);
          goto LABEL_146;
        }

        if (*(a2 + 1136) == -1)
        {
          v35 = *(a2 + 1224);
          if (*(v35 + 352) == 3)
          {
            v36 = *(v35 + 48);
            if (v36)
            {
              v37 = *(a2 + 1232);
              addr_index = *(v37 + 88);
              if (addr_index == -1)
              {
                addr_index = sock_av_get_addr_index(v36, v37 + 16);
                *(*(a2 + 1232) + 88) = addr_index;
                v10 = *(a2 + 1057);
              }

              *(a2 + 1136) = addr_index;
            }
          }
        }

        v39 = *(a2 + 1184);
        if (v10 == 1)
        {
          if (v39 <= 0x1F)
          {
            v40 = 32 - v39;
            v41 = sock_comm_recv(a2, (a2 + v39 + 1128), 32 - v39);
            if (v41 < 1)
            {
              goto LABEL_10;
            }

            v39 = *(a2 + 1184) + v41;
            *(a2 + 1184) = v39;
            if (v41 != v40)
            {
              goto LABEL_10;
            }
          }

          v42 = 32;
        }

        else
        {
          v42 = 24;
        }

        if ((*(a2 + 1066) & 2) != 0)
        {
          v51 = v42 + 8;
          if (v39 < v42 + 8)
          {
            v68 = v39 - v42;
            v69 = 8 - v68;
            v70 = sock_comm_recv(a2, (a2 + v68 + 1144), 8 - v68);
            if (v70 < 1)
            {
              goto LABEL_10;
            }

            v39 = *(a2 + 1184) + v70;
            *(a2 + 1184) = v39;
            if (v70 != v69)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          v51 = v42;
        }

        v71 = *(a2 + 1072);
        entry = *(a2 + 24);
        if (v39 != v51 || entry)
        {
LABEL_119:
          *(a2 + 1200) = v71 - v51;
          v73 = v71 - v39;
          if (v73)
          {
            v6 = 0;
            v74 = entry[2];
            v75 = entry + 11;
            v76 = -1;
            do
            {
              v77 = *(entry + 2);
              v78 = ++v76 < v77;
              if (v76 >= v77)
              {
                break;
              }

              v79 = v75[1];
              if (v74 >= v79)
              {
                v74 -= v79;
              }

              else
              {
                if (v79 - v74 >= v73)
                {
                  v6 = v73;
                }

                else
                {
                  v6 = v79 - v74;
                }

                v80 = sock_comm_recv(a2, (*v75 + v74), v6);
                if (v80 <= 0)
                {
                  v6 = v80;
                  goto LABEL_248;
                }

                if (!*(a2 + 1160))
                {
                  *(a2 + 1160) = *v75 + v74;
                }

                *(a2 + 1184) += v80;
                entry[2] += v80;
                if (v80 != v6)
                {
                  goto LABEL_10;
                }

                v74 = 0;
                v73 -= v80;
              }

              v75 += 3;
            }

            while (v73);
          }

          else
          {
            v6 = 0;
            v78 = 1;
          }

          *(a2 + 1169) = 1;
          *(entry + 11) = 1;
          v134 = entry[4];
          if (*(a2 + 1057) == 1)
          {
            v134 |= 8uLL;
          }

          *(a2 + 1120) = *(a2 + 1064) & 0x20000 | 0x402 | v134 & 0xFFFFFFFFFFFEFFFFLL;
          pthread_mutex_lock((a3 + 352));
          if (*(entry + 34))
          {
            if (entry[3] - entry[2] < *(a3 + 120))
            {
              *(a2 + 1120) |= 0x10000uLL;
LABEL_208:
              v135 = entry[35];
              v136 = entry[36];
              *v136 = v135;
              *(v135 + 8) = v136;
            }
          }

          else if (!*(entry + 8))
          {
            goto LABEL_208;
          }

          *(entry + 9) = 0;
          pthread_mutex_unlock((a3 + 352));
          if (v78)
          {
            if (!*(entry + 8))
            {
              sock_pe_report_recv_completion(a2);
            }
          }

          else
          {
            if (fi_log_enabled(&sock_prov, 0, 4))
            {
              v137 = *__error();
              fi_log(&sock_prov, 0, 4, "sock_pe_process_rx_send", 1454, "Not enough space in posted recv buffer\n");
              *__error() = v137;
            }

            sock_pe_report_rx_error(a2, v73, 0x109u);
            *(a2 + 1170) = 1;
            *(a2 + 1208) = *(a2 + 1192) - *(a2 + 1184);
          }

          if ((*(a2 + 1067) & 8) != 0)
          {
            sock_pe_send_response(a1, a2, 0, 2, 0);
          }

          if (!*(entry + 8) && ((*(entry + 34) & 1) == 0 || (*(a2 + 1122) & 1) != 0))
          {
            pthread_mutex_lock((a3 + 352));
            sock_rx_release_entry(entry);
            ++*(a3 + 104);
            pthread_mutex_unlock((a3 + 352));
          }

LABEL_248:
          if ((v6 & 0x80000000) != 0)
          {
            return v6;
          }

          goto LABEL_10;
        }

        pthread_mutex_lock((a3 + 352));
        *(a3 + 416) = a3 + 320;
        sock_pe_progress_buffered_rx();
        entry = sock_rx_get_entry(a3, *(a2 + 1136), *(a2 + 1152), *(a2 + 1057) == 1);
        if (entry)
        {
LABEL_118:
          pthread_mutex_unlock((a3 + 352));
          *(a2 + 1128) = entry[5];
          *(a2 + 24) = entry;
          v39 = *(a2 + 1184);
          goto LABEL_119;
        }

        v140 = sock_rx_new_buffered_entry(a3, v71 - v51);
        if (v140)
        {
          entry = v140;
          *(v140 + 8) = *(a2 + 1152);
          *(v140 + 3) = *(a2 + 1136);
          v141 = *(a2 + 1240);
          *(v140 + 9) = 0;
          *(v140 + 10) = v141;
          if ((*(a2 + 1066) & 2) != 0)
          {
            *(v140 + 4) |= 0x20000uLL;
          }

          if (*(a2 + 1057) == 1)
          {
            *(v140 + 12) = 1;
          }

          goto LABEL_118;
        }

        pthread_mutex_unlock((a3 + 352));
        return 4294967284;
      }

      if (v10 == 4)
      {
        v55 = *(a2 + 1184);
        v56 = (a2 + 1104);
        if (v55 < 0x28)
        {
          v84 = 40 - v55;
          v85 = sock_comm_recv(a2, &v56[v55 - 24], 40 - v55);
          if (v85 < 1)
          {
            goto LABEL_10;
          }

          *(a2 + 1184) += v85;
          if (v85 != v84)
          {
            goto LABEL_10;
          }

          v57 = bswap32(*(a2 + 1104)) >> 16;
          *(a2 + 1104) = v57;
          *(a2 + 1108) = bswap32(*(a2 + 1108));
        }

        else
        {
          v57 = *v56;
        }

        if (v57 >= 0x81)
        {
          sock_pe_progress_rx_pe_entry_cold_8();
        }

        v83 = a1 + 1336 * v57;
        if (*(v83 + 1184) != 1)
        {
          sock_pe_progress_rx_pe_entry_cold_7();
        }

        sock_pe_report_write_completion(v83 + 16);
LABEL_146:
        *(v83 + 1185) = 1;
        goto LABEL_199;
      }

      if (v10 != 5)
      {
        if (v10 == 6)
        {
          v15 = *(a2 + 1059);
          v16 = 24 * *(a2 + 1059);
          v17 = a2 + 32;
          v18 = *(a2 + 1184);
          if (v18 < v16 + 24)
          {
            v19 = v16 - (v18 - 24);
            v20 = sock_comm_recv(a2, (v17 + v18 - 24), v19);
            if (v20 < 1)
            {
              goto LABEL_10;
            }

            *(a2 + 1184) += v20;
            if (v20 != v19)
            {
              goto LABEL_10;
            }

            v15 = *(a2 + 1059);
          }

          if (v15)
          {
            v21 = 0;
            v22 = 0;
            while (!*(a2 + 1171))
            {
              if (!sock_mr_verify_key(*(a3 + 248), *(v17 + 16), v17, *(v17 + 8), 4096))
              {
                if (fi_log_enabled(&sock_prov, 0, 4))
                {
                  v147 = *__error();
                  fi_log(&sock_prov, 0, 4, "sock_pe_process_rx_read", 757, "Remote memory access error: %p, %zu, %llu\n", *v17, *(v17 + 8), *(v17 + 16));
                  *__error() = v147;
                }

                *(a2 + 1170) = 1;
                *(a2 + 1208) = *(a2 + 1192) - *(a2 + 1184);
                v143 = a1;
                v144 = a2;
                v145 = 0;
                v146 = 8;
                goto LABEL_274;
              }

              v22 += *(v17 + 8);
              ++v21;
              v17 += 24;
              if (v21 >= *(a2 + 1059))
              {
                break;
              }
            }
          }

          else
          {
            v22 = 0;
          }

          *(a2 + 1171) = 1;
          *(a2 + 1160) = *(a2 + 32);
          *(a2 + 1200) = v22;
          *(a2 + 1120) |= 0x1004uLL;
          if (!*(a2 + 1173))
          {
            *(a2 + 1200) = *(a2 + 40);
            v142 = *(*(a2 + 1240) + 56);
            if (v142)
            {
              sock_cntr_inc(v142);
            }

            *(a2 + 1173) = 1;
          }

          v143 = a1;
          v144 = a2;
          v145 = v22;
          v146 = 7;
          goto LABEL_267;
        }

        goto LABEL_100;
      }

LABEL_63:
      v32 = *(a2 + 1184);
      v33 = (a2 + 1104);
      if (v32 < 0x28)
      {
        v43 = 40 - v32;
        v44 = sock_comm_recv(a2, v33 + v32 - 24, 40 - v32);
        if (v44 < 1)
        {
          goto LABEL_10;
        }

        *(a2 + 1184) += v44;
        if (v44 != v43)
        {
          goto LABEL_10;
        }

        v34 = bswap32(*(a2 + 1104)) >> 16;
        *(a2 + 1104) = v34;
        *(a2 + 1108) = bswap32(*(a2 + 1108));
      }

      else
      {
        v34 = *v33;
      }

      if (v34 >= 0x81)
      {
        sock_pe_progress_rx_pe_entry_cold_2();
      }

      v45 = a1 + 1336 * v34 + 16;
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v46 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_handle_error", 608, "Received error for PE entry %p (index: %d)\n", v45, *v33);
        *__error() = v46;
      }

      if (*(v45 + 1168) != 1)
      {
        sock_pe_progress_rx_pe_entry_cold_1();
      }

      v47 = *(a2 + 1057);
      if (v47 == 5 || v47 == 11)
      {
        if (!*(v45 + 1173))
        {
          v48 = *(a2 + 1108);
          v49 = *(v45 + 1240);
          v50 = v49[6];
          if (!v50)
          {
LABEL_109:
            v67 = v49[1];
            if (v67)
            {
              sock_cq_report_error(v67, v45, 0, v48, -v48, 0, 0);
            }

            *(v45 + 1173) = 1;
            goto LABEL_198;
          }

LABEL_105:
          v65 = *(v50 + 24);
          if (v65)
          {
            if (*v65 >= 0x31uLL)
            {
              v66 = v65[6];
              if (v66)
              {
                v66();
                v49 = *(v45 + 1240);
              }
            }
          }

          goto LABEL_109;
        }
      }

      else
      {
        if (v47 != 8)
        {
          if (fi_log_enabled(&sock_prov, 0, 4))
          {
            v133 = *__error();
            fi_log(&sock_prov, 0, 4, "sock_pe_handle_error", 623, "Invalid op type\n");
            *__error() = v133;
          }

          goto LABEL_198;
        }

        if (!*(v45 + 1173))
        {
          v48 = *(a2 + 1108);
          v49 = *(v45 + 1240);
          v50 = v49[5];
          if (!v50)
          {
            goto LABEL_109;
          }

          goto LABEL_105;
        }
      }

LABEL_198:
      *(v45 + 1169) = 1;
      goto LABEL_199;
    }

    if (*(a2 + 1057) <= 9u)
    {
      if (v10 != 7)
      {
        if (v10 != 8)
        {
          if (v10 == 9)
          {
            if ((*(a2 + 1064) & 8) != 0)
            {
              v14 = sock_pe_process_rx_tatomic(a1, a3, a2);
            }

            else
            {
              v14 = sock_pe_process_rx_atomic();
            }

            v6 = v14;
            goto LABEL_248;
          }

          goto LABEL_100;
        }

        goto LABEL_63;
      }

      v58 = *(a2 + 1184);
      v59 = (a2 + 1104);
      if (v58 < 0x28)
      {
        v104 = 40 - v58;
        v105 = sock_comm_recv(a2, &v59[v58 - 24], 40 - v58);
        if (v105 < 1)
        {
          goto LABEL_10;
        }

        v58 = *(a2 + 1184) + v105;
        *(a2 + 1184) = v58;
        if (v105 != v104)
        {
          goto LABEL_10;
        }

        v106 = bswap32(*(a2 + 1104));
        v60 = HIWORD(v106);
        *(a2 + 1104) = HIWORD(v106);
        *(a2 + 1108) = bswap32(*(a2 + 1108));
      }

      else
      {
        v60 = *v59;
      }

      if (v60 >= 0x81)
      {
        sock_pe_progress_rx_pe_entry_cold_6();
      }

      v107 = (a1 + 1336 * v60);
      if (v107[1184] != 1)
      {
        sock_pe_progress_rx_pe_entry_cold_5();
      }

      v108 = v107[18];
      if (v107[18])
      {
        v109 = 0;
        v110 = (a1 + 1336 * v60 + 80);
        v111 = 40;
        do
        {
          v112 = *v110;
          v113 = *v110 + v111;
          if (v58 < v113)
          {
            v114 = v58 - v111;
            v115 = v112 - v114;
            v116 = sock_comm_recv(a2, (*(v110 - 1) + v114), v112 - v114);
            if (v116 < 1)
            {
              goto LABEL_10;
            }

            v58 = *(a2 + 1184) + v116;
            *(a2 + 1184) = v58;
            if (v116 != v115)
            {
              goto LABEL_10;
            }

            v108 = v107[18];
            v113 = *v110 + v111;
          }

          ++v109;
          v110 += 12;
          v111 = v113;
        }

        while (v109 < v108);
      }

      sock_pe_report_read_completion((v107 + 16));
      v107[1185] = 1;
LABEL_199:
      *(a2 + 1169) = 1;
      goto LABEL_10;
    }

    if (v10 == 10)
    {
      v61 = *(a2 + 1184);
      v62 = (a2 + 1104);
      if (v61 < 0x28)
      {
        v117 = 40 - v61;
        v118 = sock_comm_recv(a2, &v62[v61 - 24], 40 - v61);
        if (v118 < 1)
        {
          goto LABEL_10;
        }

        *(a2 + 1184) += v118;
        if (v118 != v117)
        {
          goto LABEL_10;
        }

        v119 = bswap32(*(a2 + 1104));
        v63 = HIWORD(v119);
        *(a2 + 1104) = HIWORD(v119);
        *(a2 + 1108) = bswap32(*(a2 + 1108));
      }

      else
      {
        v63 = *v62;
      }

      if (v63 >= 0x81)
      {
        sock_pe_progress_rx_pe_entry_cold_4();
      }

      v120 = (a1 + 1336 * v63);
      if (v120[1184] != 1)
      {
        sock_pe_progress_rx_pe_entry_cold_3();
      }

      v121 = ofi_datatype_size(v120[20]);
      v122 = v120[21];
      if (!v120[21])
      {
        goto LABEL_221;
      }

      v123 = v121;
      v124 = 0;
      v125 = *(a2 + 1184);
      v126 = (a1 + 1336 * v63 + 104);
      v127 = 40;
      do
      {
        v128 = *v126 * v123;
        v129 = v128 + v127;
        if (v125 < v128 + v127)
        {
          v130 = v125 - v127;
          v131 = v128 - v130;
          v132 = sock_comm_recv(a2, (*(v126 - 1) + v130), v128 - v130);
          if (v132 < 1)
          {
            goto LABEL_10;
          }

          v125 = *(a2 + 1184) + v132;
          *(a2 + 1184) = v125;
          if (v132 != v131)
          {
            goto LABEL_10;
          }

          v122 = v120[21];
          v129 = v127 + *v126 * v123;
        }

        ++v124;
        v126 += 12;
        v127 = v129;
      }

      while (v124 < v122);
      if (v122)
      {
        sock_pe_report_read_completion((v120 + 16));
      }

      else
      {
LABEL_221:
        sock_pe_report_write_completion((v120 + 16));
      }

      v120[1185] = 1;
      goto LABEL_199;
    }

    if (v10 == 11)
    {
      goto LABEL_63;
    }

    if (v10 != 12)
    {
LABEL_100:
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v64 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_process_recv", 1581, "Operation not supported\n");
        *__error() = v64;
      }

      return 4294967218;
    }

    v23 = *(a2 + 1216);
    if (!v23)
    {
      v23 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      *(a2 + 1216) = v23;
      if (!v23)
      {
        return 4294967284;
      }
    }

    v24 = *(a2 + 1184);
    if (v24 <= 0x47)
    {
      v25 = 72 - v24;
      v26 = sock_comm_recv(a2, &v23[v24 - 24], 72 - v24);
      if (v26 < 1)
      {
        goto LABEL_10;
      }

      *(a2 + 1184) += v26;
      if (v26 != v25)
      {
        goto LABEL_10;
      }

      v23 = *(a2 + 1216);
    }

    v27 = *(a2 + 1232);
    v28 = *(v27 + 80);
    v30 = *(v23 + 1);
    v29 = *(v23 + 2);
    *(v27 + 16) = *v23;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    if (*(v28 + 352) == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = sock_av_get_addr_index(*(v28 + 48), v23);
      if ((v31 & 0x80000000) != 0)
      {
LABEL_229:
        if (*(v28 + 352) == 1)
        {
          v139 = -1;
        }

        else
        {
          v139 = v31;
        }

        *(*(a2 + 1232) + 88) = v139;
        *(a2 + 1169) = 1;
        *(a2 + 17) = 0;
        free(*(a2 + 1216));
        *(a2 + 1216) = 0;
        goto LABEL_10;
      }
    }

    pthread_mutex_lock((v28 + 12880));
    if (sock_ep_lookup_conn(v28, v31, v23) <= 1 && (ofi_idm_set(v28 + 552, v31, *(a2 + 1232)) & 0x80000000) != 0 && fi_log_enabled(&sock_prov, 0, 4))
    {
      v138 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_pe_process_rx_conn_msg", 1515, "ofi_idm_set failed\n");
      *__error() = v138;
    }

    pthread_mutex_unlock((v28 + 12880));
    goto LABEL_229;
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v13 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_process_recv", 1537, "Invalid wire protocol\n");
    *__error() = v13;
  }

  return 4294967274;
}

uint64_t sock_pe_progress_ep_rx(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 328);
  if (!v2)
  {
    return 0;
  }

  for (i = 0; i < v2; ++i)
  {
    v6 = *(*(a2 + 80) + 8 * i);
    if (v6)
    {
      result = sock_pe_progress_rx_ctx(a1, v6);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 328);
    }
  }

  return 0;
}

uint64_t sock_pe_progress_ep_tx(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 320);
  if (!v2)
  {
    return 0;
  }

  for (i = 0; i < v2; ++i)
  {
    v6 = *(*(a2 + 88) + 8 * i);
    if (v6)
    {
      result = sock_pe_progress_tx_ctx(a1, v6);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v2 = *(a2 + 320);
    }
  }

  return 0;
}

uint64_t sock_pe_progress_tx_ctx(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 171024));
  v4 = *(a2 + 376);
  do
  {
    if (v4 == (a2 + 376))
    {
      pthread_mutex_lock((a2 + 136));
      if (*(a2 + 112) == *(a2 + 104) || *(a1 + 171256) == a1 + 171256)
      {
        pthread_mutex_unlock((a2 + 136));
        goto LABEL_14;
      }

      v135 = 0;
      v10 = sock_pe_acquire_entry(a1);
      bzero(v10, 0x420uLL);
      v10[134] = 0;
      *(v10 + 66) = 0u;
      *(v10 + 584) = 1;
      v10[148] = 0;
      v10[154] = 0;
      v10[153] = *(a2 + 312);
      v10[3] = a2;
      *(v10 + 1173) = 0;
      v11 = *(a2 + 384);
      v12 = *v11;
      v10[158] = *v11;
      v10[159] = v11;
      *(v12 + 8) = v10 + 158;
      *v11 = (v10 + 158);
      v10[134] = 24;
      *(v10 + 530) = -22761 * ((v10 - a1 - 16) >> 3);
      v13 = v10 + 140;
      v14 = v10 + 142;
      sock_tx_ctx_read_op_send(a2, v10, v10 + 1120, v10 + 1128, v10 + 1136, v10 + 1160, &v135, v10 + 1232);
      if (*v10 == 1)
      {
        v15 = v10 + 144;
        v16 = *(a2 + 96) & *(a2 + 104);
        v17 = *(a2 + 88) - v16;
        v18 = *(a2 + 128);
        if (v17 >= 8)
        {
          *v15 = *(v18 + v16);
        }

        else
        {
          memcpy(v10 + 144, (v18 + v16), *(a2 + 88) - v16);
          memcpy(v15 + v17, *(a2 + 128), 8 - v17);
        }

        *(a2 + 104) += 8;
        v10[134] += 8;
      }

      v20 = a2;
      if (v135)
      {
        v20 = a2;
        if (*(a2 + 80) == 8)
        {
          v20 = *(v135 + 72);
        }
      }

      v10[155] = v20 + 216;
      if ((*(v10 + 1122) & 2) != 0)
      {
        v21 = v10 + 143;
        v22 = *(a2 + 96) & *(a2 + 104);
        v23 = *(a2 + 88) - v22;
        v24 = *(a2 + 128);
        if (v23 >= 8)
        {
          *v21 = *(v24 + v22);
        }

        else
        {
          memcpy(v10 + 143, (v24 + v22), *(a2 + 88) - v22);
          memcpy(v21 + v23, *(a2 + 128), 8 - v23);
        }

        *(a2 + 104) += 8;
        v10[134] += 8;
      }

      v25 = *v10;
      *(v10 + 1057) = v25;
      if (v25 <= 5)
      {
        if (v25 < 2)
        {
          if ((*(v10 + 1123) & 2) != 0)
          {
            v56 = *(v10 + 1);
            v57 = *(a2 + 96) & *(a2 + 104);
            v58 = *(a2 + 88) - v57;
            v59 = (*(a2 + 128) + v57);
            if (v56 <= v58)
            {
              v60 = (v10 + 100);
              v61 = *(v10 + 1);
            }

            else
            {
              memcpy(v10 + 100, v59, *(a2 + 88) - v57);
              v59 = *(a2 + 128);
              v60 = v10 + v58 + 800;
              v61 = v56 - v58;
            }

            memcpy(v60, v59, v61);
            *(a2 + 104) += v56;
            v10[134] += *(v10 + 1);
          }

          else if (*(v10 + 1))
          {
            v26 = 0;
            v27 = v10 + 4;
            v28 = *(a2 + 104);
            do
            {
              v29 = *(a2 + 96) & v28;
              v30 = *(a2 + 88) - v29;
              v31 = (*(a2 + 128) + v29);
              if (v30 >= 0x18)
              {
                v32 = *v31;
                v27[2] = v31[2];
                *v27 = v32;
              }

              else
              {
                memcpy(v27, v31, *(a2 + 88) - v29);
                memcpy(v27 + v30, *(a2 + 128), 24 - v30);
              }

              v28 = *(a2 + 104) + 24;
              *(a2 + 104) = v28;
              v10[134] += v27[1];
              ++v26;
              v27 += 12;
            }

            while (v26 < *(v10 + 1));
          }

          *(v10 + 1059) = *(v10 + 2);
          v84 = v10[140];
          if ((v84 & 0x1000000000000000) != 0)
          {
            *v13 = v84 | 0x4000000;
          }

          goto LABEL_128;
        }

        if (v25 == 3)
        {
          if ((*(v10 + 1123) & 2) != 0)
          {
            v78 = *(v10 + 1);
            v79 = *(a2 + 96) & *(a2 + 104);
            v80 = *(a2 + 88) - v79;
            v81 = (*(a2 + 128) + v79);
            if (v78 <= v80)
            {
              v82 = (v10 + 100);
              v83 = *(v10 + 1);
            }

            else
            {
              memcpy(v10 + 100, v81, *(a2 + 88) - v79);
              v81 = *(a2 + 128);
              v82 = v10 + v80 + 800;
              v83 = v78 - v80;
            }

            memcpy(v82, v81, v83);
            *(a2 + 104) += v78;
            v10[134] += *(v10 + 1);
          }

          else if (*(v10 + 1))
          {
            v42 = 0;
            v43 = v10 + 4;
            v44 = *(a2 + 104);
            do
            {
              v45 = *(a2 + 96) & v44;
              v46 = *(a2 + 88) - v45;
              v47 = (*(a2 + 128) + v45);
              if (v46 >= 0x18)
              {
                v48 = *v47;
                v43[2] = v47[2];
                *v43 = v48;
              }

              else
              {
                memcpy(v43, v47, *(a2 + 88) - v45);
                memcpy(v43 + v46, *(a2 + 128), 24 - v46);
              }

              v44 = *(a2 + 104) + 24;
              *(a2 + 104) = v44;
              v10[134] += v43[1];
              ++v42;
              v43 += 12;
            }

            while (v42 < *(v10 + 1));
          }

          if (*(v10 + 2))
          {
            v99 = 0;
            v100 = 0;
            v101 = *(a2 + 104);
            v102 = v10 + 7;
            do
            {
              v103 = *(a2 + 96) & v101;
              v104 = *(a2 + 88) - v103;
              v105 = (*(a2 + 128) + v103);
              if (v104 >= 0x18)
              {
                v106 = *v105;
                v102[2] = v105[2];
                *v102 = v106;
              }

              else
              {
                memcpy(v102, v105, *(a2 + 88) - v103);
                memcpy(v102 + v104, *(a2 + 128), 24 - v104);
              }

              v101 = *(a2 + 104) + 24;
              *(a2 + 104) = v101;
              ++v100;
              v107 = *(v10 + 2);
              v99 += 24;
              v102 += 12;
            }

            while (v100 < v107);
          }

          else
          {
            v99 = 0;
            LOBYTE(v107) = 0;
          }

          v10[134] += v99;
          *(v10 + 1059) = v107;
          v14 = v10 + 142;
LABEL_128:
          *(v10 + 1056) = 2;
          v132 = *(a2 + 320);
          if (v132)
          {
            LODWORD(v132) = *(v132 + 104);
            if (v132)
            {
              v132 = *v14 >> -v132;
            }
          }

          *(v10 + 1058) = v132;
          v133 = v10[140];
          if ((v133 & 0x4000000) != 0)
          {
            v133 &= ~0x8000000uLL;
            *v13 = v133;
          }

          v10[133] = bswap64(v133);
          v134 = v10[134];
          v10[149] = v134;
          v10[134] = bswap64(v134);
          *(v10 + 530) = bswap32(*(v10 + 530)) >> 16;
          v7 = sock_pe_progress_tx_entry(a1, a2, v10);
          pthread_mutex_unlock((a2 + 136));
          if ((v7 & 0x80000000) != 0)
          {
            goto LABEL_6;
          }

LABEL_14:
          sock_pe_progress_rx_ctrl_ctx(a1, *(a2 + 296), a2);
          v7 = 0;
          goto LABEL_15;
        }

LABEL_57:
        if (fi_log_enabled(&sock_prov, 0, 4))
        {
          v55 = *__error();
          fi_log(&sock_prov, 0, 4, "sock_pe_new_tx_entry", 2268, "Invalid operation type\n");
          *__error() = v55;
        }

        pthread_mutex_unlock((a2 + 136));
        v7 = 4294967274;
        goto LABEL_6;
      }

      switch(v25)
      {
        case 12:
          v49 = *(v10 + 1);
          v50 = *(a2 + 96) & *(a2 + 104);
          v51 = *(a2 + 88) - v50;
          v52 = (*(a2 + 128) + v50);
          if (v49 <= v51)
          {
            v53 = (v10 + 100);
            v54 = *(v10 + 1);
          }

          else
          {
            memcpy(v10 + 100, v52, *(a2 + 88) - v50);
            v52 = *(a2 + 128);
            v53 = v10 + v51 + 800;
            v54 = v49 - v51;
          }

          memcpy(v53, v52, v54);
          *(a2 + 104) += v49;
          v10[134] += *(v10 + 1);
          goto LABEL_128;
        case 9:
          v10[134] += 8;
          v62 = ofi_datatype_size(*(v10 + 4));
          if ((*(v10 + 1123) & 2) != 0)
          {
            v85 = v10 + 100;
            v86 = *(v10 + 1);
            v87 = *(a2 + 96) & *(a2 + 104);
            v88 = *(a2 + 88) - v87;
            v89 = (*(a2 + 128) + v87);
            v90 = (v10 + 100);
            if (v86 <= v88)
            {
              v91 = *(v10 + 1);
            }

            else
            {
              memcpy(v90, v89, *(a2 + 88) - v87);
              v89 = *(a2 + 128);
              v90 = v85 + v88;
              v91 = v86 - v88;
            }

            memcpy(v90, v89, v91);
            v108 = *(a2 + 96);
            v109 = *(a2 + 104) + v86;
            *(a2 + 104) = v109;
            v110 = v85 + *(v10 + 1);
            v111 = *(v10 + 6);
            v112 = v108 & v109;
            v113 = *(a2 + 88) - v112;
            v114 = (*(a2 + 128) + v112);
            if (v111 <= v113)
            {
              v115 = v110;
              v116 = *(v10 + 6);
            }

            else
            {
              memcpy(v110, v114, *(a2 + 88) - v112);
              v114 = *(a2 + 128);
              v115 = &v110[v113];
              v116 = v111 - v113;
            }

            memcpy(v115, v114, v116);
            *(a2 + 104) += v111;
            v10[134] += *(v10 + 6) + *(v10 + 1);
          }

          else
          {
            v63 = v62;
            if (*(v10 + 1))
            {
              v64 = 0;
              v65 = v10 + 4;
              v66 = *(a2 + 104);
              do
              {
                v67 = *(a2 + 96) & v66;
                v68 = *(a2 + 88) - v67;
                v69 = (*(a2 + 128) + v67);
                if (v68 >= 0x18)
                {
                  v70 = *v69;
                  v65[2] = v69[2];
                  *v65 = v70;
                }

                else
                {
                  memcpy(v65, v69, *(a2 + 88) - v67);
                  memcpy(v65 + v68, *(a2 + 128), 24 - v68);
                }

                v66 = *(a2 + 104) + 24;
                *(a2 + 104) = v66;
                if (*(v10 + 3) != 10)
                {
                  v10[134] += v65[1] * v63;
                }

                ++v64;
                v65 += 12;
              }

              while (v64 < *(v10 + 1));
            }

            if (*(v10 + 6))
            {
              v71 = 0;
              v72 = *(a2 + 104);
              v73 = v10 + 13;
              do
              {
                v74 = *(a2 + 96) & v72;
                v75 = *(a2 + 88) - v74;
                v76 = (*(a2 + 128) + v74);
                if (v75 >= 0x18)
                {
                  v77 = *v76;
                  v73[2] = v76[2];
                  *v73 = v77;
                }

                else
                {
                  memcpy(v73, v76, *(a2 + 88) - v74);
                  memcpy(v73 + v75, *(a2 + 128), 24 - v75);
                }

                v72 = *(a2 + 104) + 24;
                *(a2 + 104) = v72;
                v10[134] += v73[1] * v63;
                ++v71;
                v73 += 12;
              }

              while (v71 < *(v10 + 6));
            }
          }

          if (*(v10 + 2))
          {
            v117 = 0;
            v118 = 0;
            v119 = *(a2 + 104);
            v120 = v10 + 7;
            do
            {
              v121 = *(a2 + 96) & v119;
              v122 = *(a2 + 88) - v121;
              v123 = (*(a2 + 128) + v121);
              if (v122 >= 0x18)
              {
                v124 = *v123;
                v120[2] = v123[2];
                *v120 = v124;
              }

              else
              {
                memcpy(v120, v123, *(a2 + 88) - v121);
                memcpy(v120 + v122, *(a2 + 128), 24 - v122);
              }

              v119 = *(a2 + 104) + 24;
              *(a2 + 104) = v119;
              ++v118;
              v41 = *(v10 + 2);
              v117 += 24;
              v120 += 12;
            }

            while (v118 < v41);
          }

          else
          {
            LOBYTE(v41) = 0;
            v117 = 0;
          }

          v10[134] += v117;
          v14 = v10 + 142;
          if (*(v10 + 5))
          {
            v125 = 0;
            v126 = *(a2 + 104);
            v127 = v10 + 10;
            do
            {
              v128 = *(a2 + 96) & v126;
              v129 = *(a2 + 88) - v128;
              v130 = (*(a2 + 128) + v128);
              if (v129 >= 0x18)
              {
                v131 = *v130;
                v127[2] = v130[2];
                *v127 = v131;
              }

              else
              {
                memcpy(v127, v130, *(a2 + 88) - v128);
                memcpy(v127 + v129, *(a2 + 128), 24 - v129);
              }

              v126 = *(a2 + 104) + 24;
              *(a2 + 104) = v126;
              ++v125;
              v127 += 12;
            }

            while (v125 < *(v10 + 5));
            LOBYTE(v41) = *(v10 + 2);
          }

          break;
        case 6:
          if (*(v10 + 1))
          {
            v33 = 0;
            v34 = 0;
            v35 = v10 + 4;
            v36 = *(a2 + 104);
            do
            {
              v37 = *(a2 + 96) & v36;
              v38 = *(a2 + 88) - v37;
              v39 = (*(a2 + 128) + v37);
              if (v38 >= 0x18)
              {
                v40 = *v39;
                v35[2] = v39[2];
                *v35 = v40;
              }

              else
              {
                memcpy(v35, v39, *(a2 + 88) - v37);
                memcpy(v35 + v38, *(a2 + 128), 24 - v38);
              }

              v36 = *(a2 + 104) + 24;
              *(a2 + 104) = v36;
              ++v34;
              v41 = *(v10 + 1);
              v33 += 24;
              v35 += 12;
            }

            while (v34 < v41);
            v14 = v10 + 142;
          }

          else
          {
            LOBYTE(v41) = 0;
            v33 = 0;
          }

          v10[134] += v33;
          if (*(v10 + 2))
          {
            v92 = 0;
            v93 = *(a2 + 104);
            v94 = v10 + 7;
            do
            {
              v95 = *(a2 + 96) & v93;
              v96 = *(a2 + 88) - v95;
              v97 = (*(a2 + 128) + v95);
              if (v96 >= 0x18)
              {
                v98 = *v97;
                v94[2] = v97[2];
                *v94 = v98;
              }

              else
              {
                memcpy(v94, v97, *(a2 + 88) - v95);
                memcpy(v94 + v96, *(a2 + 128), 24 - v96);
              }

              v93 = *(a2 + 104) + 24;
              *(a2 + 104) = v93;
              ++v92;
              v94 += 12;
            }

            while (v92 < *(v10 + 2));
            LOBYTE(v41) = *(v10 + 1);
          }

          break;
        default:
          goto LABEL_57;
      }

      *(v10 + 1059) = v41;
      goto LABEL_128;
    }

    v5 = (v4 - 158);
    v4 = *v4;
    v6 = sock_pe_progress_tx_entry(a1, a2, v5);
  }

  while ((v6 & 0x80000000) == 0);
  v7 = v6;
  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v8 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_progress_tx_ctx", 2547, "Error in progressing %p\n", v5);
    *__error() = v8;
  }

LABEL_6:
  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v9 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_progress_tx_ctx", 2563, "failed to progress TX ctx\n");
    *__error() = v9;
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 171024));
  return v7;
}

uint64_t sock_pe_progress_rx_ctrl_ctx(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(a3 + 80) == 8)
  {
    v6 = (a3 + 392);
    v7 = *(a3 + 392);
    if (v7 != (a3 + 392))
    {
      do
      {
        v8 = *v7;
        result = sock_pe_progress_rx_ep(v5, (v7 - 15), *(a3 + 296));
        v7 = v8;
      }

      while (v8 != v6);
    }
  }

  else
  {
    result = sock_pe_progress_rx_ep(result, *(a3 + 312), *(a3 + 296));
  }

  v9 = *(a2 + 288);
  while (v9 != (a2 + 288))
  {
    v10 = (v9 - 158);
    v9 = *v9;
    result = sock_pe_progress_rx_pe_entry(v5, v10, a2);
  }

  return result;
}

uint64_t sock_pe_progress_tx_entry(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a3 + 154);
  if (a3[1169])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    v7 = 0;
    if (!a3[1169])
    {
      return v7;
    }

    goto LABEL_48;
  }

  if (sock_comm_is_disconnected(a3))
  {
    ofi_straddr_log_internal("sock_pe_progress_tx_entry", 1962, 0, &sock_prov, 0, 4, "Peer disconnected: removing fd from pollset", *(a3 + 154) + 16);
    pthread_mutex_lock((*(a3 + 153) + 12880));
    sock_ep_remove_conn(*(a3 + 153), *(a3 + 154));
    pthread_mutex_unlock((*(a3 + 153) + 12880));
    if (!a3[1173])
    {
      v10 = *(a3 + 155);
      v11 = *(v10 + 24);
      if (v11)
      {
        v12 = *(v11 + 24);
        if (v12)
        {
          if (*v12 >= 0x31uLL)
          {
            v13 = v12[6];
            if (v13)
            {
              v13();
              v10 = *(a3 + 155);
            }
          }
        }
      }

      v14 = *(v10 + 8);
      if (v14)
      {
        sock_cq_report_error(v14, a3, 0, 5u, 0xFFFFFFFB, 0, 0);
      }

      a3[1173] = 1;
    }

    v7 = 0;
    a3[1169] = 1;
    goto LABEL_48;
  }

  if (a3[17])
  {
    goto LABEL_46;
  }

  v15 = *(v5 + 72);
  if (v15 && v15 != a3)
  {
    goto LABEL_46;
  }

  if (!v15)
  {
    *(v5 + 72) = a3;
  }

  if ((a3[1122] & 0x20) != 0 && *(a2 + 376) != a3 + 1264)
  {
    goto LABEL_46;
  }

  if (!a3[16])
  {
    if (sock_pe_send_field(a3, (a3 + 1056), 24, 0))
    {
      goto LABEL_46;
    }

    a3[16] = 1;
  }

  v17 = a3[1057];
  if (v17 > 5)
  {
    switch(v17)
    {
      case 6u:
        sock_pe_progress_tx_read(a3);
        goto LABEL_46;
      case 9u:
        sock_pe_progress_tx_atomic(a3);
        goto LABEL_46;
      case 0xCu:
        sock_pe_progress_tx_conn_msg(a3);
        goto LABEL_46;
    }
  }

  else
  {
    if (v17 < 2)
    {
      sock_pe_progress_tx_send(a3);
LABEL_46:
      v7 = 0;
      goto LABEL_47;
    }

    if (v17 == 3)
    {
      sock_pe_progress_tx_write(a3);
      goto LABEL_46;
    }
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v18 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_progress_tx_entry", 2019, "Operation not supported\n");
    *__error() = v18;
  }

  v7 = 4294967218;
LABEL_47:
  if (a3[1169])
  {
LABEL_48:
    sock_pe_release_entry(a1, a3);
  }

  return v7;
}

char *sock_pe_init(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x29D68uLL, 0x10B2040709628E9uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2 + 16, 0x29C00uLL);
    v4 = (v3 + 171256);
    *(v3 + 21407) = v3 + 171256;
    *(v3 + 21408) = v3 + 171256;
    *(v3 + 21409) = v3 + 171272;
    *(v3 + 21410) = v3 + 171272;
    v5 = v3 + 1264;
    v6 = 128;
    *(v3 + 21411) = v3 + 171288;
    *(v3 + 21412) = v3 + 171288;
    do
    {
      v7 = *v4;
      *v5 = *v4;
      *(v5 + 1) = v4;
      *(v7 + 8) = v5;
      *v4 = v5;
      *(v5 + 10) = 1024;
      *(v5 + 2) = xmmword_29ED12840;
      *(v5 + 7) = 0;
      *(v5 + 8) = 0;
      *(v5 + 6) = 0;
      v8 = malloc_type_calloc(1uLL, 0x400uLL, 0x342F85FCuLL);
      *(v5 + 9) = v8;
      if (!v8 && fi_log_enabled(&sock_prov, 0, 4))
      {
        v9 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_init_table", 2709, "failed to init comm-cache\n");
        *__error() = v9;
      }

      v5 += 1336;
      --v6;
    }

    while (v6);
    *(v3 + 2) = 128;
    *(v3 + 21413) = v3 + 171304;
    *(v3 + 21414) = v3 + 171304;
    *(v3 + 21415) = v3 + 171320;
    *(v3 + 21416) = v3 + 171320;
    pthread_mutex_init((v3 + 171024), 0);
    pthread_mutex_init((v3 + 171088), 0);
    pthread_mutex_init((v3 + 171152), 0);
    *v3 = a1;
    v20 = 0;
    v16 = xmmword_29ED12850;
    v17 = xmmword_29ED12860;
    v18 = 0u;
    v19 = 0u;
    if (ofi_bufpool_create_attr(&v16, v3 + 21405))
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v10 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_init", 2737, "failed to create buffer pool\n");
        *__error() = v10;
      }

      goto LABEL_25;
    }

    v20 = 0;
    v16 = xmmword_29ED12870;
    v17 = xmmword_29ED12880;
    v18 = 0u;
    v19 = 0u;
    if (ofi_bufpool_create_attr(&v16, v3 + 21406))
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v11 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_init", 2744, "failed to create atomic rx buffer pool\n");
        *__error() = v11;
      }

      goto LABEL_24;
    }

    v12 = kqueue();
    *(v3 + 42840) = v12;
    if (v12 < 0 && *__error() >= 1)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v13 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_init", 2749, "failed to create epoll set\n");
        *__error() = v13;
      }

LABEL_23:
      ofi_bufpool_destroy(*(v3 + 21406));
LABEL_24:
      ofi_bufpool_destroy(*(v3 + 21405));
LABEL_25:
      pthread_mutex_destroy((v3 + 171024));
      free(v3);
      return 0;
    }

    if (*(a1 + 248) == 1)
    {
      if ((socketpair(1, 1, 0, v3 + 42806) & 0x80000000) == 0)
      {
        if (!fd_set_nonblock(*(v3 + 42806)) && !ofi_epoll_add(*(v3 + 42840), *(v3 + 42806)))
        {
          *(v3 + 42836) = 1;
          if (!pthread_create(v3 + 21417, 0, sock_pe_progress_thread, v3))
          {
            return v3;
          }

          if (fi_log_enabled(&sock_prov, 0, 4))
          {
            v15 = *__error();
            fi_log(&sock_prov, 0, 4, "sock_pe_init", 2766, "Couldn't create progress thread\n");
            *__error() = v15;
          }
        }

        close(*(v3 + 42806));
        close(*(v3 + 42807));
      }

      close(*(v3 + 42840));
      goto LABEL_23;
    }
  }

  return v3;
}

uint64_t sock_pe_progress_thread(uint64_t a1)
{
  v2 = a1 + 167936;
  eventlist.ident = 0;
  if (!fi_param_get(&sock_prov, "pe_affinity", &eventlist) && eventlist.ident && ofi_set_thread_affinity() == -78 && fi_log_enabled(&sock_prov, 0, 4))
  {
    v14 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_pe_set_affinity", 2638, "FI_SOCKETS_PE_AFFINITY is not supported on OS X and Windows\n");
    *__error() = v14;
  }

  if (*(v2 + 3408))
  {
    v3 = (v2 + 3368);
    v4 = (v2 + 3384);
    while (1)
    {
      pthread_mutex_lock((a1 + 171152));
      if (*(*a1 + 248) == 1 && (!*(v2 + 3296) || ofi_gettime_ms() - *(v2 + 3296) >= *sock_pe_waittime))
      {
        break;
      }

LABEL_31:
      if (*v3 != v3)
      {
        v12 = (v2 + 3368);
        while (1)
        {
          v12 = *v12;
          if (v12 == v3)
          {
            break;
          }

          if ((sock_pe_progress_tx_ctx(a1, (v12 - 43)) & 0x80000000) != 0)
          {
            if (fi_log_enabled(&sock_prov, 0, 4))
            {
              v16 = *__error();
              fi_log(&sock_prov, 0, 4, "sock_pe_progress_thread", 2667, "failed to progress TX\n");
LABEL_51:
              *__error() = v16;
            }

LABEL_52:
            pthread_mutex_unlock((a1 + 171152));
            return 0;
          }
        }
      }

      if (*v4 != v4)
      {
        v13 = (v2 + 3384);
        while (1)
        {
          v13 = *v13;
          if (v13 == v4)
          {
            break;
          }

          if ((sock_pe_progress_rx_ctx(a1, (v13 - 32)) & 0x80000000) != 0)
          {
            if (fi_log_enabled(&sock_prov, 0, 4))
            {
              v16 = *__error();
              fi_log(&sock_prov, 0, 4, "sock_pe_progress_thread", 2681, "failed to progress RX\n");
              goto LABEL_51;
            }

            goto LABEL_52;
          }
        }
      }

      pthread_mutex_unlock((a1 + 171152));
      if (!*(v2 + 3408))
      {
        return 0;
      }
    }

    v5 = (v2 + 3368);
    if (*v3 == v3)
    {
      v6 = *v4;
      if (*v4 == v4)
      {
LABEL_21:
        pthread_mutex_unlock((a1 + 171152));
        v20 = 0;
        memset(&eventlist, 0, sizeof(eventlist));
        if (kevent(*(v2 + 3424), 0, 0, &eventlist, 1, 0) < 0 && *__error() >= 1 && fi_log_enabled(&sock_prov, 0, 4))
        {
          v8 = *__error();
          v9 = __error();
          v10 = strerror(*v9);
          fi_log(&sock_prov, 0, 4, "sock_pe_wait", 2615, "poll failed : %s\n", v10);
          *__error() = v8;
        }

        pthread_mutex_lock((a1 + 171088));
        if (*(v2 + 3284) != *(v2 + 3280))
        {
          if (recv(*(v2 + 3288), &v20, 1uLL, 0) == 1)
          {
            ++*(v2 + 3284);
          }

          else if (fi_log_enabled(&sock_prov, 0, 4))
          {
            v11 = *__error();
            fi_log(&sock_prov, 0, 4, "sock_pe_wait", 2622, "Invalid signal\n");
            *__error() = v11;
          }
        }

        pthread_mutex_unlock((a1 + 171088));
        *(v2 + 3296) = ofi_gettime_ms();
        pthread_mutex_lock((a1 + 171152));
        goto LABEL_31;
      }
    }

    else
    {
      while (1)
      {
        v5 = *v5;
        if (v5 == v3)
        {
          break;
        }

        if (*(v5 - 29) != *(v5 - 30) || v5[4] != v5 + 4)
        {
          goto LABEL_31;
        }
      }

      v6 = *v4;
    }

    if (v6 != v4)
    {
      v7 = (v2 + 3384);
      while (1)
      {
        v7 = *v7;
        if (v7 == v4)
        {
          break;
        }

        if (v7[8] != v7 + 8 || v7[4] != v7 + 4)
        {
          goto LABEL_31;
        }
      }
    }

    goto LABEL_21;
  }

  return 0;
}

void sock_pe_finalize(char *a1)
{
  v2 = a1 + 167936;
  if (*(*a1 + 248) == 1)
  {
    *(a1 + 42836) = 0;
    sock_pe_signal(a1);
    pthread_join(*(v2 + 425), 0);
    close(*(v2 + 822));
    close(*(v2 + 823));
  }

  v3 = 1336;
  v4 = 128;
  do
  {
    free(*&a1[v3]);
    v3 += 1336;
    --v4;
  }

  while (v4);
  v5 = (v2 + 3352);
  for (i = *(v2 + 419); i != v5; i = *v5)
  {
    free(i[9]);
    v7 = *i;
    v8 = i[1];
    *v8 = *i;
    *(v7 + 8) = v8;
    ofi_buf_free((i - 156));
  }

  ofi_bufpool_destroy(*(v2 + 413));
  ofi_bufpool_destroy(*(v2 + 414));
  pthread_mutex_destroy((a1 + 171024));
  pthread_mutex_destroy((a1 + 171088));
  pthread_mutex_destroy((a1 + 171152));
  close(*(v2 + 856));

  free(a1);
}

uint64_t sock_pe_report_recv_cq_completion(uint64_t a1)
{
  v2 = *(a1 + 1240);
  result = *(v2 + 16);
  if (result && (!*(v2 + 1) || (*(a1 + 1123) & 1) != 0))
  {
    result = (*(result + 464))(result, *(a1 + 1136), a1);
    if (result < 0)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v4 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_report_recv_cq_completion", 287, "Failed to report completion %p\n", a1);
        *__error() = v4;
      }

      v5 = *(a1 + 1240);
      result = *(v5 + 72);
      if (result)
      {
        v6 = *(v5 + 16);
        v7 = *(v6 + 8);

        return sock_eq_report_error(result, v6, v7, 0, 28, -28, 0, 0);
      }
    }
  }

  return result;
}

uint64_t *sock_pe_acquire_entry(uint64_t a1)
{
  v1 = a1 + 167936;
  v2 = *(a1 + 171256);
  if (v2 != (a1 + 171256))
  {
    --*(a1 + 8);
    if (v2[7] != v2[6])
    {
      sock_pe_acquire_entry_cold_1();
    }

    v3 = v2 - 156;
    v4 = *v2;
    v5 = v2[1];
    *v5 = *v2;
    *(v4 + 8) = v5;
    v6 = *(a1 + 171280);
    v7 = *v6;
    *v2 = *v6;
    v2[1] = v6;
LABEL_17:
    *(v7 + 8) = v2;
    *v6 = v2;
    return v3;
  }

  v8 = *(a1 + 171240);
  if ((v8[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v9 = *v8;
  if (*v8)
  {
LABEL_6:
    if (v9 == v8[1])
    {
      *v8 = 0;
      v8[1] = 0;
    }

    else
    {
      *v8 = *v9;
    }

    if (atomic_fetch_add((v9[2] + 76), 1u) == -1)
    {
      sock_pe_acquire_entry_cold_4();
    }

    if (*v9 == v9)
    {
      sock_pe_acquire_entry_cold_3();
    }

    v3 = v9 + 6;
    *v9 = v9;
    bzero(v9 + 6, 0x538uLL);
    *(v9 + 1220) = 1;
    *(v9 + 83) = xmmword_29ED12890;
    v9[168] = 0;
    v9[170] = 0;
    v9[169] = 0;
    v10 = malloc_type_calloc(1uLL, 0x80uLL, 0x342F85FCuLL);
    v9[171] = v10;
    if (!v10 && fi_log_enabled(&sock_prov, 0, 4))
    {
      v11 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_pe_acquire_entry", 216, "failed to init comm-cache\n");
      *__error() = v11;
    }

    v9[172] = 128;
    v2 = v9 + 162;
    v6 = *(v1 + 3360);
    v7 = *v6;
    v9[162] = *v6;
    v9[163] = v6;
    goto LABEL_17;
  }

  if (!ofi_bufpool_grow(*(a1 + 171240)))
  {
    v9 = *v8;
    goto LABEL_6;
  }

  return 0;
}

double sock_pe_release_entry(uint64_t a1, unsigned __int8 *a2)
{
  v4 = a2[1168];
  if (!a2[1168] && *(a2 + 163) != *(a2 + 162))
  {
    sock_pe_release_entry_cold_1();
  }

  v5 = *(a2 + 158);
  v6 = *(a2 + 159);
  *v6 = v5;
  *(v5 + 8) = v6;
  v7 = *(a2 + 154);
  if (*(v7 + 72) == a2)
  {
    *(v7 + 72) = 0;
  }

  if (*(v7 + 64) == a2)
  {
    *(v7 + 64) = 0;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 28);
  if (v8)
  {
    ofi_buf_free(v8);
    ofi_buf_free(*(a2 + 29));
  }

LABEL_11:
  if (a2[1172])
  {
    free(*(a2 + 165));
    v9 = *(a2 + 156);
    v10 = *(a2 + 157);
    *v10 = v9;
    *(v9 + 8) = v10;

    ofi_buf_free(a2);
  }

  else
  {
    if (a2[1168] == 1)
    {
      *(a2 + 164) = 0;
      *(a2 + 81) = 0u;
    }

    ++*(a1 + 8);
    *(a2 + 154) = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 9) = 0u;
    *(a2 + 10) = 0u;
    *(a2 + 11) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 13) = 0u;
    *(a2 + 14) = 0u;
    bzero(a2, 0x420uLL);
    *(a2 + 134) = 0;
    result = 0.0;
    *(a2 + 66) = 0u;
    *(a2 + 1080) = 0u;
    *(a2 + 1096) = 0u;
    *(a2 + 139) = 0;
    a2[1173] = 0;
    *(a2 + 70) = 0u;
    *(a2 + 145) = 0;
    *(a2 + 292) = 0;
    *(a2 + 1192) = 0u;
    *(a2 + 148) = 0;
    v12 = *(a2 + 156);
    v13 = *(a2 + 157);
    *v13 = v12;
    *(v12 + 8) = v13;
    v14 = *(a1 + 171256);
    *(a2 + 156) = v14;
    *(a2 + 157) = a1 + 171256;
    *(v14 + 8) = a2 + 1248;
    *(a1 + 171256) = a2 + 1248;
  }

  return result;
}

uint64_t sock_pe_progress_pending_ack(uint64_t result)
{
  v1 = *(result + 1232);
  if (v1)
  {
    v2 = result;
    if (!*(result + 1208))
    {
      v3 = *(v1 + 72);
      if (!v3 || v3 == result)
      {
        if (!v3)
        {
          *(v1 + 72) = result;
        }

        v5 = *(result + 1184);
        if (v5 > 0x27 || (v6 = 40 - v5, result = sock_comm_send(result, (result + v5 + 1080), 40 - v5), result >= 1) && (v5 = *(v2 + 1184) + result, *(v2 + 1184) = v5, result == v6))
        {
          v7 = *(v2 + 1081);
          if (v7 == 10)
          {
            v16 = *(v2 + 1192);
            if (v16 != 40)
            {
              result = sock_pe_send_field(v2, *(v2 + 224), v16 - 40, 40);
              if (result)
              {
                return result;
              }

              v5 = *(v2 + 1184);
            }
          }

          else if (v7 == 7)
          {
            v8 = *(v2 + 1059);
            if (*(v2 + 1059))
            {
              v9 = 0;
              v10 = (v2 + 40);
              v11 = 40;
              do
              {
                v12 = *v10;
                v13 = *v10 + v11;
                if (v5 < v13)
                {
                  v14 = v5 - v11;
                  v15 = v12 - v14;
                  result = sock_comm_send(v2, (*(v10 - 1) + v14), v12 - v14);
                  if (result < 1)
                  {
                    return result;
                  }

                  v5 = *(v2 + 1184) + result;
                  *(v2 + 1184) = v5;
                  if (result != v15)
                  {
                    return result;
                  }

                  v8 = *(v2 + 1059);
                  v13 = *v10 + v11;
                }

                ++v9;
                v10 += 3;
                v11 = v13;
              }

              while (v9 < v8);
            }
          }

          if (*(v2 + 1192) == v5 && !*(v2 + 1208))
          {
            sock_comm_flush(v2);
            result = sock_comm_tx_done(v2);
            if (result)
            {
              *(v2 + 1169) = 1;
              *(v2 + 17) = 0;
              *(*(v2 + 1232) + 72) = 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_pe_read_hdr(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1232);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 != a2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(v3 + 64) = a2;
  }

  if (sock_comm_peek(v3, (a2 + 1056), 0x18uLL) == 24)
  {
    v8 = (a2 + 1064);
    v9 = vrev64q_s8(*(a2 + 1064));
    *(a2 + 1064) = v9;
    v10 = bswap32(*(a2 + 1060)) >> 16;
    *(a2 + 1060) = v10;
    *(a2 + 1192) = v9.i64[1];
    v11 = *(a2 + 1057);
    if ((!*(a1 + 92) || v11 >= 0xA || ((0x24Bu >> v11) & 1) == 0) && (v11 > 9 || ((1 << v11) & 0x24B) == 0 || *(a1 + 80) == *(a2 + 1058)))
    {
      v12 = *(a2 + 1184);
      if (v12 > 0x17)
      {
LABEL_21:
        result = 0;
        v15 = vrev64q_s8(v9);
        *v8 = v15;
        *(a2 + 1060) = __rev16(v10);
        *(a2 + 16) = 1;
        *(a2 + 1120) = v15.i64[0];
        *(a2 + 1192) = v15.i64[1];
        return result;
      }

      v13 = 24 - v12;
      v14 = sock_comm_recv(a2, (a2 + 1056 + v12), 24 - v12);
      if (v14 >= 1)
      {
        *(a2 + 1184) += v14;
        if (v14 == v13)
        {
          v9 = *v8;
          v10 = *(a2 + 1060);
          goto LABEL_21;
        }
      }

      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v16 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_read_hdr", 1643, "Failed to recv header\n");
        *__error() = v16;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t ofi_buf_free(uint64_t result)
{
  v1 = *(result - 32);
  if (!v1)
  {
    ofi_buf_free_cold_6();
  }

  if (atomic_fetch_add((v1 + 76), 0xFFFFFFFF) <= 0)
  {
    ofi_buf_free_cold_7();
  }

  v2 = *(result - 32);
  if (!v2)
  {
    ofi_buf_free_cold_6();
  }

  v3 = *(v2 + 64);
  if (!v3)
  {
    ofi_buf_free_cold_5();
  }

  if ((v3[16] & 2) != 0)
  {
    ofi_buf_free_cold_1();
  }

  if (*(result - 8) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_2();
  }

  if (**(result - 16) != 0xF1C0DE0F1C0DE64)
  {
    ofi_buf_free_cold_3();
  }

  v4 = (result - 48);
  if (*(result - 48) != result - 48)
  {
    ofi_buf_free_cold_4();
  }

  v5 = *v3;
  if (!*v3)
  {
    v3[1] = v4;
  }

  *v4 = v5;
  *v3 = v4;
  return result;
}

uint64_t sock_pe_send_field(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[148];
  if (v4 >= a4 + a3)
  {
    return 0;
  }

  v6 = v4 - a4;
  v7 = a3 - v6;
  v8 = sock_comm_send(a1, (a2 + v6), a3 - v6);
  if (v8 < 1)
  {
    return -1;
  }

  a1[148] += v8;
  if (v8 == v7)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sock_pe_recv_field(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 1184);
  if (v4 >= a4 + a3)
  {
    return 0;
  }

  v6 = v4 - a4;
  v7 = a3 - v6;
  v8 = sock_comm_recv(a1, (a2 + v6), a3 - v6);
  if (v8 < 1)
  {
    return -1;
  }

  *(a1 + 1184) += v8;
  if (v8 == v7)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sock_pe_process_rx_tatomic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  LODWORD(result) = sock_pe_recv_atomic_hdrs(a1, a3, &v12, &v11);
  if (result)
  {
    if (result == -35)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  else
  {
    if (*(a3 + 32))
    {
      sock_pe_process_rx_tatomic_cold_1();
    }

    if (*(a3 + 2) != 1)
    {
      sock_pe_process_rx_tatomic_cold_2();
    }

    if (*(a3 + 6))
    {
      sock_pe_process_rx_tatomic_cold_3();
    }

    *(a3 + 1152) = *(a3 + 48);
    v7 = v11;
    *(a3 + 1200) = v11;
    pthread_mutex_lock((a2 + 352));
    v8 = sock_rx_new_buffered_entry(a2, v7);
    if (v8)
    {
      v9 = v8;
      *v8 = *a3;
      memcpy(v8[11], *(a3 + 232), v7);
      v9[8] = *(a3 + 1152);
      *(v9 + 3) = *(a3 + 1136);
      v10 = *(a3 + 1240);
      v9[9] = 0;
      v9[10] = v10;
      *(v9 + 11) = 257;
      v9[4] = (v9[4] | *(a3 + 1064) & 0x20000 | 0x18);
      *(a3 + 24) = v9;
      sock_pe_progress_buffered_rx();
      pthread_mutex_unlock((a2 + 352));
      *(a3 + 1169) = 1;
      sock_pe_send_response(a1, a3, 0, 10, 0);
      return 0;
    }

    else
    {
      pthread_mutex_unlock((a2 + 352));
      return 4294967284;
    }
  }
}

uint64_t sock_pe_process_rx_atomic()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v39 = *MEMORY[0x29EDCA608];
  v36 = 0;
  v37 = 0;
  LODWORD(result) = sock_pe_recv_atomic_hdrs(v0, v1, &v37, &v36);
  if (!result)
  {
    LODWORD(v7) = *(v2 + 2);
    if (*(v2 + 2) && !*(v2 + 1171))
    {
      v24 = 0;
      v25 = (v2 + 32);
      v26 = v37;
      while (sock_mr_verify_key(*(v4 + 248), v25[2], v25, v26 * v25[1], 0x2000))
      {
        ++v24;
        v7 = *(v2 + 2);
        if (v24 < v7)
        {
          v25 += 3;
          if (!*(v2 + 1171))
          {
            continue;
          }
        }

        goto LABEL_7;
      }

      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v34 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_pe_process_rx_atomic", 966, "Remote memory access error: %p, %zu, %llu\n", *v25, v25[1] * v26, v25[2]);
        *__error() = v34;
      }

      *(v2 + 1170) = 1;
      *(v2 + 1208) = *(v2 + 1192) - *(v2 + 1184);
      v29 = v5;
      v30 = v2;
      v28 = 0;
      v31 = 11;
      v32 = 13;
    }

    else
    {
LABEL_7:
      *(v2 + 1171) = 1;
      v8 = *(v5 + 171352);
      if (v8)
      {
        if (v8 != v2)
        {
LABEL_43:
          result = 0;
          goto LABEL_44;
        }
      }

      else
      {
        *(v5 + 171352) = v2;
        LODWORD(v7) = *(v2 + 2);
      }

      v35 = v4;
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        v11 = v37;
        v12 = (v2 + 40);
        do
        {
          v14 = *(v2 + 224);
          v13 = *(v2 + 232);
          v15 = *(v2 + 4);
          v16 = *(v2 + 3);
          v17 = *(v12 - 1);
          v18 = *v12;
          v19 = (v16 - 12);
          if (v19 > 6)
          {
            if (v16 > 0xB || *(v2 + 5) == 0)
            {
              if (v16 <= 0xB && v16 != 10)
              {
                (*(&ofi_atomic_write_handlers[16 * v16] + *(v2 + 4)))(v17, v13 + v10, *v12);
              }
            }

            else
            {
              (*(&ofi_atomic_readwrite_handlers[16 * v16] + *(v2 + 4)))(v17, v13 + v10, v14 + v10, *v12);
            }
          }

          else
          {
            (*(&ofi_atomic_swap_handlers[16 * v19] + *(v2 + 4)))(v17, v13 + v10, v14 + v10, __src, *v12);
            if (v14)
            {
              v20 = ofi_datatype_size(v15);
              memcpy((v14 + v10), __src, v20 * v18);
            }
          }

          v23 = *v12;
          v12 += 3;
          v10 += v23 * v11;
          ++v9;
        }

        while (v9 < *(v2 + 2));
      }

      else
      {
        v10 = 0;
      }

      *(v2 + 1160) = *(v2 + 32);
      *(v2 + 1200) = v10;
      v27 = 8208;
      if (*(v2 + 3) == 10)
      {
        v27 = 4112;
      }

      *(v2 + 1120) |= v27;
      if (!*(v2 + 1173))
      {
        sock_pe_report_remote_write(v2);
        sock_pe_report_mr_completion(*(v35 + 248), v2);
        *(v2 + 1173) = 1;
      }

      if (*(v2 + 5))
      {
        v28 = v36;
      }

      else
      {
        v28 = 0;
      }

      v29 = v5;
      v30 = v2;
      v31 = 10;
      v32 = 0;
    }

    sock_pe_send_response(v29, v30, v28, v31, v32);
    goto LABEL_43;
  }

  if (result == -35)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

LABEL_44:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_send_response(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  *(a2 + 1080) = 0u;
  *(a2 + 1096) = 0u;
  *(a2 + 1112) = 0;
  *(a2 + 1104) = bswap32(*(a2 + 1060)) >> 16;
  *(a2 + 1108) = bswap32(a5);
  *(a2 + 1083) = 0;
  *(a2 + 1088) = 0;
  *(a2 + 1080) = 2;
  *(a2 + 1081) = a4;
  *(a2 + 1096) = bswap64(a3 + 40);
  *(a2 + 1082) = *(a2 + 1058);
  *(a1 + 171352) = 0;
  *(a2 + 1184) = 0;
  *(a2 + 17) = 1;
  if (!*(a2 + 1208))
  {
    *(*(a2 + 1232) + 64) = 0;
  }

  *(a2 + 1192) = a3 + 40;
  return sock_pe_progress_pending_ack(a2);
}

uint64_t sock_pe_report_remote_write(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 1160) = *(a1 + 32);
  *(a1 + 1200) = v2;
  if ((*(a1 + 1122) & 2) != 0)
  {
    sock_pe_report_recv_cq_completion(a1);
  }

  result = *(*(a1 + 1240) + 64);
  if (result)
  {

    return sock_cntr_inc(result);
  }

  return result;
}

uint64_t sock_pe_report_mr_completion(uint64_t result, uint64_t a2)
{
  if (*(a2 + 1059))
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 32);
    do
    {
      pthread_mutex_lock((v3 + 168));
      v6 = ofi_mr_map_get(v3 + 256, v5[2]);
      result = pthread_mutex_unlock((v3 + 168));
      if (v6)
      {
        result = v6[8];
        if (v6[9])
        {
          *(a2 + 1160) = *v5;
          *(a2 + 1200) = v5[1];
          if (!result)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (result)
        {
          *(a2 + 1160) = *v5;
          *(a2 + 1200) = v5[1];
LABEL_9:
          result = sock_cntr_inc(result);
        }
      }

LABEL_10:
      ++v4;
      v5 += 3;
    }

    while (v4 < *(a2 + 1059));
  }

  return result;
}

uint64_t sock_pe_recv_atomic_hdrs(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 224))
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 171248);
  if ((*(v8 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v9 = *v8;
  if (!*v8)
  {
    if (ofi_bufpool_grow(*(a1 + 171248)))
    {
      v10 = 0;
      goto LABEL_12;
    }

    v9 = *v8;
  }

  if (v9 == *(v8 + 8))
  {
    *v8 = 0;
    *(v8 + 8) = 0;
  }

  else
  {
    *v8 = *v9;
  }

  if (atomic_fetch_add((v9[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v9 == v9)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v9 = v9;
  v10 = v9 + 6;
LABEL_12:
  *(a2 + 224) = v10;
  v11 = *(a1 + 171248);
  if ((*(v11 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v12 = *v11;
  if (!*v11)
  {
    if (ofi_bufpool_grow(v11))
    {
      *(a2 + 232) = 0;
      return 4294967284;
    }

    v12 = *v11;
  }

  if (v12 == *(v11 + 8))
  {
    *v11 = 0;
    *(v11 + 8) = 0;
  }

  else
  {
    *v11 = *v12;
  }

  if (atomic_fetch_add((v12[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v12 == v12)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v12 = v12;
  *(a2 + 232) = v12 + 6;
  if (!*(a2 + 224))
  {
    return 4294967284;
  }

LABEL_22:
  v13 = *(a2 + 1184);
  if (v13 <= 0x1F)
  {
    v14 = 32 - v13;
    v15 = sock_comm_recv(a2, (a2 + v13 - 24), 32 - v13);
    if (v15 < 1)
    {
      return 4294967261;
    }

    v13 = *(a2 + 1184) + v15;
    *(a2 + 1184) = v13;
    if (v15 != v14)
    {
      return 4294967261;
    }
  }

  if ((*(a2 + 1066) & 2) != 0)
  {
    if (v13 <= 0x27)
    {
      v17 = 40 - v13;
      v18 = sock_comm_recv(a2, (a2 + v13 + 1112), 40 - v13);
      if (v18 < 1)
      {
        return 4294967261;
      }

      *(a2 + 1184) += v18;
      if (v18 != v17)
      {
        return 4294967261;
      }
    }

    v16 = 40;
  }

  else
  {
    v16 = 32;
  }

  v19 = 3 * *(a2 + 2);
  v20 = 24 * *(a2 + 2);
  *a4 = v20;
  v21 = *(a2 + 1184);
  v22 = v16 + 8 * v19;
  if (v21 < v22)
  {
    v23 = v21 - v16;
    v24 = v20 - v23;
    v25 = sock_comm_recv(a2, (a2 + 32 + v23), v20 - v23);
    if (v25 < 1)
    {
      return 4294967261;
    }

    *(a2 + 1184) += v25;
    if (v25 != v24)
    {
      return 4294967261;
    }

    v22 = *a4 + v16;
  }

  *a4 = 0;
  v26 = ofi_datatype_size(*(a2 + 4));
  *a3 = v26;
  v27 = *a4;
  if (*(a2 + 2))
  {
    v28 = 0;
    v29 = (a2 + 40);
    do
    {
      v30 = *v29;
      v29 += 3;
      v27 += v30;
      *a4 = v27;
      ++v28;
    }

    while (v28 < *(a2 + 2));
  }

  v31 = v27 * v26;
  *a4 = v27 * v26;
  if (*(a2 + 6))
  {
    v32 = *(a2 + 1184);
    v33 = v31 + v22;
    if (v32 < v31 + v22)
    {
      v34 = v32 - v22;
      v35 = v31 - v34;
      v36 = sock_comm_recv(a2, (*(a2 + 224) + v34), v31 - v34);
      if (v36 < 1)
      {
        return 4294967261;
      }

      *(a2 + 1184) += v36;
      if (v36 != v35)
      {
        return 4294967261;
      }

      v31 = *a4;
      v33 = *a4 + v22;
    }
  }

  else
  {
    v33 = v22;
  }

  if (*(a2 + 3) != 10 && *(a2 + 1) && sock_pe_recv_field(a2, *(a2 + 232), v31, v33))
  {
    return 4294967261;
  }

  return 0;
}

uint64_t sock_pe_report_send_completion(uint64_t result)
{
  if (!*(result + 1173))
  {
    v1 = result;
    if ((*(result + 1127) & 0x40) != 0)
    {
      result = (*(*(*(*(result + 1128) + 24) + 24) + 24))();
    }

    else
    {
      sock_pe_report_send_cq_completion(result);
      result = *(*(v1 + 1240) + 24);
      if (result)
      {
        result = sock_cntr_inc(result);
      }
    }

    *(v1 + 1173) = 1;
  }

  return result;
}

uint64_t sock_pe_report_send_cq_completion(uint64_t result)
{
  if ((*(result + 1127) & 0x10) == 0)
  {
    v1 = result;
    v2 = *(result + 1240);
    result = *(v2 + 8);
    if (result)
    {
      if (!*v2 || (*(v1 + 1067) & 1) != 0)
      {
        result = (*(result + 464))(result, *(v1 + 1136), v1);
        if (result < 0)
        {
          if (fi_log_enabled(&sock_prov, 0, 4))
          {
            v3 = *__error();
            fi_log(&sock_prov, 0, 4, "sock_pe_report_send_cq_completion", 247, "Failed to report completion %p\n", v1);
            *__error() = v3;
          }

          v4 = *(v1 + 1240);
          result = *(v4 + 72);
          if (result)
          {
            v5 = *(v4 + 8);
            v6 = *(v5 + 8);

            return sock_eq_report_error(result, v5, v6, 0, 28, -28, 0, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_pe_report_write_completion(uint64_t result)
{
  if (!*(result + 1173))
  {
    v1 = result;
    v2 = *(result + 1120);
    if ((v2 & 0x1000000000000000) == 0)
    {
      sock_pe_report_send_cq_completion(result);
      v2 = *(v1 + 1120);
    }

    if ((v2 & 0x4000000000000000) != 0)
    {
      result = (*(*(*(*(v1 + 1128) + 24) + 24) + 24))();
    }

    else
    {
      result = *(*(v1 + 1240) + 48);
      if (result)
      {
        result = sock_cntr_inc(result);
      }
    }

    *(v1 + 1173) = 1;
  }

  return result;
}

uint64_t sock_pe_report_read_completion(uint64_t result)
{
  if (!*(result + 1173))
  {
    v1 = result;
    v2 = *(result + 1120);
    if ((v2 & 0x1000000000000000) == 0)
    {
      sock_pe_report_send_cq_completion(result);
      v2 = *(v1 + 1120);
    }

    if ((v2 & 0x4000000000000000) != 0)
    {
      result = (*(*(*(*(v1 + 1128) + 24) + 24) + 24))();
    }

    else
    {
      result = *(*(v1 + 1240) + 40);
      if (result)
      {
        result = sock_cntr_inc(result);
      }
    }

    *(v1 + 1173) = 1;
  }

  return result;
}

uint64_t sock_pe_progress_tx_send(uint64_t result)
{
  if (!*(result + 17))
  {
    v1 = result;
    if (*result == 1)
    {
      v2 = *(result + 1184);
      if (v2 <= 0x1F)
      {
        v3 = 32 - v2;
        result = sock_comm_send(result, (result + v2 + 1128), 32 - v2);
        if (result < 1)
        {
          return result;
        }

        *(v1 + 1184) += result;
        if (result != v3)
        {
          return result;
        }
      }

      v4 = 32;
    }

    else
    {
      v4 = 24;
    }

    v5 = *(v1 + 1120);
    if ((v5 & 0x20000) != 0)
    {
      v7 = *(v1 + 1184);
      v6 = v4 + 8;
      if (v7 < v4 + 8)
      {
        v8 = v7 - v4;
        v9 = 8 - v8;
        result = sock_comm_send(v1, (v1 + v8 + 1144), 8 - v8);
        if (result < 1)
        {
          return result;
        }

        *(v1 + 1184) += result;
        if (result != v9)
        {
          return result;
        }

        v5 = *(v1 + 1120);
      }
    }

    else
    {
      v6 = v4;
    }

    if ((v5 & 0x2000000) != 0)
    {
      v18 = *(v1 + 1);
      v19 = *(v1 + 1184);
      if (v19 < v6 + v18)
      {
        v20 = v19 - v6;
        v21 = v18 - v20;
        result = sock_comm_send(v1, (v1 + v20 + 800), v18 - v20);
        if (result < 1)
        {
          return result;
        }

        *(v1 + 1184) += result;
        if (result != v21)
        {
          return result;
        }

        v18 = *(v1 + 1);
      }

      *(v1 + 1200) = v18;
    }

    else
    {
      *(v1 + 1200) = 0;
      v10 = *(v1 + 1);
      if (*(v1 + 1))
      {
        v11 = 0;
        v12 = 0;
        v13 = *(v1 + 1184);
        v14 = (v1 + 40);
        do
        {
          v15 = *v14;
          if (v13 >= *v14 + v6)
          {
            v6 += *v14;
          }

          else
          {
            v16 = v13 - v6;
            v17 = v15 - v16;
            result = sock_comm_send(v1, (*(v14 - 1) + v16), v15 - v16);
            if (result < 1)
            {
              return result;
            }

            v13 = *(v1 + 1184) + result;
            *(v1 + 1184) = v13;
            if (result != v17)
            {
              return result;
            }

            v15 = *v14;
            v11 = *(v1 + 1200);
            v10 = *(v1 + 1);
            v6 += *v14;
          }

          v11 += v15;
          *(v1 + 1200) = v11;
          ++v12;
          v14 += 12;
        }

        while (v12 < v10);
      }
    }

    sock_comm_flush(v1);
    result = sock_comm_tx_done(v1);
    if (result)
    {
      *(v1 + 1152) = 0;
      if (*v1 == 1)
      {
        v22 = *(v1 + 1120) | 8;
      }

      else
      {
        v22 = *(v1 + 1120);
      }

      *(v1 + 1120) = v22 | 0x802;
      *(v1 + 1064) = v22 | 0x802;
      if (*(v1 + 1184) == *(v1 + 1192))
      {
        *(v1 + 17) = 1;
        *(*(v1 + 1232) + 72) = 0;
        if ((v22 & 0x4000000) != 0)
        {
          result = sock_pe_report_send_completion(v1);
          *(v1 + 1169) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t sock_pe_progress_tx_write(uint64_t result)
{
  v28[22] = *MEMORY[0x29EDCA608];
  if (!*(result + 17))
  {
    v2 = result;
    v3 = result + 1120;
    if ((*(result + 1122) & 2) != 0)
    {
      v5 = *(result + 1184);
      if (v5 <= 0x1F)
      {
        v6 = 32 - v5;
        result = sock_comm_send(result, (v3 + v5), 32 - v5);
        if (result < 1)
        {
          goto LABEL_2;
        }

        *(v2 + 1184) += result;
        if (result != v6)
        {
          goto LABEL_2;
        }
      }

      v4 = 32;
    }

    else
    {
      v4 = 24;
    }

    v7 = *(v2 + 2);
    v8 = 24 * v7;
    if (*(v2 + 2))
    {
      v9 = v28;
      v10 = (v2 + 72);
      do
      {
        *(v9 - 1) = *(v10 - 1);
        v11 = *v10;
        v10 += 12;
        *v9 = v11;
        v9 += 3;
        --v7;
      }

      while (v7);
    }

    v12 = *(v2 + 1184);
    v13 = v8 + v4;
    if (v12 >= v8 + v4 || (v14 = v12 - v4, v15 = v8 - v14, result = sock_comm_send(v2, &v27[v14], v8 - v14), result >= 1) && (v12 = *(v2 + 1184) + result, *(v2 + 1184) = v12, result == v15))
    {
      if ((*(v3 + 3) & 2) != 0)
      {
        v23 = *(v2 + 1);
        if (v12 < v13 + v23)
        {
          v24 = v12 - v13;
          v25 = v23 - v24;
          result = sock_comm_send(v2, (v2 + v24 + 800), v23 - v24);
          if (result < 1)
          {
            goto LABEL_2;
          }

          *(v2 + 1184) += result;
          if (result != v25)
          {
            goto LABEL_2;
          }

          v23 = *(v2 + 1);
        }

        *(v2 + 1200) = v23;
      }

      else
      {
        *(v2 + 1200) = 0;
        v16 = *(v2 + 1);
        if (*(v2 + 1))
        {
          v17 = 0;
          v18 = 0;
          v19 = (v2 + 40);
          do
          {
            v20 = *v19;
            if (v12 >= *v19 + v13)
            {
              v13 += *v19;
            }

            else
            {
              v21 = v12 - v13;
              v22 = v20 - v21;
              result = sock_comm_send(v2, (*(v19 - 1) + v21), v20 - v21);
              if (result < 1)
              {
                goto LABEL_2;
              }

              v12 = *(v2 + 1184) + result;
              *(v2 + 1184) = v12;
              if (result != v22)
              {
                goto LABEL_2;
              }

              v20 = *v19;
              v17 = *(v2 + 1200);
              v16 = *(v2 + 1);
              v13 += *v19;
            }

            v17 += v20;
            *(v2 + 1200) = v17;
            ++v18;
            v19 += 12;
          }

          while (v18 < v16);
        }
      }

      sock_comm_flush(v2);
      result = sock_comm_tx_done(v2);
      if (result)
      {
        if (*(v2 + 1184) == *(v2 + 1192))
        {
          *(v2 + 17) = 1;
          *(*(v2 + 1232) + 72) = 0;
        }

        v26 = *(v2 + 1120) | 0x204;
        *(v2 + 1120) = v26;
        *(v2 + 1064) = v26;
      }
    }
  }

LABEL_2:
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_progress_tx_read(uint64_t result)
{
  v14[23] = *MEMORY[0x29EDCA608];
  if (!*(result + 17))
  {
    v2 = result;
    v3 = *(result + 1);
    v4 = 24 * v3;
    *(result + 1200) = 0;
    if (v3)
    {
      v5 = 0;
      v6 = v14;
      v7 = (result + 40);
      do
      {
        *(v6 - 1) = *(v7 - 1);
        v8 = *v7;
        v7 += 6;
        *v6 = v8;
        v6 = (v6 + 24);
        v5 += v8;
        *(result + 1200) = v5;
        --v3;
      }

      while (v3);
    }

    v9 = *(result + 1184);
    if (v9 >= v4 + 24 || (v10 = v9 - 24, v11 = v4 - v10, result = sock_comm_send(result, &v13[v10], v4 - v10), result >= 1) && (*(v2 + 1184) += result, result == v11))
    {
      sock_comm_flush(v2);
      result = sock_comm_tx_done(v2);
      if (result)
      {
        if (*(v2 + 1184) == *(v2 + 1192))
        {
          *(v2 + 17) = 1;
          *(*(v2 + 1232) + 72) = 0;
        }

        v12 = *(v2 + 1120) | 0x104;
        *(v2 + 1120) = v12;
        *(v2 + 1064) = v12;
      }
    }
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_progress_tx_atomic(uint64_t result)
{
  v35[22] = *MEMORY[0x29EDCA608];
  if (!*(result + 17))
  {
    v2 = result;
    v3 = *(result + 1184);
    if (v3 > 0x1F || (v4 = 32 - v3, result = sock_comm_send(result, (result + v3 - 24), 32 - v3), result >= 1) && (v3 = *(v2 + 1184) + result, *(v2 + 1184) = v3, result == v4))
    {
      if ((*(v2 + 1122) & 2) != 0)
      {
        if (v3 <= 0x27)
        {
          v6 = 40 - v3;
          result = sock_comm_send(v2, (v2 + v3 + 1112), 40 - v3);
          if (result < 1)
          {
            goto LABEL_2;
          }

          v3 = *(v2 + 1184) + result;
          *(v2 + 1184) = v3;
          if (result != v6)
          {
            goto LABEL_2;
          }
        }

        v5 = 40;
      }

      else
      {
        v5 = 32;
      }

      v7 = *(v2 + 2);
      v8 = 24 * v7;
      if (*(v2 + 2))
      {
        v9 = v35;
        v10 = (v2 + 72);
        do
        {
          *(v9 - 1) = *(v10 - 1);
          v11 = *v10;
          v10 += 12;
          *v9 = v11;
          v9 += 3;
          --v7;
        }

        while (v7);
      }

      v12 = v8 + v5;
      if (v3 >= v8 + v5 || (v13 = v3 - v5, v14 = v8 - v13, result = sock_comm_send(v2, &v34[v13], v8 - v13), result >= 1) && (*(v2 + 1184) += result, result == v14))
      {
        v15 = ofi_datatype_size(*(v2 + 4));
        if ((*(v2 + 1123) & 2) != 0)
        {
          result = sock_pe_send_field(v2, v2 + 800 + *(v2 + 1), *(v2 + 6), v12);
          if (result)
          {
            goto LABEL_2;
          }

          result = sock_pe_send_field(v2, v2 + 800, *(v2 + 1), v12 + *(v2 + 6));
          if (result)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v16 = v15;
          v17 = *(v2 + 6);
          if (*(v2 + 6))
          {
            v18 = 0;
            v19 = *(v2 + 1184);
            v20 = (v2 + 112);
            while (1)
            {
              v21 = *v20 * v16;
              v22 = v21 + v12;
              if (v19 < v21 + v12)
              {
                v23 = v19 - v12;
                v24 = v21 - v23;
                result = sock_comm_send(v2, (*(v20 - 1) + v23), v21 - v23);
                if (result < 1)
                {
                  goto LABEL_2;
                }

                v19 = *(v2 + 1184) + result;
                *(v2 + 1184) = v19;
                if (result != v24)
                {
                  goto LABEL_2;
                }

                v17 = *(v2 + 6);
                v22 = v12 + *v20 * v16;
              }

              ++v18;
              v20 += 12;
              v12 = v22;
              if (v18 >= v17)
              {
                goto LABEL_31;
              }
            }
          }

          v22 = v12;
LABEL_31:
          v25 = *(v2 + 1);
          if (*(v2 + 1))
          {
            v26 = 0;
            v27 = (v2 + 40);
            do
            {
              if (*(v2 + 3) == 10)
              {
                v28 = v22;
              }

              else
              {
                v29 = *v27 * v16;
                v30 = *(v2 + 1184);
                v28 = v29 + v22;
                if (v30 < v29 + v22)
                {
                  v31 = v29 - (v30 - v22);
                  result = sock_comm_send(v2, (*(v27 - 1) + v30 - v22), v31);
                  if (result < 1)
                  {
                    goto LABEL_2;
                  }

                  *(v2 + 1184) += result;
                  if (result != v31)
                  {
                    goto LABEL_2;
                  }

                  v25 = *(v2 + 1);
                  v28 = v22 + *v27 * v16;
                }
              }

              ++v26;
              v27 += 12;
              v22 = v28;
            }

            while (v26 < v25);
          }
        }

        sock_comm_flush(v2);
        result = sock_comm_tx_done(v2);
        if (result)
        {
          if (*(v2 + 1184) == *(v2 + 1192))
          {
            *(v2 + 17) = 1;
            *(*(v2 + 1232) + 72) = 0;
          }

          v32 = 528;
          if (*(v2 + 3) == 10)
          {
            v32 = 272;
          }

          v33 = v32 | *(v2 + 1120);
          *(v2 + 1120) = v33;
          *(v2 + 1064) = v33;
        }
      }
    }
  }

LABEL_2:
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_pe_progress_tx_conn_msg(uint64_t result)
{
  if (!*(result + 17))
  {
    v1 = result;
    v2 = *(result + 1);
    v3 = *(result + 1184);
    if (v3 < v2 + 24)
    {
      v4 = v3 - 24;
      v5 = v2 - v4;
      result = sock_comm_send(result, (result + v4 + 800), v2 - v4);
      if (result < 1)
      {
        return result;
      }

      *(v1 + 1184) += result;
      if (result != v5)
      {
        return result;
      }

      v2 = *(v1 + 1);
    }

    *(v1 + 1200) = v2;
    sock_comm_flush(v1);
    result = sock_comm_tx_done(v1);
    if (result)
    {
      if (*(v1 + 1184) == *(v1 + 1192))
      {
        *(v1 + 17) = 1;
        *(*(v1 + 1232) + 72) = 0;
        *(v1 + 1169) = 1;
      }
    }
  }

  return result;
}

char *sock_rx_ctx_alloc(__int128 *a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x200uLL, 0x10A00406B8A6434uLL);
  v7 = v6;
  if (v6)
  {
    *(v6 + 34) = v6 + 272;
    *(v6 + 35) = v6 + 272;
    *(v6 + 32) = v6 + 256;
    *(v6 + 33) = v6 + 256;
    *(v6 + 36) = v6 + 288;
    *(v6 + 37) = v6 + 288;
    *(v6 + 38) = v6 + 304;
    *(v6 + 39) = v6 + 304;
    *(v6 + 40) = v6 + 320;
    *(v6 + 41) = v6 + 320;
    *(v6 + 42) = v6 + 336;
    *(v6 + 43) = v6 + 336;
    *(v6 + 52) = v6 + 320;
    pthread_mutex_init((v6 + 352), 0);
    *v7 = 5;
    *(v7 + 1) = a2;
    *(v7 + 13) = sock_get_tx_size(*(a1 + 6));
    v8 = a1[3];
    v10 = *a1;
    v9 = a1[1];
    *(v7 + 456) = a1[2];
    *(v7 + 472) = v8;
    *(v7 + 424) = v10;
    *(v7 + 440) = v9;
    *(v7 + 25) = a3;
  }

  return v7;
}

void sock_rx_ctx_free(uint64_t a1)
{
  v2 = (a1 + 320);
  for (i = *(a1 + 320); i != v2; i = *v2)
  {
    v4 = i - 35;
    v6 = *i;
    v5 = i[1];
    *v5 = v6;
    *(v6 + 8) = v5;
    free(v4);
  }

  pthread_mutex_destroy((a1 + 352));
  free(*(a1 + 488));

  free(a1);
}

char *sock_tx_context_alloc(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  memset(v24, 0, sizeof(v24));
  v8 = malloc_type_calloc(0x228uLL, 1uLL, 0xF19B6B58uLL);
  v9 = v8;
  if (v8)
  {
    if (!a3)
    {
      v15 = *(a1 + 48);
      v16 = 696 * v15;
      v17 = v15 == 0;
      v18 = 178176;
      if (!v17)
      {
        v18 = v16;
      }

      v19 = v18 < 1;
      v20 = v18 - 1;
      if (v19)
      {
        goto LABEL_13;
      }

      v21 = 2 << (__clz(v20) ^ 0x3Fu);
      *(v8 + 11) = v21;
      *(v8 + 12) = v21 - 1;
      *(v8 + 14) = 0;
      *(v8 + 15) = 0;
      *(v8 + 13) = 0;
      v22 = malloc_type_calloc(1uLL, v21, 0x342F85FCuLL);
      *(v9 + 16) = v22;
      if (!v22)
      {
        goto LABEL_13;
      }
    }

    *(v9 + 45) = v9 + 360;
    *(v9 + 46) = v9 + 360;
    *(v9 + 43) = v9 + 344;
    *(v9 + 44) = v9 + 344;
    *(v9 + 47) = v9 + 376;
    *(v9 + 48) = v9 + 376;
    *(v9 + 49) = v9 + 392;
    *(v9 + 50) = v9 + 392;
    pthread_mutex_init((v9 + 136), 0);
    pthread_mutex_init((v9 + 488), 0);
    if (a4 == 7)
    {
      *(v9 + 51) = a3;
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    *v9 = v10;
    *(v9 + 1) = a2;
    *(v9 + 10) = v10;
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    *(v9 + 424) = *(a1 + 16);
    *(v9 + 408) = *a1;
    *(v9 + 456) = v11;
    *(v9 + 472) = v12;
    *(v9 + 440) = v13;
    *(v9 + 53) |= 0x8000000uLL;
    if (!a3)
    {
      v14 = sock_rx_ctx_alloc(v24, 0, 0);
      *(v9 + 37) = v14;
      if (!v14)
      {
LABEL_13:
        free(v9);
        return 0;
      }

      *(v14 + 23) = 1;
    }
  }

  return v9;
}

void sock_tx_ctx_free(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 136));
  pthread_mutex_destroy((a1 + 488));
  if (!*(a1 + 204))
  {
    free(*(a1 + 128));
    sock_rx_ctx_free(*(a1 + 296));
  }

  free(a1);
}

void *sock_tx_ctx_write(void *a1, char *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v6 = a1[12] & a1[15];
  v7 = a1[11] - v6;
  v8 = (a1[16] + v6);
  v9 = __n - v7;
  if (__n > v7)
  {
    memcpy(v8, __src, v7);
    v8 = a1[16];
    __src = &v4[v7];
    __n = v9;
  }

  result = memcpy(v8, __src, __n);
  a1[15] += v3;
  return result;
}

uint64_t sock_tx_ctx_commit(uint64_t a1)
{
  *(a1 + 112) = *(a1 + 120);
  sock_pe_signal(*(*(a1 + 336) + 288));

  return pthread_mutex_unlock((a1 + 136));
}

void *sock_tx_ctx_write_op_send(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __src = a3;
  v13 = a5;
  v14 = a4;
  v11 = a7;
  v12 = a6;
  v10 = a8;
  sock_tx_ctx_write(a1, a2, 8uLL);
  sock_tx_ctx_write(a1, &__src, 8uLL);
  sock_tx_ctx_write(a1, &v14, 8uLL);
  sock_tx_ctx_write(a1, &v13, 8uLL);
  sock_tx_ctx_write(a1, &v12, 8uLL);
  sock_tx_ctx_write(a1, &v11, 8uLL);
  return sock_tx_ctx_write(a1, &v10, 8uLL);
}

void *sock_tx_ctx_read_op_send(void *result, char *__dst, char *a3, char *a4, char *a5, char *a6, char *a7, char *a8)
{
  v15 = result;
  v16 = result[12] & result[13];
  v17 = result[11] - v16;
  v18 = result[16];
  if (v17 < 8)
  {
    memcpy(__dst, (v18 + v16), v17);
    result = memcpy(&__dst[v17], v15[16], 8 - v17);
  }

  else
  {
    *__dst = *(v18 + v16);
  }

  v19 = v15[12];
  v20 = v15[13] + 8;
  v15[13] = v20;
  v21 = v19 & v20;
  v22 = v15[11] - v21;
  v23 = v15[16];
  if (v22 < 8)
  {
    memcpy(a3, (v23 + v21), v15[11] - v21);
    result = memcpy(&a3[v22], v15[16], 8 - v22);
  }

  else
  {
    *a3 = *(v23 + v21);
  }

  v24 = v15[12];
  v25 = v15[13] + 8;
  v15[13] = v25;
  v26 = v24 & v25;
  v27 = v15[11] - v26;
  v28 = v15[16];
  if (v27 < 8)
  {
    memcpy(a4, (v28 + v26), v15[11] - v26);
    result = memcpy(&a4[v27], v15[16], 8 - v27);
  }

  else
  {
    *a4 = *(v28 + v26);
  }

  v29 = v15[12];
  v30 = v15[13] + 8;
  v15[13] = v30;
  v31 = v29 & v30;
  v32 = v15[11] - v31;
  v33 = v15[16];
  if (v32 < 8)
  {
    memcpy(a5, (v33 + v31), v15[11] - v31);
    result = memcpy(&a5[v32], v15[16], 8 - v32);
  }

  else
  {
    *a5 = *(v33 + v31);
  }

  v34 = v15[12];
  v35 = v15[13] + 8;
  v15[13] = v35;
  v36 = v34 & v35;
  v37 = v15[11] - v36;
  v38 = v15[16];
  if (v37 < 8)
  {
    memcpy(a6, (v38 + v36), v15[11] - v36);
    result = memcpy(&a6[v37], v15[16], 8 - v37);
  }

  else
  {
    *a6 = *(v38 + v36);
  }

  v39 = v15[12];
  v40 = v15[13] + 8;
  v15[13] = v40;
  v41 = v39 & v40;
  v42 = v15[11] - v41;
  v43 = v15[16];
  if (v42 < 8)
  {
    memcpy(a7, (v43 + v41), v15[11] - v41);
    result = memcpy(&a7[v42], v15[16], 8 - v42);
  }

  else
  {
    *a7 = *(v43 + v41);
  }

  v44 = v15[12];
  v45 = v15[13] + 8;
  v15[13] = v45;
  v46 = v44 & v45;
  v47 = v15[11] - v46;
  v48 = v15[16];
  if (v47 < 8)
  {
    memcpy(a8, (v48 + v46), v15[11] - v46);
    result = memcpy(&a8[v47], v15[16], 8 - v47);
  }

  else
  {
    *a8 = *(v48 + v46);
  }

  v15[13] += 8;
  return result;
}

uint64_t sock_wait_get_obj(uint64_t a1, void *a2)
{
  if (sock_dom_check_manual_progress(*(a1 + 32)))
  {
    return 4294967218;
  }

  v5 = *(a1 + 56);
  if (v5 == 4)
  {
    result = 0;
    *a2 = a1 + 64;
    a2[1] = a1 + 128;
  }

  else if (v5 == 3)
  {
    result = 0;
    *a2 = *(a1 + 64);
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 0))
    {
      v6 = *__error();
      fi_log(&sock_prov, 0, 0, "sock_wait_get_obj", 72, "Invalid wait obj type\n");
      *__error() = v6;
    }

    return 4294967274;
  }

  return result;
}

ssize_t sock_wait_signal(uint64_t a1)
{
  v5 = *(a1 + 56);
  if (v5 == 4)
  {
    v8 = (a1 + 128);

    return pthread_cond_signal(v8);
  }

  else
  {
    v9 = v1;
    if (v5 != 3)
    {
      result = fi_log_enabled(&sock_prov, 0, 0);
      if (!result)
      {
        return result;
      }

      v7 = *__error();
      fi_log(&sock_prov, 0, 0, "sock_wait_signal", 211, "Invalid wait object type\n", v2, v9, v3, v4);
      goto LABEL_11;
    }

    result = send(*(a1 + 68), &sock_wait_signal_c, 1uLL, 0);
    if (result != 1)
    {
      result = fi_log_enabled(&sock_prov, 0, 0);
      if (result)
      {
        v7 = *__error();
        fi_log(&sock_prov, 0, 0, "sock_wait_signal", 204, "failed to signal\n", v2, v9, v3, v4);
LABEL_11:
        result = __error();
        *result = v7;
      }
    }
  }

  return result;
}

uint64_t sock_wait_close(char *a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 5);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      free(v2);
      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*(a1 + 14) == 3)
  {
    close(*(a1 + 16));
    close(*(a1 + 17));
  }

  atomic_fetch_add((*(a1 + 4) + 40), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t sock_wait_open(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  if (!a2)
  {
    v6 = 3;
    goto LABEL_11;
  }

  if (*a2 > 4u || ((1 << *a2) & 0x1A) == 0)
  {
    if (fi_log_enabled(&sock_prov, 0, 0))
    {
      v11 = *__error();
      fi_log(&sock_prov, 0, 0, "sock_verify_wait_attr", 280, "Invalid wait object type\n");
      *__error() = v11;
    }

    return 4294967274;
  }

  if (*(a2 + 8))
  {
    return 4294967274;
  }

  if (*a2 == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = *a2;
  }

LABEL_11:
  v7 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10A00403B0DC4F5uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  *&v7->__opaque[48] = v6;
  if (v6 == 4)
  {
    pthread_mutex_init(v7 + 1, 0);
    pthread_cond_init(&v8[2], 0);
  }

  else
  {
    if (v6 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 0))
      {
        v12 = *__error();
        fi_log(&sock_prov, 0, 0, "sock_wait_init", 110, "Invalid wait object type\n");
        *__error() = v12;
      }

      v10 = 4294967274;
      goto LABEL_26;
    }

    if (socketpair(1, 1, 0, &v7[1]))
    {
      v9 = *__error();
      if (v9)
      {
        v10 = -v9;
LABEL_26:
        free(v8);
        return v10;
      }
    }

    else
    {
      v14 = fd_set_nonblock(v8[1].__sig);
      if (v14)
      {
        v10 = v14;
        close(v8[1].__sig);
        close(HIDWORD(v8[1].__sig));
        goto LABEL_26;
      }
    }
  }

  v10 = 0;
  *&v8->__opaque[8] = &sock_wait_fi_ops;
  *&v8->__opaque[16] = &sock_wait_ops;
  v8->__sig = 16;
  *v8->__opaque = 0;
  *&v8->__opaque[24] = a1;
  *&v8->__opaque[48] = v6;
  atomic_fetch_add((a1 + 40), 1u);
  *&v8->__opaque[32] = &v8->__opaque[32];
  *&v8->__opaque[40] = &v8->__opaque[32];
  *a3 = v8;
  return v10;
}

uint64_t sock_wait_control(uint64_t a1, int a2, void *a3)
{
  if (a2 == 5)
  {
    return sock_wait_get_obj(a1, a3);
  }

  else
  {
    return 4294967274;
  }
}

uint64_t sock_wait_wait(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 < 1)
  {
    realtime_ms = 0;
  }

  else
  {
    realtime_ms = ofi_get_realtime_ms();
  }

  for (i = *(a1 + 40); i != (a1 + 40); i = *i)
  {
    v6 = i[2];
    if (*v6 == 15)
    {
      sock_cntr_progress(i[2]);
    }

    else if (*v6 == 14)
    {
      sock_cq_progress(i[2]);
      pthread_mutex_lock((v6 + 272));
      v8 = *(v6 + 224);
      v7 = *(v6 + 232);
      pthread_mutex_unlock((v6 + 272));
      if (v7 != v8)
      {
        return 1;
      }
    }
  }

  if (v2 >= 1)
  {
    v9 = ofi_get_realtime_ms();
    v2 = (realtime_ms - v9 + v2) & ~((realtime_ms - v9 + v2) >> 31);
  }

  v10 = *(a1 + 56);
  if (v10 == 4)
  {

    return ofi_wait_cond((a1 + 128), (a1 + 64), v2);
  }

  else if (v10 == 3)
  {
    result = fi_poll_fd(*(a1 + 64), v2);
    if (result)
    {
      if (result >= 1)
      {
        v16 = 0;
        v11 = result + 1;
        while (recv(*(a1 + 64), &v16, 1uLL, 0) == 1)
        {
          if (--v11 <= 1)
          {
            return 0;
          }
        }

        result = fi_log_enabled(&sock_prov, 0, 0);
        if (result)
        {
          v14 = *__error();
          fi_log(&sock_prov, 0, 0, "sock_wait_wait", 171, "failed to read wait_fd\n");
          v15 = __error();
          result = 0;
          *v15 = v14;
        }
      }
    }

    else
    {
      return 4294967236;
    }
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 0))
    {
      v12 = *__error();
      fi_log(&sock_prov, 0, 0, "sock_wait_wait", 186, "Invalid wait object type\n");
      *__error() = v12;
    }

    return 4294967274;
  }

  return result;
}

uint64_t sock_av_get_addr_index(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 264));
  v4 = **(a1 + 120);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 48;
    do
    {
      v7 = (*(a1 + 128) + v6);
      v9 = *v7;
      v8 = (v7 - 48);
      if (v9)
      {
        if (ofi_equals_sockaddr(a2, v8))
        {
          goto LABEL_8;
        }

        v4 = **(a1 + 120);
      }

      ++v5;
      v6 += 56;
    }

    while (v5 < v4);
  }

  v5 = 0xFFFFFFFFLL;
LABEL_8:
  pthread_mutex_unlock((a1 + 264));
  return v5;
}

BOOL ofi_equals_sockaddr(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 1);
  switch(v4)
  {
    case 30:
LABEL_5:
      v5 = bswap32(*(a1 + 2)) >> 16;
      goto LABEL_10;
    case 27:
      LOWORD(v5) = bswap64(*(a1 + 24));
      goto LABEL_10;
    case 2:
      goto LABEL_5;
  }

  if (fi_log_enabled(&core_prov, 0, 1))
  {
    v6 = *__error();
    fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
    LOWORD(v5) = 0;
    *__error() = v6;
  }

  else
  {
LABEL_9:
    LOWORD(v5) = 0;
  }

LABEL_10:
  if (ofi_addr_get_port(a2) != v5)
  {
    return 0;
  }

  v7 = *(a1 + 1);
  if (v7 != *(a2 + 1))
  {
    return 0;
  }

  if (v7 == 30 || v7 == 27)
  {
    return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  }

  if (v7 != 2)
  {
    return 0;
  }

  return *(a1 + 4) == *(a2 + 4);
}

uint64_t sock_av_compare_addr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  pthread_mutex_lock((a1 + 264));
  v7 = v6 & a2;
  v8 = **(a1 + 120);
  v10 = (v6 & a2) < 0 != v9 || v7 >= v8;
  if (v10 || (v13 = v6 & a3, (v6 & a3) < 0) || v13 >= v8)
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v11 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_av_compare_addr", 101, "requested rank is larger than av table\n");
      *__error() = v11;
    }

    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = !ofi_equals_sockaddr(*(a1 + 128) + 56 * v7, *(a1 + 128) + 56 * v13);
  }

  pthread_mutex_unlock((a1 + 264));
  return v12;
}

uint64_t sock_av_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 4294967274;
  }

  v5 = *a2;
  if (*a2 > 2u || (*(a2 + 41) & 1) != 0 && !*(a2 + 3))
  {
    return 4294967274;
  }

  if (*(a2 + 1) >= 17)
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v9 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_verify_av_attr", 565, "Invalid rx_ctx_bits\n");
      *__error() = v9;
    }

    return 4294967274;
  }

  if (!v5)
  {
    v5 = 2;
    *a2 = 2;
  }

  v10 = *(a1 + 224);
  if (v10 && v10 != v5)
  {
    return 4294967274;
  }

  v13 = malloc_type_calloc(1uLL, 0x148uLL, 0x10F0040D03BCEEAuLL);
  if (!v13)
  {
    return 4294967284;
  }

  v14 = v13;
  v15 = *a2;
  v16 = a2[2];
  *(v13 + 4) = a2[1];
  *(v13 + 5) = v16;
  *(v13 + 3) = v15;
  v17 = *(a2 + 1);
  if (!v17)
  {
    v17 = sock_av_def_sz;
  }

  v13[7] = v17;
  v18 = *(a2 + 3);
  if (v18)
  {
    if (ofi_shm_map((v13 + 18), v18, 8 * v17 + 16 + 56 * v17, *(a2 + 10) & 0x100, v13 + 15) || (v20 = v14[15], v20 == -1))
    {
      if (fi_log_enabled(&sock_prov, 0, 5))
      {
        v19 = *__error();
        fi_log(&sock_prov, 0, 5, "sock_av_open", 603, "map failed\n");
        *__error() = v19;
      }

      goto LABEL_50;
    }

    v14[17] = v20 + 2;
    v14[10] = v20 + 2;
    *(a2 + 4) = v20 + 2;
    if (*(a2 + 41))
    {
      v21 = *v20;
      if (*v20 != v14[7])
      {
        goto LABEL_46;
      }
    }

    else
    {
      v21 = v14[7];
      *v20 = v21;
      v20[1] = 0;
    }

    *(v14 + 44) = 1;
  }

  else
  {
    v20 = malloc_type_calloc(1uLL, 56 * v17 + 16, 0x4239DF36uLL);
    v14[15] = v20;
    if (!v20)
    {
      v11 = 4294967284;
LABEL_51:
      free(v14);
      return v11;
    }

    v21 = v14[7];
    *v20 = v21;
  }

  v22 = v21;
  if (!v14[9])
  {
    v22 = 0;
  }

  v14[16] = &v20[v22 + 2];
  *v14 = 11;
  v14[1] = a4;
  v14[2] = &sock_av_fi_ops;
  if (*a2 != 1)
  {
    if (*a2 == 2)
    {
      v23 = &sock_at_ops;
      goto LABEL_36;
    }

LABEL_46:
    if (*(a2 + 3))
    {
      ofi_shm_unmap((v14 + 18));
    }

    else
    {
      v29 = v14[15];
      if (v29 != -1)
      {
        free(v29);
      }
    }

LABEL_50:
    v11 = 4294967274;
    goto LABEL_51;
  }

  v23 = &sock_am_ops;
LABEL_36:
  v14[3] = v23;
  *(v14 + 10) = 0;
  atomic_fetch_add((a1 + 112), 1u);
  v14[4] = a1 - 120;
  v24 = *(a1 - 96);
  if (v24 == 2)
  {
    v25 = 16;
    goto LABEL_40;
  }

  if (v24 != 3)
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v28 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_av_open", 660, "Invalid address format: only IP supported\n");
      *__error() = v28;
    }

    goto LABEL_46;
  }

  v25 = 28;
LABEL_40:
  *(v14 + 27) = v25;
  v14[23] = v14 + 23;
  v14[24] = v14 + 23;
  pthread_mutex_init((v14 + 25), 0);
  pthread_mutex_init((v14 + 33), 0);
  v11 = 0;
  v26 = *(a2 + 1);
  *(v14 + 26) = v26;
  if (v26)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v14[12] = v27;
  *a3 = v14;
  return v11;
}

uint64_t ofi_addr_get_port(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 1);
    switch(v1)
    {
      case 30:
        goto LABEL_5;
      case 27:
        LOWORD(v2) = bswap64(*(a1 + 24));
        return v2;
      case 2:
LABEL_5:
        v2 = bswap32(*(a1 + 2)) >> 16;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 1))
        {
          v3 = *__error();
          fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
          v4 = __error();
          LOWORD(v2) = 0;
          *v4 = v3;
        }

        else
        {
          LOWORD(v2) = 0;
        }

        break;
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

uint64_t sock_av_close(uint64_t a1)
{
  if (atomic_load((a1 + 40)))
  {
    return 4294967280;
  }

  if (*(a1 + 176))
  {
    if (ofi_shm_unmap(a1 + 144))
    {
      if (fi_log_enabled(&sock_prov, 0, 5))
      {
        v4 = *__error();
        v5 = __error();
        v6 = strerror(*v5);
        fi_log(&sock_prov, 0, 5, "sock_av_close", 512, "unmap failed: %s\n", v6);
        *__error() = v4;
      }
    }
  }

  else
  {
    free(*(a1 + 120));
  }

  atomic_fetch_add((*(a1 + 32) + 232), 0xFFFFFFFF);
  pthread_mutex_destroy((a1 + 200));
  pthread_mutex_destroy((a1 + 264));
  free(a1);
  return 0;
}

uint64_t sock_av_bind(uint64_t a1, void *a2)
{
  if (*a2 != 13)
  {
    return 4294967274;
  }

  result = 0;
  *(a1 + 112) = a2;
  return result;
}

uint64_t sock_av_insert(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  pthread_mutex_lock((a1 + 264));
  v12 = sock_check_table_in(a1, a2, a4, a3, a5, a6);
  pthread_mutex_unlock((a1 + 264));
  return v12;
}

uint64_t sock_av_insertsvc(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {

    return _sock_av_insertsvc(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v8 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_av_insertsvc", 361, "Port not provided\n");
      *__error() = v8;
    }

    return 4294967274;
  }
}

uint64_t sock_av_insertsym(uint64_t a1, char *__s, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v47 = *MEMORY[0x29EDCA608];
  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v45 = 0u;
  *__str = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v38 = 0u;
  v39 = 0u;
  if (__s && a4 && *__s)
  {
    v10 = strlen(__s);
    v11 = v10 - 1;
    v12 = -1;
    do
    {
      v13 = __s[v11] - 48;
      ++v12;
      --v11;
    }

    while (v13 < 0xA);
    v14 = &__s[v10 - v12];
    if (*v14 == 46)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v10 - v12 <= 63)
    {
      __memcpy_chk();
      v30 = atoi(a4);
      v29 = atoi(v14);
      if (a3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          v22 = a5;
          v33 = v19;
          if (a5)
          {
            v23 = v30;
            v24 = v29 + v19;
            do
            {
              v25 = snprintf(__str, 0x40uLL, "%s%0*d", v46, v15, v24);
              v26 = snprintf(v38, 0x40uLL, "%d", v23);
              if ((v25 - 1) > 0x3E || (v26 - 1) > 0x3E)
              {
                if (fi_log_enabled(&sock_prov, 0, 5))
                {
                  v28 = *__error();
                  fi_log(&sock_prov, 0, 5, "sock_av_insertsym", 413, "Node/service value is not valid\n");
                  *__error() = v28;
                }

                v20 = -257;
              }

              else
              {
                v27 = _sock_av_insertsvc(a1, __str, v38, a6, a7, a8);
                if (v27 == 1)
                {
                  ++v21;
                }

                else
                {
                  v20 = v27;
                }
              }

              ++v23;
              --v22;
            }

            while (v22);
          }

          v19 = v33 + 1;
        }

        while (v33 + 1 != a3);
        if (v21 <= 0)
        {
          result = v20;
        }

        else
        {
          result = v21;
        }
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 4294967039;
    }
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v17 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_av_insertsym", 381, "Node/service not provided\n");
      *__error() = v17;
    }

    result = 4294967274;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_av_remove(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 200));
  for (i = *(a1 + 184); i != (a1 + 184); i = *i)
  {
    v7 = i[2];
    pthread_mutex_lock((*(v7 + 224) + 12880));
    if (a3)
    {
      v8 = a2;
      v9 = a3;
      do
      {
        v10 = *v8++;
        v11 = *(v7 + 224);
        v12 = *(*(v11 + 48) + 96) & v10;
        v13 = v11 + 552;
        v14 = *(v11 + 552 + 8 * (v12 >> 10));
        if (v14)
        {
          if (!*(v11 + 4 * (v12 >> 10) + 8744))
          {
            sock_av_remove_cold_1();
          }

          v15 = *(v14 + 8 * (v12 & 0x3FF));
          if (v15 >= 2)
          {
            if (*(v15 + 88) == v12)
            {
              *(v15 + 88) = -1;
            }

            ofi_idm_clear(v13, v12);
          }
        }

        --v9;
      }

      while (v9);
    }

    pthread_mutex_unlock((*(v7 + 224) + 12880));
  }

  pthread_mutex_unlock((a1 + 200));
  pthread_mutex_lock((a1 + 264));
  if (a3)
  {
    v16 = *(a1 + 128);
    do
    {
      v17 = *a2++;
      *(v16 + 56 * v17 + 48) = 0;
      --a3;
    }

    while (a3);
  }

  pthread_mutex_unlock((a1 + 264));
  return 0;
}

uint64_t sock_av_lookup(uint64_t a1, uint64_t a2, void *a3, size_t *a4)
{
  v8 = *(a1 + 96);
  pthread_mutex_lock((a1 + 264));
  v9 = v8 & a2;
  if ((v8 & a2) < 0 != v10 || v9 >= **(a1 + 120))
  {
    if (fi_log_enabled(&sock_prov, 0, 5))
    {
      v12 = *__error();
      fi_log(&sock_prov, 0, 5, "sock_av_lookup", 311, "requested address not inserted\n");
      *__error() = v12;
    }

    pthread_mutex_unlock((a1 + 264));
    return 4294967274;
  }

  else
  {
    if (*a4 >= *(a1 + 108))
    {
      v14 = *(a1 + 108);
    }

    else
    {
      v14 = *a4;
    }

    memcpy(a3, (*(a1 + 128) + 56 * v9), v14);
    pthread_mutex_unlock((a1 + 264));
    result = 0;
    *a4 = *(a1 + 108);
  }

  return result;
}

char *sock_av_straddr(uint64_t a1, uint64_t a2, char *a3, size_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = *(a2 + 1);
  v8 = (a2 + 4);
  if (v7 != 2)
  {
    v8 = 0;
  }

  if (v7 == 27)
  {
    v8 = (a2 + 8);
  }

  if (v7 == 30)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = v8;
  }

  if (inet_ntop(v7, v9, v17, 0x2Eu))
  {
    v10 = *(a2 + 1);
    if (v10 != 30)
    {
      if (v10 == 27)
      {
        LOWORD(v11) = bswap64(*(a2 + 24));
        goto LABEL_18;
      }

      if (v10 != 2)
      {
        if (fi_log_enabled(&core_prov, 0, 1))
        {
          v12 = *__error();
          fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
          v13 = __error();
          LOWORD(v11) = 0;
          *v13 = v12;
        }

        else
        {
          LOWORD(v11) = 0;
        }

        goto LABEL_18;
      }
    }

    v11 = bswap32(*(a2 + 2)) >> 16;
LABEL_18:
    v14 = snprintf(__str, 0x60uLL, "%s:%d", v17, v11);
    snprintf(a3, *a4, "%s", __str);
    *a4 = v14 + 1;
    goto LABEL_19;
  }

  a3 = 0;
LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
  return a3;
}

uint64_t sock_check_table_in(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v57 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 88);
  if ((v10 & 0x1000000) != 0 && !*(a1 + 112))
  {
    result = 4294967035;
    goto LABEL_90;
  }

  if ((a5 & 0x400000000000000) == 0)
  {
    goto LABEL_4;
  }

  result = 4294967036;
  if (!a3 && a6 && !*(a1 + 112))
  {
    bzero(a6, 4 * a4);
    v10 = *(a1 + 88);
LABEL_4:
    v51 = v6;
    if ((v10 & 0x100) == 0)
    {
      if (a4 >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = a4;
        v49 = a4;
        while (1)
        {
          v14 = (a2 + (*(a1 + 108) * v11));
          if (ofi_valid_dest_ipaddr(v14))
          {
            break;
          }

          sock_av_report_error(a1, a3, a6, v11, 22, v6);
LABEL_47:
          if (++v11 == v13)
          {
            goto LABEL_79;
          }
        }

        v15 = *(a1 + 120);
        v16 = v15[1];
        if (v16 == *v15)
        {
          if (!v16)
          {
            goto LABEL_32;
          }

          v17 = 0;
          v18 = *(a1 + 128);
          v19 = 48;
          while (*(v18 + v19))
          {
            ++v17;
            v19 += 56;
            if (v16 == v17)
            {
              goto LABEL_32;
            }
          }

          if (v17 < 0)
          {
LABEL_32:
            v27 = *(a1 + 72);
            v28 = 16 * v16 + 16;
            if (v27)
            {
              v29 = 8 * v16 + 16;
            }

            else
            {
              v28 = 16;
              v29 = 16;
            }

            if (v27 || (v48 = v28 + 112 * v16, (v30 = malloc_type_realloc(v15, v48, 0xE3C119C0uLL)) == 0))
            {
              sock_av_report_error(a1, a3, a6, v11, 12, v6);
LABEL_46:
              v13 = v49;
              goto LABEL_47;
            }

            v31 = v30;
            bzero(&v30[7 * v16] + v29, v48 - (v29 + 56 * v16));
            *(a1 + 120) = v31;
            *v31 = 2 * v16;
            v6 = v51;
            if (*(a1 + 72))
            {
              v32 = 2 * v16;
            }

            else
            {
              v32 = 0;
            }

            v18 = &v31[v32 + 2];
            *(a1 + 128) = v18;
            v17 = v31[1];
            v31[1] = v17 + 1;
          }
        }

        else
        {
          v15[1] = v16 + 1;
          v18 = *(a1 + 128);
          v17 = v16;
        }

        v20 = v14[1];
        v21 = v14 + 4;
        if (v20 != 2)
        {
          v21 = 0;
        }

        if (v20 == 27)
        {
          v21 = v14 + 8;
        }

        if (v20 == 30)
        {
          v22 = v14 + 8;
        }

        else
        {
          v22 = v21;
        }

        inet_ntop(v20, v22, v54, 0x2Eu);
        v23 = v14[1];
        switch(v23)
        {
          case 2:
            v24 = 16;
            break;
          case 27:
            v24 = 48;
            break;
          case 30:
            v24 = 28;
            break;
          default:
            if (fi_log_enabled(&core_prov, 0, 0))
            {
              v25 = *__error();
              fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
              v26 = __error();
              v24 = 0;
              *v26 = v25;
            }

            else
            {
              v24 = 0;
            }

            break;
        }

        memcpy((v18 + 56 * v17), v14, v24);
        if (a3)
        {
          *(a3 + 8 * v11) = v17;
        }

        *(v18 + 56 * v17 + 48) = 1;
        ++v12;
        goto LABEL_46;
      }

      v12 = 0;
LABEL_79:
      v44 = *(a1 + 112);
      if (!v44)
      {
        goto LABEL_87;
      }

      v53[0] = a1;
      v53[1] = a6;
      v53[2] = v12;
      v45 = v53;
      goto LABEL_84;
    }

    if (a4 < 1)
    {
      v12 = 0;
LABEL_82:
      v44 = *(a1 + 112);
      if (!v44)
      {
        goto LABEL_87;
      }

      *v54 = a1;
      v55 = a6;
      v56 = v12;
      v45 = v54;
LABEL_84:
      if (sock_eq_report_event(v44, 5, v45, 0x18uLL, v6) && fi_log_enabled(&sock_prov, 0, 5))
      {
        v46 = *__error();
        fi_log(&sock_prov, 0, 5, "sock_av_report_success", 128, "Error in writing to EQ\n");
        *__error() = v46;
      }

LABEL_87:
      if (*(a1 + 91))
      {
        result = 0;
      }

      else
      {
        result = v12;
      }

      goto LABEL_90;
    }

    v34 = 0;
    v12 = 0;
    v35 = **(a1 + 120);
    while (!v35)
    {
LABEL_75:
      if (++v34 == a4)
      {
        goto LABEL_82;
      }
    }

    v36 = 0;
    v37 = 0;
    v38 = (a2 + (*(a1 + 108) * v34));
    while (1)
    {
      v39 = *(a1 + 128);
      if (!*(v39 + v36 + 48))
      {
        goto LABEL_60;
      }

      if (ofi_valid_dest_ipaddr(v38))
      {
        break;
      }

      sock_av_report_error(a1, a3, a6, v34, 22, v6);
LABEL_74:
      ++v37;
      v35 = **(a1 + 120);
      v36 += 56;
      if (v37 >= v35)
      {
        goto LABEL_75;
      }
    }

    v39 = *(a1 + 128);
LABEL_60:
    v40 = v38[1];
    switch(v40)
    {
      case 2:
        v41 = 16;
        break;
      case 27:
        v41 = 48;
        break;
      case 30:
        v41 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v42 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v43 = __error();
          v41 = 0;
          *v43 = v42;
          v6 = v51;
        }

        else
        {
          v41 = 0;
        }

        break;
    }

    if (!memcmp((v39 + v36), v38, v41))
    {
      if (a3)
      {
        *(a3 + 8 * v34) = v37;
      }

      ++v12;
    }

    goto LABEL_74;
  }

LABEL_90:
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ofi_valid_dest_ipaddr(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  result = ofi_addr_get_port(a1);
  if (result)
  {
    if (a1)
    {
      v3 = *(a1 + 1);
      if (v3 == 2)
      {
        if (!*(a1 + 4))
        {
LABEL_9:
          result = 0;
          goto LABEL_15;
        }
      }

      else if (v3 == 27 || v3 == 30)
      {
        if (*(a1 + 8) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (fi_log_enabled(&core_prov, 0, 0))
      {
        v4 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_is_any_addr", 791, "Unknown address format!\n");
        *__error() = v4;
      }
    }

    result = *(a1 + 1) != 2 || *(a1 + 8) == 0;
  }

LABEL_15:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_av_report_error(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (a2)
  {
    *(a2 + 8 * a4) = -1;
  }

  else if ((a6 & 0x400000000000000) != 0)
  {
    *(a3 + 4 * a4) = a5;
  }

  result = *(a1 + 112);
  if (result)
  {
    return sock_eq_report_error(result, a1, a3, a4, a5, -a5, 0, 0);
  }

  return result;
}

uint64_t _sock_av_insertsvc(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16 = 0;
  memset(&v17, 0, sizeof(v17));
  *&v17.ai_family = 0x100000002;
  v10 = getaddrinfo(a2, a3, &v17, &v16);
  if (v10)
  {
    v11 = v10;
    if (*(a1 + 112))
    {
      sock_av_report_error(a1, a4, a6, 0, 22, a5);
      v12 = *(a1 + 112);
      if (v12)
      {
        v18[0] = a1;
        v18[1] = a6;
        v18[2] = 0;
        if (sock_eq_report_event(v12, 5, v18, 0x18uLL, a5))
        {
          if (fi_log_enabled(&sock_prov, 0, 5))
          {
            v13 = *__error();
            fi_log(&sock_prov, 0, 5, "sock_av_report_success", 128, "Error in writing to EQ\n");
            *__error() = v13;
          }
        }
      }
    }

    return -v11;
  }

  else
  {
    pthread_mutex_lock((a1 + 264));
    v14 = sock_check_table_in(a1, v16->ai_addr, a4, 1, a5, a6);
    pthread_mutex_unlock((a1 + 264));
    freeaddrinfo(v16);
  }

  return v14;
}

uint64_t monitor_cq_read(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 8))();
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = *(*(a1 + 40) + 48);
    v7 = *(a1 + 56);
    v21 = 30;
    if (v4 >= 1)
    {
      v8 = 0;
      v9 = *(&get_cq_entry + v7);
      v20 = 0;
      v10 = v6 + 80;
      while (!v9(a2, v8, &v21, &v20))
      {
LABEL_27:
        v8 = (v8 + 1);
        if (v5 == v8)
        {
          return v5;
        }
      }

      v11 = v21;
      v12 = v20;
      if (v20 >= 0x41)
      {
        v14 = 7;
        if (v20 >= 0x400001)
        {
          v14 = 8;
        }

        v15 = 6;
        if (v20 >= 0x100001)
        {
          v15 = v14;
        }

        v13 = 5;
        if (v20 >= 0x40001)
        {
          v13 = v15;
        }

        if (v20 <= 0x10000)
        {
          v13 = 4;
        }

        if (v20 <= 0x1000)
        {
          v13 = 3;
        }

        if (v20 < 0x401)
        {
          v13 = 2;
        }

        if (v20 < 0x201)
        {
          v13 = 1;
        }

        ++*(v10 + 144 * v21 + 8 * v13);
      }

      else
      {
        ++*(v10 + 144 * v21);
        if (!v12)
        {
LABEL_24:
          v17 = *(v6 + 6128) + 1;
          *(v6 + 6128) = v17;
          if (v17 >= dword_2A189233C)
          {
            *(v6 + 6128) = 0;
            v18 = atomic_load((*(v6 + 6136) + 6048));
            if (v18)
            {
              memcpy(*(v6 + 6136), (v6 + 80), 0x17A0uLL);
              atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
              bzero((v6 + 80), 0x17A0uLL);
            }
          }

          goto LABEL_27;
        }

        v13 = 0;
      }

      v16 = v10 + 144 * v11 + 8 * v13;
      *(v16 + 72) += v12;
      goto LABEL_24;
    }
  }

  return v5;
}

uint64_t monitor_cq_readfrom(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 16))();
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = *(*(a1 + 40) + 48);
    v7 = *(a1 + 56);
    v21 = 31;
    if (v4 >= 1)
    {
      v8 = 0;
      v9 = *(&get_cq_entry + v7);
      v20 = 0;
      v10 = v6 + 80;
      while (!v9(a2, v8, &v21, &v20))
      {
LABEL_27:
        v8 = (v8 + 1);
        if (v5 == v8)
        {
          return v5;
        }
      }

      v11 = v21;
      v12 = v20;
      if (v20 >= 0x41)
      {
        v14 = 7;
        if (v20 >= 0x400001)
        {
          v14 = 8;
        }

        v15 = 6;
        if (v20 >= 0x100001)
        {
          v15 = v14;
        }

        v13 = 5;
        if (v20 >= 0x40001)
        {
          v13 = v15;
        }

        if (v20 <= 0x10000)
        {
          v13 = 4;
        }

        if (v20 <= 0x1000)
        {
          v13 = 3;
        }

        if (v20 < 0x401)
        {
          v13 = 2;
        }

        if (v20 < 0x201)
        {
          v13 = 1;
        }

        ++*(v10 + 144 * v21 + 8 * v13);
      }

      else
      {
        ++*(v10 + 144 * v21);
        if (!v12)
        {
LABEL_24:
          v17 = *(v6 + 6128) + 1;
          *(v6 + 6128) = v17;
          if (v17 >= dword_2A189233C)
          {
            *(v6 + 6128) = 0;
            v18 = atomic_load((*(v6 + 6136) + 6048));
            if (v18)
            {
              memcpy(*(v6 + 6136), (v6 + 80), 0x17A0uLL);
              atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
              bzero((v6 + 80), 0x17A0uLL);
            }
          }

          goto LABEL_27;
        }

        v13 = 0;
      }

      v16 = v10 + 144 * v11 + 8 * v13;
      *(v16 + 72) += v12;
      goto LABEL_24;
    }
  }

  return v5;
}

uint64_t monitor_cq_readerr(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(a2 + 80) = -1;
  }

  return (*(*(v2 + 24) + 24))();
}

uint64_t monitor_cq_sread(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 32))();
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = *(*(a1 + 40) + 48);
    v7 = *(a1 + 56);
    v21 = 33;
    if (v4 >= 1)
    {
      v8 = 0;
      v9 = *(&get_cq_entry + v7);
      v20 = 0;
      v10 = v6 + 80;
      while (!v9(a2, v8, &v21, &v20))
      {
LABEL_27:
        v8 = (v8 + 1);
        if (v5 == v8)
        {
          return v5;
        }
      }

      v11 = v21;
      v12 = v20;
      if (v20 >= 0x41)
      {
        v14 = 7;
        if (v20 >= 0x400001)
        {
          v14 = 8;
        }

        v15 = 6;
        if (v20 >= 0x100001)
        {
          v15 = v14;
        }

        v13 = 5;
        if (v20 >= 0x40001)
        {
          v13 = v15;
        }

        if (v20 <= 0x10000)
        {
          v13 = 4;
        }

        if (v20 <= 0x1000)
        {
          v13 = 3;
        }

        if (v20 < 0x401)
        {
          v13 = 2;
        }

        if (v20 < 0x201)
        {
          v13 = 1;
        }

        ++*(v10 + 144 * v21 + 8 * v13);
      }

      else
      {
        ++*(v10 + 144 * v21);
        if (!v12)
        {
LABEL_24:
          v17 = *(v6 + 6128) + 1;
          *(v6 + 6128) = v17;
          if (v17 >= dword_2A189233C)
          {
            *(v6 + 6128) = 0;
            v18 = atomic_load((*(v6 + 6136) + 6048));
            if (v18)
            {
              memcpy(*(v6 + 6136), (v6 + 80), 0x17A0uLL);
              atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
              bzero((v6 + 80), 0x17A0uLL);
            }
          }

          goto LABEL_27;
        }

        v13 = 0;
      }

      v16 = v10 + 144 * v11 + 8 * v13;
      *(v16 + 72) += v12;
      goto LABEL_24;
    }
  }

  return v5;
}

uint64_t monitor_cq_sreadfrom(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 40))();
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = *(*(a1 + 40) + 48);
    v7 = *(a1 + 56);
    v21 = 34;
    if (v4 >= 1)
    {
      v8 = 0;
      v9 = *(&get_cq_entry + v7);
      v20 = 0;
      v10 = v6 + 80;
      while (!v9(a2, v8, &v21, &v20))
      {
LABEL_27:
        v8 = (v8 + 1);
        if (v5 == v8)
        {
          return v5;
        }
      }

      v11 = v21;
      v12 = v20;
      if (v20 >= 0x41)
      {
        v14 = 7;
        if (v20 >= 0x400001)
        {
          v14 = 8;
        }

        v15 = 6;
        if (v20 >= 0x100001)
        {
          v15 = v14;
        }

        v13 = 5;
        if (v20 >= 0x40001)
        {
          v13 = v15;
        }

        if (v20 <= 0x10000)
        {
          v13 = 4;
        }

        if (v20 <= 0x1000)
        {
          v13 = 3;
        }

        if (v20 < 0x401)
        {
          v13 = 2;
        }

        if (v20 < 0x201)
        {
          v13 = 1;
        }

        ++*(v10 + 144 * v21 + 8 * v13);
      }

      else
      {
        ++*(v10 + 144 * v21);
        if (!v12)
        {
LABEL_24:
          v17 = *(v6 + 6128) + 1;
          *(v6 + 6128) = v17;
          if (v17 >= dword_2A189233C)
          {
            *(v6 + 6128) = 0;
            v18 = atomic_load((*(v6 + 6136) + 6048));
            if (v18)
            {
              memcpy(*(v6 + 6136), (v6 + 80), 0x17A0uLL);
              atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
              bzero((v6 + 80), 0x17A0uLL);
            }
          }

          goto LABEL_27;
        }

        v13 = 0;
      }

      v16 = v10 + 144 * v11 + 8 * v13;
      *(v16 + 72) += v12;
      goto LABEL_24;
    }
  }

  return v5;
}

uint64_t hook_monitor_fabric()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v49 = *MEMORY[0x29EDCA608];
  if (fi_log_enabled(v1, 1, 1))
  {
    v6 = *__error();
    fi_log(v2, 1, 1, "hook_monitor_fabric", 1084, "[%s] Installing monitor hook\n", *(v2 + 40));
    *__error() = v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x1C00uLL, 0x10E004059784881uLL);
  if (!v7)
  {
    v13 = 4294967284;
    goto LABEL_68;
  }

  v8 = v7;
  v7[9] = v2;
  bzero(v7 + 10, 0x17A0uLL);
  monitor_id = 0;
  memset(&v45, 0, 512);
  *__error() = 0;
  v9 = umask(0);
  if (mkdir(aDevShmOfi, 0x3FFu) && *__error() != 17)
  {
    if (fi_log_enabled(v2, 0, 1))
    {
      v14 = *__error();
      v15 = __error();
      v16 = strerror(*v15);
      fi_log(v2, 0, 1, "monitor_shm_init", 895, "Could not create folder at %s: %s\n", aDevShmOfi, v16);
      *__error() = v14;
    }

    umask(v9);
    goto LABEL_22;
  }

  umask(v9);
  v10 = getuid();
  if ((snprintf(v48, 0x400uLL, "%s/%u", aDevShmOfi, v10) & 0x80000000) == 0)
  {
    if (mkdir(v48, dword_2A1892344) && *__error() != 17)
    {
      if (!fi_log_enabled(v2, 0, 1))
      {
        goto LABEL_22;
      }

      v11 = *__error();
      v18 = __error();
      strerror(*v18);
      fi_log(v2, 0, 1, "monitor_shm_init", 911, "Could not create folder at %s: %s\n");
      goto LABEL_21;
    }

    if (gethostname(v47, 0x400uLL))
    {
      if (!fi_log_enabled(v2, 0, 0))
      {
        goto LABEL_22;
      }

      v11 = *__error();
      v12 = __error();
      strerror(*v12);
      fi_log(v2, 0, 0, "monitor_shm_init", 920, "Failed to call gethostname (%s)!\n");
      goto LABEL_21;
    }

    if ((snprintf(__str, 0x400uLL, "%s/%s", v48, v47) & 0x80000000) == 0)
    {
      strncpy(v48, __str, 0x400uLL);
      *__error() = 0;
      if (!mkdir(v48, dword_2A1892344) || *__error() == 17)
      {
        statfs(v48, &v45);
        v20 = *v45.f_fstypename == 1718644084 && v45.f_fstypename[4] == 115;
        if (!v20 && fi_log_enabled(v2, 0, 1))
        {
          v21 = *__error();
          fi_log(v2, 0, 1, "monitor_shm_init", 946, "Communication file not on tmpfs! (%s) Proceed with caution.\n", v48);
          *__error() = v21;
        }

        __endptr = 0;
        v22 = getenv("SLURM_JOB_ID");
        if (v22)
        {
          v23 = v22;
          *__error() = 0;
          v24 = strtoul(v23, &__endptr, 0);
          if (*__error() != 34 && v23 != __endptr && !*__endptr)
          {
            v26 = v24;
LABEL_47:
            v28 = getppid();
            v29 = getpid();
            atomic_fetch_add(&monitor_id, 1uLL);
            v30 = atomic_load(&monitor_id);
            if (snprintf((v8 + 6144), 0x400uLL, "%s/%u_%u_%lu_%lu_%s", v48, v28, v29, v30, v26, *(v2 + 40)) < 0)
            {
              if (!fi_log_enabled(v2, 0, 0))
              {
                goto LABEL_23;
              }

              v17 = *__error();
              fi_log(v2, 0, 0, "monitor_shm_init", 965, "Failed so format shm name!\n", v43);
            }

            else
            {
              if (fi_log_enabled(v2, 1, 1))
              {
                v31 = *__error();
                fi_log(v2, 1, 1, "monitor_shm_init", 970, "[%s] Using file: %s\n", *(v2 + 40), (v8 + 6144));
                *__error() = v31;
              }

              v32 = open((v8 + 6144), 514, 384);
              if ((v32 & 0x80000000) == 0)
              {
                v33 = v32;
                if (fchmod(v32, dword_2A1892340))
                {
                  if (fi_log_enabled(v2, 0, 0))
                  {
                    v34 = *__error();
                    v35 = __error();
                    strerror(*v35);
                    fi_log(v2, 0, 0, "monitor_shm_init", 981, "Failed to chmod %s: %s\n");
LABEL_61:
                    *__error() = v34;
                  }
                }

                else
                {
                  if (!ftruncate(v33, 6056))
                  {
                    v38 = mmap(0, 0x17A8uLL, 3, 1, v33, 0);
                    *(v8 + 6136) = v38;
                    if (v38 != -1)
                    {
                      atomic_store(0, v38 + 6048);
                      close(v33);
                      goto LABEL_65;
                    }

                    if (!fi_log_enabled(v2, 0, 0))
                    {
                      goto LABEL_62;
                    }

                    v34 = *__error();
                    v41 = __error();
                    strerror(*v41);
                    fi_log(v2, 0, 0, "monitor_shm_init", 994, "Failed to mmap: %s\n");
                    goto LABEL_61;
                  }

                  if (fi_log_enabled(v2, 0, 0))
                  {
                    v34 = *__error();
                    v37 = __error();
                    strerror(*v37);
                    fi_log(v2, 0, 0, "monitor_shm_init", 987, "Failed to truncate %s: %s\n");
                    goto LABEL_61;
                  }
                }

LABEL_62:
                close(v33);
                goto LABEL_22;
              }

              if (!fi_log_enabled(v2, 0, 0))
              {
                goto LABEL_23;
              }

              v17 = *__error();
              v36 = __error();
              strerror(*v36);
              fi_log(v2, 0, 0, "monitor_shm_init", 975, "Failed to create shm (%s)\n");
            }

            goto LABEL_18;
          }

          if (fi_log_enabled(v2, 0, 1))
          {
            v25 = *__error();
            fi_log(v2, 0, 1, "monitor_shm_init", 956, "Could not parse SLURM_JOB_ID!\n");
            v26 = 0;
            *__error() = v25;
            goto LABEL_47;
          }
        }

        v26 = 0;
        goto LABEL_47;
      }

      if (fi_log_enabled(v2, 0, 1))
      {
        v11 = *__error();
        v27 = __error();
        strerror(*v27);
        fi_log(v2, 0, 1, "monitor_shm_init", 933, "Could not create folder at %s: %s\n");
LABEL_21:
        *__error() = v11;
      }

LABEL_22:
      if (*__error())
      {
        goto LABEL_23;
      }

LABEL_65:
      hook_fabric_init(v8, 7, *v5, v2, &monitor_fabric_fid_ops, &hook_monitor_ctx);
      *v4 = v8;
      if (!fi_log_enabled(v2, 1, 1))
      {
        v13 = 0;
        goto LABEL_68;
      }

      v19 = *__error();
      fi_log(v2, 1, 1, "hook_monitor_fabric", 1105, "[%s] Installed monitor hook\n", *(v2 + 40));
      v13 = 0;
      goto LABEL_67;
    }

    if (!fi_log_enabled(v2, 0, 0))
    {
      goto LABEL_23;
    }

    v17 = *__error();
    fi_log(v2, 0, 0, "monitor_shm_init", 924, "Failed to format outpath!\n", v42);
LABEL_18:
    *__error() = v17;
    goto LABEL_23;
  }

  if (fi_log_enabled(v2, 0, 0))
  {
    v17 = *__error();
    fi_log(v2, 0, 0, "monitor_shm_init", 904, "Failed to format hook storage path!\n");
    goto LABEL_18;
  }

LABEL_23:
  if (fi_log_enabled(v2, 0, 1))
  {
    v19 = *__error();
    fi_log(v2, 0, 1, "hook_monitor_fabric", 1097, "Could not initialise ofi_hook_monitor!\n");
    v13 = 4294967283;
LABEL_67:
    *__error() = v19;
    goto LABEL_68;
  }

  v13 = 4294967283;
LABEL_68:
  v39 = *MEMORY[0x29EDCA608];
  return v13;
}

void *fi_hook_monitor_ini(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0;
  __s = 0;
  fi_param_define(&hook_monitor_ctx, "linger", 2, "Whether synchronisation files should linger after termination. (default: %d)", a5, a6, a7, a8, mon_env);
  fi_param_get(&hook_monitor_ctx, "linger", &mon_env);
  fi_param_define(&hook_monitor_ctx, "tick_max", 1, "Number of API calls before synchronisation files are checked for data request. (default: %d)", v8, v9, v10, v11, dword_2A189233C);
  fi_param_get(&hook_monitor_ctx, "tick_max", &v28);
  if (v28 < 0)
  {
    if (fi_log_enabled(&hook_monitor_ctx, 0, 0))
    {
      v25 = *__error();
      fi_log(&hook_monitor_ctx, 0, 0, "monitor_env_init", 1156, "Tick is negative!\n");
      *__error() = v25;
    }

    return 0;
  }

  else
  {
    dword_2A189233C = v28;
    v16 = &hook_monitor_ctx;
    fi_param_define(&hook_monitor_ctx, "file_mode", 1, "POSIX mode/permission for synchronisation files. (default: %04o)", v12, v13, v14, v15, dword_2A1892340);
    fi_param_get(&hook_monitor_ctx, "file_mode", &dword_2A1892340);
    fi_param_define(&hook_monitor_ctx, "dir_mode", 1, "POSIX mode/permission for directories in basepath. (default: %04o)", v17, v18, v19, v20, dword_2A1892344);
    fi_param_get(&hook_monitor_ctx, "dir_mode", &dword_2A1892344);
    fi_param_define(&hook_monitor_ctx, "basepath", 0, "String to basepath for synchronisation files. (default: %s)", v21, v22, v23, v24, &dword_2A1892344 + 4);
    fi_param_get(&hook_monitor_ctx, "basepath", &__s);
    if (__s && strlen(__s) <= 0x3FF)
    {
      snprintf(aDevShmOfi, 0x400uLL, "%s", __s);
    }

    qword_2A1C4FE30 = monitor_domain_init;
    qword_2A1C4FE90 = monitor_cq_init;
    qword_2A1C4FE38 = monitor_ep_init;
  }

  return v16;
}

uint64_t monitor_ep_init(void *a1)
{
  a1[5] = &monitor_msg_ops;
  a1[6] = &monitor_rma_ops;
  a1[7] = &monitor_tagged_ops;
  return 0;
}

uint64_t get_cq_context_entry(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  *a3 = 35;
  *a4 = 0;
  return 1;
}

uint64_t get_cq_msg_entry(uint64_t a1, int a2, int *a3, void *a4)
{
  v4 = a1 + 24 * a2;
  v5 = *(v4 + 8);
  if ((v5 & 0x400) != 0)
  {
    v7 = *(v4 + 16);
    v8 = 37;
  }

  else
  {
    if ((v5 & 0x800) == 0)
    {
      return 0;
    }

    v7 = 0;
    v8 = 36;
  }

  *a4 = v7;
  *a3 = v8;
  return 1;
}

uint64_t get_cq_data_entry(uint64_t a1, int a2, int *a3, void *a4)
{
  v4 = a1 + 40 * a2;
  v5 = *(v4 + 8);
  if ((v5 & 0x400) != 0)
  {
    v7 = *(v4 + 16);
    v8 = 39;
  }

  else
  {
    if ((v5 & 0x800) == 0)
    {
      return 0;
    }

    v7 = 0;
    v8 = 38;
  }

  *a4 = v7;
  *a3 = v8;
  return 1;
}

uint64_t get_cq_tagged_entry(uint64_t a1, int a2, int *a3, void *a4)
{
  v4 = a1 + 48 * a2;
  v5 = *(v4 + 8);
  if ((v5 & 0x400) != 0)
  {
    v7 = *(v4 + 16);
    v8 = 41;
  }

  else
  {
    if ((v5 & 0x800) == 0)
    {
      return 0;
    }

    v7 = 0;
    v8 = 40;
  }

  *a4 = v7;
  *a3 = v8;
  return 1;
}

uint64_t hook_monitor_close()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(v0 + 72);
  if (mon_env)
  {
    v3 = atomic_load((*(v0 + 6136) + 6048));
    atomic_fetch_or((*(v0 + 6136) + 6048), 1u);
    if (fi_log_enabled(v2, 1, 1))
    {
      v4 = *__error();
      fi_log(v2, 1, 1, "monitor_shm_close", 1021, "[%s] Lingering enabled, will flush file %s but not delete.\n", *(v2 + 40), (v1 + 6144));
      *__error() = v4;
    }

    v5 = *(v1 + 6136);
    if ((v3 & 1) == 0)
    {
      v6 = __dst;
      memcpy(__dst, *(v1 + 6136), sizeof(__dst));
      v7 = 0;
      v8 = (v1 + 80);
      do
      {
        v9 = v8;
        v10 = v6;
        v11 = 9;
        do
        {
          *v9 += *v10;
          v9[9] += v10[9];
          ++v10;
          ++v9;
          --v11;
        }

        while (v11);
        ++v7;
        v6 += 144;
        v8 += 18;
      }

      while (v7 != 42);
    }

    memcpy(v5, (v1 + 80), 0x17A0uLL);
    atomic_fetch_or((*(v1 + 6136) + 6048), 2u);
    atomic_fetch_xor((*(v1 + 6136) + 6048), 1u);
  }

  else if (unlink((v0 + 6144)))
  {
    if (!fi_log_enabled(v2, 0, 0))
    {
      goto LABEL_17;
    }

    v12 = *__error();
    v14 = __error();
    strerror(*v14);
    fi_log(v2, 0, 0, "monitor_shm_close", 1040, "Failed to unlink! (%s)\n");
    goto LABEL_16;
  }

  if (munmap(*(v1 + 6136), 0x17A8uLL) && fi_log_enabled(v2, 0, 0))
  {
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    fi_log(v2, 0, 0, "monitor_shm_close", 1046, "Failed to munmap! (%s)\n");
LABEL_16:
    *__error() = v12;
  }

LABEL_17:
  hook_close(v1);
  if (fi_log_enabled(*(v1 + 72), 1, 0))
  {
    v15 = *__error();
    fi_log(*(v1 + 72), 1, 0, "hook_monitor_close", 1061, "[%s] Closing monitor hook\n", *(*(v1 + 72) + 40));
    *__error() = v15;
  }

  v16 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t monitor_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(*(a1 + 40) + 32) + 8))(*(a1 + 40));
  if (!v5)
  {
    v6 = *(a1 + 48);
    ++*(v6 + 3968);
    if (a3)
    {
      *(v6 + 4040) += a3;
    }

    v7 = *(v6 + 6128) + 1;
    *(v6 + 6128) = v7;
    if (v7 >= dword_2A189233C)
    {
      *(v6 + 6128) = 0;
      v8 = atomic_load((*(v6 + 6136) + 6048));
      if (v8)
      {
        memcpy(*(v6 + 6136), (v6 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
        bzero((v6 + 80), 0x17A0uLL);
      }
    }
  }

  return v5;
}

uint64_t monitor_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 40) + 32) + 16))(*(a1 + 40));
  if (v6)
  {
    return v6;
  }

  v7 = *(a1 + 48);
  if (!a3)
  {
    v8 = 1;
    v11 = 4112;
    goto LABEL_8;
  }

  v8 = 0;
  v9 = (a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --a3;
  }

  while (a3);
  ++*(v7 + 4112);
  if (v8)
  {
    v11 = 4184;
LABEL_8:
    *(v7 + v11) += v8;
  }

  v12 = *(v7 + 6128) + 1;
  *(v7 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v7 + 6128) = 0;
    v13 = atomic_load((*(v7 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v7 + 6136), (v7 + 80), 0x17A0uLL);
      atomic_fetch_xor((*(v7 + 6136) + 6048), 1u);
      bzero((v7 + 80), 0x17A0uLL);
    }
  }

  return v6;
}

uint64_t monitor_mr_regattr(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 40) + 32) + 24))();
  if (v4)
  {
    return v4;
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 8);
  if (!v7)
  {
    v11 = (v5 + 8 * v6 + 4256);
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
  v9 = (*a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --v7;
  }

  while (v7);
  ++*(v5 + 8 * v6 + 4256);
  if (v8)
  {
    v11 = (v5 + 8 * v6 + 4328);
LABEL_8:
    *v11 += v8;
  }

  v12 = *(v5 + 6128) + 1;
  *(v5 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v5 + 6128) = 0;
    v13 = atomic_load((*(v5 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v5 + 6136), (v5 + 80), 0x17A0uLL);
      atomic_fetch_xor((*(v5 + 6136) + 6048), 1u);
      bzero((v5 + 80), 0x17A0uLL);
    }
  }

  return v4;
}

uint64_t monitor_recv(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 40) + 8))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 80);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_recvv(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 40) + 16))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 224);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_recvmsg(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 40) + 24))();
  if (!v2)
  {
    v3 = *(*(a1 + 88) + 48);
    ++*(v3 + 368);
    v4 = *(v3 + 6128) + 1;
    *(v3 + 6128) = v4;
    if (v4 >= dword_2A189233C)
    {
      *(v3 + 6128) = 0;
      v5 = atomic_load((*(v3 + 6136) + 6048));
      if (v5)
      {
        memcpy(*(v3 + 6136), (v3 + 80), 0x17A0uLL);
        atomic_fetch_xor((*(v3 + 6136) + 6048), 1u);
        bzero((v3 + 80), 0x17A0uLL);
      }
    }
  }

  return v2;
}

uint64_t monitor_send(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 40) + 32))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 944);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 944);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1016) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_sendv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(*(a1 + 80) + 40) + 40))();
  if (v7)
  {
    return v7;
  }

  if (!a4)
  {
    v11 = *(*(a1 + 88) + 48);
    v12 = (v11 + 80);
    v14 = (v11 + 1088);
    v8 = 1;
LABEL_25:
    *v14 += v8;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = (a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --a4;
  }

  while (a4);
  v11 = *(*(a1 + 88) + 48);
  if (v8 >= 0x41)
  {
    v13 = 1;
    v15 = 2;
    v16 = 3;
    v17 = 7;
    if (v8 >= 0x400001)
    {
      v17 = 8;
    }

    if (v8 < 0x100001)
    {
      v17 = 6;
    }

    if (v8 < 0x40001)
    {
      v17 = 5;
    }

    if (v8 <= 0x10000)
    {
      v17 = 4;
    }

    if (v8 > 0x1000)
    {
      v16 = v17;
    }

    if (v8 >= 0x401)
    {
      v15 = v16;
    }

    if (v8 >= 0x201)
    {
      v13 = v15;
    }

    v12 = (v11 + 80);
    ++*(v11 + 8 * v13 + 1088);
    goto LABEL_24;
  }

  v12 = (v11 + 80);
  ++*(v11 + 1088);
  if (v8)
  {
    v13 = 0;
LABEL_24:
    v14 = (v11 + 8 * v13 + 1160);
    goto LABEL_25;
  }

LABEL_26:
  v18 = *(v11 + 6128) + 1;
  *(v11 + 6128) = v18;
  if (v18 >= dword_2A189233C)
  {
    *(v11 + 6128) = 0;
    v19 = atomic_load((*(v11 + 6136) + 6048));
    if (v19)
    {
      memcpy(*(v11 + 6136), v12, 0x17A0uLL);
      atomic_fetch_xor((*(v11 + 6136) + 6048), 1u);
      bzero(v12, 0x17A0uLL);
    }
  }

  return v7;
}

uint64_t monitor_sendmsg(uint64_t a1, void *a2)
{
  v4 = (*(*(*(a1 + 80) + 40) + 48))();
  if (v4)
  {
    return v4;
  }

  v5 = a2[2];
  if (!v5)
  {
    v9 = *(*(a1 + 88) + 48);
    v10 = (v9 + 80);
    v12 = (v9 + 1232);
    v6 = 1;
LABEL_25:
    *v12 += v6;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (*a2 + 8);
  do
  {
    v8 = *v7;
    v7 += 2;
    v6 += v8;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 88) + 48);
  if (v6 >= 0x41)
  {
    v11 = 1;
    v13 = 2;
    v14 = 3;
    v15 = 7;
    if (v6 >= 0x400001)
    {
      v15 = 8;
    }

    if (v6 < 0x100001)
    {
      v15 = 6;
    }

    if (v6 < 0x40001)
    {
      v15 = 5;
    }

    if (v6 <= 0x10000)
    {
      v15 = 4;
    }

    if (v6 > 0x1000)
    {
      v14 = v15;
    }

    if (v6 >= 0x401)
    {
      v13 = v14;
    }

    if (v6 >= 0x201)
    {
      v11 = v13;
    }

    v10 = (v9 + 80);
    ++*(v9 + 8 * v11 + 1232);
    goto LABEL_24;
  }

  v10 = (v9 + 80);
  ++*(v9 + 1232);
  if (v6)
  {
    v11 = 0;
LABEL_24:
    v12 = (v9 + 8 * v11 + 1304);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *(v9 + 6128) + 1;
  *(v9 + 6128) = v16;
  if (v16 >= dword_2A189233C)
  {
    *(v9 + 6128) = 0;
    v17 = atomic_load((*(v9 + 6136) + 6048));
    if (v17)
    {
      memcpy(*(v9 + 6136), v10, 0x17A0uLL);
      atomic_fetch_xor((*(v9 + 6136) + 6048), 1u);
      bzero(v10, 0x17A0uLL);
    }
  }

  return v4;
}

uint64_t monitor_inject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 40) + 56))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 1376);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 1376);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1448) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_senddata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 40) + 64))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 1520);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 1520);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1592) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_injectdata(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 40) + 72))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 1664);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 1664);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 1736) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_read(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (*(*(*(a1 + 80) + 48) + 8))();
  if (v5)
  {
    return v5;
  }

  v6 = *(*(a1 + 88) + 48);
  if (a3 >= 0x41)
  {
    v8 = 1;
    v9 = 2;
    v10 = 3;
    v11 = 7;
    if (a3 >= 0x400001)
    {
      v11 = 8;
    }

    if (a3 < 0x100001)
    {
      v11 = 6;
    }

    if (a3 < 0x40001)
    {
      v11 = 5;
    }

    if (a3 <= 0x10000)
    {
      v11 = 4;
    }

    if (a3 > 0x1000)
    {
      v10 = v11;
    }

    if (a3 >= 0x401)
    {
      v9 = v10;
    }

    if (a3 >= 0x201)
    {
      v8 = v9;
    }

    v7 = (v6 + 80);
    ++*(v6 + 8 * v8 + 2672);
    goto LABEL_20;
  }

  v7 = (v6 + 80);
  ++*(v6 + 2672);
  if (a3)
  {
    v8 = 0;
LABEL_20:
    *(v6 + 8 * v8 + 2744) += a3;
  }

  v12 = *(v6 + 6128) + 1;
  *(v6 + 6128) = v12;
  if (v12 >= dword_2A189233C)
  {
    *(v6 + 6128) = 0;
    v13 = atomic_load((*(v6 + 6136) + 6048));
    if (v13)
    {
      memcpy(*(v6 + 6136), v7, 0x17A0uLL);
      atomic_fetch_xor((*(v6 + 6136) + 6048), 1u);
      bzero(v7, 0x17A0uLL);
    }
  }

  return v5;
}

uint64_t monitor_readv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(*(a1 + 80) + 48) + 16))();
  if (v7)
  {
    return v7;
  }

  if (!a4)
  {
    v11 = *(*(a1 + 88) + 48);
    v12 = (v11 + 80);
    v14 = (v11 + 2816);
    v8 = 1;
LABEL_25:
    *v14 += v8;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = (a2 + 8);
  do
  {
    v10 = *v9;
    v9 += 2;
    v8 += v10;
    --a4;
  }

  while (a4);
  v11 = *(*(a1 + 88) + 48);
  if (v8 >= 0x41)
  {
    v13 = 1;
    v15 = 2;
    v16 = 3;
    v17 = 7;
    if (v8 >= 0x400001)
    {
      v17 = 8;
    }

    if (v8 < 0x100001)
    {
      v17 = 6;
    }

    if (v8 < 0x40001)
    {
      v17 = 5;
    }

    if (v8 <= 0x10000)
    {
      v17 = 4;
    }

    if (v8 > 0x1000)
    {
      v16 = v17;
    }

    if (v8 >= 0x401)
    {
      v15 = v16;
    }

    if (v8 >= 0x201)
    {
      v13 = v15;
    }

    v12 = (v11 + 80);
    ++*(v11 + 8 * v13 + 2816);
    goto LABEL_24;
  }

  v12 = (v11 + 80);
  ++*(v11 + 2816);
  if (v8)
  {
    v13 = 0;
LABEL_24:
    v14 = (v11 + 8 * v13 + 2888);
    goto LABEL_25;
  }

LABEL_26:
  v18 = *(v11 + 6128) + 1;
  *(v11 + 6128) = v18;
  if (v18 >= dword_2A189233C)
  {
    *(v11 + 6128) = 0;
    v19 = atomic_load((*(v11 + 6136) + 6048));
    if (v19)
    {
      memcpy(*(v11 + 6136), v12, 0x17A0uLL);
      atomic_fetch_xor((*(v11 + 6136) + 6048), 1u);
      bzero(v12, 0x17A0uLL);
    }
  }

  return v7;
}

uint64_t monitor_readmsg(uint64_t a1, void *a2)
{
  v4 = (*(*(*(a1 + 80) + 48) + 24))();
  if (v4)
  {
    return v4;
  }

  v5 = a2[2];
  if (!v5)
  {
    v9 = *(*(a1 + 88) + 48);
    v10 = (v9 + 80);
    v12 = (v9 + 2960);
    v6 = 1;
LABEL_25:
    *v12 += v6;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = (*a2 + 8);
  do
  {
    v8 = *v7;
    v7 += 2;
    v6 += v8;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 88) + 48);
  if (v6 >= 0x41)
  {
    v11 = 1;
    v13 = 2;
    v14 = 3;
    v15 = 7;
    if (v6 >= 0x400001)
    {
      v15 = 8;
    }

    if (v6 < 0x100001)
    {
      v15 = 6;
    }

    if (v6 < 0x40001)
    {
      v15 = 5;
    }

    if (v6 <= 0x10000)
    {
      v15 = 4;
    }

    if (v6 > 0x1000)
    {
      v14 = v15;
    }

    if (v6 >= 0x401)
    {
      v13 = v14;
    }

    if (v6 >= 0x201)
    {
      v11 = v13;
    }

    v10 = (v9 + 80);
    ++*(v9 + 8 * v11 + 2960);
    goto LABEL_24;
  }

  v10 = (v9 + 80);
  ++*(v9 + 2960);
  if (v6)
  {
    v11 = 0;
LABEL_24:
    v12 = (v9 + 8 * v11 + 3032);
    goto LABEL_25;
  }

LABEL_26:
  v16 = *(v9 + 6128) + 1;
  *(v9 + 6128) = v16;
  if (v16 >= dword_2A189233C)
  {
    *(v9 + 6128) = 0;
    v17 = atomic_load((*(v9 + 6136) + 6048));
    if (v17)
    {
      memcpy(*(v9 + 6136), v10, 0x17A0uLL);
      atomic_fetch_xor((*(v9 + 6136) + 6048), 1u);
      bzero(v10, 0x17A0uLL);
    }
  }

  return v4;
}