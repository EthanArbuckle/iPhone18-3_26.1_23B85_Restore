_WORD *nw_protocol_boringssl_allocate_options()
{
  result = malloc_type_calloc(1uLL, 0x1B0uLL, 0x10F0040BA95764DuLL);
  result[167] = 1;
  return result;
}

void nw_protocol_boringssl_deallocate_options(void *a1, void *a2)
{
  v32 = a1;
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      free(v3);
      a2[1] = 0;
    }

    v4 = a2[2];
    if (v4)
    {
      free(v4);
      a2[2] = 0;
    }

    v5 = a2[5];
    a2[5] = 0;

    v6 = a2[29];
    a2[29] = 0;

    v7 = a2[6];
    a2[6] = 0;

    v8 = a2[7];
    a2[7] = 0;

    v9 = a2[11];
    a2[11] = 0;

    v10 = a2[12];
    a2[12] = 0;

    v11 = a2[13];
    a2[13] = 0;

    v12 = a2[14];
    a2[14] = 0;

    v13 = a2[15];
    a2[15] = 0;

    v14 = a2[16];
    a2[16] = 0;

    v15 = a2[22];
    a2[22] = 0;

    v16 = a2[23];
    a2[23] = 0;

    v17 = a2[9];
    a2[9] = 0;

    v18 = a2[24];
    a2[24] = 0;

    v19 = a2[17];
    a2[17] = 0;

    v20 = a2[18];
    a2[18] = 0;

    v21 = a2[19];
    a2[19] = 0;

    v22 = a2[20];
    a2[20] = 0;

    v23 = a2[21];
    a2[21] = 0;

    v24 = a2[42];
    a2[42] = 0;

    v25 = a2[33];
    a2[33] = 0;

    v26 = a2[32];
    a2[32] = 0;

    v27 = a2[10];
    a2[10] = 0;

    a2[44] = 0;
    v28 = a2[35];
    if (v28)
    {
      CFRelease(v28);
    }

    a2[35] = 0;
    v29 = a2[36];
    if (v29)
    {
      CFRelease(v29);
    }

    a2[36] = 0;
    v30 = a2[43];
    if (v30)
    {
      free(v30);
      a2[43] = 0;
    }

    a2[45] = 0;
    v31 = a2[47];
    if (v31)
    {
      CFRelease(v31);
    }

    a2[47] = 0;
    cc_clear();
    free(a2);
  }

  else
  {
    cc_clear();
  }
}

void *nw_protocol_boringssl_copy_options(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_calloc(1uLL, 0x1B0uLL, 0xA830B18uLL);
  nw_protocol_boringssl_copy_options_contents(v3, a2);
  return v3;
}

void nw_protocol_boringssl_copy_options_contents(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    *a1 = *a2;
    v4 = *(a1 + 369) & 0xFFFFFFFE | *(a2 + 369) & 1;
    *(a1 + 369) = v4;
    v5 = v4 & 0xFFFFFFFB | (4 * ((*(a2 + 369) >> 2) & 1));
    *(a1 + 369) = v5;
    v6 = v5 & 0xFFFFFFF7 | (8 * ((*(a2 + 369) >> 3) & 1));
    *(a1 + 369) = v6;
    v7 = v6 & 0xFFFFFFEF | (16 * ((*(a2 + 369) >> 4) & 1));
    *(a1 + 369) = v7;
    v8 = v7 & 0xFFFFFFDF | (32 * ((*(a2 + 369) >> 5) & 1));
    *(a1 + 369) = v8;
    v9 = v8 & 0xFFFFFFBF | (((*(a2 + 369) >> 6) & 1) << 6);
    *(a1 + 369) = v9;
    v10 = v9 & 0xFFFFFDFF | (((*(a2 + 369) >> 9) & 1) << 9);
    *(a1 + 369) = v10;
    v11 = v10 & 0xFFFFFBFF | (((*(a2 + 369) >> 10) & 1) << 10);
    *(a1 + 369) = v11;
    v12 = v11 & 0xFFFFF7FF | (((*(a2 + 369) >> 11) & 1) << 11);
    *(a1 + 369) = v12;
    v13 = v12 & 0xFFFFEFFF | (((*(a2 + 369) >> 12) & 1) << 12);
    *(a1 + 369) = v13;
    v14 = v13 & 0xFFFFDFFF | (((*(a2 + 369) >> 13) & 1) << 13);
    *(a1 + 369) = v14;
    v15 = v14 & 0xFFFFBFFF | (((*(a2 + 369) >> 14) & 1) << 14);
    *(a1 + 369) = v15;
    v16 = v15 & 0xFFFF7FFF | (((*(a2 + 369) >> 15) & 1) << 15);
    *(a1 + 369) = v16;
    v17 = v16 & 0xFFFEFFFF | ((HIWORD(*(a2 + 369)) & 1) << 16);
    *(a1 + 369) = v17;
    v18 = v17 & 0xFFFDFFFF | (((*(a2 + 369) >> 17) & 1) << 17);
    *(a1 + 369) = v18;
    v19 = v18 & 0xFFFBFFFF | (((*(a2 + 369) >> 18) & 1) << 18);
    *(a1 + 369) = v19;
    v20 = v19 & 0xFDFFFFFF | (((*(a2 + 369) >> 25) & 1) << 25);
    *(a1 + 369) = v20;
    v21 = v20 & 0xFFF7FFFF | (((*(a2 + 369) >> 19) & 1) << 19);
    *(a1 + 369) = v21;
    v22 = v21 & 0xFFEFFFFF | (((*(a2 + 369) >> 20) & 1) << 20);
    *(a1 + 369) = v22;
    v23 = v22 & 0xFFDFFFFF | (((*(a2 + 369) >> 21) & 1) << 21);
    *(a1 + 369) = v23;
    v24 = v23 & 0xFFBFFFFF | (((*(a2 + 369) >> 22) & 1) << 22);
    *(a1 + 369) = v24;
    v25 = v24 & 0xFF7FFFFF | (((*(a2 + 369) >> 23) & 1) << 23);
    *(a1 + 369) = v25;
    v26 = *(a1 + 373) & 0xEF | (16 * ((*(a2 + 373) >> 4) & 1));
    *(a1 + 373) = v26;
    v27 = v26 & 0xFFFFFFDF | (32 * ((*(a2 + 373) >> 5) & 1));
    *(a1 + 373) = v27;
    v28 = v25 & 0xFEFFFFFF | ((HIBYTE(*(a2 + 369)) & 1) << 24);
    *(a1 + 369) = v28;
    v29 = v28 & 0xFBFFFFFF | (((*(a2 + 369) >> 26) & 1) << 26);
    *(a1 + 369) = v29;
    v30 = v29 & 0xF7FFFFFF | (((*(a2 + 369) >> 27) & 1) << 27);
    *(a1 + 369) = v30;
    v31 = v30 & 0xEFFFFFFF | (((*(a2 + 369) >> 28) & 1) << 28);
    *(a1 + 369) = v31;
    v32 = v31 & 0xDFFFFFFF | (((*(a2 + 369) >> 29) & 1) << 29);
    *(a1 + 369) = v32;
    v33 = v32 & 0xBFFFFFFF | (((*(a2 + 369) >> 30) & 1) << 30);
    *(a1 + 369) = v33;
    v34 = v33 & 0xFFFFFF7F | (((*(a2 + 369) >> 7) & 1) << 7);
    *(a1 + 369) = v34;
    *(a1 + 369) = v34 & 0xFFFFFEFF | (((*(a2 + 369) >> 8) & 1) << 8);
    *(a1 + 373) = *(a2 + 373) & 2 | v27 & 0xFD;
    v35 = *(a2 + 320);
    *(a1 + 312) = *(a2 + 312);
    *(a1 + 320) = v35;
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 334) = *(a2 + 334);
    v36 = *(a2 + 8);
    if (v36)
    {
      *(a1 + 8) = strdup(v36);
    }

    *(a1 + 24) = *(a2 + 24);
    v37 = *(a2 + 16);
    if (v37)
    {
      *(a1 + 16) = strdup(v37);
    }

    v38 = *(a2 + 56);
    if (v38)
    {
      objc_storeStrong((a1 + 56), v38);
    }

    v39 = *(a2 + 48);
    if (v39)
    {
      v40 = xpc_copy(v39);
      v41 = *(a1 + 48);
      *(a1 + 48) = v40;
    }

    v42 = *(a2 + 40);
    if (v42)
    {
      v43 = xpc_copy(v42);
      v44 = *(a1 + 40);
      *(a1 + 40) = v43;
    }

    v45 = *(a2 + 232);
    if (v45)
    {
      v46 = xpc_copy(v45);
      v47 = *(a1 + 232);
      *(a1 + 232) = v46;
    }

    if (*(a2 + 88))
    {
      v48 = MEMORY[0x1AC57F4F0]();
      v49 = *(a1 + 88);
      *(a1 + 88) = v48;

      objc_storeStrong((a1 + 96), *(a2 + 96));
    }

    if (*(a2 + 104))
    {
      v50 = MEMORY[0x1AC57F4F0]();
      v51 = *(a1 + 104);
      *(a1 + 104) = v50;

      objc_storeStrong((a1 + 112), *(a2 + 112));
    }

    if (*(a2 + 120))
    {
      v52 = MEMORY[0x1AC57F4F0]();
      v53 = *(a1 + 120);
      *(a1 + 120) = v52;

      objc_storeStrong((a1 + 128), *(a2 + 128));
    }

    v54 = *(a2 + 192);
    if (v54)
    {
      objc_storeStrong((a1 + 192), v54);
    }

    if (*(a2 + 176))
    {
      v55 = MEMORY[0x1AC57F4F0]();
      v56 = *(a1 + 176);
      *(a1 + 176) = v55;

      objc_storeStrong((a1 + 184), *(a2 + 184));
    }

    v57 = *(a2 + 72);
    if (v57)
    {
      v58 = xpc_copy(v57);
      v59 = *(a1 + 72);
      *(a1 + 72) = v58;
    }

    v60 = *(a2 + 136);
    if (v60)
    {
      objc_storeStrong((a1 + 136), v60);
    }

    v61 = *(a2 + 216);
    if (v61)
    {
      objc_storeStrong((a1 + 216), v61);
    }

    if (*(a2 + 200))
    {
      v62 = MEMORY[0x1AC57F4F0]();
      v63 = *(a1 + 200);
      *(a1 + 200) = v62;
    }

    if (*(a2 + 208))
    {
      v64 = MEMORY[0x1AC57F4F0]();
      v65 = *(a1 + 208);
      *(a1 + 208) = v64;
    }

    v66 = *(a2 + 64);
    if (v66)
    {
      objc_storeStrong((a1 + 64), v66);
    }

    if (*(a2 + 144))
    {
      v67 = MEMORY[0x1AC57F4F0]();
      v68 = *(a1 + 144);
      *(a1 + 144) = v67;
    }

    v69 = *(a2 + 152);
    if (v69)
    {
      objc_storeStrong((a1 + 152), v69);
    }

    if (*(a2 + 160))
    {
      v70 = MEMORY[0x1AC57F4F0]();
      v71 = *(a1 + 160);
      *(a1 + 160) = v70;
    }

    v72 = *(a2 + 168);
    if (v72)
    {
      objc_storeStrong((a1 + 168), v72);
    }

    if (*(a2 + 336))
    {
      v73 = MEMORY[0x1AC57F4F0]();
      v74 = *(a1 + 336);
      *(a1 + 336) = v73;
    }

    v75 = *(a2 + 248);
    if (v75)
    {
      objc_storeStrong((a1 + 248), v75);
    }

    if (*(a2 + 240))
    {
      v76 = MEMORY[0x1AC57F4F0]();
      v77 = *(a1 + 240);
      *(a1 + 240) = v76;
    }

    if (*(a2 + 256))
    {
      v78 = MEMORY[0x1AC57F4F0]();
      v79 = *(a1 + 256);
      *(a1 + 256) = v78;
    }

    v80 = *(a2 + 264);
    if (v80)
    {
      objc_storeStrong((a1 + 264), v80);
    }

    v81 = *(a2 + 80);
    if (v81)
    {
      objc_storeStrong((a1 + 80), v81);
    }

    v82 = *(a2 + 280);
    v83 = MEMORY[0x1E695E480];
    if (v82)
    {
      *(a1 + 280) = CFArrayCreateCopy(*MEMORY[0x1E695E480], v82);
    }

    v84 = *(a2 + 288);
    if (v84)
    {
      *(a1 + 288) = CFArrayCreateCopy(*v83, v84);
    }

    if (*(a2 + 304))
    {
      *(a1 + 304) = *(a2 + 304);
    }

    if (*(a2 + 305))
    {
      *(a1 + 305) = *(a2 + 305);
    }

    if (*(a2 + 368))
    {
      *(a1 + 368) = *(a2 + 368);
    }

    v85 = *(a2 + 376);
    if (v85)
    {
      *(a1 + 376) = CFRetain(v85);
    }

    v86 = *(a2 + 296);
    if (v86)
    {

      objc_storeStrong((a1 + 296), v86);
    }
  }
}

id nw_protocol_boringssl_copy_definition()
{
  if (nw_protocol_boringssl_copy_definition_onceToken != -1)
  {
    nw_protocol_boringssl_copy_definition_cold_1();
  }

  v1 = nw_protocol_boringssl_copy_definition_definition;

  return v1;
}

void boringssl_log_open()
{
  if (boringssl_log_open_onceToken != -1)
  {
    boringssl_log_open_cold_1();
  }
}

uint64_t nw_protocol_boringssl_create(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  v4 = nw_protocol_new_objc();

  if (v4)
  {
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    nw_frame_array_init();
    v5 = *(v4 + 152);
    *(v4 + 152) = 0;

    *(v4 + 160) = 0;
    *(v4 + 340) = 0;
    *(v4 + 348) &= ~0x80u;
    *(v4 + 24) = boringssl_session_read;
    *(v4 + 32) = boringssl_session_write;
    *(v4 + 40) = boringssl_session_handshake_negotiate;
    *(v4 + 280) = 0;
    v6 = v4;
    v6[2] = v6;
    v7 = nw_protocol_upcast();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t nw_protocol_boringssl_add_input_handler(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_13;
  }

  v3 = nw_protocol_downcast();
  v4 = v3;
  if (v3)
  {
    if ((*(v3 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_add_input_handler_cold_1();
    }

    if ((nw_protocol_supports_external_data_is_valid() & 1) == 0)
    {
      if ((*(v4 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_add_input_handler_cold_2(v4, a2, v17);
        goto LABEL_32;
      }

      goto LABEL_13;
    }

    if (nw_protocol_get_parameters_is_valid())
    {
      if (nw_protocol_get_input_handler())
      {
        if ((*(v4 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_add_input_handler_cold_4();
LABEL_32:
          v4 = LOBYTE(v17[0]);
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      nw_protocol_set_input_handler();
      v17[0] = 0;
      v17[1] = 0;
      nw_protocol_get_flow_id();
      nw_protocol_set_flow_id();
      nw_protocol_set_output_handler();
      if (nw_protocol_supports_external_data())
      {
        v7 = 16;
      }

      else
      {
        v7 = 0;
      }

      *(v4 + 349) = *(v4 + 349) & 0xEF | v7;
      v8 = nw_protocol_get_parameters();
      v9 = *(v4 + 272);
      *(v4 + 272) = v8;

      if (!*(v4 + 272))
      {
        if ((*(v4 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_add_input_handler_cold_7();
          v4 = v16;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (nw_parameters_get_logging_disabled())
      {
        *(v4 + 435) |= 1u;
      }

      v10 = *(v4 + 272);
      v11 = nw_parameters_copy_context();
      v12 = boringssl_context_create_with_nw_context(v4, v11);
      *(v4 + 296) = v12;
      if (v12)
      {
        v13 = v12;
        attribution = nw_parameters_get_attribution(*(v4 + 272));
        boringssl_context_set_attribution(v13, attribution);
        v15 = boringssl_bio_create(v4, nw_protocol_boringssl_read_bytes_wrapper, nw_protocol_boringssl_write_bytes_wrapper);
        *(v4 + 304) = v15;
        if (v15)
        {
          v4 = 1;
LABEL_30:

          goto LABEL_14;
        }

        if (*(v4 + 435))
        {
LABEL_29:
          v4 = 0;
          goto LABEL_30;
        }

        nw_protocol_boringssl_add_input_handler_cold_5();
      }

      else
      {
        if (*(v4 + 435))
        {
          goto LABEL_29;
        }

        nw_protocol_boringssl_add_input_handler_cold_6();
      }

      v4 = v16;
      goto LABEL_30;
    }

    if ((*(v4 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_add_input_handler_cold_3();
      goto LABEL_32;
    }

LABEL_13:
    v4 = 0;
  }

LABEL_14:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void nw_protocol_boringssl_add_input_handler_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __boringssl_log_open_block_invoke()
{
  v0 = os_log_create("com.apple.network", "boringssl");
  v1 = g_boringssl_log;
  g_boringssl_log = v0;

  if (boringssl_logging_register_debug_log_updates_onceToken != -1)
  {
    __boringssl_log_open_block_invoke_cold_1();
  }
}

uint64_t __nw_protocol_boringssl_copy_definition_block_invoke()
{
  if (nw_protocol_boringssl_identifier_onceToken != -1)
  {
    nw_protocol_boringssl_identifier_cold_1();
  }

  v0 = nw_protocol_definition_create_with_identifier();
  v1 = nw_protocol_boringssl_copy_definition_definition;
  nw_protocol_boringssl_copy_definition_definition = v0;

  nw_protocol_definition_set_options_allocator();
  nw_protocol_definition_set_metadata_allocator();
  nw_protocol_definition_set_options_equality_check();
  nw_protocol_definition_set_options_comparator();
  v2 = nw_protocol_boringssl_copy_definition_definition;

  return MEMORY[0x1EEDD4248](v2, nw_protocol_boringssl_cache_entry_deallocator);
}

void __nw_protocol_boringssl_identifier_block_invoke()
{
  qword_1ED4C09B0 = 0;
  g_boringssl_protocol_identifier = 0u;
  unk_1ED4C09A0 = 0u;
  g_boringssl_protocol_callbacks = nw_protocol_one_to_one_callbacks_new();
  __strlcpy_chk();
  qword_1ED4C09B0 = 0x100000004;
  nw_protocol_callbacks_set_add_input_handler();
  nw_protocol_callbacks_set_replace_input_handler();
  nw_protocol_callbacks_set_remove_input_handler();
  nw_protocol_callbacks_set_input_available();
  nw_protocol_callbacks_set_output_available();
  nw_protocol_callbacks_set_get_input_frames();
  nw_protocol_callbacks_set_get_output_frames();
  nw_protocol_callbacks_set_input_finished();
  nw_protocol_callbacks_set_output_finished();
  nw_protocol_callbacks_set_finalize_output_frames();
  nw_protocol_callbacks_set_waiting_for_output();
  nw_protocol_callbacks_set_connect();
  nw_protocol_callbacks_set_disconnect();
  nw_protocol_callbacks_set_connected();
  nw_protocol_callbacks_set_disconnected();
  nw_protocol_callbacks_set_reset();
  nw_protocol_callbacks_set_copy_info();
  nw_protocol_callbacks_set_error();
  nw_protocol_register_extended();
  boringssl_log_open();
  if (nw_boringssl_batching_register_batching_size_updates_onceToken != -1)
  {
    __nw_protocol_boringssl_identifier_block_invoke_cold_1();
  }
}

uint64_t __boringssl_logging_register_debug_log_updates_block_invoke()
{
  result = network_config_register_boringssl_log_debug_updates();
  datapath_logging_enabled = result;
  return result;
}

uint64_t boringssl_bio_new(uint64_t a1)
{
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  return 1;
}

void *boringssl_context_create_with_nw_context(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = objc_alloc_init(boringssl_concrete_boringssl_ctx);
    v8 = v7;
    if (v7)
    {
      v7->ssl_state = 0;
      v7->peer_trust_result = 0;
      v9 = nw_protocol_boringssl_copy_definition();
      v10 = MEMORY[0x1AC57F130]();
      metadata = v8->metadata;
      v8->metadata = v10;

      boringssl_log_open();
      objc_storeWeak(&v8->boringssl_handle, v3);
      objc_storeStrong(&v8->async_context, a2);
      v12 = v8;
      v13 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
      if (v13)
      {
        v6 = v13;
        v12->legacy_context = v13;
        *v13 = -1252936367;
        v13[1] = v12;
LABEL_17:

        goto LABEL_18;
      }

      WeakRetained = objc_loadWeakRetained(&v8->boringssl_handle);
      if (!WeakRetained || (v15 = WeakRetained, v16 = objc_loadWeakRetained(&v8->boringssl_handle), v17 = v16[435], v16, v15, (v17 & 1) == 0))
      {
        v18 = objc_loadWeakRetained(&v8->boringssl_handle);
        if (v18)
        {
          v19 = objc_loadWeakRetained(&v8->boringssl_handle);
          v20 = (v19[435] & 1) == 0;
        }

        else
        {
          v20 = 1;
        }

        v6 = 0;
        if (!v20 || !g_boringssl_log)
        {
          goto LABEL_17;
        }

        v21 = g_boringssl_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          boringssl_context_create_with_nw_context_cold_1();
        }
      }
    }

    v6 = 0;
    goto LABEL_17;
  }

LABEL_18:

  return v6;
}

void *OPENSSL_zalloc(unint64_t a1)
{
  v2 = OPENSSL_malloc(a1);
  v3 = v2;
  if (a1 && v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

BIO *__cdecl BIO_new(BIO_METHOD *type)
{
  v2 = OPENSSL_zalloc(0x48uLL);
  v5 = v2;
  if (v2)
  {
    v2->method = type;
    HIDWORD(v2->cb_arg) = 1;
    v2->retry_reason = 1;
    CRYPTO_new_ex_data(v2 + 8, v3, v4);
    create = type->create;
    if (create)
    {
      if (!(create)(v5))
      {
        OPENSSL_free(v5);
        return 0;
      }
    }
  }

  return v5;
}

uint64_t boringssl_bio_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v7 = BIO_new(&methods_boringssl_bio);
    if (v7)
    {
      v3 = v7;
      v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
      if (v8)
      {
        *v8 = a1;
        v8[1] = a2;
        v8[2] = a3;
        *(v3 + 40) = v8;
      }

      else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_bio_create_cold_1();
      }
    }

    else
    {
      v3 = g_boringssl_log;
      if (g_boringssl_log)
      {
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_bio_create_cold_2();
        }

        return 0;
      }
    }
  }

  return v3;
}

void *OPENSSL_malloc(unint64_t a1)
{
  if (a1 <= 0xFFFFFFFFFFFFFFF7 && (v2 = malloc_type_malloc(a1 + 8, 0x6D461EA8uLL)) != 0)
  {
    *v2 = a1;
    return v2 + 1;
  }

  else
  {
    ERR_put_error(14, 0, 65, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/mem.c", 292);
    return 0;
  }
}

uint64_t boringssl_context_set_attribution(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367 && (v2 = *(result + 8)) != 0)
    {
      *(v2 + 264) = a2 == 2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nw_protocol_boringssl_connect(uint64_t result)
{
  if (result)
  {
    result = nw_protocol_downcast();
    if (result)
    {
      v1 = result;
      if ((*(result + 435) & 1) == 0)
      {
        nw_protocol_boringssl_connect_cold_1();
      }

      if (*(v1 + 296) && (*(v1 + 350) & 1) == 0)
      {
        nw_protocol_get_input_handler();
        v2 = nw_protocol_get_parameters();
        if (!v2)
        {
          if ((*(v1 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_connect_cold_4();
            return v12;
          }

          return 0;
        }

        v3 = v2;
        nw_protocol_get_output_handler();
        if (nw_protocol_get_message_properties_is_valid())
        {
          nw_protocol_get_output_handler();
          nw_protocol_get_message_properties();
        }

        if (nw_parameters_get_server_mode())
        {
          nw_protocol_get_input_handler();
          if (nw_protocol_get_local_endpoint_is_valid())
          {
            nw_protocol_get_input_handler();
            v4 = nw_protocol_get_local_endpoint();
            v5 = nw_parameters_copy_context();
            v6 = nw_context_copy_registered_endpoint();

            v7 = nw_endpoint_copy_association();
            v8 = *(v1 + 288);
            *(v1 + 288) = v7;
          }
        }

        v9 = *(v1 + 296);
        server_mode = nw_parameters_get_server_mode();
        if ((boringssl_context_ssl_context_create(v9, server_mode) & 1) == 0)
        {
          if ((*(v1 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_connect_cold_3();
          }

          return 0;
        }

        v11 = nw_parameters_copy_protocol_options_legacy();
        if (v11)
        {
          nw_protocol_options_get_log_id_str();
        }

        *(v1 + 350) |= 1u;
      }

      nw_protocol_get_output_handler();
      result = nw_protocol_connect_is_valid();
      if (result)
      {
        nw_protocol_get_output_handler();
        return nw_protocol_connect();
      }
    }
  }

  return result;
}

void nw_protocol_boringssl_connect_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_context_ssl_context_create(uint64_t a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    if (*a1 == -1252936367 && (v3 = *(a1 + 8)) != 0)
    {
      WeakRetained = objc_loadWeakRetained((v3 + 16));

      if (WeakRetained)
      {
        v6 = objc_loadWeakRetained((v3 + 16));
        WeakRetained = v6[36];
      }

      v7 = TLS_with_buffers_method();
      v8 = boringssl_context_restore_ssl_context(v3, WeakRetained, v7);
      *(v3 + 400) = v8;
      if (a2)
      {
        v9 = 16;
      }

      else
      {
        v9 = 0;
      }

      *(v3 + 548) = *(v3 + 548) & 0xCF | v9;
      if (v8)
      {
        v2 = boringssl_context_configure_defaults(v2);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void bssl::New<ssl_ctx_st,ssl_method_st const*&>(const ssl_method_st **a1)
{
  v2 = OPENSSL_malloc(0x360uLL);
  if (v2)
  {
    ssl_ctx_st::ssl_ctx_st(v2, *a1);
  }
}

void ssl_ctx_st::ssl_ctx_st(ssl_ctx_st *this, const ssl_method_st *a2)
{
  v2 = this;
  LODWORD(this->method) = 1;
  *&this->cipher_list = *&a2->ssl_new;
  LODWORD(this->rsa_md5) = 0;
  BYTE4(this->rsa_md5) = 2;
  *&this->md5 = 0u;
  *&this->comp_methods = 0u;
  this->client_CA = 20480;
  *&this->options = 0u;
  this->max_cert_list = 0x200000000;
  this->cert = 0x2A30000001C20;
  this->default_verify_callback = 0;
  *this->sid_ctx = 0u;
  *&this->sid_ctx[16] = 0u;
  *&this->read_ahead = 0u;
  *&this->msg_callback_arg = 0u;
  *&this->param = 0u;
  *&this->client_cert_engine = 0u;
  LODWORD(this->tlsext_servername_arg) = 0;
  *(&this->tlsext_servername_arg + 4) = 0x1900000000008;
  *&this->tlsext_tick_hmac_key[8] = 0;
  *this->tlsext_tick_aes_key = 0;
  *&this->tlsext_tick_key_name[8] = 0u;
  *&this->tlsext_tick_aes_key[8] = 0u;
  *&this->tlsext_status_cb = 0u;
  *&this[1].method = 0u;
  LOBYTE(this[1].cipher_list_by_id) = 0;
  WORD1(this[1].cipher_list_by_id) = 0x4000;
  *&this[1].verify_mode = 0u;
  *&this[1].cert_store = 0u;
  *&this[1].session_cache_size = 0u;
  *&this[1].session_cache_tail = 0u;
  *&this[1].session_timeout = 0u;
  *&this[1].remove_session_cb = 0u;
  *&this[1].stats.sess_connect = 0u;
  *&this[1].stats.sess_accept_renegotiate = 0u;
  *&this[1].stats.sess_cache_full = 0u;
  *&this[1].app_verify_callback = 0u;
  *&this[1].default_passwd_callback = 0u;
  *&this[1].client_cert_cb = 0u;
  *(&this[1].app_gen_cookie_cb + 2) = 0u;
  LODWORD(this[1].msg_callback_arg) = 0;
  *&this[1].max_cert_list = 0u;
  *&this[1].read_ahead = 0u;
  *&this[1].info_callback = 0u;
  *&this[1].options = 0u;
  *&this[1].md5 = 0u;
  *&this[1].extra_certs = 0u;
  *&this[1].ex_data.dummy = 0u;
  *&this[1].sid_ctx[8] &= 0xE000u;
  CRYPTO_MUTEX_init(&this->cert_store);
  CRYPTO_new_ex_data(v2 + 384, v3, v4);
}

void sub_1A8FF7A34(_Unwind_Exception *a1)
{
  v4 = v3;
  bssl::Array<unsigned char>::~Array(v4);
  std::unique_ptr<ssl_ech_keys_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 776), 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 768), 0);
  bssl::Array<unsigned char>::~Array(v1 + 752);
  bssl::Vector<bssl::CertCompressionAlg>::~Vector(v1 + 728);
  std::unique_ptr<stack_st_SRTP_PROTECTION_PROFILE,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 720), 0);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 704), 0);
  bssl::Array<unsigned char>::~Array(v1 + 688);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 680), 0);
  bssl::Array<unsigned char>::~Array(v1 + 664);
  bssl::Array<unsigned char>::~Array(v1 + 648);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 568), 0);
  std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 552), 0);
  std::unique_ptr<bssl::TicketKey,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 544), 0);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](v2, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 416), 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 400), 0);
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 240), 0);
  _Unwind_Resume(a1);
}

uint64_t CRYPTO_MUTEX_init(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_init(a1, 0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t boringssl_context_restore_ssl_context(void *a1, void *a2, SSL_METHOD *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (v8)
  {
    v9 = nw_protocol_boringssl_copy_definition();
    cached_content_for_protocol = nw_association_get_cached_content_for_protocol();

    if (cached_content_for_protocol)
    {
      WeakRetained = objc_loadWeakRetained(v7 + 2);
      v3 = &OBJC_IVAR___boringssl_concrete_nw_protocol_boringssl_logging_disabled;
      if (!WeakRetained || (v12 = objc_loadWeakRetained(v7 + 2), v4 = (v12[435] & 1) == 0, v12, WeakRetained, v4))
      {
        v13 = objc_loadWeakRetained(v7 + 2);
        if (v13)
        {
          v14 = objc_loadWeakRetained(v7 + 2);
          v3 = (v14[435] & 1) == 0;
        }

        else
        {
          v3 = 1;
        }

        v15 = g_boringssl_log ? v3 : 0;
        if (v15 == 1)
        {
          v16 = g_boringssl_log;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v3 = objc_loadWeakRetained(v7 + 2);
            if (v3)
            {
              v4 = objc_loadWeakRetained(v7 + 2);
              v17 = (v4 + 351);
            }

            else
            {
              v17 = &unk_1A9098A9F;
            }

            v18 = objc_loadWeakRetained(v7 + 2);
            *buf = 136446978;
            v50 = "boringssl_context_restore_ssl_context";
            v51 = 1024;
            v52 = 2779;
            v53 = 2082;
            v54 = v17;
            v55 = 2048;
            v56 = v18;
            _os_log_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Reusing context", buf, 0x26u);

            if (v3)
            {
            }
          }
        }
      }

      v19 = cached_content_for_protocol;
      v44 = v7;
      sec_array_apply();
    }
  }

  v20 = v46[3];
  if (v20)
  {
    SSL_CTX_up_ref(v20);
    v21 = v46;
    if (!v8)
    {
      goto LABEL_49;
    }

    goto LABEL_42;
  }

  v22 = objc_loadWeakRetained(v7 + 2);
  if (!v22 || (v23 = objc_loadWeakRetained(v7 + 2), v24 = (v23[435] & 1) == 0, v23, v22, v24))
  {
    v25 = objc_loadWeakRetained(v7 + 2);
    if (v25)
    {
      v26 = objc_loadWeakRetained(v7 + 2);
      v27 = (v26[435] & 1) == 0;
    }

    else
    {
      v27 = 1;
    }

    if (g_boringssl_log && v27)
    {
      v29 = g_boringssl_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_loadWeakRetained(v7 + 2);
        if (v30)
        {
          v3 = objc_loadWeakRetained(v7 + 2);
          v31 = (v3 + 351);
        }

        else
        {
          v31 = &unk_1A9098A9F;
        }

        v32 = objc_loadWeakRetained(v7 + 2);
        *buf = 136446978;
        v50 = "boringssl_context_restore_ssl_context";
        v51 = 1024;
        v52 = 2795;
        v53 = 2082;
        v54 = v31;
        v55 = 2048;
        v56 = v32;
        _os_log_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] New context", buf, 0x26u);

        if (v30)
        {
        }
      }
    }
  }

  v33 = SSL_CTX_new(a3);
  v21 = v46;
  v46[3] = v33;
  if (v8)
  {
LABEL_42:
    v34 = v21[3];
    v35 = v8;
    if (v34)
    {
      v36 = boringssl_context_state_create(v34);
      if (v36)
      {
        v37 = sec_array_create();
        v38 = v37;
        if (v37)
        {
          v39 = v37;
          sec_array_append();
          v40 = nw_protocol_boringssl_copy_definition();
          time(0);
          nw_association_set_cached_content_for_protocol();
        }
      }
    }

    v21 = v46;
  }

LABEL_49:
  v41 = v21[3];
  _Block_object_dispose(&v45, 8);

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

void sub_1A8FF8008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SSL_CTX *__cdecl SSL_CTX_new(SSL_METHOD *meth)
{
  v10 = meth;
  if (!meth)
  {
    ERR_put_error(16, 0, 186, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 565);
    return 0;
  }

  bssl::New<ssl_ctx_st,ssl_method_st const*&>(&v10);
  v2 = v1;
  v9 = v1;
  if (v1)
  {
    v3 = bssl::New<bssl::CERT,bssl::SSL_X509_METHOD const* const&>(&v10->ssl_clear);
    v8 = 0;
    std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 440), v3);
    std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](&v8, 0);
    *(v2 + 264) = OPENSSL_lh_new(ssl_session_hash, ssl_session_cmp);
    v4 = OPENSSL_sk_new_null();
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 400), v4);
    v5 = OPENSSL_sk_new_null();
    std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 416), v5);
    v6 = *(v2 + 440);
    if (!v6 || !*(v6 + 24) || !*(v2 + 264) || !*(v2 + 400) || !*(v2 + 416) || ((*(*(v2 + 16) + 120))(v2) & 1) == 0)
    {
      goto LABEL_13;
    }

    if (!SSL_CTX_set_strict_cipher_list(v2, "ALL") || !SSL_CTX_set_max_proto_version(v2, LOWORD(v10->version)) || !SSL_CTX_set_min_proto_version(v2, LOWORD(v10->version)))
    {
      ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 592);
LABEL_13:
      v9 = 0;
      bssl::RefCounted<ssl_ctx_st>::DecRefInternal(v2);
      return 0;
    }
  }

  return v2;
}

void sub_1A8FF81AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *bssl::New<bssl::CERT,bssl::SSL_X509_METHOD const* const&>(void *a1)
{
  result = OPENSSL_malloc(0x80uLL);
  if (result)
  {
    return bssl::CERT::CERT(result, *a1);
  }

  return result;
}

uint64_t bssl::CERT::CERT(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = 0;
  *(a1 + 24) = bssl::New<ssl_credential_st,bssl::SSLCredentialType>(&v5);
  *(a1 + 32) = a2;
  *(a1 + 120) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

uint64_t bssl::Array<unsigned char>::InitUninitialized(uint64_t a1, unint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2)
  {
    result = OPENSSL_malloc(a2);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = a2;
  }

  return 1;
}

void *OPENSSL_realloc(void *a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 - 1);
    v5 = OPENSSL_malloc(a2);
    v6 = v5;
    if (v5)
    {
      if (v4 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v4;
      }

      memcpy(v5, a1, v7);
      OPENSSL_free(a1);
    }

    return v6;
  }

  else
  {

    return OPENSSL_malloc(a2);
  }
}

void OPENSSL_free(void *a1)
{
  if (a1)
  {
    v2 = (a1 - 1);
    v1 = *(a1 - 1);
    if (v1 != -8)
    {
      bzero(a1 - 1, v1 + 8);
    }

    free(v2);
  }
}

const EVP_MD *__cdecl EVP_MD_CTX_md(const EVP_MD *ctx)
{
  if (ctx)
  {
    return *&ctx->type;
  }

  return ctx;
}

uint64_t ssl_cipher_id_cmp_void(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void std::unique_ptr<stack_st_SSL_CIPHER,bssl::internal::Deleter>::reset[abi:ne200100](BUF_MEM **a1, BUF_MEM *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    BUF_MEM_free(v3);
  }
}

void std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSLCipherPreferenceList **a1, bssl::SSLCipherPreferenceList *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::SSLCipherPreferenceList::~SSLCipherPreferenceList(v3);
    OPENSSL_free(v4);
  }
}

unint64_t *OPENSSL_sk_insert(unint64_t *result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result >= 0x7FFFFFFF)
    {
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/stack/stack.c", 179);
      return 0;
    }

    v7 = result[3];
    if (v7 <= v4 + 1)
    {
      result = OPENSSL_realloc(result[1], 16 * v7);
      if (!result)
      {
        return result;
      }

      v3[1] = result;
      v3[3] = 2 * v7;
      v4 = *v3;
    }

    if (v4 <= a3)
    {
      v10 = (v3[1] + 8 * v4);
    }

    else
    {
      v8 = 8 * (v4 - a3);
      v9 = v3[1];
      if (v8)
      {
        memmove((v9 + 8 * a3 + 8), (v9 + 8 * a3), v8);
        v4 = *v3;
        v9 = v3[1];
      }

      v10 = (v9 + 8 * a3);
    }

    *v10 = a2;
    result = (v4 + 1);
    *v3 = v4 + 1;
    *(v3 + 4) = 0;
  }

  return result;
}

uint64_t bssl::SSLCipherPreferenceList::Init(uint64_t a1, const EVP_MD_CTX **a2, char *a3, const EVP_MD *a4)
{
  v4 = a4;
  if (EVP_MD_CTX_md(*a2) == a4)
  {
    v14 = 0;
    v15 = 0;
    inited = bssl::Array<unsigned char>::InitUninitialized(&v14, v4);
    if (inited)
    {
      if (v4)
      {
        v9 = v14;
        do
        {
          v10 = *a3++;
          *v9++ = v10;
          --v4;
        }

        while (v4);
      }

      v11 = *a2;
      *a2 = 0;
      std::unique_ptr<stack_st_SSL_CIPHER,bssl::internal::Deleter>::reset[abi:ne200100](a1, v11);
      v12 = 0;
      *(a1 + 8) = v14;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = v14;
    }

    OPENSSL_free(v12);
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cipher.cc", 929);
    return 0;
  }

  return inited;
}

void *OPENSSL_sk_new(uint64_t a1)
{
  v2 = OPENSSL_zalloc(0x28uLL);
  if (v2)
  {
    v3 = OPENSSL_calloc(4uLL, 8uLL);
    v2[1] = v3;
    if (v3)
    {
      v2[3] = 4;
      v2[4] = a1;
    }

    else
    {
      OPENSSL_free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t ssl_credential_st::ssl_credential_st(uint64_t a1, void *a2, CRYPTO_EX_DATA *a3)
{
  *a1 = 1;
  *(a1 + 4) = a2;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  CRYPTO_new_ex_data(a1 + 184, a2, a3);
  return a1;
}

void sub_1A8FF86E0(_Unwind_Exception *a1)
{
  bssl::Array<unsigned char>::~Array(v1 + 168);
  bssl::Array<unsigned char>::~Array(v1 + 152);
  bssl::Array<unsigned char>::~Array(v1 + 136);
  bssl::Array<unsigned char>::~Array(v1 + 120);
  bssl::Array<unsigned char>::~Array(v1 + 104);
  bssl::Array<unsigned char>::~Array(v1 + 88);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 80), 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 56), 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 48), 0);
  bssl::Array<unsigned char>::~Array(v1 + 32);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 16), 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

void *OPENSSL_lh_new(uint64_t a1, uint64_t a2)
{
  v4 = OPENSSL_zalloc(0x30uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = 16;
    v6 = OPENSSL_calloc(0x10uLL, 8uLL);
    v5[1] = v6;
    if (v6)
    {
      v5[4] = a2;
      v5[5] = a1;
    }

    else
    {
      OPENSSL_free(v5);
      return 0;
    }
  }

  return v5;
}

void std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](unint64_t **a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_sk_pop_free_ex(v3, bssl::internal::DeleterImpl<stack_st_CRYPTO_BUFFER,void>::Free(stack_st_CRYPTO_BUFFER*)::{lambda(void (*)(void *),void *)#1}::__invoke, 0);
  }
}

void *OPENSSL_calloc(unint64_t a1, unint64_t a2)
{
  if (!a2 || is_mul_ok(a2, a1))
  {
    v4 = a2 * a1;

    return OPENSSL_zalloc(v4);
  }

  else
  {
    ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/mem.c", 306);
    return 0;
  }
}

uint64_t SSL_CTX_set_strict_cipher_list(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 856);
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
  }

  return bssl::ssl_create_cipher_list((a1 + 240), is_opaque != 0, a2, 1);
}

void *bssl::New<ssl_credential_st,bssl::SSLCredentialType>(unsigned int *a1)
{
  result = OPENSSL_malloc(0xC8uLL);
  if (result)
  {
    return ssl_credential_st::ssl_credential_st(result, *a1, v3);
  }

  return result;
}

void std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](bssl::CERT **a1, bssl::CERT *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::CERT::~CERT(v3);
    OPENSSL_free(v4);
  }
}

uint64_t bssl::ssl_create_cipher_list(bssl::SSLCipherPreferenceList **a1, int a2, uint64_t a3, int a4)
{
  v4 = 0;
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_61;
  }

  v5 = a3;
  if (!a3)
  {
    goto LABEL_61;
  }

  memset(__b, 170, sizeof(__b));
  for (i = 0; i != 1120; i += 32)
  {
    v9 = &__b[i];
    v10 = &__b[i + 32];
    if (i == 1088)
    {
      v10 = 0;
    }

    v11 = v9 - 32;
    if (!i)
    {
      v11 = 0;
    }

    *(v9 + 2) = v10;
    *(v9 + 3) = v11;
    *(v9 + 4) = 0;
  }

  v48 = &__b[1088];
  v49 = __b;
  if (a2)
  {
    v12 = 0;
    v13 = __b;
    v14 = 4;
    do
    {
      v15 = bssl::ssl_create_cipher_list(std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter> *,BOOL,char const*,BOOL)::kAESCiphers[v12];
      v52 = 0xAAAAAAAAAAAAAAAALL;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __key = v16;
      v51 = v16;
      LODWORD(v51) = v15 | 0x3000000;
      v17 = bsearch(&__key, bssl::kCiphers, 0x26uLL, 0x28uLL, ssl_cipher_id_cmp_void);
      *v13 = v17;
      if (!v17)
      {
        bssl::ssl_create_cipher_list();
      }

      ++v12;
      v13 += 4;
    }

    while (v12 != 4);
  }

  else
  {
    v14 = 0;
  }

  v18 = 0;
  v19 = &__b[32 * v14];
  do
  {
    v20 = bssl::ssl_create_cipher_list(std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter> *,BOOL,char const*,BOOL)::kChaChaCiphers[v18];
    v52 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __key = v21;
    v51 = v21;
    LODWORD(v51) = v20 | 0x3000000;
    v22 = bsearch(&__key, bssl::kCiphers, 0x26uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    *v19 = v22;
    if (!v22)
    {
      bssl::ssl_create_cipher_list();
    }

    ++v14;
    ++v18;
    v19 += 4;
  }

  while (v18 != 3);
  if ((a2 & 1) == 0)
  {
    for (j = 0; j != 4; ++j)
    {
      v24 = bssl::ssl_create_cipher_list(std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter> *,BOOL,char const*,BOOL)::kAESCiphers[j];
      v52 = 0xAAAAAAAAAAAAAAAALL;
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __key = v25;
      v51 = v25;
      LODWORD(v51) = v24 | 0x3000000;
      v26 = bsearch(&__key, bssl::kCiphers, 0x26uLL, 0x28uLL, ssl_cipher_id_cmp_void);
      *v19 = v26;
      if (!v26)
      {
        bssl::ssl_create_cipher_list();
      }

      ++v14;
      v19 += 4;
    }
  }

  v27 = 0;
  v28 = 32 * v14;
  do
  {
    v29 = bssl::ssl_create_cipher_list(std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter> *,BOOL,char const*,BOOL)::kLegacyCiphers[v27];
    v52 = 0xAAAAAAAAAAAAAAAALL;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __key = v30;
    v51 = v30;
    LODWORD(v51) = v29 | 0x3000000;
    v31 = bsearch(&__key, bssl::kCiphers, 0x26uLL, 0x28uLL, ssl_cipher_id_cmp_void);
    *&__b[v28] = v31;
    if (!v31)
    {
      bssl::ssl_create_cipher_list();
    }

    ++v27;
    v28 += 32;
  }

  while (v27 != 28);
  if (v28 != 1120)
  {
    bssl::ssl_create_cipher_list();
  }

  if (!strncmp(v5, "DEFAULT", 7uLL))
  {
    if (!bssl::ssl_cipher_process_rulestr("ALL", &v49, &v48, a4))
    {
LABEL_42:
      v4 = 0;
      goto LABEL_61;
    }

    v32 = *(v5 + 7);
    v5 += 7;
    if (v32 == 58)
    {
      ++v5;
    }
  }

  if (*v5 && !bssl::ssl_cipher_process_rulestr(v5, &v49, &v48, a4))
  {
    goto LABEL_42;
  }

  v33 = OPENSSL_sk_new_null();
  v47 = v33;
  __key = 0uLL;
  if (!v33)
  {
    v34 = 0;
    goto LABEL_44;
  }

  OPENSSL_free(0);
  __key = 0uLL;
  v34 = OPENSSL_malloc(0x26uLL);
  *&__key = v34;
  if (!v34)
  {
LABEL_44:
    v4 = 0;
    goto LABEL_59;
  }

  *(&__key + 1) = 38;
  v35 = v49;
  if (v49)
  {
    v36 = 0;
    do
    {
      if (v35[8] == 1)
      {
        if (!OPENSSL_sk_push(v33, *v35))
        {
          goto LABEL_44;
        }

        if (v36 >= 0x26)
        {
          abort();
        }

        v34[v36++] = v35[9];
      }

      v35 = *(v35 + 2);
    }

    while (v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = OPENSSL_malloc(0x10uLL);
  if (!v37)
  {
    v4 = 0;
    v46 = 0;
    goto LABEL_58;
  }

  *v37 = 0;
  *(v37 + 1) = 0;
  v46 = v37;
  v47 = 0;
  if (v36 >= 0x26)
  {
    v38 = 38;
  }

  else
  {
    v38 = v36;
  }

  a = v33;
  v39 = bssl::SSLCipherPreferenceList::Init(v37, &a, v34, v38);
  v40 = a;
  a = 0;
  if (v40)
  {
    BUF_MEM_free(v40);
  }

  if ((v39 & 1) == 0)
  {
LABEL_57:
    v33 = 0;
    v4 = 0;
    goto LABEL_58;
  }

  v41 = v46;
  v46 = 0;
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100](a1, v41);
  if (!EVP_MD_CTX_md(**a1))
  {
    ERR_put_error(16, 0, 177, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cipher.cc", 1488);
    goto LABEL_57;
  }

  v33 = 0;
  v4 = 1;
LABEL_58:
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100](&v46, 0);
LABEL_59:
  OPENSSL_free(v34);
  v47 = 0;
  if (v33)
  {
    BUF_MEM_free(v33);
  }

LABEL_61:
  v42 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1A8FF8DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bssl::ssl_cipher_process_rulestr(unsigned __int8 *a1, uint64_t *a2, uint64_t **a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v7 = a1;
  v8 = 0;
  v9 = 0;
LABEL_3:
  ++v7;
  while ((v9 & 1) != 0)
  {
    if (v4 != 93)
    {
      if (v4 == 124)
      {
LABEL_11:
        v9 = 1;
        goto LABEL_33;
      }

      if (!OPENSSL_isalnum(v4))
      {
        v38 = 224;
        v37 = 1184;
        goto LABEL_113;
      }

      goto LABEL_18;
    }

    if (*a3)
    {
      *(*a3 + 9) = 0;
    }

    v9 = 0;
    v10 = *v7++;
    v4 = v10;
    if (!v10)
    {
      return 1;
    }
  }

  if (v4 <= 0x2Cu)
  {
    if (v4 == 33)
    {
      BYTE4(v47) = 0;
      v11 = 2;
    }

    else
    {
      if (v4 != 43)
      {
LABEL_18:
        v47 = 0;
        --v7;
        v41 = 1;
        goto LABEL_28;
      }

      BYTE4(v47) = 0;
      v11 = 4;
    }
  }

  else
  {
    if (v4 != 45)
    {
      if (v4 != 64)
      {
        if (v4 == 91)
        {
          v8 = 1;
          goto LABEL_11;
        }

        goto LABEL_18;
      }

      v41 = 5;
      BYTE4(v47) = 1;
      goto LABEL_26;
    }

    BYTE4(v47) = 0;
    v11 = 3;
  }

  v41 = v11;
LABEL_26:
  if (v8)
  {
    v38 = 168;
    v37 = 1214;
    goto LABEL_113;
  }

  LODWORD(v47) = 1;
LABEL_28:
  if (v4 == 58 || (a4 & 1) != 0)
  {
    if (v4 == 58)
    {
      goto LABEL_32;
    }
  }

  else if (v4 <= 0x3Bu && ((1 << v4) & 0x800100100000000) != 0)
  {
LABEL_32:
    ++v7;
    goto LABEL_33;
  }

  v40 = v8;
  v46 = a3;
  v45 = a4;
  v12 = 0;
  v48 = 0;
  v43 = 0;
  v53 = 0xAAAAAAAAAAAA0000;
  v51 = 0;
  v52.i64[0] = -1;
  v52.i64[1] = -1;
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v42 = v13;
  v14 = 1;
  v15 = v7;
  BYTE2(v53) = v47;
  while (1)
  {
    for (i = 0; ; ++i)
    {
      v17 = v15[i];
      if (!OPENSSL_isalnum(v17))
      {
        v18 = v17;
        if (v17 - 45 > 0x32 || ((1 << (v17 - 45)) & 0x4000000000003) == 0)
        {
          break;
        }
      }
    }

    if (!i)
    {
      v37 = 1243;
      goto LABEL_112;
    }

    if ((v47 & 0x100000000) != 0)
    {
      if (i != 8 || strncmp(v7, "STRENGTH", 8uLL))
      {
        v37 = 1309;
        goto LABEL_112;
      }

      v28 = *a2;
      if (*a2)
      {
        bits = 0;
        do
        {
          if (*(v28 + 8) == 1 && SSL_CIPHER_get_bits(*v28, 0) > bits)
          {
            bits = SSL_CIPHER_get_bits(*v28, 0);
          }

          v28 = *(v28 + 16);
        }

        while (v28);
      }

      else
      {
        bits = 0;
      }

      v54 = 0;
      v55 = 0;
      inited = bssl::Array<int>::InitUninitialized(&v54, bits + 1);
      v31 = v54;
      if (inited)
      {
        bzero(v54, 4 * (bits + 1));
        v32 = *a2;
        if (!*a2)
        {
          goto LABEL_90;
        }

        do
        {
          if (*(v32 + 8) == 1)
          {
            v33 = SSL_CIPHER_get_bits(*v32, 0);
            if (v55 <= v33)
            {
LABEL_118:
              abort();
            }

            ++*(v54 + v33);
          }

          v32 = *(v32 + 16);
        }

        while (v32);
        do
        {
LABEL_90:
          if (v55 <= bits)
          {
            goto LABEL_118;
          }

          v34 = bits;
          if (*(v54 + bits) >= 1)
          {
            bssl::ssl_cipher_apply_rule(0, 0, 4, bits, 0, a2, v46);
          }

          --bits;
        }

        while (v34 > 0);
        v31 = v54;
      }

      OPENSSL_free(v31);
      if (!inited)
      {
        return 0;
      }

      v7 = v15 + 8;
      v35 = *(v15 + 8);
      if (v15[8])
      {
        a4 = v45;
        a3 = v46;
        v8 = v40;
        while (1)
        {
          if (v35 == 58 || (v45 & 1) != 0)
          {
            if (v35 == 58)
            {
              goto LABEL_33;
            }
          }

          else if (v35 <= 0x3B && ((1 << v35) & 0x800100100000000) != 0)
          {
            goto LABEL_33;
          }

          v36 = *++v7;
          v35 = v36;
          if (!v36)
          {
            goto LABEL_33;
          }
        }
      }

      a4 = v45;
      a3 = v46;
      v8 = v40;
LABEL_33:
      v4 = *v7;
      if (!*v7)
      {
        if (v9)
        {
          v38 = 158;
          v37 = 1328;
          goto LABEL_113;
        }

        return 1;
      }

      goto LABEL_3;
    }

    if (v17 != 43 && (v14 & 1) != 0)
    {
      v49 = v12;
      v20 = &dword_1E7869898;
      v21 = 38;
      while (1)
      {
        v22 = *(v20 - 2);
        if (!strncmp(v22, v15, i) && !v22[i])
        {
          break;
        }

        v23 = *(v20 - 1);
        if (!strncmp(v23, v15, i) && !v23[i])
        {
          break;
        }

        v20 += 10;
        if (!--v21)
        {
          goto LABEL_55;
        }
      }

      v48 = *v20;
LABEL_55:
      v12 = v49;
    }

    if (!v48)
    {
      break;
    }

LABEL_63:
    if (v18 != 43)
    {
      v7 = &v15[i];
      if (v43)
      {
        a4 = v45;
        a3 = v46;
      }

      else
      {
        a3 = v46;
        bssl::ssl_cipher_apply_rule(v48, &v51, v41, -1, v9 & 1, a2, v46);
        a4 = v45;
      }

      v8 = v40;
      goto LABEL_33;
    }

    v14 = 0;
    v15 += i + 1;
  }

  v50 = v12;
  v24 = &word_1E7869E98;
  v25 = 29;
  do
  {
    v26 = *(v24 - 3);
    if (!strncmp(v26, v15, i) && !v26[i])
    {
      v42 = vandq_s8(v42, *(v24 - 1));
      v52 = v42;
      LODWORD(v47) = v47 | *(v24 + 2);
      BYTE2(v53) = v47;
      v27 = *v24;
      v12 = v50;
      if (v50)
      {
        if (v50 != v27)
        {
LABEL_62:
          v43 = 1;
          goto LABEL_63;
        }
      }

      else
      {
        v12 = v27;
      }

      LOWORD(v53) = v12;
      goto LABEL_63;
    }

    v24 += 16;
    --v25;
  }

  while (v25);
  v12 = v50;
  if ((v45 & 1) == 0)
  {
    goto LABEL_62;
  }

  v37 = 1292;
LABEL_112:
  v38 = 158;
LABEL_113:
  ERR_put_error(16, 0, v38, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_cipher.cc", v37);
  return 0;
}

uint64_t bssl::ssl_cipher_apply_rule(uint64_t result, uint64_t a2, int a3, int a4, char a5, void *a6, uint64_t **a7)
{
  v10 = result;
  if (!result && a4 == -1 && !*(a2 + 24) && (!*(a2 + 8) || !*(a2 + 12) || !*(a2 + 16) || !*(a2 + 20)))
  {
    return result;
  }

  v11 = *a6;
  v12 = *a7;
  if (a3 == 3)
  {
    v13 = *a7;
  }

  else
  {
    v13 = *a6;
  }

  if (a3 == 3)
  {
    v14 = *a6;
  }

  else
  {
    v14 = *a7;
  }

  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = *a6;
    goto LABEL_97;
  }

  v33 = a6;
  v34 = a7;
  while (2)
  {
    v35 = v12;
    v17 = v13;
    while (1)
    {
      if (a3 == 3)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v13 = v17[v18];
      result = *v17;
      if (v10)
      {
        if (*(result + 16) == v10)
        {
          goto LABEL_49;
        }

        goto LABEL_25;
      }

      if ((a4 & 0x80000000) == 0)
      {
        result = SSL_CIPHER_get_bits(result, 0);
        if (result == a4)
        {
          goto LABEL_49;
        }

        goto LABEL_25;
      }

      v19 = *(result + 20);
      if ((v19 & *(a2 + 8)) == 0)
      {
        goto LABEL_25;
      }

      v20 = *(result + 24);
      if ((v20 & *(a2 + 12)) == 0)
      {
        goto LABEL_25;
      }

      v21 = *(result + 28);
      if ((v21 & *(a2 + 16)) == 0 || (*(result + 32) & *(a2 + 20)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a2 + 24))
      {
        break;
      }

      if (v21 != 32)
      {
        goto LABEL_46;
      }

LABEL_25:
      if (v17 != v14)
      {
        v17 = v13;
        if (v13)
        {
          continue;
        }
      }

      v16 = v11;
      a6 = v33;
      a7 = v34;
      v12 = v35;
      goto LABEL_97;
    }

    if (v19 == 16 || v20 == 16)
    {
      v23 = 772;
    }

    else if (*(result + 36) == 1)
    {
      v23 = 768;
    }

    else
    {
      v23 = 771;
    }

    if (v21 == 32 || v23 != *(a2 + 24))
    {
      goto LABEL_25;
    }

LABEL_46:
    if ((*(a2 + 26) & 1) == 0 && (v21 == 1 || *(result + 16) == 50380839))
    {
      goto LABEL_25;
    }

LABEL_49:
    if (a3 == 4)
    {
      v12 = v35;
      if (*(v17 + 8) == 1)
      {
        if (v35 != v17)
        {
          v26 = v17[2];
          v27 = v17[3];
          if (v11 == v17)
          {
            v11 = v17[2];
          }

          if (v27)
          {
            *(v27 + 16) = v26;
          }

          if (v26)
          {
            *(v26 + 24) = v27;
          }

          v35[2] = v17;
          v17[2] = 0;
          v17[3] = v35;
          v12 = v17;
        }

        *(v17 + 9) = 0;
      }

LABEL_92:
      v16 = v11;
    }

    else
    {
      v12 = v35;
      if (a3 == 1)
      {
        if ((v17[1] & 1) == 0)
        {
          if (v35 != v17)
          {
            v24 = v17[2];
            v25 = v17[3];
            if (v11 == v17)
            {
              v11 = v17[2];
            }

            if (v25)
            {
              *(v25 + 16) = v24;
            }

            if (v24)
            {
              *(v24 + 24) = v25;
            }

            v35[2] = v17;
            v17[2] = 0;
            v17[3] = v35;
            v12 = v17;
          }

          *(v17 + 8) = 1;
          *(v17 + 9) = a5;
        }

        goto LABEL_92;
      }

      if (a3 == 3)
      {
        if (*(v17 + 8) == 1)
        {
          if (v11 != v17)
          {
            v29 = v17[2];
            v28 = v17[3];
            if (v35 == v17)
            {
              v12 = v17[3];
            }

            if (v29)
            {
              *(v29 + 24) = v28;
            }

            if (v28)
            {
              *(v28 + 16) = v29;
            }

            v11[3] = v17;
            v17[2] = v11;
            v17[3] = 0;
            v11 = v17;
          }

          *(v17 + 4) = 0;
        }

        goto LABEL_92;
      }

      if (a3 != 2)
      {
        goto LABEL_92;
      }

      v30 = v17[2];
      v31 = v17[3];
      v16 = v30;
      if (v11 != v17)
      {
        v31[2] = v30;
        v16 = v11;
      }

      if (v35 == v17)
      {
        v12 = v31;
      }

      *(v17 + 8) = 0;
      if (v30)
      {
        v30[3] = v31;
      }

      if (v31)
      {
        v31[2] = v30;
      }

      v17[2] = 0;
      v17[3] = 0;
    }

    if (v17 == v14)
    {
      a6 = v33;
      a7 = v34;
    }

    else
    {
      v11 = v16;
      a6 = v33;
      a7 = v34;
      if (v13)
      {
        continue;
      }
    }

    break;
  }

LABEL_97:
  *a6 = v16;
  *a7 = v12;
  return result;
}

uint64_t SSL_CTX_set_max_proto_version(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    return bssl::set_version_bound(*(a1 + 8), (a1 + 224), a2);
  }

  if (**(a1 + 8))
  {
    v3 = -259;
  }

  else
  {
    v3 = 772;
  }

  *(a1 + 224) = v3;
  return 1;
}

uint64_t SSL_CTX_set_min_proto_version(uint64_t a1, unsigned __int16 *a2)
{
  if (a2)
  {
    return bssl::set_version_bound(*(a1 + 8), (a1 + 226), a2);
  }

  if (**(a1 + 8))
  {
    v3 = -259;
  }

  else
  {
    v3 = 771;
  }

  *(a1 + 226) = v3;
  return 1;
}

uint64_t boringssl_context_configure_defaults(uint64_t a1)
{
  if (*a1 != -1252936367)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  SSL_CTX_set_allow_unknown_alpn_protos(*(v1 + 400), 1);
  SSL_CTX_set_info_callback(*(v1 + 400), boringssl_context_info_handler);
  SSL_CTX_set_session_cache_mode(*(v1 + 400), 3);
  v2 = *(v1 + 400);
  if ((*(v1 + 548) & 0x10) != 0)
  {
    v3 = 0;
  }

  else
  {
    SSL_CTX_sess_set_new_cb(v2, boringssl_context_new_session_handler);
    v2 = *(v1 + 400);
    v3 = 3;
  }

  SSL_CTX_set_custom_verify(v2, v3, boringssl_context_certificate_verify_callback);
  return 1;
}

uint64_t SSL_CTX_set_custom_verify(uint64_t result, int a2, uint64_t a3)
{
  *(result + 464) = a2;
  *(result + 352) = a3;
  return result;
}

uint64_t SSL_CTX_set_session_cache_mode(uint64_t a1, int a2)
{
  v2 = *(a1 + 300);
  *(a1 + 300) = a2;
  return v2;
}

void nw_protocol_boringssl_connected(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      if ((*(v4 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_connected_cold_1();
      }

      nw_protocol_get_input_handler();
      if (nw_protocol_connected_is_valid())
      {
        if (*(v5 + 296))
        {
          nw_protocol_get_input_handler();
          nw_protocol_connected();
          if (nw_protocol_get_output_handler() == a2)
          {
            if (boringssl_session_get_state(*(v5 + 296)) == 2)
            {
              if ((*(v5 + 435) & 1) == 0)
              {
                nw_protocol_boringssl_connected_cold_4();
              }

              nw_protocol_get_input_handler();
              nw_protocol_connected();
            }

            else if ((*(v5 + 348) & 4) != 0)
            {
              if ((*(v5 + 435) & 1) == 0)
              {
                nw_protocol_boringssl_connected_cold_3();
              }
            }

            else
            {
              *(v5 + 348) |= 4u;
              nw_protocol_get_output_handler();
              if (nw_protocol_waiting_for_output_is_valid())
              {
                nw_protocol_get_output_handler();
                if (nw_protocol_waiting_for_output())
                {
                  *(v5 + 349) |= 0x80u;
                }
              }

              if (!boringssl_session_get_state(*(v5 + 296)))
              {
                nw_protocol_boringssl_begin_connection(a1);
              }
            }
          }
        }

        else if ((*(v5 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_connected_cold_5();
        }
      }

      else if ((*(v5 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_connected_cold_2();
      }
    }
  }
}

void nw_protocol_boringssl_connected_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_begin_connection(uint64_t a1)
{
  v2 = nw_protocol_downcast();
  if (v2)
  {
    v3 = v2;
    if ((*(v2 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_begin_connection_cold_1();
    }

    nw_protocol_get_input_handler();
    v4 = nw_protocol_get_parameters();
    if (v4)
    {
      if (nw_parameters_get_server_mode())
      {
        v5 = 8;
      }

      else
      {
        v5 = 0;
      }

      *(v3 + 349) = *(v3 + 349) & 0xF7 | v5;
      v6 = *(v3 + 296);
      is_probe = nw_parameters_get_is_probe();
      boringssl_context_set_is_probe(v6, is_probe);
      boringssl_context_set_protocol_alert_callback(*(v3 + 296), &__block_literal_global_149);
      v8 = *(v3 + 296);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __nw_protocol_boringssl_begin_connection_block_invoke_2;
      v47[3] = &__block_descriptor_40_e50_v16__0__boringssl_concrete_nw_protocol_boringssl_8lu32l8;
      v47[4] = v3;
      boringssl_context_set_connected_callback(v8, v47);
      if (boringssl_session_create(*(v3 + 296)))
      {
        if (boringssl_session_set_bio(*(v3 + 296), *(v3 + 304), *(v3 + 304)))
        {
          nw_protocol_get_input_handler();
          v9 = nw_protocol_get_remote_endpoint();
          v10 = v9;
          if (v9)
          {
            if (nw_endpoint_get_type(v9) == nw_endpoint_type_address)
            {
              address = nw_endpoint_get_address(v10);
              boringssl_context_set_remote_address(*(v3 + 296), &address->sa_len);
            }

            v12 = *(v3 + 272);
            v13 = nw_protocol_boringssl_get_subject_endpoint(v10);
            LODWORD(v12) = nw_parameters_get_sensitive_redacted_for_endpoint();

            if (v12)
            {
              *(v3 + 435) |= 2u;
            }

            if (*(v3 + 349) & 8) != 0 || (subject_name = nw_protocol_boringssl_get_subject_name(v3, v10)) == 0 || (v15 = subject_name, v16 = strlen(subject_name), (boringssl_session_set_peer_hostname(*(v3 + 296), v15, v16)))
            {
              if (os_variant_allows_internal_security_policies() && nw_parameters_get_enable_tls_keylog())
              {
                boringssl_context_enable_keylog(*(v3 + 296));
              }

              v17 = nw_parameters_copy_protocol_options_legacy();
              v18 = v17;
              if (v17)
              {
                v43 = 0;
                v44 = &v43;
                v45 = 0x2020000000;
                v46 = 0;
                v42 = v17;
                nw_protocol_options_access_handle();
                v19 = boringssl_context_set_enable_message_mode(*(v3 + 296), *(v44 + 24));
                v20 = *(v3 + 232);
                *(v3 + 232) = v19;

                v21 = nw_parameters_copy_default_protocol_stack(v4);
                v22 = nw_protocol_stack_copy_original_proxied_transport_protocol();
                if (v22 || (v22 = nw_protocol_stack_copy_transport_protocol(v21)) != 0)
                {
                  v23 = nw_protocol_options_copy_definition(v22);
                  if (v23)
                  {
                    v24 = nw_protocol_copy_quic_connection_definition();
                    if (MEMORY[0x1AC57EEC0](v23, v24))
                    {
                    }

                    else
                    {
                      v26 = nw_protocol_copy_quic_stream_definition();
                      v27 = MEMORY[0x1AC57EEC0](v23, v26);

                      if ((v27 & 1) == 0)
                      {
                        v28 = nw_protocol_copy_tcp_definition();
                        MEMORY[0x1AC57EEC0](v23, v28);
                      }
                    }
                  }
                }

                v29 = boringssl_session_apply_protocol_options_for_transport(*(v3 + 296), v42);
                if (v29)
                {
                  early_data_enabled = boringssl_session_get_early_data_enabled(*(v3 + 296));
                  v31 = *(v3 + 349);
                  if (early_data_enabled | ((v31 & 0x20) >> 5))
                  {
                    v32 = 32;
                  }

                  else
                  {
                    v32 = 0;
                  }

                  *(v3 + 349) = v32 | v31 & 0xDF;
                }

                else
                {
                  if ((*(v3 + 435) & 1) == 0)
                  {
                    nw_protocol_boringssl_begin_connection_cold_5();
                  }

                  nw_protocol_boringssl_internal_error(v3, -9810);
                  nw_protocol_boringssl_disconnect(a1);
                }

                _Block_object_dispose(&v43, 8);
                v18 = v42;
                if (v29)
                {
                  if ((*(v3 + 349) & 8) == 0)
                  {
                    if (boringssl_context_get_ech_enabled(*(v3 + 296)))
                    {
                      v33 = nw_endpoint_copy_ech_config();
                      v34 = boringssl_session_set_ech_config(*(v3 + 296), v33);
                      v35 = *(v3 + 435);
                      if (v34)
                      {
                        if ((*(v3 + 435) & 1) == 0)
                        {
                          nw_protocol_boringssl_begin_connection_cold_7();
                        }
                      }

                      else if ((*(v3 + 435) & 1) == 0)
                      {
                        nw_protocol_boringssl_begin_connection_cold_6();
                      }
                    }

                    if (*(v3 + 272))
                    {
                      v36 = nw_endpoint_copy_original_endpoint();
                      v37 = *(v3 + 272);
                      v38 = nw_parameters_copy_context();
                      if (v38)
                      {
                        v39 = nw_context_copy_registered_endpoint();

                        v40 = nw_endpoint_copy_association();
                        v41 = *(v3 + 288);
                        *(v3 + 288) = v40;

                        boringssl_session_set_association(*(v3 + 296), *(v3 + 288));
                        v36 = v39;
                      }

                      else if ((*(v3 + 435) & 1) == 0)
                      {
                        nw_protocol_boringssl_begin_connection_cold_8(v3, (v3 + 272), v36, &v43);
                        v36 = v43;
                      }

                      v18 = v42;
                    }

                    else if ((*(v3 + 435) & 1) == 0)
                    {
                      nw_protocol_boringssl_begin_connection_cold_9();
                    }
                  }

                  boringssl_session_clear_eap_metadata(*(v3 + 296));
                  nw_protocol_boringssl_handshake_negotiate(v3);
                }
              }

              else
              {
                if ((*(v3 + 435) & 1) == 0)
                {
                  nw_protocol_boringssl_begin_connection_cold_10();
                }

                ERR_print_errors_cb(nw_protocol_error_print, *(v3 + 296));
                nw_protocol_boringssl_internal_error(v3, -9854);
                v25 = nw_protocol_upcast();
                nw_protocol_upcast();
                nw_protocol_get_output_handler();
                nw_protocol_boringssl_disconnect(v25);
              }
            }

            else
            {
              if ((*(v3 + 435) & 1) == 0)
              {
                nw_protocol_boringssl_begin_connection_cold_4(v3, (v3 + 435));
              }

              nw_protocol_boringssl_internal_error(v3, -9810);
              nw_protocol_boringssl_disconnect(a1);
            }
          }

          else if ((*(v3 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_begin_connection_cold_11();
          }
        }

        else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          nw_protocol_boringssl_begin_connection_cold_3();
        }
      }

      else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        nw_protocol_boringssl_begin_connection_cold_2();
      }
    }

    else if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      nw_protocol_boringssl_begin_connection_cold_12();
    }
  }
}

void sub_1A8FFA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_boringssl_begin_connection_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_context_set_is_probe(uint64_t result, int a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (a2)
        {
          v3 = 4;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 551) = *(v2 + 551) & 0xFB | v3;
      }
    }
  }

  return result;
}

void boringssl_context_set_protocol_alert_callback(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v7 = v3;
        v5 = MEMORY[0x1AC57F4F0]();
        v6 = *(v4 + 272);
        *(v4 + 272) = v5;

        v3 = v7;
      }
    }
  }
}

void boringssl_context_set_connected_callback(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v7 = v3;
        v5 = MEMORY[0x1AC57F4F0]();
        v6 = *(v4 + 280);
        *(v4 + 280) = v5;

        v3 = v7;
      }
    }
  }
}

SSL_CTX *boringssl_session_create(SSL_CTX *result)
{
  if (result)
  {
    v1 = result;
    if (LODWORD(result->method) != -1252936367)
    {
      return 0;
    }

    cipher_list = result->cipher_list;
    if (!cipher_list)
    {
      return 0;
    }

    result = *&cipher_list[12].sorted;
    if (result)
    {
      cipher_list[12].data = SSL_new(result);
      result = cipher_list[12].data;
      if (result)
      {
        if ((*(&cipher_list[17].num + 1) & 0x10) != 0)
        {
          SSL_set_accept_state(result);
        }

        else
        {
          SSL_set_connect_state(result);
        }

        if (LODWORD(v1->method) == -1252936367)
        {
          v3 = v1->cipher_list;
          if (v3)
          {
            if ((*(&v3[17].num + 1) & 0x20) != 0)
            {
              default_min_dtls_protocol_version = sec_protocol_options_get_default_min_dtls_protocol_version();
            }

            else
            {
              default_min_dtls_protocol_version = sec_protocol_options_get_default_min_tls_protocol_version();
            }

            HIWORD(v3[1].sorted) = default_min_dtls_protocol_version;
            if ((*(&v3[17].num + 1) & 0x20) != 0)
            {
              default_max_dtls_protocol_version = sec_protocol_options_get_default_max_dtls_protocol_version();
            }

            else
            {
              default_max_dtls_protocol_version = sec_protocol_options_get_default_max_tls_protocol_version();
            }

            LOWORD(v3[1].sorted) = default_max_dtls_protocol_version;
            boringssl_context_set_min_version(v1, HIWORD(v3[1].sorted));
            boringssl_context_set_max_version(v1, v3[1].sorted);
            SSL_set_msg_callback(v3[12].data, boringssl_context_message_handler);
            SSL_set_msg_callback_arg(v3[12].data, v1);
            SSL_set_cert_cb(v3[12].data, boringssl_context_certificate_request_callback, v1);
            v8 = 0;
            v6 = boringssl_ciphers_copy_default_ciphersuites(&v8);
            v7 = v6;
            if (v6 && v8)
            {
              boringssl_context_set_cipher_suites(v1, v6, v8);
            }

            else if (!v6)
            {
              return (SSL_set_ex_data(cipher_list[12].data, 0, v1) == 1);
            }

            free(v7);
            return (SSL_set_ex_data(cipher_list[12].data, 0, v1) == 1);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

SSL *__cdecl SSL_new(SSL_CTX *ctx)
{
  v57 = ctx;
  if (!ctx)
  {
    ERR_put_error(16, 0, 185, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 637);
    return 0;
  }

  bssl::New<ssl_st,ssl_ctx_st *&>(&v57);
  v56 = v1;
  if (!v1)
  {
    goto LABEL_39;
  }

  v54 = v1;
  bssl::New<bssl::SSL_CONFIG,ssl_st *>(&v54);
  v55 = 0;
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&v56->method, v2);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
  method = v56->method;
  if (!method)
  {
    goto LABEL_39;
  }

  v4 = v57;
  LODWORD(method->ssl_new) = v57->rsa_md5;
  bssl::ssl_cert_dup(*&v4[1].wact_data_length, &v55);
  v5 = v55;
  v6 = v56->method;
  v55 = 0;
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](&v6->ssl_accept, v5);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
  v7 = v56;
  v8 = v56->method;
  if (!v8->ssl_accept)
  {
    goto LABEL_39;
  }

  v9 = v57;
  BYTE4(v8[1].ssl_shutdown) = *v57->tlsext_tick_aes_key;
  v8->ssl_connect = v9[1].read_key;
  v8->ssl_read = *&v9[1].escape;
  *(&v8[1].ssl_shutdown + 5) = *(&v8[1].ssl_shutdown + 5) & 0xFFDF | (32 * (*&v9[2].challenge[20] & 1));
  *(&v7->method[1].ssl_shutdown + 5) = *(&v7->method[1].ssl_shutdown + 5) & 0xFBFF | (16 * *&v9[2].challenge[20]) & 0x400;
  *(&v7->method[1].ssl_shutdown + 5) = *(&v7->method[1].ssl_shutdown + 5) & 0xF7FF | *&v9[2].challenge[20] & 0x800;
  *(&v7->method[1].ssl_shutdown + 5) = *(&v7->method[1].ssl_shutdown + 5) & 0xEFFF | *&v9[2].challenge[20] & 0x1000;
  v10 = v7->method;
  LODWORD(v10[1].ssl_shutdown) = v9[2].challenge_length;
  wbuf = v9[2].wbuf;
  write_ptr = v9[2].write_ptr;
  if (!bssl::Array<unsigned short>::InitUninitialized(&v10->ssl_write_bytes, write_ptr))
  {
    goto LABEL_39;
  }

  if (write_ptr)
  {
    ssl_write_bytes = v10->ssl_write_bytes;
    v14 = 2 * write_ptr;
    do
    {
      v15 = *wbuf;
      wbuf += 2;
      *ssl_write_bytes = v15;
      ssl_write_bytes = (ssl_write_bytes + 2);
      v14 -= 2;
    }

    while (v14);
  }

  v16 = v56->method;
  v17 = *&v57[1].stats.sess_cb_hit;
  app_verify_callback = v57[1].app_verify_callback;
  if (!bssl::Array<unsigned char>::InitUninitialized(&v16->ssl_ctx_ctrl, app_verify_callback))
  {
    goto LABEL_39;
  }

  if (app_verify_callback)
  {
    ssl_ctx_ctrl = v16->ssl_ctx_ctrl;
    do
    {
      v20 = *v17++;
      *ssl_ctx_ctrl = v20;
      ssl_ctx_ctrl = (ssl_ctx_ctrl + 1);
      --app_verify_callback;
    }

    while (app_verify_callback);
  }

  v21 = v56->method;
  v22 = *&v57[1].verify_mode;
  v23 = *v57[1].sid_ctx;
  if (!bssl::Array<unsigned short>::InitUninitialized(&v21[1].ssl_accept, v23))
  {
    goto LABEL_39;
  }

  if (v23)
  {
    ssl_accept = v21[1].ssl_accept;
    v25 = 2 * v23;
    do
    {
      v26 = *v22++;
      *ssl_accept = v26;
      ssl_accept = (ssl_accept + 2);
      v25 -= 2;
    }

    while (v25);
  }

  v27 = v56;
  v28 = v57;
  v29 = *&v57[1].session_cache_mode;
  v30 = v56->method;
  if (v29)
  {
    v31 = OPENSSL_strdup(v29);
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](&v30->ssl_peek, v31);
    v27 = v56;
    v30 = v56->method;
    if (!v30->ssl_peek)
    {
LABEL_39:
      v52 = 0;
      goto LABEL_40;
    }

    v28 = v57;
  }

  *&v30->ssl_write = *&v28[1].key_material[28];
  v30->ssl_renegotiate = *&v28[1].key_material[44];
  *(&v30[1].ssl_shutdown + 5) = *(&v30[1].ssl_shutdown + 5) & 0xFFF7 | (*&v28[2].challenge[20] >> 1) & 8;
  v32 = *&v28[2].padding;
  if (v32)
  {
    EVP_PKEY_up_ref(*&v28[2].padding);
    v27 = v56;
  }

  v33 = v27->method;
  v55 = 0;
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v33->ssl_ctrl, v32);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
  v35 = v56;
  v34 = v57;
  *(&v56->method[1].ssl_shutdown + 5) = *(&v56->method[1].ssl_shutdown + 5) & 0xFFFD | (*&v57[1].sid_ctx[8] >> 2) & 2;
  *(&v35->method[1].ssl_shutdown + 5) = *(&v35->method[1].ssl_shutdown + 5) & 0xFFFB | *&v34[2].challenge[20] & 4;
  *(&v35->method[1].ssl_shutdown + 5) = *(&v35->method[1].ssl_shutdown + 5) & 0xFFBF | (*&v34[2].challenge[20] >> 3) & 0x40;
  *&v35->hit = *&v34->key_material[28];
  v36 = v35->method;
  v37 = *&v34[1].tmp.ccl[24];
  v38 = *&v34[1].tmp.cipher_spec_length;
  if (bssl::Array<unsigned char>::InitUninitialized(&v36->get_cipher, v38) && v38)
  {
    get_cipher = v36->get_cipher;
    do
    {
      v40 = *v37++;
      *get_cipher = v40;
      get_cipher = (get_cipher + 1);
      --v38;
    }

    while (v38);
  }

  default_passwd_callback_userdata = v57[1].default_passwd_callback_userdata;
  if (default_passwd_callback_userdata)
  {
    SSL_CREDENTIAL_up_ref(v57[1].default_passwd_callback_userdata);
  }

  v42 = v56->method;
  v55 = 0;
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&v42->get_timeout, default_passwd_callback_userdata);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
  v43 = v56->method;
  client_cert_cb = v57[1].client_cert_cb;
  app_gen_cookie_cb = v57[1].app_gen_cookie_cb;
  if (bssl::Array<unsigned char>::InitUninitialized(&v43->ssl3_enc, app_gen_cookie_cb))
  {
    v46 = app_gen_cookie_cb == 0;
  }

  else
  {
    v46 = 1;
  }

  if (!v46)
  {
    ssl3_enc = v43->ssl3_enc;
    do
    {
      v48 = *client_cert_cb;
      client_cert_cb = (client_cert_cb + 1);
      *ssl3_enc = v48;
      ssl3_enc = (ssl3_enc + 1);
      --app_gen_cookie_cb;
    }

    while (app_gen_cookie_cb);
  }

  app_verify_cookie_cb = v57[1].app_verify_cookie_cb;
  if (app_verify_cookie_cb)
  {
    SSL_CREDENTIAL_up_ref(v57[1].app_verify_cookie_cb);
  }

  v50 = v56->method;
  v55 = 0;
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&v50->ssl_callback_ctrl, app_verify_cookie_cb);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](&v55, 0);
  v51 = v56;
  LOWORD(v56->method->ssl_ctx_callback_ctrl) = v57[1].ex_data.sk;
  if (!(*(*&v51->version + 8))(v51) || ((*(*&v56->s2->wnum + 88))(*(v56->handshake_func + 35)) & 1) == 0)
  {
    goto LABEL_39;
  }

  v52 = v56;
  v56 = 0;
LABEL_40:
  std::unique_ptr<ssl_st,bssl::internal::Deleter>::reset[abi:ne200100](&v56, 0);
  return v52;
}

void sub_1A8FFAA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ssl_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void bssl::New<ssl_st,ssl_ctx_st *&>(ssl2_state_st **a1)
{
  v2 = OPENSSL_malloc(0xB8uLL);
  if (v2)
  {
    ssl_st::ssl_st(v2, *a1);
  }
}

void ssl_st::ssl_st(ssl_st *this, ssl2_state_st *a2)
{
  *&this->version = *&a2->escape;
  this->method = 0;
  v4 = *&a2[1].challenge[30];
  *&this->server = 0;
  *&this->wbio = 0u;
  *&this->rwstate = 0u;
  v5 = *&a2[1].ract_data;
  this->packet = 0;
  LOWORD(this->rbio) = v4;
  *&this->quiet_shutdown = v5;
  this->init_buf = 0;
  this->init_msg = 0;
  this->init_num = 1000;
  *&this->packet_length = 0;
  CRYPTO_refcount_inc(a2);
  this->s2 = a2;
  CRYPTO_refcount_inc(a2);
  s2 = this->s2;
  *&this->read_ahead = *&s2[1].padding;
  ract_data_length = s2[1].ract_data_length;
  this->msg_callback_arg = 0;
  this->s3 = a2;
  LODWORD(this->msg_callback) = ract_data_length;
  *&this->hit = 0;
  LODWORD(this->param) = 0;
  LOBYTE(ract_data_length) = BYTE4(this->param);
  BYTE4(this->param) = ract_data_length & 0xFE;
  LOBYTE(ract_data_length) = s2[2].challenge[20] & 2 | ract_data_length & 0xFC;
  BYTE4(this->param) = ract_data_length;
  BYTE4(this->param) = s2[2].challenge[21] & 4 | ract_data_length & 0xFB;
  CRYPTO_new_ex_data(this + 136, v8, v9);
}

void sub_1A8FFAB84(_Unwind_Exception *a1)
{
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v5, 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 128), 0);
  std::unique_ptr<ssl_ctx_st,bssl::internal::Deleter>::reset[abi:ne200100]((v4 + 16), 0);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v4, 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100]((v2 + 32), 0);
  std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

double bssl::New<bssl::SSL_CONFIG,ssl_st *>(ssl_st **a1)
{
  v2 = OPENSSL_malloc(0x138uLL);
  if (v2)
  {
    return bssl::SSL_CONFIG::SSL_CONFIG(v2, *a1);
  }

  return result;
}

void bssl::ssl_cert_dup(bssl *this@<X0>, bssl::CERT **a2@<X8>)
{
  v17 = bssl::New<bssl::CERT,bssl::SSL_X509_METHOD const*&>(this + 4);
  if (!v17)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *this;
    v7 = 8 * v5;
    while (1)
    {
      v8 = v17;
      v9 = *v6;
      if (*v6)
      {
        SSL_CREDENTIAL_up_ref(*v6);
      }

      v16 = v9;
      if ((bssl::Vector<std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>>::MaybeGrow(v17) & 1) == 0)
      {
        break;
      }

      v10 = *(v17 + 1);
      *(*v17 + 8 * v10) = v9;
      *(v8 + 1) = v10 + 1;
      v16 = 0;
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (v9)
    {
      SSL_CREDENTIAL_free(v9);
    }

    goto LABEL_14;
  }

LABEL_8:
  ssl_credential_st::Dup(*(this + 3), &v15);
  v11 = v15;
  v15 = 0;
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v17 + 3, v11);
  v12 = v15;
  v15 = 0;
  if (v12)
  {
    SSL_CREDENTIAL_free(v12);
  }

  v13 = v17;
  v14 = *(v17 + 3);
  if (v14)
  {
    *(v17 + 4) = *(this + 4);
    (*(*(v13 + 4) + 24))();
    bssl::InplaceVector<unsigned char,32ul>::operator=(v17 + 88, this + 88);
    v14 = v17;
    v17 = 0;
  }

LABEL_15:
  *a2 = v14;
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](&v17, 0);
}

void sub_1A8FFAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void *bssl::New<bssl::CERT,bssl::SSL_X509_METHOD const*&>(uint64_t *a1)
{
  result = OPENSSL_malloc(0x80uLL);
  if (result)
  {
    return bssl::CERT::CERT(result, *a1);
  }

  return result;
}

void std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](BUF_MEM ***a1, BUF_MEM **a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::SSL_CONFIG::~SSL_CONFIG(v3);
    OPENSSL_free(v4);
  }
}

double bssl::SSL_CONFIG::SSL_CONFIG(bssl::SSL_CONFIG *this, ssl_st *a2)
{
  *this = a2;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 232) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 112) = 0;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 293) = 0u;
  *(this + 309) = *(this + 309) & 0x1800 | 0xC010;
  if (!a2)
  {
    __assert_rtn("SSL_CONFIG", "ssl_lib.cc", 736, "ssl");
  }

  return result;
}

void sub_1A8FFAEA4(_Unwind_Exception *a1)
{
  bssl::Array<unsigned char>::~Array(v1 + 288);
  std::unique_ptr<stack_st_SRTP_PROTECTION_PROFILE,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 280), 0);
  bssl::Array<unsigned char>::~Array(v1 + 264);
  bssl::Array<unsigned char>::~Array(v1 + 248);
  bssl::Array<unsigned char>::~Array(v2);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 216), 0);
  bssl::Array<unsigned char>::~Array(v1 + 200);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 192), 0);
  bssl::Array<unsigned char>::~Array(v1 + 176);
  bssl::Vector<bssl::ALPSConfig>::~Vector((v1 + 152));
  bssl::Array<unsigned char>::~Array(v1 + 136);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 128), 0);
  bssl::Array<unsigned char>::~Array(v1 + 112);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 104), 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 88), 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 56), 0);
  std::unique_ptr<bssl::CERT,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 32), 0);
  std::unique_ptr<bssl::SSLCipherPreferenceList,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 24), 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::Array<unsigned short>::InitUninitialized(uint64_t a1, uint64_t a2)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = OPENSSL_malloc(2 * a2);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    *(a1 + 8) = a2;
    return 1;
  }

  ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/internal.h", 382);
  return 0;
}

void std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](EVP_PKEY **a1, EVP_PKEY *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    EVP_PKEY_free(v3);
  }
}

void std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](unsigned int **a1, unsigned int *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CRYPTO_BUFFER_free(v3);
  }
}

unsigned int *CRYPTO_refcount_inc(unsigned int *result)
{
  v1 = atomic_load(result);
  if (v1 != -1)
  {
    for (i = v1; i != -1; v1 = i)
    {
      atomic_compare_exchange_strong(result, &i, v1 + 1);
      if (i == v1)
      {
        break;
      }
    }
  }

  return result;
}

void std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](ssl_credential_st **a1, ssl_credential_st *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::RefCounted<ssl_credential_st>::DecRefInternal(v3);
  }
}

char *bssl::InplaceVector<unsigned char,32ul>::operator=(char *result, char *a2)
{
  if (result != a2)
  {
    v2 = a2[32];
    if (v2 > 0x20)
    {
      abort();
    }

    result[32] = 0;
    if (v2)
    {
      v3 = v2;
      v4 = result;
      do
      {
        v5 = *a2++;
        *v4++ = v5;
        --v3;
      }

      while (v3);
    }

    result[32] = v2;
  }

  return result;
}

uint64_t boringssl_session_get_state(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return *(v1 + 292);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CRYPTO_refcount_dec_and_test_zero(unsigned int *a1)
{
  for (i = atomic_load(a1); ; i = v2)
  {
    if (i == -1)
    {
      return 0;
    }

    if (!i)
    {
      abort();
    }

    v2 = i;
    atomic_compare_exchange_strong(a1, &v2, i - 1);
    if (v2 == i)
    {
      break;
    }
  }

  return i == 1;
}

uint64_t bssl::Array<unsigned char>::~Array(uint64_t a1)
{
  OPENSSL_free(*a1);
  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t CRYPTO_sysrand(uint64_t a1, uint64_t a2)
{
  v4 = ccrng();
  if (!v4)
  {
    abort();
  }

  return (*v4)(v4, a2, a1);
}

void std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](BUF_MEM **a1, BUF_MEM *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    BUF_MEM_free(v3);
  }
}

void std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSLAEADContext **a1, bssl::SSLAEADContext *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::SSLAEADContext::~SSLAEADContext(v3);
    OPENSSL_free(v4);
  }
}

void bssl::SSLAEADContext::CreateRecordNumberEncrypter(bssl::SSLAEADContext *this)
{
  if (*this)
  {
    v2 = *(*this + 28);
    switch(v2)
    {
      case 64:
        v5 = OPENSSL_malloc(0x28uLL);
        if (v5)
        {
          *(v5 + 3) = 0u;
          *(v5 + 1) = 0u;
          *v5 = &unk_1F1CB08B0;
        }

        v6 = 0;
        std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](this + 76, v5);
        std::unique_ptr<bssl::ChaChaRecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](&v6, 0);
        break;
      case 16:
        v4 = OPENSSL_malloc(0x100uLL);
        if (v4)
        {
          v4[31] = 0;
          *(v4 + 29) = 0u;
          *(v4 + 27) = 0u;
          *(v4 + 25) = 0u;
          *(v4 + 23) = 0u;
          *(v4 + 21) = 0u;
          *(v4 + 19) = 0u;
          *(v4 + 17) = 0u;
          *(v4 + 15) = 0u;
          *(v4 + 13) = 0u;
          *(v4 + 11) = 0u;
          *(v4 + 9) = 0u;
          *(v4 + 7) = 0u;
          *(v4 + 5) = 0u;
          *(v4 + 3) = 0u;
          *(v4 + 1) = 0u;
          *v4 = &unk_1F1CB0860;
        }

        v6 = 0;
        std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](this + 76, v4);
        std::unique_ptr<bssl::AES256RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](&v6, 0);
        break;
      case 8:
        v3 = OPENSSL_malloc(0x100uLL);
        if (v3)
        {
          v3[31] = 0;
          *(v3 + 29) = 0u;
          *(v3 + 27) = 0u;
          *(v3 + 25) = 0u;
          *(v3 + 23) = 0u;
          *(v3 + 21) = 0u;
          *(v3 + 19) = 0u;
          *(v3 + 17) = 0u;
          *(v3 + 15) = 0u;
          *(v3 + 13) = 0u;
          *(v3 + 11) = 0u;
          *(v3 + 9) = 0u;
          *(v3 + 7) = 0u;
          *(v3 + 5) = 0u;
          *(v3 + 3) = 0u;
          *(v3 + 1) = 0u;
          *v3 = &unk_1F1CB07E8;
        }

        v6 = 0;
        std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](this + 76, v3);
        std::unique_ptr<bssl::AES128RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100](&v6, 0);
        break;
    }
  }
}

bssl::SSLAEADContext *bssl::SSLAEADContext::SSLAEADContext(bssl::SSLAEADContext *this, const ssl_cipher_st *a2)
{
  *this = a2;
  EVP_AEAD_CTX_zero(this + 8);
  *(this + 302) = 0;
  *(this + 76) = 0;
  *(this + 616) &= 0xE0u;
  bssl::SSLAEADContext::CreateRecordNumberEncrypter(this);
  return this;
}

void sub_1A8FFB4B8(_Unwind_Exception *a1)
{
  std::unique_ptr<bssl::RecordNumberEncrypter,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 608), 0);
  *(v1 + 604) = 0;
  EVP_AEAD_CTX_cleanup(v1 + 8);
  _Unwind_Resume(a1);
}

int EVP_MD_CTX_cleanup(EVP_MD_CTX *ctx)
{
  OPENSSL_free(ctx->engine);
  md_data = ctx->md_data;
  if (ctx->flags)
  {
    if (!md_data)
    {
      EVP_MD_CTX_cleanup_cold_1();
    }

    goto LABEL_5;
  }

  if (md_data)
  {
LABEL_5:
    (*md_data)();
  }

  *&ctx->digest = 0u;
  *&ctx->flags = 0u;
  return 1;
}

void ssl_credential_st::~ssl_credential_st(ssl_credential_st *this)
{
  CRYPTO_free_ex_data(&g_ex_data_class, this, (this + 184));
  bssl::Array<unsigned char>::~Array(this + 168);
  bssl::Array<unsigned char>::~Array(this + 152);
  bssl::Array<unsigned char>::~Array(this + 136);
  bssl::Array<unsigned char>::~Array(this + 120);
  bssl::Array<unsigned char>::~Array(this + 104);
  bssl::Array<unsigned char>::~Array(this + 88);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 9, 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 7, 0);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](this + 6, 0);
  bssl::Array<unsigned char>::~Array(this + 32);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 1, 0);
}

void bssl::RefCounted<ssl_credential_st>::DecRefInternal(ssl_credential_st *a1)
{
  if (CRYPTO_refcount_dec_and_test_zero(a1))
  {
    ssl_credential_st::~ssl_credential_st(a1);

    OPENSSL_free(v2);
  }
}

void ssl_credential_st::Dup(ssl_credential_st *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 1);
  v4 = (this + 4);
  if (v5)
  {
    ssl_credential_st::Dup();
  }

  v6 = bssl::New<ssl_credential_st,bssl::SSLCredentialType>(v4);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(this + 1);
  if (v7)
  {
    EVP_PKEY_up_ref(*(this + 1));
  }

  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 1, v7);
  v8 = *(this + 2);
  if (v8)
  {
    EVP_PKEY_up_ref(*(this + 2));
  }

  std::unique_ptr<evp_pkey_st,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 2, v8);
  v9 = *(this + 4);
  v6[3] = *(this + 3);
  v10 = *(this + 5);
  if (bssl::Array<unsigned short>::InitUninitialized((v6 + 4), v10))
  {
    if (v10)
    {
      v11 = v6[4];
      v12 = 2 * v10;
      do
      {
        v13 = *v9++;
        *v11++ = v13;
        v12 -= 2;
      }

      while (v12);
    }

    v14 = *(this + 6);
    if (!v14 || (v15 = OPENSSL_sk_deep_copy(v14, sk_CRYPTO_BUFFER_call_copy_func, buffer_up_ref, sk_CRYPTO_BUFFER_call_free_func, CRYPTO_BUFFER_free), std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 6, v15), v6[6]))
    {
      v16 = *(this + 7);
      if (v16)
      {
        CRYPTO_BUFFER_up_ref(*(this + 7));
      }

      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 7, v16);
      v17 = *(this + 9);
      if (v17)
      {
        CRYPTO_BUFFER_up_ref(*(this + 9));
      }

      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 9, v17);
      v18 = *(this + 10);
      if (v18)
      {
        CRYPTO_BUFFER_up_ref(*(this + 10));
      }

      std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100](v6 + 10, v18);
      *(v6 + 32) = *(this + 32);
LABEL_20:
      *a2 = v6;
      return;
    }
  }

  *a2 = 0;
  bssl::RefCounted<ssl_credential_st>::DecRefInternal(v6);
}

void sub_1A8FFB89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::tls_new(ssl_st *this, ssl_st *a2)
{
  bssl::New<bssl::SSL3_STATE>();
  v11 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  bssl::SSLAEADContext::CreateNullCipher(&v10);
  v4 = v10;
  v10 = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v11 + 33, v4);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v10, 0);
  bssl::SSLAEADContext::CreateNullCipher(&v10);
  v5 = v10;
  v10 = 0;
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](v11 + 34, v5);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v10, 0);
  bssl::ssl_handshake_new(this, &v10);
  v6 = v10;
  v10 = 0;
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](v11 + 35, v6);
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](&v10, 0);
  v7 = v11;
  if (!v11[33])
  {
    goto LABEL_6;
  }

  if (v11[34] && v11[35])
  {
    v11 = 0;
    this->handshake_func = v7;
    v8 = 1;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  std::unique_ptr<bssl::SSL3_STATE,bssl::internal::Deleter>::reset[abi:ne200100](&v11, 0);
  return v8;
}

void sub_1A8FFB9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<bssl::SSL3_STATE,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

double bssl::New<bssl::SSL3_STATE>()
{
  v0 = OPENSSL_malloc(0x260uLL);
  if (v0)
  {
    *(v0 + 43) = 0;
    *(v0 + 44) = 0;
    *(v0 + 54) = 0;
    *(v0 + 110) = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 111) = 0;
    *(v0 + 103) = 0;
    *(v0 + 118) = 0;
    *(v0 + 127) = 0u;
    *(v0 + 143) = 0u;
    *(v0 + 153) = 0u;
    v0[24] = 0;
    v0[25] = 0;
    *(v0 + 207) = 0;
    v0[23] = 0;
    *(v0 + 111) &= 0xC000u;
    *(v0 + 344) = 0;
    *(v0 + 393) = 0;
    *(v0 + 442) = 0;
    *(v0 + 455) = 0;
    *(v0 + 234) = 0;
    *(v0 + 470) = 0;
    *(v0 + 14) = 0u;
    *(v0 + 15) = 0u;
    *(v0 + 64) = 0;
    *(v0 + 33) = 0u;
    *(v0 + 35) = 0u;
    *(v0 + 59) = 0u;
    *(v0 + 61) = 0u;
    *(v0 + 63) = 0u;
    *(v0 + 65) = 0u;
    *(v0 + 67) = 0u;
    *(v0 + 69) = 0u;
    *(v0 + 71) = 0u;
    *(v0 + 73) = 0u;
    v0[75] = 0;
  }

  return result;
}

bssl::SSLAEADContext *bssl::New<bssl::SSLAEADContext,decltype(nullptr)>()
{
  result = OPENSSL_malloc(0x270uLL);
  if (result)
  {
    return bssl::SSLAEADContext::SSLAEADContext(result, 0);
  }

  return result;
}

bssl::SSLAEADContext *bssl::SSLAEADContext::CreateNullCipher@<X0>(bssl::SSLAEADContext **a1@<X8>)
{
  result = bssl::New<bssl::SSLAEADContext,decltype(nullptr)>();
  *a1 = result;
  return result;
}

bssl::SSL_HANDSHAKE *bssl::New<bssl::SSL_HANDSHAKE,ssl_st *&>(ssl_st **a1)
{
  result = OPENSSL_malloc(0x6A8uLL);
  if (result)
  {
    return bssl::SSL_HANDSHAKE::SSL_HANDSHAKE(result, *a1);
  }

  return result;
}

void bssl::ssl_handshake_new(ssl_st *this@<X0>, bssl::SSL_HANDSHAKE **a2@<X8>)
{
  v8 = this;
  v4 = bssl::New<bssl::SSL_HANDSHAKE,ssl_st *&>(&v8);
  v7 = v4;
  if (v4 && bssl::SSLTranscript::Init((v4 + 424)))
  {
    v5 = v7;
    method = v8->method;
    *(v7 + 1) = method;
    if (!method)
    {
      __assert_rtn("ssl_handshake_new", "handshake.cc", 206, "hs->config");
    }

    v7 = 0;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](&v7, 0);
}

bssl::SSL_HANDSHAKE *bssl::SSL_HANDSHAKE::SSL_HANDSHAKE(bssl::SSL_HANDSHAKE *this, ssl_st *a2)
{
  *this = a2;
  *(this + 4) = 1;
  *(this + 80) = 0;
  *(this + 129) = 0;
  *(this + 178) = 0;
  *(this + 227) = 0;
  *(this + 276) = 0;
  *(this + 325) = 0;
  *(this + 374) = 0;
  *(this + 20) = 0;
  *(this + 7) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  v4 = SSL_is_dtls(a2) != 0;
  bssl::SSLTranscript::SSLTranscript((this + 424), v4);
  v5 = SSL_is_dtls(a2) != 0;
  bssl::SSLTranscript::SSLTranscript((this + 472), v5);
  *(this + 374) = 0;
  *(this + 750) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  EVP_HPKE_CTX_zero(this + 752);
  *(this + 199) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 1464) = 0u;
  *(this + 1480) = 0u;
  *(this + 400) &= 0xF8000000;
  *(this + 1612) = 0;
  *(this + 1604) = 0;
  *(this + 1645) = 0;
  *(this + 1656) = 0u;
  *(this + 1672) = 0u;
  *(this + 1688) = 0u;
  if (!*this)
  {
    __assert_rtn("SSL_HANDSHAKE", "handshake.cc", 164, "ssl");
  }

  RAND_bytes(this + 1646, 7);
  return this;
}

void sub_1A8FFBD1C(_Unwind_Exception *a1)
{
  bssl::Array<unsigned char>::~Array(v1 + 728);
  bssl::Array<unsigned char>::~Array(v1 + 712);
  bssl::Array<unsigned char>::~Array(v1 + 696);
  bssl::Array<unsigned char>::~Array(v1 + 680);
  bssl::Array<unsigned char>::~Array(v1 + 664);
  bssl::Array<unsigned char>::~Array(v1 + 648);
  bssl::Array<unsigned char>::~Array(v1 + 632);
  bssl::Array<unsigned char>::~Array(v1 + 616);
  bssl::Array<unsigned char>::~Array(v1 + 600);
  bssl::Array<unsigned char>::~Array(v1 + 584);
  bssl::Array<unsigned char>::~Array(v1 + 568);
  bssl::Array<unsigned char>::~Array(v1 + 552);
  bssl::SSLTranscript::~SSLTranscript((v1 + 472));
  bssl::SSLTranscript::~SSLTranscript((v1 + 424));
  v3 = (v1 + 400);
  v4 = -16;
  do
  {
    std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100](v3--, 0);
    v4 += 8;
  }

  while (v4);
  std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 384), 0);
  *(v1 + 374) = 0;
  *(v1 + 325) = 0;
  *(v1 + 276) = 0;
  *(v1 + 227) = 0;
  *(v1 + 178) = 0;
  *(v1 + 129) = 0;
  *(v1 + 80) = 0;
  _Unwind_Resume(a1);
}

bssl::SSLTranscript *bssl::SSLTranscript::SSLTranscript(bssl::SSLTranscript *this, char a2)
{
  *this = 0;
  EVP_MD_CTX_init((this + 8));
  *(this + 40) = *(this + 40) & 0xFE | a2;
  *(this + 21) = 0;
  return this;
}

void EVP_HPKE_CTX_zero(uint64_t a1)
{
  bzero(a1, 0x2C8uLL);

  EVP_AEAD_CTX_zero((a1 + 24));
}

BOOL bssl::SSLTranscript::Init(bssl::SSLTranscript *this)
{
  v2 = BUF_MEM_new();
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this, v2);
  v3 = *this;
  if (*this)
  {
    EVP_MD_CTX_cleanup((this + 8));
    EVP_MD_CTX_init((this + 8));
  }

  return v3 != 0;
}

void std::unique_ptr<bssl::SSL_HANDSHAKE,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSL_HANDSHAKE **a1, bssl::SSL_HANDSHAKE *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::SSL_HANDSHAKE::~SSL_HANDSHAKE(v3);
    OPENSSL_free(v4);
  }
}

void std::unique_ptr<bssl::SSL3_STATE,bssl::internal::Deleter>::reset[abi:ne200100](bssl::SSL3_STATE **a1, bssl::SSL3_STATE *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    bssl::SSL3_STATE::~SSL3_STATE(v3);
    OPENSSL_free(v4);
  }
}

void std::unique_ptr<ssl_st,bssl::internal::Deleter>::reset[abi:ne200100](ssl_st **a1, ssl_st *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ssl_st::~ssl_st(v3);
    OPENSSL_free(v4);
  }
}

uint64_t boringssl_context_set_min_version(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1 && *a1 == -1252936367 && (v4 = *(a1 + 8)) != 0 && *(v4 + 392))
  {
    if (os_variant_has_internal_content() && boringssl_config_get_restricted_mode_state() && (*a1 != -1252936367 || (v6 = *(a1 + 8)) == 0 || (*(v6 + 548) & 0x20) != 0 ? (v7 = boringssl_config_restricted_mode_restrict_dtls_version(a2)) : (v7 = boringssl_config_restricted_mode_restrict_tls_version(a2)), v10 = v7, v7 != a2))
    {
      WeakRetained = objc_loadWeakRetained((v4 + 16));
      if (!WeakRetained || (v19 = WeakRetained, v20 = objc_loadWeakRetained((v4 + 16)), v21 = v20[435], v20, v19, (v21 & 1) == 0))
      {
        v22 = objc_loadWeakRetained((v4 + 16));
        if (v22)
        {
          v23 = objc_loadWeakRetained((v4 + 16));
          v24 = (v23[435] & 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          if (g_boringssl_log)
          {
            v26 = g_boringssl_log;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = objc_loadWeakRetained((v4 + 16));
              if (v27)
              {
                v2 = objc_loadWeakRetained((v4 + 16));
                v28 = v2 + 351;
              }

              else
              {
                v28 = &unk_1A9098A9F;
              }

              v29 = objc_loadWeakRetained((v4 + 16));
              v30 = 136447490;
              v31 = "boringssl_context_set_min_version";
              v32 = 1024;
              v33 = 183;
              v34 = 2082;
              v35 = v28;
              v36 = 2048;
              v37 = v29;
              v38 = 1024;
              v39 = a2;
              v40 = 1024;
              v41 = v10;
              _os_log_debug_impl(&dword_1A8FF5000, v26, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Restricted mode: Provided minimum version (0x%x) was capped to (0x%x).", &v30, 0x32u);

              if (v27)
              {
              }
            }
          }
        }
      }
    }

    else
    {
      LOWORD(v10) = a2;
    }

    if (SSL_set_min_proto_version(*(v4 + 392), v10))
    {
      result = 0;
      *(v4 + 50) = v10;
      goto LABEL_12;
    }

    v11 = objc_loadWeakRetained((v4 + 16));
    if (v11)
    {
      v12 = v11;
      v13 = objc_loadWeakRetained((v4 + 16));
      v14 = v13[435];

      if (v14)
      {
LABEL_32:
        result = 0;
        goto LABEL_12;
      }
    }

    v15 = objc_loadWeakRetained((v4 + 16));
    if (v15)
    {
      v16 = objc_loadWeakRetained((v4 + 16));
      v17 = (v16[435] & 1) == 0;
    }

    else
    {
      v17 = 1;
    }

    result = 0;
    if (v17 && g_boringssl_log)
    {
      v25 = g_boringssl_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        boringssl_context_set_min_version_cold_1();
      }

      goto LABEL_32;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t boringssl_config_get_restricted_mode_state()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (check_and_init_restricted_mode_onceToken != -1)
    {
      boringssl_config_get_restricted_mode_state_cold_1();
    }

    return boringssl_config_restricted_mode_status;
  }

  return result;
}

uint64_t bssl::set_version_bound(_BYTE *a1, _WORD *a2, unsigned __int16 *a3)
{
  v3 = a3;
  if (!bssl::ssl_protocol_version_from_wire(v12, a3))
  {
    goto LABEL_13;
  }

  v6 = 6;
  if (*a1)
  {
    v6 = 4;
  }

  v7 = &bssl::kTLSVersions;
  if (*a1)
  {
    v7 = &bssl::kDTLSVersions;
  }

  do
  {
    v9 = *v7++;
    v8 = v9;
    v10 = v9 == v3 || v6 == 0;
    v6 -= 2;
  }

  while (!v10);
  if (v8 == v3)
  {
    *a2 = v3;
    return 1;
  }

  else
  {
LABEL_13:
    ERR_put_error(16, 0, 234, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_versions.cc", 139);
    return 0;
  }
}

uint64_t boringssl_context_set_max_version(uint64_t a1, unsigned __int16 a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (SSL_set_max_proto_version(v3, a2))
  {
    result = 0;
    *(v2 + 48) = a2;
    return result;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 16));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained((v2 + 16));
    v9 = v8[435];

    if (v9)
    {
      return 0;
    }
  }

  v10 = objc_loadWeakRetained((v2 + 16));
  if (v10)
  {
    v11 = objc_loadWeakRetained((v2 + 16));
    v12 = (v11[435] & 1) == 0;
  }

  else
  {
    v12 = 1;
  }

  result = 0;
  if (v12 && g_boringssl_log)
  {
    v13 = g_boringssl_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      boringssl_context_set_max_version_cold_1();
    }

    return 0;
  }

  return result;
}

uint64_t SSL_set_min_proto_version(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    return bssl::set_version_bound(v3, (v2 + 10), a2);
  }

  if (*v3)
  {
    v5 = -259;
  }

  else
  {
    v5 = 771;
  }

  *(v2 + 10) = v5;
  return 1;
}

uint64_t SSL_set_max_proto_version(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  if (a2)
  {
    return bssl::set_version_bound(v3, (v2 + 8), a2);
  }

  if (*v3)
  {
    v5 = -259;
  }

  else
  {
    v5 = 772;
  }

  *(v2 + 8) = v5;
  return 1;
}

void *boringssl_ciphers_copy_default_ciphersuites(unint64_t *a1)
{
  if (os_variant_has_internal_content() && boringssl_config_get_restricted_mode_state())
  {
    v7 = 0;
    v2 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
    {
      boringssl_ciphers_copy_default_ciphersuites_cold_1(v2);
    }

    v3 = &v7;
    v4 = 1;
  }

  else
  {
    v6 = 0x10000;
    v3 = &v6;
    v4 = 2;
  }

  return boringssl_ciphers_copy_supported_list_for_groups(v3, v4, a1);
}

uint64_t SSL_set_cert_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *(v3 + 32);
    *(v4 + 64) = a2;
    *(v4 + 72) = a3;
  }

  return result;
}

void *SSL_get_cipher_by_value(int a1)
{
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v3 = v1;
  v4 = v1;
  LODWORD(v4) = a1 | 0x3000000;
  return bsearch(&v3, bssl::kCiphers, 0x26uLL, 0x28uLL, ssl_cipher_id_cmp_void);
}

void *boringssl_ciphers_copy_supported_list_for_groups(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  *a3 = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_ciphers_copy_supported_list_for_groups_cold_2();
    }

    return 0;
  }

  v7 = Mutable;
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 2 * v8);
      v19 = 0;
      v10 = sec_protocol_helper_ciphersuite_group_to_ciphersuite_list();
      if (v19)
      {
        v11 = v10;
        for (i = 0; i < v19; ++i)
        {
          *bytes = *(v11 + 2 * i);
          CFDataAppendBytes(v7, bytes, 2);
        }
      }

      ++v8;
    }

    while (v8 != a2);
  }

  Length = CFDataGetLength(v7);
  v14 = malloc_type_malloc(Length & 0xFFFFFFFFFFFFFFFELL, 0x1000040BDFB0063uLL);
  if (!v14)
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      boringssl_ciphers_copy_supported_list_for_groups_cold_1();
    }

    CFRelease(v7);
    return 0;
  }

  v15 = v14;
  BytePtr = CFDataGetBytePtr(v7);
  memcpy(v15, BytePtr, Length & 0xFFFFFFFFFFFFFFFELL);
  *a3 = Length >> 1;
  CFRelease(v7);
  return v15;
}

uint64_t boringssl_context_set_cipher_suites(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1 || *a1 != -1252936367)
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v4 = 0xFFFFFFFFLL;
  if (a3)
  {
    v5 = a2;
    if (a2)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        if (*(v6 + 400))
        {
          v7 = 0;
          v8 = 2 * a3;
          v9 = a3;
          while (1)
          {
            cipher_by_value = SSL_get_cipher_by_value(v5[v7 / 2]);
            if (cipher_by_value)
            {
              if (SSL_CIPHER_get_auth_nid(cipher_by_value) == 956 && *a1 == -1252936367)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  if (*(v11 + 48) == 772)
                  {
                    break;
                  }
                }
              }
            }

            v7 += 2;
            if (v8 == v7)
            {
              goto LABEL_14;
            }
          }

          boringssl_context_set_max_version(a1, 0x303u);
LABEL_14:
          bzero(v32, 0x400uLL);
          v12 = boringssl_ciphers_fillout_configuration_string(v5, v9, v32, 0x400uLL);
          v13 = *(v6 + 80);
          if (v13)
          {
            free(v13);
            *(v6 + 80) = 0;
          }

          if (v12)
          {
            configuration_string = strndup(v12, 0x400uLL);
          }

          else
          {
            configuration_string = boringssl_ciphers_create_configuration_string(v5, v9);
          }

          v17 = configuration_string;
          *(v6 + 80) = configuration_string;
          if (configuration_string)
          {
            if (*a1 != -1252936367)
            {
              goto LABEL_39;
            }

            v18 = *(a1 + 8);
            if (v18)
            {
              v19 = *(v18 + 392);
              if (v19)
              {
                if (SSL_set_strict_cipher_list(v19, v17))
                {
                  v4 = 0;
LABEL_41:
                  if (*a1 == -1252936367 && (v28 = *(a1 + 8)) != 0 && *(v28 + 48) == 772)
                  {
                    boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(a1, 0);
                    boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(a1, 0);
                    v29 = 0;
                    do
                    {
                      v31 = *v5++;
                      v30 = v31;
                      if ((v31 - 4865) >= 2)
                      {
                        if (v30 == 4867)
                        {
                          v29 = 1;
                          boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(a1, 1);
                        }
                      }

                      else
                      {
                        v29 = 1;
                        boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(a1, 1);
                      }

                      --v9;
                    }

                    while (v9);
                    if ((v29 & 1) == 0)
                    {
                      boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(a1, 1);
                      boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(a1, 1);
                    }
                  }

                  else
                  {
                    boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(a1, 0);
                    boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(a1, 0);
                  }

                  goto LABEL_19;
                }

                WeakRetained = objc_loadWeakRetained((v18 + 16));
                if (!WeakRetained || (v21 = WeakRetained, v22 = objc_loadWeakRetained((v18 + 16)), v23 = v22[435], v22, v21, (v23 & 1) == 0))
                {
                  v24 = objc_loadWeakRetained((v18 + 16));
                  if (v24)
                  {
                    v25 = objc_loadWeakRetained((v18 + 16));
                    v26 = (v25[435] & 1) == 0;
                  }

                  else
                  {
                    v26 = 1;
                  }

                  if (v26)
                  {
                    if (g_boringssl_log)
                    {
                      v27 = g_boringssl_log;
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        boringssl_context_set_cipher_suites_cold_1();
                      }
                    }
                  }
                }
              }
            }

            v17 = *(v6 + 80);
            if (v17)
            {
LABEL_39:
              free(v17);
              *(v6 + 80) = 0;
            }
          }

          v4 = 0xFFFFFFFFLL;
          goto LABEL_41;
        }
      }
    }
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t SSL_CIPHER_get_auth_nid(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 7)
  {
    if ((v1 - 1) < 2)
    {
      return 954;
    }

    if (v1 == 4)
    {
      return 955;
    }

LABEL_10:
    SSL_CIPHER_get_auth_nid_cold_1();
  }

  if (v1 != 8)
  {
    if (v1 == 16)
    {
      return 958;
    }

    goto LABEL_10;
  }

  return 956;
}

void nw_protocol_boringssl_get_output_frames_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_boringssl_get_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v9 = nw_protocol_downcast();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if ((*(v9 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_get_output_frames_cold_1();
  }

  v11 = 0;
  if (a5 && a6)
  {
    if ((*(v10 + 348) & 0x20) != 0)
    {
      if ((*(v10 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_get_output_frames_cold_2();
        return v18;
      }
    }

    else
    {
      state = boringssl_session_get_state(*(v10 + 296));
      v13 = boringssl_session_in_early_data(*(v10 + 296));
      v14 = *(v10 + 435);
      if (state != 2 && (v13 & 1) == 0)
      {
        if ((*(v10 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_get_output_frames_cold_3(v10, state, &v18);
          return v18;
        }

        return 0;
      }

      if ((*(v10 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_get_output_frames_cold_4();
      }

      nw_frame_array_init();
      if (a4 <= 0x4000 || nw_batching_plaintxt_size <= 0x4000 || (boringssl_context_is_dtls(*(v10 + 296)) & 1) != 0)
      {
        if (a4 >= 0x4000)
        {
          a4 = 0x4000;
        }
      }

      else
      {
        if (nw_batching_plaintxt_size < a4)
        {
          a4 = nw_batching_plaintxt_size;
        }

        if ((*(v10 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_get_output_frames_cold_5(v10, a4, &v18);
          a4 = v18;
        }
      }

      if ((*(v10 + 349) & 0x10) != 0)
      {
        external = nw_frame_create_external();
        if (external)
        {
          goto LABEL_35;
        }

        if ((*(v10 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_get_output_frames_cold_6();
          return v18;
        }
      }

      else
      {
        if (a4 && !malloc_type_malloc(a4, 0x100004077774924uLL))
        {
          if ((*(v10 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_get_output_frames_cold_7();
            return v18;
          }

          return 0;
        }

        external = nw_frame_create();
        if (external)
        {
LABEL_35:
          v17 = external;
          nw_frame_array_append();
          v11 = 1;
          nw_frame_array_append();

          return v11;
        }

        if ((*(v10 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_get_output_frames_cold_8();
          return v18;
        }
      }
    }

    return 0;
  }

  return v11;
}

void nw_protocol_boringssl_get_output_frames_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x32u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_boringssl_finalize_output_frames(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = nw_protocol_downcast();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v1 + 435);
  if ((v3 & 1) == 0 && datapath_logging_enabled == 1 && g_boringssl_log)
  {
    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
    {
      nw_protocol_boringssl_finalize_output_frames_cold_1();
    }

    v3 = v2[435];
  }

  if ((v3 & 1) == 0)
  {
    nw_protocol_boringssl_finalize_output_frames_cold_2();
  }

  v4 = 1;
  nw_frame_array_append_array();
  nw_protocol_boringssl_write_frames(v2);
  return v4;
}

uint64_t boringssl_session_in_early_data(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_in_early_data(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_in_early_data(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return (*(v1 + 1600) >> 10) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SSL_max_seal_overhead(bssl *a1)
{
  if (SSL_is_dtls(a1))
  {
    v2 = *(*(a1 + 7) + 4);

    return bssl::dtls_max_seal_overhead(a1, v2);
  }

  else
  {
    v4 = bssl::SSLAEADContext::MaxOverhead(*(*(a1 + 6) + 272));
    v6 = v4 + 5;
    if (**(*(a1 + 6) + 272))
    {
      v7 = v4;
      if (bssl::ssl_protocol_version(a1, v5) > 0x303)
      {
        v6 = v7 + 6;
      }
    }

    return v6 << bssl::ssl_needs_record_splitting(a1, v5);
  }
}

uint64_t bssl::tls_seal_scatter_prefix_len(bssl *this, const ssl_st *a2, unint64_t a3)
{
  if (a2 == 23 && a3 >= 2 && bssl::ssl_needs_record_splitting(this, a2))
  {
    return bssl::ssl_cipher_get_record_split_len(**(*(this + 6) + 272), v4) + 9;
  }

  else
  {
    return bssl::SSLAEADContext::ExplicitNonceLen(*(*(this + 6) + 272)) + 5;
  }
}

void nw_protocol_boringssl_finalize_output_frames_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_write_frames_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_write_frames(void *a1)
{
  v1 = a1;
  if ((*(v1 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_write_frames_cold_1();
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    if ((*(v1 + 350) & 8) == 0)
    {
      *(v1 + 350) |= 8u;
      v2 = nw_frame_array_first();
      v3 = nw_frame_array_next();

      if (v3)
      {
        v19 = 0;
        v4 = nw_frame_array_unclaimed_length();
        if (*(v1 + 15))
        {
          v5 = nw_frame_unclaimed_length();
          v6 = v4 - v5;
          if (v4 < v5)
          {
            if ((*(v1 + 435) & 1) == 0)
            {
              nw_protocol_boringssl_write_frames_cold_4();
            }

LABEL_23:

            goto LABEL_24;
          }

          v7 = *(v1 + 32);
          v4 = v6 + v7;
          if (__CFADD__(v6, v7))
          {
            if ((*(v1 + 435) & 1) == 0)
            {
              nw_protocol_boringssl_write_frames_cold_3(v1, v1 + 32);
            }

            goto LABEL_23;
          }
        }

        alloc = dispatch_data_create_alloc();
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v9 = v1;
        v14 = v2;
        nw_frame_array_foreach();
        v10 = v9[14];
        v9[14] = alloc;
        v11 = alloc;

        *(v1 + 15) = v19;
        *(v9 + 32) = v4;

        _Block_object_dispose(&v15, 8);
      }

      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      LOBYTE(v18) = 1;
      v12 = v1;
      nw_frame_array_foreach();
      if (*(v12 + 19))
      {
        nw_protocol_boringssl_flush_batching_frame(v12, "end of write_frames");
      }

      *(v1 + 350) &= ~8u;
      if (*(v16 + 24))
      {
        v13 = 0;
      }

      else
      {
        v13 = 32;
      }

      *(v12 + 348) = *(v12 + 348) & 0xDF | v13;

      _Block_object_dispose(&v15, 8);
      goto LABEL_23;
    }

    if ((*(v1 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_write_frames_cold_2();
    }
  }

LABEL_24:
}

void sub_1A8FFD6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int SSL_write(SSL *ssl, const void *buf, int num)
{
  *(ssl->handshake_func + 49) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  if (*&ssl->hit)
  {
    v6 = 66;
    v7 = 1330;
LABEL_3:
    ERR_put_error(16, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v7);
    return -1;
  }

  if (!*&ssl->rwstate)
  {
    v6 = 226;
    v7 = 1335;
    goto LABEL_3;
  }

  v11 = 0;
  v10 = 0;
  do
  {
    v9 = *(ssl->handshake_func + 35);
    if (v9 && (*(v9 + 1600) & 0x2008) == 0)
    {
      result = SSL_do_handshake(ssl);
      if (result < 0)
      {
        return result;
      }

      if (!result)
      {
        v6 = 215;
        v7 = 1350;
        goto LABEL_3;
      }
    }

    if (num < 0)
    {
      v6 = 111;
      v7 = 1356;
      goto LABEL_3;
    }

    result = (*(*&ssl->version + 72))(ssl, &v10, &v11, buf, num);
  }

  while ((v10 & 1) != 0);
  if (result >= 1)
  {
    return v11;
  }

  return result;
}

uint64_t boringssl_session_write(void *a1, const void *a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  if (a3)
  {
    if (a2)
    {
      v6 = *(v4 + 392);
      if (v6)
      {
        v5 = SSL_write(v6, a2, a3);
        if (v5 <= 0)
        {
          error = SSL_get_error(*(v4 + 392), v5);
          WeakRetained = objc_loadWeakRetained((v4 + 16));
          if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v4 + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
          {
            v12 = objc_loadWeakRetained((v4 + 16));
            if (!v12 || (v13 = v12, v14 = objc_loadWeakRetained((v4 + 16)), v15 = v14[435], v14, v13, (v15 & 1) == 0))
            {
              if (datapath_logging_enabled == 1)
              {
                boringssl_session_write_cold_1(v4, error);
              }
            }
          }

          if (error == 3)
          {
            ++*(v4 + 480);
          }

          else
          {
            ERR_print_errors_cb(boringssl_session_handshake_error_print, a1);
          }
        }
      }
    }
  }

  return v5;
}

uint64_t bssl::tls_write_app_data(uint64_t a1, ssl_st *a2, unint64_t *a3, uint64_t a4, unint64_t a5)
{
  if ((bssl::ssl_can_write(a1, a2) & 1) == 0)
  {
    bssl::tls_write_app_data();
  }

  v10 = *(a1 + 48);
  if (!**(v10 + 272))
  {
    bssl::tls_write_app_data();
  }

  LOBYTE(a2->version) = 0;
  if (*(v10 + 176))
  {
    v11 = 194;
    v12 = 140;
    goto LABEL_7;
  }

  v13 = *(v10 + 144);
  v14 = a5 - v13;
  if (a5 < v13)
  {
    v11 = 111;
    v12 = 152;
LABEL_7:
    ERR_put_error(16, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", v12);
    return 0xFFFFFFFFLL;
  }

  v16 = a4 + v13;
  if ((*(a1 + 180) & 1) != 0 || !SSL_in_early_data(a1))
  {
    v17 = 0;
  }

  else
  {
    v17 = (*(*(*(a1 + 48) + 280) + 1601) >> 5) & 1;
  }

  while (1)
  {
    v18 = *(a1 + 16);
    if (v17)
    {
      v19 = *(a1 + 48);
      v20 = *(v19 + 280);
      v21 = *(v20 + 1608);
      v22 = *(*(v20 + 1544) + 380);
      v23 = v22 >= v21;
      v24 = v22 - v21;
      if (v24 == 0 || !v23)
      {
        *(v19 + 144) = v13;
        *(v20 + 1600) &= ~0x2000u;
        LOBYTE(a2->version) = 1;
        return 0xFFFFFFFFLL;
      }

      if (v24 < v18)
      {
        v18 = v24;
      }
    }

    v25 = (v14 >= v18 ? v18 : v14);
    v27 = 0xAAAAAAAAAAAAAAAALL;
    result = bssl::do_tls_write(a1, &v27, 0x17, v16, v25);
    if (result <= 0)
    {
      break;
    }

    v26 = v27;
    if (v27 > v25)
    {
      bssl::tls_write_app_data();
    }

    v23 = v14 >= v27;
    v14 -= v27;
    if (!v23)
    {
      abort();
    }

    if (v17)
    {
      *(*(*(a1 + 48) + 280) + 1608) += v27;
    }

    v13 += v26;
    if (!v14 || (*(a1 + 148) & 1) != 0)
    {
      *(*(a1 + 48) + 144) = 0;
      *a3 = v13;
      return result;
    }

    v16 += v26;
  }

  *(*(a1 + 48) + 144) = v13;
  return result;
}

uint64_t bssl::ssl_can_write(bssl *this, const ssl_st *a2)
{
  v2 = *(*(this + 6) + 280);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 1600);
  if ((v3 & 8) != 0)
  {
    return 1;
  }

  else
  {
    return (v3 >> 13) & 1;
  }
}

uint64_t bssl::do_tls_write(bssl *this, ssl_st *a2, ssl_st *a3, unint64_t a4, const unsigned __int8 *a5)
{
  v10 = *(this + 6);
  v11 = *(v10 + 160);
  if (v11 && (v11 > a5 || (*(this + 148) & 2) == 0 && *(v10 + 152) != a4 || *(v10 + 168) != a3))
  {
    v16 = 118;
    v17 = 232;
LABEL_10:
    ERR_put_error(16, 0, v16, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", v17);
    return 0xFFFFFFFFLL;
  }

  result = bssl::ssl_write_buffer_flush(this, a2);
  if (result < 1)
  {
    return result;
  }

  v14 = *(this + 6);
  v15 = *(v14 + 160);
  if (v15)
  {
    *&a2->version = v15;
    result = 1;
    *(v14 + 152) = 0;
    *(v14 + 160) = 0;
    return result;
  }

  if (a5 > 0x4000 || *(v14 + 116))
  {
    v16 = 68;
    v17 = 252;
    goto LABEL_10;
  }

  if (!bssl::tls_flush_pending_hs_data(this, v13))
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *(this + 6);
  v20 = *(v19 + 240);
  if (v20)
  {
    v21 = *(v19 + 248);
    v22 = *v20 - v21;
    if (*v20 < v21)
    {
      abort();
    }

    v23 = (v20[1] + v21);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = v22;
  if (a5)
  {
    v25 = SSL_max_seal_overhead(this);
    v26 = &a5[v25];
    v27 = __CFADD__(v25, a5);
    v24 = &v26[v22];
    v28 = __CFADD__(v26, v22);
    if (v27 || v28)
    {
      v16 = 69;
      v17 = 276;
      goto LABEL_10;
    }
  }

  if (!v24)
  {
    *&a2->version = 0;
    return 1;
  }

  v29 = bssl::tls_seal_align_prefix_len(this, v18);
  if (!bssl::SSLBuffer::EnsureCap((v14 + 104), v29 + v22, v24))
  {
    return 0xFFFFFFFFLL;
  }

  if (v22)
  {
    memcpy((*(v14 + 104) + *(v14 + 112) + *(v14 + 116)), v23, v22);
    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100]((*(this + 6) + 240), 0);
    *(*(this + 6) + 248) = 0;
    bssl::SSLBuffer::DidWrite(v14 + 104, v22);
  }

  if (a5)
  {
    *v32 = 0xAAAAAAAAAAAAAAAALL;
    if (!bssl::tls_seal_record(this, (*(v14 + 104) + *(v14 + 112) + *(v14 + 116)), v32, (*(v14 + 118) - *(v14 + 116)), a3, a4, a5))
    {
      return 0xFFFFFFFFLL;
    }

    bssl::SSLBuffer::DidWrite(v14 + 104, *v32);
  }

  *(*(this + 6) + 222) &= ~0x100u;
  result = bssl::ssl_write_buffer_flush(this, v30);
  if (result > 0)
  {
    *&a2->version = a5;
    return 1;
  }

  if (a5)
  {
    v31 = *(this + 6);
    *(v31 + 152) = a4;
    *(v31 + 160) = a5;
    *(*(this + 6) + 168) = a3;
  }

  return result;
}

uint64_t bssl::ssl_write_buffer_flush(bssl *this, ssl_st *a2)
{
  if (!*(this + 4))
  {
    ERR_put_error(16, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_buffer.cc", 325);
    return 0xFFFFFFFFLL;
  }

  is_dtls = SSL_is_dtls(this);
  v4 = *(this + 6);
  if (is_dtls)
  {
    if (*(v4 + 116))
    {
      result = BIO_write(*(this + 4), (*(v4 + 104) + *(v4 + 112)), *(v4 + 116));
      if (result <= 0)
      {
        *(*(this + 6) + 196) = 3;
      }

      else
      {
        result = 1;
      }

      *(v4 + 112) = *(v4 + 114);
      *(v4 + 116) = 0;
      *(v4 + 118) = *(v4 + 120);
      return result;
    }

    return 1;
  }

  v6 = *(v4 + 116);
  if (!v6)
  {
LABEL_12:
    *(v4 + 112) = *(v4 + 114);
    *(v4 + 116) = 0;
    *(v4 + 118) = *(v4 + 120);
    return 1;
  }

  v7 = *(v4 + 112);
  while (1)
  {
    result = BIO_write(*(this + 4), (*(v4 + 104) + v7), v6);
    if (result <= 0)
    {
      break;
    }

    v8 = *(v4 + 116);
    if (result > v8)
    {
      abort();
    }

    v7 = *(v4 + 112) + result;
    *(v4 + 112) = v7;
    v6 = v8 - result;
    *(v4 + 116) = v6;
    *(v4 + 118) -= result;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  *(*(this + 6) + 196) = 3;
  return result;
}

uint64_t bssl::ssl_do_msg_callback(uint64_t ssl, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(ssl + 64);
  if (v5)
  {
    v10 = ssl;
    if (a3)
    {
      if (a3 == 256)
      {
        v11 = 0;
      }

      else
      {
        v11 = SSL_version(ssl);
        v5 = *(v10 + 64);
      }
    }

    else
    {
      v11 = 2;
    }

    v12 = *(v10 + 72);

    return v5(a2, v11, a3, a4, a5, v10, v12);
  }

  return ssl;
}

uint64_t bssl::tls_flush_pending_hs_data(bssl *this, ssl_st *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 232);
  if (!v3)
  {
    return 1;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 1;
  }

  *(v2 + 232) = 0;
  v5 = *(this + 21);
  if (v5)
  {
    v6 = *(v2 + 280);
    if (v6 && (*(v6 + 1602) & 8) != 0 || (v7 = *(v2 + 204), (*(v5 + 16))()))
    {
      v8 = 1;
    }

    else
    {
      ERR_put_error(16, 0, 298, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 257);
      v8 = 0;
    }
  }

  else
  {
    v8 = bssl::add_record_to_flight(this, 0x16, *(v3 + 8), v4);
  }

  BUF_MEM_free(v3);
  return v8;
}

void sub_1A8FFE0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_protocol_version(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 208);
  if (!*(v2 + 208))
  {
    bssl::ssl_protocol_version();
  }

  v5 = -21846;
  if ((bssl::ssl_protocol_version_from_wire(&v5, v3) & 1) == 0)
  {
    bssl::ssl_protocol_version();
  }

  return v5;
}

uint64_t bssl::SSLAEADContext::MaxOverhead(bssl::SSLAEADContext *this)
{
  if (*(this + 616))
  {
    v1 = *(this + 605);
  }

  else
  {
    v1 = 0;
  }

  if (*this)
  {
    v2 = EVP_AEAD_CTX_aead(this + 8);
    v3 = EVP_AEAD_max_overhead(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3 + v1;
}

uint64_t bssl::SSLAEADContext::ExplicitNonceLen(bssl::SSLAEADContext *this)
{
  if (*(this + 616))
  {
    return *(this + 605);
  }

  else
  {
    return 0;
  }
}

uint64_t bssl::do_seal_record(bssl *this, ssl_st *a2, char *a3, char *a4, unsigned __int8 *a5, char *a6, const unsigned __int8 *a7)
{
  v9 = a5;
  v34 = a5;
  v14 = *(*(this + 6) + 272);
  if (*v14)
  {
    v15 = bssl::ssl_protocol_version(this, a2);
    if (v15 < 0x304)
    {
      v16 = 0;
    }

    else
    {
      v9 = 23;
      v16 = 1;
    }

    if (v15 >= 0x304)
    {
      v17 = &v34;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (!bssl::SSLAEADContext::SuffixLen(v14, &v33, a7, v16) || (bssl::SSLAEADContext::CiphertextLen(v14, &v32, a7, v16) & 1) == 0)
  {
    v26 = 200;
    v27 = 373;
LABEL_22:
    ERR_put_error(16, 0, v26, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v27);
    return 0;
  }

  v31 = v17;
  v19 = &a7[a6];
  if (a6 != a3 && v19 > a3 && &a7[a3] > a6)
  {
    bssl::do_seal_record();
  }

  v20 = bssl::ssl_record_prefix_len(this, v18);
  if (v19 > a2 && a2 + v20 > a6)
  {
    bssl::do_seal_record();
  }

  if (v19 > a4 && &a4[v33] > a6)
  {
    bssl::do_seal_record();
  }

  LOBYTE(a2->version) = v9;
  if (*(*(this + 6) + 208))
  {
    v23 = bssl::ssl_protocol_version(this, v21);
    v24 = v31;
    if (v23 <= 0x303)
    {
      v25 = *(*(this + 6) + 208);
    }

    else
    {
      v25 = 771;
    }
  }

  else
  {
    v25 = 769;
    v24 = v31;
  }

  *(&a2->version + 1) = __rev16(v25);
  *(&a2->version + 3) = bswap32(v32) >> 16;
  v30 = *(*(this + 6) + 8);
  if (v30 == -1)
  {
    v26 = 69;
    v27 = 396;
    goto LABEL_22;
  }

  if (bssl::SSLAEADContext::SealScatter(v14, &a2->type + 1, a3, a4, a2->version, v25, v30, v22, a2, 5, a6, a7, v24, v16))
  {
    ++*(*(this + 6) + 8);
    v28 = 1;
    bssl::ssl_do_msg_callback(this, 1, 256, a2, 5);
    return v28;
  }

  return 0;
}

BOOL bssl::SSLAEADContext::SuffixLen(bssl::SSLAEADContext *this, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*this)
  {
    return EVP_AEAD_CTX_tag_len(this + 1, a2, a3, a4) != 0;
  }

  *a2 = a4;
  return 1;
}

uint64_t bssl::SSLAEADContext::CiphertextLen(bssl::SSLAEADContext *this, unint64_t *a2, unint64_t a3, uint64_t a4)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (*this)
  {
    result = EVP_AEAD_CTX_tag_len(this + 1, &v11, a3, a4);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = a4;
  }

  if (*(this + 616))
  {
    v8 = *(this + 605);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + a3 + v11;
  v11 = v9;
  if (v9 < a3 || v9 >= 0xFFFF)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", 182);
    return 0;
  }

  else
  {
    *a2 = v9;
    return 1;
  }
}

uint64_t bssl::tls_seal_record(bssl *this, ssl_st *a2, unsigned __int8 *a3, const unsigned __int8 *a4, ssl_st *a5, unint64_t a6, const unsigned __int8 *a7)
{
  if (&a4[a2] > a6 && &a7[a6] > a2)
  {
    v18 = 189;
    v19 = 504;
LABEL_22:
    ERR_put_error(16, 0, v18, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v19);
    return 0;
  }

  v16 = bssl::tls_seal_scatter_prefix_len(this, a5, a7);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (**(*(this + 6) + 272))
  {
    v17 = bssl::ssl_protocol_version(this, v15) > 0x303;
  }

  else
  {
    v17 = 0;
  }

  v21 = a5 == 23 && a7 > 1;
  v22 = a7;
  if (v21)
  {
    v22 = &a7[-bssl::ssl_needs_record_splitting(this, v15)];
  }

  result = bssl::SSLAEADContext::SuffixLen(*(*(this + 6) + 272), &v29, v22, v17);
  if (!result)
  {
    return result;
  }

  v25 = &a7[v16];
  if (__CFADD__(v16, a7) || __CFADD__(v29, v25))
  {
    v18 = 200;
    v19 = 515;
    goto LABEL_22;
  }

  if (&v25[v29] > a4)
  {
    v18 = 121;
    v19 = 519;
    goto LABEL_22;
  }

  v26 = a2 + v16;
  if (!v21 || !bssl::ssl_needs_record_splitting(this, v24))
  {
    if ((bssl::do_seal_record(this, a2, a2 + v16, &a7[v26], a5, a6, a7) & 1) == 0)
    {
      return 0;
    }

LABEL_37:
    *a3 = &v25[v29];
    return 1;
  }

  if (bssl::SSLAEADContext::ExplicitNonceLen(*(*(this + 6) + 272)))
  {
    bssl::tls_seal_record();
  }

  result = bssl::do_seal_record(this, a2, &a2->type + 1, &a2->type + 2, 0x17, a6, 1);
  if (result)
  {
    v32 = 0xAAAAAAAAAAAAAAAALL;
    if (!bssl::SSLAEADContext::SuffixLen(*(*(this + 6) + 272), &v32, 1, 0))
    {
      bssl::tls_seal_record();
    }

    v28 = v32;
    if (bssl::ssl_cipher_get_record_split_len(**(*(this + 6) + 272), v27) != v28 + 1)
    {
      bssl::tls_seal_record();
    }

    v31 = -86;
    v30 = -1431655766;
    result = bssl::do_seal_record(this, &v30, v26 + 1, &a7[v26], 0x17, (a6 + 1), a7 - 1);
    if (result)
    {
      if (bssl::tls_seal_scatter_prefix_len(this, 0x17, a7) != v28 + 10)
      {
        bssl::tls_seal_record();
      }

      *(&a2->type + v28 + 2) = v30;
      *v26 = v31;
      goto LABEL_37;
    }
  }

  return result;
}

uint64_t bssl::SSLBuffer::EnsureCap(bssl::SSLBuffer *this, int a2, unint64_t a3)
{
  if (a3 >= 0x10000)
  {
    v3 = 68;
    v4 = 68;
LABEL_3:
    ERR_put_error(16, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_buffer.cc", v4);
    return 0;
  }

  if (*(this + 7) < a3)
  {
    if (a3 <= 5)
    {
      v12 = 0;
      v11 = this + 18;
      LOWORD(v9) = a3;
    }

    else
    {
      if (a3 <= 0x4145)
      {
        v9 = 16709;
      }

      else
      {
        v9 = a3;
      }

      v10 = malloc_type_malloc(v9 + 7, 0x100004077774924uLL);
      if (!v10)
      {
        v3 = 65;
        v4 = 99;
        goto LABEL_3;
      }

      v11 = v10;
      v12 = (-a2 - v10) & 7;
    }

    if (*(this + 6))
    {
      memmove(&v11[v12], (*this + *(this + 4)), *(this + 6));
    }

    if (*(this + 23) == 1)
    {
      free(*this);
    }

    *this = v11;
    *(this + 23) = a3 > 5;
    *(this + 4) = v12;
    *(this + 7) = v9;
    *(this + 8) = v9;
    *(this + 5) = v12;
  }

  return 1;
}

uint64_t boringssl_bio_read(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    result = (*(v3 + 8))(*v3);
    if (result > 0)
    {
      return result;
    }

    BIO_set_retry_read(a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t bssl::ssl_read_buffer_extend_to(bssl *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (!v4[46])
  {
    v4[44] = v4[45];
    v4[47] = v4[48];
  }

  if (SSL_is_dtls(this))
  {
    a2 = 16717;
  }

  if (!bssl::SSLBuffer::EnsureCap((*(this + 6) + 80), 13, a2))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(this + 3))
  {
    ERR_put_error(16, 0, 119, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_buffer.cc", 216);
    return 0xFFFFFFFFLL;
  }

  is_dtls = SSL_is_dtls(this);
  v6 = *(this + 6);
  if (is_dtls)
  {
    if (*(v6 + 92))
    {
      v7 = 68;
      v8 = 156;
LABEL_15:
      ERR_put_error(16, 0, v7, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_buffer.cc", v8);
      result = 0xFFFFFFFFLL;
      goto LABEL_16;
    }

    result = BIO_read(*(this + 3), (*(v6 + 80) + *(v6 + 88)), *(v6 + 94));
    if (result > 0)
    {
      v11 = *(v6 + 92);
      if (*(v6 + 94) - v11 < result)
      {
LABEL_28:
        abort();
      }

      *(v6 + 92) = v11 + result;
      return 1;
    }
  }

  else
  {
    if (a2 > *(v6 + 94))
    {
      v7 = 121;
      v8 = 175;
      goto LABEL_15;
    }

    v12 = *(v6 + 92);
    if (a2 <= v12)
    {
      return 1;
    }

    while (1)
    {
      result = BIO_read(*(this + 3), (*(v6 + 80) + *(v6 + 88) + v12), a2 - v12);
      if (result <= 0)
      {
        break;
      }

      v13 = *(v6 + 92);
      if (*(v6 + 94) - v13 < result)
      {
        goto LABEL_28;
      }

      v14 = v13 + result;
      *(v6 + 92) = v13 + result;
      v12 = (v13 + result);
      result = 1;
      if (a2 <= v14)
      {
        return result;
      }
    }
  }

  *(*(this + 6) + 196) = 2;
LABEL_16:
  v10 = *(this + 6);
  if (!v10[46])
  {
    v10[44] = v10[45];
    v10[47] = v10[48];
  }

  return result;
}

uint64_t nw_protocol_boringssl_read_bytes(void *a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!v5 || (v5[435] & 1) == 0)
  {
    nw_protocol_boringssl_read_bytes_cold_1();
  }

  v7 = 0xFFFFFFFFLL;
  if (v6 && a2 && a3 && boringssl_session_get_state(*(v6 + 37)) <= 3 && (boringssl_session_is_cancelled(*(v6 + 37)) & 1) == 0)
  {
    v8 = v6[435];
    if ((v6[350] & 2) != 0)
    {
      if ((v6[435] & 1) == 0)
      {
        nw_protocol_boringssl_read_bytes_cold_2();
      }
    }

    else if ((v6[435] & 1) == 0)
    {
      nw_protocol_boringssl_read_bytes_cold_3();
    }

    if (nw_frame_array_is_empty() && (*buf = 0, nw_protocol_upcast(), output_handler = nw_protocol_get_output_handler(), !nw_protocol_boringssl_read_frames(v6, output_handler, buf)))
    {
      v22 = v6[435];
      if ((v6[350] & 2) != 0)
      {
        if ((v6[435] & 1) == 0)
        {
          nw_protocol_boringssl_read_bytes_cold_6();
        }
      }

      else if ((v6[435] & 1) == 0)
      {
        nw_protocol_boringssl_read_bytes_cold_7();
      }

      v7 = 0;
    }

    else
    {
      v10 = nw_frame_array_first();
      if (!*(v6 + 41))
      {
        objc_storeStrong(v6 + 41, v10);
      }

      v7 = 0;
      if (v10)
      {
        do
        {
          if (*(v6 + 41) != v10 && (v6[435] & 1) == 0)
          {
            v15 = g_boringssl_log;
            if (g_boringssl_log)
            {
              if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_FAULT))
              {
                v16 = *(v6 + 41);
                *buf = 136447490;
                v25 = "nw_protocol_boringssl_read_bytes";
                v26 = 1024;
                v27 = 400;
                v28 = 2082;
                v29 = v6 + 351;
                v30 = 2048;
                v31 = v6;
                v32 = 2048;
                *v33 = v16;
                *&v33[8] = 2048;
                *&v33[10] = v10;
                _os_log_fault_impl(&dword_1A8FF5000, v15, OS_LOG_TYPE_FAULT, "%{public}s(%d) %{public}s[%p] current input frame (%p) does not match frame being processed (%p)", buf, 0x3Au);
              }
            }
          }

          v11 = nw_frame_array_next();
          v12 = nw_frame_unclaimed_bytes();
          boringssl_context_is_dtls(*(v6 + 37));
          v6[349] |= 0x40u;
          nw_protocol_upcast();
          v13 = nw_frame_claim();
          *(v6 + 84) = *(v6 + 84);
          nw_protocol_upcast();
          v14 = *(v6 + 84);
          if ((nw_frame_unclaim() & 1) == 0 && (v6[435] & 1) == 0 && datapath_logging_enabled == 1)
          {
            oslog = g_boringssl_log;
            if (g_boringssl_log)
            {
              if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
              {
                v18 = *(v6 + 84);
                *buf = 136447490;
                v25 = "nw_protocol_boringssl_read_bytes";
                v26 = 1024;
                v27 = 422;
                v28 = 2082;
                v29 = v6 + 351;
                v30 = 2048;
                v31 = v6;
                v32 = 1024;
                *v33 = v18;
                *&v33[4] = 2048;
                *&v33[6] = v10;
                _os_log_debug_impl(&dword_1A8FF5000, oslog, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] failed to unclaim %d bytes from %p", buf, 0x36u);
              }
            }
          }

          *(v6 + 84) = 0;
          objc_storeStrong(v6 + 41, v11);
          nw_frame_array_remove();
          nw_frame_finalize();
          if ((v13 & 1) == 0 && (v6[435] & 1) == 0 && datapath_logging_enabled == 1)
          {
            v17 = g_boringssl_log;
            if (g_boringssl_log)
            {
              if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136447490;
                v25 = "nw_protocol_boringssl_read_bytes";
                v26 = 1024;
                v27 = 431;
                v28 = 2082;
                v29 = v6 + 351;
                v30 = 2048;
                v31 = v6;
                v32 = 1024;
                *v33 = 0;
                *&v33[4] = 2048;
                *&v33[6] = v12;
                _os_log_debug_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] failed to claim %d bytes from %p", buf, 0x36u);
              }
            }
          }

          v7 = 0;
          *(v6 + 84) = 0;
          objc_storeStrong(v6 + 41, v11);

          v10 = v11;
        }

        while (v11);
      }

      v19 = v6[435];
      if ((v6[350] & 2) != 0)
      {
        if ((v6[435] & 1) == 0)
        {
          nw_protocol_boringssl_read_bytes_cold_4();
        }
      }

      else if ((v6[435] & 1) == 0)
      {
        nw_protocol_boringssl_read_bytes_cold_5();
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t bssl::tls_open_record(bssl *a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4, ssl_st *a5, unsigned __int16 *a6, unint64_t a7)
{
  *a4 = 0;
  if (*(*(a1 + 6) + 172) == 1)
  {
    return 3;
  }

  if (!bssl::tls_can_accept_handshake_data(a1, a5, a3))
  {
    return 4;
  }

  v49 = a6;
  v50 = a7;
  v48 = -86;
  v47 = -21846;
  v46 = -21846;
  if (!CBS_get_u8(&v49, &v48) || !CBS_get_u16(&v49, &v47) || !CBS_get_u16(&v49, &v46))
  {
    v19 = 5;
    goto LABEL_12;
  }

  v16 = *(a1 + 6);
  v17 = v47;
  if (**(v16 + 264))
  {
    if (*(v16 + 208))
    {
      if (bssl::ssl_protocol_version(a1, v15) <= 0x303)
      {
        v18 = *(*(a1 + 6) + 208);
      }

      else
      {
        v18 = 771;
      }
    }

    else
    {
      v18 = 769;
    }

    if (v17 == v18)
    {
      goto LABEL_18;
    }
  }

  else if ((v47 & 0xFF00) == 0x300)
  {
LABEL_18:
    if (v46 >= 0x4141uLL)
    {
      v21 = 146;
      v22 = 231;
LABEL_20:
      ERR_put_error(16, 0, v21, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v22);
      v20 = 22;
      goto LABEL_21;
    }

    v44 = 0xAAAAAAAAAAAAAAAALL;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    if (CBS_get_bytes(&v49, &v44, v46))
    {
      if (a7 >= 5)
      {
        v23 = 5;
      }

      else
      {
        v23 = a7;
      }

      bssl::ssl_do_msg_callback(a1, 0, 256, a6, v23);
      *a4 = (a7 - v50);
      if (*(*(a1 + 6) + 208) && bssl::ssl_protocol_version(a1, v24) >= 0x304 && SSL_in_init(a1) && v48 == 20 && v45 == 1 && *v44 == 1)
      {
        v26 = *(a1 + 6);
        v27 = ++*(v26 + 212);
        if (v27 < 0x21)
        {
          return 1;
        }

        v28 = 219;
        v29 = 254;
        goto LABEL_70;
      }

      v30 = *(a1 + 6);
      if ((*(v30 + 222) & 1) == 0 || **(v30 + 264) || v48 != 23)
      {
        if (*v30 == -1)
        {
          ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 271);
          v20 = 80;
          goto LABEL_21;
        }

        v31 = bssl::SSLAEADContext::Open(*(v30 + 264), a3, v48, v47, *v30, a6, v23, v25, v44, v45);
        v33 = *(a1 + 6);
        v34 = *(v33 + 222);
        if (v31)
        {
          *(v33 + 222) = v34 & 0xFFFE;
          v35 = *(a1 + 6);
          ++*v35;
          if (**(v35 + 264))
          {
            v36 = bssl::ssl_protocol_version(a1, v32);
            v37 = 0x4000;
            if (v36 > 0x303)
            {
              v37 = 16385;
            }

            v38 = *(a3 + 8);
            if (v38 <= v37)
            {
              if (v36 >= 0x304)
              {
                if (v48 == 23)
                {
                  v39 = v38 - 1;
                  while (v39 != -1)
                  {
                    v48 = *(*a3 + v39);
                    v40 = v48;
                    *(a3 + 8) = v39--;
                    if (v40)
                    {
                      v38 = v39 + 1;
                      goto LABEL_60;
                    }
                  }

                  ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 317);
                  v20 = 51;
                }

                else
                {
                  ERR_put_error(16, 0, 251, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 310);
                  v20 = 50;
                }

                goto LABEL_21;
              }

LABEL_60:
              v41 = *(a1 + 6);
              if (v38)
              {
                *(v41 + 212) = 0;
              }

              else
              {
                v42 = ++*(v41 + 212);
                if (v42 >= 0x21)
                {
                  v28 = 219;
                  v29 = 330;
LABEL_70:
                  ERR_put_error(16, 0, v28, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", v29);
                  v20 = 10;
                  goto LABEL_21;
                }
              }

              v43 = v48;
              if (v48 != 22)
              {
                if (v48 == 21)
                {
                  return bssl::ssl_process_alert(a1, a5, *a3, v38);
                }

                if (bssl::tls_has_unprocessed_handshake_data(a1, v32))
                {
                  v28 = 225;
                  v29 = 347;
                  goto LABEL_70;
                }

                v41 = *(a1 + 6);
                v43 = v48;
              }

              result = 0;
              *(v41 + 213) = 0;
              *a2 = v43;
              return result;
            }
          }

          else
          {
            v38 = *(a3 + 8);
            if (v38 <= 0x4000)
            {
              goto LABEL_60;
            }
          }

          v21 = 136;
          v22 = 302;
          goto LABEL_20;
        }

        if ((v34 & 1) == 0 || !**(v33 + 264))
        {
          ERR_put_error(16, 0, 139, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 285);
          v20 = 20;
          goto LABEL_21;
        }

        ERR_clear_error();
      }

      return bssl::skip_early_data(a1, a5, *a4);
    }

    v19 = v46 + 5;
LABEL_12:
    *a4 = v19;
    return 2;
  }

  ERR_put_error(16, 0, 247, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls_record.cc", 224);
  v20 = 70;
LABEL_21:
  LOBYTE(a5->version) = v20;
  return 4;
}

uint64_t nw_protocol_boringssl_write_bytes(void *a1, uint64_t a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  v7 = 0xFFFFFFFFLL;
  if (v5 && a2 && a3 && boringssl_session_get_state(v5[37]) <= 3 && (boringssl_session_is_cancelled(*(v6 + 37)) & 1) == 0)
  {
    if ((v6[435] & 1) == 0)
    {
      nw_protocol_boringssl_write_bytes_cold_1();
    }

    nw_protocol_upcast();
    if (nw_protocol_get_output_handler())
    {
      v8 = v6[435];
      if ((v6[350] & 2) != 0)
      {
        if ((v6[435] & 1) == 0)
        {
          nw_protocol_boringssl_write_bytes_cold_2();
        }
      }

      else if ((v6[435] & 1) == 0)
      {
        nw_protocol_boringssl_write_bytes_cold_3();
      }

      v7 = 0;
LABEL_17:
      v9 = a3 - v7;
      if (a3 > v7)
      {
        do
        {
          if (!*(v6 + 19) && !nw_protocol_boringssl_allocate_batching_frame(v6, a3 - v7))
          {
            break;
          }

          v10 = v6;
          if (boringssl_session_get_state(*(v6 + 37)) <= 3 && (boringssl_session_is_cancelled(*(v6 + 37)) & 1) == 0 && *(v6 + 19))
          {
            v11 = nw_frame_unclaimed_length();
            v12 = v11 >= v9 ? v9 : v11;
            if (v11)
            {
              v13 = *(v6 + 19);
              v14 = nw_frame_unclaimed_bytes();
              if (v14)
              {
                memcpy(v14, (a2 + v7), v12);
                v15 = *(v6 + 19);
                nw_protocol_upcast();
                if (nw_frame_claim())
                {
                  v25 = v6[435];
                  if ((v6[350] & 2) != 0)
                  {
                    if ((v6[435] & 1) == 0 && datapath_logging_enabled == 1)
                    {
                      v28 = g_boringssl_log;
                      if (g_boringssl_log)
                      {
                        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 136447234;
                          v34 = "nw_protocol_boringssl_write_to_batching_frame";
                          v35 = 1024;
                          v36 = 184;
                          v37 = 2082;
                          v38 = v6 + 351;
                          v39 = 2048;
                          v40 = v6;
                          v41 = 1024;
                          v42 = v12;
                          v27 = v28;
LABEL_57:
                          _os_log_debug_impl(&dword_1A8FF5000, v27, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] wrote %u bytes to batching frame", buf, 0x2Cu);
                        }
                      }
                    }
                  }

                  else if ((v6[435] & 1) == 0)
                  {
                    v26 = g_boringssl_log;
                    if (g_boringssl_log)
                    {
                      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136447234;
                        v34 = "nw_protocol_boringssl_write_to_batching_frame";
                        v35 = 1024;
                        v36 = 186;
                        v37 = 2082;
                        v38 = v6 + 351;
                        v39 = 2048;
                        v40 = v6;
                        v41 = 1024;
                        v42 = v12;
                        v27 = v26;
                        goto LABEL_57;
                      }
                    }
                  }

                  *(v6 + 40) += v12;

                  goto LABEL_43;
                }

                if ((v6[435] & 1) == 0)
                {
                  v16 = g_boringssl_log;
                  if (g_boringssl_log)
                  {
                    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136447234;
                      v34 = "nw_protocol_boringssl_write_to_batching_frame";
                      v35 = 1024;
                      v36 = 179;
                      v37 = 2082;
                      v38 = v6 + 351;
                      v39 = 2048;
                      v40 = v6;
                      v41 = 1024;
                      v42 = v12;
                      v17 = v16;
                      v18 = "%{public}s(%d) %{public}s[%p] claiming batching frame with %u bytes failed";
                      v19 = 44;
LABEL_41:
                      _os_log_error_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
                    }
                  }
                }
              }

              else if ((v6[435] & 1) == 0)
              {
                v21 = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446978;
                    v34 = "nw_protocol_boringssl_write_to_batching_frame";
                    v35 = 1024;
                    v36 = 172;
                    v37 = 2082;
                    v38 = v6 + 351;
                    v39 = 2048;
                    v40 = v6;
                    v17 = v21;
                    v18 = "%{public}s(%d) %{public}s[%p] failed to get unclaimed bytes from batching frame";
                    v19 = 38;
                    goto LABEL_41;
                  }
                }
              }
            }
          }

          if (boringssl_context_is_dtls(*(v6 + 37)))
          {
            LODWORD(v12) = 0;
LABEL_43:
            v22 = *(v6 + 19);
            if (!nw_frame_unclaimed_length() || (boringssl_context_is_dtls(*(v6 + 37)) & 1) != 0 || (v6[350] & 8) == 0)
            {
              v23 = *(v6 + 19);
              if (nw_frame_unclaimed_length())
              {
                v24 = "immediate mode";
              }

              else
              {
                v24 = "frame full";
              }

              nw_protocol_boringssl_flush_batching_frame(v10, v24);
            }

            v7 = (v12 + v7);
            if ((boringssl_context_is_dtls(*(v6 + 37)) & 1) == 0)
            {
              goto LABEL_17;
            }

            break;
          }

          nw_protocol_boringssl_flush_batching_frame(v10, "frame full");
          batching_frame = nw_protocol_boringssl_allocate_batching_frame(v10, a3 - v7);
        }

        while (a3 > v7 && (batching_frame & 1) != 0);
      }

      v29 = v6[435];
      if ((v6[350] & 2) != 0)
      {
        if ((v6[435] & 1) == 0 && datapath_logging_enabled == 1)
        {
          v30 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447234;
              v34 = "nw_protocol_boringssl_write_bytes";
              v35 = 1024;
              v36 = 303;
              v37 = 2082;
              v38 = v6 + 351;
              v39 = 2048;
              v40 = v6;
              v41 = 1024;
              v42 = v7;
              goto LABEL_69;
            }
          }
        }
      }

      else if ((v6[435] & 1) == 0)
      {
        v30 = g_boringssl_log;
        if (g_boringssl_log)
        {
          if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447234;
            v34 = "nw_protocol_boringssl_write_bytes";
            v35 = 1024;
            v36 = 305;
            v37 = 2082;
            v38 = v6 + 351;
            v39 = 2048;
            v40 = v6;
            v41 = 1024;
            v42 = v7;
LABEL_69:
            _os_log_debug_impl(&dword_1A8FF5000, v30, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] total bytes written: %u", buf, 0x2Cu);
          }
        }
      }
    }

    else if (v6[435])
    {
      v7 = 0;
    }

    else
    {
      nw_protocol_boringssl_write_bytes_cold_4();
      v7 = *buf;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t boringssl_bio_write(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    result = (*(v3 + 16))(*v3);
    if (result > 0)
    {
      return result;
    }

    BIO_set_retry_write(a1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t bssl::SSLAEADContext::SealScatter(uint64_t a1, char *a2, char *a3, char *a4, char a5, __int16 a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10, char *__src, uint64_t a12, void *a13, uint64_t a14)
{
  v46[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 616))
  {
    v20 = *(a1 + 605);
  }

  else
  {
    v20 = 0;
  }

  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (*a1)
  {
    v21 = a4;
    v22 = EVP_AEAD_CTX_tag_len((a1 + 8), &v44, a12, a14);
    a4 = v21;
    if (!v22)
    {
      v23 = 200;
      v24 = 297;
LABEL_16:
      ERR_put_error(16, 0, v23, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", v24);
      result = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v44 = a14;
  }

  v25 = &__src[a12];
  if (__src != a3 && v25 > a3 && &a3[a12] > __src || v25 > a2 && &a2[v20] > __src || v25 > a4 && &a4[v44] > __src)
  {
    v23 = 189;
    v24 = 303;
    goto LABEL_16;
  }

  v28 = a13;
  if (!*a1)
  {
    if (a12)
    {
      v30 = a4;
      memmove(a3, __src, a12);
      a4 = v30;
    }

    if (a14)
    {
      memmove(a4, a13, a14);
    }

    result = 1;
    goto LABEL_17;
  }

  *(v46 + 5) = 0xAAAAAAAAAAAAAAAALL;
  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v29 = *(a1 + 616);
  if ((v29 & 0x10) == 0)
  {
    v46[0] = bswap64(a7);
    LOBYTE(v46[1]) = a5;
    BYTE1(v46[1]) = HIBYTE(a6);
    BYTE2(v46[1]) = a6;
    if ((v29 & 8) == 0)
    {
      *(&v46[1] + 3) = bswap32(a12) >> 16;
    }
  }

  memset(__dst, 170, sizeof(__dst));
  v31 = *(a1 + 604);
  v42 = a4;
  if ((v29 & 4) != 0)
  {
    v31 -= *(a1 + 605);
    if (!v31)
    {
      goto LABEL_33;
    }

    v32 = a13;
    v33 = v29;
    bzero(__dst, v31);
  }

  else
  {
    if (!*(a1 + 604))
    {
      v31 = 0;
      if ((v29 & 2) == 0)
      {
LABEL_34:
        if (*(a1 + 605) != 8)
        {
          bssl::SSLAEADContext::SealScatter();
        }

        v34 = v28;
        *(__dst + v31) = bswap64(a7);
        v35 = 8;
        if ((v29 & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v32 = a13;
    v33 = v29;
    memcpy(__dst, (a1 + 592), v31);
  }

  v29 = v33;
  v28 = v32;
LABEL_33:
  if ((v29 & 2) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  if ((v29 & 1) == 0)
  {
    bssl::SSLAEADContext::SealScatter();
  }

  result = RAND_bytes(__dst + v31, *(a1 + 605));
  if (result)
  {
    v34 = v28;
    v35 = *(a1 + 605);
    v29 = *(a1 + 616);
    if ((v29 & 1) == 0)
    {
LABEL_47:
      v36 = v31 + v35;
      if ((v29 & 4) != 0)
      {
        if (v36 != *(a1 + 604))
        {
          bssl::SSLAEADContext::SealScatter();
        }

        if (*(a1 + 604))
        {
          v37 = (a1 + 592);
          v38 = __dst;
          v39 = v31 + v35;
          do
          {
            v40 = *v37++;
            *v38++ ^= v40;
            --v39;
          }

          while (v39);
        }
      }

      v43 = 0xAAAAAAAAAAAAAAAALL;
      v41 = EVP_AEAD_CTX_seal_scatter((a1 + 8), a3, v42, &v43, v44, __dst, v36, __src, a12, v34, a14);
      result = v41 != 0;
      if (v41 && v43 != v44)
      {
        bssl::SSLAEADContext::SealScatter();
      }

      goto LABEL_17;
    }

LABEL_41:
    if ((v29 & 4) != 0)
    {
      bssl::SSLAEADContext::SealScatter();
    }

    if (v25 > a2 && &a2[v35] > __src)
    {
      v23 = 189;
      v24 = 349;
      goto LABEL_16;
    }

    if (v35)
    {
      memcpy(a2, __dst + *(a1 + 604), v35);
      v29 = *(a1 + 616);
    }

    goto LABEL_47;
  }

LABEL_17:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::ssl_record_prefix_len(unsigned __int8 **this, const ssl_st *a2)
{
  if (SSL_is_dtls(this))
  {
    bssl::ssl_record_prefix_len();
  }

  return bssl::SSLAEADContext::ExplicitNonceLen(*(this[6] + 33)) + 5;
}

int BIO_write(BIO *b, const void *data, int len)
{
  if (!b || !b->method || (bwrite = b->method->bwrite) == 0)
  {
    v6 = 115;
    v7 = 167;
LABEL_9:
    ERR_put_error(17, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", v7);
    return -2;
  }

  if (!LODWORD(b->cb_arg))
  {
    v6 = 114;
    v7 = 171;
    goto LABEL_9;
  }

  if (len < 1)
  {
    return 0;
  }

  result = (bwrite)(b, data);
  if (result >= 1)
  {
    b->prev_bio = (b->prev_bio + result);
  }

  return result;
}

void nw_protocol_boringssl_write_bytes_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_context_is_dtls(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0)
  {
    return (*(v1 + 548) >> 5) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t EVP_AEAD_CTX_seal_scatter(uint64_t *a1, char *a2, char *a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, char *a8, size_t a9, uint64_t a10, uint64_t a11)
{
  v15 = &a8[a9];
  v16 = &a2[a9];
  if (a8 != a2 && (v15 > a2 ? (v17 = v16 > a8) : (v17 = 0), v17) || &a3[a5] > a2 && v16 > a3 || &a3[a5] > a8 && v15 > a3)
  {
    v18 = 115;
    v19 = 162;
LABEL_11:
    ERR_put_error(30, 0, v18, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", v19);
    goto LABEL_12;
  }

  v21 = *a1;
  if (a11 && !*(v21 + 4))
  {
    v18 = 112;
    v19 = 167;
    goto LABEL_11;
  }

  if ((*(v21 + 40))(a1, a2, a3, a4, a5))
  {
    return 1;
  }

LABEL_12:
  if (a9)
  {
    bzero(a2, a9);
  }

  if (a5)
  {
    bzero(a3, a5);
  }

  result = 0;
  *a4 = 0;
  return result;
}

uint64_t EVP_AEAD_CTX_tag_len(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a4 && !*(v5 + 4))
  {
    EVP_AEAD_CTX_tag_len_cold_1();
  }

  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = v6();
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v8 = *(a1 + 576);
  v7 = v8 + a4;
  if (!__CFADD__(v8, a4))
  {
    goto LABEL_8;
  }

  ERR_put_error(30, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", 282);
  v7 = 0;
  v9 = 0;
LABEL_9:
  *a2 = v7;
  return v9;
}

BOOL aead_aes_gcm_seal_scatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a7)
  {
    v15 = 111;
    v16 = 291;
    goto LABEL_15;
  }

  v14 = *(a1 + 24) + a11;
  if (v14 < *(a1 + 576))
  {
    v15 = 117;
    v16 = 295;
LABEL_15:
    ERR_put_error(30, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_aes.m", v16);
    return 0;
  }

  if (v14 > a5)
  {
    v15 = 103;
    v16 = 299;
    goto LABEL_15;
  }

  if (!*(a1 + 8) || !*(a1 + 16))
  {
    v15 = 112;
    v16 = 303;
    goto LABEL_15;
  }

  v18 = ccgcm_reset();
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (ccgcm_set_iv() | v18)
  {
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        aead_aes_gcm_seal_scatter_cold_1();
      }
    }

    v15 = 107;
    v16 = 311;
    goto LABEL_15;
  }

  if (a13 && (v22 = *(a1 + 8), v23 = *(a1 + 16), ccgcm_aad()))
  {
    if (!g_boringssl_log)
    {
      return 0;
    }

    result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      aead_aes_gcm_seal_scatter_cold_2();
      return 0;
    }
  }

  else
  {
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    if (ccgcm_update())
    {
      if (!g_boringssl_log)
      {
        return 0;
      }

      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        aead_aes_gcm_seal_scatter_cold_3();
        return 0;
      }
    }

    else if (a11 && (v26 = *(a1 + 8), v27 = *(a1 + 16), ccgcm_update()))
    {
      if (!g_boringssl_log)
      {
        return 0;
      }

      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        aead_aes_gcm_seal_scatter_cold_4();
        return 0;
      }
    }

    else
    {
      v28 = *(a1 + 8);
      v29 = *(a1 + 16);
      v30 = *(a1 + 576);
      if (ccgcm_finalize())
      {
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          aead_aes_gcm_seal_scatter_cold_5();
        }

        v15 = 123;
        v16 = 340;
        goto LABEL_15;
      }

      *a4 = *(a1 + 576) + a11;
      v31 = *(a1 + 8);
      v32 = *(a1 + 16);
      if (!ccgcm_reset())
      {
        return 1;
      }

      if (!g_boringssl_log)
      {
        return 0;
      }

      result = os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        aead_aes_gcm_seal_scatter_cold_6();
        return 0;
      }
    }
  }

  return result;
}

void nw_protocol_boringssl_input_available_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::tls_seal_align_prefix_len(bssl *this, const ssl_st *a2)
{
  v3 = bssl::SSLAEADContext::ExplicitNonceLen(*(*(this + 6) + 272));
  if (bssl::ssl_needs_record_splitting(this, v4))
  {
    return v3 + bssl::ssl_cipher_get_record_split_len(**(*(this + 6) + 272), v5) + 10;
  }

  else
  {
    return v3 + 5;
  }
}

BOOL aead_aes_gcm_tls13_seal_scatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a7 != 12)
  {
    v15 = 121;
    v16 = 478;
LABEL_9:
    ERR_put_error(30, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_aes.m", v16);
    return 0;
  }

  v13 = bswap64(*(a6 + 4));
  if (*(a1 + 64))
  {
    *(a1 + 56) = v13;
    *(a1 + 64) = 0;
    v14 = v13;
  }

  else
  {
    v14 = *(a1 + 56);
  }

  v17 = v14 ^ v13;
  if (v17 == -1 || v17 < *(a1 + 48))
  {
    v15 = 125;
    v16 = 498;
    goto LABEL_9;
  }

  *(a1 + 48) = v17 + 1;

  return aead_aes_gcm_seal_scatter(a1, a2, a3, a4, a5, a6, 12, a8, a9, a10, a11, a12, a13);
}

uint64_t bssl::SSLBuffer::DidWrite(uint64_t this, unint64_t a2)
{
  v2 = *(this + 12);
  if (*(this + 14) - v2 < a2)
  {
    abort();
  }

  *(this + 12) = v2 + a2;
  return this;
}

void nw_protocol_boringssl_write_bytes_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_frame_output_finalizer(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = v5;
  if (v5 && (*(v5 + 435) & 1) != 0)
  {
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    nw_protocol_boringssl_frame_output_finalizer_cold_1();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    nw_frame_array_remove();
    if (nw_frame_uses_external_data())
    {
      nw_frame_set_external_data();
    }

    else
    {
      buffer = nw_frame_get_buffer();
      if (buffer)
      {
        free(buffer);
      }
    }

    nw_frame_reset();
  }

LABEL_10:
}

void nw_protocol_boringssl_frame_output_finalizer_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_output_available_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_output_available_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

int SSL_peek(SSL *ssl, void *buf, int num)
{
  if (*&ssl->hit)
  {
    ERR_put_error(16, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 1303);
    LODWORD(v3) = -1;
  }

  else
  {
    LODWORD(v3) = num;
    impl = ssl_read_impl(ssl);
    if (impl < 1)
    {
      LODWORD(v3) = impl;
    }

    else if (v3 >= 1)
    {
      handshake_func = ssl->handshake_func;
      v9 = *(handshake_func + 17);
      if (v9 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = *(handshake_func + 17);
      }

      if (buf && v9)
      {
        memcpy(buf, *(handshake_func + 16), v3);
      }
    }
  }

  return v3;
}

uint64_t boringssl_session_read(void *a1, void *a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  if (a3)
  {
    v7 = *(v5 + 392);
    if (v7)
    {
      if (a2 || (a4 & 1) != 0)
      {
        if (a4)
        {
          v16 = SSL_peek(v7, a2, a3);
        }

        else
        {
          v16 = SSL_read(v7, a2, a3);
        }

        v6 = v16;
        if (v16 <= 0)
        {
          error = SSL_get_error(*(v5 + 392), v16);
          v18 = error;
          if ((error - 5) >= 2)
          {
            if (error == 2)
            {
              ++*(v5 + 488);
              WeakRetained = objc_loadWeakRetained((v5 + 16));
              if (!WeakRetained || (v29 = WeakRetained, v30 = objc_loadWeakRetained((v5 + 16)), v31 = v30[435], v30, v29, (v31 & 1) == 0))
              {
                v32 = objc_loadWeakRetained((v5 + 16));
                if (!v32 || (v33 = v32, v34 = objc_loadWeakRetained((v5 + 16)), v35 = v34[435], v34, v33, (v35 & 1) == 0))
                {
                  if (datapath_logging_enabled == 1)
                  {
                    boringssl_session_read_cold_2(v5, v6, &v36);
                    return v36;
                  }
                }
              }
            }

            else
            {
              ERR_print_errors_cb(boringssl_session_handshake_error_print, a1);
            }
          }

          else
          {
            v19 = objc_loadWeakRetained((v5 + 16));
            if (!v19 || (v20 = v19, v21 = objc_loadWeakRetained((v5 + 16)), v22 = v21[435], v21, v20, (v22 & 1) == 0))
            {
              v23 = objc_loadWeakRetained((v5 + 16));
              if (!v23 || (v24 = v23, v25 = objc_loadWeakRetained((v5 + 16)), v26 = v25[435], v25, v24, (v26 & 1) == 0))
              {
                if (datapath_logging_enabled == 1)
                {
                  boringssl_session_read_cold_3(v5, v18, v6, &v37);
                  return v37;
                }
              }
            }
          }
        }
      }

      else
      {
        v8 = objc_loadWeakRetained((v5 + 16));
        if (v8)
        {
          v9 = v8;
          v10 = objc_loadWeakRetained((v5 + 16));
          v11 = v10[435];

          if (v11)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v12 = objc_loadWeakRetained((v5 + 16));
        if (v12)
        {
          v13 = objc_loadWeakRetained((v5 + 16));
          v14 = (v13[435] & 1) == 0;
        }

        else
        {
          v14 = 1;
        }

        v6 = 0xFFFFFFFFLL;
        if (v14 && g_boringssl_log)
        {
          v27 = g_boringssl_log;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            boringssl_session_read_cold_1();
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v6;
}

uint64_t ssl_read_impl(ssl_st *a1)
{
  *(a1->handshake_func + 49) = 0;
  ERR_clear_error();
  ERR_clear_system_error();
  if (*&a1->rwstate)
  {
    handshake_func = a1->handshake_func;
    if (*(handshake_func + 43) == 2)
    {
      ERR_restore_state(*(handshake_func + 23));
      return 0xFFFFFFFFLL;
    }

    v6 = a1->handshake_func;
    if (!*(v6 + 17))
    {
      while (1)
      {
        if ((*(v6 + 111) & 0x800) != 0)
        {
          *(v6 + 49) = 19;
          return 0xFFFFFFFFLL;
        }

        while (1)
        {
          v7 = *(a1->handshake_func + 35);
          if (!v7 || (*(v7 + 1600) & 0x1008) != 0)
          {
            break;
          }

          result = SSL_do_handshake(a1);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          if (!result)
          {
            v3 = 215;
            v4 = 1244;
            goto LABEL_5;
          }
        }

        v21 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v20[0] = v8;
        v20[1] = v8;
        if ((*(*&a1->version + 24))(a1, v20))
        {
          v9 = *(a1->handshake_func + 35);
          if (!v9 || (v10 = *(v9 + 1600), (v10 & 8) != 0))
          {
            if (!ssl_do_post_handshake(a1, v20))
            {
              bssl::ssl_set_read_error(a1, v16);
              return 0xFFFFFFFFLL;
            }

            (*(*&a1->version + 32))(a1);
          }

          else
          {
            *(v9 + 1600) = v10 & 0xFFFFEFF7;
          }
        }

        else
        {
          v19 = 50;
          v18 = 0;
          v11 = a1->handshake_func;
          v12 = *(v11 + 46);
          v13 = *(v11 + 10) + *(v11 + 44);
          v14 = bssl::ssl_open_app_data(a1, v11 + 128, &v18, &v19);
          v17 = -86;
          result = bssl::ssl_handle_open_record(a1, &v17, v14, v18, v19);
          if (result <= 0)
          {
            return result;
          }

          if ((v17 & 1) == 0)
          {
            v15 = a1->handshake_func;
            if (!*(v15 + 17))
            {
              ssl_read_impl();
            }

            *(v15 + 214) = 0;
          }
        }

        v6 = a1->handshake_func;
        result = 1;
        if (*(v6 + 17))
        {
          return result;
        }
      }
    }

    return 1;
  }

  else
  {
    v3 = 226;
    v4 = 1220;
LABEL_5:
    ERR_put_error(16, 0, v3, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", v4);
    return 0xFFFFFFFFLL;
  }
}

uint64_t bssl::ssl_open_app_data(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  *a3 = 0;
  v5 = a1[6];
  if (*(v5 + 172) == 2)
  {
    ERR_restore_state(*(v5 + 184));
    *a4 = 0;
  }

  else
  {
    result = (*(*a1 + 64))(a1);
    if (result != 4)
    {
      return result;
    }

    v8 = a1[6];
    *(v8 + 172) = 2;
    v9 = ERR_save_state();
    std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v8 + 184), v9);
  }

  return 4;
}

uint64_t bssl::ssl_can_read(bssl *this, const ssl_st *a2)
{
  v2 = *(*(this + 6) + 280);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 1600);
  if ((v3 & 8) != 0)
  {
    return 1;
  }

  else
  {
    return (v3 >> 12) & 1;
  }
}

void nw_protocol_boringssl_read_bytes_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0)
  {
    if (g_boringssl_log)
    {
      v2 = OUTLINED_FUNCTION_20();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_10_0();
        _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_read_bytes_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0)
  {
    if (g_boringssl_log)
    {
      v2 = OUTLINED_FUNCTION_20();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_13_0();
        OUTLINED_FUNCTION_4_0();
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_10_0();
        _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Cu);
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t EVP_AEAD_CTX_open(unsigned __int8 *a1, char *a2, size_t *a3, size_t a4, uint64_t a5, uint64_t a6, char *a7, unint64_t a8)
{
  if (a7 != a2 && &a2[a4] > a7 && &a7[a8] > a2)
  {
    v11 = 115;
    v12 = 191;
    goto LABEL_5;
  }

  v15 = *(*a1 + 32);
  if (!v15)
  {
    v16 = a1[576];
    if (!a1[576])
    {
      EVP_AEAD_CTX_open_cold_1();
    }

    v13 = a8 - v16;
    if (a8 >= v16)
    {
      if (v13 <= a4)
      {
        if (EVP_AEAD_CTX_open_gather(a1, a2, a5, a6, a7, a8 - v16))
        {
          result = 1;
LABEL_9:
          *a3 = v13;
          return result;
        }

LABEL_6:
        if (a4)
        {
          bzero(a2, a4);
        }

        v13 = 0;
        result = 0;
        goto LABEL_9;
      }

      v11 = 103;
      v12 = 214;
    }

    else
    {
      v11 = 101;
      v12 = 208;
    }

LABEL_5:
    ERR_put_error(30, 0, v11, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", v12);
    goto LABEL_6;
  }

  if (!v15(a1, a2))
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t EVP_AEAD_CTX_open_gather(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, size_t a6)
{
  if (a5 != a2 && &a5[a6] > a2 && &a2[a6] > a5)
  {
    v8 = 115;
    v9 = 238;
LABEL_9:
    ERR_put_error(30, 0, v8, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/cipher/aead.c.inc", v9);
    goto LABEL_10;
  }

  v10 = *(*a1 + 48);
  if (!v10)
  {
    v8 = 104;
    v9 = 243;
    goto LABEL_9;
  }

  if (v10(a1, a2))
  {
    return 1;
  }

LABEL_10:
  if (a6)
  {
    bzero(a2, a6);
  }

  return 0;
}

uint64_t aead_aes_gcm_open_gather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a4)
  {
    v14 = 111;
    v15 = 373;
    goto LABEL_10;
  }

  if (*(a1 + 576) != a8)
  {
    v14 = 101;
    v15 = 377;
    goto LABEL_10;
  }

  if (!*(a1 + 8) || !*(a1 + 16))
  {
    v14 = 112;
    v15 = 381;
    goto LABEL_10;
  }

  v11 = ccgcm_reset();
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  if (ccgcm_set_iv() | v11)
  {
    v14 = 107;
    v15 = 388;
LABEL_10:
    ERR_put_error(30, 0, v14, "/Library/Caches/com.apple.xbs/Sources/boringssl/apple/crypto/boringssl_crypto_aes.m", v15);
    return 0;
  }

  if (a10)
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    if (ccgcm_aad())
    {
      if (g_boringssl_log)
      {
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          aead_aes_gcm_open_gather_cold_1();
        }
      }

      v14 = 101;
      v15 = 396;
      goto LABEL_10;
    }
  }

  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (ccgcm_update())
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_aes_gcm_open_gather_cold_2();
    }

    v14 = 101;
    v15 = 404;
    goto LABEL_10;
  }

  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  if (ccgcm_finalize())
  {
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
    {
      aead_aes_gcm_open_gather_cold_3();
    }

    v14 = 101;
    v15 = 411;
    goto LABEL_10;
  }

  return 1;
}

int SSL_read(SSL *ssl, void *buf, int num)
{
  v4 = SSL_peek(ssl, buf, num);
  v5 = v4;
  if (v4 >= 1)
  {
    handshake_func = ssl->handshake_func;
    v7 = *(handshake_func + 17);
    if (v7 < v4)
    {
      abort();
    }

    *(handshake_func + 16) += v4;
    *(handshake_func + 17) = v7 - v4;
    v8 = ssl->handshake_func;
    if (!*(v8 + 17))
    {
      bssl::SSLBuffer::DiscardConsumed(v8 + 40);
    }
  }

  return v5;
}

void nw_protocol_boringssl_read_bytes_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

BOOL bssl::tls_has_unprocessed_handshake_data(bssl *this, const ssl_st *a2)
{
  v2 = *(this + 6);
  if ((*(v2 + 222) & 8) != 0)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[0] = v5;
    v9[1] = v5;
    if (bssl::parse_message(this, v9, &v8))
    {
      v3 = v10;
    }

    else
    {
      v3 = 0;
    }

    v2 = *(this + 6);
  }

  else
  {
    v3 = 0;
  }

  v6 = *(v2 + 224);
  return v6 && *v6 > v3;
}

id boringssl_context_copy_metadata(uint64_t a1)
{
  if (a1 && *a1 == -1252936367 && (v1 = *(a1 + 8)) != 0)
  {
    return *(v1 + 512);
  }

  else
  {
    return 0;
  }
}

uint64_t nw_protocol_boringssl_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = nw_protocol_downcast();
  v11 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  if ((*(v10 + 435) & 1) == 0)
  {
    nw_protocol_boringssl_get_input_frames_cold_1();
  }

  v12 = 0;
  if (a4 && a5 && a6)
  {
    if ((boringssl_session_get_state(*(v11 + 296)) & 0xFFFFFFFE) == 2)
    {
      nw_frame_array_init();
      if ((*(v11 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_get_input_frames_cold_3();
      }

      v13 = *(v11 + 348);
      *(v11 + 348) &= ~0x40u;
      if (v13 < 0)
      {
        *(v11 + 348) = v13 & 0x3F;
        v14 = *(*(v11 + 296) + 8);
        v15 = v11;
        v16 = v14[3];
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __nw_protocol_boringssl_get_input_frames_block_invoke;
        v35 = &unk_1E785EB40;
        v36 = v15;
        nw_queue_context_async();
      }

      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      nw_frame_array_foreach();
      v17 = *(v29 + 6);
      if (v17 >= a3)
      {
        if ((*(v11 + 435) & 1) == 0 && datapath_logging_enabled == 1)
        {
          v23 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
            {
              v26 = *(v38 + 6);
              v27 = *(v29 + 6);
              *buf = 136447490;
              v42 = "nw_protocol_boringssl_get_input_frames";
              v43 = 1024;
              v44 = 2142;
              v45 = 2082;
              v46 = v11 + 351;
              v47 = 2048;
              v48 = v11;
              v49 = 1024;
              v50 = v26;
              v51 = 1024;
              v52 = v27;
              _os_log_debug_impl(&dword_1A8FF5000, v23, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Returning %u frames (%u bytes) to input handler", buf, 0x32u);
            }

            v17 = *(v29 + 6);
          }
        }

        v20 = *(v11 + 340);
        v21 = v20 >= v17;
        v22 = v20 - v17;
        if (!v21)
        {
          v22 = 0;
        }

        *(v11 + 340) = v22;
        v12 = *(v38 + 6);
      }

      else
      {
        if (*(v38 + 6))
        {
          nw_protocol_boringssl_prepend_frame_array();
        }

        nw_frame_array_init();
        if ((*(v11 + 435) & 1) == 0 && datapath_logging_enabled == 1)
        {
          v24 = g_boringssl_log;
          if (g_boringssl_log)
          {
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
            {
              v25 = *(v29 + 6);
              *buf = 136447490;
              v42 = "nw_protocol_boringssl_get_input_frames";
              v43 = 1024;
              v44 = 2138;
              v45 = 2082;
              v46 = v11 + 351;
              v47 = 2048;
              v48 = v11;
              v49 = 1024;
              v50 = v25;
              v51 = 1024;
              v52 = a3;
              _os_log_debug_impl(&dword_1A8FF5000, v24, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Not enough bytes in record to satisfy request (%u < %u)", buf, 0x32u);
            }
          }
        }

        v12 = 0;
      }

      _Block_object_dispose(&v28, 8);
      goto LABEL_20;
    }

    if ((*(v11 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_get_input_frames_cold_2();
      v12 = *buf;
      goto LABEL_20;
    }

LABEL_19:
    v12 = 0;
  }

LABEL_20:
  _Block_object_dispose(&v37, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t bssl::tls_open_app_data(uint64_t a1, ssl_st *a2, unsigned __int8 **a3, ssl_st *a4, unsigned __int16 *a5, unint64_t a6)
{
  if ((bssl::ssl_can_read(a1, a2) & 1) == 0)
  {
    bssl::tls_open_app_data();
  }

  if (!**(*(a1 + 48) + 264))
  {
    bssl::tls_open_app_data();
  }

  v22 = -86;
  v21 = 0uLL;
  result = bssl::tls_open_record(a1, &v22, &v21, a3, a4, a5, a6);
  if (!result)
  {
    v14 = (*(a1 + 180) & 1) != 0 && SSL_in_early_data(a1) != 0;
    if (v22 != 23)
    {
      if (v22 == 22)
      {
        if ((*(a1 + 180) & 1) != 0 && bssl::ssl_protocol_version(a1, v13) <= 0x303)
        {
          ERR_put_error(16, 0, 182, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", 350);
          v15 = 100;
LABEL_19:
          LOBYTE(a4->version) = v15;
          return 4;
        }

        if ((bssl::tls_append_handshake_data(a1, v21, *(&v21 + 1)) & 1) == 0)
        {
          v15 = 80;
          goto LABEL_19;
        }

        return 1;
      }

      v19 = 225;
      v20 = 363;
LABEL_16:
      ERR_put_error(16, 0, v19, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_pkt.cc", v20);
      v15 = 10;
      goto LABEL_19;
    }

    v16 = *(&v21 + 1);
    if (v14)
    {
      v17 = *(*(a1 + 48) + 280);
      v18 = *(v17 + 1606);
      if (*(&v21 + 1) > (14336 - v18))
      {
        v19 = 300;
        v20 = 370;
        goto LABEL_16;
      }

      *(v17 + 1606) = v18 + WORD4(v21);
    }

    if (v16)
    {
      result = 0;
      *&a2->version = v21;
      return result;
    }

    return 1;
  }

  return result;
}

void nw_protocol_boringssl_get_input_frames_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_get_input_frames_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_23())
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_4();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x32u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_frame_input_finalizer(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = v5;
  if (v5 && (*(v5 + 435) & 1) != 0)
  {
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    nw_protocol_boringssl_frame_input_finalizer_cold_1();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v6)
  {
    nw_frame_array_remove();
    buffer = nw_frame_get_buffer();
    if (buffer)
    {
      v8 = buffer;
      if (nw_frame_buffer_get_manager())
      {
        nw_mem_buffer_free();
      }

      else
      {
        free(v8);
      }
    }
  }

LABEL_10:
}

void nw_protocol_boringssl_frame_input_finalizer_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void nw_protocol_boringssl_input_available(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      if ((*(v4 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_input_available_cold_1();
      }

      if (nw_protocol_get_input_handler())
      {
        v6 = *(v5 + 435);
        if ((*(v5 + 350) & 2) != 0)
        {
          if ((*(v5 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_input_available_cold_2();
          }
        }

        else if ((*(v5 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_input_available_cold_3();
        }

        v7 = *(v5 + 240);
        if (v7 == a2)
        {
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v7 = *(v5 + 248);
          if (v7 == a2)
          {
            if (!v7)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v7 = *(v5 + 256);
            if (v7 != a2)
            {
              v7 = *(v5 + 264);
              if (v7 != a2 || !v7)
              {
                goto LABEL_23;
              }

              goto LABEL_20;
            }

            if (!v7)
            {
LABEL_23:
              nw_boringssl_read(a1);
              return;
            }
          }
        }

LABEL_20:
        v8 = 0;
        if (nw_protocol_boringssl_read_frames(v5, v7, &v8))
        {
          nw_frame_array_foreach();
          nw_protocol_boringssl_handshake_negotiate(v5);
        }
      }
    }
  }
}

void nw_protocol_boringssl_input_available_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t boringssl_session_is_cancelled(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      return (*(v1 + 548) >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ERR_clear_error(void)
{
  state = err_get_state();
  if (state)
  {
    v1 = state;
    v2 = (state + 1);
    v3 = 16;
    do
    {
      free(*v2);
      *(v2 - 1) = 0;
      *v2 = 0;
      v2[1] = 0;
      v2 += 3;
      --v3;
    }

    while (v3);
    free(v1[49]);
    v1[48] = 0;
    v1[49] = 0;
  }
}

int *ERR_clear_system_error()
{
  result = __error();
  *result = 0;
  return result;
}

void *err_get_state()
{
  thread_local = CRYPTO_get_thread_local(0);
  if (!thread_local)
  {
    v2 = malloc_type_malloc(0x190uLL, 0x10D00400F8CE868uLL);
    thread_local = v2;
    if (v2)
    {
      v2[23] = 0u;
      v2[24] = 0u;
      v2[21] = 0u;
      v2[22] = 0u;
      v2[19] = 0u;
      v2[20] = 0u;
      v2[17] = 0u;
      v2[18] = 0u;
      v2[15] = 0u;
      v2[16] = 0u;
      v2[13] = 0u;
      v2[14] = 0u;
      v2[11] = 0u;
      v2[12] = 0u;
      v2[9] = 0u;
      v2[10] = 0u;
      v2[7] = 0u;
      v2[8] = 0u;
      v2[5] = 0u;
      v2[6] = 0u;
      v2[3] = 0u;
      v2[4] = 0u;
      v2[1] = 0u;
      v2[2] = 0u;
      *v2 = 0u;
      if (!CRYPTO_set_thread_local(0, v2, err_state_free))
      {
        return 0;
      }
    }
  }

  return thread_local;
}

void *CRYPTO_get_thread_local(int a1)
{
  if (pthread_once(&g_thread_local_init_once, thread_local_init))
  {
    abort();
  }

  if (!g_thread_local_key_created)
  {
    return 0;
  }

  result = pthread_getspecific(g_thread_local_key);
  if (result)
  {
    return result[a1];
  }

  return result;
}

uint64_t bssl::tls_get_message(uint64_t a1, uint64_t a2)
{
  v4 = bssl::parse_message(a1, a2, &v8);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 222);
    if ((v6 & 8) == 0)
    {
      if ((*a2 & 1) == 0)
      {
        bssl::ssl_do_msg_callback(a1, 0, 22, *(a2 + 24), *(a2 + 32));
        v5 = *(a1 + 48);
        v6 = *(v5 + 222);
      }

      *(v5 + 222) = v6 | 8;
    }
  }

  return v4;
}

uint64_t CBS_get_u8(void *a1, _BYTE *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[1] = v2 - 1;
  *a2 = *v3;
  return 1;
}

uint64_t CBS_get_bytes(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v7 = *a1;
  *a1 += a3;
  a1[1] = v5;
  *a2 = v7;
  a2[1] = a3;
  return 1;
}

uint64_t CBS_get_u16(unsigned __int16 **a1, _WORD *a2)
{
  v2 = a1[1];
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (!v3)
  {
    return 0;
  }

  v6 = (*a1)++;
  a1[1] = v4;
  *a2 = bswap32(*v6) >> 16;
  return 1;
}

uint64_t bssl::parse_message(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + 48) + 224);
  if (v4 && (v13 = -1431655766, v8 = v4, v7 = *v4, v14[0] = v8[1], v14[1] = v7, CBS_get_u8(v14, (a2 + 1))) && CBS_get_u24(v14, &v13))
  {
    result = CBS_get_bytes(v14, (a2 + 8), v13);
    if (result)
    {
      v10 = *(a1 + 48);
      v11 = v13 + 4;
      *(a2 + 24) = *(*(v10 + 224) + 8);
      *(a2 + 32) = v11;
      *a2 = (*(v10 + 222) & 4) != 0;
      return 1;
    }

    v12 = v13 + 4;
  }

  else
  {
    result = 0;
    v12 = 4;
  }

  *a3 = v12;
  return result;
}

uint64_t nw_protocol_boringssl_read_frames(void *a1, uint64_t a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (!a3)
  {
LABEL_16:
    input_frames = 0;
    goto LABEL_17;
  }

  if (boringssl_session_get_state(v5[37]) > 3 || (boringssl_session_is_cancelled(*(v6 + 296)) & 1) != 0)
  {
    input_frames = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  nw_frame_array_init();
  nw_protocol_upcast();
  if ((nw_protocol_get_input_frames_is_valid() & 1) == 0)
  {
    if ((*(v6 + 435) & 1) == 0)
    {
      nw_protocol_boringssl_read_frames_cold_1(v6, a2, buf);
      input_frames = *buf;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  nw_protocol_upcast();
  input_frames = nw_protocol_get_input_frames();
  *a3 = 0;
  v8 = nw_frame_array_first();
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = nw_frame_array_next();
      nw_frame_unclaimed_bytes();
      *a3 = *a3;
      nw_frame_array_remove();
      nw_frame_array_append();
      if (nw_frame_is_wake_packet())
      {
        *(v6 + 350) |= 0x10u;
        if ((*(v6 + 435) & 1) == 0)
        {
          if (g_boringssl_log)
          {
            log = g_boringssl_log;
            if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
            {
              *buf = 136446978;
              v15 = "nw_protocol_boringssl_read_frames";
              v16 = 1024;
              v17 = 348;
              v18 = 2082;
              v19 = v6 + 351;
              v20 = 2048;
              v21 = v6;
              _os_log_impl(&dword_1A8FF5000, log, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Frame with wake flag detected", buf, 0x26u);
            }
          }
        }
      }

      v9 = v10;
    }

    while (v10);
  }

LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return input_frames;
}

void boringssl_context_message_handler(int a1, int a2, int a3, char *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v61 = *MEMORY[0x1E69E9840];
  if (a3 == 256 && a2 == 0 || a7 == 0)
  {
    goto LABEL_41;
  }

  if (*a7 != -1252936367)
  {
    goto LABEL_41;
  }

  v10 = *(a7 + 8);
  if (!v10 || a3 == 23 && boringssl_session_get_state(a7) > 1)
  {
    goto LABEL_41;
  }

  boringssl_session_update_flight_time(a7, a1, a5);
  if (*a7 != -1252936367)
  {
    goto LABEL_35;
  }

  v15 = *(a7 + 8);
  if (!v15)
  {
    goto LABEL_35;
  }

  if ((a3 - 20) < 4)
  {
    v16 = off_1E7869868[a3 - 20];
    WeakRetained = objc_loadWeakRetained((v15 + 16));
    if (WeakRetained)
    {
      v18 = WeakRetained;
      v19 = objc_loadWeakRetained((v15 + 16));
      v20 = v19[435];

      if (v20)
      {
        goto LABEL_35;
      }
    }

    v21 = objc_loadWeakRetained((v15 + 16));
    if (v21)
    {
      v22 = objc_loadWeakRetained((v15 + 16));
      v23 = (v22[435] & 1) == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23 || !g_boringssl_log)
    {
      goto LABEL_35;
    }

    v31 = g_boringssl_log;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_loadWeakRetained((v15 + 16));
      if (v32)
      {
        v42 = objc_loadWeakRetained((v15 + 16));
        v33 = v42 + 351;
      }

      else
      {
        v33 = &unk_1A9098A9F;
      }

      v39 = objc_loadWeakRetained((v15 + 16));
      v40 = v39;
      *buf = 136447746;
      v48 = "boringssl_context_log_message";
      v41 = "Writing";
      v49 = 1024;
      v50 = 2457;
      v51 = 2082;
      if (!a1)
      {
        v41 = "Reading";
      }

      v52 = v33;
      v53 = 2048;
      v54 = v39;
      v55 = 2082;
      v56 = v41;
      v57 = 2082;
      v58 = v16;
      v59 = 2048;
      v60 = a5;
      _os_log_debug_impl(&dword_1A8FF5000, v31, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] %{public}s %{public}s %zu bytes", buf, 0x44u);

      if (v32)
      {
      }
    }

LABEL_34:

LABEL_35:
    if (a3 == 22)
    {
      if (a4)
      {
        if (a5)
        {
          v34 = *a4;
          *(v10 + 300) = *a4;
          if (*(v10 + 200))
          {
            if (*(v10 + 208))
            {
              v35 = dispatch_data_create(a4, a5, 0, 0);
              v36 = *(v10 + 200);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __boringssl_context_message_handler_block_invoke;
              block[3] = &unk_1E7869700;
              v46 = v34;
              v44 = v35;
              v45 = v10;
              v37 = v35;
              dispatch_async(v36, block);
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

  v24 = objc_loadWeakRetained((v15 + 16));
  if (!v24 || (v25 = v24, v26 = objc_loadWeakRetained((v15 + 16)), v27 = v26[435], v26, v25, (v27 & 1) == 0))
  {
    v28 = objc_loadWeakRetained((v15 + 16));
    if (v28)
    {
      v29 = objc_loadWeakRetained((v15 + 16));
      v30 = (v29[435] & 1) == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      if (g_boringssl_log)
      {
        v31 = g_boringssl_log;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          boringssl_context_message_handler_cold_1();
        }

        goto LABEL_34;
      }
    }
  }

LABEL_41:
  v38 = *MEMORY[0x1E69E9840];
}