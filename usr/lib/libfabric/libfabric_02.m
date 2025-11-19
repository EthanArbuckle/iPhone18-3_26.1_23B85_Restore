uint64_t rxm_cq_owner_writeerr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = *(*a2 + 48);
  v16 = a2[10];
  v10 = *(a2 + 4);
  v15[3] = *(a2 + 3);
  v15[4] = v10;
  v11 = *(a2 + 2);
  v15[1] = *(a2 + 1);
  v15[2] = v11;
  v15[0] = *a2;
  v13 = *(v8 + 56);
  v12 = *(v8 + 64);
  *&v15[0] = v13;
  *(&v15[0] + 1) = v12;
  if ((v12 & 0x1000000000) != 0)
  {
    return (*(*(v9 + 12856) + 16))(*(v9 + 12840), v15);
  }

  else
  {
    return (*(*(*(a1 - 56) + 24) + 16))(*(a1 - 56), v15, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t rxm_post_recv(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 12824))
  {
    *(a1 + 96) = 0;
  }

  *(a1 + 32) = 3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v2 = *(*(v1 + 80) + 384);
  v3 = *(a1 + 40);
  return (*(*(*(a1 + 56) + 40) + 8))();
}

uint64_t rxm_prepost_recv(uint64_t a1, uint64_t a2)
{
  if (!*(*(*(a1 + 432) + 80) + 48))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = rxm_rx_buf_alloc(a1, a2);
    if (!v5)
    {
      return 4294967284;
    }

    v6 = v5;
    v7 = rxm_post_recv(v5);
    if (v7)
    {
      break;
    }

    if (++v4 >= *(*(*(a1 + 432) + 80) + 48))
    {
      return 0;
    }
  }

  v8 = v7;
  ofi_buf_free(v6);
  return v8;
}

uint64_t *rxm_rx_buf_alloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12992);
  if ((v2[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v5 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(*(a1 + 12992)))
    {
      return 0;
    }

    v5 = *v2;
  }

  if (v5 == v2[1])
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    *v2 = *v5;
  }

  if (atomic_fetch_add((v5[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v5 == v5)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v5 = v5;
  if (v5[12] != a1)
  {
    rxm_rx_buf_alloc_cold_2();
  }

  result = v5 + 6;
  *(v5 + 20) = 3;
  v5[13] = a2;
  *(v5 + 192) = 1;
  if (!*(a1 + 12824))
  {
    v5[18] = *(a2 + 8);
  }

  return result;
}

void rxm_ep_do_progress(uint64_t a1)
{
  v2 = 0;
  v28 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = (*(*(*(a1 + 12880) + 24) + 8))();
    v10 = v3;
    if (v3 < 1)
    {
      if (v3 && v3 != -35)
      {
        if (v3 == -259)
        {
          (*(a1 + 12912))(a1);
          goto LABEL_20;
        }

        rxm_cq_write_error_all(a1, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    else
    {
      v11 = &v27;
      v12 = v3;
      do
      {
        v13 = (*(a1 + 12920))(a1, v11);
        if (v13)
        {
          rxm_cq_write_error_all(a1, v13, v14, v15, v16, v17, v18, v19);
        }

        v11 += 40;
        --v12;
      }

      while (v12);
      v2 += v10;
    }

    if (v10 == -35)
    {
      v20 = *(a1 + 440) == 0;
      goto LABEL_10;
    }

LABEL_20:
    if (*(a1 + 440))
    {
      *(a1 + 12904) = rxm_cq_eq_fairness;
      goto LABEL_22;
    }

    v23 = *(a1 + 12904) - 1;
    *(a1 + 12904) = v23;
    if (v23)
    {
      continue;
    }

    v20 = 1;
LABEL_10:
    *(a1 + 12904) = rxm_cq_eq_fairness;
    if (!v20 || rxm_cm_progress_interval == 0)
    {
      goto LABEL_22;
    }

    v22 = ofi_gettime_us();
    if (v22 - *(a1 + 12888) > rxm_cm_progress_interval)
    {
      *(a1 + 12888) = v22;
LABEL_22:
      rxm_conn_progress(a1);
    }
  }

  while (v10 >= 1 && v2 < *(a1 + 12896));
  v24 = *(a1 + 13032);
  if (v24 != (a1 + 13032))
  {
    do
    {
      v25 = *v24;
      rxm_ep_progress_deferred_queue(a1, (v24 - 6));
      v24 = v25;
    }

    while (v25 != (a1 + 13032));
  }

  v26 = *MEMORY[0x29EDCA608];
}

uint64_t rxm_ep_progress(uint64_t a1)
{
  (*(a1 + 384))(a1 + 312);
  rxm_ep_do_progress(a1);
  v2 = *(a1 + 392);

  return v2(a1 + 312);
}

uint64_t rxm_ep_progress_coll(uint64_t a1)
{
  (*(a1 + 384))(a1 + 312);
  rxm_ep_do_progress(a1);
  (*(a1 + 392))(a1 + 312);
  v2 = *(a1 + 12832);
  if (v2)
  {
    (*(v2 + 296))();
  }

  result = *(a1 + 12840);
  if (result)
  {
    v4 = *(result + 296);

    return v4();
  }

  return result;
}

uint64_t rxm_cq_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23[0] = 0;
  v24 = 0u;
  v25 = 0;
  v23[1] = 0x80000000000;
  v22[0] = 16;
  v8 = malloc_type_calloc(1uLL, 0x188uLL, 0x10B2040910C7CF6uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v13 = ofi_cq_init(&rxm_prov, a1, a2, v8, ofi_cq_progress, a4);
  if (!v13)
  {
    if ((*(a2 + 13) & 8) == 0)
    {
      v9[43] = 24;
      v9[45] = &rxm_peer_cq_fi_ops;
      v9[46] = &rxm_cq_owner_ops;
      v22[1] = v9 + 43;
      v14 = *(a1 + 488);
      if (v14 && (v15 = (*(*(v14 + 24) + 16))(v14, v23, v9 + 47, v22, v10, v11, v12), v15) || (v19 = *(a1 + 496)) != 0 && (v15 = (*(*(v19 + 24) + 16))(v19, v23, v9 + 48, v22, v10, v11, v12), v15))
      {
        v13 = v15;
        v20 = v9[47];
        if (v20)
        {
          (*(*(v20 + 16) + 8))(v20, v16, v17, v18, v10, v11, v12);
        }

        ofi_cq_cleanup(v9);
        goto LABEL_3;
      }

      v9[3] = &rxm_cq_ops;
    }

    v13 = 0;
    *a3 = v9;
    v9[2] = &rxm_cq_fi_ops;
    return v13;
  }

LABEL_3:
  free(v9);
  return v13;
}

uint64_t rxm_cq_write_recv_comp(void *a1)
{
  v1 = a1[6];
  v2 = v1[1606];
  if (v2 && (v3 = a1[35], v3 < 0))
  {
    v11 = *(a1[13] + 64);
    v12 = 0u;
    v13 = 0u;
    v14 = v3;
    return (*(v2 + 8))(v1[1604], &v11, 0);
  }

  else
  {
    v4 = v1[53];
    v5 = v1[15];
    v6 = a1[34];
    v7 = a1[35];
    if ((*(v4 + 15) & 2) != 0)
    {
      v8 = *(*(a1[12] + 8) + 8);
    }

    result = (*(*(*(v5 + 288) + 24) + 8))();
    if (result)
    {
      result = fi_log_enabled(&rxm_prov, 0, 6);
      if (result)
      {
        v10 = *__error();
        fi_log(&rxm_prov, 0, 6, "rxm_cq_write_recv_comp", 131, "Unable to write rx completion\n");
        result = __error();
        *result = v10;
      }
    }
  }

  return result;
}

uint64_t rxm_replace_rx_buf(uint64_t a1)
{
  result = rxm_rx_buf_alloc(*(a1 + 48), *(a1 + 56));
  if (result)
  {
    v3 = result;
    *(a1 + 144) = 0;
    result = rxm_post_recv(result);
    if (result)
    {

      return ofi_buf_free(v3);
    }
  }

  return result;
}

uint64_t rxm_init_sar_proto(uint64_t result)
{
  v1 = *(*(result + 48) + 13016);
  if ((*(v1 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v2 = result;
  v3 = *v1;
  if (*v1)
  {
    goto LABEL_3;
  }

  result = ofi_bufpool_grow(*(*(result + 48) + 13016));
  if (!result)
  {
    v3 = *v1;
LABEL_3:
    if (v3 == *(v1 + 8))
    {
      *v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = *v3;
    }

    if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
    {
      sock_pe_acquire_entry_cold_4();
    }

    if (*v3 == v3)
    {
      sock_pe_acquire_entry_cold_3();
    }

    *v3 = v3;
    v5 = v3 + 6;
    v6 = v2[12];
    if (!v6)
    {
      v7 = v2[6];
      v8 = v2[29];
      v9 = *(v7 + 8 * (v8 >> 10) + 448);
      if (!v9 || !*(v7 + 4 * (v8 >> 10) + 8640))
      {
        sock_av_remove_cold_1();
      }

      v6 = *(v9 + 8 * (v2[29] & 0x3FFLL));
      v2[12] = v6;
    }

    v10 = v2[30];
    v3[12] = v6;
    v3[13] = v10;
    v3[10] = v2[13];
    v3[11] = 0;
    v11 = *(v2[12] + 88);
    v12 = *v11;
    v3[6] = *v11;
    v3[7] = v11;
    *(v12 + 8) = v5;
    *v11 = v5;
    v13 = v3 + 8;
    v3[8] = v3 + 8;
    v3[9] = v3 + 8;
    if (*(v2[13] + 88))
    {
      v2[10] = v13;
      v2[11] = v13;
      v3[8] = v2 + 10;
      v3[9] = v2 + 10;
    }

    v2[14] = v5;
    return result;
  }

  result = fi_log_enabled(&rxm_prov, 0, 6);
  if (result)
  {
    v4 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_init_sar_proto", 417, "Failed to allocate proto info buffer\n");
    result = __error();
    *result = v4;
  }

  return result;
}

uint64_t rxm_atomic_send_resp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4 + 72;
  *(a3 + 32) = 20;
  v12 = *(a2 + 258);
  v13 = *(a2 + 280);
  *(a3 + 444) = 0;
  *(a3 + 456) = 0;
  *(a3 + 464) = 0;
  *(a3 + 448) = a4 + 8;
  *(a3 + 409) = 5;
  *(a3 + 442) = v12;
  *(a3 + 464) = v13;
  v14 = *(a2 + 96);
  v15 = *(a2 + 240);
  *(a3 + 416) = *(v14 + 32);
  *(a3 + 424) = v15;
  *(a3 + 472) = bswap32(a5);
  *(a3 + 476) = bswap32(a4);
  if ((a4 + 72) >= *(a1 + 12952))
  {
    v32[0] = a3 + 408;
    v32[1] = a4 + 72;
    v28[0] = v32;
    v28[1] = a3 + 40;
    v29 = xmmword_29ED128F0;
    v30 = a3;
    v31 = 0;
    v16 = (*(*(*(v14 + 16) + 40) + 48))(*(v14 + 16), v28, 0x1000000, a4, a5, a6, a7, a8);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = (*(*(*(v14 + 16) + 40) + 56))();
    if (!v16)
    {
      ofi_buf_free(a3);
LABEL_12:
      v25 = *(a2 + 216);
      if (v25 != (a2 + 288))
      {
        free(v25);
        *(a2 + 216) = a2 + 288;
      }

      if (*(a2 + 144) == 1 && (*(*(a2 + 48) + 12824) || *(*(a2 + 96) + 16)))
      {
        rxm_post_recv(a2);
      }

      else
      {
        ofi_buf_free(a2);
      }

      return v16;
    }
  }

  if (fi_log_enabled(&rxm_prov, 0, 6))
  {
    v17 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_atomic_send_resp", 1131, "Unable to send Atomic Response\n");
    *__error() = v17;
  }

  if (v16 != -35)
  {
    goto LABEL_12;
  }

  v18 = rxm_ep_alloc_deferred_tx_entry(a1, *(a2 + 96), 5);
  if (v18)
  {
    v18[5] = a3;
    v18[6] = v11;
    v19 = v18[1];
    if (v19[8] == v19 + 8)
    {
      v20 = *(v19[3] + 13040);
      v21 = *v20;
      v19[6] = *v20;
      v19[7] = v20;
      *(v21 + 8) = v19 + 6;
      *v20 = (v19 + 6);
    }

    v16 = 0;
    v22 = v19[9];
    v23 = *v22;
    v18[2] = *v22;
    v18[3] = v22;
    v24 = v18 + 2;
    *(v23 + 8) = v24;
    *v22 = v24;
    goto LABEL_12;
  }

  if (fi_log_enabled(&rxm_prov, 0, 6))
  {
    v27 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_atomic_send_resp", 1139, "Unable to allocate deferred Atomic Response\n");
    *__error() = v27;
  }

  return -12;
}

uint64_t rxm_do_atomic(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8)
{
  switch(result)
  {
    case 8:
      if (a8 - 19 <= 0xFFFFFFF8)
      {
        rxm_do_atomic_cold_1();
      }

      v10 = *(&ofi_atomic_swap_handlers[16 * (a8 - 12)] + a7);

      return v10(a2, a3, a4, a5, a6);
    case 7:
      if (a8 >= 0xC)
      {
        rxm_do_atomic_cold_2();
      }

      v9 = *(&ofi_atomic_readwrite_handlers[16 * a8] + a7);

      return v9(a2, a3, a5, a6);
    case 6:
      if (a8 > 0xB || a8 == 10)
      {
        rxm_do_atomic_cold_3();
      }

      v8 = *(&ofi_atomic_write_handlers[16 * a8] + a7);

      return v8(a2, a3, a6);
  }

  return result;
}

uint64_t rxm_cq_close(void *a1)
{
  v2 = a1[48];
  if (v2)
  {
    (*(*(v2 + 16) + 8))();
  }

  v3 = a1[47];
  if (v3)
  {
    (*(*(v3 + 16) + 8))();
  }

  v4 = ofi_cq_cleanup(a1);
  free(a1);
  return v4;
}

BOOL OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return fi_log_enabled(a1, 0, 6);
}

BOOL rxm_passthru_info(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 88);
    return v1 && *(v1 + 4) == 22;
  }

  return result;
}

BOOL rxm_info_to_core_mr_modes(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    if (result >= 0x10005)
    {
      v7 = *(a3 + 96);
      v8 = *(v7 + 36) | 0x74;
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    if (result >= 0x10005)
    {
      v7 = *(a3 + 96);
      v9 = *(v7 + 36) | 4;
      *(v7 + 36) = v9;
LABEL_14:
      v10 = v9 | 0x70;
      goto LABEL_15;
    }

LABEL_10:
    *(a3 + 16) |= 0x80000000000000uLL;
    *(*(a3 + 96) + 36) = 0;
    return result;
  }

  v6 = *(v5 + 36);
  if ((v6 & 3) != 0)
  {
    *(a3 + 16) |= 0x80000000000000uLL;
    *(*(a3 + 96) + 36) = v6;
    return result;
  }

  if (result < 0x10005)
  {
    goto LABEL_10;
  }

  *(*(a3 + 96) + 36) |= 4u;
  result = ofi_rma_target_allowed(*(a2 + 8));
  v7 = *(a3 + 96);
  if (!result)
  {
    v9 = *(v7 + 36);
    goto LABEL_14;
  }

  v10 = *(v7 + 36) | *(*(a2 + 96) + 36);
LABEL_15:
  *(v7 + 36) = v10;
  if ((*(a2 + 13) & 0x80) == 0)
  {
    return result;
  }

  v8 = v10 | 0x400;
LABEL_17:
  *(v7 + 36) = v8;
  return result;
}

uint64_t rxm_info_to_core(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *(a3 + 88);
    if (v7)
    {
      if (*(v7 + 4) == 22)
      {
        if (rxm_passthru)
        {
          if (a2)
          {
            *(a4 + 8) = *(a2 + 8);
            v8 = *(a2 + 96);
            if (v8)
            {
              v9 = *(a4 + 96);
              *(v9 + 16) = *(v8 + 16);
              *(v9 + 24) = *(v8 + 24);
              *(v9 + 28) = *(v8 + 28);
              *(v9 + 36) = *(v8 + 36);
              *(v9 + 48) = *(v8 + 48);
              *(v9 + 136) = *(v8 + 136);
              *(v9 + 184) = *(v8 + 184);
            }

            v10 = *(a2 + 88);
            if (v10)
            {
              v11 = *(a4 + 88);
              v11[1] = v10[1];
              v11[2] = v10[2];
              v11[3] = v10[3];
            }

            v12 = *(a2 + 72);
            if (v12)
            {
              v13 = *(a4 + 72);
              *v13 = *v12;
              *(v13 + 16) = *(v12 + 16);
              *(v13 + 40) = *(v12 + 40);
              *(v13 + 56) = *(v12 + 56);
              *(v13 + 72) = *(v12 + 72);
            }

            v14 = *(a2 + 80);
            if (v14)
            {
              v15 = *(a4 + 80);
              *v15 = *v14;
              *(v15 + 16) = *(v14 + 16);
              *(v15 + 56) = *(v14 + 56);
            }
          }

          result = 0;
          v17 = *(a4 + 88);
          *v17 = 1;
          *(v17 + 64) = xmmword_29ED129A0;
          v18 = rxm_msg_tx_size;
          if (!rxm_msg_tx_size)
          {
            v18 = 128;
          }

          v19 = *(a4 + 80);
          *(*(a4 + 72) + 48) = v18;
          v20 = rxm_msg_rx_size;
          if (!rxm_msg_rx_size)
          {
            v20 = 4096;
          }

          *(v19 + 48) = v20;
          return result;
        }

        return 4294967200;
      }
    }
  }

  rxm_info_to_core_mr_modes(a1, a2, a4);
  *(a4 + 16) |= 0x900000000000000uLL;
  if (a2)
  {
    v21 = *(a2 + 8) & 0x800000003F06;
    *(a4 + 8) = v21;
    v22 = *(a2 + 8) & 0x18;
    if (v22)
    {
      v21 |= 0xC02uLL;
    }

    if (v22 | v21 & 2)
    {
      if ((v21 & 2) != 0)
      {
        v21 |= 0x3104uLL;
      }

      *(a4 + 8) = v21;
    }

    v23 = *(a2 + 96);
    if (v23)
    {
      v24 = *(a4 + 96);
      *(v24 + 136) |= *(v23 + 136);
      *(v24 + 16) = *(v23 + 16);
    }

    v25 = *(a2 + 72);
    if (v25)
    {
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = *(a4 + 72);
      *(v28 + 16) = v27 & 0x8000000;
      *(v28 + 24) = v26;
    }

    v29 = *(a2 + 80);
    if (v29)
    {
      v30 = *(a4 + 80);
      v31 = *(v29 + 24);
      *(v30 + 16) = 0;
      *(v30 + 24) = v31;
    }

    if (*(a2 + 13) & 0x80) != 0 && (ofi_hmem_disable_p2p)
    {
      return 4294967200;
    }
  }

  **(a4 + 88) = 1;
  v39 = 0;
  if (fi_param_get(&rxm_prov, "use_srx", &v39) == -96)
  {
    if (a3)
    {
      v32 = a3;
    }

    else
    {
      v32 = a2;
    }

    if (!v32)
    {
      goto LABEL_43;
    }

    v33 = *(v32 + 104);
    if (!v33)
    {
      goto LABEL_43;
    }

    v34 = *(v33 + 16);
    if (!v34 || !strcasestr(v34, "tcp"))
    {
      goto LABEL_43;
    }

LABEL_45:
    *(*(a4 + 88) + 72) = -1;
    v35 = 4096;
    goto LABEL_46;
  }

  if (v39)
  {
    goto LABEL_45;
  }

LABEL_43:
  v35 = 128;
LABEL_46:
  result = 0;
  if (rxm_msg_rx_size)
  {
    v35 = rxm_msg_rx_size;
  }

  v37 = *(a4 + 72);
  v36 = *(a4 + 80);
  *(v36 + 48) = v35;
  *(v37 + 16) &= 0xFFFFFFFFE8FFFFFFLL;
  v38 = rxm_msg_tx_size;
  if (!rxm_msg_tx_size)
  {
    v38 = 128;
  }

  *(v37 + 48) = v38;
  *(v36 + 16) &= ~0x10000uLL;
  *(*(a4 + 96) + 136) &= 0xFFFFF5FFFFFFFFFFLL;
  *(a4 + 8) &= 0xFFFFF5FFFFFFFFFFLL;
  return result;
}

uint64_t rxm_info_to_rxm(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a3 || (v6 = a3[11]) == 0 || *(v6 + 4) != 22)
  {
    v42 = *(a2 + 16) & 0xFEFFFFFFFFFFFFFFLL | a3[2];
    a4[1] = a3[1] & 0xFFE7FFFFFFFFFFFFLL | (((*(a2 + 8) >> 51) & 3) << 51);
    a4[2] = v42;
    v43 = a3[9];
    v44 = a4[9];
    *v44 = *v43;
    *(v44 + 8) = v42;
    v45 = *(a2 + 72);
    *(v44 + 24) = *(v45 + 24);
    v46 = a4[12];
    if (v46)
    {
      v47 = *(v46 + 36);
      if ((v47 & 4) != 0)
      {
        goto LABEL_20;
      }

      v48 = v42 & 0x80000000000000;
      if (v47 <= 7 && v48 != 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v42 & 0x80000000000000) != 0)
    {
      goto LABEL_20;
    }

    v50 = *(v45 + 40);
    v51 = v50 > 0x40;
    v52 = v50 - 64;
    if (v51)
    {
LABEL_21:
      v53 = *(v43 + 48);
      if (v53 >= rxm_def_tx_size)
      {
        v53 = rxm_def_tx_size;
      }

      *(v44 + 40) = v52;
      *(v44 + 48) = v53;
      v54 = a3[10];
      v55 = a3[11];
      v56 = v54[6];
      if (v56 >= rxm_def_rx_size)
      {
        v56 = rxm_def_rx_size;
      }

      v57 = a4[10];
      v58 = a4[11];
      v57[6] = v56;
      *(v44 + 56) = vbslq_s8(vcgtq_u64(*(v45 + 56), *(v43 + 56)), *(v43 + 56), *(v45 + 56));
      v59 = v57[1] & 0xFEFFFFFFFFFFFFFFLL;
      *v57 = *v54;
      v57[1] = v59;
      v60 = *(a2 + 80);
      v57[3] = *(v60 + 24);
      v61 = *(v60 + 56);
      if (v54[7] < v61)
      {
        v61 = v54[7];
      }

      v57[7] = v61;
      v62 = v55[5];
      v64 = v55[2];
      v63 = v55[3];
      v58[4] = v55[4];
      v58[5] = v62;
      v58[2] = v64;
      v58[3] = v63;
      v65 = v55[1];
      *v58 = *v55;
      v58[1] = v65;
      v66 = *(a2 + 88);
      v67 = a4[11];
      v68 = a4[12];
      *(v67 + 16) = *(v66 + 16);
      *(v67 + 32) = *(v66 + 32);
      *(v67 + 48) = *(v66 + 48);
      v69 = a3[12];
      v70 = v69[4];
      v72 = v69[1];
      v71 = v69[2];
      v68[3] = v69[3];
      v68[4] = v70;
      v68[1] = v72;
      v68[2] = v71;
      v73 = v69[8];
      v75 = v69[5];
      v74 = v69[6];
      v68[7] = v69[7];
      v68[8] = v73;
      v68[5] = v75;
      v68[6] = v74;
      v76 = v69[9];
      v77 = v69[10];
      v78 = v69[12];
      v68[11] = v69[11];
      v68[12] = v78;
      v68[9] = v76;
      v68[10] = v77;
      *v68 = *v69;
      v79 = a3[12];
      v80 = *(a2 + 96);
      v81 = a4[12];
      *(v81 + 136) = *(v79 + 136) & 0xFFE7FFFFFFFFFFFFLL | (((*(v80 + 136) >> 51) & 3) << 51);
      *(v81 + 36) |= *(v80 + 36);
      v82 = *(v79 + 48);
      v85 = v80 + 40;
      v84 = *(v80 + 40);
      v83 = *(v85 + 8);
      if (v83 < v82)
      {
        v82 = v83;
      }

      *(v81 + 40) = v84;
      *(v81 + 48) = v82;
      v86 = *(a2 + 112);
      if (v86)
      {
        v87 = ofi_nic_dup(v86);
        a4[14] = v87;
        if (!v87)
        {
          return 4294967284;
        }
      }

      if ((*(a2 + 13) & 0x80) == 0)
      {
        result = 0;
        a4[1] &= ~0x800000000000uLL;
        v89 = a4[10];
        *a4[9] &= ~0x800000000000uLL;
        *v89 &= ~0x800000000000uLL;
        return result;
      }

      return 0;
    }

LABEL_20:
    v52 = *(v43 + 40);
    goto LABEL_21;
  }

  *(a4 + 1) = *(a2 + 8);
  v7 = a4[9];
  v8 = *(a2 + 72);
  *v7 = *v8;
  v9 = v8[4];
  v11 = v8[1];
  v10 = v8[2];
  v7[3] = v8[3];
  v7[4] = v9;
  v7[1] = v11;
  v7[2] = v10;
  v12 = *(a3[9] + 48);
  if (v12 >= rxm_def_tx_size)
  {
    v12 = rxm_def_tx_size;
  }

  v13 = a4[10];
  *(a4[9] + 48) = v12;
  v14 = *(a2 + 80);
  v15 = v14[3];
  v17 = *v14;
  v16 = v14[1];
  v13[2] = v14[2];
  v13[3] = v15;
  *v13 = v17;
  v13[1] = v16;
  v18 = a3[11];
  v19 = *(a3[10] + 48);
  if (v19 >= rxm_def_rx_size)
  {
    v19 = rxm_def_rx_size;
  }

  v20 = a4[11];
  *(a4[10] + 48) = v19;
  v21 = v18[5];
  v23 = v18[2];
  v22 = v18[3];
  v20[4] = v18[4];
  v20[5] = v21;
  v20[2] = v23;
  v20[3] = v22;
  v24 = v18[1];
  *v20 = *v18;
  v20[1] = v24;
  v25 = *(a2 + 88);
  v26 = a4[11];
  v27 = a4[12];
  *(v26 + 16) = *(v25 + 16);
  *(v26 + 32) = *(v25 + 32);
  *(v26 + 48) = *(v25 + 48);
  v28 = a3[12];
  v29 = v28[4];
  v31 = v28[1];
  v30 = v28[2];
  v27[3] = v28[3];
  v27[4] = v29;
  v27[1] = v31;
  v27[2] = v30;
  v32 = v28[8];
  v34 = v28[5];
  v33 = v28[6];
  v27[7] = v28[7];
  v27[8] = v32;
  v27[5] = v34;
  v27[6] = v33;
  v35 = v28[9];
  v36 = v28[10];
  v37 = v28[12];
  v27[11] = v28[11];
  v27[12] = v37;
  v27[9] = v35;
  v27[10] = v36;
  *v27 = *v28;
  v38 = *(a2 + 96);
  v39 = a4[12];
  *(v39 + 36) = *(v38 + 36);
  *(v39 + 40) = *(v38 + 40);
  *(v39 + 128) = *(v38 + 128);
  *(v39 + 144) = *(v38 + 144);
  *(v39 + 168) = *(v38 + 168);
  *(v39 + 184) = *(v38 + 184);
  v40 = *(a2 + 112);
  if (!v40)
  {
    return 0;
  }

  v41 = ofi_nic_dup(v40);
  a4[14] = v41;
  if (v41)
  {
    return 0;
  }

  return 4294967284;
}

uint64_t rxm_getinfo(uint64_t a1, const char *a2, char *a3, unint64_t a4, uint64_t a5, void **a6)
{
  v8 = a4;
  v9 = a3;
  v47 = 0;
  if (!ofi_is_wildcard_listen_addr(a2, a3, a4, a5))
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_32;
    }

    goto LABEL_7;
  }

  if (!v9)
  {
    v17 = *(a5 + 48);
    if (!v17)
    {
      goto LABEL_21;
    }

    v18 = *(v17 + 1);
    switch(v18)
    {
      case 30:
LABEL_12:
        v15 = bswap32(*(v17 + 2)) >> 16;
        goto LABEL_22;
      case 27:
        v15 = bswap64(*(v17 + 24));
        goto LABEL_22;
      case 2:
        goto LABEL_12;
    }

    if (fi_log_enabled(&core_prov, 0, 1))
    {
      v21 = *__error();
      fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
      v15 = 0;
      *__error() = v21;
    }

    else
    {
LABEL_21:
      v15 = 0;
    }

LABEL_22:
    v22 = *(a5 + 48);
    v23 = *(v22 + 1);
    if (v23 != 30)
    {
      if (v23 == 27)
      {
        v9 = 0;
        *(v22 + 24) = xmmword_29ED128C0;
        goto LABEL_32;
      }

      if (v23 != 2)
      {
        sock_get_src_addr_cold_1();
      }
    }

    v9 = 0;
    *(v22 + 2) = 0;
    goto LABEL_32;
  }

  v12 = getaddrinfo(0, v9, 0, &v47);
  if (!v12)
  {
    ai_addr = v47->ai_addr;
    if (!ai_addr)
    {
      goto LABEL_30;
    }

    sa_family = ai_addr->sa_family;
    switch(sa_family)
    {
      case 30:
LABEL_17:
        v15 = bswap32(*ai_addr->sa_data) >> 16;
        goto LABEL_31;
      case 27:
        v15 = bswap64(*&ai_addr[1].sa_data[6]);
        goto LABEL_31;
      case 2:
        goto LABEL_17;
    }

    if (fi_log_enabled(&core_prov, 0, 1))
    {
      v24 = *__error();
      fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
      v15 = 0;
      *__error() = v24;
    }

    else
    {
LABEL_30:
      v15 = 0;
    }

LABEL_31:
    freeaddrinfo(v47);
    v9 = 0;
    v8 &= ~0x200000000000000uLL;
    if (a5)
    {
LABEL_32:
      if ((*(a5 + 8) & 0x10) == 0)
      {
LABEL_33:
        v16 = 0;
        goto LABEL_34;
      }

      v44 = *(a5 + 72);
      if (v44 && (*(v44 + 24) & 0xDB) != 0)
      {
        if (fi_log_enabled(&rxm_prov, 2, 0))
        {
          v14 = *__error();
          fi_log(&rxm_prov, 2, 0, "rxm_validate_atomic_hints", 513, "Hints tx_attr msg_order not supported for atomics\n");
LABEL_93:
          v13 = 4294967274;
          goto LABEL_94;
        }
      }

      else
      {
        v45 = *(a5 + 80);
        if (!v45 || (*(v45 + 24) & 0xDB) == 0)
        {
          goto LABEL_33;
        }

        if (fi_log_enabled(&rxm_prov, 2, 0))
        {
          v14 = *__error();
          fi_log(&rxm_prov, 2, 0, "rxm_validate_atomic_hints", 519, "Hints rx_attr msg_order not supported for atomics\n");
          goto LABEL_93;
        }
      }

      return 4294967274;
    }

LABEL_7:
    v16 = 1;
LABEL_34:
    if (rxm_rescan)
    {
      v25 = v8;
    }

    else
    {
      v25 = v8 & 0xFFFFFFF7FFFFFFFFLL;
    }

    if (rxm_rescan <= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = v8 | 0x800000000;
    }

    v13 = ofix_getinfo(a1, a2, v9, v26, &rxm_util_prov, a5, rxm_info_to_core, rxm_info_to_rxm, a6);
    if (v13)
    {
      return v13;
    }

    v27 = *a6;
    if (v15)
    {
      if (v27)
      {
        v28 = bswap32(v15) >> 16;
        v29 = bswap64(v28 | 0x13F0000);
        v30 = *a6;
        while (1)
        {
          v31 = v30[6];
          if (!v31)
          {
            rxm_getinfo_cold_2();
          }

          v32 = *(v31 + 1);
          if (v32 != 30)
          {
            if (v32 == 27)
            {
              *(v31 + 24) = v29;
              *(v31 + 32) = -1;
              goto LABEL_50;
            }

            if (v32 != 2)
            {
              sock_get_src_addr_cold_1();
            }
          }

          *(v31 + 2) = v28;
LABEL_50:
          v30 = *v30;
          if (!v30)
          {
            goto LABEL_51;
          }
        }
      }

      return 0;
    }

LABEL_51:
    if (!v27)
    {
      return 0;
    }

    v33 = v27;
    while (1)
    {
      v34 = v33[12];
      if (v34[6] == 1 || force_auto_progress != 0)
      {
        v34[4] = 1;
      }

      v36 = v33[11];
      if (v36 && *(v36 + 4) == 22)
      {
        goto LABEL_83;
      }

      if (!v16)
      {
        break;
      }

      v33[1] &= 0xF5FFFFFFFFFFFFEFLL;
      v37 = v33[10];
      *v33[9] &= ~0x10uLL;
      *v37 &= 0xF5FFFFFFFFFFFFEFLL;
      v34[6] = 2;
LABEL_83:
      v33 = *v33;
      if (!v33)
      {
        return 0;
      }
    }

    if ((*(a5 + 15) & 8) == 0)
    {
      v33[1] &= ~0x800000000000000uLL;
      *v33[10] &= ~0x800000000000000uLL;
    }

    if ((*(a5 + 22) & 8) != 0)
    {
      v33[2] |= 0x8000000000000uLL;
    }

    if ((*(a5 + 8) & 0x10) != 0)
    {
      v38 = v33[9];
      v39 = v33[10];
      v38[3] &= 0xFFFFFFFFFFFFFF24;
      v39[3] &= 0xFFFFFFFFFFFFFF24;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
    }

    else
    {
      v33[1] &= ~0x10uLL;
      v38 = v33[9];
      v39 = v33[10];
      *v38 &= ~0x10uLL;
      *v39 &= ~0x10uLL;
    }

    v40 = *(a5 + 96);
    if (v40)
    {
      v41 = *(v40 + 36);
      if ((v41 & 4) != 0)
      {
LABEL_75:
        if (*(v40 + 24) == 1)
        {
LABEL_77:
          v42 = *(a5 + 88);
          if (v42 && *(v42 + 56) && (v27[1] & 0x48) != 0)
          {
            if (fi_log_enabled(&rxm_prov, 2, 0))
            {
              v43 = *__error();
              fi_log(&rxm_prov, 2, 0, "rxm_alter_info", 497, "mem_tag_format requested: 0x%llx (note: provider doesn't optimize based on mem_tag_format)\n", *(*(a5 + 88) + 56));
              *__error() = v43;
            }

            *(v27[11] + 56) = *(*(a5 + 88) + 56);
          }

          goto LABEL_83;
        }

LABEL_76:
        v34[6] = 2;
        goto LABEL_77;
      }

      if (v41 > 7)
      {
        goto LABEL_73;
      }
    }

    if ((*(a5 + 22) & 0x80) == 0)
    {
LABEL_73:
      v33[2] &= ~0x80000000000000uLL;
      v38[1] &= ~0x80000000000000uLL;
      v39[1] &= ~0x80000000000000uLL;
      v34[9] &= ~4u;
    }

    if (!v40)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v13 = v12;
  if (fi_log_enabled(&rxm_prov, 0, 0))
  {
    v14 = *__error();
    fi_log(&rxm_prov, 0, 0, "rxm_getinfo", 540, "Unable to getaddrinfo\n");
LABEL_94:
    *__error() = v14;
  }

  return v13;
}

void *fi_rxm_ini(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  fi_param_define(&rxm_prov, "buffer_size", 3, "Defines the allocated buffer size used for bounce buffers, including buffers posted at the receive side to handle unexpected messages.  This value corresponds to the rxm inject limit, and is also typically used as the eager message size. (default %zu)", a5, a6, a7, a8, rxm_buffer_size);
  fi_param_define(&rxm_prov, "comp_per_progress", 1, "Defines the maximum number of MSG provider CQ entries (default: 1) that would be read per progress (RxM CQ read).", v8, v9, v10, v11, v86);
  fi_param_define(&rxm_prov, "sar_limit", 3, "Specifies the maximum size transfer that the SAR Segmentation And Reassembly) protocol For transfers smaller than SAR, data may be copied into multiple bounce buffers on the transmit side and received into bounce buffers at the receiver. The sar_limit value must be greater than the eager_limit to take effect.  (default %zu).", v12, v13, v14, v15, 8 * rxm_buffer_size);
  fi_param_define(&rxm_prov, "use_srx", 2, "Set this environment variable to control the RxM receive path. If this variable set to 1 (default: 0), the RxM uses Shared Receive Context. This mode improves memory consumption, but it may increase small message latency as a side-effect.", v16, v17, v18, v19, v87);
  fi_param_define(&rxm_prov, "tx_size", 3, "Defines default tx context size (default: 2048).", v20, v21, v22, v23, v88);
  fi_param_define(&rxm_prov, "rx_size", 3, "Defines default rx context size (default: 2048).", v24, v25, v26, v27, v89);
  fi_param_define(&rxm_prov, "msg_tx_size", 3, "Defines FI_EP_MSG tx size that would be requested (default: 128).", v28, v29, v30, v31, v90);
  fi_param_define(&rxm_prov, "msg_rx_size", 3, "Defines FI_EP_MSG rx or srx size that would be requested. (default: 128, 4096 with srx", v32, v33, v34, v35, v91);
  fi_param_define(&rxm_prov, "cm_progress_interval", 1, "Defines the number of microseconds to wait between function calls to the connection management progression functions during fi_cq_read calls. Higher values may decrease noise during cq polling, but may result in longer connection establishment times. (default: 10000).", v36, v37, v38, v39, v92);
  fi_param_define(&rxm_prov, "cq_eq_fairness", 1, "Defines the maximum number of message provider CQ entries that can be consecutively read across progress calls without checking to see if the CM progress interval has been reached. (default: 128).", v40, v41, v42, v43, v93);
  fi_param_define(&rxm_prov, "data_auto_progress", 2, "Force auto-progress for data transfers even if app requested manual progress (default: false/no).", v44, v45, v46, v47, v94);
  fi_param_define(&rxm_prov, "use_rndv_write", 2, "Set this environment variable to control the  RxM Rendezvous protocol.  If set (1), RxM will use RMA writes rather than RMA reads during Rendezvous transactions. (default: false/no).", v48, v49, v50, v51, v95);
  fi_param_define(&rxm_prov, "enable_direct_send", 2, "Enable support to pass application buffers directly to the core provider when possible.  This avoids copying application buffers through bounce buffers before passing them to the core provider.  This feature targets small to medium size message transfers over the tcp provider.  (default: true)", v52, v53, v54, v55, v96);
  fi_param_define(&rxm_prov, "enable_passthru", 2, "Enable passthru optimization.  Pass thru allows rxm to pass all data transfer calls directly to the core provider, which eliminates the rxm protocol and related overhead.  Pass thru is an optimized path to the tcp provider, depending on the capabilities requested by the application.", v56, v57, v58, v59, v97);
  fi_param_define(&rxm_prov, "detect_hmem_iface", 2, "Detect iface for user buffers with NULL desc passed in. This allows such buffers be copied or registered internally by RxM. (default: false).", v60, v61, v62, v63, v98);
  fi_param_define(&rxm_prov, "rescan", 2, "Force or disable rescanning for network interface changes. Setting this to true will force rescanning on each fi_getinfo() invocation; setting it to false will disable rescanning. (default: unset)", v64, v65, v66, v67, v99);
  fi_param_get(&rxm_prov, "enable_passthru", &rxm_passthru);
  v103 = 0;
  v104 = 0;
  v102 = 0;
  if (fi_param_get(&rxm_prov, "buffer_size", &v104))
  {
    v68 = rxm_buffer_size;
    goto LABEL_11;
  }

  v68 = v104;
  if (v104 <= 0x67)
  {
    if (fi_log_enabled(&rxm_prov, 0, 0))
    {
      v69 = *__error();
      fi_log(&rxm_prov, 0, 0, "rxm_init_infos", 405, "Requested buffer size too small\n");
      *__error() = v69;
    }

    v68 = 104;
    goto LABEL_9;
  }

  if (v104 >> 31)
  {
    v68 = 0x7FFFFFFFLL;
LABEL_9:
    v104 = v68;
  }

  rxm_buffer_size = v68;
LABEL_11:
  rxm_packet_size = v68 + 64;
  fi_param_get(&rxm_prov, "tx_size", &v103);
  fi_param_get(&rxm_prov, "rx_size", &v102);
  v70 = v103;
  if (v103)
  {
    rxm_def_tx_size = v103;
  }

  v71 = v102;
  if (v102)
  {
    rxm_def_rx_size = v102;
  }

  v72 = off_2A1892C70;
  if (off_2A1892C70)
  {
    v73 = rxm_buffer_size;
    do
    {
      v74 = v72[11];
      if (!v74 || *(v74 + 1) != 22)
      {
        v72[9][5] = v73;
      }

      if (v70)
      {
        v72[9][6] = v70;
      }

      if (v71)
      {
        v72[10][6] = v71;
      }

      v72 = *v72;
    }

    while (v72);
  }

  fi_param_get(&rxm_prov, "msg_tx_size", &rxm_msg_tx_size);
  fi_param_get(&rxm_prov, "msg_rx_size", &rxm_msg_rx_size);
  if (fi_param_get(&rxm_prov, "cm_progress_interval", &rxm_cm_progress_interval))
  {
    rxm_cm_progress_interval = 10000;
  }

  if (fi_param_get(&rxm_prov, "cq_eq_fairness", &rxm_cq_eq_fairness))
  {
    rxm_cq_eq_fairness = 128;
  }

  fi_param_get(&rxm_prov, "data_auto_progress", &force_auto_progress);
  fi_param_get(&rxm_prov, "use_rndv_write", &rxm_use_write_rndv);
  v104 = 0;
  fi_param_define(&rxm_prov, "def_wait_obj", 0, "Specifies the default wait object used for blocking operations (e.g. fi_cq_sread).  Supported values are: fd and pollfd (default: fd).", v75, v76, v77, v78, v100);
  fi_param_define(&rxm_prov, "def_tcp_wait_obj", 0, "See def_wait_obj for description.  If set, this overrides the def_wait_obj when running over the tcp provider.  See def_wait_obj for valid values. (default: UNSPEC, tcp provider will select).", v79, v80, v81, v82, v101);
  fi_param_get(&rxm_prov, "def_wait_obj", &v104);
  if (v104 && !strcasecmp(v104, "pollfd"))
  {
    def_wait_obj = 6;
  }

  v104 = 0;
  fi_param_get(&rxm_prov, "def_tcp_wait_obj", &v104);
  if (v104)
  {
    if (!strcasecmp(v104, "pollfd"))
    {
      v83 = 6;
    }

    else
    {
      v83 = 3;
    }

    def_tcp_wait_obj = v83;
  }

  if (force_auto_progress && fi_log_enabled(&rxm_prov, 2, 0))
  {
    v84 = *__error();
    fi_log(&rxm_prov, 2, 0, "fi_rxm_ini", 739, "auto-progress for data requested (FI_OFI_RXM_DATA_AUTO_PROGRESS = 1), domain threading level would be set to FI_THREAD_SAFE\n");
    *__error() = v84;
  }

  fi_param_get(&rxm_prov, "detect_hmem_iface", &rxm_detect_hmem_iface);
  fi_param_get(&rxm_prov, "rescan", &rxm_rescan);
  return &rxm_prov;
}

uint64_t *rxm_get_tx_buf(uint64_t a1)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_get_tx_buf_cold_4();
  }

  if (!*(a1 + 12976))
  {
    return 0;
  }

  v2 = *(a1 + 13000);
  if ((v2[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (*v2)
  {
    goto LABEL_5;
  }

  if (ofi_bufpool_grow(*(a1 + 13000)))
  {
    return 0;
  }

  v3 = *v2;
LABEL_5:
  if (v3 == v2[1])
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  result = v3 + 6;
  *v3 = v3;
  *(v3 + 96) = 1;
  --*(a1 + 12976);
  return result;
}

uint64_t rxm_free_tx_buf(uint64_t a1, uint64_t a2)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_free_tx_buf_cold_2();
  }

  if ((*(a2 + 48) & 1) == 0)
  {
    rxm_free_tx_buf_cold_1();
  }

  *(a2 + 48) = 0;
  ++*(a1 + 12976);

  return ofi_buf_free(a2);
}

void *rxm_get_coll_buf(uint64_t a1)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_get_coll_buf_cold_4();
  }

  v2 = *(a1 + 13008);
  if ((*(v2 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v3 = *v2;
  if (!*v2)
  {
    if (ofi_bufpool_grow(v2))
    {
      return 0;
    }

    v3 = *v2;
  }

  if (v3 == *(v2 + 8))
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  else
  {
    *v2 = *v3;
  }

  if (atomic_fetch_add((v3[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v3 == v3)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v3 = v3;
  return v3 + 6;
}

uint64_t rxm_free_coll_buf(uint64_t a1, uint64_t a2)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_free_coll_buf_cold_1();
  }

  return ofi_buf_free(a2);
}

uint64_t rxm_rndv_hdr_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = (a2 + 16);
    v6 = (a3 + 8);
    v7 = a4;
    do
    {
      v8 = *a5;
      if (!*a5)
      {
        break;
      }

      v9 = *(*(*(result + 432) + 96) + 36) != 1 && (*(*(*(result + 432) + 96) + 36) & 0x10) == 0;
      v10 = v9 ? 0 : *(v6 - 1);
      v11 = *v6;
      v6 += 2;
      *(v5 - 2) = v10;
      *(v5 - 1) = v11;
      *v5 = *(v8 + 32);
      v5 += 3;
      ++a5;
      --v7;
    }

    while (v7);
  }

  *(a2 + 96) = a4;
  return result;
}

void *rxm_ep_alloc_deferred_tx_entry(uint64_t a1, uint64_t a2, int a3)
{
  result = malloc_type_calloc(1uLL, 0xE0uLL, 0x10A20401449C73AuLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
    *(result + 8) = a3;
    result[2] = result + 2;
    result[3] = result + 2;
  }

  return result;
}

void rxm_ep_progress_deferred_queue(uint64_t a1, uint64_t a2)
{
  if (*a2 != 3)
  {
    return;
  }

  v2 = (a2 + 64);
  v3 = *(a2 + 64);
  if (v3 == (a2 + 64))
  {
    return;
  }

  while (1)
  {
    v5 = 0;
    v6 = v3 - 2;
    v7 = *(v3 + 4);
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            goto LABEL_40;
          }

          v20 = (*(*(a1 + 13072) + 16))(*(*(v3 - 1) + 16), v3 + 7, v3 + 15, *(v3 + 152), 0, v3[4], v3[6], v3[3]);
          v5 = v20;
          if (!v20)
          {
            goto LABEL_40;
          }

          if (v20 == -35)
          {
            return;
          }

          v21 = *(v3 - 2);
          v22 = *(*(v3[3] + 104) + 64);
          goto LABEL_31;
        }

        v33 = *(*(v3[3] + 296) + 40);
        v34 = (*(*(*(*(v3 - 1) + 16) + 40) + 32))();
        v5 = v34;
        if (v34)
        {
          if (v34 == -35)
          {
            return;
          }

          v35 = v3[3];
          rxm_cq_write_tx_error(*(v3 - 2), 0);
        }

        v29 = v3[3];
        v30 = 16;
      }

      else
      {
        v24 = v3[4];
        v25 = *(v3[3] + 112);
        v26 = *(*(v25 + 64) + 40);
        v27 = (*(*(*(*(v3 - 1) + 16) + 40) + 32))();
        v5 = v27;
        if (v27)
        {
          if (v27 == -35)
          {
            return;
          }

          v28 = *(*(v3[3] + 104) + 64);
          rxm_cq_write_rx_error(*(v3 - 2), 0);
        }

        v29 = v3[3];
        if (*(*(v25 + 64) + 409) == 3)
        {
          v30 = 12;
        }

        else
        {
          v30 = 14;
        }
      }

      *(v29 + 32) = v30;
      goto LABEL_40;
    }

    if (v7 > 4)
    {
      break;
    }

    if (v7 != 3)
    {
      v8 = v3[3];
      if (v8)
      {
        v9 = *(v8 + 410);
        v10 = *(v8 + 40);
        v11 = v3[3];
        v12 = (*(*(*(*(v3 - 1) + 16) + 40) + 32))();
        if (v12)
        {
          v5 = v12;
LABEL_9:
          if (v5 == -35)
          {
            return;
          }

          v13 = *v6;
          v14 = v3[3];
          v15 = *(*v6 + 13000);
          v16 = *(v14 + 424);
          v17 = v15[11];
          if (v16 / v17 >= v15[5])
          {
            rxm_rndv_handle_rd_done_cold_1();
          }

          v18 = *(*(v15[4] + 8 * (v16 / v17)) + 40) + v15[2] * (v16 % v17);
          if (*(v18 - 48) != v18 - 48)
          {
            rxm_rndv_handle_rd_done_cold_2();
          }

          rxm_free_tx_buf(*v6, v18);
          rxm_free_tx_buf(v13, v14);
          v19 = v3[22];
          rxm_cq_write_tx_error(*(v3 - 2), 0);
          goto LABEL_40;
        }

        v43 = v3[17];
        v42 = v3[16] + 1;
        v3[16] = v42;
        v3[20] -= rxm_buffer_size;
        if (v42 == v43)
        {
          if ((~*(v8 + 432) & 3) != 0)
          {
            rxm_ep_progress_deferred_queue_cold_1();
          }

LABEL_51:
          v5 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v42 = v3[16];
        v43 = v3[17];
      }

      if (v42 != v43)
      {
        v44 = v3[20];
        v45 = rxm_buffer_size;
        while (1)
        {
          v5 = rxm_send_segment(*(v3 - 2), *(v3 - 1), v3[22], v3[19], v44, v3[21], v45, v42, v43, v3[14], v3[23], v3[15], *(v3 + 144), (v3 + 4), *(v3 + 96), v3 + 13, v3 + 3, *(v3 + 48), v3[25]);
          if (v5)
          {
            goto LABEL_9;
          }

          v43 = v3[17];
          v42 = v3[16] + 1;
          v3[16] = v42;
          v45 = rxm_buffer_size;
          v44 = v3[20] - rxm_buffer_size;
          v3[20] = v44;
          if (v42 == v43)
          {
            goto LABEL_40;
          }
        }
      }

      goto LABEL_51;
    }

    v31 = (*(*(a1 + 13072) + 16))(*(*(v3 - 1) + 16), v3 + 7, v3 + 15, *(v3 + 152), 0, v3[4], v3[6], v3[3]);
    v5 = v31;
    if (v31)
    {
      if (v31 == -35)
      {
        return;
      }

      v21 = *(v3 - 2);
      v32 = v3[3];
LABEL_31:
      rxm_cq_write_rx_error(v21, 0);
    }

LABEL_40:
    v36 = *(v3 - 1);
    if (v36[8] == v36 + 8)
    {
      rxm_ep_progress_deferred_queue_cold_4();
    }

    v37 = *v3;
    v38 = v3[1];
    *v38 = *v3;
    *(v37 + 8) = v38;
    if (v36[8] == v36 + 8)
    {
      v40 = v36[6];
      v41 = v36[7];
      v39 = v36 + 6;
      *v41 = v40;
      *(v40 + 8) = v41;
      *v39 = v39;
      v39[1] = v39;
    }

    free(v3 - 2);
    if (!v5)
    {
      v3 = *v2;
      if (*v2 != v2)
      {
        continue;
      }
    }

    return;
  }

  if (v7 == 5)
  {
    v50 = v3[3] + 408;
    v51 = v3[4];
    v5 = (*(*(*(*(v3 - 1) + 16) + 40) + 48))();
    if (v5 == -35)
    {
      return;
    }

    goto LABEL_40;
  }

  if (v7 != 6)
  {
    goto LABEL_40;
  }

  v49 = v3[3] + 408;
  v48 = v3[3];
  v47 = v3[3] + 40;
  v23 = (*(*(*(*(v3 - 1) + 16) + 40) + 48))();
  v5 = v23;
  if (!v23)
  {
    goto LABEL_40;
  }

  if (v23 != -35)
  {
    v46 = *(*(v3[3] + 104) + 64);
    rxm_cq_write_rx_error(*(v3 - 2), 0);
  }
}

uint64_t rxm_ep_barrier2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  inited = rxm_ep_init_coll_req(a1, 0, a3, a4, &v13, &v14);
  if (!inited)
  {
    v8 = v13;
    v9 = *(v14 + 72);
    if ((a3 & 0xFFFFFFEFFFFFFFFFLL) != 0)
    {
      if (!v9 || *v9 < 0x59uLL || (v10 = *(v9 + 88)) == 0)
      {
        v7 = -78;
        goto LABEL_11;
      }

      v11 = v10();
    }

    else
    {
      v11 = (*(v9 + 8))();
    }

    v7 = v11;
    if (!v11)
    {
      return v7;
    }

LABEL_11:
    (*(a1 + 384))(a1 + 312);
    rxm_free_coll_buf(a1, v8);
    (*(a1 + 392))(a1 + 312);
    return v7;
  }

  return inited;
}

uint64_t rxm_ep_init_coll_req(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  (*(a1 + 384))(a1 + 312);
  *a5 = rxm_get_coll_buf(a1);
  (*(a1 + 392))(a1 + 312);
  if (!*a5)
  {
    return 4294967261;
  }

  *(*a5 + 48) = a1;
  v12 = *a5;
  *(v12 + 56) = a4;
  *(v12 + 64) = a3;
  if ((a3 & 0x1000000000) != 0)
  {
    v13 = 12832;
  }

  else
  {
    v13 = 12840;
    if (((*(a1 + 12864) >> a2) & 1) == 0)
    {
      v13 = 12832;
    }
  }

  result = 0;
  *a6 = *(a1 + v13);
  return result;
}

uint64_t rxm_ep_allreduce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = 0;
  v19 = 0;
  inited = rxm_ep_init_coll_req(a1, 3, a10, a11, &v18, &v19);
  if (inited)
  {
    return inited;
  }

  v16 = v18;
  v15 = (*(*(v19 + 72) + 32))(v19, a2, a3);
  if (v15)
  {
    (*(a1 + 384))(a1 + 312);
    rxm_free_coll_buf(a1, v16);
    (*(a1 + 392))(a1 + 312);
  }

  return v15;
}

uint64_t rxm_ep_allgather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = 0;
  v17 = 0;
  inited = rxm_ep_init_coll_req(a1, 4, a9, a10, &v16, &v17);
  if (inited)
  {
    return inited;
  }

  v14 = v16;
  v13 = (*(*(v17 + 72) + 40))(v17, a2);
  if (v13)
  {
    (*(a1 + 384))(a1 + 312);
    rxm_free_coll_buf(a1, v14);
    (*(a1 + 392))(a1 + 312);
  }

  return v13;
}

uint64_t rxm_ep_scatter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = 0;
  v19 = 0;
  inited = rxm_ep_init_coll_req(a1, 7, a10, a11, &v18, &v19);
  if (inited)
  {
    return inited;
  }

  v16 = v18;
  v15 = (*(*(v19 + 72) + 64))(v19, a2, a3);
  if (v15)
  {
    (*(a1 + 384))(a1 + 312);
    rxm_free_coll_buf(a1, v16);
    (*(a1 + 392))(a1 + 312);
  }

  return v15;
}

uint64_t rxm_ep_broadcast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = 0;
  v15 = 0;
  inited = rxm_ep_init_coll_req(a1, 1, a8, a9, &v14, &v15);
  if (inited)
  {
    return inited;
  }

  v12 = v14;
  v11 = (*(*(v15 + 72) + 16))(v15);
  if (v11)
  {
    (*(a1 + 384))(a1 + 312);
    rxm_free_coll_buf(a1, v12);
    (*(a1 + 392))(a1 + 312);
  }

  return v11;
}

uint64_t rxm_unexp_start(uint64_t a1)
{
  if (*(*(a1 + 88) + 225) == 1)
  {
    return rxm_handle_unexp_sar(a1);
  }

  else
  {
    return rxm_handle_rx_buf(*(a1 + 88));
  }
}

uint64_t rxm_discard(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (*(v1 + 225) == 1)
  {
    while (1)
    {
      v2 = *(v1 + 112);
      v3 = *(v2 + 16);
      if (v3 == (v2 + 16))
      {
        break;
      }

      v4 = *v3;
      v5 = v3[1];
      *v5 = *v3;
      *(v4 + 8) = v5;
      v6 = v3[17];
      if (v6 != v3 + 26)
      {
        free(v6);
        v3[17] = (v3 + 26);
      }

      v7 = (v3 - 10);
      if (*(v3 + 64) == 1 && (*(*(v3 - 4) + 12824) || *(v3[2] + 16)))
      {
        rxm_post_recv(v7);
      }

      else
      {
        ofi_buf_free(v7);
      }
    }

    ofi_buf_free(*(v1 + 112));
  }

  v8 = *(v1 + 216);
  if (v8 != (v1 + 288))
  {
    free(v8);
    *(v1 + 216) = v1 + 288;
  }

  if (*(v1 + 144) == 1 && (*(*(v1 + 48) + 12824) || *(*(v1 + 96) + 16)))
  {
    rxm_post_recv(v1);
  }

  else
  {
    ofi_buf_free(v1);
  }

  return 0;
}

uint64_t rxm_srx_context(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*(a2 + 21) & 8) == 0)
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v4 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_srx_context", 1293, "shared srx only supported with FI_PEER flag\n");
LABEL_7:
      *__error() = v4;
      return 4294967274;
    }

    return 4294967274;
  }

  if (*(a1 + 368))
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v4 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_srx_context", 1302, "Peer SRX context already imported\n");
      goto LABEL_7;
    }

    return 4294967274;
  }

  result = 0;
  v7 = *(a4 + 8);
  *(a1 + 368) = v7;
  *(v7 + 88) = &rxm_srx_peer_ops;
  *(a1 + 328) = &rxm_srx_msg_ops;
  *(a1 + 344) = &rxm_srx_tagged_ops;
  *(a1 + 304) = &rxm_srx_fi_ops;
  *(a1 + 288) = 6;
  *a3 = a1 + 288;
  atomic_fetch_add((a1 + 176), 1u);
  return result;
}

uint64_t rxm_prepare_deferred_rndv_read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v12 = a6[6];
  v13 = a6[12];
  v14 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10A20401449C73AuLL);
  if (v14)
  {
    *v14 = v12;
    v14[1] = v13;
    *(v14 + 8) = 2;
    v14[2] = v14 + 2;
    v14[3] = v14 + 2;
    *a1 = v14;
    v14[5] = a6;
    *(*a1 + 48) = *(a6[21] + 24 * a2);
    *(*a1 + 64) = *(a6[21] + 24 * a2 + 16);
    if (a5)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        *(*a1 + 16 * v15 + 72) = *(a3 + 16 * v15);
        *(*a1 + 8 * v15 + 136) = *(a4 + 8 * v15);
        v15 = ++v16;
      }

      while (v16 < a5);
    }

    result = 0;
    *(*a1 + 168) = a5;
  }

  else
  {
    *a1 = 0;
    return -12;
  }

  return result;
}

uint64_t rxm_prepare_deferred_rndv_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 272);
  v13 = *(v12 + 24);
  v14 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10A20401449C73AuLL);
  if (v14)
  {
    *v14 = v13;
    v14[1] = v12;
    *(v14 + 8) = 3;
    v14[2] = v14 + 2;
    v14[3] = v14 + 2;
    *a1 = v14;
    v14[5] = a6;
    v15 = a6 + 24 * a2;
    *(*a1 + 48) = *(v15 + 304);
    *(*a1 + 64) = *(v15 + 320);
    if (a5)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        *(*a1 + 16 * v16 + 72) = *(a3 + 16 * v16);
        *(*a1 + 8 * v16 + 136) = *(a4 + 8 * v16);
        v16 = ++v17;
      }

      while (v17 < a5);
    }

    result = 0;
    *(*a1 + 168) = a5;
  }

  else
  {
    *a1 = 0;
    return -12;
  }

  return result;
}

uint64_t rxm_endpoint(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x3318uLL, 0x10A2040E30DA3B0uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = fi_dupinfo(a2);
  *(v9 + 424) = v10;
  if (!v10)
  {
    v17 = 4294967284;
LABEL_42:
    free(v9);
    return v17;
  }

  if (fi_param_get(&rxm_prov, "comp_per_progress", (v9 + 12896)))
  {
    *(v9 + 12896) = 1;
  }

  if ((*(*(v9 + 424) + 8) & 0x40) == 0)
  {
    v11 = ofi_endpoint_init(a1, &rxm_util_prov, a2, v9, a4, rxm_ep_progress);
    if (!v11)
    {
      goto LABEL_7;
    }

LABEL_15:
    v17 = v11;
LABEL_40:
    v33 = *(v9 + 424);
    if (v33)
    {
      fi_freeinfo(v33);
    }

    goto LABEL_42;
  }

  v11 = ofi_endpoint_init(a1, &rxm_util_prov, a2, v9, a4, rxm_ep_progress_coll);
  if (v11)
  {
    goto LABEL_15;
  }

  v19 = a1[7];
  v20 = *(v19 + 168);
  core_info = (*(*(a1[61] + 24) + 24))();
  if (core_info)
  {
    goto LABEL_17;
  }

  *(v9 + 12848) = 0;
  if (a1[63])
  {
    v21 = *(v19 + 176);
    core_info = (*(*(a1[62] + 24) + 24))();
    if (core_info)
    {
      goto LABEL_17;
    }

    *(v9 + 12856) = 0;
    *(v9 + 12864) = a1[63];
  }

LABEL_7:
  v12 = *(v9 + 80);
  v13 = (v9 + 432);
  v63 = v9 + 432;
  core_info = ofi_get_core_info(*(*(v12 + 56) + 32), 0, 0, 0, &rxm_util_prov, *(v9 + 424), 0, rxm_info_to_core);
  if (core_info)
  {
LABEL_17:
    v17 = core_info;
LABEL_35:
    v31 = *(v9 + 12832);
    if (v31)
    {
      (*(*(v31 + 16) + 8))();
    }

    v32 = *(v9 + 12840);
    if (v32)
    {
      (*(*(v32 + 16) + 8))();
    }

    ofi_endpoint_close(v9);
    goto LABEL_40;
  }

  if (*((*v13)[11] + 72) == -1)
  {
    v22 = (*v13)[10];
    v23 = (*(*(*(v12 + 280) + 24) + 64))(*(v12 + 280));
    if (v23)
    {
      v17 = v23;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v24 = *__error();
        fi_log(&rxm_prov, 0, 3, "rxm_open_core_res", 1557, "Unable to open shared receive context\n", v63);
        *__error() = v24;
      }

LABEL_34:
      fi_freeinfo(*v13);
      *v13 = 0;
      goto LABEL_35;
    }
  }

  v64[0] = xmmword_29ED129E0;
  v64[1] = unk_29ED129F0;
  v15 = *(*(v9 + 80) + 56);
  v16 = (*(*(*(v15 + 160) + 24) + 24))(*(v15 + 160));
  if (v16)
  {
    v17 = v16;
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v18 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_listener_open", 1516, "Unable to open msg EQ\n", v63);
      *__error() = v18;
    }

    goto LABEL_32;
  }

  v25 = *(v9 + 432);
  v26 = (*(*(*(v15 + 160) + 24) + 16))(*(v15 + 160));
  if (v26)
  {
    v17 = v26;
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v27 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_listener_open", 1523, "Unable to open msg PEP\n", v63);
LABEL_30:
      *__error() = v27;
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v28 = *(v9 + 12816);
  v29 = (*(*(*(v9 + 12808) + 16) + 16))(*(v9 + 12808));
  if (v29)
  {
    v17 = v29;
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v27 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_listener_open", 1530, "Unable to bind msg PEP to msg EQ\n", v63);
      goto LABEL_30;
    }

LABEL_31:
    rxm_listener_close(v9);
LABEL_32:
    v30 = *(v9 + 12824);
    if (v30)
    {
      (*(*(v30 + 16) + 8))();
      *(v9 + 12824) = 0;
    }

    goto LABEL_34;
  }

  v35 = *v13;
  if (!*v13)
  {
    rxm_endpoint_cold_3();
  }

  v36 = v35[9];
  v37 = *(v35[10] + 48);
  if (*(v36 + 48) < v37)
  {
    v37 = *(v36 + 48);
  }

  if (*(v9 + 12896) >= v37 >> 1)
  {
    v38 = v37 >> 1;
  }

  else
  {
    v38 = *(v9 + 12896);
  }

  *(v9 + 12896) = v38;
  v39 = v35[12];
  if (!v39)
  {
    goto LABEL_53;
  }

  v40 = *(v39 + 36);
  if ((v40 & 4) != 0)
  {
    LOBYTE(v41) = 1;
  }

  else
  {
    if (v40 <= 7)
    {
LABEL_53:
      v41 = (v35[2] >> 55) & 1;
      goto LABEL_56;
    }

    LOBYTE(v41) = 0;
  }

LABEL_56:
  *(v9 + 12928) = v41;
  v42 = *(v9 + 424);
  if (!v42)
  {
LABEL_61:
    LOBYTE(v45) = 0;
    goto LABEL_63;
  }

  v43 = v42[12];
  if (!v43)
  {
LABEL_60:
    v45 = (v42[2] >> 55) & 1;
    goto LABEL_63;
  }

  v44 = *(v43 + 36);
  if ((v44 & 4) == 0)
  {
    if (v44 <= 7)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  LOBYTE(v45) = 1;
LABEL_63:
  *(v9 + 12929) = v45;
  v46 = *(v36 + 40);
  *(v9 + 12952) = v46;
  *(v9 + 12976) = *(v42[9] + 48);
  if (*(v9 + 12936))
  {
    rxm_endpoint_cold_1();
  }

  if (v46 >= 0xA9)
  {
    v47 = v46 - 168;
    if (v47 >= rxm_buffer_size)
    {
      v47 = rxm_buffer_size;
    }

    *(v9 + 12936) = v47;
  }

  if (*(v9 + 12944))
  {
    rxm_endpoint_cold_2();
  }

  v48 = rxm_buffer_size;
  *(v9 + 12944) = rxm_buffer_size;
  *(v9 + 12984) = v48;
  LODWORD(v64[0]) = 1;
  if ((v41 & 1) == 0)
  {
    fi_param_get(&rxm_prov, "enable_direct_send", v64);
    *(v9 + 12931) = LODWORD(v64[0]) != 0;
    v48 = rxm_buffer_size;
  }

  v49 = *(v9 + 12960);
  if (v49 < v48)
  {
    *(v9 + 12960) = v48;
    v49 = v48;
  }

  if (v49 < 0x10000)
  {
    *&v64[0] = 0;
    if (fi_param_get(&rxm_prov, "sar_limit", v64))
    {
      v49 = 8 * *(v9 + 12960);
    }

    else
    {
      v49 = *&v64[0];
      v50 = *(v9 + 12960);
      if (*&v64[0] <= v50)
      {
        *(v9 + 12968) = v50;
        goto LABEL_78;
      }
    }
  }

  *(v9 + 12968) = v49;
LABEL_78:
  if (fi_log_enabled(&rxm_prov, 2, 0))
  {
    v51 = *__error();
    v52 = *(v9 + 12960);
    fi_log(&rxm_prov, 2, 0, "rxm_ep_settings_init", 1163, "Settings:\n\t\t MR local: MSG - %d, RxM - %d\n\t\t Completions per progress: MSG - %zu\n\t\t Buffered min: %zu\n\t\t inject size: %zu\n\t\t Protocol limits: Eager: %zu, SAR: %zu\n", *(v9 + 12928), *(v9 + 12929), *(v9 + 12896), *(v9 + 12936), *(v9 + 12952), v52, *(v9 + 12968));
    *__error() = v51;
  }

  v53 = malloc_type_calloc(1uLL, *(v9 + 12952) + 64, 0x1000040FA0F61DDuLL);
  *(v9 + 13024) = v53;
  if (!v53)
  {
    v17 = 4294967284;
    goto LABEL_35;
  }

  *v53 = 4;
  v53[32] = 2;
  *a3 = v9;
  *(v9 + 16) = &rxm_ep_fi_ops;
  *(*a3 + 24) = &rxm_ops_ep;
  *(*a3 + 32) = &rxm_ops_cm;
  if ((*(*(v9 + 424) + 8) & 0x40) != 0)
  {
    v54 = &rxm_ops_collective;
  }

  else
  {
    v54 = &rxm_ops_collective_none;
  }

  v55 = coll_eager_ops;
  if ((*(*(v9 + 424) + 8) & 0x40) == 0)
  {
    v55 = def_eager_ops;
  }

  *(*a3 + 72) = v54;
  *(v9 + 13064) = v55;
  if (rxm_use_write_rndv)
  {
    v56 = &rxm_rndv_ops_write;
  }

  else
  {
    v56 = &rxm_rndv_ops_read;
  }

  *(v9 + 13072) = v56;
  *(v9 + 13048) = v9 + 13048;
  *(v9 + 13056) = v9 + 13048;
  v57 = rxm_passthru_info(a2);
  v58 = rxm_thru_comp_error;
  v59 = rxm_thru_comp;
  if (v57)
  {
    v60 = &rxm_tagged_thru_ops;
    v61 = &rxm_rma_thru_ops;
    v62 = &rxm_msg_thru_ops;
  }

  else
  {
    v58 = rxm_handle_comp_error;
    v60 = &rxm_tagged_ops;
    v59 = rxm_handle_comp;
    v61 = &rxm_rma_ops;
    v62 = &rxm_msg_ops;
  }

  *(*a3 + 40) = v62;
  *(*a3 + 48) = v61;
  *(*a3 + 56) = v60;
  *(v9 + 12920) = v59;
  *(v9 + 12912) = v58;
  if ((*(*(v9 + 424) + 8) & 0x10) != 0)
  {
    *(*a3 + 64) = &rxm_ops_atomic;
  }

  v17 = 0;
  *(v9 + 12736) = v9 + 12736;
  *(v9 + 12744) = v9 + 12736;
  return v17;
}

uint64_t rxm_listener_close(uint64_t a1)
{
  v2 = *(a1 + 12808);
  if (v2)
  {
    v3 = (*(*(v2 + 16) + 8))();
    if (v3)
    {
      v4 = v3;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v5 = *__error();
        fi_log(&rxm_prov, 0, 3, "rxm_listener_close", 869, "Unable to close msg pep\n");
LABEL_10:
        *__error() = v5;
        return v4;
      }

      return v4;
    }

    *(a1 + 12808) = 0;
  }

  v6 = *(a1 + 12816);
  if (!v6)
  {
    return 0;
  }

  v4 = (*(*(v6 + 16) + 8))();
  if (!v4)
  {
    *(a1 + 12816) = 0;
    return v4;
  }

  if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v5 = *__error();
    fi_log(&rxm_prov, 0, 3, "rxm_listener_close", 879, "Unable to close msg EQ\n");
    goto LABEL_10;
  }

  return v4;
}

uint64_t rxm_ep_close(uint64_t a1)
{
  rxm_stop_listen(a1);
  rxm_freeall_conns(a1);
  v2 = rxm_listener_close(a1);
  if (v2)
  {
    return v2;
  }

  rxm_ep_txrx_res_close(a1);
  v3 = *(a1 + 12824);
  if (v3)
  {
    v4 = (*(*(v3 + 16) + 8))();
    if (v4)
    {
      v2 = v4;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v5 = *__error();
        fi_log(&rxm_prov, 0, 3, "rxm_ep_close", 908, "Unable to close msg shared ctx\n");
LABEL_21:
        *__error() = v5;
        return v2;
      }

      return v2;
    }

    *(a1 + 12824) = 0;
  }

  v6 = *(a1 + 12880);
  if (!v6)
  {
LABEL_12:
    v8 = *(a1 + 12832);
    if (v8)
    {
      v9 = (*(*(v8 + 16) + 8))();
      if (v9)
      {
        v2 = v9;
        if (fi_log_enabled(&rxm_prov, 0, 3))
        {
          v5 = *__error();
          fi_log(&rxm_prov, 0, 3, "rxm_ep_close", 928, "Unable to close util coll EP\n");
          goto LABEL_21;
        }

        return v2;
      }

      *(a1 + 12832) = 0;
    }

    v10 = *(a1 + 12840);
    if (v10)
    {
      v11 = (*(*(v10 + 16) + 8))();
      if (v11)
      {
        v2 = v11;
        if (fi_log_enabled(&rxm_prov, 0, 3))
        {
          v5 = *__error();
          fi_log(&rxm_prov, 0, 3, "rxm_ep_close", 938, "Unable to close offload coll EP\n");
          goto LABEL_21;
        }

        return v2;
      }

      *(a1 + 12840) = 0;
    }

    free(*(a1 + 13024));
    ofi_endpoint_close(a1);
    fi_freeinfo(*(a1 + 432));
    fi_freeinfo(*(a1 + 424));
    free(a1);
    return 0;
  }

  v7 = (*(*(v6 + 16) + 8))();
  if (!v7)
  {
    *(a1 + 12880) = 0;
    goto LABEL_12;
  }

  v2 = v7;
  if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v5 = *__error();
    fi_log(&rxm_prov, 0, 3, "rxm_ep_close", 918, "Unable to close msg CQ\n");
    goto LABEL_21;
  }

  return v2;
}

uint64_t rxm_ep_bind(void *a1, uint64_t *a2, unint64_t a3)
{
  if (*a2 != 6)
  {
    result = ofi_ep_bind(a1, a2, a3);
    if (result)
    {
      return result;
    }

    v8 = *a2;
    if (*a2 == 14)
    {
      v15 = a1[1604];
      if (v15)
      {
        v16 = a2[47];
        if (v16)
        {
          result = ofi_ep_bind(v15, v16, a3);
          if (result)
          {
            return result;
          }
        }
      }

      v11 = a1[1605];
      if (v11)
      {
        v12 = a2[48];
        if (v12)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (v8 != 13)
      {
        if (v8 != 11)
        {
          return 0;
        }

        v9 = a1[1604];
        if (v9)
        {
          v10 = a2[55];
          if (v10)
          {
            result = ofi_ep_bind(v9, v10, a3);
            if (result)
            {
              return result;
            }
          }
        }

        v11 = a1[1605];
        if (!v11)
        {
          return 0;
        }

        v12 = a2[56];
        if (!v12)
        {
          return 0;
        }

LABEL_28:
        result = ofi_ep_bind(v11, v12, a3);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v13 = a1[1604];
      if (v13)
      {
        v14 = a2[20];
        if (v14)
        {
          result = ofi_ep_bind(v13, v14, a3);
          if (result)
          {
            return result;
          }
        }
      }

      v11 = a1[1605];
      if (v11)
      {
        v12 = a2[21];
        if (v12)
        {
          goto LABEL_28;
        }
      }
    }

    return 0;
  }

  if (a1[1609])
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_bind", 1424, "SRX context already bound to EP\n");
      *__error() = v5;
    }

    return 4294967274;
  }

  else
  {
    result = 0;
    a1[1609] = a2[10];
  }

  return result;
}

uint64_t rxm_ep_ctrl(void *a1, int a2)
{
  v54 = *MEMORY[0x29EDCA608];
  if (a2 != 6)
  {
    started = 4294967218;
    goto LABEL_60;
  }

  if (!a1[11])
  {
    started = 4294967038;
    goto LABEL_60;
  }

  v41 = 0;
  if (ofi_needs_tx(*(a1[53] + 8)) && !a1[17])
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v21 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_enable_check", 1185, "missing Tx CQ\n", v41);
      goto LABEL_58;
    }

LABEL_59:
    started = 4294967033;
    goto LABEL_60;
  }

  if (a1[15])
  {
    goto LABEL_6;
  }

  if (ofi_needs_rx(*(a1[53] + 8)))
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v21 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_enable_check", 1193, "missing Rx CQ\n", v41);
LABEL_58:
      *__error() = v21;
      goto LABEL_59;
    }

    goto LABEL_59;
  }

  if (*(*(a1[53] + 96) + 48))
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v21 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_enable_check", 1199, "user hinted that CQ data may be used but endpoint is missing recv CQ\n", v41);
      goto LABEL_58;
    }

    goto LABEL_59;
  }

LABEL_6:
  if (a1[1600])
  {
    rxm_ep_ctrl_cold_1();
  }

  v43 = 0u;
  v44 = 0u;
  v3 = a1[17];
  v4 = a1[15];
  v6 = a1[22];
  v5 = a1[23];
  *&v49 = v6;
  *(&v49 + 1) = v5;
  v7 = a1[24];
  v8 = a1[25];
  *&v50 = v7;
  *(&v50 + 1) = v8;
  v10 = a1[53];
  v9 = a1[54];
  v11 = v9[9];
  if (*(v9[11] + 72) == -1)
  {
    v12 = 1;
  }

  else
  {
    v12 = ofi_universe_size;
  }

  v13 = v12 * *(v9[10] + 48);
  v14 = a1[26];
  v15 = a1[27];
  *&v51 = v14;
  *(&v51 + 1) = v15;
  v16 = a1[10];
  v42 = v13 + *(v11 + 48) * ofi_universe_size;
  DWORD2(v43) = 3;
  if (*(*(v10 + 96) + 24) == 1 || v3 && *(v3 + 40) || v4 && *(v4 + 40) || v6 && *(v6 + 40) || v5 && *(v5 + 40) || v8 && *(v8 + 40) || v7 && *(v7 + 40) || v15 && *(v15 + 40) || v14 && *(v14 + 40))
  {
    v17 = def_tcp_wait_obj;
    if (def_tcp_wait_obj == 1 || strncasecmp(*(v9[13] + 16), "tcp", 3uLL))
    {
      v17 = def_wait_obj;
    }
  }

  else
  {
    v17 = 0;
  }

  HIDWORD(v43) = v17;
  v18 = (*(*(*(v16 + 280) + 24) + 16))();
  if (!v18)
  {
    if (HIDWORD(v43) == 3)
    {
      v22 = 1;
      while (1)
      {
        v23 = v22;
        if (v3)
        {
          v24 = *(v3 + 40);
          if (v24)
          {
            v25 = rxm_ep_wait_fd_add(a1, v24);
            if (v25)
            {
              break;
            }
          }
        }

        v22 = 0;
        v3 = v4;
        if ((v23 & 1) == 0)
        {
          v26 = 0;
          while (1)
          {
            v27 = *(&v49 + v26);
            if (v27)
            {
              v28 = *(v27 + 40);
              if (v28)
              {
                v25 = rxm_ep_wait_fd_add(a1, v28);
                if (v25)
                {
                  goto LABEL_64;
                }
              }
            }

            v26 += 8;
            if (v26 == 48)
            {
              goto LABEL_50;
            }
          }
        }
      }

LABEL_64:
      started = v25;
      (*(*(a1[1610] + 16) + 8))();
      a1[1610] = 0;
      goto LABEL_60;
    }

LABEL_50:
    if (rxm_passthru_info(a1[53]))
    {
      v29 = a1[1610];
      v30 = (*(*(a1[1603] + 16) + 16))();
      if (v30)
      {
LABEL_52:
        started = v30;
        goto LABEL_60;
      }
    }

    v48 = 4;
    v42 = rxm_buffer_size + 288;
    v43 = 0x10uLL;
    *&v44 = 1024;
    *(&v44 + 1) = rxm_buf_reg;
    v45 = rxm_buf_close;
    v46 = rxm_init_rx_buf;
    v47 = a1;
    attr = ofi_bufpool_create_attr(&v42, a1 + 1624);
    if (attr)
    {
      started = attr;
      if (!fi_log_enabled(&rxm_prov, 0, 3))
      {
        goto LABEL_60;
      }

      v20 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_create_pools", 134, "Unable to create rx buf pool\n", v41, v42, v43, v44);
      goto LABEL_33;
    }

    v42 = rxm_buffer_size + 472;
    v46 = rxm_init_tx_buf;
    v34 = ofi_bufpool_create_attr(&v42, a1 + 1625);
    if (v34)
    {
      started = v34;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v35 = *__error();
        fi_log(&rxm_prov, 0, 3, "rxm_ep_create_pools", 143, "Unable to create tx buf pool\n");
        *__error() = v35;
      }

      goto LABEL_76;
    }

    v53 = 4;
    v49 = xmmword_29ED129B0;
    v50 = xmmword_29ED12860;
    v51 = 0u;
    v52 = 0u;
    v36 = ofi_bufpool_create_attr(&v49, a1 + 1626);
    if (v36)
    {
      started = v36;
      if (!fi_log_enabled(&rxm_prov, 0, 3))
      {
LABEL_75:
        ofi_bufpool_destroy(a1[1625]);
LABEL_76:
        ofi_bufpool_destroy(a1[1624]);
        a1[1624] = 0;
        goto LABEL_60;
      }

      v37 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_create_pools", 152, "Unable to create peer xfer context pool\n", v41);
    }

    else
    {
      v42 = 72;
      v45 = 0;
      v46 = 0;
      *(&v44 + 1) = 0;
      v38 = ofi_bufpool_create_attr(&v42, a1 + 1627);
      if (!v38)
      {
        a1[1629] = a1 + 1629;
        a1[1630] = a1 + 1629;
        if (a1[1609])
        {
          a1[5] = &rxm_no_recv_msg_ops;
          a1[7] = &rxm_no_recv_tagged_ops;
        }

        else
        {
          v30 = util_ep_srx_context(a1[10], *(*(a1[53] + 80) + 48), 4, a1[1623], rxm_update, (a1 + 38), &v41);
          if (v30)
          {
            goto LABEL_52;
          }

          v40 = v41;
          a1[1609] = v41;
          *(v40 + 88) = &rxm_srx_peer_ops;
          v30 = util_srx_bind(v40, a1[15], 1024);
          if (v30)
          {
            goto LABEL_52;
          }
        }

        if (a1[1603] && !rxm_passthru_info(a1[53]) && (v39 = rxm_prepost_recv(a1, a1[1603]), v39))
        {
          started = v39;
        }

        else
        {
          started = rxm_start_listen(a1);
          if (!started)
          {
            goto LABEL_60;
          }
        }

        rxm_ep_txrx_res_close(a1);
        goto LABEL_60;
      }

      started = v38;
      if (!fi_log_enabled(&rxm_prov, 0, 3))
      {
        goto LABEL_75;
      }

      v37 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_create_pools", 162, "Unable to create proto info pool\n", v41);
    }

    *__error() = v37;
    goto LABEL_75;
  }

  started = v18;
  if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v20 = *__error();
    fi_log(&rxm_prov, 0, 3, "rxm_ep_msg_cq_open", 1051, "unable to open MSG CQ\n", v41, v42, v43, v44);
LABEL_33:
    *__error() = v20;
  }

LABEL_60:
  v31 = *MEMORY[0x29EDCA608];
  return started;
}

void rxm_ep_txrx_res_close(uint64_t a1)
{
  v2 = *(a1 + 12872);
  if (v2 && *(a1 + 40) != &rxm_no_recv_msg_ops)
  {
    util_srx_close(v2);
  }

  v3 = *(a1 + 12992);
  if (v3)
  {
    ofi_bufpool_destroy(v3);
    *(a1 + 12992) = 0;
  }

  v4 = *(a1 + 13000);
  if (v4)
  {
    ofi_bufpool_destroy(v4);
    *(a1 + 13000) = 0;
  }

  v5 = *(a1 + 13016);
  if (v5)
  {
    ofi_bufpool_destroy(v5);
    *(a1 + 13016) = 0;
  }

  v6 = *(a1 + 13008);
  if (v6)
  {
    ofi_bufpool_destroy(v6);
    *(a1 + 13008) = 0;
  }
}

uint64_t rxm_ep_wait_fd_add(void *a1, uint64_t a2)
{
  result = ofi_wait_add_fid(a2, a1[1610], 1, rxm_ep_trywait_cq);
  if (!result)
  {
    if (*(*(a1[53] + 96) + 24) == 1)
    {
      return 0;
    }

    else
    {
      v5 = a1[1602];

      return ofi_wait_add_fid(a2, v5, 1, rxm_ep_trywait_eq);
    }
  }

  return result;
}

uint64_t rxm_ep_trywait_cq(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v6 = *(v1 + 12880);
  v2 = *(*(v1 + 80) + 56);
  (*(v1 + 384))(v1 + 312);
  v3 = (*(*(*(v2 + 160) + 24) + 40))();
  (*(v1 + 392))(v1 + 312);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t rxm_ep_trywait_eq(uint64_t a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v5[0] = *(v1 + 12816);
  v2 = *(*(*(v1 + 80) + 56) + 160);
  result = (*(*(v2 + 24) + 40))(v2, v5);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rxm_buf_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 64);
  v10 = *(v9 + 120);
  v11 = *(v10 + 280);
  if ((v11 & 0x800000000000) == 0 || (v12 = ofi_hmem_host_register(*(a1 + 40), *(v9 + 56)), !v12))
  {
    if (*(v10 + 12928) == 1)
    {
      v13 = rxm_msg_mr_reg_internal(*(v10 + 80), *(a1 + 40), *(*(a1 + 64) + 56), 3840, 0x1000000000000000, a1 + 56, a7, a8);
      v12 = v13;
      if ((v11 & 0x800000000000) != 0 && v13)
      {
        ofi_hmem_host_unregister(*(a1 + 40));
      }
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t rxm_buf_close(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 64) + 120);
  if ((*(v2 + 285) & 0x80) != 0)
  {
    result = ofi_hmem_host_unregister(*(result + 40));
  }

  if (*(v2 + 12928) == 1)
  {
    v3 = *(*(*(v1 + 56) + 16) + 8);

    return v3();
  }

  return result;
}

uint64_t rxm_init_rx_buf(uint64_t result, void *a2)
{
  v2 = *(*(result + 64) + 120);
  if (*(v2 + 12928) == 1)
  {
    v3 = *(*(result + 56) + 24);
  }

  else
  {
    v3 = 0;
  }

  a2[5] = v3;
  a2[6] = v2;
  a2[27] = a2 + 36;
  a2[10] = a2 + 10;
  a2[11] = a2 + 10;
  return result;
}

uint64_t rxm_init_tx_buf(uint64_t result, uint64_t a2)
{
  if (*(*(*(result + 64) + 120) + 12928) == 1)
  {
    v2 = *(*(result + 56) + 24);
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 40) = v2;
  *(a2 + 408) = 4;
  *(a2 + 440) = 2;
  return result;
}

uint64_t rxm_ep_getopt(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    return 4294967254;
  }

  if (a3 == 2)
  {
    v8 = 12936;
LABEL_10:
    v5 = 0;
    *a4 = *(a1 + v8);
    *a5 = 8;
    return v5;
  }

  if (a3)
  {
    return 4294967254;
  }

  v7 = *(a1 + 12872);
  if (!v7)
  {
    v8 = 12984;
    goto LABEL_10;
  }

  return (*(*(v7 + 24) + 16))(*(a1 + 12872), 0, 0);
}

uint64_t rxm_ep_setopt(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    return 4294967254;
  }

  if (a3 == 10)
  {
    if (byte_2A1C54878)
    {
      if (*(a1 + 12931))
      {
        return 0;
      }

      else
      {
        return 4294967194;
      }
    }

    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v8 = *__error();
      fi_log(&rxm_prov, 0, 4, "rxm_ep_setopt", 332, "FI_OPT_CUDA_API_PERMITTED cannot be set when CUDA library or CUDA device is not available.");
      *__error() = v8;
    }

    return 4294967274;
  }

  if (a3 != 2)
  {
    if (a3)
    {
      return 4294967254;
    }

    result = 0;
    *(a1 + 12984) = *a4;
    return result;
  }

  if (*(a1 + 12992))
  {
    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v7 = *__error();
      fi_log(&rxm_prov, 0, 4, "rxm_ep_setopt", 312, "Endpoint already enabled. Can't set opt now!\n");
      *__error() = v7;
    }

    return 4294967038;
  }

  if (*a4 > *(a1 + 12944))
  {
    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v9 = *__error();
      v10 = *a4;
      fi_log(&rxm_prov, 0, 4, "rxm_ep_setopt", 318, "Invalid value for FI_OPT_BUFFERED_MIN: %zu(> FI_OPT_BUFFERED_LIMIT: %zu)\n", *a4, *(a1 + 12944));
      *__error() = v9;
    }

    return 4294967274;
  }

  *(a1 + 12936) = *a4;
  result = fi_log_enabled(&rxm_prov, 2, 0);
  if (result)
  {
    v11 = *__error();
    fi_log(&rxm_prov, 2, 0, "rxm_ep_setopt", 324, "FI_OPT_BUFFERED_MIN set to %zu\n", *(a1 + 12936));
    v12 = __error();
    result = 0;
    *v12 = v11;
  }

  return result;
}

uint64_t rxm_join_coll(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x40) != 0 && (v3 = *(*(a1 + 12832) + 32)) != 0 && *v3 >= 0x49uLL && (v4 = v3[9]) != 0)
  {
    return v4();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t rxm_eq_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23[0] = 16;
  v22[0] = xmmword_29ED12A00;
  v22[1] = *algn_29ED12A10;
  v8 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E00404E506058uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v12 = ofi_eq_init(a1, a2, v8, a4);
  if (!v12)
  {
    v23[1] = v9;
    v13 = *(a1 + 184);
    if (!v13 || (v12 = (*(*(v13 + 24) + 24))(v13, v22, v9 + 20, v23, v10, v11), !v12))
    {
      v14 = *(a1 + 192);
      if (!v14 || (v15 = (*(*(v14 + 24) + 24))(v14, v22, v9 + 21, v23, v10, v11), !v15))
      {
        v12 = 0;
        v9[2] = &rxm_eq_fi_ops;
        *a3 = v9;
        return v12;
      }

      v12 = v15;
      (*(*(v9[20] + 16) + 8))(v9[20], v16, v17, v18, v19, v20);
    }

    ofi_eq_cleanup(v9);
  }

  free(v9);
  return v12;
}

uint64_t rxm_eq_close(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    result = (*(*(v2 + 16) + 8))();
    if (result)
    {
      return result;
    }

    a1[21] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    result = (*(*(v4 + 16) + 8))();
    if (result)
    {
      return result;
    }

    a1[20] = 0;
  }

  v5 = ofi_eq_cleanup(a1);
  free(a1);
  return v5;
}

uint64_t rxm_peer_av_query(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 8) = ofi_av_size(a1 - 408);
  return 0;
}

uint64_t rxm_peer_av_ep_addr(uint64_t a1, uint64_t a2)
{
  size = 0;
  if ((*(*(a2 + 32) + 16))(a2, 0, &size))
  {
    v4 = size == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return -1;
  }

  v5 = malloc_type_calloc(1uLL, size, 0xE1EC9D6CuLL);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if ((*(*(a2 + 32) + 16))(a2, v5, &size))
  {
    v7 = -1;
  }

  else
  {
    v7 = ofi_av_lookup_fi_addr(a1 - 408, v6);
  }

  free(v6);
  return v7;
}

uint64_t *rxm_mr_get_map_entry(uint64_t a1, uint64_t a2)
{
  (*(a1 + 160))(a1 + 88);
  v4 = ofi_mr_map_get(a1 + 232, a2);
  (*(a1 + 168))(a1 + 88);
  return v4;
}

uint64_t rxm_msg_mr_reg_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[0] = a2;
  v21[1] = a3;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15[0] = v21;
  v15[1] = 1;
  v15[2] = a4;
  if (rxm_detect_hmem_iface)
  {
    DWORD2(v18) = ofi_get_hmem_iface(a2, v19, 0);
  }

  v11 = 0;
  do
  {
    v12 = *(a1 + 392);
    *(a1 + 392) = v12 + 1;
    *(&v16 + 1) = v12 | 0x80000000;
    result = (*(*(*(a1 + 280) + 32) + 24))(*(a1 + 280), v15, a5, a6, a5, a6, a7, a8);
    if (result != -266)
    {
      break;
    }
  }

  while (v11++ < 0x400);
  return result;
}

int *rxm_msg_mr_closev(int *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    for (i = 0; i != a2; ++i)
    {
      result = *&v3[2 * i];
      if (result)
      {
        result = (*(*(result + 2) + 8))();
        if (result)
        {
          result = fi_log_enabled(&rxm_prov, 0, 4);
          if (result)
          {
            v5 = *__error();
            fi_log(&rxm_prov, 0, 4, "rxm_msg_mr_closev", 530, "Unable to close msg mr: %zu\n", i);
            result = __error();
            *result = v5;
          }
        }

        *&v3[2 * i] = 0;
      }
    }
  }

  return result;
}

uint64_t rxm_msg_mr_regv(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a3)
  {
    v9 = a4;
    if (a4)
    {
      v13 = 0;
      v14 = *(a1 + 80);
      v15 = (a2 + 8);
      v16 = a6;
      while (1)
      {
        v17 = *v15 >= v9 ? v9 : *v15;
        v8 = rxm_msg_mr_reg_internal(v14, *(v15 - 1), v17, a5, 0, v16, a7, a8);
        if (v8)
        {
          break;
        }

        if (++v13 < a3)
        {
          v15 += 2;
          v16 += 8;
          v9 -= v17;
          if (v9)
          {
            continue;
          }
        }

        return v8;
      }

      rxm_msg_mr_closev(a6, v13);
    }
  }

  return v8;
}

uint64_t rxm_domain_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x200uLL, 0x10F20409BDF393DuLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v29 = 0;
  if (rxm_passthru_info(a2))
  {
    v10 = &rxm_thru_info;
  }

  else
  {
    v10 = 0;
  }

  core_info = ofi_get_core_info(*(a1 + 32), 0, 0, 0, &rxm_util_prov, a2, v10, rxm_info_to_core);
  if (core_info)
  {
    goto LABEL_40;
  }

  core_info = (*(*(*(a1 + 160) + 24) + 8))(*(a1 + 160));
  if (core_info)
  {
LABEL_39:
    fi_freeinfo(v29);
LABEL_40:
    free(v9);
    return core_info;
  }

  core_info = ofi_domain_init(a1, a2, v9, a4, 0);
  if (core_info)
  {
LABEL_38:
    (*(*(*(v9 + 280) + 16) + 8))();
    goto LABEL_39;
  }

  if ((*(a2 + 8) & 0x40) != 0)
  {
    v15 = *(a1 + 184);
    if (v15)
    {
      v16 = *(v15 + 24);
      if (v16 && *v16 >= 0x31uLL && (v17 = v16[6]) != 0)
      {
        v18 = *(a1 + 168);
        core_info = v17(v15);
        if (!core_info)
        {
          v19 = *(a1 + 192);
          if (v19)
          {
            v20 = *(v19 + 24);
            if (!v20 || *v20 < 0x31uLL || (v21 = v20[6]) == 0)
            {
              core_info = 4294967218;
              goto LABEL_29;
            }

            v22 = *(a1 + 176);
            attr = v21(v19);
            if (attr)
            {
              goto LABEL_11;
            }

            *(v9 + 504) |= rxm_get_coll_caps(*(v9 + 496));
          }

          goto LABEL_9;
        }
      }

      else
      {
        core_info = 4294967218;
      }
    }

    else if (fi_log_enabled(&rxm_prov, 0, 2))
    {
      v27 = *__error();
      fi_log(&rxm_prov, 0, 2, "rxm_domain_open", 926, "Util collective provider unavailable\n", &v29);
      core_info = 0;
      *__error() = v27;
    }

    else
    {
      core_info = 0;
    }

LABEL_37:
    ofi_domain_close(v9);
    goto LABEL_38;
  }

LABEL_9:
  *(v9 + 256) &= ~0x40u;
  if (rxm_buffer_size <= 0x5F)
  {
    rxm_domain_open_cold_1();
  }

  v12 = rxm_buffer_size - 96;
  v13 = rxm_packet_size;
  *(v9 + 376) = rxm_buffer_size - 96;
  *(v9 + 384) = v13;
  *a3 = v9;
  *(v9 + 16) = &rxm_domain_fi_ops;
  *(*a3 + 24) = &rxm_domain_ops;
  v34 = 0;
  v30[0] = v12;
  v30[1] = 64;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  attr = ofi_bufpool_create_attr(v30, (v9 + 416));
  if (attr)
  {
LABEL_11:
    core_info = attr;
LABEL_29:
    v25 = *(v9 + 496);
    if (v25)
    {
      (*(*(v25 + 16) + 8))(v25);
    }

    v26 = *(v9 + 488);
    if (v26)
    {
      (*(*(v26 + 16) + 8))(v26);
    }

    goto LABEL_37;
  }

  pthread_mutex_init((v9 + 424), 0);
  v23 = rxm_passthru_info(a2);
  *(v9 + 400) = v23;
  v24 = &rxm_domain_mr_ops;
  if (v23)
  {
    v24 = &rxm_domain_mr_thru_ops;
  }

  *(*a3 + 32) = v24;
  core_info = rxm_config_flow_ctrl(v9);
  if (core_info)
  {
    pthread_mutex_destroy((v9 + 424));
    ofi_bufpool_destroy(*(v9 + 416));
    goto LABEL_29;
  }

  fi_freeinfo(v29);
  return core_info;
}

uint64_t rxm_get_coll_caps(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v9 = 0;
  v11 = 0;
  v10 = vdupq_n_s64(1uLL);
  v12 = 0;
  do
  {
    LODWORD(v9) = (v2 == 0) << 8;
    v4 = *(a1 + 24);
    if (v4)
    {
      if (*v4 >= 0x51uLL)
      {
        v5 = v4[10];
        if (v5)
        {
          v6 = v5(a1, v2, &v9, 0);
          v7 = 1 << v2;
          if (v6)
          {
            v7 = 0;
          }

          v3 |= v7;
        }
      }
    }

    ++v2;
  }

  while (v2 != 9);
  return v3;
}

uint64_t rxm_config_flow_ctrl(uint64_t a1)
{
  v4 = 0;
  result = (*(*(*(a1 + 280) + 16) + 32))();
  if (result)
  {
    if (result == -78)
    {
      result = 0;
      *(a1 + 408) = &rxm_no_ops_flow_ctrl;
    }
  }

  else
  {
    v3 = v4;
    if (!v4)
    {
      rxm_config_flow_ctrl_cold_1();
    }

    *(a1 + 408) = v4;
    (*(v3 + 32))(*(a1 + 280), rxm_send_credits);
    return 0;
  }

  return result;
}

uint64_t rxm_domain_close(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 424));
  ofi_bufpool_destroy(*(a1 + 416));
  result = (*(*(*(a1 + 280) + 16) + 8))();
  if (!result)
  {
    v3 = *(a1 + 496);
    if (v3)
    {
      result = (*(*(v3 + 16) + 8))();
      if (result)
      {
        return result;
      }

      *(a1 + 496) = 0;
    }

    v4 = *(a1 + 488);
    if (v4)
    {
      result = (*(*(v4 + 16) + 8))();
      if (result)
      {
        return result;
      }

      *(a1 + 488) = 0;
    }

    result = ofi_domain_close(a1);
    if (!result)
    {
      free(a1);
      return 0;
    }
  }

  return result;
}

uint64_t rxm_av_open(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  v22 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 0x80000000000;
  if (ofi_av_remove_cleanup)
  {
    v6 = rxm_av_remove_handler;
  }

  else
  {
    v6 = 0;
  }

  v9 = rxm_util_av_open(a1, a2, &v22, a4, 128, v6, rxm_foreach_ep);
  if (!v9)
  {
    v10 = v22;
    *(v22 + 408) = 27;
    *(v10 + 424) = &rxm_peer_av_fi_ops;
    *(v10 + 432) = &rxm_av_owner_ops;
    v21[0] = 16;
    v21[1] = v10 + 408;
    v11 = *(a1 + 488);
    if (v11 && (v12 = (*(*(v11 + 24) + 8))(v11, v18, v10 + 440, v21, v7, v8), v12) || (v16 = *(a1 + 496)) != 0 && (v12 = (*(*(v16 + 24) + 8))(v16, v18, v10 + 448, v21, v7, v8), v12))
    {
      v9 = v12;
      (*(*(v22 + 16) + 8))(v22, v13, v14, v15, v7, v8);
    }

    else
    {
      v9 = 0;
      *a3 = v22;
    }
  }

  return v9;
}

uint64_t rxm_cntr_open(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10A20400D615D19uLL);
  if (!v8)
  {
    return 4294967284;
  }

  v9 = v8;
  v10 = ofi_cntr_init(&rxm_prov, a1, a2, v8, ofi_cntr_progress, a4);
  if (!v10)
  {
    if (*(a1 + 400) == 1)
    {
      v11 = (*(*(*(a1 + 280) + 24) + 40))();
      if (v11)
      {
        v10 = v11;
        if (fi_log_enabled(&rxm_prov, 0, 9))
        {
          v12 = *__error();
          v13 = fi_strerror(-v10);
          fi_log(&rxm_prov, 0, 9, "rxm_cntr_open", 315, "fi_cntr_open%s (%d)\n", v13, v10);
          *__error() = v12;
        }

        ofi_cntr_cleanup(v9);
        goto LABEL_3;
      }

      v9[2] = &rxm_passthru_cntr_fi_ops;
      v9[3] = &rxm_passthru_cntr_ops;
    }

    v10 = 0;
    *a3 = v9;
    return v10;
  }

LABEL_3:
  free(v9);
  return v10;
}

uint64_t rxm_query_collective(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 488))
  {
    return 4294967218;
  }

  v6 = *(a1 + 496);
  if (v6 && (v7 = *(v6 + 24)) != 0 && *v7 >= 0x51uLL && (v8 = v7[10]) != 0)
  {
    result = v8();
    if ((a4 & 0x2000000000000000) != 0)
    {
      return result;
    }
  }

  else
  {
    result = 4294967218;
    if ((a4 & 0x2000000000000000) != 0)
    {
      return result;
    }
  }

  if (!result)
  {
    return result;
  }

  v10 = *(*(a1 + 488) + 24);
  if (!v10)
  {
    return 4294967218;
  }

  if (*v10 < 0x51uLL)
  {
    return 4294967218;
  }

  v11 = v10[10];
  if (!v11)
  {
    return 4294967218;
  }

  return v11();
}

uint64_t rxm_foreach_ep(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 12872);
  if (result)
  {
    return (*(*(result + 80) + 40))();
  }

  return result;
}

uint64_t rxm_passthru_cntr_close(void *a1)
{
  v2 = a1[29];
  if (!v2 || (result = (*(*(v2 + 16) + 8))(), !result))
  {
    a1[29] = 0;
    result = ofi_cntr_cleanup(a1);
    if (!result)
    {
      free(a1);
      return 0;
    }
  }

  return result;
}

uint64_t rxm_passthru_cntr_read(uint64_t a1)
{
  (*(a1 + 208))();
  v2 = *(*(*(a1 + 232) + 24) + 8);

  return v2();
}

uint64_t rxm_passthru_cntr_readerr(uint64_t a1)
{
  (*(a1 + 208))();
  v2 = *(*(*(a1 + 232) + 24) + 16);

  return v2();
}

uint64_t rxm_passthru_cntr_wait(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(*(*(a1 + 232) + 24) + 16))();
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = ofi_gettime_ms() + a3;
  }

  while (1)
  {
    (*(a1 + 208))(a1);
    if (v5 != (*(*(*(a1 + 232) + 24) + 16))())
    {
      break;
    }

    if (a3 < 0 || (a3 = v6 - ofi_gettime_ms(), a3 >= 1))
    {
      if (a3 >= 50)
      {
        v7 = 50;
      }

      else
      {
        v7 = a3;
      }

      if (a3 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 50;
      }

      result = (*(*(*(a1 + 232) + 24) + 40))();
      if (result != -60)
      {
        return result;
      }

      if (a3 < 0 || v8 < a3)
      {
        continue;
      }
    }

    return 4294967236;
  }

  return 4294967037;
}

uint64_t rxm_passthru_cntr_adderr(uint64_t a1)
{
  v1 = *(*(a1 + 232) + 24);
  if (v1 && *v1 >= 0x31uLL && (v2 = v1[6]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t rxm_passthru_cntr_seterr(uint64_t a1)
{
  v1 = *(*(a1 + 232) + 24);
  if (v1 && *v1 >= 0x39uLL && (v2 = v1[7]) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967218;
  }
}

uint64_t rxm_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v10[0] = a2;
  v10[1] = a3;
  return rxm_mr_regv(a1, v10, 1, a4, a5, a6, a7, a8, a9);
}

uint64_t rxm_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a9;
  memset(&v18[6], 0, 24);
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v12 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A004079C1A769uLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  v14 = (*(*(*(a1 + 280) + 32) + 16))(*(a1 + 280));
  if (v14)
  {
    v15 = v14;
    if (fi_log_enabled(&rxm_prov, 0, 2))
    {
      v16 = *__error();
      fi_log(&rxm_prov, 0, 2, "rxm_mr_regv", 688, "Unable to register MSG MR\n");
      *__error() = v16;
    }

    free(v13);
  }

  else
  {
    *v13 = 12;
    v13[1] = a9;
    v13[2] = &rxm_mr_ops;
    v13[3] = v13;
    v13[4] = *(v13[5] + 32);
    v13[6] = a1;
    v13[9] = 0;
    v13[10] = 0;
    atomic_fetch_add((a1 + 176), 1u);
    *a8 = v13;
    if ((*(a1 + 200) & 0x10) != 0)
    {
      v15 = rxm_mr_add_map_entry(a1, v18, v13, a7);
      if (v15)
      {
        (*(v13[2] + 8))(v13);
      }
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

uint64_t rxm_mr_regattr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 80);
  v9 = *(a2 + 96);
  v34 = *(a2 + 64);
  v35 = v8;
  v36 = v9;
  v10 = *(a2 + 16);
  v30 = *a2;
  v31 = v10;
  v11 = *(a2 + 48);
  v32 = *(a2 + 32);
  v33 = v11;
  if (ofi_hmem_is_initialized(*(a2 + 64)))
  {
    v12 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A004079C1A769uLL);
    if (v12)
    {
      v13 = v12;
      ofi_mr_update_attr(*(*(a1 + 56) + 32), *(a1 + 200), a2, &v30);
      if ((a3 & 0x200000000000) != 0 && *(a2 + 64) == 3)
      {
        DWORD2(v34) = -1;
      }

      v18 = *(a2 + 16);
      v19 = 512;
      if (!rxm_use_write_rndv)
      {
        v19 = 4096;
      }

      v20 = v19 & (v18 << 52 >> 63);
      v21 = 0x2000;
      if (!rxm_use_write_rndv)
      {
        v21 = 256;
      }

      *&v31 = v20 | v21 & (v18 << 53 >> 63) | v18;
      v22 = (*(*(*(a1 + 280) + 32) + 24))(*(a1 + 280), &v30, a3, v13 + 5, v14, v15, v16, v17);
      if (v22)
      {
        v23 = v22;
        if (fi_log_enabled(&rxm_prov, 0, 2))
        {
          v24 = *__error();
          fi_log(&rxm_prov, 0, 2, "rxm_mr_regattr", 623, "Unable to register MSG MR\n", v30);
          *__error() = v24;
        }

        free(v13);
      }

      else
      {
        v26 = *(a2 + 40);
        *v13 = 12;
        v13[1] = v26;
        v13[2] = &rxm_mr_ops;
        v13[3] = v13;
        v13[4] = *(v13[5] + 32);
        v13[6] = a1;
        v13[9] = 0;
        v13[10] = 0;
        atomic_fetch_add((a1 + 176), 1u);
        pthread_mutex_init((v13 + 11), 0);
        v27 = v34;
        *(v13 + 14) = v34;
        v13[8] = *(&v34 + 1);
        *a4 = v13;
        if (ofi_hmem_dev_register(v27, **a2, *(*a2 + 8), (v13 + 9)))
        {
          v28 = 0;
          v13[9] = 0;
        }

        else
        {
          v28 = 0x1000000000000000;
        }

        v13[10] = v28;
        if ((*(a1 + 200) & 0x10) != 0)
        {
          v23 = rxm_mr_add_map_entry(a1, &v30, v13, a3);
          if (v23)
          {
            (*(v13[2] + 8))(v13);
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 4294967284;
    }
  }

  else
  {
    if (fi_log_enabled(&rxm_prov, 0, 8))
    {
      v25 = *__error();
      fi_log(&rxm_prov, 0, 8, "rxm_mr_regattr", 603, "Cannot register memory for uninitialized iface\n", v30, v31, v32, v33);
      *__error() = v25;
    }

    return 4294967218;
  }

  return v23;
}

uint64_t rxm_mr_add_map_entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  *(a2 + 32) = *(a3 + 32);
  (*(a1 + 160))(a1 + 88);
  v8 = ofi_mr_map_insert(a1 + 232, a2, &v11, a3, a4);
  v9 = v8;
  if (v8)
  {
    rxm_mr_add_map_entry_cold_1(v8);
  }

  else if (*(a3 + 32) != v11)
  {
    rxm_mr_add_map_entry_cold_2();
  }

  (*(a1 + 168))(a1 + 88);
  return v9;
}

uint64_t rxm_mr_close(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((*(v2 + 200) & 0x10) != 0)
  {
    (*(v2 + 160))(v2 + 88);
    ofi_mr_map_remove(*(a1 + 48) + 232, *(a1 + 32));
    (*(*(a1 + 48) + 168))(*(a1 + 48) + 88);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    ofi_hmem_dev_unregister(*(a1 + 56), v3);
  }

  v4 = (*(*(*(a1 + 40) + 16) + 8))();
  if (v4 && fi_log_enabled(&rxm_prov, 0, 2))
  {
    v5 = *__error();
    fi_log(&rxm_prov, 0, 2, "rxm_mr_close", 478, "Unable to close MSG MR\n");
    *__error() = v5;
  }

  atomic_fetch_add((*(a1 + 48) + 176), 0xFFFFFFFF);
  free(a1);
  return v4;
}

uint64_t rxm_send_credits(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  v4 = *(v3 + 13000);
  if ((v4[16] & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v29 = 0;
  v30 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = *v4;
  if (!*v4)
  {
    if (ofi_bufpool_grow(v4))
    {
      if (fi_log_enabled(&rxm_prov, 0, 4))
      {
        v8 = *__error();
        fi_log(&rxm_prov, 0, 4, "rxm_send_credits", 785, "Ran out of buffers from TX credit buffer pool.\n", v26, v27, v28, v29, v30);
        *__error() = v8;
      }

      return -12;
    }

    v7 = *v4;
  }

  if (v7 == v4[1])
  {
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    *v4 = *v7;
  }

  if (atomic_fetch_add((v7[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v7 == v7)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v7 = v7;
  *(v7 + 20) = 5;
  v9 = *(v2 + 32);
  *(v7 + 490) = 6;
  *(v7 + 123) = 0;
  v7[63] = 0;
  v7[64] = 0;
  v7[62] = 0;
  *(v7 + 457) = 6;
  v10 = v7[3];
  v7[58] = v9;
  v7[59] = v10;
  v7[60] = a2;
  if (*v2 == 3)
  {
    v29 = (v7 + 57);
    v30 = 64;
    *&v27 = 1;
    *&v28 = v7 + 6;
    *&v26 = &v29;
    *(&v26 + 1) = v7 + 11;
    if (!(*(*(a1 + 40) + 48))(a1, &v26, 0x4000000000000000))
    {
      return 0;
    }
  }

  v11 = rxm_ep_alloc_deferred_tx_entry(v3, v2, 6);
  if (!v11)
  {
    if (fi_log_enabled(&rxm_prov, 0, 6))
    {
      v20 = *__error();
      fi_log(&rxm_prov, 0, 6, "rxm_send_credits", 815, "unable to allocate TX entry for deferred CREDIT mxg\n");
      *__error() = v20;
    }

    v21 = v7[2];
    if (!v21)
    {
      ofi_buf_free_cold_6();
    }

    if (atomic_fetch_add((v21 + 76), 0xFFFFFFFF) <= 0)
    {
      ofi_buf_free_cold_7();
    }

    v22 = v7[2];
    if (!v22)
    {
      ofi_buf_free_cold_6();
    }

    v23 = *(v22 + 64);
    if (!v23)
    {
      ofi_buf_free_cold_5();
    }

    if ((v23[16] & 2) != 0)
    {
      ofi_buf_free_cold_1();
    }

    if (v7[5] != 0xF1C0DE0F1C0DE64)
    {
      ofi_buf_free_cold_2();
    }

    if (*v7[4] != 0xF1C0DE0F1C0DE64)
    {
      ofi_buf_free_cold_3();
    }

    if (*v7 != v7)
    {
      ofi_buf_free_cold_4();
    }

    v24 = *v23;
    if (!*v23)
    {
      v23[1] = v7;
    }

    *v7 = v24;
    *v23 = v7;
    return -12;
  }

  v11[5] = v7 + 6;
  v12 = v11[1];
  v13 = v12 + 8;
  v14 = v12[8];
  if (v14 == v12 + 8)
  {
    v15 = *(v12[3] + 13040);
    v16 = *v15;
    v12[6] = *v15;
    v12[7] = v15;
    v17 = v12 + 6;
    *(v16 + 8) = v17;
    *v15 = v17;
    v14 = v17[2];
  }

  v18 = 0;
  v11[2] = v14;
  v11[3] = v13;
  v19 = v11 + 2;
  v14[1] = v19;
  *v13 = v19;
  return v18;
}

uint64_t rxm_send_segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned __int8 a15, unint64_t *a16, uint64_t **a17, int a18, uint64_t a19)
{
  v19 = a7;
  v28 = a6;
  if (a9 - 1 == a8)
  {
    if (a5 > a7)
    {
      rxm_send_segment_cold_2();
    }

    v21 = 3;
    v19 = a5;
  }

  else
  {
    v21 = 2;
  }

  inited = rxm_init_segment(a1, a2, a3, a4, v19, a8, a10, a11, a12, a13, v21, &v28);
  if (inited)
  {
    v23 = inited;
    if (ofi_copy_from_hmem_iov((inited + 59), v19, a18, a19, a14, a15, *a16) != v19)
    {
      rxm_send_segment_cold_1();
    }

    *a16 += v19;
    *a17 = v23;
    v24 = v23[5];
    v25 = *(*(*(a2 + 16) + 40) + 32);
    v26 = *(v23 + 205) + 64;

    return v25();
  }

  else
  {
    *a17 = 0;
    return -35;
  }
}

uint64_t *rxm_init_segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, uint64_t *a12)
{
  result = rxm_get_tx_buf(a1);
  if (result)
  {
    *(result + 8) = 4;
    *(result + 409) = 1;
    result[52] = *(a2 + 32);
    *(result + 442) = a10;
    result[57] = a7;
    result[58] = a9;
    *(result + 111) = a8 & 0x20000;
    result[56] = a4;
    if (a11 == 1)
    {
      v20 = *(result - 3);
      result[53] = v20;
      *a12 = v20;
    }

    else
    {
      result[53] = *a12;
    }

    *(result + 205) = a5;
    *(result + 103) = a6;
    result[7] = a3;
    result[8] = a8;
    *(result + 432) = result[54] & 0xFC | a11 & 3;
  }

  return result;
}

uint64_t rxm_inject_send(void *a1, uint64_t a2, void *__src, size_t __n)
{
  if (*(*(a1[53] + 72) + 40) < __n)
  {
    rxm_inject_send_cold_1();
  }

  v8 = a1[1628];
  *(v8 + 8) = *(a2 + 32);
  if (__n + 64 > a1[1619] || a1[22])
  {
    v9 = *(v8 + 36);
    v10 = *(v8 + 48);
    v11 = *(v8 + 56);
    v12 = *(v8 + 34);
    tx_buf = rxm_get_tx_buf(a1);
    if (!tx_buf)
    {
      return -35;
    }

    v14 = tx_buf;
    *(tx_buf + 8) = 1;
    *(tx_buf + 409) = 0;
    tx_buf[8] = v9;
    tx_buf[52] = *(a2 + 32);
    *(tx_buf + 442) = v12;
    tx_buf[57] = v10;
    tx_buf[58] = v11;
    *(tx_buf + 111) = v9 & 0x20000;
    tx_buf[56] = __n;
    memcpy(tx_buf + 59, __src, __n);
    v15 = *(v14 + 40);
    v16 = (*(*(*(a2 + 16) + 40) + 32))();
    v17 = v16;
    if (v16)
    {
      if (v16 == -35)
      {
        rxm_ep_do_progress(a1);
      }

      rxm_free_tx_buf(a1, v14);
    }

    return v17;
  }

  else
  {
    *(v8 + 40) = __n;
    memcpy((v8 + 64), __src, __n);
    v19 = *(*(*(a2 + 16) + 40) + 56);

    return v19();
  }
}

unint64_t rxm_send_common(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  v12 = a4;
  v86 = *MEMORY[0x29EDCA608];
  v14 = 0;
  if (a5)
  {
    v15 = a3 + 1;
    v16 = a5;
    do
    {
      v17 = *v15;
      v15 += 2;
      v14 += v17;
      --v16;
    }

    while (v16);
  }

  v18 = *(*(a1 + 424) + 72);
  if (*(v18 + 56) < a5)
  {
    rxm_send_common_cold_7();
  }

  if ((a8 & 0x2000000) != 0 && v14 > *(v18 + 40))
  {
    rxm_send_common_cold_6();
  }

  v20 = a9 | (a8 >> 36 << 63);
  v80 = 0;
  if (!a5)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    v21 = *a4;
    if (*a4)
    {
      v80 = *(v21 + 64);
      hmem_iface = *(v21 + 56);
      goto LABEL_13;
    }
  }

  if (!rxm_detect_hmem_iface)
  {
LABEL_18:
    hmem_iface = 0;
    goto LABEL_19;
  }

  hmem_iface = ofi_get_hmem_iface(*a3, &v80, 0);
LABEL_13:
  if (hmem_iface != 3 && hmem_iface != 5)
  {
LABEL_19:
    if (v14 <= *(a1 + 12960))
    {
      tx_buf = rxm_get_tx_buf(a1);
      if (!tx_buf)
      {
        goto LABEL_57;
      }

      v27 = tx_buf;
      *(tx_buf + 8) = 0;
      *(tx_buf + 409) = 0;
      tx_buf[7] = a6;
      tx_buf[8] = a8;
      tx_buf[52] = *(a2 + 32);
      *(tx_buf + 442) = a10;
      *(tx_buf + 111) = a8 & 0x20000;
      tx_buf[56] = v14;
      tx_buf[57] = a7;
      tx_buf[58] = v20;
      if (*(a1 + 12931) == 1 && *(*(*(a1 + 432) + 72) + 56) > a5)
      {
        memset(v84, 0, sizeof(v84));
        *&v85[0] = tx_buf + 51;
        *(&v85[0] + 1) = 64;
        __memcpy_chk();
        if (*(a1 + 12928) == 1)
        {
          v83 = *(v27 + 40);
          if (a5)
          {
            v35 = v84;
            v36 = a5;
            do
            {
              if (!*v12)
              {
                rxm_send_common_cold_2();
              }

              *v35++ = *(*(*v12++ + 40) + 24);
              --v36;
            }

            while (v36);
          }

          v37 = *(*(*(a2 + 16) + 40) + 40);
        }

        else
        {
          v37 = *(*(*(a2 + 16) + 40) + 40);
        }
      }

      else
      {
        if (rxm_copy_hmem_iov(v12, (tx_buf + 59), v14, a3, a5, 0, 0) != tx_buf[56])
        {
          rxm_send_common_cold_1();
        }

        v41 = *(v27 + 40);
        v37 = *(*(*(a2 + 16) + 40) + 32);
      }

      v42 = v37();
      if (!v42)
      {
        goto LABEL_80;
      }

LABEL_55:
      if (v42 == -35)
      {
        rxm_ep_do_progress(a1);
      }

      goto LABEL_79;
    }

    if (v14 > *(a1 + 12968))
    {
      goto LABEL_21;
    }

    v38 = rxm_buffer_size;
    v39 = (v14 + rxm_buffer_size - 1) / rxm_buffer_size;
    v81 = 0;
    if (v39 <= 1)
    {
      rxm_send_common_cold_4();
    }

    v82 = 0;
    if (a5)
    {
      if (v12)
      {
        v40 = *v12;
        if (*v12)
        {
          v82 = *(v40 + 64);
          v74 = *(v40 + 56);
LABEL_51:
          inited = rxm_init_segment(a1, a2, a6, v14, v38, 0, a7, a8, v20, a10, 1, &v81);
          if (!inited)
          {
            goto LABEL_57;
          }

          v27 = inited;
          v71 = v39;
          v46 = ofi_copy_from_hmem_iov((inited + 59), rxm_buffer_size, v74, v82, a3, a5, 0);
          if (v46 != rxm_buffer_size)
          {
            rxm_send_common_cold_3();
          }

          v83 = v46;
          v47 = *(v27 + 410);
          v48 = *(v27 + 40);
          v49 = (*(*(*(a2 + 16) + 40) + 32))();
          if (!v49)
          {
            v76 = a2;
            *&v85[0] = 0;
            v59 = rxm_buffer_size;
            v60 = v14 - rxm_buffer_size;
            v72 = v81;
            v61 = 1;
            while (1)
            {
              v62 = rxm_send_segment(a1, v76, a6, v14, v60, v72, v59, v61, v39, a7, a8, v20, a10, a3, a5, &v83, v85, v74, v82);
              if (v62)
              {
                break;
              }

              v59 = rxm_buffer_size;
              v60 -= rxm_buffer_size;
              if (v39 == ++v61)
              {
                v42 = 0;
                goto LABEL_80;
              }
            }

            v42 = v62;
            if (v62 != -35)
            {
              goto LABEL_79;
            }

            v63 = rxm_ep_alloc_deferred_tx_entry(a1, v76, 4);
            if (v63)
            {
              v64 = v63;
              memcpy(v63 + 6, a3, 16 * a5);
              *(v64 + 112) = a5;
              v64[15] = v83;
              v64[16] = a7;
              v64[5] = *&v85[0];
              *(v64 + 160) = a10;
              v64[17] = v20;
              v64[18] = v61;
              v64[19] = v71;
              v64[21] = v14;
              v64[22] = v60;
              v64[24] = a6;
              v64[25] = a8;
              v64[23] = v72;
              *(v64 + 52) = v74;
              v64[27] = v82;
              v65 = v64[1];
              if (v65[8] == v65 + 8)
              {
                v66 = *(v65[3] + 13040);
                v67 = *v66;
                v65[6] = *v66;
                v65[7] = v66;
                *(v67 + 8) = v65 + 6;
                *v66 = (v65 + 6);
              }

              v42 = 0;
              v68 = v65[9];
              v69 = *v68;
              v64[2] = *v68;
              v64[3] = v68;
              v70 = v64 + 2;
              *(v69 + 8) = v70;
              *v68 = v70;
            }

            else
            {
              if (*&v85[0])
              {
                rxm_free_tx_buf(a1, *&v85[0]);
              }

              v42 = -12;
            }

            goto LABEL_80;
          }

          v42 = v49;
          goto LABEL_55;
        }
      }

      if (rxm_detect_hmem_iface)
      {
        v74 = ofi_get_hmem_iface(*a3, &v82, 0);
        v38 = rxm_buffer_size;
        goto LABEL_51;
      }
    }

    v74 = 0;
    goto LABEL_51;
  }

LABEL_21:
  v73 = v80;
  v24 = rxm_get_tx_buf(a1);
  if (!v24)
  {
LABEL_57:
    v42 = -35;
    goto LABEL_80;
  }

  v27 = v24;
  v28 = a5;
  memset(v85, 0, 32);
  *(v24 + 409) = 2;
  v75 = a2;
  v29 = *(a2 + 32);
  *(v24 + 442) = a10;
  *(v24 + 111) = a8 & 0x20000;
  v24[56] = v14;
  v24[57] = a7;
  v24[58] = v20;
  v30 = *(v24 - 3);
  v24[52] = v29;
  v24[53] = v30;
  v24[7] = a6;
  v24[8] = a8;
  *(v24 + 104) = a5;
  if (*(a1 + 12929) == 1)
  {
    v31 = a3;
    if (!a5)
    {
      if (*(a1 + 13072) == &rxm_rndv_ops_write)
      {
        v44 = v75;
        v24[34] = v75;
        v33 = v85;
LABEL_66:
        rxm_rndv_hdr_init(a1, v27 + 472, v31, *(v27 + 104), v33);
        if ((*(*(a1 + 424) + 22) & 8) != 0)
        {
          v53 = ofi_copy_from_hmem_iov(v27 + 576, *(a1 + 12936), hmem_iface, v73, v31, a5, 0);
          if (v53 != *(a1 + 12936))
          {
            rxm_send_common_cold_5();
          }

          v42 = v53 + 168;
          if (v53 + 168 < 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v42 = 168;
        }

        goto LABEL_70;
      }

      v33 = v85;
LABEL_65:
      v44 = v75;
      goto LABEL_66;
    }

    v32 = 0;
    do
    {
      v33 = v85;
      *(v85 + v32 * 8) = *(v12[v32] + 40);
      ++v32;
    }

    while (a5 != v32);
LABEL_61:
    if (*(a1 + 13072) == &rxm_rndv_ops_write)
    {
      *(v27 + 272) = v75;
      if (v28)
      {
        v50 = 0;
        v51 = 0;
        v52 = v27 + 176;
        do
        {
          *(v52 + v50) = *(v31 + v50);
          *(v52 + 8 * v51 + 64) = *(v33[v51] + 24);
          ++v51;
          v50 += 16;
        }

        while (a5 != v51);
      }
    }

    goto LABEL_65;
  }

  v33 = v24 + 9;
  v31 = a3;
  v43 = rxm_msg_mr_regv(a1, a3, a5, v14, *(*(a1 + 13072) + 4), v24 + 18, v25, v26);
  if (!v43)
  {
    v28 = a5;
    goto LABEL_61;
  }

  v42 = v43;
  rxm_free_tx_buf(a1, v27);
  v44 = v75;
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_80;
  }

LABEL_70:
  if (*(a1 + 12952) >= v42)
  {
    if (*(a1 + 13072) == &rxm_rndv_ops_write)
    {
      v56 = 8;
    }

    else
    {
      v56 = 7;
    }

    *(v27 + 32) = v56;
    v55 = (*(*(*(v44 + 16) + 40) + 56))();
  }

  else
  {
    *(v27 + 32) = 6;
    v54 = *(v27 + 40);
    v55 = (*(*(*(v44 + 16) + 40) + 32))();
  }

  v42 = v55;
  if (v55)
  {
    if ((*(a1 + 12929) & 1) == 0)
    {
      rxm_msg_mr_closev((v27 + 72), *(v27 + 104));
    }

LABEL_79:
    rxm_free_tx_buf(a1, v27);
  }

LABEL_80:
  v57 = *MEMORY[0x29EDCA608];
  return v42;
}

uint64_t rxm_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v7[0] = a2;
  v7[1] = a3;
  return util_srx_generic_recv(*(a1 + 12872), v7, &v8, 1uLL, a5, a6, *(a1 + 128));
}

unint64_t rxm_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = 0;
  v13 = a4;
  v11[0] = a2;
  v11[1] = a3;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v12);
  if (!conn)
  {
    conn = rxm_send_common(a1, v12, v11, &v13, 1uLL, a6, 0, *(a1 + 144), 0, 0);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_sendv(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v14 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v14);
  if (!conn)
  {
    conn = rxm_send_common(a1, v14, a2, a3, a4, a6, 0, *(a1 + 144), 0, 0);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_sendmsg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v8);
  if (!conn)
  {
    conn = rxm_send_common(a1, v8, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 32), *(a2 + 40), *(a1 + 160) | a3, 0, 0);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_inject(uint64_t a1, void *a2, size_t a3, unint64_t a4)
{
  *v11 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, v11);
  if (!conn)
  {
    v9 = *(a1 + 13024);
    *(v9 + 34) = 0;
    *(v9 + 36) = 0;
    *(v9 + 56) = 0;
    *(*(a1 + 13024) + 48) = 0;
    conn = rxm_inject_send(a1, *v11, a2, a3);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_senddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = 0;
  v15 = a4;
  v13[0] = a2;
  v13[1] = a3;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a6, &v14);
  if (!conn)
  {
    conn = rxm_send_common(a1, v14, v13, &v15, 1uLL, a7, a5, *(a1 + 144) | 0x20000, 0, 0);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_injectdata(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5)
{
  *v13 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, v13);
  if (!conn)
  {
    v11 = *(a1 + 13024);
    *(v11 + 34) = 0;
    *(v11 + 36) = 0x20000;
    *(v11 + 56) = 0;
    *(*(a1 + 13024) + 48) = a4;
    conn = rxm_inject_send(a1, *v13, a2, a3);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_recv_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_recv_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 40) + 8))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_recvv_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_recvv_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 40) + 16))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_recvmsg_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_recvmsg_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 40) + 24))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_send_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 40) + 32))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_sendv_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 40) + 40))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_sendmsg_thru(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*(v6 + 16) + 40) + 48))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_inject_thru(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*(v8 + 16) + 40) + 56))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_senddata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*(v10 + 16) + 40) + 64))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_injectdata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 40) + 72))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_fabric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0xC8uLL, 0x10F0040F66B7D80uLL);
  if (v6)
  {
    v7 = v6;
    v8 = ofi_fabric_init(&rxm_prov, &rxm_fabric_attr, a1, v6, a3);
    if (v8)
    {
LABEL_20:
      free(v7);
      return v8;
    }

    v13 = 0;
    if (ofi_get_core_info_fabric(&rxm_prov, a1, &v13))
    {
      if (fi_log_enabled(&rxm_prov, 0, 1))
      {
        v9 = *__error();
        fi_log(&rxm_prov, 0, 1, "rxm_fabric", 160, "Unable to get core info!\n");
        *__error() = v9;
      }

      v8 = 4294967274;
      goto LABEL_19;
    }

    v8 = fi_fabric(v13[13], v7 + 20, a3);
    if (!v8)
    {
      inited = rxm_fabric_init_coll("off_coll", v7 + 21, v7 + 23);
      if (!inited || (v8 = inited, inited == -96))
      {
        if (!ofi_offload_coll_prov_name || !*ofi_offload_coll_prov_name || (v11 = rxm_fabric_init_coll(ofi_offload_coll_prov_name, v7 + 22, v7 + 24), !v11) || (v8 = v11, v11 == -96))
        {
          *a2 = v7;
          v7[2] = &rxm_fabric_fi_ops;
          *(*a2 + 24) = &rxm_fabric_ops;
          fi_freeinfo(v13);
          return 0;
        }

        (*(*(v7[23] + 16) + 8))();
        fi_freeinfo(v7[21]);
      }

      (*(*(v7[20] + 16) + 8))();
    }

    fi_freeinfo(v13);
LABEL_19:
    ofi_fabric_close(v7);
    goto LABEL_20;
  }

  return 4294967284;
}

uint64_t rxm_fabric_init_coll(const char *a1, void *a2, void *a3)
{
  v6 = fi_dupinfo(0);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  v8 = strdup(a1);
  *(v7[13] + 16) = v8;
  if (!v8)
  {
    fi_freeinfo(v7);
    return 4294967284;
  }

  v11 = 0;
  v12 = 0;
  v7[2] = 0x1000000000;
  v9 = fi_getinfo(0x20002u, 0, 0, 0x2000000000000000, v7, &v12);
  fi_freeinfo(v7);
  if (!v9)
  {
    v9 = fi_fabric(v12[13], &v11, 0);
    if (v9)
    {
      fi_freeinfo(v12);
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
    }
  }

  return v9;
}

uint64_t rxm_fabric_close(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    (*(*(v2 + 16) + 8))();
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    (*(*(v3 + 16) + 8))();
  }

  fi_freeinfo(*(a1 + 176));
  fi_freeinfo(*(a1 + 168));
  result = (*(*(*(a1 + 160) + 16) + 8))();
  if (!result)
  {
    result = ofi_fabric_close(a1);
    if (!result)
    {
      free(a1);
      return 0;
    }
  }

  return result;
}

uint64_t rxm_freeall_conns(uint64_t result)
{
  v1 = *(result + 88);
  if (v1)
  {
    v2 = result;
    (*(result + 384))(result + 312);
    v3 = rxm_av_max_peers(v1);
    if (v3 >= 1)
    {
      for (i = 0; i != v3; ++i)
      {
        if (!(i >> 20))
        {
          v5 = *(v2 + 448 + 8 * (i >> 10));
          if (v5)
          {
            if (!*(v2 + 8640 + 4 * (i >> 10)))
            {
              sock_av_remove_cold_1();
            }

            v6 = *(v5 + 8 * (i & 0x3FF));
            if (v6)
            {
              if (*v6)
              {
                rxm_close_conn(v6);
              }

              rxm_free_conn(v6);
            }
          }
        }
      }
    }

    v7 = *(v2 + 12736);
    if (v7 != (v2 + 12736))
    {
      do
      {
        v9 = *v7;
        v8 = (v7 - 14);
        rxm_close_conn(v8);
        rxm_free_conn(v8);
        v7 = v9;
      }

      while (v9 != (v2 + 12736));
    }

    v10 = *(v2 + 392);

    return v10(v2 + 312);
  }

  return result;
}

uint64_t rxm_close_conn(uint64_t a1)
{
  if (!(*(*(a1 + 24) + 376))(*(a1 + 24) + 312))
  {
    rxm_close_conn_cold_4();
  }

  v3 = (a1 + 64);
  for (i = *(a1 + 64); i != v3; i = *v3)
  {
    v4 = *(i - 1);
    if (v4[8] == v4 + 8)
    {
      rxm_ep_progress_deferred_queue_cold_4();
    }

    v5 = *i;
    v6 = i[1];
    *v6 = *i;
    *(v5 + 8) = v6;
    if (v4[8] == v4 + 8)
    {
      v8 = v4[6];
      v9 = v4[7];
      v7 = v4 + 6;
      *v9 = v8;
      *(v8 + 8) = v9;
      *v7 = v7;
      v7[1] = v7;
    }

    free(i - 2);
  }

  v10 = (a1 + 96);
  for (j = *(a1 + 96); j != v10; j = *v10)
  {
    v13 = *j;
    v12 = j[1];
    *v12 = v13;
    *(v13 + 8) = v12;
  }

  v15 = (a1 + 80);
  for (k = *(a1 + 80); k != v15; k = *v15)
  {
    (*(*(k[2] + 80) + 48))();
  }

  (*(*(*(a1 + 16) + 16) + 8))();
  v16 = *(a1 + 24);
  if (!(*(v16 + 376))(v16 + 312))
  {
    rxm_close_conn_cold_3();
  }

  v38 = 0;
  memset(v37, 0, sizeof(v37));
  while (1)
  {
    while (1)
    {
      result = (*(*(*(v16 + 12880) + 24) + 8))(*(v16 + 12880), v37, 1, v17, v18);
      if (result < 1)
      {
        break;
      }

      v26 = (*(v16 + 12920))(v16, v37);
      if (v26)
      {
        v31 = v26;
        result = rxm_cq_write_error_all(v16, v26, v27, v17, v18, v28, v29, v30);
        if (v31 <= 0)
        {
          goto LABEL_27;
        }
      }
    }

    if (result != -259)
    {
      break;
    }

    (*(v16 + 12912))(v16);
  }

  if (result != -35 && result != 0)
  {
    result = rxm_cq_write_error_all(v16, result, v20, v21, v22, v23, v24, v25);
  }

LABEL_27:
  v33 = *(a1 + 112);
  v34 = *(a1 + 120);
  *v34 = v33;
  *(v33 + 8) = v34;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 16) = 0;
  v35 = *(a1 + 24);
  v36 = *(v35 + 440);
  if ((*a1 - 1) <= 1)
  {
    *(v35 + 440) = --v36;
  }

  if (v36 < 0)
  {
    rxm_close_conn_cold_2();
  }

  *a1 = 0;
  return result;
}

uint64_t rxm_free_conn(uint64_t a1)
{
  if (!(*(*(a1 + 24) + 376))(*(a1 + 24) + 312))
  {
    rxm_free_conn_cold_1();
  }

  if (*(a1 + 40))
  {
    ofi_idm_clear(*(a1 + 24) + 448, *(*(a1 + 8) + 24));
  }

  util_put_peer(*(a1 + 8));
  v2 = *(*(a1 + 24) + 88);

  return rxm_av_free_conn(v2, a1);
}

uint64_t rxm_get_conn(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_get_conn_cold_4();
  }

  v6 = ofi_av_addr_context(*(a1 + 88), a2);
  v7 = rxm_add_conn(a1, *v6);
  *a3 = v7;
  if (!v7)
  {
    return -12;
  }

  v8 = v7;
  if (*v7 == 3)
  {
    if (v7[8] == v7 + 8)
    {
      return 0;
    }

    rxm_ep_do_progress(a1);
    if (*(*a3 + 64) == *a3 + 64)
    {
      return 0;
    }

    return -35;
  }

  if ((*v6)[44])
  {
    return -271;
  }

  if (!(*(v7[3] + 376))(v7[3] + 312))
  {
    rxm_get_conn_cold_3();
  }

  v10 = *v8;
  if ((*v8 - 1) < 2)
  {
LABEL_28:
    rxm_conn_progress(a1);
    return -35;
  }

  if (v10 == 3)
  {
    return 0;
  }

  if (v10)
  {
    rxm_get_conn_cold_2();
  }

  if (!(*(*(v8 + 24) + 376))(*(v8 + 24) + 312))
  {
    rxm_get_conn_cold_1();
  }

  v11 = *(*(v8 + 24) + 432);
  v11[5] = v11[4];
  v12 = v11 + 7;
  free(v11[7]);
  v13 = *(v8 + 8);
  v14 = v11[5];
  v15 = malloc_type_malloc(v14, 0x2A1BF8CCuLL);
  if (v15)
  {
    v16 = v15;
    memcpy(v15, (v13 + 32), v14);
    v11[7] = v16;
    v17 = rxm_open_conn(v8);
    if (v17)
    {
      goto LABEL_27;
    }

    v18 = *(v8 + 24);
    v21 = v18[1620];
    v22 = *(*(v18[54] + 80) + 48);
    *(v8 + 41);
    v19 = (*(*(v18[1601] + 24) + 16))();
    if (v19)
    {
      v17 = v19;
      if (!fi_log_enabled(&rxm_prov, 0, 3))
      {
LABEL_25:
        (*(*(*(v8 + 16) + 16) + 8))();
        v12 = (v8 + 16);
        goto LABEL_26;
      }

      v20 = *__error();
      fi_strerror(-v17);
      fi_log(&rxm_prov, 0, 3, "rxm_init_connect_data", 252, "fi_getopt%s (%d)\n");
    }

    else
    {
      if (!fi_log_enabled(&rxm_prov, 0, 3))
      {
        v17 = -256;
        goto LABEL_25;
      }

      v20 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_init_connect_data", 257, "cm data too small\n");
      v17 = -256;
    }

    *__error() = v20;
    goto LABEL_25;
  }

  v17 = -12;
LABEL_26:
  *v12 = 0;
LABEL_27:
  if (v17 == -35)
  {
    goto LABEL_28;
  }

  return v17;
}

void *rxm_add_conn(uint64_t a1, _DWORD *a2)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_add_conn_cold_2();
  }

  v4 = a2[6];
  if (v4 >= 0x100000)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 448 + 8 * (v4 >> 10));
  if (!v5)
  {
    goto LABEL_6;
  }

  if (!*(a1 + 4 * (v4 >> 10) + 8640))
  {
    sock_av_remove_cold_1();
  }

  v6 = *(v5 + 8 * (v4 & 0x3FF));
  if (!v6)
  {
LABEL_6:
    v6 = rxm_alloc_conn(a1, a2);
    if (v6)
    {
      if ((ofi_idm_set(a1 + 448, a2[6], v6) & 0x80000000) != 0)
      {
        rxm_free_conn(v6);
        if (fi_log_enabled(&rxm_prov, 0, 3))
        {
          v7 = *__error();
          v8 = fi_strerror(12);
          fi_log(&rxm_prov, 0, 3, "rxm_add_conn", 433, "ofi_idm_set%s (%d)\n", v8, -12);
          v6 = 0;
          *__error() = v7;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        *(v6 + 40) |= 1u;
      }
    }
  }

  return v6;
}

uint64_t rxm_conn_progress(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_conn_progress_cold_8();
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  while (1)
  {
    while (1)
    {
      result = (*(*(*(a1 + 12816) + 24) + 8))();
      if (result < 1)
      {
        break;
      }

      if (!(*(a1 + 376))(a1 + 312))
      {
        rxm_conn_progress_cold_7();
      }
    }

    if (result != -259)
    {
      break;
    }

    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    if (!(*(a1 + 376))(a1 + 312))
    {
      rxm_conn_progress_cold_3();
    }

    v3 = (*(*(*(a1 + 12816) + 24) + 16))();
    if (v3 != -35)
    {
      v4 = v3;
      if (v3 == 48)
      {
        if (DWORD2(v22) == 61)
        {
          if (!fi_log_ready(&rxm_prov, 0, 6, &rxm_handle_error_showtime))
          {
            goto LABEL_18;
          }

          v5 = 794;
        }

        else
        {
          if (!fi_log_enabled(&rxm_prov, 0, 6))
          {
            goto LABEL_18;
          }

          v5 = 801;
        }

        v7 = *__error();
        v8 = fi_strerror(SDWORD2(v22));
        v9 = DWORD2(v22);
        v10 = (*(*(*(a1 + 12816) + 24) + 40))();
        fi_log(&rxm_prov, 0, 6, "rxm_handle_error", v5, "fi_eq_readerr: err: %s (%d), prov_err: %s (%d)\n", v8, v9, v10, HIDWORD(v22));
        *__error() = v7;
LABEL_18:
        if (v21 && *v21 == 3)
        {
          v11 = *(v21 + 8);
          if (DWORD2(v22) == 61)
          {
            if (fi_log_enabled(&rxm_prov, 2, 3))
            {
              v12 = *__error();
              fi_log(&rxm_prov, 2, 3, "rxm_process_reject", 538, "Processing reject for handle: %p\n", v11);
              *__error() = v12;
            }

            if (!(*(v11[3] + 376))(v11[3] + 312))
            {
              rxm_conn_progress_cold_2();
            }

            if (*(&v23 + 1) < 2uLL)
            {
              goto LABEL_30;
            }

            if (*v23 == 1)
            {
              v13 = *(v23 + 1) == 2;
              goto LABEL_31;
            }

            if (fi_log_enabled(&rxm_prov, 0, 3))
            {
              v14 = *__error();
              fi_log(&rxm_prov, 0, 3, "rxm_process_reject", 544, "invalid reject version\n");
              v13 = 0;
              *__error() = v14;
            }

            else
            {
LABEL_30:
              v13 = 0;
            }

LABEL_31:
            v15 = *v11;
            if ((*v11 - 2) >= 2 && v15)
            {
              if (v15 != 1)
              {
                rxm_conn_progress_cold_1();
              }

              rxm_close_conn(v11);
              if (v13)
              {
                if (fi_log_enabled(&rxm_prov, 2, 3))
                {
                  v16 = *__error();
                  fi_log(&rxm_prov, 2, 3, "rxm_process_reject", 564, "rejected, already connected\n");
                  *__error() = v16;
                }
              }

              else
              {
                rxm_free_conn(v11);
              }
            }
          }

          else
          {
            rxm_process_shutdown(*(v21 + 8));
          }
        }
      }

      else if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v6 = *__error();
        fi_strerror(-v4);
        fi_log(&rxm_prov, 0, 3, "rxm_handle_error", 784, "fi_eq_readerr%s (%d)\n");
        *__error() = v6;
      }
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t rxm_process_connect(uint64_t a1)
{
  v2 = *(*a1 + 8);
  result = (*(*(v2 + 24) + 376))(*(v2 + 24) + 312);
  if (!result)
  {
    rxm_process_connect_cold_2();
  }

  if (*v2 == 1)
  {
    *(v2 + 32) = *(a1 + 16);
    *(v2 + 36) = *(a1 + 20);
    v4 = *(a1 + 28);
    if (v4 == 2)
    {
      LOBYTE(v4) = 0;
      goto LABEL_8;
    }

    if (v4 == 1)
    {
LABEL_8:
      *(v2 + 42) = v4;
      goto LABEL_9;
    }

    if (!*(a1 + 28))
    {
      LOBYTE(v4) = *(v2 + 41);
      goto LABEL_8;
    }
  }

LABEL_9:
  if (*(v2 + 41) == 1 && *(v2 + 42) == 1)
  {
    result = (*(*(*(*(v2 + 24) + 80) + 408) + 16))(*(v2 + 16), *(*(*(*(v2 + 24) + 432) + 80) + 48) >> 1);
  }

  v5 = *(v2 + 24);
  v6 = *(v5 + 440);
  *(v5 + 440) = v6 - 1;
  if (v6 <= 0)
  {
    rxm_process_connect_cold_1();
  }

  *v2 = 3;
  return result;
}

int *rxm_process_shutdown(void *a1)
{
  if (!(*(a1[3] + 376))(a1[3] + 312))
  {
    rxm_process_shutdown_cold_1();
  }

  result = fi_log_enabled(&rxm_prov, 2, 3);
  if (result)
  {
    v3 = *__error();
    fi_log(&rxm_prov, 2, 3, "rxm_process_shutdown", 759, "shutdown conn %p (state %d)\n", a1, *a1);
    result = __error();
    *result = v3;
  }

  if ((*a1 - 1) <= 2)
  {
    rxm_close_conn(a1);

    return rxm_free_conn(a1);
  }

  return result;
}

int *rxm_stop_listen(uint64_t a1)
{
  result = fi_log_enabled(&rxm_prov, 2, 3);
  if (result)
  {
    v3 = *__error();
    fi_log(&rxm_prov, 2, 3, "rxm_stop_listen", 863, "stopping CM thread\n");
    result = __error();
    *result = v3;
  }

  if (*(a1 + 12800))
  {
    (*(a1 + 384))(a1 + 312);
    *(a1 + 12930) = 0;
    (*(a1 + 392))(a1 + 312);
    if ((*(*(*(a1 + 12816) + 24) + 24))() != 24)
    {
      result = fi_log_enabled(&rxm_prov, 0, 3);
      if (!result)
      {
        return result;
      }

      v5 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_stop_listen", 873, "Unable to signal\n");
      goto LABEL_10;
    }

    result = pthread_join(*(a1 + 12800), 0);
    if (result)
    {
      v4 = result;
      result = fi_log_enabled(&rxm_prov, 0, 3);
      if (result)
      {
        v5 = *__error();
        fi_strerror(v4);
        fi_log(&rxm_prov, 0, 3, "rxm_stop_listen", 879, "pthread_join%s (%d)\n");
LABEL_10:
        result = __error();
        *result = v5;
      }
    }
  }

  return result;
}

uint64_t rxm_start_listen(uint64_t a1)
{
  v2 = (*(*(*(a1 + 12808) + 32) + 40))();
  if (v2)
  {
    v3 = v2;
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v4 = *__error();
      fi_strerror(-v3);
      fi_log(&rxm_prov, 0, 3, "rxm_start_listen", 964, "fi_listen%s (%d)\n");
LABEL_7:
      *__error() = v4;
      return v3;
    }

    return v3;
  }

  v5 = (*(*(*(a1 + 12808) + 32) + 16))();
  if (!v5)
  {
    v7 = *(*(a1 + 432) + 48);
    if (v7)
    {
      free(v7);
      v8 = *(a1 + 432);
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
    }

    v9 = malloc_type_malloc(0x30uLL, 0x2A1BF8CCuLL);
    if (!v9)
    {
      *(*(a1 + 432) + 48) = 0;
      return 4294967284;
    }

    v10 = v9;
    memcpy(v9, (a1 + 12752), 0x30uLL);
    v11 = *(a1 + 432);
    *(v11 + 48) = v10;
    *(v11 + 32) = 48;
    v12 = v10[1];
    if (v12 != 30)
    {
      if (v12 == 27)
      {
        *(v10 + 24) = xmmword_29ED128C0;
LABEL_18:
        v13 = *(a1 + 80);
        if (*(v13 + 268) != 1 && !force_auto_progress)
        {
          return 0;
        }

        if (*(v13 + 264) != 1)
        {
          rxm_start_listen_cold_1();
        }

        *(a1 + 12930) = 1;
        v14 = pthread_create((a1 + 12800), 0, rxm_cm_data_progress, a1);
        if (!v14)
        {
          return 0;
        }

        v15 = v14;
        if (fi_log_enabled(&rxm_prov, 0, 3))
        {
          v16 = *__error();
          v17 = fi_strerror(v15);
          fi_log(&rxm_prov, 0, 3, "rxm_start_listen", 999, "pthread_create%s (%d)\n", v17, -v15);
          *__error() = v16;
        }

        return -v15;
      }

      if (v12 != 2)
      {
        sock_get_src_addr_cold_1();
      }
    }

    *(v10 + 1) = 0;
    goto LABEL_18;
  }

  v3 = v5;
  if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v4 = *__error();
    fi_strerror(-v3);
    fi_log(&rxm_prov, 0, 3, "rxm_start_listen", 971, "fi_getname%s (%d)\n");
    goto LABEL_7;
  }

  return v3;
}

uint64_t rxm_cm_data_progress(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 12880);
  v17 = *(a1 + 12816);
  v18 = v2;
  *&v16[0].fd = xmmword_29ED12A30;
  v3 = *(*(a1 + 80) + 56);
  v4 = (*(*(v17 + 16) + 24))();
  if (v4)
  {
    v5 = v4;
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v6 = *__error();
      fi_strerror(-v5);
      fi_log(&rxm_prov, 0, 3, "rxm_cm_data_progress", 925, "fi_control%s (%d)\n");
LABEL_17:
      *__error() = v6;
    }
  }

  else
  {
    v7 = (*(*(*(a1 + 12880) + 16) + 24))();
    if (v7)
    {
      v8 = v7;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v6 = *__error();
        fi_strerror(-v8);
        fi_log(&rxm_prov, 0, 3, "rxm_cm_data_progress", 931, "fi_control%s (%d)\n");
        goto LABEL_17;
      }
    }

    else
    {
      if (fi_log_enabled(&rxm_prov, 2, 3))
      {
        v9 = *__error();
        fi_log(&rxm_prov, 2, 3, "rxm_cm_data_progress", 935, "Starting auto-progress thread\n");
        *__error() = v9;
      }

      (*(a1 + 384))(a1 + 312);
      if (*(a1 + 12930) == 1)
      {
        do
        {
          (*(a1 + 392))(a1 + 312);
          if (!(*(*(*(v3 + 160) + 24) + 40))() && poll(v16, 2u, -1) == -1 && fi_log_enabled(&rxm_prov, 0, 3))
          {
            v10 = *__error();
            v11 = __error();
            v12 = fi_strerror(*v11);
            v13 = __error();
            fi_log(&rxm_prov, 0, 3, "rxm_cm_data_progress", 944, "poll%s (%d)\n", v12, -*v13);
            *__error() = v10;
          }

          (*(a1 + 296))(a1);
          (*(a1 + 384))(a1 + 312);
          rxm_conn_progress(a1);
        }

        while ((*(a1 + 12930) & 1) != 0);
      }

      (*(a1 + 392))(a1 + 312);
      if (fi_log_enabled(&rxm_prov, 2, 3))
      {
        v6 = *__error();
        fi_log(&rxm_prov, 2, 3, "rxm_cm_data_progress", 953, "Stopping auto progress thread\n");
        goto LABEL_17;
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t rxm_av_remove_handler(uint64_t a1, uint64_t a2)
{
  (*(a1 + 384))(a1 + 312);
  v4 = *(a2 + 24);
  if (v4 < 0x100000)
  {
    v5 = *(a1 + 8 * (v4 >> 10) + 448);
    if (v5)
    {
      if (!*(a1 + 4 * (v4 >> 10) + 8640))
      {
        sock_av_remove_cold_1();
      }

      v6 = v4 & 0x3FF;
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        rxm_close_conn(*(v5 + 8 * v6));
        rxm_free_conn(v7);
      }
    }
  }

  v8 = *(a1 + 392);

  return v8(a1 + 312);
}

void *rxm_alloc_conn(uint64_t a1, _DWORD *a2)
{
  if (!(*(a1 + 376))(a1 + 312))
  {
    rxm_alloc_conn_cold_1();
  }

  v4 = rxm_av_alloc_conn(*(a1 + 88));
  v5 = v4;
  if (v4)
  {
    v4[3] = a1;
    *v4 = 0;
    *(v4 + 8) = -1;
    *(v4 + 20) = 0;
    *(v4 + 42) = 0;
    v4[6] = v4 + 6;
    v4[7] = v4 + 6;
    v4[8] = v4 + 8;
    v4[9] = v4 + 8;
    v4[10] = v4 + 10;
    v4[11] = v4 + 10;
    v4[12] = v4 + 12;
    v4[13] = v4 + 12;
    v4[14] = v4 + 14;
    v4[15] = v4 + 14;
    v4[1] = a2;
    rxm_ref_peer(a2);
  }

  else if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v6 = *__error();
    v7 = fi_strerror(12);
    fi_log(&rxm_prov, 0, 3, "rxm_alloc_conn", 394, "rxm_av_alloc_conn%s (%d)\n", v7, -12);
    *__error() = v6;
  }

  return v5;
}

uint64_t rxm_open_conn(uint64_t a1)
{
  if (!(*(*(a1 + 24) + 376))(*(a1 + 24) + 312))
  {
    rxm_open_conn_cold_1();
  }

  v2 = *(a1 + 24);
  v3 = v2[10];
  v4 = (*(*(*(v3 + 280) + 24) + 24))();
  if (!v4)
  {
    v8 = v2[1602];
    v9 = (*(MEMORY[0x10] + 16))();
    if (v9)
    {
      v5 = v9;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v10 = *__error();
        fi_strerror(-v5);
        fi_log(&rxm_prov, 0, 3, "rxm_open_conn", 191, "fi_ep_bind%s (%d)\n");
LABEL_8:
        *__error() = v10;
      }
    }

    else
    {
      if (v2[1603])
      {
        v12 = (*(MEMORY[0x10] + 16))();
        if (v12)
        {
          v5 = v12;
          if (!fi_log_enabled(&rxm_prov, 0, 3))
          {
            goto LABEL_9;
          }

          v10 = *__error();
          fi_strerror(-v5);
          fi_log(&rxm_prov, 0, 3, "rxm_open_conn", 198, "fi_ep_bind%s (%d)\n");
          goto LABEL_8;
        }
      }

      v13 = (*(MEMORY[0x10] + 16))(0, v2[1610], 3072);
      if (v13)
      {
        v5 = v13;
        if (!fi_log_enabled(&rxm_prov, 0, 3))
        {
          goto LABEL_9;
        }

        v10 = *__error();
        fi_strerror(-v5);
        fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 100, "fi_ep_bind%s (%d)\n");
        goto LABEL_8;
      }

      if (rxm_passthru_info(v2[53]))
      {
        v14 = v2[22];
        if (v14)
        {
          v15 = (*(MEMORY[0x10] + 16))(0, *(v14 + 232), 2048);
          if (v15)
          {
            v5 = v15;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 112, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }

        v16 = v2[23];
        if (v16)
        {
          v17 = (*(MEMORY[0x10] + 16))(0, *(v16 + 232), 1024);
          if (v17)
          {
            v5 = v17;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 122, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }

        v18 = v2[24];
        if (v18)
        {
          v19 = (*(MEMORY[0x10] + 16))(0, *(v18 + 232), 256);
          if (v19)
          {
            v5 = v19;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 132, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }

        v20 = v2[25];
        if (v20)
        {
          v21 = (*(MEMORY[0x10] + 16))(0, *(v20 + 232), 512);
          if (v21)
          {
            v5 = v21;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 142, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }

        v22 = v2[26];
        if (v22)
        {
          v23 = (*(MEMORY[0x10] + 16))(0, *(v22 + 232), 4096);
          if (v23)
          {
            v5 = v23;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 152, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }

        v24 = v2[27];
        if (v24)
        {
          v25 = (*(MEMORY[0x10] + 16))(0, *(v24 + 232), 0x2000);
          if (v25)
          {
            v5 = v25;
            if (!fi_log_enabled(&rxm_prov, 0, 3))
            {
              goto LABEL_9;
            }

            v10 = *__error();
            fi_strerror(-v5);
            fi_log(&rxm_prov, 0, 3, "rxm_bind_comp", 162, "fi_ep_bind%s (%d)\n");
            goto LABEL_8;
          }
        }
      }

      v26 = (*(MEMORY[0x10] + 24))();
      if (!v26)
      {
        *(a1 + 41) = (*(*(v3 + 408) + 8))(0);
        if (v2[1603] || (v5 = rxm_prepost_recv(v2, 0), !v5))
        {
          v5 = 0;
          *(a1 + 16) = 0;
          return v5;
        }

        goto LABEL_9;
      }

      v5 = v26;
      if (fi_log_enabled(&rxm_prov, 0, 3))
      {
        v10 = *__error();
        fi_strerror(-v5);
        fi_log(&rxm_prov, 0, 3, "rxm_open_conn", 209, "fi_enable%s (%d)\n");
        goto LABEL_8;
      }
    }

LABEL_9:
    (*(MEMORY[0x10] + 8))();
    return v5;
  }

  v5 = v4;
  if (fi_log_enabled(&rxm_prov, 0, 3))
  {
    v6 = *__error();
    v7 = fi_strerror(-v5);
    fi_log(&rxm_prov, 0, 3, "rxm_open_conn", 185, "fi_endpoint%s (%d)\n", v7, v5);
    *__error() = v6;
  }

  return v5;
}

int *rxm_reject_connreq(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 64);
  result = (*(*(*(a1 + 12808) + 32) + 56))();
  if (result)
  {
    v4 = result;
    result = fi_log_enabled(&rxm_prov, 0, 3);
    if (result)
    {
      v5 = *__error();
      v6 = fi_strerror(-v4);
      fi_log(&rxm_prov, 0, 3, "rxm_reject_connreq", 620, "fi_reject%s (%d)\n", v6, v4);
      result = __error();
      *result = v5;
    }
  }

  return result;
}

uint64_t rxm_ep_query_atomic(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t *a4, unint64_t a5)
{
  if ((a5 & 8) != 0)
  {
    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v9 = *__error();
      fi_log(&rxm_prov, 0, 4, "rxm_ep_query_atomic", 510, "tagged atomic op not supported\n");
      *__error() = v9;
    }

    return 4294967274;
  }

  else if ((a2 & 0xFFFFFFFE) == 0xE)
  {
    if (fi_log_enabled(&rxm_prov, 0, 3))
    {
      v7 = *__error();
      fi_log(&rxm_prov, 0, 3, "rxm_ep_query_atomic", 516, "128-bit integers not supported\n");
      *__error() = v7;
    }

    return 4294967194;
  }

  else
  {
    result = ofi_atomic_valid(&rxm_prov, a2, a3, a5);
    if (a4)
    {
      if (!result)
      {
        v12 = *(a1 + 376);
        v13 = ofi_datatype_size(a2);
        a4[1] = v13;
        result = 4294967194;
        if (v13)
        {
          v14 = v12 >> ((a5 & 0x800000000000000) != 0);
          *a4 = v14 / v13;
          if (v13 <= v14)
          {
            return 0;
          }

          else
          {
            return 4294967194;
          }
        }
      }
    }
  }

  return result;
}

uint64_t rxm_ep_atomic_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v12 = a4;
  v11[0] = a2;
  v11[1] = a3;
  return rxm_ep_atomic_writev(a1, v11, &v12, 1, a5, a6, a7, a8, a9, a10);
}

uint64_t rxm_ep_atomic_writev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v20[0] = a6;
  v10 = 0;
  if (a4)
  {
    v11 = (a2 + 8);
    v12 = a4;
    do
    {
      v13 = *v11;
      v11 += 2;
      v10 += v13;
      --v12;
    }

    while (v12);
  }

  v20[1] = v10;
  v20[2] = a7;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v20;
  v15[5] = 1;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = 0;
  return rxm_ep_generic_atomic_writemsg(a1, v15, *(a1 + 144));
}

uint64_t rxm_ep_atomic_inject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v15[0] = a2;
  v15[1] = a3;
  v14[0] = a5;
  v14[1] = a3;
  v14[2] = a6;
  v9[0] = v15;
  v9[1] = 0;
  v9[2] = 1;
  v9[3] = a4;
  v9[4] = v14;
  v9[5] = 1;
  v10 = a7;
  v11 = a8;
  v12 = 0;
  v13 = 0;
  return rxm_ep_generic_atomic_writemsg(a1, v9, 0x2000000);
}

uint64_t rxm_ep_atomic_readwrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v16 = a6;
  v17 = a4;
  if (a11 == 10)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v15[0] = v12;
  v15[1] = a3;
  v14[0] = a5;
  v14[1] = a3;
  if (a2 || a11 == 10)
  {
    return rxm_ep_atomic_readwritev(a1, v15, &v17, 1, v14, &v16, 1, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    return -22;
  }
}

uint64_t rxm_ep_atomic_readwritev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v23[0] = a9;
  v13 = 0;
  if (a4)
  {
    v14 = (a2 + 8);
    v15 = a4;
    do
    {
      v16 = *v14;
      v14 += 2;
      v13 += v16;
      --v15;
    }

    while (v15);
  }

  v23[1] = v13;
  v23[2] = a10;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a8;
  v18[4] = v23;
  v18[5] = 1;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = 0;
  return rxm_ep_generic_atomic_readwritemsg(a1, v18, a5, a6, a7, *(a1 + 144));
}

uint64_t rxm_ep_atomic_compwrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  v19 = a6;
  v20 = a4;
  v17[1] = a3;
  v18 = a8;
  v16[1] = a3;
  v17[0] = a2;
  v16[0] = a7;
  v15[0] = a5;
  v15[1] = a3;
  return rxm_ep_atomic_compwritev(a1, v17, &v20, 1, v15, &v19, 1uLL, v16, &v18, 1, a9, a10, a11, a12, a13, a14);
}

uint64_t rxm_ep_atomic_compwritev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16)
{
  v26[0] = a12;
  v16 = 0;
  if (a4)
  {
    v17 = (a2 + 8);
    v18 = a4;
    do
    {
      v19 = *v17;
      v17 += 2;
      v16 += v19;
      --v18;
    }

    while (v18);
  }

  v26[1] = v16;
  v26[2] = a13;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a11;
  v21[4] = v26;
  v21[5] = 1;
  v22 = a14;
  v23 = a15;
  v24 = a16;
  v25 = 0;
  return rxm_ep_generic_atomic_compwritemsg(a1, v21, a5, a6, a7, a8, a9, a10, *(a1 + 144));
}

uint64_t rxm_ep_atomic_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = rxm_ep_query_atomic(*(a1 + 80), a2, a3, v6, 0);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t rxm_ep_atomic_fetch_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = rxm_ep_query_atomic(*(a1 + 80), a2, a3, v6, 0x400000000000000uLL);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t rxm_ep_atomic_cswap_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = rxm_ep_query_atomic(*(a1 + 80), a2, a3, v6, 0x800000000000000uLL);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t rxm_ep_generic_atomic_writemsg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v8);
  if (!conn)
  {
    conn = rxm_ep_atomic_common(a1, v8, a2, 0, 0, 0, 0, 0, 0, 6, a3);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_ep_atomic_common(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11)
{
  v74[7] = *MEMORY[0x29EDCA608];
  v69 = 0;
  v70 = 0;
  v19 = ofi_datatype_size(*(a3 + 48));
  v20 = *(a3 + 16);
  if (v20 > 4 || *(a3 + 40) >= 5uLL)
  {
    rxm_ep_atomic_common_cold_6();
  }

  if ((a11 & 0x20000) != 0)
  {
    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v24 = *__error();
      fi_log(&rxm_prov, 0, 4, "rxm_ep_atomic_common", 117, "atomic with remote CQ data not supported\n");
LABEL_43:
      *__error() = v24;
    }

LABEL_44:
    v44 = -22;
    goto LABEL_45;
  }

  v21 = v19;
  v68 = a6;
  if (*(a3 + 52) == 10)
  {
    hmem_iface = 0;
    v23 = 0;
    goto LABEL_22;
  }

  if (!*a3)
  {
    rxm_ep_atomic_common_cold_1();
  }

  if (v20)
  {
    v25 = v74;
    v26 = (*a3 + 8);
    v27 = *(a3 + 16);
    do
    {
      v28 = *v26 * v19;
      *(v25 - 1) = *(v26 - 1);
      *v25 = v28;
      v25 += 2;
      v26 += 2;
      --v27;
    }

    while (v27);
    v23 = 0;
    v29 = 1;
    do
    {
      v23 += v74[v29 - 1];
      v29 += 2;
      --v20;
    }

    while (v20);
    v30 = *(a3 + 8);
    if (v30)
    {
      v31 = *v30;
      if (v31)
      {
        v70 = *(v31 + 64);
        hmem_iface = *(v31 + 56);
        goto LABEL_22;
      }
    }

    if (rxm_detect_hmem_iface)
    {
      hmem_iface = ofi_get_hmem_iface(v73, &v70, 0);
      goto LABEL_22;
    }

    hmem_iface = 0;
  }

  else
  {
    hmem_iface = 0;
    v23 = 0;
  }

  v70 = 0;
LABEL_22:
  v67 = a1;
  if (a10 != 8)
  {
    v40 = 0;
    v41 = 0;
    goto LABEL_40;
  }

  if (!a4)
  {
    rxm_ep_atomic_common_cold_5();
  }

  v32 = v68;
  if (!v68)
  {
    if (!v23)
    {
      v40 = 0;
      v41 = 0;
      v69 = 0;
      goto LABEL_40;
    }

LABEL_72:
    rxm_ep_atomic_common_cold_2();
  }

  v33 = v72;
  v34 = (a4 + 8);
  do
  {
    v35 = *v34 * v21;
    *(v33 - 1) = *(v34 - 1);
    *v33 = v35;
    v33 += 2;
    v34 += 2;
    --v32;
  }

  while (v32);
  v36 = 0;
  v37 = 1;
  v38 = v68;
  do
  {
    v36 += v71[v37];
    v37 += 2;
    --v38;
  }

  while (v38);
  if (v23 != v36)
  {
    goto LABEL_72;
  }

  if (a5 && (v39 = *a5) != 0)
  {
    v69 = *(v39 + 64);
    v40 = *(v39 + 56);
  }

  else if (rxm_detect_hmem_iface)
  {
    v42 = hmem_iface;
    v40 = ofi_get_hmem_iface(v71[0], &v69, 0);
    hmem_iface = v42;
  }

  else
  {
    v40 = 0;
    v69 = 0;
  }

  v41 = v23;
LABEL_40:
  v43 = v41 + v23 + 160;
  if (v43 > rxm_packet_size)
  {
    if (fi_log_enabled(&rxm_prov, 0, 4))
    {
      v24 = *__error();
      fi_log(&rxm_prov, 0, 4, "rxm_ep_atomic_common", 151, "atomic data too large %zu\n");
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v65 = v40;
  v66 = hmem_iface;
  tx_buf = rxm_get_tx_buf(v67);
  if (tx_buf)
  {
    v48 = tx_buf;
    v49 = *(a3 + 48);
    v50 = *(a3 + 52);
    v51 = *(a3 + 64);
    v52 = *(a3 + 32);
    v53 = *(a3 + 40);
    tx_buf[52] = *(a2 + 32);
    tx_buf[57] = v51;
    tx_buf[58] = 0;
    *(tx_buf + 111) = 0;
    tx_buf[56] = v41 + v23 + 96;
    *(tx_buf + 409) = 4;
    *(tx_buf + 442) = a10;
    *(tx_buf + 464) = v49;
    *(tx_buf + 465) = v50;
    *(tx_buf + 466) = v53;
    if (v53)
    {
      memcpy(tx_buf + 59, v52, 24 * v53);
    }

    *(v48 + 424) = *(v48 - 24);
    *(v48 + 56) = *(a3 + 56);
    *(v48 + 64) = a11;
    if (ofi_copy_from_hmem_iov(v48 + 568, v23, v66, v70, &v73, *(a3 + 16), 0) != v23)
    {
      rxm_ep_atomic_common_cold_3();
    }

    if (v41 && ofi_copy_from_hmem_iov(v48 + 568 + v23, v41, v65, v69, v71, v68, 0) != v41)
    {
      rxm_ep_atomic_common_cold_4();
    }

    v54 = a9;
    *(v48 + 168) = a9;
    if (a7)
    {
      if (a9)
      {
        v55 = (v48 + 80);
        v56 = (a7 + 8);
        v57 = a9;
        do
        {
          v58 = *v56 * v21;
          *(v55 - 1) = *(v56 - 1);
          *v55 = v58;
          v55 += 2;
          v56 += 2;
          --v57;
        }

        while (v57);
        if (a8)
        {
          v59 = (v48 + 136);
          do
          {
            v60 = *a8++;
            *v59++ = v60;
            --v54;
          }

          while (v54);
        }
      }
    }

    *(v48 + 32) = 19;
    v61 = *(a2 + 16);
    if (*(v67 + 12952) >= v43)
    {
      v63 = (*(*(v61 + 40) + 56))();
    }

    else
    {
      v62 = *(v48 + 40);
      v63 = (*(*(v61 + 40) + 32))();
    }

    v44 = v63;
    if (v63 == -35)
    {
      rxm_ep_do_progress(v67);
    }

    else
    {
      if (!v63)
      {
        goto LABEL_45;
      }

      if (fi_log_enabled(&rxm_prov, 0, 4))
      {
        v64 = *__error();
        fi_log(&rxm_prov, 0, 4, "rxm_ep_send_atomic_req", 86, "unable to send atomic request: op: %hhu msg_id: 0x%llx\n", *(v48 + 442), *(v48 + 424));
        *__error() = v64;
      }
    }

    rxm_free_tx_buf(v67, v48);
  }

  else
  {
    v44 = -35;
  }

LABEL_45:
  v45 = *MEMORY[0x29EDCA608];
  return v44;
}

uint64_t rxm_ep_generic_atomic_readwritemsg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v14 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v14);
  if (!conn)
  {
    conn = rxm_ep_atomic_common(a1, v14, a2, 0, 0, 0, a3, a4, a5, 7, a6);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_ep_generic_atomic_compwritemsg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v19 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v19);
  if (!conn)
  {
    conn = rxm_ep_atomic_common(a1, v19, a2, a3, a4, a5, a6, a7, a8, 8, a9);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_copy_hmem_iov(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, unint64_t a6, int a7)
{
  if (a5 >= 1)
  {
    v11 = 0;
    v12 = (a4 + 8);
    v13 = a1;
    v14 = a5;
    while (1)
    {
      if (a1)
      {
        v15 = *v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = *v12;
      if (a6 <= *v12)
      {
        if (v16 - a6 >= a3)
        {
          v17 = a3;
        }

        else
        {
          v17 = v16 - a6;
        }

        a3 -= v17;
        if (v17)
        {
          v18 = rxm_copy_hmem(v15, a2 + v11, *(v12 - 1) + a6, v17, a7);
          if (v18)
          {
            return v18;
          }

          a6 = 0;
          v11 += v17;
        }

        else
        {
          a6 = 0;
        }
      }

      else
      {
        a6 -= *v12;
      }

      ++v13;
      v12 += 2;
      if (!--v14)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t rxm_copy_hmem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v6 = *(a1 + 56);
  if ((*(a1 + 87) & 0x10) == 0)
  {
    a1 = *(a1 + 64);
LABEL_5:
    v7 = &hmem_ops[200 * v6];
    if (a5)
    {
      LODWORD(result) = (*(v7 + 8))(a1, a3, a2, a4);
    }

    else
    {
      LODWORD(result) = (*(v7 + 9))(a1, a2, a3, a4);
    }

    return result;
  }

  v9 = *(a1 + 72);
  if (!v9)
  {
    rxm_copy_hmem_cold_1();
  }

  v10 = *(a1 + 56);
  if (a5)
  {
    ofi_hmem_dev_reg_copy_to_hmem(v10, v9, a3, a2, a4);
  }

  else
  {
    ofi_hmem_dev_reg_copy_from_hmem(v10, v9, a2, a3, a4);
  }

  return 0;
}

uint64_t rxm_trecv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = a4;
  v9[0] = a2;
  v9[1] = a3;
  return util_srx_generic_trecv(*(a1 + 12872), v9, &v10, 1uLL, a5, a8, a6, a7, *(a1 + 128));
}

unint64_t rxm_tsend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  v15 = a4;
  v13[0] = a2;
  v13[1] = a3;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v14);
  if (!conn)
  {
    conn = rxm_send_common(a1, v14, v13, &v15, 1uLL, a7, 0, *(a1 + 144), a6, 1);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_tsendv(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v16);
  if (!conn)
  {
    conn = rxm_send_common(a1, v16, a2, a3, a4, a7, 0, *(a1 + 144), a6, 1);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_tsendmsg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v8);
  if (!conn)
  {
    conn = rxm_send_common(a1, v8, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 48), *(a2 + 56), *(a1 + 160) | a3, *(a2 + 32), 1);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tinject(uint64_t a1, void *a2, size_t a3, unint64_t a4, uint64_t a5)
{
  *v13 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, v13);
  if (!conn)
  {
    v11 = *(a1 + 13024);
    *(v11 + 34) = 1;
    *(v11 + 36) = 0;
    *(v11 + 56) = a5;
    *(*(a1 + 13024) + 48) = 0;
    conn = rxm_inject_send(a1, *v13, a2, a3);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

unint64_t rxm_tsenddata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  v17 = a4;
  v15[0] = a2;
  v15[1] = a3;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a6, &v16);
  if (!conn)
  {
    conn = rxm_send_common(a1, v16, v15, &v17, 1uLL, a8, a5, *(a1 + 144) | 0x20000, a7, 1);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tinjectdata(uint64_t a1, void *a2, size_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  *v15 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, v15);
  if (!conn)
  {
    v13 = *(a1 + 13024);
    *(v13 + 34) = 1;
    *(v13 + 36) = 0x20000;
    *(v13 + 56) = a6;
    *(*(a1 + 13024) + 48) = a4;
    conn = rxm_inject_send(a1, *v15, a2, a3);
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_trecv_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_trecv_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 56) + 8))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_trecvv_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_trecvv_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 56) + 16))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_trecvmsg_thru(uint64_t a1)
{
  if (!*(a1 + 12824))
  {
    rxm_trecvmsg_thru_cold_1();
  }

  (*(a1 + 384))(a1 + 312);
  v2 = (*(*(*(a1 + 12824) + 56) + 24))();
  (*(a1 + 392))(a1 + 312);
  return v2;
}

uint64_t rxm_tsend_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 56) + 32))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tsendv_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 56) + 40))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tsendmsg_thru(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, *(a2 + 24), &v6);
  if (!conn)
  {
    conn = (*(*(*(v6 + 16) + 56) + 48))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tinject_thru(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a4, &v8);
  if (!conn)
  {
    conn = (*(*(*(v8 + 16) + 56) + 56))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tsenddata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a6, &v10);
  if (!conn)
  {
    conn = (*(*(*(v10 + 16) + 56) + 64))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t rxm_tinjectdata_thru(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = 0;
  (*(a1 + 384))(a1 + 312);
  conn = rxm_get_conn(a1, a5, &v9);
  if (!conn)
  {
    conn = (*(*(*(v9 + 16) + 56) + 72))();
  }

  (*(a1 + 392))(a1 + 312);
  return conn;
}

uint64_t fi_fd_nonblock(int a1)
{
  v2 = fcntl(a1, 3);
  if (v2 < 0)
  {
    return -*__error();
  }

  result = fcntl(a1, 4, v2 | 4u);
  if (result)
  {
    return -*__error();
  }

  return result;
}

uint64_t fi_fd_block(int a1)
{
  v2 = fcntl(a1, 3);
  if (v2 < 0)
  {
    return -*__error();
  }

  result = fcntl(a1, 4, v2 & 0x7FFFFFFB);
  if (result)
  {
    return -*__error();
  }

  return result;
}

uint64_t ofi_wait_cond(pthread_cond_t *a1, pthread_mutex_t *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {

    return pthread_cond_wait(a1, a2);
  }

  else
  {
    v5 = ofi_get_realtime_ms() + a3;
    v7.tv_sec = v5 / 0x3E8;
    v7.tv_nsec = 1000000 * (v5 % 0x3E8);
    return pthread_cond_timedwait(a1, a2, &v7);
  }
}

uint64_t ofi_mmap_anon_pages(void *a1, size_t a2, int a3)
{
  v4 = mmap(0, a2, 3, a3 | 0x1002u, -1, 0);
  *a1 = v4;
  if (v4 == -1)
  {
    return -*__error();
  }

  else
  {
    return 0;
  }
}

uint64_t ofi_unmap_anon_pages(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result)
  {
    return -*__error();
  }

  return result;
}

uint64_t ofi_shm_map(uint64_t a1, char *__s, unint64_t a3, int a4, void *a5)
{
  if (a4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 514;
  }

  *a5 = -1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = (strlen(__s) + 2);
  v11 = malloc_type_calloc(1uLL, v10, 0x58360EAAuLL);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  memset(&v23, 0, sizeof(v23));
  snprintf(v11, v10, "/%s", __s);
  *(a1 + 16) = v12;
  if (*v12)
  {
    v13 = 0;
    do
    {
      if (v12[v13] == 32)
      {
        v12[v13] = 95;
      }

      ++v13;
    }

    while (strlen(v12) > v13);
  }

  v14 = shm_open(v12, v9, 384);
  *a1 = v14;
  if (v14 < 0)
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v15 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_shm_map", 173, "shm_open failed\n");
      goto LABEL_17;
    }
  }

  else if (fstat(v14, &v23))
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v15 = *__error();
      v16 = __error();
      strerror(*v16);
      fi_log(&core_prov, 0, 0, "ofi_shm_map", 180, "failed to do fstat: %s\n");
LABEL_17:
      *__error() = v15;
    }
  }

  else
  {
    if (v23.st_size)
    {
      if (v23.st_size < a3)
      {
        if (!fi_log_enabled(&core_prov, 0, 0))
        {
          goto LABEL_18;
        }

        v15 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_shm_map", 193, "shm file too small\n", v22);
        goto LABEL_17;
      }
    }

    else if (ftruncate(*a1, a3))
    {
      if (!fi_log_enabled(&core_prov, 0, 0))
      {
        goto LABEL_18;
      }

      v15 = *__error();
      v18 = __error();
      strerror(*v18);
      fi_log(&core_prov, 0, 0, "ofi_shm_map", 188, "ftruncate failed: %s\n");
      goto LABEL_17;
    }

    v19 = mmap(0, a3, 3, 1, *a1, 0);
    *(a1 + 8) = v19;
    if (v19 != -1)
    {
      v20 = v19;
      result = 0;
      *a5 = v20;
      *(a1 + 24) = a3;
      return result;
    }

    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v15 = *__error();
      v21 = __error();
      strerror(*v21);
      fi_log(&core_prov, 0, 0, "ofi_shm_map", 202, "mmap failed: %s\n");
      goto LABEL_17;
    }
  }

LABEL_18:
  if ((*a1 & 0x80000000) == 0)
  {
    close(*a1);
    shm_unlink(v12);
  }

  free(v12);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 4294967274;
}

uint64_t ofi_shm_unmap(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 + 1 >= 2 && munmap(v2, *(a1 + 24)) && fi_log_enabled(&core_prov, 0, 0))
  {
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    fi_log(&core_prov, 0, 0, "ofi_shm_unmap", 227, "munmap failed: %s\n", v7);
    *__error() = v5;
  }

  if (*a1)
  {
    close(*a1);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    shm_unlink(v3);
    free(*(a1 + 16));
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 0;
}

uint64_t fi_read_file(const char *a1, const char *a2, void *a3, size_t a4)
{
  v10 = 0;
  if (asprintf(&v10, "%s/%s", a1, a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = open(v10, 0);
  if (v6 < 0)
  {
    free(v10);
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = read(v6, a3, a4);
  close(v7);
  free(v10);
  if (v8 >= 1 && *(a3 + (v8 - 1)) == 10)
  {
    *(a3 + (v8 - 1)) = 0;
    return (v8 - 1);
  }

  return v8;
}

uint64_t ofi_pollfds_get_ctx(uint64_t a1, unsigned int a2)
{
  if (!(*(a1 + 192))(a1 + 128))
  {
    ofi_pollfds_get_ctx_cold_1();
  }

  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if (*a1 <= a2)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + 16 * a2 + 8);
  if ((v4 & 0x80000000) != 0 || v4 >= *(a1 + 4))
  {
    return 0;
  }

  if (*(*(a1 + 8) + 8 * v4) == a2)
  {
    return *(a1 + 16) + 16 * a2;
  }

  return 0;
}

uint64_t ofi_pollfds_alloc_ctx(uint64_t a1, signed int a2)
{
  if (!(*(a1 + 192))(a1 + 128))
  {
    ofi_pollfds_alloc_ctx_cold_3();
  }

  if (ofi_pollfds_get_ctx(a1, a2))
  {
    ofi_pollfds_alloc_ctx_cold_1();
  }

  if (*a1 <= a2 && ofi_pollfds_grow(a1, a2))
  {
    return 0;
  }

  result = *(a1 + 16) + 16 * a2;
  if ((*(result + 8) & 0x80000000) == 0)
  {
    ofi_pollfds_alloc_ctx_cold_2();
  }

  v5 = *(a1 + 4);
  *(a1 + 4) = v5 + 1;
  *(result + 8) = v5;
  return result;
}

uint64_t sock_poll_open(uint64_t a1, void *a2, void *a3)
{
  if (a2 && *a2)
  {
    return 4294967274;
  }

  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00408B49657AuLL);
  if (!v6)
  {
    return 4294967284;
  }

  v7 = v6;
  result = 0;
  v7[5] = v7 + 5;
  v7[6] = v7 + 5;
  v7[2] = &sock_poll_fi_ops;
  v7[3] = &sock_poll_ops;
  *v7 = 17;
  v7[1] = 0;
  v7[4] = a1 - 120;
  atomic_fetch_add((a1 + 112), 1u);
  *a3 = v7;
  return result;
}

uint64_t sock_poll_close(char *a1)
{
  v3 = a1 + 40;
  for (i = *(a1 + 5); i != v3; i = *(a1 + 5))
  {
    sock_poll_del(a1, *(i + 16));
  }

  atomic_fetch_add((*(a1 + 4) + 232), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t sock_poll_del(uint64_t a1, void *a2)
{
  v2 = (a1 + 40);
  while (1)
  {
    v2 = *v2;
    if (v2 == (a1 + 40))
    {
      return 0;
    }

    v3 = v2[2];
    if (v3 == a2)
    {
      v4 = *v2;
      v5 = v2[1];
      *v5 = *v2;
      v4[1] = v5;
      if (*v3 == 15)
      {
        v6 = v3 + 11;
LABEL_8:
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }

      else
      {
        if (*v3 == 14)
        {
          v6 = (v3 + 6);
          goto LABEL_8;
        }

        if (fi_log_enabled(&sock_prov, 0, 0))
        {
          v7 = *__error();
          fi_log(&sock_prov, 0, 0, "sock_poll_del", 102, "Invalid fid class\n");
          *__error() = v7;
        }
      }

      free(v2);
      return 0;
    }
  }
}

uint64_t sock_poll_poll(uint64_t a1, void *a2, int a3)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  if (v4 != (a1 + 40) && a3 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = v4[2];
      v10 = *v9;
      if (*v9 == 13)
      {
        v11 = (v9 + 35);
        pthread_mutex_lock((v9 + 35));
        if (v9[9] == v9 + 9 && v9[21] == v9 + 21)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (v10 == 15)
      {
        break;
      }

      if (v10 == 14)
      {
        sock_cq_progress(v4[2]);
        v11 = (v9 + 34);
        pthread_mutex_lock((v9 + 34));
        if (v9[21] == v9[20] && v9[29] == v9[28])
        {
          goto LABEL_18;
        }

LABEL_17:
        *a2++ = v9[1];
        v8 = (v8 + 1);
LABEL_18:
        pthread_mutex_unlock(v11);
      }

      v4 = *v4;
      if (v4 == v3 || v8 >= a3)
      {
        return v8;
      }
    }

    sock_cntr_progress(v4[2]);
    v11 = (v9 + 13);
    pthread_mutex_lock((v9 + 13));
    v12 = atomic_load(v9 + 10);
    v13 = atomic_load(v9 + 13);
    if (v12 != v13)
    {
      v14 = atomic_load(v9 + 10);
      atomic_store(v14, v9 + 13);
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  return 0;
}

uint64_t sock_poll_add(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  if (!v4)
  {
    return 4294967284;
  }

  v4[2] = a2;
  *v4 = v4;
  v6 = *(a1 + 40);
  v5 = (a1 + 40);
  *v4 = v6;
  v4[1] = v5;
  *(v6 + 8) = v4;
  *v5 = v4;
  if (*a2 == 15)
  {
    result = 0;
    v8 = a2 + 11;
    goto LABEL_7;
  }

  if (*a2 == 14)
  {
    result = 0;
    v8 = (a2 + 6);
LABEL_7:
    atomic_fetch_add(v8, 1u);
    return result;
  }

  if (fi_log_enabled(&sock_prov, 0, 0))
  {
    v9 = *__error();
    fi_log(&sock_prov, 0, 0, "sock_poll_add", 71, "Invalid fid class\n");
    *__error() = v9;
  }

  return 4294967274;
}

uint64_t fi_no_domain2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 4294967218;
  }

  else
  {
    return (*(*(a1 + 24) + 8))();
  }
}

uint64_t fi_no_endpoint2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 4294967218;
  }

  else
  {
    return (*(*(a1 + 24) + 24))();
  }
}

uint64_t fi_coll_no_barrier2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return -78;
  }

  else
  {
    return (*(*(a1 + 72) + 8))();
  }
}

uint64_t ofi_idx_insert(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 0x2000);
  if (result)
  {
    if (result < 1)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 8196);
LABEL_4:
    if (result < v5 << 10)
    {
      v6 = *(a1 + 8 * (result >> 10)) + 16 * (result & 0x3FF);
      *(a1 + 0x2000) = *(v6 + 8);
      *v6 = a2;
      return result;
    }

LABEL_23:
    ofi_idx_insert_cold_1();
  }

  if (*(a1 + 8196) <= 1023 && (v7 = malloc_type_calloc(0x400uLL, 0x10uLL, 0x10800409227ACB4uLL), v8 = *(a1 + 8196), (*(a1 + 8 * v8) = v7) != 0))
  {
    v9 = v7;
    v10 = 0;
    result = (v8 << 10);
    v9[4094] = *(a1 + 0x2000);
    v11 = v9 + 4090;
    v12 = 1024;
    v13 = vdupq_n_s64(0x3FFuLL);
    do
    {
      v14 = vdupq_n_s64(v10);
      v15 = vorrq_s8(v14, xmmword_29ED12A50);
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v13, v15)), 2).u8[0])
      {
        *v11 = result + v12 - 1;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FFuLL), v15)), 2).i8[2])
      {
        *(v11 - 4) = result + v12 - 2;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FFuLL), vorrq_s8(v14, xmmword_29ED12A40)))).i32[1])
      {
        *(v11 - 8) = result + v12 - 3;
        *(v11 - 12) = result + v12 - 4;
      }

      v10 += 4;
      v11 -= 16;
      v12 -= 4;
    }

    while (v12);
    if (v8)
    {
      v16 = result;
    }

    else
    {
      v16 = 1;
    }

    *(a1 + 0x2000) = v16;
    v5 = v8 + 1;
    *(a1 + 8196) = v8 + 1;
    if (v16 >= 1)
    {
      result = v16;
      goto LABEL_4;
    }
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ofi_idx_remove(uint64_t a1, int a2)
{
  if (a2 < 1 || a2 >= *(a1 + 8196) << 10)
  {
    ofi_idx_insert_cold_1();
  }

  v2 = *(a1 + 8 * (a2 >> 10)) + 16 * (a2 & 0x3FF);
  v3 = *v2;
  *v2 = 0;
  *(v2 + 8) = *(a1 + 0x2000);
  *(a1 + 0x2000) = a2;
  return v3;
}

uint64_t ofi_idx_remove_ordered(uint64_t a1, int a2)
{
  if (a2 < 1 || a2 >= *(a1 + 8196) << 10)
  {
    ofi_idx_insert_cold_1();
  }

  v3 = *(a1 + 8 * (a2 >> 10));
  v4 = (v3 + 16 * (a2 & 0x3FF));
  result = *v4;
  *v4 = 0;
  v6 = (a1 + 0x2000);
  v7 = *(a1 + 0x2000);
  if (v7 && v7 <= a2)
  {
    do
    {
      v8 = v3 + 16 * (v7 & 0x3FF);
      v9 = *(v8 + 8);
      v6 = (v8 + 8);
      v7 = v9;
    }

    while (v9 < a2);
  }

  *(v4 + 2) = v7;
  *v6 = a2;
  return result;
}

uint64_t ofi_idx_replace(uint64_t result, int a2, uint64_t a3)
{
  if (a2 < 1 || a2 >= *(result + 8196) << 10)
  {
    ofi_idx_insert_cold_1();
  }

  *(*(result + 8 * (a2 >> 10)) + 16 * (a2 & 0x3FF)) = a3;
  return result;
}

void ofi_idx_reset(uint64_t a1)
{
  for (LODWORD(v2) = *(a1 + 8196); v2; *(a1 + 8196) = v2)
  {
    free(*(a1 + 8 * v2 - 8));
    v2 = *(a1 + 8196) - 1;
    *(a1 + 8 * v2) = 0;
  }

  *(a1 + 0x2000) = 0;
}

uint64_t ofi_byte_idx_grow(uint64_t a1)
{
  if (*a1)
  {
    return 0;
  }

  result = malloc_type_calloc(0x100uLL, 0x10uLL, 0x10800409227ACB4uLL);
  *a1 = result;
  if (result)
  {
    v3 = 0;
    v4 = (result + 40);
    v5 = vdupq_n_s64(0xFDuLL);
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vorrq_s8(v6, xmmword_29ED12A50);
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v7)), 2).u8[0])
      {
        *(v4 - 4) = v3 + 2;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFDuLL), v7)), 2).i8[2])
      {
        *v4 = v3 + 3;
      }

      if (vuzp1_s16(2, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFDuLL), vorrq_s8(v6, xmmword_29ED12A40)))).i32[1])
      {
        v4[4] = v3 + 4;
        v4[8] = v3 + 5;
      }

      v3 += 4;
      v4 += 16;
    }

    while (v3 != 256);
    result = 1;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t ofi_idm_set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0x100000)
  {
    goto LABEL_2;
  }

  if (!a1)
  {
    ofi_idm_set_cold_1();
  }

  v3 = a2;
  v6 = a2 >> 10;
  v7 = *(a1 + 8 * (a2 >> 10));
  if (v7)
  {
LABEL_6:
    v7[v3 & 0x3FF] = a3;
    ++*(a1 + 4 * v6 + 0x2000);
    return v3;
  }

  v7 = malloc_type_calloc(0x400uLL, 8uLL, 0x80040B8603338uLL);
  *(a1 + 8 * v6) = v7;
  if (v7)
  {
    if ((v3 & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_6;
  }

LABEL_2:
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

uint64_t ofi_idm_clear(uint64_t a1, int a2)
{
  if (!a1)
  {
    ofi_idm_set_cold_1();
  }

  v3 = *(a1 + 8 * (a2 >> 10));
  v4 = v3[a2 & 0x3FF];
  v3[a2 & 0x3FF] = 0;
  v5 = a1 + 4 * (a2 >> 10);
  v6 = *(v5 + 0x2000) - 1;
  *(v5 + 0x2000) = v6;
  if (!v6)
  {
    v7 = a2 >> 10;
    free(v3);
    *(a1 + 8 * v7) = 0;
  }

  return v4;
}

void ofi_idm_reset(uint64_t a1, void (*a2)(void))
{
  v4 = 0;
  v5 = a1 + 0x2000;
  do
  {
    v6 = *(a1 + 8 * v4);
    v7 = *(v5 + 4 * v4);
    if (v6)
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          if (v6[v8])
          {
            if (a2)
            {
              a2();
              v7 = *(v5 + 4 * v4);
            }

            *(v5 + 4 * v4) = --v7;
          }

          if (!v7)
          {
            break;
          }
        }

        while (v8++ < 0x3FF);
      }

      free(v6);
      *(a1 + 8 * v4) = 0;
    }

    else if (v7)
    {
      ofi_idm_reset_cold_1();
    }

    ++v4;
  }

  while (v4 != 1024);
}

uint64_t ofi_array_grow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 0x2000);
  if (!v3)
  {
    ofi_array_grow_cold_2();
  }

  if (*(a1 + 8 * (a2 >> 10)))
  {
    ofi_array_grow_cold_1();
  }

  v5 = a2 >> 10;
  v6 = malloc_type_calloc(0x400uLL, v3, 0x7D32ACF3uLL);
  *(a1 + 8 * v5) = v6;
  if (v6)
  {
    if (*(a1 + 8200))
    {
      for (i = 0; i != 1024; ++i)
      {
        (*(a1 + 8200))(a1, *(a1 + 8 * v5) + *(a1 + 0x2000) * i);
      }
    }
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return a2;
}

uint64_t ofi_array_iter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  while (!*(a1 + 8 * v6))
  {
LABEL_6:
    if (++v6 == 1024)
    {
      return 0;
    }
  }

  v7 = 0;
  while (1)
  {
    result = a3(a1, *(a1 + 8 * v6) + *(a1 + 0x2000) * v7, a2);
    if (result)
    {
      return result;
    }

    if (++v7 == 1024)
    {
      goto LABEL_6;
    }
  }
}

void ofi_array_destroy(uint64_t a1)
{
  for (i = 0; i != 0x2000; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      free(v3);
      *(a1 + i) = 0;
    }
  }
}

uint64_t fi_getparams(void ***a1, int *a2)
{
  fi_ini();
  v4 = 0;
  v5 = &param_list;
  do
  {
    v5 = *v5;
    --v4;
  }

  while (v5 != &param_list);
  if (v4 == -1)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v6 = malloc_type_calloc(-v4, 0x20uLL, 0x10500404DAAC892uLL);
  if (v6)
  {
    v7 = v6;
    v8 = param_list;
    if (param_list != &param_list)
    {
      v9 = (v6 + 16);
      while (1)
      {
        v10 = *(v8 - 1);
        v11 = strdup(v10);
        *(v9 - 2) = v11;
        *(v9 - 2) = *(v8 - 6);
        v12 = strdup(*(v8 - 2));
        *v9 = v12;
        v13 = getenv(v10);
        if (v13)
        {
          v9[1] = strdup(v13);
        }

        if (!v11 || v12 == 0)
        {
          break;
        }

        v8 = *v8;
        v9 += 4;
        if (v8 == &param_list)
        {
          goto LABEL_16;
        }
      }

      fi_freeparams(v7);
      return 4294967284;
    }

LABEL_16:
    result = 0;
    *a2 = ~v4;
    *a1 = v7;
    return result;
  }

  return 4294967284;
}

void fi_freeparams(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1 + 4;
    do
    {
      free(v2);
      free(*(v3 - 2));
      free(*(v3 - 1));
      v4 = *v3;
      v3 += 4;
      v2 = v4;
    }

    while (v4);
  }

  free(a1);
}

void fi_param_undefine(uint64_t a1)
{
  v1 = param_list;
  if (param_list != &param_list)
  {
    do
    {
      v3 = *v1;
      v4 = (v1 - 5);
      if (*(v1 - 5) == a1)
      {
        v5 = v1[1];
        *v5 = v3;
        v3[1] = v5;
        fi_free_param(v4);
      }

      v1 = v3;
    }

    while (v3 != &param_list);
  }
}

void fi_free_param(void **a1)
{
  free(a1[1]);
  free(a1[3]);
  free(a1[4]);

  free(a1);
}

uint64_t fi_param_define(void *a1, const char *a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = &core_prov;
  }

  result = 4294967274;
  if (!a2 || !a4 || !*a4)
  {
    return result;
  }

  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x1070040BA0060A5uLL);
  if (!v14)
  {
    return 4294967284;
  }

  v15 = v14;
  v28 = 0;
  *v14 = v9;
  v14[1] = strdup(a2);
  *(v15 + 4) = a3;
  if (vasprintf(v15 + 3, a4, &a9) < 0)
  {
    v15[3] = 0;
  }

  if (v9 == &core_prov)
  {
    v19 = v15 + 4;
    v20 = asprintf(v15 + 4, "FI_%s");
  }

  else
  {
    v16 = *(v9 + 5);
    v17 = asprintf(&v28, "%s: %s", v16, v15[3]);
    free(v15[3]);
    if (v17 < 0)
    {
      v18 = 0;
      v28 = 0;
    }

    else
    {
      v18 = v28;
    }

    v15[3] = v18;
    v19 = v15 + 4;
    v21 = *(v9 + 5);
    v20 = asprintf(v15 + 4, "FI_%s_%s");
  }

  if (v20 < 0)
  {
    *v19 = 0;
  }

  if (!v15[1] || !v15[3] || (v22 = v15[4]) == 0)
  {
    fi_free_param(v15);
    return 4294967284;
  }

  v23 = *v22;
  if (*v22)
  {
    v24 = 1;
    do
    {
      *v22 = __toupper(v23);
      v22 = (v15[4] + v24);
      v23 = *v22;
      ++v24;
    }

    while (*v22);
  }

  result = 0;
  v25 = off_2A1892FC8[0];
  v26 = *off_2A1892FC8[0];
  v15[5] = *off_2A1892FC8[0];
  v15[6] = v25;
  v27 = v15 + 5;
  *(v26 + 8) = v27;
  *v25 = v27;
  return result;
}

void ofi_dump_sysconfig()
{
  v0 = conf_list;
  if (conf_list != &conf_list)
  {
    do
    {
      if (fi_log_enabled(&core_prov, 2, 0))
      {
        v1 = *__error();
        fi_log(&core_prov, 2, 0, "ofi_dump_sysconfig", 338, "Read config variable: %s=%s\n", *(v0 - 2), *(v0 - 1));
        *__error() = v1;
      }

      v0 = *v0;
    }

    while (v0 != &conf_list);
  }
}

uint64_t fi_param_get(void *a1, char *__s2, int *a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = &core_prov;
  }

  v4 = 4294967274;
  if (__s2 && a3)
  {
    v6 = param_list;
    if (param_list == &param_list)
    {
      return 4294967294;
    }

    else
    {
      while (*(v6 - 5) != v3 || strcmp(*(v6 - 4), __s2))
      {
        v6 = *v6;
        if (v6 == &param_list)
        {
          return 4294967294;
        }
      }

      v9 = *(v6 - 1);
      v10 = &conf_list;
      while (1)
      {
        v10 = *v10;
        if (v10 == &conf_list)
        {
          break;
        }

        if (!strcmp(*(v10 - 2), v9))
        {
          v11 = v10 - 2;
          goto LABEL_17;
        }
      }

      v11 = 0;
LABEL_17:
      v12 = getenv(v9);
      if (v12)
      {
        v13 = ofi_prefer_sysconfig == 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = !v13;
      if (v11 && v14)
      {
        v12 = v11[1];
      }

      if (v12)
      {
        v4 = 0;
        v15 = *(v6 - 6);
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v20 = *v12;
            if (v20 != 48 || (v21 = v12[1], v12[1]))
            {
              if (!strcasecmp(v12, "false") || !strcasecmp(v12, "no") || !strcasecmp(v12, "off"))
              {
                v21 = 0;
              }

              else
              {
                if ((v20 != 49 || v12[1]) && strcasecmp(v12, "true") && strcasecmp(v12, "yes") && strcasecmp(v12, "on"))
                {
                  if (!fi_log_enabled(v3, 0, 0))
                  {
                    return 4294967274;
                  }

                  v16 = *__error();
                  fi_log(v3, 0, 0, "fi_param_get", 394, "failed to parse BOOL var %s=%s\n", __s2, v12);
                  v4 = 4294967274;
                  goto LABEL_58;
                }

                v21 = 1;
              }
            }

            *a3 = v21;
            if (fi_log_enabled(v3, 2, 0))
            {
              v16 = *__error();
              v22 = *a3;
              fi_log(v3, 2, 0, "fi_param_get", 400, "read BOOL var %s=%d\n");
              goto LABEL_57;
            }

            return 0;
          }

          if (v15 == 3)
          {
            *a3 = strtol(v12, 0, 0);
            if (fi_log_enabled(v3, 2, 0))
            {
              v16 = *__error();
              v18 = *a3;
              fi_log(v3, 2, 0, "fi_param_get", 405, "read long var %s=%zu\n");
              goto LABEL_57;
            }

            return 0;
          }
        }

        else
        {
          if (!v15)
          {
            *a3 = v12;
            if (fi_log_enabled(v3, 2, 0))
            {
              v16 = *__error();
              v19 = *a3;
              fi_log(v3, 2, 0, "fi_param_get", 382, "read string var %s=%s\n");
              goto LABEL_57;
            }

            return 0;
          }

          if (v15 == 1)
          {
            *a3 = strtol(v12, 0, 0);
            if (fi_log_enabled(v3, 2, 0))
            {
              v16 = *__error();
              v17 = *a3;
              fi_log(v3, 2, 0, "fi_param_get", 387, "read int var %s=%d\n");
LABEL_57:
              v4 = 0;
              goto LABEL_58;
            }

            return 0;
          }
        }
      }

      else
      {
        if (fi_log_enabled(v3, 2, 0))
        {
          v16 = *__error();
          fi_log(v3, 2, 0, "fi_param_get", 373, "variable %s=<not set>\n", __s2);
          v4 = 4294967200;
LABEL_58:
          *__error() = v16;
          return v4;
        }

        return 4294967200;
      }
    }
  }

  return v4;
}

uint64_t fi_param_init()
{
  v20 = *MEMORY[0x29EDCA608];
  param_list = &param_list;
  off_2A1892FC8[0] = &param_list;
  conf_list = &conf_list;
  off_2A1892FD8 = &conf_list;
  v0 = fopen("libfabric.conf", "r");
  if (!v0)
  {
    goto LABEL_14;
  }

  v5 = v0;
  if (!fgets(__s, 2048, v0))
  {
    goto LABEL_13;
  }

  while (1)
  {
    v6 = strchr(__s, 61);
    if (v6)
    {
      break;
    }

LABEL_10:
    if (!fgets(__s, 2048, v5))
    {
      goto LABEL_13;
    }
  }

  v7 = v6;
  v8 = strlen(__s);
  *v7 = 0;
  if (__s[v8 - 1] == 10)
  {
    __s[v8 - 1] = 0;
  }

  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x30040E147AD8DuLL);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = strdup(__s);
  *v10 = v11;
  if (v11)
  {
    v12 = strdup(v7 + 1);
    v10[1] = v12;
    if (v12)
    {
      v13 = off_2A1892FD8;
      v14 = *off_2A1892FD8;
      v10[2] = *off_2A1892FD8;
      v10[3] = v13;
      v15 = (v10 + 2);
      *(v14 + 8) = v15;
      *v13 = v15;
      goto LABEL_10;
    }
  }

  free_conf(v10);
LABEL_13:
  fclose(v5);
LABEL_14:
  fi_param_define(0, "prefer_sysconfig", 2, "Prefer system configured variables when loading the environment and variables are defined in both the system config (libfabric.conf) and in runtime environment. (default: false)", v1, v2, v3, v4, v18);
  result = fi_param_get(0, "prefer_sysconfig", &ofi_prefer_sysconfig);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void fi_param_fini()
{
  while (param_list != &param_list)
  {
    v0 = (param_list - 40);
    v2 = *param_list;
    v1 = *(param_list + 1);
    *v1 = *param_list;
    *(v2 + 8) = v1;
    fi_free_param(v0);
  }

  while (conf_list != &conf_list)
  {
    v3 = (conf_list - 16);
    v5 = *conf_list;
    v4 = *(conf_list + 1);
    *v4 = *conf_list;
    *(v5 + 8) = v4;
    free_conf(v3);
  }
}

void free_conf(void **a1)
{
  free(*a1);
  free(a1[1]);

  free(a1);
}

void *rbtNew(uint64_t a1)
{
  result = malloc_type_malloc(0x40uLL, 0x10A0040A819D3E7uLL);
  if (result)
  {
    result[6] = 0;
    result[7] = a1;
    *result = result + 1;
    result[1] = result + 1;
    result[2] = result + 1;
    result[3] = 0;
    *(result + 8) = 0;
    result[5] = 0;
  }

  return result;
}

void rbtDelete(uint64_t **a1)
{
  deleteTree(a1, *a1);

  free(a1);
}

void deleteTree(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 8) != a2)
  {
    v5 = *a2;
    (deleteTree)();
    deleteTree(a1, a2[1]);

    free(a2);
  }
}

uint64_t rbtInsert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 1;
  v6 = *a1;
  if (*a1 == a1 + 1)
  {
    v8 = 0;
LABEL_6:
    v10 = malloc_type_malloc(0x30uLL, 0x10A0040C5FEEBA1uLL);
    result = 1;
    if (!v10)
    {
      return result;
    }

    v10[1] = v7;
    v10[2] = v8;
    *v10 = v7;
    *(v10 + 6) = 1;
    v12 = a1;
    v10[4] = a2;
    v10[5] = a3;
    if (v8)
    {
      v12 = &v8[(a1[7])(a2, v8[4]) >= 0];
    }

    *v12 = v10;
    v13 = *a1;
    if (*a1 == v10 || (v14 = v10[2], v15 = (v14 + 24), *(v14 + 24) != 1))
    {
LABEL_25:
      result = 0;
      *(v13 + 6) = 0;
      return result;
    }

    while (1)
    {
      v16 = *(v14 + 16);
      v17 = *v16;
      if (v14 == *v16)
      {
        v17 = v16[1];
        if (*(v17 + 24) != 1)
        {
          if (v10 == *(v14 + 8))
          {
            rotateLeft(a1, v14);
            v19 = *(v14 + 16);
            v16 = *(v19 + 16);
            v10 = v14;
          }

          else
          {
            v19 = v14;
          }

          *(v19 + 24) = 0;
          *(v16 + 6) = 1;
          rotateRight(a1, v16);
          goto LABEL_23;
        }
      }

      else if (*(v17 + 24) != 1)
      {
        if (v10 == *v14)
        {
          rotateRight(a1, v14);
          v18 = *(v14 + 16);
          v16 = *(v18 + 16);
          v10 = v14;
        }

        else
        {
          v18 = v14;
        }

        *(v18 + 24) = 0;
        *(v16 + 6) = 1;
        rotateLeft(a1, v16);
        goto LABEL_23;
      }

      *v15 = 0;
      *(v17 + 24) = 0;
      v10 = v16;
      *(v16 + 6) = 1;
LABEL_23:
      v13 = *a1;
      if (v10 != *a1)
      {
        v14 = v10[2];
        v15 = (v14 + 24);
        if (*(v14 + 24) == 1)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v8 = v6;
    v9 = (a1[7])(a2, v6[4]);
    if (!v9)
    {
      return 2;
    }

    v6 = v8[v9 >= 0];
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t rbtErase(void *a1, uint64_t ***a2)
{
  v3 = *a2;
  v4 = (a1 + 1);
  if (*a2 == a1 + 1)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2;
    if (a2[1] != v4)
    {
      v3 = a2[1];
      do
      {
        v5 = v3;
        v3 = *v3;
      }

      while (v3 != v4);
    }
  }

  if (v3 == v4)
  {
    v3 = v5[1];
  }

  v6 = v5[2];
  v3[2] = v6;
  v7 = a1;
  if (v6)
  {
    v7 = &v6[v5 != *v6];
  }

  *v7 = v3;
  if (v5 != a2)
  {
    *(a2 + 2) = *(v5 + 2);
  }

  if (!*(v5 + 6))
  {
    if (*a1 != v3)
    {
      do
      {
        if (*(v3 + 6))
        {
          break;
        }

        v9 = (v3 + 2);
        v8 = v3[2];
        v10 = *v8;
        if (v3 == *v8)
        {
          v10 = v8[1];
          if (*(v10 + 6) == 1)
          {
            *(v10 + 6) = 0;
            *(v8 + 6) = 1;
            rotateLeft(a1, v8);
            v8 = *v9;
            v10 = (*v9)[1];
          }

          v14 = v10[1];
          v15 = *(v14 + 24);
          if (*(*v10 + 24))
          {
            if (!v15)
            {
              *(*v10 + 24) = 0;
              *(v10 + 6) = 1;
              rotateRight(a1, v10);
              v8 = *v9;
              v10 = (*v9)[1];
              v14 = v10[1];
            }
          }

          else if (!v15)
          {
LABEL_34:
            *(v10 + 6) = 1;
            goto LABEL_32;
          }

          *(v10 + 6) = *(v8 + 6);
          *(v8 + 6) = 0;
          *(v14 + 24) = 0;
          rotateLeft(a1, v8);
        }

        else
        {
          if (*(v10 + 6) == 1)
          {
            *(v10 + 6) = 0;
            *(v8 + 6) = 1;
            rotateRight(a1, v8);
            v8 = *v9;
            v10 = **v9;
          }

          v11 = *v10;
          v12 = v10[1];
          v13 = *(*v10 + 24);
          if (*(v12 + 24))
          {
            if (!v13)
            {
              *(v12 + 24) = 0;
              *(v10 + 6) = 1;
              rotateLeft(a1, v10);
              v8 = *v9;
              v10 = **v9;
              v11 = *v10;
            }
          }

          else if (!v13)
          {
            goto LABEL_34;
          }

          *(v10 + 6) = *(v8 + 6);
          *(v8 + 6) = 0;
          *(v11 + 24) = 0;
          rotateRight(a1, v8);
        }

        v9 = a1;
LABEL_32:
        v3 = *v9;
      }

      while (*v9 != *a1);
    }

    *(v3 + 6) = 0;
  }

  free(v5);
  return 0;
}