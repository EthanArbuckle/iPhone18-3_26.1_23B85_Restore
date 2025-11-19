@interface CRYPTO
@end

@implementation CRYPTO

uint64_t __quic_frame_process_CRYPTO_block_invoke(uint64_t a1, int64x2_t **a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  if ((v3 - 1) >= 3)
  {
    v60 = *(a1 + 40);
    v61 = (v60 + 976);
    v62 = quic_cid_describe((*(v60 + 1112) + 38));
    v63 = quic_cid_describe((*(*(a1 + 40) + 1112) + 17));
    qlog_abort_internal("%s %s [%s-%s] space %d not implemented", "quic_frame_process_CRYPTO_block_invoke", v61, v62, v63, *(a1 + 72));
  }

  v4 = *(a1 + 40);
  if ((*(v4 + 1381) & 0x10) == 0)
  {
    v6 = a2[((v3 - 1) & 0x1F) + 33];
    if (v3 == 2)
    {
      v7 = 0x2000;
    }

    else
    {
      v7 = 4096;
    }

    if (quic_reassq_size(v6) <= v7)
    {
      if (quic_reassq_append(v6, *(a1 + 56), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32), *(*(a1 + 48) + 40), 0))
      {
        v55 = *(a1 + 40);
        v56 = *(v55 + 40);
        if (!v56)
        {
          v56 = *(a1 + 64);
          *(v55 + 40) = v56;
        }

        quic_crypto_process_reassq(v56, v55 + 48, a2, a2[33]);
        quic_crypto_process_reassq(*(*(a1 + 40) + 40), *(a1 + 40) + 112, a2, a2[34]);
        quic_crypto_process_reassq(*(*(a1 + 40) + 40), *(a1 + 40) + 240, a2, a2[35]);
      }
    }

    else
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 40) + 1112))
      {
        v8 = _os_log_pack_size();
        v66 = &v64;
        v9 = MEMORY[0x1EEE9AC00](v8, v8);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        v10 = _os_log_pack_fill();
        v11 = *(a1 + 40);
        v12 = *(v11 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v13 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v13 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v14 = v13;
        }

        else
        {
          v14 = &quic_cid_describe_cid_buf1;
        }

        v15 = ++quic_cid_describe_state;
        v16 = *(v12 + 38);
        v17 = 0uLL;
        *(v14 + 25) = 0u;
        *v14 = 0u;
        v14[1] = 0u;
        if (v16)
        {
          if (v16 >= 0x14)
          {
            v18 = 20;
          }

          else
          {
            v18 = v16;
          }

          v19 = (v12 + 39);
          do
          {
            v20 = *v19++;
            snprintf(v14, 0x29uLL, "%s%02x", v14, v20);
            --v18;
          }

          while (v18);
          v15 = quic_cid_describe_state;
          v17 = 0uLL;
        }

        v21 = v11 + 976;
        v22 = *(*(a1 + 40) + 1112);
        v23 = v15 % 3;
        if (v15 % 3 == 2)
        {
          v24 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v24 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v15 + 1;
        v25 = *(v22 + 17);
        if (v23)
        {
          v26 = v24;
        }

        else
        {
          v26 = &quic_cid_describe_cid_buf1;
        }

        *v26 = v17;
        v26[1] = v17;
        *(v26 + 25) = v17;
        if (v25)
        {
          if (v25 >= 0x14)
          {
            v27 = 20;
          }

          else
          {
            v27 = v25;
          }

          v28 = (v22 + 18);
          do
          {
            v29 = *v28++;
            snprintf(v26, 0x29uLL, "%s%02x", v26, v29);
            --v27;
          }

          while (v27);
        }

        if (*(a1 + 72) - 1 > 2)
        {
          v30 = "???";
        }

        else
        {
          v30 = off_1E73D1470[(*(a1 + 72) - 1)];
        }

        v57 = v65;
        *v10 = 136447490;
        *(v10 + 4) = "quic_frame_process_CRYPTO_block_invoke";
        *(v10 + 12) = 2082;
        *(v10 + 14) = v21;
        *(v10 + 22) = 2082;
        *(v10 + 24) = v14;
        *(v10 + 32) = 2082;
        *(v10 + 34) = v26;
        *(v10 + 42) = 2048;
        *(v10 + 44) = v7;
        *(v10 + 52) = 2082;
        *(v10 + 54) = v30;
        qlog_internal(16, v57, 2972);
      }

      v58 = *(a1 + 40);
      if (*(a1 + 72) == 2)
      {
        v31 = 0;
        v58[134] = 13;
        v58[135] = "exceeded crypto buffer";
        *(*(*(a1 + 32) + 8) + 24) = 0;
        return v31;
      }

      *(v58 + 1380) |= 0x1000uLL;
    }

    return 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v31 = 1, os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)))
  {
    if (!*(v4 + 1112))
    {
      return 1;
    }

    v32 = _os_log_pack_size();
    v66 = &v64;
    v33 = &v64 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    v35 = *(a1 + 40);
    v36 = *(v35 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v37 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v37 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v38 = v37;
    }

    else
    {
      v38 = &quic_cid_describe_cid_buf1;
    }

    v39 = ++quic_cid_describe_state;
    v40 = *(v36 + 38);
    v41 = 0uLL;
    *(v38 + 25) = 0u;
    *v38 = 0u;
    v38[1] = 0u;
    if (v40)
    {
      if (v40 >= 0x14)
      {
        v42 = 20;
      }

      else
      {
        v42 = v40;
      }

      v43 = (v36 + 39);
      do
      {
        v44 = *v43++;
        snprintf(v38, 0x29uLL, "%s%02x", v38, v44);
        --v42;
      }

      while (v42);
      v39 = quic_cid_describe_state;
      v41 = 0uLL;
    }

    v45 = v35 + 976;
    v46 = *(*(a1 + 40) + 1112);
    v47 = v39 % 3;
    if (v39 % 3 == 2)
    {
      v48 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v48 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v39 + 1;
    v49 = *(v46 + 17);
    if (v47)
    {
      v50 = v48;
    }

    else
    {
      v50 = &quic_cid_describe_cid_buf1;
    }

    *v50 = v41;
    v50[1] = v41;
    *(v50 + 25) = v41;
    if (v49)
    {
      if (v49 >= 0x14)
      {
        v51 = 20;
      }

      else
      {
        v51 = v49;
      }

      v52 = (v46 + 18);
      do
      {
        v53 = *v52++;
        snprintf(v50, 0x29uLL, "%s%02x", v50, v53);
        --v51;
      }

      while (v51);
    }

    if (*(*(a1 + 48) + 16) - 1 > 2)
    {
      v54 = "???";
    }

    else
    {
      v54 = off_1E73D1470[(*(*(a1 + 48) + 16) - 1)];
    }

    *v34 = 136447234;
    *(v34 + 4) = "quic_frame_process_CRYPTO_block_invoke";
    *(v34 + 12) = 2082;
    *(v34 + 14) = v45;
    *(v34 + 22) = 2082;
    *(v34 + 24) = v38;
    *(v34 + 32) = 2082;
    *(v34 + 34) = v50;
    *(v34 + 42) = 2082;
    *(v34 + 44) = v54;
    v31 = 1;
    qlog_internal(1, v33, 2958);
  }

  return v31;
}

@end