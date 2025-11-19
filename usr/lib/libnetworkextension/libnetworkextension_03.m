uint64_t ne_filter_protocol_fulfill_frame_request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, _DWORD *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "ne_filter_protocol_fulfill_frame_request";
    v14 = "%s called with null source_array";
    goto LABEL_19;
  }

  if (!a3)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "ne_filter_protocol_fulfill_frame_request";
    v14 = "%s called with null destination_array";
LABEL_19:
    v15 = v17;
    v16 = 12;
    goto LABEL_14;
  }

  if (!a5 || !a6)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    LODWORD(buf) = 67109632;
    DWORD1(buf) = a5;
    WORD4(buf) = 1024;
    *(&buf + 10) = 0;
    HIWORD(buf) = 1024;
    LODWORD(v24) = a6;
    v14 = "invalid values for frame request, max %u, min %u, max frame %u";
    v15 = v11;
    v16 = 20;
LABEL_14:
    _os_log_fault_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_FAULT, v14, &buf, v16);
    goto LABEL_11;
  }

  v22 = 0uLL;
  nw_frame_array_init();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  nw_frame_array_foreach();
  if (a7)
  {
    *a7 = *(v19 + 6);
  }

  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    nw_frame_array_foreach();
  }

  v10 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&buf, 8);
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL __ne_filter_protocol_fulfill_frame_request_block_invoke(uint64_t a1)
{
  v109 = *MEMORY[0x1E69E9840];
  v2 = nw_frame_unclaimed_length();
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) > *(a1 + 80))
  {
    goto LABEL_57;
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  v5 = *(a1 + 84);
  v6 = v5 - v4;
  if (v5 <= v4)
  {
    goto LABEL_57;
  }

  v7 = v2;
  if (v6 >= v2)
  {
    *(v3 + 24) = v4 + v2;
    v16 = *(a1 + 56);
    v17 = *(a1 + 89);
    nw_frame_array_remove();
    memset(out, 0, 37);
    uuid_unparse(*(a1 + 48), out);
    v18 = *(*(a1 + 48) + 176);
    v19 = ne_log_obj();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (v18 == 3)
    {
      if (v20)
      {
        v21 = *(a1 + 48);
        v22 = v21[10];
        if (v22)
        {
          LODWORD(v22) = nw_parameters_get_ip_protocol();
          v21 = *(a1 + 48);
        }

        v23 = v21[20];
        if (v23)
        {
          v25 = v23[6];
          v26 = v23[7];
          v24 = v23[8];
          v27 = v23[9];
        }

        else
        {
          v24 = -1;
          v25 = -1;
          v26 = -1;
          v27 = -1;
        }

        v49 = v21[21];
        if (v49)
        {
          v51 = v49[6];
          v52 = v49[7];
          v50 = v49[8];
          v53 = v49[9];
        }

        else
        {
          v50 = -1;
          v51 = -1;
          v52 = -1;
          v53 = -1;
        }

        *buf = 136317698;
        v84 = out;
        v85 = 1024;
        v86 = v22;
        v87 = 2048;
        v88 = v25;
        v89 = 2048;
        *v90 = v26;
        *&v90[8] = 2048;
        v91 = v24;
        v92 = 2048;
        v93 = v27;
        v94 = 2048;
        v95 = v51;
        v96 = 2048;
        v97 = v52;
        v98 = 2048;
        v99 = v50;
        v100 = 2048;
        v101 = v53;
        v102 = 1024;
        v103 = v7;
        v54 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]Moving entire frame (%u bytes)";
        v55 = v19;
        v56 = 104;
LABEL_47:
        _os_log_debug_impl(&dword_1C0DA5000, v55, OS_LOG_TYPE_DEBUG, v54, buf, v56);
      }
    }

    else if (v20)
    {
      v38 = *(a1 + 48);
      v39 = *(v38 + 80);
      if (v39)
      {
        LODWORD(v39) = nw_parameters_get_ip_protocol();
        v38 = *(a1 + 48);
      }

      v40 = *(v38 + 176);
      if (v40 > 3)
      {
        v41 = "unknown";
      }

      else
      {
        v41 = off_1E812BFE0[v40];
      }

      *buf = 136315906;
      v84 = out;
      v85 = 1024;
      v86 = v39;
      v87 = 2080;
      v88 = v41;
      v89 = 1024;
      *v90 = v7;
      v54 = "[filter %s %d %s] Moving entire frame (%u bytes)";
      v55 = v19;
      v56 = 34;
      goto LABEL_47;
    }

LABEL_48:
    ++*(*(*(a1 + 32) + 8) + 24);
    v57 = *(a1 + 89);
    nw_frame_array_append();
    result = 1;
    goto LABEL_58;
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    memset(out, 0, 37);
    uuid_unparse(*(a1 + 48), out);
    v28 = *(*(a1 + 48) + 176);
    v29 = ne_log_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v28 == 3)
    {
      if (!v30)
      {
        goto LABEL_57;
      }

      v31 = *(a1 + 48);
      v32 = v31[10];
      if (v32)
      {
        LODWORD(v32) = nw_parameters_get_ip_protocol();
        v31 = *(a1 + 48);
      }

      v33 = v31[20];
      if (v33)
      {
        v35 = v33[6];
        v36 = v33[7];
        v34 = v33[8];
        v37 = v33[9];
      }

      else
      {
        v34 = -1;
        v35 = -1;
        v36 = -1;
        v37 = -1;
      }

      v58 = v31[21];
      if (v58)
      {
        v60 = v58[6];
        v61 = v58[7];
        v59 = v58[8];
        v62 = v58[9];
      }

      else
      {
        v59 = -1;
        v60 = -1;
        v61 = -1;
        v62 = -1;
      }

      *buf = 136317442;
      v84 = out;
      v85 = 1024;
      v86 = v32;
      v87 = 2048;
      v88 = v35;
      v89 = 2048;
      *v90 = v36;
      *&v90[8] = 2048;
      v91 = v34;
      v92 = 2048;
      v93 = v37;
      v94 = 2048;
      v95 = v60;
      v96 = 2048;
      v97 = v61;
      v98 = 2048;
      v99 = v59;
      v100 = 2048;
      v101 = v62;
      v63 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]skipping partial frame, split frames not allowed";
      v64 = v29;
      v65 = 98;
    }

    else
    {
      if (!v30)
      {
        goto LABEL_57;
      }

      v42 = *(a1 + 48);
      v43 = *(v42 + 80);
      if (v43)
      {
        LODWORD(v43) = nw_parameters_get_ip_protocol();
        v42 = *(a1 + 48);
      }

      v44 = *(v42 + 176);
      if (v44 > 3)
      {
        v45 = "unknown";
      }

      else
      {
        v45 = off_1E812BFE0[v44];
      }

      *buf = 136315650;
      v84 = out;
      v85 = 1024;
      v86 = v43;
      v87 = 2080;
      v88 = v45;
      v63 = "[filter %s %d %s] skipping partial frame, split frames not allowed";
      v64 = v29;
      v65 = 28;
    }

    _os_log_debug_impl(&dword_1C0DA5000, v64, OS_LOG_TYPE_DEBUG, v63, buf, v65);
    goto LABEL_57;
  }

  v8 = malloc_type_calloc(1uLL, v5 - v4, 0x100004077774924uLL);
  if (v8)
  {
    v9 = v8;
    if (nw_frame_create())
    {
      v10 = nw_frame_unclaimed_bytes();
      memcpy(v9, v10, v6);
      v11 = *(a1 + 48);
      nw_frame_claim();
      *(*(*(a1 + 40) + 8) + 24) += v6;
      memset(out, 0, 37);
      uuid_unparse(*(a1 + 48), out);
      v12 = *(*(a1 + 48) + 176);
      v13 = ne_log_obj();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (v12 == 3)
      {
        if (!v14)
        {
          goto LABEL_48;
        }

        v15 = *(a1 + 48);
        if (v15[10])
        {
          ip_protocol = nw_parameters_get_ip_protocol();
          v15 = *(a1 + 48);
        }

        else
        {
          ip_protocol = 0;
        }

        v69 = v15[20];
        if (v69)
        {
          v79 = v69[7];
          v80 = v69[6];
          v73 = v69[8];
          v70 = v69[9];
          v81 = v73;
        }

        else
        {
          v70 = -1;
          v80 = -1;
          v81 = -1;
          v79 = -1;
        }

        v74 = v15[21];
        if (v74)
        {
          v76 = v74[6];
          v77 = v74[7];
          v75 = v74[8];
          v78 = v74[9];
        }

        else
        {
          v75 = -1;
          v76 = -1;
          v77 = -1;
          v78 = -1;
        }

        *buf = 136318210;
        v84 = out;
        v85 = 1024;
        v86 = ip_protocol;
        v87 = 2048;
        v88 = v80;
        v89 = 2048;
        *v90 = v79;
        *&v90[8] = 2048;
        v91 = v81;
        v92 = 2048;
        v93 = v70;
        v94 = 2048;
        v95 = v76;
        v96 = 2048;
        v97 = v77;
        v98 = 2048;
        v99 = v75;
        v100 = 2048;
        v101 = v78;
        v102 = 1024;
        v103 = v6;
        v104 = 1024;
        v105 = v7;
        v106 = 1024;
        v107 = nw_frame_unclaimed_length();
        v54 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]Moving partial frame (%u bytes of %u, %u bytes remaining)";
        v55 = v13;
        v56 = 116;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_48;
        }

        v67 = *(a1 + 48);
        if (*(v67 + 80))
        {
          v68 = nw_parameters_get_ip_protocol();
          v67 = *(a1 + 48);
        }

        else
        {
          v68 = 0;
        }

        v71 = *(v67 + 176);
        if (v71 > 3)
        {
          v72 = "unknown";
        }

        else
        {
          v72 = off_1E812BFE0[v71];
        }

        *buf = 136316418;
        v84 = out;
        v85 = 1024;
        v86 = v68;
        v87 = 2080;
        v88 = v72;
        v89 = 1024;
        *v90 = v6;
        *&v90[4] = 1024;
        *&v90[6] = v7;
        LOWORD(v91) = 1024;
        *(&v91 + 2) = nw_frame_unclaimed_length();
        v54 = "[filter %s %d %s] Moving partial frame (%u bytes of %u, %u bytes remaining)";
        v55 = v13;
        v56 = 46;
      }

      goto LABEL_47;
    }

    v48 = ne_log_obj();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C0DA5000, v48, OS_LOG_TYPE_FAULT, "nw_frame_create with partial data failed", buf, 2u);
    }

    free(v9);
LABEL_57:
    result = 0;
    goto LABEL_58;
  }

  v46 = ne_log_obj();
  result = os_log_type_enabled(v46, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 67109120;
    LODWORD(v84) = v6;
    _os_log_fault_impl(&dword_1C0DA5000, v46, OS_LOG_TYPE_FAULT, "calloc(%u) failed", buf, 8u);
    goto LABEL_57;
  }

LABEL_58:
  v66 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ne_filter_protocol_fulfill_frame_request_block_invoke_36(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    nw_frame_array_remove();
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    nw_frame_array_append();
  }

  return 1;
}

void ne_filter_partial_input_frame_finalizer(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    buffer = nw_frame_get_buffer();
    free(buffer);
    nw_frame_reset();
    v3 = *MEMORY[0x1E69E9840];

    nw_release(a1);
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "ne_filter_partial_input_frame_finalizer";
      _os_log_fault_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_FAULT, "%s called with null frame", &v6, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }
}

sockaddr *ne_filter_create_wildcard_remote_sockaddr(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  if (v4)
  {
    v5 = __rev16(nw_endpoint_get_port(v4));
  }

  else
  {
    v5 = 0;
  }

  result = *(a2 + 64);
  if (!result || (result = nw_endpoint_get_type(result), result != 1) || (result = nw_endpoint_get_address(*(a2 + 64))) == 0)
  {
    *(a1 + 12) = 0;
    *(a1 + 4) = 0;
    *(a1 + 20) = 0;
    goto LABEL_10;
  }

  sa_family = result->sa_family;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if (sa_family != 2)
  {
LABEL_10:
    *a1 = 7708;
    *(a1 + 8) = *MEMORY[0x1E69E99B8];
    goto LABEL_11;
  }

  *a1 = 528;
LABEL_11:
  *(a1 + 2) = v5;
  return result;
}

uint64_t __ne_filter_data_protocol_send_data_block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(*(a1 + 32), out);
  v4 = *(*(a1 + 32) + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v7[10];
      if (v8)
      {
        LODWORD(v8) = nw_parameters_get_ip_protocol();
        v7 = *(a1 + 32);
      }

      v9 = v7[20];
      if (v9)
      {
        v11 = v9[6];
        v12 = v9[7];
        v10 = v9[8];
        v13 = v9[9];
      }

      else
      {
        v10 = -1;
        v11 = -1;
        v12 = -1;
        v13 = -1;
      }

      v21 = v7[21];
      if (v21)
      {
        v23 = v21[6];
        v24 = v21[7];
        v22 = v21[8];
        v25 = v21[9];
      }

      else
      {
        v22 = -1;
        v23 = -1;
        v24 = -1;
        v25 = -1;
      }

      v30 = *(a1 + 40);
      *buf = 136317698;
      v34 = out;
      v35 = 1024;
      v36 = v8;
      v37 = 2048;
      v38 = v11;
      v39 = 2048;
      v40 = v12;
      v41 = 2048;
      v42 = v10;
      v43 = 2048;
      v44 = v13;
      v45 = 2048;
      v46 = v23;
      v47 = 2048;
      v48 = v24;
      v49 = 2048;
      v50 = v22;
      v51 = 2048;
      v52 = v25;
      v53 = 2048;
      v54 = v30;
      v27 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]send-data reply received for %zu bytes";
      v28 = v5;
      v29 = 108;
LABEL_20:
      _os_log_debug_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_DEBUG, v27, buf, v29);
    }
  }

  else if (v6)
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 80);
    if (v18)
    {
      LODWORD(v18) = nw_parameters_get_ip_protocol();
      v17 = *(a1 + 32);
    }

    v19 = *(v17 + 176);
    if (v19 > 3)
    {
      v20 = "unknown";
    }

    else
    {
      v20 = off_1E812BFE0[v19];
    }

    v26 = *(a1 + 40);
    *buf = 136315906;
    v34 = out;
    v35 = 1024;
    v36 = v18;
    v37 = 2080;
    v38 = v20;
    v39 = 2048;
    v40 = v26;
    v27 = "[filter %s %d %s] send-data reply received for %zu bytes";
    v28 = v5;
    v29 = 38;
    goto LABEL_20;
  }

  xpc_retain(a2);
  v14 = *(*(a1 + 32) + 88);
  v32 = *(a1 + 64);
  v31 = *(a1 + 48);
  result = nw_queue_context_async();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __ne_filter_data_protocol_send_data_block_invoke_31(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x1C68E6D80](*(a1 + 32)) != MEMORY[0x1E69E9E98])
  {
    if (MEMORY[0x1C68E6D80](v2) == MEMORY[0x1E69E9E80])
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v4 = "Got an invalid data message reply";
      v5 = v3;
      v6 = 2;
LABEL_17:
      _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, v4, &v14, v6);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
    v14 = 136315138;
    v15 = string;
    v4 = "Got an error on the XPC connection when sending a data message: %s";
    v5 = v7;
    v6 = 12;
    goto LABEL_17;
  }

LABEL_7:
  v2 = 0;
LABEL_8:
  ne_filter_process_verdict(*(a1 + 40), *(a1 + 56), v2, **(a1 + 48));
  xpc_release(*(a1 + 32));
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = (v9 + 180);
      if (atomic_fetch_or(v10, 0))
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(*(a1 + 40));
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v14, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

BOOL __ne_filter_send_approved_frames_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = nw_frame_unclaimed_length();
  v3 = *(a1 + 32);
  v4 = *(v3 + 104) + v2;
  v5 = *(v3 + 64);
  if (v4 <= v5)
  {
    v6 = v2;
    v7 = v2;
    nw_frame_array_remove();
    v8 = *(a1 + 40);
    nw_frame_array_append();
    *(*(a1 + 32) + 104) += v7;
    memset(out, 0, 37);
    uuid_unparse(*(a1 + 48), out);
    LODWORD(v7) = *(*(a1 + 48) + 176);
    v9 = ne_log_obj();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v7 == 3)
    {
      if (v10)
      {
        v11 = *(a1 + 48);
        v12 = v11[10];
        if (v12)
        {
          LODWORD(v12) = nw_parameters_get_ip_protocol();
          v11 = *(a1 + 48);
        }

        v13 = v11[20];
        if (v13)
        {
          v15 = v13[6];
          v16 = v13[7];
          v14 = v13[8];
          v17 = v13[9];
        }

        else
        {
          v14 = -1;
          v15 = -1;
          v16 = -1;
          v17 = -1;
        }

        v24 = v11[21];
        if (v24)
        {
          v26 = v24[6];
          v27 = v24[7];
          v25 = v24[8];
          v28 = v24[9];
        }

        else
        {
          v25 = -1;
          v26 = -1;
          v27 = -1;
          v28 = -1;
        }

        v33 = *(*(a1 + 32) + 104);
        v34 = 136317954;
        v35 = out;
        v36 = 1024;
        v37 = v12;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        *v41 = v16;
        *&v41[8] = 2048;
        *&v41[10] = v14;
        v42 = 2048;
        v43 = v17;
        v44 = 2048;
        v45 = v26;
        v46 = 2048;
        v47 = v27;
        v48 = 2048;
        v49 = v25;
        v50 = 2048;
        v51 = v28;
        v52 = 1024;
        v53 = v6;
        v54 = 2048;
        v55 = v33;
        v30 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending frame with length %u, pendingOutputStartOffset is now %llu";
        v31 = v9;
        v32 = 114;
LABEL_21:
        _os_log_debug_impl(&dword_1C0DA5000, v31, OS_LOG_TYPE_DEBUG, v30, &v34, v32);
      }
    }

    else if (v10)
    {
      v20 = *(a1 + 48);
      v21 = *(v20 + 80);
      if (v21)
      {
        LODWORD(v21) = nw_parameters_get_ip_protocol();
        v20 = *(a1 + 48);
      }

      v22 = *(v20 + 176);
      if (v22 > 3)
      {
        v23 = "unknown";
      }

      else
      {
        v23 = off_1E812BFE0[v22];
      }

      v29 = *(*(a1 + 32) + 104);
      v34 = 136316162;
      v35 = out;
      v36 = 1024;
      v37 = v21;
      v38 = 2080;
      v39 = v23;
      v40 = 1024;
      *v41 = v6;
      *&v41[4] = 2048;
      *&v41[6] = v29;
      v30 = "[filter %s %d %s] sending frame with length %u, pendingOutputStartOffset is now %llu";
      v31 = v9;
      v32 = 44;
      goto LABEL_21;
    }
  }

  result = v4 <= v5;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ne_filter_send_approved_frames_block_invoke_49(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

void ne_filter_data_protocol_send_new_flow(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    *uuid = 0;
    v75 = 0;
    *uu = 0;
    v73 = 0;
    if (atomic_fetch_or((v2 + 180), 0))
    {
      v5 = *(v2 + 80);
      server_mode = nw_parameters_get_server_mode();
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v7, "command", 6);
      xpc_dictionary_set_uuid(v7, "flow-uuid", v2);
      v8 = *(v2 + 80);
      ip_protocol = nw_parameters_get_ip_protocol();
      xpc_dictionary_set_uint64(v7, "ip-protocol", ip_protocol);
      v10 = getpid();
      xpc_dictionary_set_uint64(v7, "client-pid", v10);
      v11 = *(v2 + 80);
      pid = nw_parameters_get_pid();
      xpc_dictionary_set_uint64(v7, "client-e-pid", pid);
      xpc_dictionary_set_uint64(v7, "connection-direction", server_mode ^ 1u);
      v13 = *(v2 + 80);
      nw_parameters_get_proc_uuid();
      xpc_dictionary_set_uuid(v7, "client-proc-uuid", uuid);
      v14 = *(v2 + 80);
      nw_parameters_get_e_proc_uuid();
      xpc_dictionary_set_uuid(v7, "client-e-proc-uuid", uu);
      v15 = *(v2 + 80);
      effective_bundle_id = nw_parameters_get_effective_bundle_id();
      if (effective_bundle_id)
      {
        xpc_dictionary_set_string(v7, "source-app-bundle-id", effective_bundle_id);
      }

      memset(out, 0, 37);
      memset(v70, 0, 37);
      uuid_unparse(uuid, out);
      uuid_unparse(uu, v70);
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v41 = getpid();
        v42 = *(v2 + 80);
        v43 = nw_parameters_get_pid();
        *length_4 = 67110402;
        v44 = "(no bundle id)";
        *&length_4[4] = v41;
        if (effective_bundle_id)
        {
          v44 = effective_bundle_id;
        }

        *&length_4[8] = 1024;
        v45 = "OUT";
        *&length_4[10] = v43;
        *&length_4[14] = 2080;
        *&length_4[16] = out;
        if (server_mode)
        {
          v45 = "IN";
        }

        *&length_4[24] = 2080;
        *&length_4[26] = v70;
        *&length_4[34] = 2080;
        *&length_4[36] = v44;
        *&length_4[44] = 2080;
        *&length_4[46] = v45;
        _os_log_debug_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_DEBUG, "FILTER PROTOCOL: New flow info:\n\t\t\t\tpid:\t%d\n\t\t\t\tepid:\t%d\n\t\t\t\tuuid:\t%s\n\t\t\t\teuuid:\t%s\n\t\t\t\tbundle id: %s\n\t\t\t\tconnection Dir: %s", length_4, 0x36u);
      }

      v18 = *(v2 + 80);
      url = nw_parameters_get_url();
      if (url)
      {
        xpc_dictionary_set_string(v7, "url", url);
      }

      v20 = *(v2 + 64);
      if (v20)
      {
        if (nw_endpoint_get_type(v20) == nw_endpoint_type_address)
        {
          address = nw_endpoint_get_address(*(v2 + 64));
          if (address)
          {
            xpc_dictionary_set_data(v7, "local-addr", address, address->sa_len);
          }
        }
      }

      v22 = *(v2 + 72);
      if (v22)
      {
        type = nw_endpoint_get_type(v22);
        v24 = *(v2 + 72);
        if (type == nw_endpoint_type_address)
        {
          v25 = nw_endpoint_get_address(v24);
          if (v25)
          {
            xpc_dictionary_set_data(v7, "remote-addr", v25, v25->sa_len);
          }

          v26 = *(v2 + 72);
          parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
          if (!parent_endpoint_domain)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (nw_endpoint_get_type(v24) != nw_endpoint_type_host)
          {
            goto LABEL_21;
          }

          memset(length_4, 0, 28);
          ne_filter_create_wildcard_remote_sockaddr(length_4, v2);
          xpc_dictionary_set_data(v7, "remote-addr", length_4, length_4[0]);
          parent_endpoint_domain = nw_endpoint_get_hostname(*(v2 + 72));
          if (!parent_endpoint_domain)
          {
            goto LABEL_21;
          }
        }

        xpc_dictionary_set_string(v7, "remote-hostname", parent_endpoint_domain);
      }

LABEL_21:
      memset(bytes, 0, sizeof(bytes));
      length = 0;
      if (ne_filter_generate_crypto_signature(*(a2 + 4), v2, bytes, &length, 0))
      {
        xpc_dictionary_set_data(v7, "crypto-signature", bytes, length);
      }

      else
      {
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *length_4 = 0;
          _os_log_error_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_ERROR, "Failed to generate signature for new flow message", length_4, 2u);
        }
      }

      memset(v68, 0, 37);
      uuid_unparse(v2, v68);
      v29 = *(v2 + 176);
      v30 = ne_log_obj();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      if (v29 == 3)
      {
        if (v31)
        {
          v32 = *(v2 + 80);
          if (v32)
          {
            LODWORD(v32) = nw_parameters_get_ip_protocol();
          }

          v33 = *(v2 + 160);
          if (v33)
          {
            v35 = v33[6];
            v36 = v33[7];
            v34 = v33[8];
            v37 = v33[9];
          }

          else
          {
            v34 = -1;
            v35 = -1;
            v36 = -1;
            v37 = -1;
          }

          v49 = *(v2 + 168);
          if (v49)
          {
            v51 = v49[6];
            v52 = v49[7];
            v50 = v49[8];
            v53 = v49[9];
          }

          else
          {
            v50 = -1;
            v51 = -1;
            v52 = -1;
            v53 = -1;
          }

          *length_4 = 136317442;
          *&length_4[4] = v68;
          *&length_4[12] = 1024;
          *&length_4[14] = v32;
          *&length_4[18] = 2048;
          *&length_4[20] = v35;
          *&length_4[28] = 2048;
          *&length_4[30] = v36;
          *&length_4[38] = 2048;
          *&length_4[40] = v34;
          *&length_4[48] = 2048;
          *&length_4[50] = v37;
          v60 = 2048;
          v61 = v51;
          v62 = 2048;
          v63 = v52;
          v64 = 2048;
          v65 = v50;
          v66 = 2048;
          v67 = v53;
          v54 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending new flow message";
          v55 = v30;
          v56 = 98;
LABEL_50:
          _os_log_debug_impl(&dword_1C0DA5000, v55, OS_LOG_TYPE_DEBUG, v54, length_4, v56);
        }
      }

      else if (v31)
      {
        v46 = *(v2 + 80);
        if (v46)
        {
          LODWORD(v46) = nw_parameters_get_ip_protocol();
        }

        v47 = *(v2 + 176);
        if (v47 > 3)
        {
          v48 = "unknown";
        }

        else
        {
          v48 = off_1E812BFE0[v47];
        }

        *length_4 = 136315650;
        *&length_4[4] = v68;
        *&length_4[12] = 1024;
        *&length_4[14] = v46;
        *&length_4[18] = 2080;
        *&length_4[20] = v48;
        v54 = "[filter %s %d %s] sending new flow message";
        v55 = v30;
        v56 = 28;
        goto LABEL_50;
      }

      atomic_fetch_add((v2 + 180), 1u);
      v38 = *(v2 + 96);
      v39 = *(a2 + 4);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v57[2] = __ne_filter_data_protocol_send_new_flow_block_invoke;
      v57[3] = &__block_descriptor_tmp_64;
      v57[4] = v2;
      v57[5] = a1;
      v57[6] = a2;
      ne_filter_send_message(v38, v39, v7, v57);
      xpc_release(v7);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t __ne_filter_data_protocol_send_new_flow_block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(*(a1 + 32), out);
  v4 = *(*(a1 + 32) + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v7[10];
      if (v8)
      {
        LODWORD(v8) = nw_parameters_get_ip_protocol();
        v7 = *(a1 + 32);
      }

      v9 = v7[20];
      if (v9)
      {
        v11 = v9[6];
        v12 = v9[7];
        v10 = v9[8];
        v13 = v9[9];
      }

      else
      {
        v10 = -1;
        v11 = -1;
        v12 = -1;
        v13 = -1;
      }

      v21 = v7[21];
      if (v21)
      {
        v23 = v21[6];
        v24 = v21[7];
        v22 = v21[8];
        v25 = v21[9];
      }

      else
      {
        v22 = -1;
        v23 = -1;
        v24 = -1;
        v25 = -1;
      }

      *buf = 136317442;
      v31 = out;
      v32 = 1024;
      v33 = v8;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      v38 = 2048;
      v39 = v10;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v23;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v22;
      v48 = 2048;
      v49 = v25;
      v26 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received new flow xpc reply";
      v27 = v5;
      v28 = 98;
LABEL_20:
      _os_log_debug_impl(&dword_1C0DA5000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
    }
  }

  else if (v6)
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 80);
    if (v18)
    {
      LODWORD(v18) = nw_parameters_get_ip_protocol();
      v17 = *(a1 + 32);
    }

    v19 = *(v17 + 176);
    if (v19 > 3)
    {
      v20 = "unknown";
    }

    else
    {
      v20 = off_1E812BFE0[v19];
    }

    *buf = 136315650;
    v31 = out;
    v32 = 1024;
    v33 = v18;
    v34 = 2080;
    v35 = v20;
    v26 = "[filter %s %d %s] received new flow xpc reply";
    v27 = v5;
    v28 = 28;
    goto LABEL_20;
  }

  xpc_retain(a2);
  v14 = *(*(a1 + 32) + 88);
  v29 = *(a1 + 40);
  result = nw_queue_context_async();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __ne_filter_data_protocol_send_new_flow_block_invoke_62(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x1C68E6D80](*(a1 + 32)) != MEMORY[0x1E69E9E98])
  {
    if (MEMORY[0x1C68E6D80](v2) == MEMORY[0x1E69E9E80])
    {
      goto LABEL_8;
    }

LABEL_4:
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v4 = "Got an invalid new flow message reply";
      v5 = v3;
      v6 = 2;
LABEL_17:
      _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, v4, &v14, v6);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
    v14 = 136315138;
    v15 = string;
    v4 = "Got an error on the XPC connection when sending a new flow message: %s";
    v5 = v7;
    v6 = 12;
    goto LABEL_17;
  }

LABEL_7:
  v2 = 0;
LABEL_8:
  ne_filter_process_verdict(*(a1 + 40), 6, v2, **(a1 + 48));
  xpc_release(*(a1 + 32));
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = (v9 + 180);
      if (atomic_fetch_or(v10, 0))
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(*(a1 + 40));
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v14, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_disconnected(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v26 = 136315138;
    v27 = "ne_filter_protocol_disconnected";
    v13 = "%s called with null protocol";
LABEL_15:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, &v26, 0xCu);
    goto LABEL_18;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v26 = 136315138;
    v27 = "ne_filter_protocol_disconnected";
    v13 = "%s called with null filter";
    goto LABEL_15;
  }

  if (atomic_fetch_or((v2 + 180), 0) && (*(v2 + 120) & 0x40) == 0)
  {
    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v3 = *(v2 + 176);
    v4 = ne_log_obj();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3 == 3)
    {
      if (v5)
      {
        v6 = *(v2 + 80);
        if (v6)
        {
          LODWORD(v6) = nw_parameters_get_ip_protocol();
        }

        v7 = *(v2 + 160);
        if (v7)
        {
          v9 = v7[6];
          v10 = v7[7];
          v8 = v7[8];
          v11 = v7[9];
        }

        else
        {
          v8 = -1;
          v9 = -1;
          v10 = -1;
          v11 = -1;
        }

        v18 = *(v2 + 168);
        if (v18)
        {
          v20 = v18[6];
          v21 = v18[7];
          v19 = v18[8];
          v22 = v18[9];
        }

        else
        {
          v19 = -1;
          v20 = -1;
          v21 = -1;
          v22 = -1;
        }

        v26 = 136317442;
        v27 = out;
        v28 = 1024;
        v29 = v6;
        v30 = 2048;
        v31 = v9;
        v32 = 2048;
        v33 = v10;
        v34 = 2048;
        v35 = v8;
        v36 = 2048;
        v37 = v11;
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v21;
        v42 = 2048;
        v43 = v19;
        v44 = 2048;
        v45 = v22;
        v23 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]disconnected";
        v24 = v4;
        v25 = 98;
LABEL_30:
        _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, v23, &v26, v25);
      }
    }

    else if (v5)
    {
      v15 = *(v2 + 80);
      if (v15)
      {
        LODWORD(v15) = nw_parameters_get_ip_protocol();
      }

      v16 = *(v2 + 176);
      if (v16 > 3)
      {
        v17 = "unknown";
      }

      else
      {
        v17 = off_1E812BFE0[v16];
      }

      v26 = 136315650;
      v27 = out;
      v28 = 1024;
      v29 = v15;
      v30 = 2080;
      v31 = v17;
      v23 = "[filter %s %d %s] disconnected";
      v24 = v4;
      v25 = 28;
      goto LABEL_30;
    }

    ne_filter_protocol_retain(a1);
    *(v2 + 120) |= 0x40u;
    ne_filter_handle_output_finished(a1);
    ne_filter_handle_input_finished(a1, 0);
    ne_filter_cleanup(a1);
    ne_filter_protocol_release(a1);
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_disconnect(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v26 = 136315138;
    v27 = "ne_filter_protocol_disconnect";
    v13 = "%s called with null protocol";
LABEL_15:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, &v26, 0xCu);
    goto LABEL_18;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v26 = 136315138;
    v27 = "ne_filter_protocol_disconnect";
    v13 = "%s called with null filter";
    goto LABEL_15;
  }

  if (atomic_fetch_or((v2 + 180), 0) && (*(v2 + 120) & 0x10) == 0)
  {
    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v3 = *(v2 + 176);
    v4 = ne_log_obj();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3 == 3)
    {
      if (v5)
      {
        v6 = *(v2 + 80);
        if (v6)
        {
          LODWORD(v6) = nw_parameters_get_ip_protocol();
        }

        v7 = *(v2 + 160);
        if (v7)
        {
          v9 = v7[6];
          v10 = v7[7];
          v8 = v7[8];
          v11 = v7[9];
        }

        else
        {
          v8 = -1;
          v9 = -1;
          v10 = -1;
          v11 = -1;
        }

        v18 = *(v2 + 168);
        if (v18)
        {
          v20 = v18[6];
          v21 = v18[7];
          v19 = v18[8];
          v22 = v18[9];
        }

        else
        {
          v19 = -1;
          v20 = -1;
          v21 = -1;
          v22 = -1;
        }

        v26 = 136317442;
        v27 = out;
        v28 = 1024;
        v29 = v6;
        v30 = 2048;
        v31 = v9;
        v32 = 2048;
        v33 = v10;
        v34 = 2048;
        v35 = v8;
        v36 = 2048;
        v37 = v11;
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v21;
        v42 = 2048;
        v43 = v19;
        v44 = 2048;
        v45 = v22;
        v23 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]output finished - disconnect";
        v24 = v4;
        v25 = 98;
LABEL_30:
        _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, v23, &v26, v25);
      }
    }

    else if (v5)
    {
      v15 = *(v2 + 80);
      if (v15)
      {
        LODWORD(v15) = nw_parameters_get_ip_protocol();
      }

      v16 = *(v2 + 176);
      if (v16 > 3)
      {
        v17 = "unknown";
      }

      else
      {
        v17 = off_1E812BFE0[v16];
      }

      v26 = 136315650;
      v27 = out;
      v28 = 1024;
      v29 = v15;
      v30 = 2080;
      v31 = v17;
      v23 = "[filter %s %d %s] output finished - disconnect";
      v24 = v4;
      v25 = 28;
      goto LABEL_30;
    }

    *(v2 + 120) |= 0x10u;
    ne_filter_handle_output_finished(a1);
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_connected(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v15 = 136315138;
    v16 = "ne_filter_protocol_connected";
    v11 = "%s called with null protocol";
LABEL_25:
    _os_log_fault_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_FAULT, v11, &v15, 0xCu);
    goto LABEL_17;
  }

  v3 = a1[5];
  if (!v3)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    v15 = 136315138;
    v16 = "ne_filter_protocol_connected";
    v11 = "%s called with null filter";
    goto LABEL_25;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
    goto LABEL_17;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        v7(a1[6], a2);
      }
    }
  }

  if (a1[4] != a2)
  {
    goto LABEL_17;
  }

  *(v3 + 120) |= 8u;
  if (!*(v3 + 64))
  {
    v8 = (*(a1[3] + 128))(a1);
    *(v3 + 64) = nw_retain(v8);
  }

  v9 = *(v3 + 176);
  if (v9 >= 2)
  {
    if (!v5 || v9 != 3)
    {
      goto LABEL_17;
    }
  }

  else if (!v5)
  {
    goto LABEL_17;
  }

  v13 = *(*(v5 + 24) + 40);
  if (!v13)
  {
LABEL_17:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = *MEMORY[0x1E69E9840];

  v13(v5, a1);
}

void ne_filter_protocol_output_finished(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v27 = 136315138;
    v28 = "ne_filter_protocol_output_finished";
    v13 = "%s called with null protocol";
LABEL_14:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, &v27, 0xCu);
    goto LABEL_19;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v27 = 136315138;
    v28 = "ne_filter_protocol_output_finished";
    v13 = "%s called with null filter";
    goto LABEL_14;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
    goto LABEL_19;
  }

  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (v5)
    {
      v6 = *(v2 + 80);
      if (v6)
      {
        LODWORD(v6) = nw_parameters_get_ip_protocol();
      }

      v7 = *(v2 + 160);
      if (v7)
      {
        v9 = v7[6];
        v10 = v7[7];
        v8 = v7[8];
        v11 = v7[9];
      }

      else
      {
        v8 = -1;
        v9 = -1;
        v10 = -1;
        v11 = -1;
      }

      v19 = *(v2 + 168);
      if (v19)
      {
        v21 = v19[6];
        v22 = v19[7];
        v20 = v19[8];
        v23 = v19[9];
      }

      else
      {
        v20 = -1;
        v21 = -1;
        v22 = -1;
        v23 = -1;
      }

      v27 = 136317442;
      v28 = out;
      v29 = 1024;
      v30 = v6;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v10;
      v35 = 2048;
      v36 = v8;
      v37 = 2048;
      v38 = v11;
      v39 = 2048;
      v40 = v21;
      v41 = 2048;
      v42 = v22;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v23;
      v24 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]output finished";
      v25 = v4;
      v26 = 98;
LABEL_31:
      _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, v24, &v27, v26);
    }
  }

  else if (v5)
  {
    v16 = *(v2 + 80);
    if (v16)
    {
      LODWORD(v16) = nw_parameters_get_ip_protocol();
    }

    v17 = *(v2 + 176);
    if (v17 > 3)
    {
      v18 = "unknown";
    }

    else
    {
      v18 = off_1E812BFE0[v17];
    }

    v27 = 136315650;
    v28 = out;
    v29 = 1024;
    v30 = v16;
    v31 = 2080;
    v32 = v18;
    v24 = "[filter %s %d %s] output finished";
    v25 = v4;
    v26 = 28;
    goto LABEL_31;
  }

  if ((*(v2 + 176) | 2) == 3)
  {
    v14 = *(v2 + 120);
    if ((v14 & 0x10) == 0)
    {
      *(v2 + 120) = v14 | 0x100;
      ne_filter_handle_output_finished(a1);
    }
  }

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_input_finished(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    *v26 = 136315138;
    *&v26[4] = "ne_filter_protocol_input_finished";
    v13 = "%s called with null protocol";
LABEL_16:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, v26, 0xCu);
    goto LABEL_21;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    *v26 = 136315138;
    *&v26[4] = "ne_filter_protocol_input_finished";
    v13 = "%s called with null filter";
    goto LABEL_16;
  }

  if (!atomic_fetch_or((v2 + 180), 0) || (*(v2 + 176) | 2) != 3 || (*(v2 + 120) & 0x240) != 0)
  {
    goto LABEL_21;
  }

  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (v5)
    {
      v6 = *(v2 + 80);
      if (v6)
      {
        LODWORD(v6) = nw_parameters_get_ip_protocol();
      }

      v7 = *(v2 + 160);
      if (v7)
      {
        v9 = v7[6];
        v10 = v7[7];
        v8 = v7[8];
        v11 = v7[9];
      }

      else
      {
        v8 = -1;
        v9 = -1;
        v10 = -1;
        v11 = -1;
      }

      v18 = *(v2 + 168);
      if (v18)
      {
        v20 = v18[6];
        v21 = v18[7];
        v19 = v18[8];
        v22 = v18[9];
      }

      else
      {
        v19 = -1;
        v20 = -1;
        v21 = -1;
        v22 = -1;
      }

      *v26 = 136317442;
      *&v26[4] = out;
      *&v26[12] = 1024;
      *&v26[14] = v6;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v10;
      v31 = 2048;
      v32 = v8;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v20;
      v37 = 2048;
      v38 = v21;
      v39 = 2048;
      v40 = v19;
      v41 = 2048;
      v42 = v22;
      v23 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]input finished";
      v24 = v4;
      v25 = 98;
LABEL_33:
      _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, v23, v26, v25);
    }
  }

  else if (v5)
  {
    v15 = *(v2 + 80);
    if (v15)
    {
      LODWORD(v15) = nw_parameters_get_ip_protocol();
    }

    v16 = *(v2 + 176);
    if (v16 > 3)
    {
      v17 = "unknown";
    }

    else
    {
      v17 = off_1E812BFE0[v16];
    }

    *v26 = 136315650;
    *&v26[4] = out;
    *&v26[12] = 1024;
    *&v26[14] = v15;
    v27 = 2080;
    v28 = v17;
    v23 = "[filter %s %d %s] input finished";
    v24 = v4;
    v25 = 28;
    goto LABEL_33;
  }

  *(v2 + 120) |= 0x200u;
  *v26 = 0;
  *&v26[8] = 0;
  nw_frame_array_init();
  if ((*(v2 + 121) & 0x40) == 0)
  {
    ne_filter_read_from_network(*(a1 + 40), v26, 1);
  }

  ne_filter_handle_input_finished(a1, v26);
LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
}

void ne_filter_read_from_network(uint64_t a1, uint64_t a2, char a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (atomic_fetch_or((a1 + 180), 0))
    {
      if (a3)
      {
        goto LABEL_8;
      }

      v4 = *(a1 + 144);
      if (!v4)
      {
        goto LABEL_8;
      }

      while (*(v4 + 40) != 3 || *(v4 + 48) == -1)
      {
        v4 = *(v4 + 152);
        if (!v4)
        {
          goto LABEL_8;
        }
      }

      v28 = *(v4 + 88) + nw_frame_array_unclaimed_length();
      v29 = *(v4 + 56);
      if (v29 > v28 && v29 != v28)
      {
LABEL_8:
        nw_frame_array_init();
        v5 = *(a1 + 32);
        if (v5)
        {
          v6 = *(*(v5 + 24) + 80);
          if (v6)
          {
            v7 = v6(v5, a1);
            if (v7)
            {
              v8 = v7;
              memset(out, 0, 37);
              uuid_unparse(a1, out);
              v9 = *(a1 + 176);
              v10 = ne_log_obj();
              v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
              if (v9 == 3)
              {
                if (v11)
                {
                  v12 = *(a1 + 80);
                  if (v12)
                  {
                    LODWORD(v12) = nw_parameters_get_ip_protocol();
                  }

                  v13 = *(a1 + 160);
                  if (v13)
                  {
                    v15 = v13[6];
                    v16 = v13[7];
                    v14 = v13[8];
                    v17 = v13[9];
                  }

                  else
                  {
                    v14 = -1;
                    v15 = -1;
                    v16 = -1;
                    v17 = -1;
                  }

                  v38 = *(a1 + 168);
                  if (v38)
                  {
                    v40 = v38[6];
                    v41 = v38[7];
                    v39 = v38[8];
                    v42 = v38[9];
                  }

                  else
                  {
                    v39 = -1;
                    v40 = -1;
                    v41 = -1;
                    v42 = -1;
                  }

                  *buf = 136317698;
                  v55 = out;
                  v56 = 1024;
                  v57 = v12;
                  v58 = 2048;
                  v59 = v15;
                  v60 = 2048;
                  v61 = v16;
                  v62 = 2048;
                  v63 = v14;
                  v64 = 2048;
                  v65 = v17;
                  v66 = 2048;
                  v67 = v40;
                  v68 = 2048;
                  v69 = v41;
                  v70 = 2048;
                  v71 = v39;
                  v72 = 2048;
                  v73 = v42;
                  v74 = 1024;
                  v75 = v8;
                  v43 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received %u frames from output handler";
                  v44 = v10;
                  v45 = 104;
LABEL_50:
                  _os_log_debug_impl(&dword_1C0DA5000, v44, OS_LOG_TYPE_DEBUG, v43, buf, v45);
                }
              }

              else if (v11)
              {
                v32 = *(a1 + 80);
                if (v32)
                {
                  LODWORD(v32) = nw_parameters_get_ip_protocol();
                }

                v33 = *(a1 + 176);
                if (v33 > 3)
                {
                  v34 = "unknown";
                }

                else
                {
                  v34 = off_1E812BFE0[v33];
                }

                *buf = 136315906;
                v55 = out;
                v56 = 1024;
                v57 = v32;
                v58 = 2080;
                v59 = v34;
                v60 = 1024;
                LODWORD(v61) = v8;
                v43 = "[filter %s %d %s] received %u frames from output handler";
                v44 = v10;
                v45 = 34;
                goto LABEL_50;
              }

              nw_frame_array_append_array();
              goto LABEL_34;
            }

            memset(out, 0, 37);
            uuid_unparse(a1, out);
            v19 = *(a1 + 176);
            v20 = ne_log_obj();
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
            if (v19 != 3)
            {
              if (!v21)
              {
                goto LABEL_34;
              }

              v35 = *(a1 + 80);
              if (v35)
              {
                LODWORD(v35) = nw_parameters_get_ip_protocol();
              }

              v36 = *(a1 + 176);
              if (v36 > 3)
              {
                v37 = "unknown";
              }

              else
              {
                v37 = off_1E812BFE0[v36];
              }

              *buf = 136315650;
              v55 = out;
              v56 = 1024;
              v57 = v35;
              v58 = 2080;
              v59 = v37;
              v51 = "[filter %s %d %s] no frames returned from output handler";
              v52 = v20;
              v53 = 28;
LABEL_58:
              _os_log_debug_impl(&dword_1C0DA5000, v52, OS_LOG_TYPE_DEBUG, v51, buf, v53);
              goto LABEL_34;
            }

            if (v21)
            {
              v22 = *(a1 + 80);
              if (v22)
              {
                LODWORD(v22) = nw_parameters_get_ip_protocol();
              }

              v23 = *(a1 + 160);
              if (v23)
              {
                v25 = v23[6];
                v26 = v23[7];
                v24 = v23[8];
                v27 = v23[9];
              }

              else
              {
                v24 = -1;
                v25 = -1;
                v26 = -1;
                v27 = -1;
              }

              v46 = *(a1 + 168);
              if (v46)
              {
                v48 = v46[6];
                v49 = v46[7];
                v47 = v46[8];
                v50 = v46[9];
              }

              else
              {
                v47 = -1;
                v48 = -1;
                v49 = -1;
                v50 = -1;
              }

              *buf = 136317442;
              v55 = out;
              v56 = 1024;
              v57 = v22;
              v58 = 2048;
              v59 = v25;
              v60 = 2048;
              v61 = v26;
              v62 = 2048;
              v63 = v24;
              v64 = 2048;
              v65 = v27;
              v66 = 2048;
              v67 = v48;
              v68 = 2048;
              v69 = v49;
              v70 = 2048;
              v71 = v47;
              v72 = 2048;
              v73 = v50;
              v51 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no frames returned from output handler";
              v52 = v20;
              v53 = 98;
              goto LABEL_58;
            }
          }
        }
      }
    }
  }

  else
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v55 = "ne_filter_read_from_network";
      _os_log_fault_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_FAULT, "%s called with null filter", buf, 0xCu);
    }
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_output_available(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v12 = 136315138;
    v13 = "ne_filter_protocol_output_available";
    v9 = "%s called with null protocol";
LABEL_19:
    _os_log_fault_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_FAULT, v9, &v12, 0xCu);
    goto LABEL_23;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v12 = 136315138;
    v13 = "ne_filter_protocol_output_available";
    v9 = "%s called with null filter";
    goto LABEL_19;
  }

  if (!atomic_fetch_or((v1 + 180), 0))
  {
    goto LABEL_23;
  }

  v2 = *(v1 + 176);
  if (v2 != 3 && v2 != 1)
  {
    if (!v2)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", &v12, 2u);
      }
    }

    goto LABEL_23;
  }

  v4 = *(v1 + 48);
  if (!v4 || (v5 = *(v4 + 24)) == 0 || (v6 = *(v5 + 72)) == 0)
  {
LABEL_23:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  v6();
}

uint64_t ne_filter_protocol_finalize_output_frames(uint64_t a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = ne_log_obj();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v74 = "ne_filter_protocol_finalize_output_frames";
    v18 = "%s called with null protocol";
    goto LABEL_22;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v16 = ne_log_obj();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v74 = "ne_filter_protocol_finalize_output_frames";
    v18 = "%s called with null filter";
LABEL_22:
    _os_log_fault_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_33;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  v3 = *(v2 + 176);
  if (v3)
  {
    v5 = *(v2 + 32);
    v6 = v3 == 2 || v5 == 0;
    if (!v6 && *(*(v5 + 24) + 96))
    {
      if (v3 == 1 && (*(v2 + 121) & 0x20) == 0)
      {
        memset(out, 0, 37);
        uuid_unparse(v2, out);
        v7 = *(v2 + 176);
        v8 = ne_log_obj();
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (v7 == 3)
        {
          if (v9)
          {
            v10 = *(v2 + 80);
            if (v10)
            {
              LODWORD(v10) = nw_parameters_get_ip_protocol();
            }

            v11 = *(v2 + 160);
            if (v11)
            {
              v13 = v11[6];
              v14 = v11[7];
              v12 = v11[8];
              v15 = v11[9];
            }

            else
            {
              v12 = -1;
              v13 = -1;
              v14 = -1;
              v15 = -1;
            }

            v62 = *(v2 + 168);
            if (v62)
            {
              v64 = v62[6];
              v65 = v62[7];
              v63 = v62[8];
              v66 = v62[9];
            }

            else
            {
              v63 = -1;
              v64 = -1;
              v65 = -1;
              v66 = -1;
            }

            *buf = 136317442;
            v74 = out;
            v75 = 1024;
            v76 = v10;
            v77 = 2048;
            v78 = v13;
            v79 = 2048;
            v80 = v14;
            v81 = 2048;
            v82 = v12;
            v83 = 2048;
            v84 = v15;
            v85 = 2048;
            v86 = v64;
            v87 = 2048;
            v88 = v65;
            v89 = 2048;
            v90 = v63;
            v91 = 2048;
            v92 = v66;
            v67 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]passing finalize output frames";
            v68 = v8;
            v69 = 98;
LABEL_82:
            _os_log_debug_impl(&dword_1C0DA5000, v68, OS_LOG_TYPE_DEBUG, v67, buf, v69);
          }
        }

        else if (v9)
        {
          v59 = *(v2 + 80);
          if (v59)
          {
            LODWORD(v59) = nw_parameters_get_ip_protocol();
          }

          v60 = *(v2 + 176);
          if (v60 > 3)
          {
            v61 = "unknown";
          }

          else
          {
            v61 = off_1E812BFE0[v60];
          }

          *buf = 136315650;
          v74 = out;
          v75 = 1024;
          v76 = v59;
          v77 = 2080;
          v78 = v61;
          v67 = "[filter %s %d %s] passing finalize output frames";
          v68 = v8;
          v69 = 28;
          goto LABEL_82;
        }

        result = (*(*(v5 + 24) + 96))(v5, a2);
        goto LABEL_34;
      }

      memset(out, 0, 37);
      uuid_unparse(v2, out);
      v30 = *(v2 + 176);
      v31 = ne_log_obj();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (v30 == 3)
      {
        if (v32)
        {
          if (*(v2 + 80))
          {
            ip_protocol = nw_parameters_get_ip_protocol();
          }

          else
          {
            ip_protocol = 0;
          }

          v45 = *(v2 + 160);
          if (v45)
          {
            v50 = v45[6];
            v46 = v45[7];
            v47 = v45[9];
            v70 = v50;
            v71 = v45[8];
          }

          else
          {
            v70 = -1;
            v71 = -1;
            v46 = -1;
            v47 = -1;
          }

          v51 = *(v2 + 168);
          if (v51)
          {
            v53 = v51[6];
            v54 = v51[7];
            v52 = v51[8];
            v55 = v51[9];
          }

          else
          {
            v52 = -1;
            v53 = -1;
            v54 = -1;
            v55 = -1;
          }

          *buf = 136317698;
          v74 = out;
          v75 = 1024;
          v76 = ip_protocol;
          v77 = 2048;
          v78 = v70;
          v79 = 2048;
          v80 = v46;
          v81 = 2048;
          v82 = v71;
          v83 = 2048;
          v84 = v47;
          v85 = 2048;
          v86 = v53;
          v87 = 2048;
          v88 = v54;
          v89 = 2048;
          v90 = v52;
          v91 = 2048;
          v92 = v55;
          v93 = 1024;
          v94 = nw_frame_array_unclaimed_length();
          v56 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]filtering new output frames, length %u";
          v57 = v31;
          v58 = 104;
LABEL_70:
          _os_log_debug_impl(&dword_1C0DA5000, v57, OS_LOG_TYPE_DEBUG, v56, buf, v58);
        }
      }

      else if (v32)
      {
        if (*(v2 + 80))
        {
          v44 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v44 = 0;
        }

        v48 = *(v2 + 176);
        if (v48 > 3)
        {
          v49 = "unknown";
        }

        else
        {
          v49 = off_1E812BFE0[v48];
        }

        *buf = 136315906;
        v74 = out;
        v75 = 1024;
        v76 = v44;
        v77 = 2080;
        v78 = v49;
        v79 = 1024;
        LODWORD(v80) = nw_frame_array_unclaimed_length();
        v56 = "[filter %s %d %s] filtering new output frames, length %u";
        v57 = v31;
        v58 = 34;
        goto LABEL_70;
      }

      ne_filter_send_approved_frames(v2, a2);
      result = 1;
      goto LABEL_34;
    }

    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v19 = *(v2 + 176);
    v20 = ne_log_obj();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
    if (v19 == 3)
    {
      if (v21)
      {
        v22 = *(v2 + 80);
        if (v22)
        {
          LODWORD(v22) = nw_parameters_get_ip_protocol();
        }

        v23 = *(v2 + 160);
        if (v23)
        {
          v25 = v23[6];
          v26 = v23[7];
          v24 = v23[8];
          v27 = v23[9];
        }

        else
        {
          v24 = -1;
          v25 = -1;
          v26 = -1;
          v27 = -1;
        }

        v36 = *(v2 + 168);
        if (v36)
        {
          v38 = v36[6];
          v39 = v36[7];
          v37 = v36[8];
          v40 = v36[9];
        }

        else
        {
          v37 = -1;
          v38 = -1;
          v39 = -1;
          v40 = -1;
        }

        *buf = 136317442;
        v74 = out;
        v75 = 1024;
        v76 = v22;
        v77 = 2048;
        v78 = v25;
        v79 = 2048;
        v80 = v26;
        v81 = 2048;
        v82 = v24;
        v83 = 2048;
        v84 = v27;
        v85 = 2048;
        v86 = v38;
        v87 = 2048;
        v88 = v39;
        v89 = 2048;
        v90 = v37;
        v91 = 2048;
        v92 = v40;
        v41 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]dropping output frames";
        v42 = v20;
        v43 = 98;
LABEL_54:
        _os_log_debug_impl(&dword_1C0DA5000, v42, OS_LOG_TYPE_DEBUG, v41, buf, v43);
      }
    }

    else if (v21)
    {
      v33 = *(v2 + 80);
      if (v33)
      {
        LODWORD(v33) = nw_parameters_get_ip_protocol();
      }

      v34 = *(v2 + 176);
      if (v34 > 3)
      {
        v35 = "unknown";
      }

      else
      {
        v35 = off_1E812BFE0[v34];
      }

      *buf = 136315650;
      v74 = out;
      v75 = 1024;
      v76 = v33;
      v77 = 2080;
      v78 = v35;
      v41 = "[filter %s %d %s] dropping output frames";
      v42 = v20;
      v43 = 28;
      goto LABEL_54;
    }

    nw_frame_array_foreach();
    goto LABEL_33;
  }

  v28 = ne_log_obj();
  result = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", buf, 2u);
    goto LABEL_33;
  }

LABEL_34:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ne_filter_protocol_finalize_output_frames_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

uint64_t ne_filter_protocol_get_output_frames(uint64_t a1)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v34 = 136315138;
    v35 = "ne_filter_protocol_get_output_frames";
    v5 = "%s called with null protocol";
LABEL_30:
    _os_log_fault_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_FAULT, v5, &v34, 0xCu);
    goto LABEL_11;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v34 = 136315138;
    v35 = "ne_filter_protocol_get_output_frames";
    v5 = "%s called with null filter";
    goto LABEL_30;
  }

  if (atomic_fetch_or((v1 + 180), 0))
  {
    v2 = *(v1 + 176);
    if (v2 != 2)
    {
      if (v2)
      {
        if ((*(v1 + 120) & 0x48) == 8)
        {
          v9 = *(v1 + 32);
          if (v9 && (v10 = *(*(v9 + 24) + 88)) != 0)
          {
            v6 = v10();
          }

          else
          {
            v6 = 0;
          }

          v11 = nw_frame_array_unclaimed_length();
          atomic_fetch_add((v1 + 112), v11);
          memset(out, 0, 37);
          uuid_unparse(v1, out);
          v12 = *(v1 + 176);
          v13 = ne_log_obj();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
          if (v12 == 3)
          {
            if (!v14)
            {
              goto LABEL_12;
            }

            v15 = *(v1 + 80);
            if (v15)
            {
              LODWORD(v15) = nw_parameters_get_ip_protocol();
            }

            v16 = *(v1 + 160);
            if (v16)
            {
              v18 = v16[6];
              v19 = v16[7];
              v17 = v16[8];
              v20 = v16[9];
            }

            else
            {
              v17 = -1;
              v18 = -1;
              v19 = -1;
              v20 = -1;
            }

            v24 = *(v1 + 168);
            if (v24)
            {
              v26 = v24[6];
              v27 = v24[7];
              v25 = v24[8];
              v28 = v24[9];
            }

            else
            {
              v25 = -1;
              v26 = -1;
              v27 = -1;
              v28 = -1;
            }

            v33 = atomic_load((v1 + 112));
            v34 = 136318210;
            v35 = out;
            v36 = 1024;
            v37 = v15;
            v38 = 2048;
            v39 = v18;
            v40 = 2048;
            *v41 = v19;
            *&v41[8] = 2048;
            *v42 = v17;
            *&v42[8] = 2048;
            v43 = v20;
            v44 = 2048;
            v45 = v26;
            v46 = 2048;
            v47 = v27;
            v48 = 2048;
            v49 = v25;
            v50 = 2048;
            v51 = v28;
            v52 = 1024;
            v53 = v11;
            v54 = 1024;
            v55 = v6;
            v56 = 2048;
            v57 = v33;
            v30 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]OUTPUT: returning %u bytes in %u framesu (total %llu)";
            v31 = v13;
            v32 = 120;
          }

          else
          {
            if (!v14)
            {
              goto LABEL_12;
            }

            v21 = *(v1 + 80);
            if (v21)
            {
              LODWORD(v21) = nw_parameters_get_ip_protocol();
            }

            v22 = *(v1 + 176);
            if (v22 > 3)
            {
              v23 = "unknown";
            }

            else
            {
              v23 = off_1E812BFE0[v22];
            }

            v29 = atomic_load((v1 + 112));
            v34 = 136316418;
            v35 = out;
            v36 = 1024;
            v37 = v21;
            v38 = 2080;
            v39 = v23;
            v40 = 1024;
            *v41 = v11;
            *&v41[4] = 1024;
            *&v41[6] = v6;
            *v42 = 2048;
            *&v42[2] = v29;
            v30 = "[filter %s %d %s] OUTPUT: returning %u bytes in %u framesu (total %llu)";
            v31 = v13;
            v32 = 50;
          }

          _os_log_debug_impl(&dword_1C0DA5000, v31, OS_LOG_TYPE_DEBUG, v30, &v34, v32);
          goto LABEL_12;
        }
      }

      else
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v34) = 0;
          _os_log_debug_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", &v34, 2u);
        }
      }
    }
  }

LABEL_11:
  v6 = 0;
LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ne_filter_protocol_get_input_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  out[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *&buf[4] = "ne_filter_protocol_get_input_frames";
    v15 = "%s called with null protocol";
LABEL_30:
    v38 = v14;
LABEL_31:
    _os_log_fault_impl(&dword_1C0DA5000, v38, OS_LOG_TYPE_FAULT, v15, buf, 0xCu);
    goto LABEL_11;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    *&buf[4] = "ne_filter_protocol_get_input_frames";
    v15 = "%s called with null filter";
    goto LABEL_30;
  }

  if (atomic_fetch_or((v7 + 180), 0))
  {
    nw_frame_array_init();
    v12 = *(v7 + 176);
    if (v12 != 2)
    {
      if (!v12)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", buf, 2u);
        }

        goto LABEL_11;
      }

      if ((*(v7 + 120) & 8) != 0)
      {
        memset(out, 0, 37);
        uuid_unparse(v7, out);
        v19 = *(v7 + 176);
        v20 = ne_log_obj();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
        if (v19 == 3)
        {
          if (v21)
          {
            v22 = *(v7 + 80);
            if (v22)
            {
              LODWORD(v22) = nw_parameters_get_ip_protocol();
            }

            v23 = *(v7 + 160);
            if (v23)
            {
              v25 = v23[6];
              v26 = v23[7];
              v24 = v23[8];
              v27 = v23[9];
            }

            else
            {
              v24 = -1;
              v25 = -1;
              v26 = -1;
              v27 = -1;
            }

            v90 = *(v7 + 168);
            if (v90)
            {
              v92 = v90[6];
              v93 = v90[7];
              v91 = v90[8];
              v94 = v90[9];
            }

            else
            {
              v91 = -1;
              v92 = -1;
              v93 = -1;
              v94 = -1;
            }

            *buf = 136317442;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v22;
            v164 = 2048;
            v165 = v25;
            v166 = 2048;
            *v167 = v26;
            *&v167[8] = 2048;
            *v168 = v24;
            *&v168[8] = 2048;
            v169 = v27;
            v170 = 2048;
            v171 = v92;
            v172 = 2048;
            v173 = v93;
            v174 = 2048;
            v175 = v91;
            v176 = 2048;
            v177 = v94;
            v97 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]start get input";
            v98 = v20;
            v99 = 98;
LABEL_116:
            _os_log_debug_impl(&dword_1C0DA5000, v98, OS_LOG_TYPE_DEBUG, v97, buf, v99);
          }
        }

        else if (v21)
        {
          v87 = *(v7 + 80);
          if (v87)
          {
            LODWORD(v87) = nw_parameters_get_ip_protocol();
          }

          v88 = *(v7 + 176);
          if (v88 > 3)
          {
            v89 = "unknown";
          }

          else
          {
            v89 = off_1E812BFE0[v88];
          }

          *buf = 136315650;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v87;
          v164 = 2080;
          v165 = v89;
          v97 = "[filter %s %d %s] start get input";
          v98 = v20;
          v99 = 28;
          goto LABEL_116;
        }

        if (nelog_is_debug_logging_enabled() && (nw_frame_array_is_empty() & 1) == 0)
        {
          v28 = nw_frame_array_unclaimed_length();
          memset(out, 0, 37);
          uuid_unparse(v7, out);
          v29 = *(v7 + 176);
          v30 = ne_log_obj();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
          if (v29 == 3)
          {
            if (!v31)
            {
              goto LABEL_33;
            }

            v32 = *(v7 + 80);
            if (v32)
            {
              LODWORD(v32) = nw_parameters_get_ip_protocol();
            }

            v33 = *(v7 + 160);
            if (v33)
            {
              v35 = v33[6];
              v36 = v33[7];
              v34 = v33[8];
              v37 = v33[9];
            }

            else
            {
              v34 = -1;
              v35 = -1;
              v36 = -1;
              v37 = -1;
            }

            v126 = *(v7 + 168);
            if (v126)
            {
              v128 = v126[6];
              v129 = v126[7];
              v127 = v126[8];
              v130 = v126[9];
            }

            else
            {
              v127 = -1;
              v128 = -1;
              v129 = -1;
              v130 = -1;
            }

            *buf = 136318210;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v32;
            v164 = 2048;
            v165 = v35;
            v166 = 2048;
            *v167 = v36;
            *&v167[8] = 2048;
            *v168 = v34;
            *&v168[8] = 2048;
            v169 = v37;
            v170 = 2048;
            v171 = v128;
            v172 = 2048;
            v173 = v129;
            v174 = 2048;
            v175 = v127;
            v176 = 2048;
            v177 = v130;
            v178 = 1024;
            v179 = v28;
            v180 = 1024;
            v181 = a3;
            v182 = 1024;
            LODWORD(v183) = a4;
            v131 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]already has %u accepted, min %u max %u";
            v132 = v30;
            v133 = 116;
          }

          else
          {
            if (!v31)
            {
              goto LABEL_33;
            }

            v120 = *(v7 + 80);
            if (v120)
            {
              LODWORD(v120) = nw_parameters_get_ip_protocol();
            }

            v121 = *(v7 + 176);
            if (v121 > 3)
            {
              v122 = "unknown";
            }

            else
            {
              v122 = off_1E812BFE0[v121];
            }

            *buf = 136316418;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v120;
            v164 = 2080;
            v165 = v122;
            v166 = 1024;
            *v167 = v28;
            *&v167[4] = 1024;
            *&v167[6] = a3;
            *v168 = 1024;
            *&v168[2] = a4;
            v131 = "[filter %s %d %s] already has %u accepted, min %u max %u";
            v132 = v30;
            v133 = 46;
          }

          _os_log_debug_impl(&dword_1C0DA5000, v132, OS_LOG_TYPE_DEBUG, v131, buf, v133);
        }

LABEL_33:
        v162 = 0;
        v16 = ne_filter_protocol_fulfill_frame_request(v7, v7 + 128, a6, (*(v7 + 120) & 0x8000) == 0, a4, a5, &v162);
        memset(out, 0, 37);
        uuid_unparse(v7, out);
        v39 = *(v7 + 176);
        v40 = ne_log_obj();
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG);
        if (v39 == 3)
        {
          if (!v41)
          {
            goto LABEL_38;
          }

          if (*(v7 + 80))
          {
            ip_protocol = nw_parameters_get_ip_protocol();
          }

          else
          {
            ip_protocol = 0;
          }

          v95 = *(v7 + 160);
          if (v95)
          {
            v157 = v95[7];
            v158 = v95[6];
            v102 = v95[8];
            v96 = v95[9];
            v159 = v102;
          }

          else
          {
            v96 = -1;
            v158 = -1;
            v159 = -1;
            v157 = -1;
          }

          v156 = v96;
          v103 = *(v7 + 168);
          if (v103)
          {
            v153 = v103[7];
            v154 = v103[6];
            v104 = v103[9];
            v155 = v103[8];
          }

          else
          {
            v154 = -1;
            v155 = -1;
            v153 = -1;
            v104 = -1;
          }

          v109 = nw_frame_array_unclaimed_length();
          *buf = 136317698;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = ip_protocol;
          v164 = 2048;
          v165 = v158;
          v166 = 2048;
          *v167 = v157;
          *&v167[8] = 2048;
          *v168 = v159;
          *&v168[8] = 2048;
          v169 = v156;
          v170 = 2048;
          v171 = v154;
          v172 = 2048;
          v173 = v153;
          v174 = 2048;
          v175 = v155;
          v176 = 2048;
          v177 = v104;
          v178 = 1024;
          v179 = v109;
          v106 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]return array has %u bytes from acceptedInputFrames";
          v107 = v40;
          v108 = 104;
        }

        else
        {
          if (!v41)
          {
            goto LABEL_38;
          }

          if (*(v7 + 80))
          {
            v161 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v161 = 0;
          }

          v100 = *(v7 + 176);
          if (v100 > 3)
          {
            v101 = "unknown";
          }

          else
          {
            v101 = off_1E812BFE0[v100];
          }

          v105 = nw_frame_array_unclaimed_length();
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v161;
          v164 = 2080;
          v165 = v101;
          v166 = 1024;
          *v167 = v105;
          v106 = "[filter %s %d %s] return array has %u bytes from acceptedInputFrames";
          v107 = v40;
          v108 = 34;
        }

        _os_log_debug_impl(&dword_1C0DA5000, v107, OS_LOG_TYPE_DEBUG, v106, buf, v108);
LABEL_38:
        if (v162)
        {
          v42 = a4 >= v162;
          a4 = a4 - v162;
          if (a4 == 0 || !v42)
          {
            goto LABEL_83;
          }

          if (a3 >= v162)
          {
            v43 = a3 - v162;
          }

          else
          {
            v43 = 0;
          }
        }

        else
        {
          v43 = a3;
        }

        if (v16)
        {
          v42 = a5 >= v16;
          a5 = (a5 - v16);
          if (a5 == 0 || !v42)
          {
LABEL_83:
            if ((*(v7 + 121) & 8) != 0 && nw_frame_array_is_empty())
            {
              atomic_fetch_add((v7 + 180), 1u);
              v73 = *(v7 + 88);
              nw_queue_context_async();
            }

            v74 = nw_frame_array_unclaimed_length();
            atomic_fetch_add((v7 + 104), v74);
            memset(out, 0, 37);
            uuid_unparse(v7, out);
            v75 = *(v7 + 176);
            v76 = ne_log_obj();
            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG);
            if (v75 == 3)
            {
              if (!v77)
              {
                goto LABEL_12;
              }

              v78 = *(v7 + 80);
              if (v78)
              {
                LODWORD(v78) = nw_parameters_get_ip_protocol();
              }

              v79 = *(v7 + 160);
              if (v79)
              {
                v81 = v79[6];
                v82 = v79[7];
                v80 = v79[8];
                v83 = v79[9];
              }

              else
              {
                v80 = -1;
                v81 = -1;
                v82 = -1;
                v83 = -1;
              }

              v110 = *(v7 + 168);
              if (v110)
              {
                v112 = v110[6];
                v113 = v110[7];
                v111 = v110[8];
                v114 = v110[9];
              }

              else
              {
                v111 = -1;
                v112 = -1;
                v113 = -1;
                v114 = -1;
              }

              v119 = atomic_load((v7 + 104));
              *buf = 136318210;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v78;
              v164 = 2048;
              v165 = v81;
              v166 = 2048;
              *v167 = v82;
              *&v167[8] = 2048;
              *v168 = v80;
              *&v168[8] = 2048;
              v169 = v83;
              v170 = 2048;
              v171 = v112;
              v172 = 2048;
              v173 = v113;
              v174 = 2048;
              v175 = v111;
              v176 = 2048;
              v177 = v114;
              v178 = 1024;
              v179 = v74;
              v180 = 1024;
              v181 = v16;
              v182 = 2048;
              v183 = v119;
              v116 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]INPUT: returning %u bytes in %u framesu (total %llu)";
              v117 = v76;
              v118 = 120;
            }

            else
            {
              if (!v77)
              {
                goto LABEL_12;
              }

              v84 = *(v7 + 80);
              if (v84)
              {
                LODWORD(v84) = nw_parameters_get_ip_protocol();
              }

              v85 = *(v7 + 176);
              if (v85 > 3)
              {
                v86 = "unknown";
              }

              else
              {
                v86 = off_1E812BFE0[v85];
              }

              v115 = atomic_load((v7 + 104));
              *buf = 136316418;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v84;
              v164 = 2080;
              v165 = v86;
              v166 = 1024;
              *v167 = v74;
              *&v167[4] = 1024;
              *&v167[6] = v16;
              *v168 = 2048;
              *&v168[2] = v115;
              v116 = "[filter %s %d %s] INPUT: returning %u bytes in %u framesu (total %llu)";
              v117 = v76;
              v118 = 50;
            }

            _os_log_debug_impl(&dword_1C0DA5000, v117, OS_LOG_TYPE_DEBUG, v116, buf, v118);
            goto LABEL_12;
          }
        }

        v44 = *(v7 + 176);
        if (v44 != 1)
        {
          if (v44 == 3)
          {
LABEL_59:
            *buf = 0;
            *&buf[8] = 0;
            nw_frame_array_init();
            ne_filter_read_from_network(*(a1 + 40), buf, 0);
            ne_filter_read_approved_frames(v7, buf);
            LODWORD(out[0]) = 0;
            v53 = ne_filter_protocol_fulfill_frame_request(v7, v7 + 128, a6, (*(v7 + 120) & 0x8000) == 0, a4, a5, out);
            v162 += LODWORD(out[0]);
            v16 = (v53 + v16);
            goto LABEL_71;
          }

          v45 = *(v7 + 120);
LABEL_55:
          if ((v45 & 0x1000) == 0)
          {
            v50 = ne_log_obj();
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_11;
            }

            v51 = *(v7 + 176);
            if (v51 > 3)
            {
              v52 = "unknown";
            }

            else
            {
              v52 = off_1E812BFE0[v51];
            }

            *buf = 136315138;
            *&buf[4] = v52;
            v15 = "reached end of get_input_frames with disallowed verdict type %s";
            v38 = v50;
            goto LABEL_31;
          }

          goto LABEL_59;
        }

        v45 = *(v7 + 120);
        if ((v45 & 0x1000) != 0)
        {
          goto LABEL_55;
        }

        v46 = *(v7 + 32);
        out[0] = 0;
        out[1] = out;
        out[2] = 0x2800000000;
        out[3] = 0;
        out[4] = 0;
        nw_frame_array_init();
        v47 = *(v7 + 120) | 0x4000;
        *(v7 + 120) = v47;
        if (v46 && (v48 = *(*(v46 + 24) + 80)) != 0)
        {
          v49 = v48(v46, a1, v43, a4, a5, out[1] + 24);
          v47 = *(v7 + 120);
        }

        else
        {
          v49 = 0;
        }

        *(v7 + 120) = v47 & 0xFFFFBFFF;
        v54 = nw_frame_array_unclaimed_length();
        memset(v184, 0, 37);
        uuid_unparse(v7, v184);
        v55 = *(v7 + 176);
        v56 = ne_log_obj();
        v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
        if (v55 == 3)
        {
          if (v57)
          {
            v58 = *(v7 + 80);
            if (v58)
            {
              LODWORD(v58) = nw_parameters_get_ip_protocol();
            }

            v59 = *(v7 + 160);
            if (v59)
            {
              v61 = v59[6];
              v62 = v59[7];
              v60 = v59[8];
              v63 = v59[9];
            }

            else
            {
              v60 = -1;
              v61 = -1;
              v62 = -1;
              v63 = -1;
            }

            v145 = *(v7 + 168);
            if (v145)
            {
              v147 = v145[6];
              v148 = v145[7];
              v146 = v145[8];
              v149 = v145[9];
            }

            else
            {
              v146 = -1;
              v147 = -1;
              v148 = -1;
              v149 = -1;
            }

            *buf = 136317954;
            *&buf[4] = v184;
            *&buf[12] = 1024;
            *&buf[14] = v58;
            v164 = 2048;
            v165 = v61;
            v166 = 2048;
            *v167 = v62;
            *&v167[8] = 2048;
            *v168 = v60;
            *&v168[8] = 2048;
            v169 = v63;
            v170 = 2048;
            v171 = v147;
            v172 = 2048;
            v173 = v148;
            v174 = 2048;
            v175 = v146;
            v176 = 2048;
            v177 = v149;
            v178 = 1024;
            v179 = v54;
            v180 = 1024;
            v181 = v49;
            v150 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]passing through %u input bytes in %u frames";
            v151 = v56;
            v152 = 110;
            goto LABEL_170;
          }
        }

        else if (v57)
        {
          v134 = *(v7 + 80);
          if (v134)
          {
            LODWORD(v134) = nw_parameters_get_ip_protocol();
          }

          v135 = *(v7 + 176);
          if (v135 > 3)
          {
            v136 = "unknown";
          }

          else
          {
            v136 = off_1E812BFE0[v135];
          }

          *buf = 136316162;
          *&buf[4] = v184;
          *&buf[12] = 1024;
          *&buf[14] = v134;
          v164 = 2080;
          v165 = v136;
          v166 = 1024;
          *v167 = v54;
          *&v167[4] = 1024;
          *&v167[6] = v49;
          v150 = "[filter %s %d %s] passing through %u input bytes in %u frames";
          v151 = v56;
          v152 = 40;
LABEL_170:
          _os_log_debug_impl(&dword_1C0DA5000, v151, OS_LOG_TYPE_DEBUG, v150, buf, v152);
          if (!v49)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        if (!v49)
        {
LABEL_70:
          _Block_object_dispose(out, 8);
LABEL_71:
          if ((nw_frame_array_is_empty() & 1) == 0)
          {
            nw_frame_array_last();
            if (nw_frame_is_metadata_complete() & 1) != 0 || (nw_frame_is_connection_complete())
            {
              goto LABEL_83;
            }
          }

          if (v162 >= a3)
          {
            goto LABEL_83;
          }

          memset(out, 0, 37);
          uuid_unparse(v7, out);
          v64 = *(v7 + 176);
          v65 = ne_log_obj();
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG);
          if (v64 == 3)
          {
            if (v66)
            {
              v67 = *(v7 + 80);
              if (v67)
              {
                LODWORD(v67) = nw_parameters_get_ip_protocol();
              }

              v68 = *(v7 + 160);
              if (v68)
              {
                v70 = v68[6];
                v71 = v68[7];
                v69 = v68[8];
                v72 = v68[9];
              }

              else
              {
                v69 = -1;
                v70 = -1;
                v71 = -1;
                v72 = -1;
              }

              v137 = *(v7 + 168);
              if (v137)
              {
                v139 = v137[6];
                v140 = v137[7];
                v138 = v137[8];
                v141 = v137[9];
              }

              else
              {
                v138 = -1;
                v139 = -1;
                v140 = -1;
                v141 = -1;
              }

              *buf = 136317954;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v67;
              v164 = 2048;
              v165 = v70;
              v166 = 2048;
              *v167 = v71;
              *&v167[8] = 2048;
              *v168 = v69;
              *&v168[8] = 2048;
              v169 = v72;
              v170 = 2048;
              v171 = v139;
              v172 = 2048;
              v173 = v140;
              v174 = 2048;
              v175 = v138;
              v176 = 2048;
              v177 = v141;
              v178 = 1024;
              v179 = v162;
              v180 = 1024;
              v181 = a3;
              v142 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]pass through failed to fulfill minimum bytes requested (%u < %u), moving all to acceptedInputFrames";
              v143 = v65;
              v144 = 110;
LABEL_162:
              _os_log_debug_impl(&dword_1C0DA5000, v143, OS_LOG_TYPE_DEBUG, v142, buf, v144);
            }
          }

          else if (v66)
          {
            v123 = *(v7 + 80);
            if (v123)
            {
              LODWORD(v123) = nw_parameters_get_ip_protocol();
            }

            v124 = *(v7 + 176);
            if (v124 > 3)
            {
              v125 = "unknown";
            }

            else
            {
              v125 = off_1E812BFE0[v124];
            }

            *buf = 136316162;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v123;
            v164 = 2080;
            v165 = v125;
            v166 = 1024;
            *v167 = v162;
            *&v167[4] = 1024;
            *&v167[6] = a3;
            v142 = "[filter %s %d %s] pass through failed to fulfill minimum bytes requested (%u < %u), moving all to acceptedInputFrames";
            v143 = v65;
            v144 = 40;
            goto LABEL_162;
          }

          nw_frame_array_foreach();
          v16 = 0;
          v162 = 0;
          goto LABEL_83;
        }

LABEL_69:
        v16 = (v49 + v16);
        v162 += v54;
        nw_frame_array_foreach();
        goto LABEL_70;
      }
    }
  }

LABEL_11:
  v16 = 0;
LABEL_12:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __ne_filter_protocol_get_input_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    nw_frame_array_remove();
    v4 = *(a1 + 40);
    nw_frame_array_append();
  }

  return 1;
}

uint64_t __ne_filter_protocol_get_input_frames_block_invoke_44(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    nw_frame_array_remove();
    v4 = *(a1 + 40);
    nw_frame_array_append();
  }

  return 1;
}

void __ne_filter_protocol_get_input_frames_block_invoke_2(uint64_t a1)
{
  ne_filter_handle_input_finished(*(a1 + 32), 0);
  ne_filter_cleanup(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = (v3 + 180);
      if (atomic_fetch_or(v4, 0))
      {
        if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
        {
          v5 = *(a1 + 32);

          ne_filter_protocol_destroy(v5);
        }
      }
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_INFO, "protocol is null", v7, 2u);
    }
  }
}

BOOL ne_filter_protocol_remove_input_handler(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_14;
    }

    v9 = 136315138;
    v10 = "ne_filter_protocol_remove_input_handler";
    v6 = "%s called with null protocol";
    goto LABEL_10;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_14;
    }

    v9 = 136315138;
    v10 = "ne_filter_protocol_remove_input_handler";
    v6 = "%s called with null filter";
LABEL_10:
    _os_log_fault_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_FAULT, v6, &v9, 0xCu);
LABEL_5:
    result = 0;
    goto LABEL_14;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
    goto LABEL_5;
  }

  *(a2 + 32) = 0;
  if (*(a1 + 48) != a2)
  {
    goto LABEL_5;
  }

  ne_filter_protocol_retain(a1);
  *(a1 + 48) = 0;
  *(v3 + 120) |= 1u;
  ne_filter_stats_toggle(a1, 0, 0);
  ne_filter_destroy_frames(*(a1 + 40));
  v7 = *(v3 + 120);
  if ((v7 & 0x40) == 0)
  {
    *(v3 + 120) = v7 | 0x40;
    ne_filter_handle_input_finished(a1, 0);
  }

  ne_filter_cleanup(a1);
  ne_filter_protocol_release(a1);
  result = 1;
LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ne_filter_protocol_add_input_handler(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_48;
    }

    *buf = 136315138;
    *&buf[4] = "ne_filter_protocol_add_input_handler";
    v16 = "%s called with null protocol";
    goto LABEL_16;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v14 = ne_log_obj();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_48;
    }

    *buf = 136315138;
    *&buf[4] = "ne_filter_protocol_add_input_handler";
    v16 = "%s called with null filter";
LABEL_16:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_47;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
LABEL_47:
    result = 0;
    goto LABEL_48;
  }

  *(a1 + 48) = a2;
  uuid_copy(v3, a2);
  *(a2 + 32) = v3;
  if ((*(*(a2 + 24) + 112))(a2) && nw_parameters_get_data_mode() == 1)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v5 = *(v3 + 176);
    v6 = ne_log_obj();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5 == 3)
    {
      if (v7)
      {
        v8 = *(v3 + 80);
        if (v8)
        {
          LODWORD(v8) = nw_parameters_get_ip_protocol();
        }

        v9 = *(v3 + 160);
        if (v9)
        {
          v11 = v9[6];
          v12 = v9[7];
          v10 = v9[8];
          v13 = v9[9];
        }

        else
        {
          v10 = -1;
          v11 = -1;
          v12 = -1;
          v13 = -1;
        }

        v44 = *(v3 + 168);
        if (v44)
        {
          v46 = v44[6];
          v47 = v44[7];
          v45 = v44[8];
          v48 = v44[9];
        }

        else
        {
          v45 = -1;
          v46 = -1;
          v47 = -1;
          v48 = -1;
        }

        *buf = 136317442;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 2048;
        *&buf[20] = v11;
        v55 = 2048;
        v56 = v12;
        v57 = 2048;
        v58 = v10;
        v59 = 2048;
        v60 = v13;
        v61 = 2048;
        v62 = v46;
        v63 = 2048;
        v64 = v47;
        v65 = 2048;
        v66 = v45;
        v67 = 2048;
        v68 = v48;
        v49 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]detected datagram connection, frame fragmentation disabled";
        v50 = v6;
        v51 = 98;
LABEL_62:
        _os_log_debug_impl(&dword_1C0DA5000, v50, OS_LOG_TYPE_DEBUG, v49, buf, v51);
      }
    }

    else if (v7)
    {
      v41 = *(v3 + 80);
      if (v41)
      {
        LODWORD(v41) = nw_parameters_get_ip_protocol();
      }

      v42 = *(v3 + 176);
      if (v42 > 3)
      {
        v43 = "unknown";
      }

      else
      {
        v43 = off_1E812BFE0[v42];
      }

      *buf = 136315650;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v41;
      *&buf[18] = 2080;
      *&buf[20] = v43;
      v49 = "[filter %s %d %s] detected datagram connection, frame fragmentation disabled";
      v50 = v6;
      v51 = 28;
      goto LABEL_62;
    }

    *(v3 + 120) |= 0x8000u;
  }

  v17 = (*(*(a2 + 24) + 128))(a2);
  *(v3 + 64) = nw_retain(v17);
  v18 = (*(*(a2 + 24) + 136))(a2);
  *(v3 + 72) = nw_retain(v18);
  v19 = (*(*(a2 + 24) + 112))(a2);
  *(v3 + 80) = nw_retain(v19);
  *(v3 + 88) = nw_parameters_copy_context();
  if (ne_filter_get_definition_onceToken != -1)
  {
    dispatch_once(&ne_filter_get_definition_onceToken, &__block_literal_global_518);
  }

  globals_for_protocol = nw_context_get_globals_for_protocol();
  *(v3 + 96) = globals_for_protocol;
  if (!globals_for_protocol)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_ERROR, "Failed to get the ne_filter globals", buf, 2u);
    }

LABEL_43:
    v36 = *(a1 + 40);
    if (v36)
    {
      v37 = (v36 + 180);
      if (atomic_fetch_or(v37, 0))
      {
        if (atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(a1);
        }
      }
    }

    goto LABEL_47;
  }

  (*(*(a2 + 24) + 120))(a2);
  filter_unit = nw_path_get_filter_unit();
  if (filter_unit)
  {
    v22 = filter_unit;
    v23 = 0;
    while (1)
    {
      if (((1 << v23) & v22) != 0)
      {
        v24 = malloc_type_malloc(0xA8uLL, 0x10A00400F97642BuLL);
        if (!v24)
        {
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v23 + 1;
            _os_log_error_impl(&dword_1C0DA5000, v35, OS_LOG_TYPE_ERROR, "Failed to allocate a ne_filter_client_t for unit %u", buf, 8u);
          }

          *(v3 + 176) = 2;
          goto LABEL_43;
        }

        v25 = v24;
        *(v24 + 136) = 0u;
        *(v24 + 120) = 0u;
        *(v24 + 104) = 0u;
        *(v24 + 88) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 152) = 0u;
        v26 = v24 + 152;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 8) = 0u;
        *v24 = 1 << v23;
        *(v24 + 1) = v23;
        nw_frame_array_init();
        nw_frame_array_init();
        *v26 = 0;
        v27 = *(v3 + 152);
        *(v25 + 20) = v27;
        *v27 = v25;
        *(v3 + 152) = v26;
      }

      if (++v23 == 8)
      {
        goto LABEL_32;
      }
    }
  }

  *(v3 + 176) = 1;
LABEL_32:
  ne_filter_register_flow(*(v3 + 96), a1);
  result = 1;
  if (*(v3 + 144))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    buf[24] = 1;
    v29 = dispatch_group_create();
    for (i = *(v3 + 144); i; i = *(i + 152))
    {
      v31 = ne_filter_copy_connection(*(v3 + 96), *(i + 4));
      if (v31)
      {
        xpc_release(v31);
      }

      else
      {
        *(v3 + 120) |= 2u;
        dispatch_group_enter(v29);
        v32 = *(v3 + 96);
        v34 = *i;
        v33 = *(i + 4);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 0x40000000;
        v53[2] = __ne_filter_protocol_add_input_handler_block_invoke;
        v53[3] = &unk_1E812BD40;
        v53[4] = buf;
        v53[5] = v29;
        ne_filter_request_connection(v32, v33, v34, v53);
      }
    }

    if ((*(v3 + 120) & 2) != 0)
    {
      atomic_fetch_add((v3 + 180), 1u);
      v39 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v40 = dispatch_queue_create("Filter establish connections queue", v39);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __ne_filter_protocol_add_input_handler_block_invoke_2;
      block[3] = &unk_1E812BD90;
      block[4] = buf;
      block[5] = v3;
      block[6] = a1;
      block[7] = v40;
      block[8] = v29;
      dispatch_group_notify(v29, v40, block);
    }

    else
    {
      dispatch_release(v29);
    }

    _Block_object_dispose(buf, 8);
    result = 1;
  }

LABEL_48:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void __ne_filter_protocol_add_input_handler_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __ne_filter_protocol_add_input_handler_block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 88);
  nw_queue_context_async();
  dispatch_release(*(a1 + 56));
  dispatch_release(*(a1 + 64));
}

void __ne_filter_protocol_add_input_handler_block_invoke_3(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(*(a1 + 40), out);
  v2 = *(*(a1 + 40) + 176);
  v3 = ne_log_obj();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 3)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = *(a1 + 40);
    v6 = v5[10];
    if (v6)
    {
      LODWORD(v6) = nw_parameters_get_ip_protocol();
      v5 = *(a1 + 40);
    }

    v7 = v5[20];
    if (v7)
    {
      v9 = v7[6];
      v10 = v7[7];
      v8 = v7[8];
      v11 = v7[9];
    }

    else
    {
      v8 = -1;
      v9 = -1;
      v10 = -1;
      v11 = -1;
    }

    v24 = v5[21];
    if (v24)
    {
      v26 = v24[6];
      v27 = v24[7];
      v25 = v24[8];
      v28 = v24[9];
    }

    else
    {
      v25 = -1;
      v26 = -1;
      v27 = -1;
      v28 = -1;
    }

    v33 = *(*(*(a1 + 32) + 8) + 24);
    v34 = 136317698;
    v35 = out;
    v36 = 1024;
    v37 = v6;
    v38 = 2048;
    v39 = v9;
    v40 = 2048;
    v41 = v10;
    v42 = 2048;
    v43 = v8;
    v44 = 2048;
    v45 = v11;
    v46 = 2048;
    v47 = v26;
    v48 = 2048;
    v49 = v27;
    v50 = 2048;
    v51 = v25;
    v52 = 2048;
    v53 = v28;
    v54 = 1024;
    v55 = v33;
    v30 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]all provider connection requests complete with success: %d";
    v31 = v3;
    v32 = 104;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v20 = *(a1 + 40);
    v21 = *(v20 + 80);
    if (v21)
    {
      LODWORD(v21) = nw_parameters_get_ip_protocol();
      v20 = *(a1 + 40);
    }

    v22 = *(v20 + 176);
    if (v22 > 3)
    {
      v23 = "unknown";
    }

    else
    {
      v23 = off_1E812BFE0[v22];
    }

    v29 = *(*(*(a1 + 32) + 8) + 24);
    v34 = 136315906;
    v35 = out;
    v36 = 1024;
    v37 = v21;
    v38 = 2080;
    v39 = v23;
    v40 = 1024;
    LODWORD(v41) = v29;
    v30 = "[filter %s %d %s] all provider connection requests complete with success: %d";
    v31 = v3;
    v32 = 34;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v31, OS_LOG_TYPE_DEBUG, v30, &v34, v32);
LABEL_8:
  v12 = *(a1 + 40);
  v13 = *(v12 + 120);
  if ((v13 & 1) == 0)
  {
    *(v12 + 120) = v13 & 0xFFFFFFFC;
    v14 = *(a1 + 40);
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      if ((*(v14 + 120) & 4) != 0)
      {
        ne_filter_protocol_connect(v14);
      }
    }

    else
    {
      ne_filter_protocol_drop_flow(v14);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = *(v15 + 40);
    if (v16)
    {
      v17 = (v16 + 180);
      if (atomic_fetch_or(v17, 0))
      {
        if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(*(a1 + 48));
        }
      }
    }
  }

  else
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_INFO, "protocol is null", &v34, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

__int128 *ne_filter_protocol_identifier()
{
  if (ne_filter_protocol_identifier_onceToken != -1)
  {
    dispatch_once(&ne_filter_protocol_identifier_onceToken, &__block_literal_global_3);
  }

  if (ne_filter_protocol_identifier_g_hasNESMAccess)
  {
    return &g_filter_protocol_identifier;
  }

  else
  {
    return 0;
  }
}

void ne_filter_protocol_handle_message(uint64_t a1, xpc_object_t object)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v8 = "ne_filter_protocol_handle_message";
    v5 = "%s called with null protocol";
LABEL_10:
    _os_log_fault_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_FAULT, v5, buf, 0xCu);
    goto LABEL_8;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v8 = "ne_filter_protocol_handle_message";
    v5 = "%s called with null filter";
    goto LABEL_10;
  }

  if (atomic_fetch_or((v2 + 180), 0))
  {
    atomic_fetch_add((v2 + 180), 1u);
    xpc_retain(object);
    v3 = *(v2 + 88);
    nw_queue_context_async();
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

void __ne_filter_protocol_handle_message_block_invoke(uint64_t a1)
{
  ne_filter_process_verdict(*(a1 + 32), 0, *(a1 + 40), *(a1 + 48));
  xpc_release(*(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = (v3 + 180);
      if (atomic_fetch_or(v4, 0))
      {
        if (atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
        {
          v5 = *(a1 + 32);

          ne_filter_protocol_destroy(v5);
        }
      }
    }
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_INFO, "protocol is null", v7, 2u);
    }
  }
}

BOOL ne_bloom_filter_from_mmap(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v53 = *MEMORY[0x1E69E9840];
  v44 = a1;
  v9 = opendir(a1);
  if (v9)
  {
    v10 = v9;
    v38 = &v37;
    v46 = v5;
    v5 = v5;
    MEMORY[0x1EEE9AC00]();
    v40 = &v37 - ((v5 + 15) & 0x1FFFFFFF0);
    bzero(v40, v5);
    v45 = 0;
    v41 = (a4 + 56);
    v11 = 0x1E696A000uLL;
    *&v12 = 136315394;
    v37 = v12;
    *&v12 = 136315650;
    v39 = v12;
    v42 = a2;
    v43 = v10;
    while (1)
    {
      v13 = readdir(v10);
      if (!v13)
      {
LABEL_30:
        v29 = v45;
        v28 = v46;
        if (!v45 && *__error())
        {
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v35 = __error();
            v36 = strerror(*v35);
            *buf = v37;
            v48 = "ne_bloom_filter_from_mmap";
            v49 = 2080;
            v50 = v36;
            _os_log_error_impl(&dword_1C0DA5000, v30, OS_LOG_TYPE_ERROR, "%s: Failed to read mmap files from directory <%s>", buf, 0x16u);
          }

          v29 = v45;
        }

        v31 = v28 < 1;
        v32 = v40;
        if (!v31)
        {
          do
          {
            v33 = *v32++;
            if ((v33 & 1) == 0 && *(a4 + 64))
            {
              [NEBloomFilter mmapCleanup:a4];
            }

            a4 += 88;
            --v5;
          }

          while (v5);
        }

        closedir(v10);
        result = v29 > 0;
        goto LABEL_41;
      }

      v14 = [*(v11 + 3776) stringWithUTF8String:v13->d_name];
      v15 = [*(v11 + 3776) stringWithUTF8String:a2];
      if ([v14 hasPrefix:v15])
      {
        v16 = [*(v11 + 3776) stringWithUTF8String:a3];
        v17 = [v14 hasPrefix:v16];

        if (v17)
        {
          goto LABEL_25;
        }

        v18 = objc_alloc(*(v11 + 3776));
        v19 = [*(v11 + 3776) stringWithUTF8String:v44];
        v15 = [v18 initWithFormat:@"%@/%@", v19, v14];

        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = v37;
          v48 = "ne_bloom_filter_from_mmap";
          v49 = 2112;
          v50 = v15;
          _os_log_debug_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_DEBUG, "%s: Checking file %@", buf, 0x16u);
        }

        if (v46 < 1)
        {
LABEL_29:

          v10 = v43;
          goto LABEL_30;
        }

        v21 = 0;
        v22 = -1;
        v23 = v41;
        do
        {
          if (*(v23 - 1))
          {
            if (!strcmp(*v23, [v15 UTF8String]))
            {
              v22 = v21;
              a2 = v42;
              goto LABEL_17;
            }
          }

          else if (v22 == -1)
          {
            v22 = v21;
          }

          ++v21;
          v23 += 11;
        }

        while (v5 != v21);
        a2 = v42;
        if (v22 == -1)
        {
          goto LABEL_29;
        }

LABEL_17:
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = v39;
          v48 = "ne_bloom_filter_from_mmap";
          v49 = 2112;
          v50 = v15;
          v51 = 1024;
          v52 = v22;
          _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, "%s: Updating file %@ into bloomFilter[%d]", buf, 0x1Cu);
        }

        v11 = 0x1E696A000;
        if (+[NEBloomFilter mmapFromFile:bloomFilter:](NEBloomFilter, "mmapFromFile:bloomFilter:", [v15 UTF8String], a4 + 88 * v22))
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v39;
            v48 = "ne_bloom_filter_from_mmap";
            v49 = 2112;
            v50 = v15;
            v51 = 1024;
            v52 = v22;
            _os_log_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEFAULT, "%s: Updated file %@ into bloomFilter[%d]", buf, 0x1Cu);
          }

          v40[v22] = 1;
          ++v45;
        }

        v10 = v43;
      }

LABEL_25:
    }
  }

  v26 = ne_log_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v48 = "ne_bloom_filter_from_mmap";
    _os_log_error_impl(&dword_1C0DA5000, v26, OS_LOG_TYPE_ERROR, "%s: Failed to read mmap directory", buf, 0xCu);
  }

  result = 0;
LABEL_41:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_bloom_filter_cleanup(uint64_t result, int a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = a2;
    do
    {
      if (*(v2 + 64))
      {
        result = [NEBloomFilter mmapCleanup:v2];
      }

      v2 += 88;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL ne_bloom_filter_contains(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  else
  {
    v4 = a3;
    v5 = (a2 + 24);
    v6 = 1;
    v7 = a3;
    v8 = 1;
    do
    {
      if (*(v5 + 3))
      {
        v9 = v5[1];
        if (v9)
        {
          if (v9 >= [NEBitVector getByteCount:*(v5 - 2)]&& [NEBloomFilter containsWithBitmap:*(v5 + 3) numberOfBits:*(v5 - 2) numberOfHashes:*(v5 - 1) murmurSeed:*v5 value:a1])
          {
            break;
          }
        }
      }

      v8 = v6++ < v4;
      v5 += 22;
      --v7;
    }

    while (v7);
  }

  return v8;
}

id ne_parse_url_and_check(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [NEURLParser matchingStringsForURL:a1];
  if ([v5 count])
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            v14 = v13;
            if (ne_bloom_filter_contains([v14 UTF8String], a2, a3))
            {
              v15 = xpc_string_create([v13 UTF8String]);
              xpc_array_append_value(v6, v15);
              ++v10;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);

        if (v10 <= 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = v6;
        }
      }

      else
      {

        v16 = 0;
      }

      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

uint64_t NEPIDByName(const char *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *v20 = 0x600000001;
  v15 = 0;
  v14 = 4;
  if (sysctl(v20, 2u, &v15, &v14, 0, 0) < 0)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      buffer = 136315394;
      v17 = "NEKernMaxProc";
      v18 = 2080;
      v19 = v13;
      _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "%s: Failed to get max proc count (%s)", &buffer, 0x16u);
    }

    goto LABEL_12;
  }

  if (!v15 || (v2 = 4 * v15, (v3 = malloc_type_malloc(4 * v15, 0xA806B919uLL)) == 0))
  {
LABEL_12:
    v8 = 0;
    goto LABEL_15;
  }

  v4 = v3;
  v5 = proc_listallpids(v3, v2);
  if (v5 < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v5;
    while (!proc_name(v4[v6], &buffer, 0x64u) || strcmp(&buffer, a1))
    {
      if (v7 == ++v6)
      {
        goto LABEL_9;
      }
    }

    v8 = v4[v6];
  }

  free(v4);
LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

xpc_object_t NECopySigningIdentifierForPIDwithAuditToken(int a1, uint64_t a2)
{
  result = ne_copy_signing_identifier_for_pid_with_audit_token(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v3);
    return v4;
  }

  return result;
}

CFStringRef NECopySigningIdentifierForXPCMessage(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || MEMORY[0x1C68E6D80]() != MEMORY[0x1E69E9E80])
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v3 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    *&buf[4] = "NECopySigningIdentifierForXPCMessage";
    v11 = "XPC object passed to %s is NULL or is not a dictionary";
    p_cf = buf;
    v13 = v2;
    v14 = 12;
LABEL_15:
    _os_log_error_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_ERROR, v11, p_cf, v14);
    goto LABEL_4;
  }

  *buf = 0u;
  v21 = 0u;
  xpc_dictionary_get_audit_token();
  v6 = *MEMORY[0x1E695E480];
  memset(&cf, 0, sizeof(cf));
  v7 = SecTaskCreateWithAuditToken(v6, &cf);
  if (!v7)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    LOWORD(cf.val[0]) = 0;
    v11 = "Failed to create a task from audit token";
    p_cf = &cf;
    v13 = v10;
    v14 = 2;
    goto LABEL_15;
  }

  v8 = v7;
  *cf.val = 0;
  v3 = SecTaskCopySigningIdentifier(v7, &cf);
  if (*cf.val)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      remote_connection = xpc_dictionary_get_remote_connection(a1);
      pid = xpc_connection_get_pid(remote_connection);
      *v18 = 67109120;
      v19 = pid;
      _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Failed to get the signing identifier of process %d", v18, 8u);
    }

    CFRelease(*cf.val);
  }

  CFRelease(v8);
LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL NEAuditTokenForPID(int pid, integer_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  target_task = 0;
  v4 = task_for_pid(*MEMORY[0x1E69E9A60], pid, &target_task);
  if (v4)
  {
    v5 = v4;
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v8 = mach_error_string(v5);
      *buf = 67109634;
      v17 = pid;
      v18 = 1024;
      v19 = v5;
      v20 = 2080;
      v21 = v8;
      v9 = "task_for_pid(mach_task_self(), %d, &task) => %d (%s)\n";
LABEL_7:
      _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, v9, buf, 0x18u);
      result = 0;
    }
  }

  else
  {
    v10 = task_info(target_task, 0xFu, a2, &task_info_outCnt);
    if (!v10)
    {
      result = 1;
      goto LABEL_9;
    }

    v11 = v10;
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v12 = mach_error_string(v11);
      *buf = 67109634;
      v17 = pid;
      v18 = 1024;
      v19 = v11;
      v20 = 2080;
      v21 = v12;
      v9 = "task_info(mach_task_self(), %d, TASK_AUDIT_TOKEN) => %d (%s)\n";
      goto LABEL_7;
    }
  }

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *ne_filter_crypto_init_master()
{
  v0 = malloc_type_malloc(0x28uLL, 0x1060040A09B13B7uLL);
  v1 = v0;
  if (v0)
  {
    arc4random_buf(v0 + 1, 0x20uLL);
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "Generated master key", v4, 2u);
    }

    *v1 = ccsha256_di();
  }

  return v1;
}

BOOL ne_filter_crypto_generate_client_key(uint64_t a1, int a2, uint64_t a3)
{
  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && a3)
  {
    ccsha256_di();
    v5 = cchkdf();
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "Generated client key for salt %u", buf, 8u);
    }

    result = v5 == 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *ne_filter_crypto_init_client(__int128 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x28uLL, 0x1060040A09B13B7uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    *(v2 + 24) = a1[1];
    *(v2 + 8) = v4;
    *v2 = ccsha256_di();
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_DEBUG, "Inited client key", v7, 2u);
    }
  }

  return v3;
}

uint64_t ne_filter_crypto_sign_data(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, _DWORD *a10)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1 && (v11 = *a1) != 0)
  {
    result = 22;
    if (a2 && a9 && a10)
    {
      v14 = *v11;
      if (*v11 <= 0x20 && v14 <= *a10)
      {
        v29[0] = *v11;
        v29[1] = v29;
        *a10 = v14;
        v23 = (((v11[1] + ((v11[1] + v11[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x1EEE9AC00](22);
        v25 = v29 - v24;
        v26 = *a1;
        cchmac_init();
        ne_filter_crypto_update_context(*a1, v25, a2, a3, a4, a5, a6, a7, a8);
        v27 = *a1;
        cchmac_final();
        ne_filter_crypto_print_data(a2, a3, a4, a5, a6, a7, a8, "SIGN");
        v28 = ne_log_obj();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289282;
          v31 = 32;
          v32 = 2098;
          v33 = a9;
          v34 = 2048;
          v35 = v29[0];
          _os_log_debug_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_DEBUG, "Sign data: sig = %{public,ne_filter_crypto_signature}.32P sig_len = %zu", buf, 0x1Cu);
        }

        result = 0;
      }

      else
      {
        result = 34;
      }
    }
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_ERROR, "Failed to sign data, no crypto state", buf, 2u);
    }

    result = 22;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_filter_crypto_update_context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v16 = *MEMORY[0x1E69E9840];
  cchmac_update();
  cchmac_update();
  cchmac_update();
  result = cchmac_update();
  if (a4 && a5)
  {
    result = cchmac_update();
  }

  if (a6 && a7)
  {
    result = cchmac_update();
  }

  if (a8 && a9)
  {
    result = cchmac_update();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void ne_filter_crypto_print_data(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315138;
    v36 = a8;
    _os_log_debug_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_DEBUG, "%s NE Filter crypto data:", &v35, 0xCu);
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 16;
    v39 = 2098;
    v40 = a1;
    _os_log_debug_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_DEBUG, "%s \tflow_id: %{public, u_int8_t}.16P", &v35, 0x1Cu);
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 8;
    v39 = 2098;
    v40 = a1 + 16;
    _os_log_debug_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_DEBUG, "%s \tsock_id: %{public,u_int8_t}.8P", &v35, 0x1Cu);
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 4;
    v39 = 2098;
    v40 = a1 + 24;
    _os_log_debug_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_DEBUG, "%s \tdirection: %{public,u_int8_t}.4P", &v35, 0x1Cu);
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315906;
    v36 = a8;
    v37 = 1042;
    v38 = 28;
    v39 = 2098;
    v40 = a1 + 28;
    v41 = 2048;
    v42 = 28;
    _os_log_debug_impl(&dword_1C0DA5000, v20, OS_LOG_TYPE_DEBUG, "%s \tremote: %{public,u_int8_t}.28P (%lu)", &v35, 0x26u);
  }

  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315906;
    v36 = a8;
    v37 = 1042;
    v38 = 28;
    v39 = 2098;
    v40 = a1 + 56;
    v41 = 2048;
    v42 = 28;
    _os_log_debug_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_DEBUG, "%s \tlocal: %{public,u_int8_t}.28P (%lu)", &v35, 0x26u);
  }

  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 4;
    v39 = 2098;
    v40 = a1 + 84;
    _os_log_debug_impl(&dword_1C0DA5000, v22, OS_LOG_TYPE_DEBUG, "%s \tsocketProtocol: %{public,u_int8_t}.4P", &v35, 0x1Cu);
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 4;
    v39 = 2098;
    v40 = a1 + 88;
    _os_log_debug_impl(&dword_1C0DA5000, v23, OS_LOG_TYPE_DEBUG, "%s \tpid: %{public,u_int8_t}.4P", &v35, 0x1Cu);
  }

  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 4;
    v39 = 2098;
    v40 = a1 + 92;
    _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, "%s \teffective_pid: %{public,u_int8_t}.4P", &v35, 0x1Cu);
  }

  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 16;
    v39 = 2098;
    v40 = a1 + 100;
    _os_log_debug_impl(&dword_1C0DA5000, v25, OS_LOG_TYPE_DEBUG, "%s \tuuid: %{public,u_int8_t}.16P", &v35, 0x1Cu);
  }

  v26 = ne_log_obj();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 16;
    v39 = 2098;
    v40 = a1 + 116;
    _os_log_debug_impl(&dword_1C0DA5000, v26, OS_LOG_TYPE_DEBUG, "%s \teffective_uuid: %{public,u_int8_t}.16P", &v35, 0x1Cu);
  }

  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 4;
    v39 = 2098;
    v40 = a1 + 96;
    _os_log_debug_impl(&dword_1C0DA5000, v27, OS_LOG_TYPE_DEBUG, "%s \tresponsible_pid: %{public,u_int8_t}.4P", &v35, 0x1Cu);
  }

  v28 = ne_log_obj();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 16;
    v39 = 2098;
    v40 = a1 + 132;
    _os_log_debug_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_DEBUG, "%s \tresponsible_uuid: %{public,u_int8_t}.16P", &v35, 0x1Cu);
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 8;
    v39 = 2098;
    v40 = a1 + 152;
    _os_log_debug_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_DEBUG, "%s \tbyte_count_in: %{public,u_int8_t}.8P", &v35, 0x1Cu);
  }

  v30 = ne_log_obj();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1042;
    v38 = 8;
    v39 = 2098;
    v40 = a1 + 160;
    _os_log_debug_impl(&dword_1C0DA5000, v30, OS_LOG_TYPE_DEBUG, "%s \tbyte_count_out: %{public,u_int8_t}.8P", &v35, 0x1Cu);
    if (!a2)
    {
      goto LABEL_33;
    }
  }

  else if (!a2)
  {
    goto LABEL_33;
  }

  v31 = ne_log_obj();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315650;
    v36 = a8;
    v37 = 1040;
    v38 = a3;
    v39 = 2080;
    v40 = a2;
    _os_log_debug_impl(&dword_1C0DA5000, v31, OS_LOG_TYPE_DEBUG, "%s \tbundle_id: %.*s", &v35, 0x1Cu);
  }

LABEL_33:
  if (a4 && (v32 = ne_log_obj(), os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG)))
  {
    v35 = 136315394;
    v36 = a8;
    v37 = 1024;
    v38 = a5;
    _os_log_debug_impl(&dword_1C0DA5000, v32, OS_LOG_TYPE_DEBUG, "%s \turl: <%d characters>", &v35, 0x12u);
    if (!a6)
    {
      goto LABEL_38;
    }
  }

  else if (!a6)
  {
    goto LABEL_38;
  }

  v33 = ne_log_obj();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v35 = 136315394;
    v36 = a8;
    v37 = 1024;
    v38 = a7;
    _os_log_debug_impl(&dword_1C0DA5000, v33, OS_LOG_TYPE_DEBUG, "%s \thostname: <%d characters>", &v35, 0x12u);
  }

LABEL_38:
  v34 = *MEMORY[0x1E69E9840];
}

BOOL ne_filter_crypto_validate_data(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1 && (v12 = *a1) != 0)
  {
    result = 0;
    if (a2 && a3 && a10 && a11)
    {
      if (*v12 > 0x20uLL || *v12 != a11)
      {
        goto LABEL_18;
      }

      v30[1] = v30;
      memset(v39, 0, sizeof(v39));
      v21 = (((v12[1] + ((v12[1] + v12[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](0);
      v23 = v30 - v22;
      v24 = *a1;
      cchmac_init();
      ne_filter_crypto_update_context(*a1, v23, a3, a4, a5, a6, a7, a8, a9);
      v25 = *a1;
      cchmac_final();
      ne_filter_crypto_print_data(a3, a4, a5, a6, a7, a8, a9, "VALIDATE");
      v26 = ne_log_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289538;
        v32 = 32;
        v33 = 2098;
        v34 = a10;
        v35 = 1042;
        v36 = 32;
        v37 = 2098;
        v38 = v39;
        _os_log_debug_impl(&dword_1C0DA5000, v26, OS_LOG_TYPE_DEBUG, "Validate data: sig1 = %{public,ne_filter_crypto_signature}.32P sig2 = %{public,ne_filter_crypto_signature}.32P", buf, 0x22u);
      }

      v27 = **a1;
      result = cc_cmp_safe() == 0;
    }
  }

  else
  {
    v28 = ne_log_obj();
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0DA5000, v28, OS_LOG_TYPE_ERROR, "Failed to valdate data, no crypto state", buf, 2u);
LABEL_18:
      result = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v4 = MEMORY[0x1EEDB6CF0](theData, dataToFind, searchRange.location, searchRange.length, compareOptions);
  result.length = v5;
  result.location = v4;
  return result;
}