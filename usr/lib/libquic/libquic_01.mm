uint64_t quic_ack_get_largest_pn(char *a1, int a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_ack_get_largest_pn";
    v8 = v6;
    v9 = 1019;
    goto LABEL_18;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_ack_get_largest_pn";
    v8 = v11;
    v9 = 1020;
LABEL_18:
    qlog_internal(17, v8, v9);
    return -1;
  }

  v3 = quic_ack_space(a1, a2, a3);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v13 = _os_log_pack_size();
      v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_ack_get_largest_pn";
      v8 = v14;
      v9 = 1024;
      goto LABEL_18;
    }

    return -1;
  }

  return *(v3 + 7);
}

double quic_packet_create(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    v3 = v2[21];
    v4 = v2[22];
    v5 = (a1 + 8);
    if (v3)
    {
      v5 = (v3 + 176);
    }

    *v5 = v4;
    *v4 = v3;
    v2[21] = 0;
    v2[22] = 0;
    v6 = *(a1 + 16);
    *(a1 + 16) = v6 - 1;
    if (!v6)
    {
      v7 = v2;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v8 = _os_log_pack_size();
        v9 = v13 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = *(a1 + 16);
        *v10 = 136447234;
        *(v10 + 4) = "quic_packet_create";
        *(v10 + 12) = 2082;
        *(v10 + 14) = "packet_pool->free_packet_count";
        *(v10 + 22) = 2048;
        *(v10 + 24) = v11 + 1;
        *(v10 + 32) = 2048;
        *(v10 + 34) = 1;
        *(v10 + 42) = 2048;
        *(v10 + 44) = v11;
        qlog_internal(17, v9, 73);
      }

      *(a1 + 16) = 0;
      v2 = v7;
    }
  }

  else
  {
    v2 = malloc_type_malloc(0xF0uLL, 0x9188EE8AuLL);
    if (!v2)
    {
      qlog_abort_internal("%s strict allocator failed", "quic_packet_create");
    }
  }

  result = 0.0;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  v2[20] = v2 + 19;
  v2[17] = a1;
  *(v2 + 58) = 8200;
  v2[28] = -1;
  return result;
}

char *quic_ack_space(char *result, int a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 1:
      return result;
    case 2:
      result += 96;
      return result;
    case 3:
      v3 = result;
      v4 = result + 192;
      result = *(result + 24);
      if ((v4[41] & 0x10) == 0)
      {
        if (result)
        {
          return result;
        }

        goto LABEL_16;
      }

      if (!result)
      {
LABEL_16:
        result = malloc_type_calloc(1uLL, 0x60uLL, 0xD350B1A1uLL);
        if (!result)
        {
          qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_space", 1uLL, 0x60uLL);
        }

        *result = 0;
        *(result + 1) = result;
        result[76] = 1;
        *(result + 2) = 0;
        *(result + 3) = 0;
        *(result + 8) = -1;
        *(result + 8) = a3;
        v10 = *(v3 + 24);
        *(result + 10) = v10;
        if (v10)
        {
          v11 = (v10 + 88);
        }

        else
        {
          v11 = v3 + 200;
        }

        *v11 = result + 80;
        *(v3 + 24) = result;
        *(result + 11) = v4;
        return result;
      }

      while (*(result + 8) != a3)
      {
        result = *(result + 10);
        if (!result)
        {
          goto LABEL_16;
        }
      }

      break;
    default:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v6 = _os_log_pack_size();
        v7 = v12 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        *v8 = 136446466;
        *(v8 + 4) = "quic_ack_space";
        *(v8 + 12) = 1024;
        *(v8 + 14) = a2;
        qlog_internal(17, v7, 142);
      }

      return 0;
  }

  return result;
}

BOOL quic_frame_is_type_index_valid(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a1 - 9 <= 6)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      v14 = _os_log_pack_size();
      v15 = v23 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "quic_frame_is_type_index_valid";
      v9 = v15;
      v10 = 4460;
      goto LABEL_16;
    }
  }

  else if (a1 == 49)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      v17 = _os_log_pack_size();
      v18 = v23 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_frame_is_type_index_valid";
      v9 = v18;
      v10 = 4465;
      goto LABEL_16;
    }
  }

  else if (a1 >= 0xB1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      v20 = _os_log_pack_size();
      v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_frame_is_type_index_valid";
      v9 = v21;
      v10 = 4470;
      goto LABEL_16;
    }
  }

  else if (a1 == a2 || (a2 - 12237312) <= 6 && ((1 << a2) & 0x63) != 0)
  {
    v3 = &quic_frames[6 * a1];
    if (*v3 && v3[1] && v3[2] && v3[3])
    {
      return 1;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      v5 = _os_log_pack_size();
      v6 = v23 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = quic_frame_type_describe(a1);
      *v7 = 136446466;
      *(v7 + 4) = "quic_frame_is_type_index_valid";
      *(v7 + 12) = 2082;
      *(v7 + 14) = v8;
      v9 = v6;
      v10 = 4486;
LABEL_16:
      qlog_internal(16, v9, v10);
      return 0;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v11 = _os_log_pack_size();
    v12 = v23 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_frame_is_type_index_valid";
    v9 = v12;
    v10 = 4478;
    goto LABEL_16;
  }

  return result;
}

uint64_t quic_recovery_inner_state(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v6 = _os_log_pack_size();
    v7 = v14 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_recovery_inner_state";
    v9 = v7;
    v10 = 149;
    goto LABEL_16;
  }

  if (a2 != 3 || !a3)
  {
    return *(a1 + 8 * a2 + 8);
  }

  v3 = *(a3 + 312);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_recovery_inner_state";
    v9 = v12;
    v10 = 154;
LABEL_16:
    qlog_internal(17, v9, v10);
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return *(a1 + 8 * a2 + 8);
  }

  return v4;
}

BOOL quic_migration_multipath_ready(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (~*(a1 + 98) & 0x28) == 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_migration_multipath_ready";
    qlog_internal(17, v3, 594);
    return 0;
  }

  return result;
}

BOOL quic_protector_keys_ready(uint64_t a1, unsigned int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      result = quic_protector_open_key_ready(a1, a2);
      if (result)
      {
        return *(a1 + 264 * a2 + 256) & 1;
      }

      return result;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v10 = _os_log_pack_size();
      v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_protector_keys_ready";
      v8 = v11;
      v9 = 1516;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_protector_keys_ready";
    v8 = v6;
    v9 = 1515;
LABEL_14:
    qlog_internal(17, v8, v9);
    return 0;
  }

  return result;
}

BOOL quic_protector_open_key_ready(uint64_t a1, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    return *(a1 + 264 * a2 + 1840) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_protector_open_key_ready";
    qlog_internal(17, v4, 1506);
    return 0;
  }

  return result;
}

uint64_t quic_protector_get_tag_size(uint64_t a1, unsigned int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (quic_protector_keys_ready(a1, a2))
    {
      return *(a1 + 264 * a2 + 221);
    }

    else
    {
      return 16;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_protector_get_tag_size";
    qlog_internal(17, v6, 1660);
    return 0;
  }

  return result;
}

void *quic_frame_create(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1 && (result = *a1) != 0)
  {
    v5 = result[12];
    v6 = result[13];
    v7 = (a1 + 8);
    if (v5)
    {
      v7 = (v5 + 104);
    }

    *v7 = v6;
    *v6 = v5;
    result[12] = 0;
    result[13] = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = v8 - 1;
    if (!v8)
    {
      v9 = result;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v10 = _os_log_pack_size();
        v11 = v14 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v12 = _os_log_pack_fill();
        v13 = *(a1 + 16);
        *v12 = 136447234;
        *(v12 + 4) = "quic_frame_create";
        *(v12 + 12) = 2082;
        *(v12 + 14) = "frame_pool->free_frame_count";
        *(v12 + 22) = 2048;
        *(v12 + 24) = v13 + 1;
        *(v12 + 32) = 2048;
        *(v12 + 34) = 1;
        *(v12 + 42) = 2048;
        *(v12 + 44) = v13;
        qlog_internal(17, v11, 223);
      }

      *(a1 + 16) = 0;
      result = v9;
    }
  }

  else
  {
    result = malloc_type_calloc(1uLL, 0x80uLL, 0x44744B38uLL);
    if (!result)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_create", 1uLL, 0x80uLL);
    }
  }

  *result = a2;
  result[14] = a1;
  return result;
}

void quic_cid_read(void *__src, unsigned int a2, _BYTE *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!__src)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v4 = _os_log_pack_size();
    v5 = v15 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_cid_read";
    v7 = v5;
    v8 = 73;
LABEL_22:
    qlog_internal(17, v7, v8);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_cid_read";
    v7 = v10;
    v8 = 74;
    goto LABEL_22;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_cid_read";
    v7 = v13;
    v8 = 75;
    goto LABEL_22;
  }

  if (a2 >= 0x14)
  {
    v3 = 20;
  }

  else
  {
    v3 = a2;
  }

  *a3 = v3;

  memcpy(a3 + 1, __src, v3);
}

BOOL quic_path_is_flow_controlled(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 386) >> 13) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_flow_controlled";
    qlog_internal(17, v3, 626);
    return 0;
  }

  return result;
}

uint64_t quic_ecn_inner_state(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2 != 3)
  {
    return a1 + 56 * a2;
  }

  v4 = *(a3 + 320);
  if (v4)
  {
    result = *(v4 + 24);
    if (result)
    {
      return result;
    }

    return a1 + 56 * a2;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_ecn_inner_state";
    qlog_internal(17, v7, 84);
  }

  return 0;
}

BOOL quic_packet_builder_has_frames(uint64_t a1, unsigned int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      return *(a1 + 16 * a2 + 16) != 0;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_packet_builder_has_frames";
      v6 = v9;
      v7 = 323;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_packet_builder_has_frames";
    v6 = v4;
    v7 = 322;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return result;
}

BOOL quic_protector_seal_key_ready(uint64_t a1, unsigned int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 264 * a2 + 256) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_protector_seal_key_ready";
    qlog_internal(17, v4, 1495);
    return 0;
  }

  return result;
}

BOOL quic_ack_assemble_for_pn_space(char *a1, char a2, unsigned int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v12 = quic_ack_space(a1, a3, a4);
  if (v12)
  {
    v13 = v12;
    if (a4 == -1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 12237312;
    }

    if (quic_packet_builder_find_for_pn_space(a5, v14, a3))
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v19 = _os_log_pack_size();
        v20 = v22 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v21 = _os_log_pack_fill();
        *v21 = 136446210;
        *(v21 + 4) = "quic_ack_assemble_for_pn_space";
        qlog_internal(2, v20, 373);
        result = 1;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = quic_ack_for_pn_space(a1, a2, a3, a4, a5, a6) != 0;
    }

    v13[76] = 0;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v16 = _os_log_pack_size();
    v17 = v22 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_ack_assemble_for_pn_space";
    qlog_internal(17, v17, 366);
    return 0;
  }

  return result;
}

uint64_t quic_packet_builder_calculate_size(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int a7)
{
  v20 = *MEMORY[0x1E69E9840];
  tag_size = quic_protector_get_tag_size(a2, a3);
  if (a7 <= tag_size)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
    {
      v16 = _os_log_pack_size();
      v17 = &v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "quic_packet_builder_calculate_size";
      qlog_internal(17, v17, 467);
      return 0;
    }
  }

  else
  {
    HIBYTE(v19) = 0;
    LODWORD(result) = _quic_packet_builder_calculate_size(a1, a2, a3, a4, a5, a6, (a7 - tag_size), 1, &v19 + 7);
    if (HIBYTE(v19))
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __quic_conn_send_frames_for_key_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  refreshed = quic_conn_refresh_path(*(a1 + 80), *(a1 + 88));
  if (v42[3] != *(a1 + 96) && *(a1 + 106) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (a2)
  {
    v30[2] = MEMORY[0x1E69E9820];
    v30[3] = 0x40000000;
    v30[4] = __quic_conn_send_frames_for_key_state_block_invoke_214;
    v30[5] = &unk_1E73D22F8;
    v38 = *(a1 + 104);
    v4 = *(a1 + 80);
    v31 = *(a1 + 40);
    v39 = *(a1 + 107);
    v5 = *(a1 + 56);
    v32 = &v41;
    v33 = v5;
    v34 = *(a1 + 32);
    v35 = *(a1 + 64);
    v36 = v4;
    v37 = a2;
    v40 = *(a1 + 109);
    nw_protocol_data_access_buffer();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 80) + 1112))
    {
      v6 = _os_log_pack_size();
      v30[1] = v30;
      v7 = v30 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(a1 + 80);
      v10 = *(v9 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v11 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v11 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v12 = v11;
      }

      else
      {
        v12 = &quic_cid_describe_cid_buf1;
      }

      v13 = ++quic_cid_describe_state;
      v14 = *(v10 + 38);
      v15 = 0uLL;
      *(v12 + 25) = 0u;
      v30[0] = v9 + 976;
      *v12 = 0u;
      v12[1] = 0u;
      if (v14)
      {
        if (v14 >= 0x14)
        {
          v16 = 20;
        }

        else
        {
          v16 = v14;
        }

        v17 = (v10 + 39);
        do
        {
          v18 = *v17++;
          snprintf(v12, 0x29uLL, "%s%02x", v12, v18);
          --v16;
        }

        while (v16);
        v13 = quic_cid_describe_state;
        v15 = 0uLL;
      }

      v19 = *(*(a1 + 80) + 1112);
      v20 = v13 % 3;
      if (v13 % 3 == 2)
      {
        v21 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v21 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v13 + 1;
      v22 = *(v19 + 17);
      if (v20)
      {
        v23 = v21;
      }

      else
      {
        v23 = &quic_cid_describe_cid_buf1;
      }

      *v23 = v15;
      v23[1] = v15;
      *(v23 + 25) = v15;
      if (v22)
      {
        if (v22 >= 0x14)
        {
          v24 = 20;
        }

        else
        {
          v24 = v22;
        }

        v25 = (v19 + 18);
        do
        {
          v26 = *v25++;
          snprintf(v23, 0x29uLL, "%s%02x", v23, v26);
          --v24;
        }

        while (v24);
      }

      *v8 = 136446978;
      *(v8 + 4) = "quic_conn_send_frames_for_key_state_block_invoke";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v30[0];
      *(v8 + 22) = 2082;
      *(v8 + 24) = v12;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v23;
      qlog_internal(16, v7, 2258);
    }

    v27 = *(*(*(a1 + 48) + 8) + 24);
    if (v27)
    {
      v28 = v42[3];
      *(v27 + 144) = v28;
      quic_conn_handle_sent_packet(*(a1 + 80), v28, *(*(*(a1 + 48) + 8) + 24), *(a1 + 104), *(a1 + 107), (*(*(a1 + 56) + 8) + 24));
    }

    v29 = *(*(*(a1 + 64) + 8) + 24);
    if (v29)
    {
      free(v29);
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }

  _Block_object_dispose(&v41, 8);
}

uint64_t cubic_can_send_packet(uint64_t a1, unint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "cubic_can_send_packet";
    v7 = v5;
    v8 = 607;
    goto LABEL_14;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "cubic_can_send_packet";
    v7 = v10;
    v8 = 608;
LABEL_14:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return quic_cc_can_send(v2 + 16, a2);
}

uint64_t quic_cc_can_send(uint64_t a1, unint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    if (v2 >= v3)
    {
      v4 = v2 - v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 < a2)
    {
      if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v11 = _os_log_pack_size();
        v12 = v23 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *v13 = 136446978;
        *(v13 + 4) = "quic_cc_can_send";
        *(v13 + 12) = 2048;
        *(v13 + 14) = v14;
        *(v13 + 22) = 2048;
        *(v13 + 24) = a2;
        *(v13 + 32) = 2048;
        *(v13 + 34) = v15;
        qlog_internal(2, v12, 49);
      }

      if (__quic_signpost_is_enabled__quic_signposts_once_966[0] != -1)
      {
        dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_966, &__block_literal_global_967);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_968 == 1)
      {
        result = kdebug_is_enabled();
        if (!result)
        {
          return result;
        }

        kdebug_trace();
      }

      return 0;
    }

    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v18 = _os_log_pack_size();
      v19 = v23 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      *v20 = 136446978;
      *(v20 + 4) = "quic_cc_can_send";
      *(v20 + 12) = 2048;
      *(v20 + 14) = v21;
      *(v20 + 22) = 2048;
      *(v20 + 24) = a2;
      *(v20 + 32) = 2048;
      *(v20 + 34) = v22;
      qlog_internal(2, v19, 56);
      return 1;
    }

    else
    {
      return 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v6 = _os_log_pack_size();
    v7 = v23 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_cc_can_send";
    qlog_internal(17, v7, 41);
    return 0;
  }

  return result;
}

void *quic_packet_builder_find_for_pn_space(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_packet_builder_find_for_pn_space";
    v7 = v5;
    v8 = 175;
    goto LABEL_15;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_packet_builder_find_for_pn_space";
    v7 = v10;
    v8 = 176;
LABEL_15:
    qlog_internal(17, v7, v8);
    return 0;
  }

  for (result = *(a1 + 16 * a3 + 16); result; result = result[12])
  {
    if (*result == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t quic_ecn_get_received_ip_ecn_counter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v4 = _os_log_pack_size();
    v5 = v15 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_ecn_get_received_ip_ecn_counter";
    v7 = v5;
    v8 = 556;
    goto LABEL_17;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_ecn_get_received_ip_ecn_counter";
    v7 = v10;
    v8 = 557;
    goto LABEL_17;
  }

  result = quic_ecn_inner_state(a1, a2, a3);
  if (!result)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_ecn_get_received_ip_ecn_counter";
    v7 = v13;
    v8 = 560;
LABEL_17:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return result;
}

uint64_t quic_ack_for_pn_space(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v54 = _os_log_pack_size();
    v55 = &v85[-((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "quic_ack_for_pn_space";
    v57 = v55;
    v58 = 154;
    goto LABEL_132;
  }

  v6 = a3;
  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v59 = _os_log_pack_size();
    v60 = &v85[-((MEMORY[0x1EEE9AC00](v59, v59) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "quic_ack_for_pn_space";
    v57 = v60;
    v58 = 155;
    goto LABEL_132;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v62 = _os_log_pack_size();
    v63 = &v85[-((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v64 = _os_log_pack_fill();
    *v64 = 136446210;
    *(v64 + 4) = "quic_ack_for_pn_space";
    v57 = v63;
    v58 = 156;
    goto LABEL_132;
  }

  v11 = quic_ack_space(a1, a3, a4);
  if (!v11)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v65 = _os_log_pack_size();
    v66 = &v85[-((MEMORY[0x1EEE9AC00](v65, v65) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v67 = _os_log_pack_fill();
    *v67 = 136446210;
    *(v67 + 4) = "quic_ack_for_pn_space";
    v57 = v66;
    v58 = 160;
    goto LABEL_132;
  }

  v12 = v11;
  if (!a6[2] && !*a6)
  {
    v13 = a6[1] != 0;
    if (v6 == 3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 1;
  if (v6 != 3)
  {
LABEL_8:
    if (*(v11 + 8) == -1)
    {
      goto LABEL_9;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v68 = _os_log_pack_size();
    v69 = &v85[-((MEMORY[0x1EEE9AC00](v68, v68) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v70 = _os_log_pack_fill();
    *v70 = 136446210;
    *(v70 + 4) = "quic_ack_for_pn_space";
    v57 = v69;
    v58 = 174;
LABEL_132:
    qlog_internal(17, v57, v58);
    return 0;
  }

LABEL_9:
  if (!*v11 || (v11[76] & 1) == 0)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v71 = _os_log_pack_size();
      v72 = &v85[-((MEMORY[0x1EEE9AC00](v71, v71) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v73 = _os_log_pack_fill();
      if (v6 > 3)
      {
        v74 = "???";
      }

      else
      {
        v74 = off_1E73D1470[(v6 - 1)];
      }

      v82 = v12[76];
      *v73 = 136446722;
      *(v73 + 4) = "quic_ack_for_pn_space";
      *(v73 + 12) = 2082;
      *(v73 + 14) = v74;
      *(v73 + 22) = 1024;
      *(v73 + 24) = v82;
      qlog_internal(2, v72, 182);
      return 0;
    }

    return 0;
  }

  if (!*(v11 + 2))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v75 = _os_log_pack_size();
      v76 = &v85[-((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v77 = _os_log_pack_fill();
      *v77 = 136446210;
      *(v77 + 4) = "quic_ack_for_pn_space";
      v57 = v76;
      v58 = 186;
      goto LABEL_132;
    }

    return 0;
  }

  v90 = v13;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v78 = _os_log_pack_size();
    v79 = &v85[-((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v80 = _os_log_pack_fill();
    if (v6 > 3)
    {
      v81 = "???";
    }

    else
    {
      v81 = off_1E73D1470[(v6 - 1)];
    }

    *v80 = 136446466;
    *(v80 + 4) = "quic_ack_for_pn_space";
    *(v80 + 12) = 2082;
    *(v80 + 14) = v81;
    qlog_internal(2, v79, 190);
  }

  v14 = **(*(v12 + 1) + 8);
  v15 = *(v14 + 8);
  if (v6 < 3)
  {
    v16 = 0;
LABEL_24:
    *(v12 + 3) = v16;
    goto LABEL_25;
  }

  if (!a5 || (v16 = *(v12 + 3)) == 0)
  {
    v18 = *(v14 + 8);
    v19 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v83 = v6;
      v84 = v19;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v19 = v84;
      v6 = v83;
    }

    v16 = (timebase_info_info * v19 / dword_1ED6D716C / 0x3E8 - *(v12 + 2)) >> a2;
    v15 = v18;
    goto LABEL_24;
  }

LABEL_25:
  v20 = *(v12 + 8);
  if (v20 == -1)
  {
    v22 = 1;
    v23 = *(a1 + 234);
    if (*(a1 + 234))
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v15)
    {
      if (v15 >> 62)
      {
        goto LABEL_127;
      }

      v23 = byte_193207AD4[(73 - __clz(v15)) >> 3];
      if (!v16)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v23 = 1;
      if (!v16)
      {
        goto LABEL_46;
      }
    }

    if (v16 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v16);
    }

    v24 = __clz(v16);
    goto LABEL_44;
  }

  if (v20)
  {
    if (v20 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", *(v12 + 8));
    }

    v21 = byte_193207AD4[(73 - __clz(v20)) >> 3];
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 + 4;
  v23 = *(a1 + 234);
  if (!*(a1 + 234))
  {
    goto LABEL_30;
  }

LABEL_38:
  if (v15)
  {
    if (v15 >> 62)
    {
      goto LABEL_127;
    }

    v24 = __clz(v15);
LABEL_44:
    v25 = byte_193207AD4[(73 - v24) >> 3] + v23;
    if (!a5)
    {
      goto LABEL_58;
    }

LABEL_47:
    v89 = v25;
    v26 = v16;
    frame_pool = quic_packet_builder_get_frame_pool(a5);
    if (v20 == -1)
    {
      v31 = quic_frame_create(frame_pool, 2);
      *(v31 + 16) = v6;
      v31[4] = v15;
      v31[5] = v26;
      v31[10] = 0;
      if (quic_packet_builder_find_for_pn_space(a5, 2, v6))
      {
        qlog_abort_internal("%s ACK frame already in the builder", "quic_frame_alloc_ACK");
      }

      quic_packet_builder_append_for_pn_space(a5, v31, v6);
    }

    else
    {
      v88 = v22;
      v86 = v6;
      v28 = quic_frame_create(frame_pool, 12237312);
      v87 = v85;
      v28[3] = v20;
      v28[4] = v15;
      v28[5] = v26;
      v28[10] = 0;
      v96 = 0;
      v97 = &v96;
      v98 = 0x2000000000;
      v99 = 0;
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 0x40000000;
      v92 = __quic_packet_builder_find_ack_mp_block_invoke;
      v93 = &unk_1E73D25A0;
      v94 = &v96;
      v95 = v20;
      for (i = *(a5 + 64); i; i = i[12])
      {
        if (*i == 12237312 && !(v92)(v91, i))
        {
          break;
        }
      }

      v30 = v97[3];
      _Block_object_dispose(&v96, 8);
      v22 = v88;
      if (v30)
      {
        qlog_abort_internal("%s ACK_MP frame already in the builder", "quic_frame_alloc_ACK_MP");
      }

      quic_packet_builder_append_for_pn_space(a5, v28, 3u);
      v6 = v86;
    }

    v25 = v89;
    goto LABEL_58;
  }

LABEL_46:
  v25 = v23 + 1;
  if (a5)
  {
    goto LABEL_47;
  }

LABEL_58:
  v32 = v25 + v22;
  v33 = **(*(v12 + 1) + 8);
  if (!v33)
  {
    goto LABEL_82;
  }

  v15 = 0;
  do
  {
    v35 = v33[1];
    v36 = v35 - *v33;
    if (v35 == *v33)
    {
      v37 = 1;
    }

    else
    {
      if (v36 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v36);
      }

      v37 = byte_193207AD4[(73 - __clz(v36)) >> 3];
    }

    v32 += v37;
    v38 = **(v33[3] + 8);
    if (!v38)
    {
      if (!a5)
      {
        goto LABEL_62;
      }

      v40 = *(v12 + 8);
      v41 = *(a1 + 234);
      v42 = a5;
      if (v40 != -1)
      {
        v34 = 0;
LABEL_61:
        quic_frame_alloc_ack_mp_block(v42, v40, v41, v36, v34, a6);
        goto LABEL_62;
      }

      v43 = v6;
      v34 = 0;
      goto LABEL_78;
    }

    v39 = *v33 - *(v38 + 8);
    v34 = v39 - 2;
    if (v39 == 2)
    {
      ++v32;
      if (!a5)
      {
        goto LABEL_62;
      }

LABEL_76:
      v40 = *(v12 + 8);
      v41 = *(a1 + 234);
      v42 = a5;
      if (v40 != -1)
      {
        goto LABEL_61;
      }

      v43 = v6;
LABEL_78:
      quic_frame_alloc_ack_block(v42, v43, v41, v36, v34, a6);
      goto LABEL_62;
    }

    if (v34 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v34);
    }

    v32 += byte_193207AD4[(73 - __clz(v34)) >> 3];
    if (a5)
    {
      goto LABEL_76;
    }

LABEL_62:
    v33 = **(v33[3] + 8);
    ++v15;
  }

  while (v33);
  if (v15)
  {
    if (!(v15 >> 62))
    {
      v44 = byte_193207AD4[(73 - __clz(v15)) >> 3];
      v45 = v15 > 5;
      goto LABEL_83;
    }

LABEL_127:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v15);
  }

LABEL_82:
  v45 = 0;
  v44 = 1;
LABEL_83:
  v17 = v32 + v44;
  if (!v90)
  {
    goto LABEL_97;
  }

  v46 = *a6;
  if (!*a6)
  {
    v47 = 1;
    v48 = a6[1];
    if (v48)
    {
      goto LABEL_87;
    }

LABEL_92:
    v49 = 1;
    v48 = a6[2];
    if (!v48)
    {
      goto LABEL_93;
    }

LABEL_89:
    if (!(v48 >> 62))
    {
      v50 = byte_193207AD4[(73 - __clz(v48)) >> 3];
      goto LABEL_94;
    }

LABEL_137:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v48);
  }

  if (v46 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", *a6);
  }

  v47 = byte_193207AD4[(73 - __clz(v46)) >> 3];
  v48 = a6[1];
  if (!v48)
  {
    goto LABEL_92;
  }

LABEL_87:
  if (v48 >> 62)
  {
    goto LABEL_137;
  }

  v49 = byte_193207AD4[(73 - __clz(v48)) >> 3];
  v48 = a6[2];
  if (v48)
  {
    goto LABEL_89;
  }

LABEL_93:
  v50 = 1;
LABEL_94:
  v17 += v47 + v49 + v50;
  if (*(v12 + 4) != v48)
  {
    ++*(v12 + 18);
  }

  *(v12 + 4) = v48;
LABEL_97:
  if (v45)
  {
    ++v17;
    if (a5)
    {
      v51 = quic_packet_builder_get_frame_pool(a5);
      v52 = quic_frame_create(v51, 1);
      *(v52 + 4) = 1;
      *(v52 + 120) &= 0xF9u;
      quic_packet_builder_append_for_pn_space(a5, v52, v6);
    }
  }

  return v17;
}

void quic_frame_alloc_PADDING(uint64_t a1, int a2, unsigned int a3, int a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v21 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_frame_alloc_PADDING";
    v16 = v14;
    v17 = 340;
LABEL_21:
    qlog_internal(17, v16, v17);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_frame_alloc_PADDING";
    v16 = v19;
    v17 = 341;
    goto LABEL_21;
  }

  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v11 = quic_frame_create(frame_pool, 0);
  *(v11 + 9) = a2;
  *(v11 + 16) = a3;
  *(v11 + 10) = a4;
  if (a4)
  {
    *(v11 + 120) |= 2u;
  }

  if (a2 != -1)
  {
    *(v11 + 4) = a2;
  }

  if (a5)
  {
    v11[12] = 0;
    v12 = *(a5 + 8);
    v11[13] = v12;
    *v12 = v11;
    *(a5 + 8) = v11 + 12;
  }

  else
  {

    quic_packet_builder_append_for_pn_space(a1, v11, a3);
  }
}

BOOL quic_conn_assemble_and_encrypt(void *a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char *a6, int a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v66 = _os_log_pack_size();
      v67 = &v82 - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v68 = _os_log_pack_fill();
      *v68 = 136446210;
      *(v68 + 4) = "quic_conn_assemble_and_encrypt";
      qlog_internal(17, v67, 1915);
      return 0;
    }

    return result;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v69 = _os_log_pack_size();
      v70 = &v82 - ((MEMORY[0x1EEE9AC00](v69, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v71 = _os_log_pack_fill();
      *v71 = 136446210;
      *(v71 + 4) = "quic_conn_assemble_and_encrypt";
      qlog_internal(17, v70, 1916);
      return 0;
    }

    return result;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v72 = _os_log_pack_size();
      v73 = &v82 - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v74 = _os_log_pack_fill();
      *v74 = 136446210;
      *(v74 + 4) = "quic_conn_assemble_and_encrypt";
      qlog_internal(17, v73, 1917);
      return 0;
    }

    return result;
  }

  if (!a7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v75 = _os_log_pack_size();
      v76 = &v82 - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v77 = _os_log_pack_fill();
      *v77 = 136446210;
      *(v77 + 4) = "quic_conn_assemble_and_encrypt";
      qlog_internal(17, v76, 1918);
      return 0;
    }

    return result;
  }

  v84 = a4;
  v13 = a1[119];
  v14 = 0x30303020100uLL >> (8 * a2);
  if (a2 >= 6)
  {
    LOBYTE(v14) = 0;
  }

  largest_acked_pn = quic_recovery_get_largest_acked_pn(v13, v14 & 3, a3);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v78 = _os_log_pack_size();
    v79 = &v82 - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v80 = _os_log_pack_fill();
    if (a2 > 5)
    {
      v81 = "???";
    }

    else
    {
      v81 = off_1E73D2630[(a2 - 1)];
    }

    *v80 = 136446722;
    *(v80 + 4) = "quic_conn_assemble_and_encrypt";
    *(v80 + 12) = 2082;
    *(v80 + 14) = v81;
    *(v80 + 22) = 1024;
    *(v80 + 24) = a7;
    qlog_internal(2, v79, 1924);
  }

  tag_size = quic_protector_get_tag_size(a1[71], a2);
  v17 = tag_size;
  v18 = a7 - tag_size;
  v19 = a1[70];
  quic_packet_create(*(v19 + 8));
  v21 = v20;
  if (a5)
  {
    v22 = _quic_packet_builder_assemble(v19, a1, a2, a3, largest_acked_pn, a5, a6, v18, v17, v20);
  }

  else
  {
    v22 = _quic_packet_builder_assemble(v19, a1, a2, a3, largest_acked_pn, 0, a6, v18, v17, v20);
  }

  if (v22)
  {
    *v84 = v21;
    if (v21)
    {
      v21[18] = a3;
      if (quic_protector_seal(a1[71], v21))
      {
        return 1;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
      {
        if (!a1[139])
        {
          return 0;
        }

        v46 = _os_log_pack_size();
        v84 = &v82;
        v47 = &v82 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v48 = _os_log_pack_fill();
        v49 = a1[139];
        if (quic_cid_describe_state % 3 == 2)
        {
          v50 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v50 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v51 = v50;
        }

        else
        {
          v51 = &quic_cid_describe_cid_buf1;
        }

        v52 = ++quic_cid_describe_state;
        v53 = *(v49 + 38);
        v54 = 0uLL;
        *(v51 + 25) = 0u;
        v83 = a1 + 122;
        *v51 = 0u;
        v51[1] = 0u;
        if (v53)
        {
          if (v53 >= 0x14)
          {
            v55 = 20;
          }

          else
          {
            v55 = v53;
          }

          v56 = (v49 + 39);
          do
          {
            v57 = *v56++;
            snprintf(v51, 0x29uLL, "%s%02x", v51, v57);
            --v55;
          }

          while (v55);
          v52 = quic_cid_describe_state;
          v54 = 0uLL;
        }

        v58 = a1[139];
        v59 = v52 % 3;
        if (v52 % 3 == 2)
        {
          v60 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v60 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v52 + 1;
        v61 = *(v58 + 17);
        if (v59)
        {
          v62 = v60;
        }

        else
        {
          v62 = &quic_cid_describe_cid_buf1;
        }

        *v62 = v54;
        v62[1] = v54;
        *(v62 + 25) = v54;
        if (v61)
        {
          if (v61 >= 0x14)
          {
            v63 = 20;
          }

          else
          {
            v63 = v61;
          }

          v64 = (v58 + 18);
          do
          {
            v65 = *v64++;
            snprintf(v62, 0x29uLL, "%s%02x", v62, v65);
            --v63;
          }

          while (v63);
        }

        *v48 = 136446978;
        *(v48 + 4) = "quic_conn_assemble_and_encrypt";
        *(v48 + 12) = 2082;
        *(v48 + 14) = v83;
        *(v48 + 22) = 2082;
        *(v48 + 24) = v51;
        *(v48 + 32) = 2082;
        *(v48 + 34) = v62;
        v44 = v47;
        v45 = 1946;
        goto LABEL_47;
      }

      return result;
    }
  }

  else
  {
    _quic_packet_destroy(v21);
    *v84 = 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    if (!a1[139])
    {
      return 0;
    }

    v24 = _os_log_pack_size();
    v84 = &v82;
    v25 = &v82 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    v27 = a1[139];
    if (quic_cid_describe_state % 3 == 2)
    {
      v28 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v28 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v29 = v28;
    }

    else
    {
      v29 = &quic_cid_describe_cid_buf1;
    }

    v30 = ++quic_cid_describe_state;
    v31 = *(v27 + 38);
    v32 = 0uLL;
    *(v29 + 25) = 0u;
    v83 = a1 + 122;
    *v29 = 0u;
    v29[1] = 0u;
    if (v31)
    {
      if (v31 >= 0x14)
      {
        v33 = 20;
      }

      else
      {
        v33 = v31;
      }

      v34 = (v27 + 39);
      do
      {
        v35 = *v34++;
        snprintf(v29, 0x29uLL, "%s%02x", v29, v35);
        --v33;
      }

      while (v33);
      v30 = quic_cid_describe_state;
      v32 = 0uLL;
    }

    v36 = a1[139];
    v37 = v30 % 3;
    if (v30 % 3 == 2)
    {
      v38 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v38 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v30 + 1;
    v39 = *(v36 + 17);
    if (v37)
    {
      v40 = v38;
    }

    else
    {
      v40 = &quic_cid_describe_cid_buf1;
    }

    *v40 = v32;
    v40[1] = v32;
    *(v40 + 25) = v32;
    if (v39)
    {
      if (v39 >= 0x14)
      {
        v41 = 20;
      }

      else
      {
        v41 = v39;
      }

      v42 = (v36 + 18);
      do
      {
        v43 = *v42++;
        snprintf(v40, 0x29uLL, "%s%02x", v40, v43);
        --v41;
      }

      while (v41);
    }

    *v26 = 136446978;
    *(v26 + 4) = "quic_conn_assemble_and_encrypt";
    *(v26 + 12) = 2082;
    *(v26 + 14) = v83;
    *(v26 + 22) = 2082;
    *(v26 + 24) = v29;
    *(v26 + 32) = 2082;
    *(v26 + 34) = v40;
    v44 = v25;
    v45 = 1940;
LABEL_47:
    qlog_internal(16, v44, v45);
    return 0;
  }

  return result;
}

uint64_t quic_frame_write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v25 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_frame_write";
    v17 = v15;
    v18 = 4562;
    goto LABEL_26;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v19 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_frame_write";
    v17 = v20;
    v18 = 4563;
    goto LABEL_26;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v22 = _os_log_pack_size();
    v23 = v25 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_frame_write";
    v17 = v23;
    v18 = 4564;
LABEL_26:
    qlog_internal(17, v17, v18);
    return 0;
  }

  if (*a1 <= 0xBAB9FFuLL)
  {
    v10 = *a1;
  }

  else
  {
    v10 = *a1 - 12237272;
  }

  if (!quic_frame_is_type_index_valid(v10, *a1))
  {
    return 0;
  }

  if (*(a1 + 120))
  {
    v11 = *(a2 + 1312);
    if (v11)
    {
      *(v11 + 160) += *(a1 + 8);
    }
  }

  v12 = quic_frames[6 * v10 + 2];

  return (v12)(a1, a2, a3, a4, a5);
}

BOOL quic_frame_write_CRYPTO(void *a1, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 != a3)
  {
    return v6 == a3;
  }

  v10 = a1[3];
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_41;
    }

    v11 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    if (v11 != 1)
    {
      if (v11 == 4)
      {
        v10 = bswap32(v10 | 0x80000000);
      }

      else if (v11 == 2)
      {
        v10 = bswap32(v10 | 0x4000) >> 16;
      }

      else
      {
        v10 = bswap64(v10 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v11 = 1;
  }

  __src[0] = v10;
  v10 = a1[4];
  if (!v10)
  {
    v12 = 1;
    goto LABEL_20;
  }

  if (v10 >> 62)
  {
LABEL_41:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v10);
  }

  v12 = byte_193207AD4[(73 - __clz(v10)) >> 3];
  if (v12 != 1)
  {
    if (v12 == 4)
    {
      v10 = bswap32(v10 | 0x80000000);
    }

    else if (v12 == 2)
    {
      v10 = bswap32(v10 | 0x4000) >> 16;
    }

    else
    {
      v10 = bswap64(v10 | 0xC000000000000000);
    }
  }

LABEL_20:
  v35 = v10;
  v13 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_CRYPTO");
  }

  v14 = *a5;
  if (v13 > v14)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_CRYPTO", "CRYPTO", v13 + 1, v14);
  }

  v16 = quic_safe_append(*a4, a5, a1, 1uLL);
  *a4 = v16;
  v17 = quic_safe_append(v16, a5, __src, v11);
  *a4 = v17;
  v18 = quic_safe_append(v17, a5, &v35, v12);
  *a4 = v18;
  *a4 = quic_safe_append(v18, a5, a1[5], *(a1 + 16));
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v28 = _os_log_pack_size();
    v29 = &v34 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    v31 = quic_frame_type_describe(*a1);
    v32 = a1[3];
    v33 = a1[4];
    *v30 = 136446978;
    *(v30 + 4) = "quic_frame_write_CRYPTO";
    *(v30 + 12) = 2082;
    *(v30 + 14) = v31;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v32;
    *(v30 + 32) = 2048;
    *(v30 + 34) = v33;
    qlog_internal(2, v29, 3031);
  }

  v19 = a1[4];
  v20 = *(a1 + 16);
  switch(v20)
  {
    case 3:
      v24 = *(a2 + 1312);
      if (!v24)
      {
        goto LABEL_34;
      }

      ++*(v24 + 96);
      v22 = (v24 + 104);
      break;
    case 2:
      v23 = *(a2 + 1312);
      if (!v23)
      {
        goto LABEL_34;
      }

      ++*(v23 + 80);
      v22 = (v23 + 88);
      break;
    case 1:
      v21 = *(a2 + 1312);
      if (!v21)
      {
        goto LABEL_34;
      }

      ++*(v21 + 64);
      v22 = (v21 + 72);
      break;
    default:
      goto LABEL_34;
  }

  *v22 += v19;
LABEL_34:
  if (a1[15])
  {
    v25 = *(a2 + 1312);
    if (v25)
    {
      v26 = *(v25 + 136);
      ++*(v25 + 128);
      *(v25 + 136) = v26 + a1[4];
    }
  }

  if (*(a1 + 16) == 1 && !a1[3])
  {
    ++*(a2 + 1232);
  }

  return v6 == a3;
}

uint64_t __quic_conn_initialize_inner_block_invoke(uint64_t a1, int a2, int a3, void *__src, unint64_t a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a5 < 0x15)
  {
    quic_cid_read(__src, a5, (*(*(a1 + 40) + 1112) + 38));
    v9 = *(*(a1 + 40) + 1112);
    if (!*(v9 + 39) && !*(v9 + 41) && !*(v9 + 42) && !*(v9 + 43) && !*(v9 + 44) && !*(v9 + 45) && !*(v9 + 46) && !*(v9 + 47) && !*(v9 + 48) && !*(v9 + 49) && !*(v9 + 50) && !*(v9 + 51) && !*(v9 + 52) && !*(v9 + 53) && !*(v9 + 54) && !*(v9 + 55) && !*(v9 + 56) && !*(v9 + 57) && !*(v9 + 58))
    {
      v10 = *(*(*(a1 + 32) + 8) + 24);
      if (v10)
      {
        os_release(v10);
        *(*(*(a1 + 32) + 8) + 24) = 0;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v12 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_conn_initialize_inner_block_invoke";
    qlog_internal(17, v6, 404);
  }

  return 1;
}

BOOL quic_path_is_probing(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16) == 7;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_probing";
    qlog_internal(17, v3, 594);
    return 0;
  }

  return result;
}

uint64_t quic_protector_get_pn(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 - 4 <= 0xFFFFFFFC)
  {
    qlog_abort_internal("%s invalid pn space", "quic_protector_get_pn");
  }

  if (!a1)
  {
    qlog_abort_internal("%s null protector", "quic_protector_get_pn");
  }

  if (a3 != -1 && a2 == 3 && (*(a1 + 3217) & 1) != 0)
  {
    if (a3)
    {
      v3 = *(a1 + 3200);
      if (v3)
      {
        while (*v3 != a3)
        {
          v3 = v3[2];
          if (!v3)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x9B82EDE1uLL);
        if (!v6)
        {
          qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_get_mp_space", 1uLL, 0x20uLL);
        }

        v3 = v6;
        *v6 = a3;
        v7 = *(a1 + 3200);
        v6[2] = v7;
        if (v7)
        {
          v8 = (v7 + 24);
        }

        else
        {
          v8 = (a1 + 3208);
        }

        *v8 = v6 + 2;
        *(a1 + 3200) = v6;
        v6[3] = a1 + 3200;
      }

      v9 = (v3 + 1);
    }

    else
    {
      v9 = a1 + 3192;
    }
  }

  else
  {
    v9 = a1 + 8 * a2 + 3168;
  }

  return *v9;
}

BOOL quic_packet_builder_has_ack_eliciting_frame(uint64_t a1, unsigned int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_packet_builder_has_ack_eliciting_frame";
    v8 = v6;
    v9 = 337;
LABEL_24:
    qlog_internal(17, v8, v9);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_packet_builder_has_ack_eliciting_frame";
    v8 = v11;
    v9 = 338;
    goto LABEL_24;
  }

  v2 = *(a1 + 16 * a2 + 16);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *v2 <= 0xBAB9FFuLL ? *v2 : *v2 - 12237272;
    if (quic_frame_is_type_index_valid(v3, *v2) && (v3 != 48 || (*(v2 + 16) & 4) == 0) && (quic_frames[6 * v3 + 5] & 1) == 0)
    {
      break;
    }

    v2 = *(v2 + 96);
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t quic_conn_preferred_path(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (quic_migration_multipath_ready(*(a1 + 1120)))
  {
    v2 = quic_path_select_next((a1 + 1360), &__block_literal_global_163);
    v23[3] = v2;
    if (v2 && ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v3 = _os_log_pack_size();
      v4 = v18 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      v6 = quic_cid_describe((v23[3] + 17));
      v7 = v23[3];
      v8 = *(v7 + 232);
      LODWORD(v7) = *(v7 + 16);
      *v5 = 136446978;
      *(v5 + 4) = "quic_conn_preferred_path";
      *(v5 + 12) = 2082;
      *(v5 + 14) = v6;
      *(v5 + 22) = 2048;
      *(v5 + 24) = v8;
      *(v5 + 32) = 1024;
      *(v5 + 34) = v7;
      v9 = v4;
      v10 = 6037;
LABEL_22:
      qlog_internal(2, v9, v10);
      v2 = v23[3];
    }
  }

  else
  {
    v2 = *(a1 + 1112);
    v23[3] = v2;
    if (v2 && *(v2 + 16) != 8)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v19 = __quic_conn_preferred_path_block_invoke_164;
      v20 = &unk_1E73D2248;
      v21 = &v22;
      *(a1 + 602) = 0;
      v11 = *(a1 + 1360);
      while (v11)
      {
        v13 = *(v11 + 216);
        if (!(v19)(v18))
        {
          break;
        }

        v11 = v13;
        if (*(a1 + 602) == 1)
        {
          v11 = *(a1 + 1360);
          *(a1 + 602) = 0;
        }
      }

      v2 = v23[3];
      if (v2 != *(a1 + 1112) && ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v14 = _os_log_pack_size();
        v15 = v18 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v16 = _os_log_pack_fill();
        v17 = v23[3] + 184;
        *v16 = 136446466;
        *(v16 + 4) = "quic_conn_preferred_path";
        *(v16 + 12) = 2082;
        *(v16 + 14) = v17;
        v9 = v15;
        v10 = 6058;
        goto LABEL_22;
      }
    }
  }

  _Block_object_dispose(&v22, 8);
  return v2;
}

uint64_t quic_conn_send_internal(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_40;
    }

    v13 = _os_log_pack_size();
    v14 = &v22[-((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_conn_send_internal";
    v16 = v14;
    v17 = 2391;
    goto LABEL_39;
  }

  refreshed = a2;
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_40;
    }

    v18 = _os_log_pack_size();
    v19 = &v22[-((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_conn_send_internal";
    v16 = v19;
    v17 = 2392;
LABEL_39:
    qlog_internal(17, v16, v17);
LABEL_40:
    v8 = 0;
    return v8 & 1;
  }

  v6 = *(a2 + 380);
  if (!*(a2 + 380))
  {
    quic_conn_set_mss(a1, a2, *(a1 + 596));
    v6 = *(refreshed + 190);
  }

  v7 = *refreshed;
  v23 = 0;
  if (quic_conn_can_send_frames(a1, refreshed, &v23))
  {
    while (quic_packet_builder_has_frames(*(a1 + 560), 1u))
    {
      if (!quic_conn_send_frames_for_key_state(a1, refreshed, 0, 1, a3, v6))
      {
        goto LABEL_40;
      }

      refreshed = quic_conn_refresh_path(a1, v7);
    }

    while (quic_packet_builder_has_frames(*(a1 + 560), 2u))
    {
      if (!quic_conn_send_frames_for_key_state(a1, refreshed, 0, 2, a3, v6))
      {
        goto LABEL_40;
      }

      if ((*(a1 + 1380) & 0x401) == 0)
      {
        quic_conn_discard_initial_keys(a1);
      }

      refreshed = quic_conn_refresh_path(a1, v7);
    }

    while (quic_packet_builder_has_frames(*(a1 + 560), 3u))
    {
      v9 = *(a1 + 600);
      if (v9 == 5)
      {
        v10 = 5;
      }

      else
      {
        v10 = 4;
      }

      if (v9 == 1)
      {
        v11 = 3;
      }

      else
      {
        v11 = v10;
      }

      if (!quic_conn_send_frames_for_key_state(a1, refreshed, 0, v11, a3, v6))
      {
        goto LABEL_40;
      }

      refreshed = quic_conn_refresh_path(a1, v7);
    }

    if (refreshed)
    {
      v12 = refreshed[38];
      if (v12)
      {
        if ((*(v12 + 98) & 2) != 0 && *(v12 + 88) == refreshed)
        {
          quic_pmtud_send_probe(v12);
        }
      }
    }

    v8 = 1;
  }

  else
  {
    v8 = v23;
  }

  return v8 & 1;
}

BOOL quic_conn_can_send_frames(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (*(a1 + 477) == 11)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = v30 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_conn_can_send_frames";
      qlog_internal(2, v6, 1813);
    }

    if (a3)
    {
      result = 0;
      *a3 = 1;
      return result;
    }

    return 0;
  }

  if (quic_path_is_flow_controlled(a2))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v10 = _os_log_pack_size();
      v11 = v30 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_conn_can_send_frames";
      v13 = v11;
      v14 = 1821;
LABEL_28:
      qlog_internal(2, v13, v14);
      return 0;
    }
  }

  else if ((*(a1 + 1380) & 0x100) != 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v17 = _os_log_pack_size();
      v18 = v30 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_conn_can_send_frames";
      v13 = v18;
      v14 = 1827;
      goto LABEL_28;
    }
  }

  else if ((*(a1 + 1380) & 0x801) == 1 && ((v15 = *(a1 + 600), v15 >= 6) ? (v16 = 0) : (v16 = 0x30303020100uLL >> (8 * v15)), *(a1 + 1168) + quic_packet_builder_rough_size(*(a1 + 560), v16 & 3) >= 3 * *(a1 + 1152)))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      if (*(a1 + 1112))
      {
        v20 = _os_log_pack_size();
        v21 = v30 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v22 = _os_log_pack_fill();
        v23 = quic_cid_describe((*(a1 + 1112) + 38));
        v24 = quic_cid_describe((*(a1 + 1112) + 17));
        *v22 = 136446978;
        *(v22 + 4) = "quic_conn_can_send_frames";
        *(v22 + 12) = 2082;
        *(v22 + 14) = a1 + 976;
        *(v22 + 22) = 2082;
        *(v22 + 24) = v23;
        *(v22 + 32) = 2082;
        *(v22 + 34) = v24;
        qlog_internal(16, v21, 1849);
      }

      return 0;
    }
  }

  else
  {
    if (*(a1 + 477) != 9 || quic_path_is_established(a2))
    {
      return 1;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v25 = _os_log_pack_size();
      v26 = v30 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      v28 = *(a2 + 16);
      if (v28 > 8)
      {
        v29 = "???";
      }

      else
      {
        v29 = off_1E73D0308[v28];
      }

      *v27 = 136446722;
      *(v27 + 4) = "quic_conn_can_send_frames";
      *(v27 + 12) = 2048;
      *(v27 + 14) = a2;
      *(v27 + 22) = 2082;
      *(v27 + 24) = v29;
      qlog_internal(2, v26, 1860);
      return 0;
    }
  }

  return result;
}

char *quic_protector_encode_label(const char *a1, _WORD *a2, int a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v10 = _os_log_pack_size();
      v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_protector_encode_label";
      v13 = v11;
      v14 = 1068;
LABEL_15:
      qlog_internal(17, v13, v14);
      return 0;
    }

    return 0;
  }

  v3 = a3;
  if (!a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_protector_encode_label";
      v13 = v16;
      v14 = 1069;
      goto LABEL_15;
    }

    return 0;
  }

  v6 = strlen(a1);
  if (v6 == 0xFFF6)
  {
    qlog_abort_internal("%s strict_calloc called with size 0", "quic_protector_encode_label");
  }

  v7 = malloc_type_calloc(1uLL, (v6 + 10), 0x4152008EuLL);
  if (!v7)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_encode_label", 1uLL, (v6 + 10));
  }

  v8 = v7;
  *v7 = 0;
  v7[1] = v3;
  v7[2] = v6 + 6;
  *(v7 + 3) = 829647988;
  *(v7 + 7) = 8243;
  memcpy(v7 + 9, a1, v6);
  v8[v6 + 9] = 0;
  *a2 = v6 + 10;
  return v8;
}

uint64_t quic_protector_derive(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v7 = _os_log_pack_size();
    v8 = v18 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_protector_derive";
    v10 = v8;
    v11 = 1101;
LABEL_13:
    qlog_internal(17, v10, v11);
    return 0;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v12 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_protector_derive";
    v10 = v13;
    v11 = 1102;
    goto LABEL_13;
  }

  v19 = 0;
  v5 = quic_protector_encode_label(a4, &v19, a5);
  v18[1] = 0;
  CCKDFParametersCreateHkdf();
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v15 = _os_log_pack_size();
    v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_protector_derive";
    qlog_internal(17, v16, 1118);
  }

  if (v5)
  {
    free(v5);
  }

  return 0;
}

void sec_framer_init(uint64_t a1, int a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      CCCryptorRelease(v4);
      *(a1 + 232) = 0;
    }

    v5 = *(a1 + 240);
    if (v5)
    {
      CCCryptorRelease(v5);
      *(a1 + 240) = 0;
    }

    v6 = *(a1 + 248);
    if (v6)
    {
      CCCryptorRelease(v6);
    }

    *(a1 + 256) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 228) = a2;
    if ((a2 - 2) < 2)
    {
      v9 = 12;
      v7 = 32;
      v8 = 16;
    }

    else if (a2 == 1)
    {
      v9 = 12;
      v8 = 16;
      v7 = 16;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_15;
      }

      v7 = 16;
      *(a1 + 225) = 16;
      v8 = 6;
      v9 = 16;
    }

    *(a1 + 221) = v8;
    *(a1 + 223) = v7;
    *(a1 + 220) = v7;
    *(a1 + 222) = 12;
    *(a1 + 224) = v9;
LABEL_15:
    if (*(a1 + 228) && *(a1 + 220) && *(a1 + 222) && *(a1 + 224) && *(a1 + 223) && *(a1 + 221))
    {
      v10 = *(a1 + 256) | 1;
    }

    else
    {
      v10 = *(a1 + 256) & 0xFE;
    }

    *(a1 + 256) = v10;
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "sec_framer_init";
    qlog_internal(17, v12, 260);
  }
}

void sec_framer_set_iv(_BYTE *a1, const void *a2, size_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = v18 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "sec_framer_set_iv";
    v9 = v7;
    v10 = 368;
LABEL_25:
    qlog_internal(17, v9, v10);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v11 = _os_log_pack_size();
    v12 = v18 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "sec_framer_set_iv";
    v9 = v12;
    v10 = 369;
    goto LABEL_25;
  }

  if (a3 >= 0xD)
  {
    v14 = a3;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446466;
      *(v17 + 4) = "sec_framer_set_iv";
      *(v17 + 12) = 1024;
      *(v17 + 14) = v14;
      qlog_internal(17, v16, 372);
    }
  }

  else
  {
    *(a1 + 10) = 0;
    v4 = a1 + 80;
    if (a1[222] >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = a1[222];
    }

    *(a1 + 22) = 0;
    memcpy(a1 + 80, a2, a3);
    if (v4[148] && a1[220] && a1[222] && a1[224] && a1[223] && a1[221])
    {
      v5 = a1[256] | 1;
    }

    else
    {
      v5 = a1[256] & 0xFE;
    }

    a1[256] = v5;
  }
}

void sec_framer_set_key(uint64_t a1, void *__src, size_t a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v27 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "sec_framer_set_key";
    v12 = 17;
    v13 = v10;
    v14 = 292;
    goto LABEL_44;
  }

  if (!__src)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v27 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "sec_framer_set_key";
    v12 = 17;
    v13 = v16;
    v14 = 293;
    goto LABEL_44;
  }

  v4 = a3;
  if (a3 < 0x21)
  {
    if (*(a1 + 220) >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = *(a1 + 220);
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
    memcpy(a1, __src, a3);
    if (*(a1 + 228) - 1 > 1)
    {
LABEL_14:
      if (*(a1 + 228) && *(a1 + 220) && *(a1 + 222) && *(a1 + 224) && *(a1 + 223) && *(a1 + 221))
      {
        v8 = *(a1 + 256) | 1;
      }

      else
      {
        v8 = *(a1 + 256) & 0xFE;
      }

      *(a1 + 256) = v8;
      return;
    }

    v6 = *(a1 + 232);
    if (v6)
    {
      CCCryptorRelease(v6);
    }

    if (CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, __src, v4, 0, 0, 0, 0, (a1 + 232)))
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v21 = _os_log_pack_size();
      v22 = v27 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "sec_framer_set_key";
      v12 = 16;
      v13 = v22;
      v14 = 315;
    }

    else
    {
      v7 = *(a1 + 240);
      if (v7)
      {
        CCCryptorRelease(v7);
      }

      if (!CCCryptorCreateWithMode(1u, 0xBu, 0, 0, 0, __src, v4, 0, 0, 0, 0, (a1 + 240)))
      {
        goto LABEL_14;
      }

      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v24 = _os_log_pack_size();
      v25 = v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v26 = _os_log_pack_fill();
      *v26 = 136446210;
      *(v26 + 4) = "sec_framer_set_key";
      v12 = 16;
      v13 = v25;
      v14 = 328;
    }

LABEL_44:
    qlog_internal(v12, v13, v14);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v18 = _os_log_pack_size();
    v19 = v27 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446466;
    *(v20 + 4) = "sec_framer_set_key";
    *(v20 + 12) = 1024;
    *(v20 + 14) = v4;
    qlog_internal(17, v19, 296);
  }
}

void sec_framer_set_hp_key(uint64_t a1, void *__src, size_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = v23 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "sec_framer_set_hp_key";
    v11 = 17;
    v12 = v9;
    v13 = 339;
    goto LABEL_36;
  }

  if (!__src)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v23 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "sec_framer_set_hp_key";
    v11 = 17;
    v12 = v15;
    v13 = 340;
    goto LABEL_36;
  }

  v4 = a3;
  if (a3 < 0x21)
  {
    if (*(a1 + 223) >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = *(a1 + 223);
    }

    *(a1 + 64) = 0u;
    *(a1 + 48) = 0u;
    memcpy((a1 + 48), __src, a3);
    v6 = *(a1 + 248);
    if (v6)
    {
      CCCryptorRelease(v6);
    }

    if (!CCCryptorCreate(0, 0, 2u, __src, v4, 0, (a1 + 248)))
    {
      if (*(a1 + 228) && *(a1 + 220) && *(a1 + 222) && *(a1 + 224) && *(a1 + 223) && *(a1 + 221))
      {
        v7 = *(a1 + 256) | 1;
      }

      else
      {
        v7 = *(a1 + 256) & 0xFE;
      }

      *(a1 + 256) = v7;
      return;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "sec_framer_set_hp_key";
    v11 = 16;
    v12 = v21;
    v13 = 358;
LABEL_36:
    qlog_internal(v11, v12, v13);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v17 = _os_log_pack_size();
    v18 = v23 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446466;
    *(v19 + 4) = "sec_framer_set_hp_key";
    *(v19 + 12) = 1024;
    *(v19 + 14) = v4;
    qlog_internal(17, v18, 343);
  }
}

char *quic_safe_append(char *__dst, unsigned __int16 *a2, void *__src, size_t __n)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v28 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_safe_append";
    qlog_internal(17, v15, 12);
    return 0;
  }

  v5 = __dst;
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return v5;
    }

    v17 = _os_log_pack_size();
    v18 = v28 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_safe_append";
    v20 = v18;
    v21 = 13;
LABEL_30:
    qlog_internal(17, v20, v21);
    return v5;
  }

  if (!__src)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return v5;
    }

    v22 = _os_log_pack_size();
    v23 = v28 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_safe_append";
    v20 = v23;
    v21 = 14;
    goto LABEL_30;
  }

  v6 = __n;
  if (!__n)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return v5;
    }

    v25 = _os_log_pack_size();
    v26 = v28 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_safe_append";
    v20 = v26;
    v21 = 15;
    goto LABEL_30;
  }

  if (*a2 < __n)
  {
    qlog_abort_internal("%s not enough space: %u < %hu", "quic_safe_append", *a2, __n);
  }

  v7 = __n;
  memcpy(__dst, __src, __n);
  v8 = *a2 - v6;
  *a2 -= v6;
  if ((v8 & 0xFFFF0000) != 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v28 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      v12 = *a2;
      *v11 = 136447234;
      *(v11 + 4) = "quic_safe_append";
      *(v11 + 12) = 2082;
      *(v11 + 14) = "*remaining";
      *(v11 + 22) = 2048;
      *(v11 + 24) = v12 + v7;
      *(v11 + 32) = 2048;
      *(v11 + 34) = v7;
      *(v11 + 42) = 2048;
      *(v11 + 44) = v12;
      qlog_internal(17, v10, 26);
    }

    *a2 = 0;
  }

  v5 += v7;
  return v5;
}

void quic_cid_write(unsigned __int8 *a1, void *__dst, size_t a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = v26 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_cid_write";
    v8 = 17;
    v9 = v6;
    v10 = 87;
    goto LABEL_29;
  }

  if (!__dst)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v11 = _os_log_pack_size();
    v12 = v26 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_cid_write";
    v8 = 17;
    v9 = v12;
    v10 = 88;
    goto LABEL_29;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v26 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_cid_write";
    v8 = 17;
    v9 = v15;
    v10 = 89;
    goto LABEL_29;
  }

  v4 = *a1;
  if (v4 <= a3)
  {
    if (v4 < 0x15)
    {

      memcpy(__dst, a1 + 1, v4);
      return;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = _os_log_pack_size();
    v24 = v26 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_cid_write";
    v8 = 16;
    v9 = v24;
    v10 = 96;
LABEL_29:
    qlog_internal(v8, v9, v10);
    return;
  }

  v17 = a3;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v19 = _os_log_pack_size();
    v20 = v26 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    v22 = *a1;
    *v21 = 136446722;
    *(v21 + 4) = "quic_cid_write";
    *(v21 + 12) = 2048;
    *(v21 + 14) = v17;
    *(v21 + 22) = 1024;
    *(v21 + 24) = v22;
    qlog_internal(16, v20, 92);
  }
}

uint64_t quic_recovery_get_largest_acked_pn(uint64_t a1, char a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_recovery_get_largest_acked_pn";
    v8 = v6;
    v9 = 625;
    goto LABEL_18;
  }

  if ((a2 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_recovery_get_largest_acked_pn";
    v8 = v11;
    v9 = 626;
    goto LABEL_18;
  }

  v3 = quic_recovery_inner_state(a1, a2, a3);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_recovery_get_largest_acked_pn";
    v8 = v14;
    v9 = 629;
LABEL_18:
    qlog_internal(17, v8, v9);
    return 0;
  }

  return *(v3 + 16);
}

uint64_t _quic_packet_builder_calculate_size(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int a7, char a8, char *a9)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v42 = _os_log_pack_size();
    v43 = &v65 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "_quic_packet_builder_calculate_size";
    v45 = v43;
    v46 = 369;
    goto LABEL_77;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v47 = _os_log_pack_size();
    v48 = &v65 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "_quic_packet_builder_calculate_size";
    v45 = v48;
    v46 = 370;
    goto LABEL_77;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v50 = _os_log_pack_size();
    v51 = &v65 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = _os_log_pack_fill();
    *v52 = 136446210;
    *(v52 + 4) = "_quic_packet_builder_calculate_size";
    v45 = v51;
    v46 = 371;
LABEL_77:
    qlog_internal(17, v45, v46);
    return 0;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v53 = _os_log_pack_size();
      v54 = &v65 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v55 = _os_log_pack_fill();
      *v55 = 136446210;
      *(v55 + 4) = "_quic_packet_builder_calculate_size";
      v45 = v54;
      v46 = 372;
      goto LABEL_77;
    }

    return 0;
  }

  v15 = a9;
  v16 = a3 - 6;
  v17 = (a3 < 6) & (2u >> a3);
  if (a3 >= 6)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x30303020100uLL >> (8 * a3);
  }

  pn = quic_protector_get_pn(a2, v18 & 3, *(a4 + 232));
  if (a5 == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a5;
  }

  v21 = 2 * (pn - v20);
  v22 = pn & 0xFFFFFF;
  if (v21 >> 24)
  {
    v22 = pn;
  }

  if (v21 >> 16)
  {
    v23 = v22;
  }

  else
  {
    v23 = pn;
  }

  if (v21 <= 0xFF)
  {
    v24 = pn;
  }

  else
  {
    v24 = v23;
  }

  v25 = (39 - __clz(v24)) >> 3;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(a4 + 17);
  if (v16 > 0xFDu)
  {
    v28 = v26 + v27 + 1;
  }

  else
  {
    v28 = v26 + v27 + *(a4 + 38) + 9;
    if (v17)
    {
      v29 = *(a1 + 84);
      if (*(a1 + 84))
      {
        v30 = byte_193207AD4[(73 - __clz(v29)) >> 3];
      }

      else
      {
        v30 = 1;
      }

      v28 += v29 + v30;
    }
  }

  if (a6)
  {
    v31 = a6;
  }

  else
  {
    v31 = (a1 + 16 * v18 + 16);
  }

  v32 = *v31;
  if (!*v31)
  {
    v37 = 0;
    LOWORD(v34) = 0;
    goto LABEL_91;
  }

  if (a8)
  {
    v33 = *(v32 + 96);
    if (!*v32 && *(v32 + 18) == -1)
    {
      LOWORD(v34) = a7 - v28;
      LOBYTE(v17) = 1;
LABEL_84:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v60 = _os_log_pack_size();
        v61 = &v65 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v62 = _os_log_pack_fill();
        v63 = off_1E73D25E8[v18];
        *v62 = 136446722;
        *(v62 + 4) = "_quic_packet_builder_calculate_size";
        *(v62 + 12) = 2080;
        *(v62 + 14) = v63;
        *(v62 + 22) = 1024;
        *(v62 + 24) = a7;
        qlog_internal(16, v61, 430);
      }

      v37 = 0;
      if (v17)
      {
        goto LABEL_91;
      }

      goto LABEL_89;
    }

    v34 = *(v32 + 8);
    if (v28 + v34 <= a7)
    {
      if (v33)
      {
        while (1)
        {
          v40 = *(v33 + 96);
          if (!*v33 && *(v33 + 18) == -1)
          {
            break;
          }

          v36 = v34;
          v41 = *(v33 + 8);
          if (v34 + v28 + v41 > a7)
          {
            v69 = a9;
            v35 = 1;
            v32 = v33;
            goto LABEL_55;
          }

          LOWORD(v34) = v41 + v34;
          v33 = *(v33 + 96);
          if (!v40)
          {
            goto LABEL_51;
          }
        }

        LOWORD(v34) = a7 - v28;
        v37 = 1;
        goto LABEL_91;
      }

LABEL_51:
      v37 = 1;
      if (v17)
      {
        goto LABEL_91;
      }

LABEL_89:
      if ((v34 - 3) == 65534 || (v34 - 3) == 0xFFFF)
      {
        quic_frame_alloc_PADDING(a1, (3 - v34), v18, 0, 0);
        LOWORD(v34) = 3;
      }

      goto LABEL_91;
    }

    v69 = a9;
    v35 = 0;
    LOWORD(v34) = 0;
    v36 = 0;
  }

  else
  {
    v69 = a9;
    LOWORD(v34) = 0;
    v35 = 0;
    while (1)
    {
      while (1)
      {
        v38 = *(v32 + 96);
        if (*v32 || *(v32 + 18) != -1)
        {
          break;
        }

        LOBYTE(v17) = 1;
        v32 = *(v32 + 96);
        if (!v38)
        {
          goto LABEL_57;
        }
      }

      v36 = v34;
      v39 = *(v32 + 8);
      if (v34 + v28 + v39 > a7)
      {
        break;
      }

      LOWORD(v34) = v39 + v34;
      v35 = 1;
      v32 = *(v32 + 96);
      if (!v38)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_55:
  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || (v68 = v28, ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0) && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
LABEL_57:
    if ((v35 & 1) == 0)
    {
LABEL_83:
      v15 = v69;
      goto LABEL_84;
    }

LABEL_58:
    v37 = 1;
    v15 = v69;
    if (v17)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v57 = _os_log_pack_size();
  v67 = &v65;
  v66 = &v65 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v58 = _os_log_pack_fill();
  v59 = *(v32 + 8);
  *v58 = 136447234;
  *(v58 + 4) = "_quic_packet_builder_calculate_size";
  *(v58 + 12) = 1024;
  *(v58 + 14) = v68;
  *(v58 + 18) = 1024;
  *(v58 + 20) = v36;
  *(v58 + 24) = 1024;
  *(v58 + 26) = v59;
  *(v58 + 30) = 1024;
  *(v58 + 32) = a7;
  qlog_internal(2, v66, 420);
  if (v35)
  {
    goto LABEL_58;
  }

  if (*v31)
  {
    goto LABEL_83;
  }

  v37 = 0;
  v15 = v69;
  if ((v17 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_91:
  if (v15)
  {
    *v15 = v37;
  }

  return (v34 + v28);
}

uint64_t quic_packet_builder_get_frame_pool(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_packet_builder_get_frame_pool";
    qlog_internal(17, v3, 92);
  }

  return 0;
}

void quic_packet_builder_append_for_pn_space(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1 + 16 * a3;
    *(a2 + 96) = 0;
    v4 = *(v3 + 24);
    *(a2 + 104) = v4;
    *v4 = a2;
    *(v3 + 24) = a2 + 96;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_packet_builder_append_for_pn_space";
    qlog_internal(17, v6, 117);
  }
}

uint64_t quic_conn_send_frames_for_key_state(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6)
{
  v135 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v67 = _os_log_pack_size();
    v68 = &v90 - ((MEMORY[0x1EEE9AC00](v67, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v69 = _os_log_pack_fill();
    *v69 = 136446210;
    *(v69 + 4) = "quic_conn_send_frames_for_key_state";
    v47 = 17;
    v48 = v68;
    v49 = 2086;
    goto LABEL_77;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v70 = _os_log_pack_size();
    v71 = &v90 - ((MEMORY[0x1EEE9AC00](v70, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v72 = _os_log_pack_fill();
    *v72 = 136446210;
    *(v72 + 4) = "quic_conn_send_frames_for_key_state";
    v47 = 17;
    v48 = v71;
    v49 = 2087;
    goto LABEL_77;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v73 = _os_log_pack_size();
    v74 = &v90 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v75 = _os_log_pack_fill();
    *v75 = 136446210;
    *(v75 + 4) = "quic_conn_send_frames_for_key_state";
    v47 = 17;
    v48 = v74;
    v49 = 2088;
    goto LABEL_77;
  }

  v10 = a2;
  v12 = a4 < 6;
  if (a4 >= 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0x30303020100uLL >> (8 * a4);
  }

  if (!a3 && !quic_packet_builder_has_frames(*(a1 + 560), v13))
  {
    return 1;
  }

  v14 = *(a1 + 1380);
  if (a4 == 1 && (v14 & 0x400) != 0 || a4 == 2 && (v14 & 0x4000000) != 0)
  {
    quic_packet_builder_flush_for_pn_space(*(a1 + 560), v13);
    return 1;
  }

  if (quic_protector_seal_key_ready(*(a1 + 568), a4))
  {
    v91 = v12;
    LODWORD(v94) = a5;
    if (a3)
    {
      v16 = *a3;
      if (*a3)
      {
        v90 = &v90;
        LODWORD(v95) = v13;
        v92 = v10;
        do
        {
          if (*v16 <= 0xBAB9FFuLL)
          {
            v17 = *v16;
          }

          else
          {
            v17 = *v16 - 12237272;
          }

          if (quic_frame_is_type_index_valid(v17, *v16) && (v17 != 48 || (*(v16 + 16) & 4) == 0) && (quic_frames[6 * v17 + 5] & 1) == 0)
          {
            has_ack_eliciting_frame = 1;
            goto LABEL_33;
          }

          v16 = *(v16 + 96);
        }

        while (v16);
        has_ack_eliciting_frame = 0;
LABEL_33:
        v10 = v92;
        v13 = v95;
      }

      else
      {
        has_ack_eliciting_frame = 0;
      }
    }

    else
    {
      has_ack_eliciting_frame = quic_packet_builder_has_ack_eliciting_frame(*(a1 + 560), v13);
    }

    largest_acked_pn = quic_recovery_get_largest_acked_pn(*(a1 + 952), v13, v10);
    v19 = 0x1EAE32000uLL;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v80 = _os_log_pack_size();
      v95 = &v90;
      v92 = (&v90 - ((MEMORY[0x1EEE9AC00](v80, v80) + 15) & 0xFFFFFFFFFFFFFFF0));
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v81 = _os_log_pack_fill();
      v82 = v13;
      v83 = v10;
      v84 = *v10;
      v85 = quic_cid_describe(v83 + 17);
      *v81 = 136446978;
      *(v81 + 4) = "quic_conn_send_frames_for_key_state";
      *(v81 + 12) = 2048;
      *(v81 + 14) = v83;
      *(v81 + 22) = 2048;
      *(v81 + 24) = v84;
      v10 = v83;
      v13 = v82;
      *(v81 + 32) = 2082;
      *(v81 + 34) = v85;
      qlog_internal(2, v92, 2127);
      v19 = 0x1EAE32000;
    }

    if (a3)
    {
      LODWORD(v92) = 0;
    }

    else
    {
      if (quic_packet_builder_find_for_pn_space(*(a1 + 560), 2, v13) || quic_packet_builder_find_for_pn_space(*(a1 + 560), 12237312, v13) || (LODWORD(v95) = quic_packet_builder_remaining_length(*(a1 + 560), *(a1 + 568), v13, v10, largest_acked_pn, a6), received_ip_ecn_counter = quic_ecn_get_received_ip_ecn_counter(*(a1 + 968), v13, v10), v21 = v10[30], v22 = *(a1 + 960), v23 = *(a1 + 536), v92 = received_ip_ecn_counter, v24 = quic_ack_for_pn_space(v22, v23, v13, v21, 0, received_ip_ecn_counter), v95 <= v24))
      {
        v25 = 0;
      }

      else
      {
        quic_ack_assemble_for_pn_space(*(a1 + 960), *(a1 + 536), v13, v21, *(a1 + 560), v92);
        v25 = 1;
      }

      LODWORD(v92) = v25;
      if (a4 == 1 && !quic_packet_builder_find_for_pn_space(*(a1 + 560), 0, 1u))
      {
        quic_frame_alloc_PADDING(*(a1 + 560), -1, 1u, 0, 0);
      }
    }

    v26 = quic_packet_builder_calculate_size(*(a1 + 560), *(a1 + 568), a4, v10, largest_acked_pn, a3, a6);
    if (v26)
    {
      v27 = v26 + quic_protector_get_tag_size(*(a1 + 568), a4);
      if (v94 & 1) != 0 || (quic_cc_can_send_packet(v10[33]))
      {
        v131 = 0;
        v132 = &v131;
        v133 = 0x2000000000;
        v28 = mach_continuous_time();
        if (timebase_info_once != -1)
        {
          v86 = v28;
          dispatch_once(&timebase_info_once, &__block_literal_global_452);
          v28 = v86;
        }

        v29 = has_ack_eliciting_frame;
        LODWORD(v95) = v13;
        v134 = timebase_info_info * v28 / dword_1ED6D716C / 0x3E8;
        v30 = v132[3];
        v31 = *(a1 + 640);
        v32 = v30 > v31;
        v33 = v30 - v31;
        if (v32 && v33 >= 0xABA9501 && *(a1 + 477) == 9)
        {
          quic_cc_idle_timeout(v10[33]);
          v34 = v10[37];
          if (v34)
          {
            quic_pacer_reset(v34);
          }
        }

        v127 = 0;
        v128 = &v127;
        v129 = 0x2000000000;
        v130 = 0;
        v123 = 0;
        v124 = &v123;
        v125 = 0x2000000000;
        v126 = 0;
        v119 = 0;
        v120 = &v119;
        v121 = 0x2000000000;
        v122 = 0;
        v115 = 0;
        v116 = &v115;
        v117 = 0x2000000000;
        v118 = 0;
        v114[0] = 0;
        v114[1] = v114;
        v114[2] = 0x2000000000;
        v114[3] = a3;
        v35 = *v10;
        v96 = MEMORY[0x1E69E9820];
        v97 = 0x40000000;
        v98 = __quic_conn_send_frames_for_key_state_block_invoke;
        v99 = &unk_1E73D2320;
        v106 = a1;
        v107 = v35;
        v108 = v10;
        v110 = v10 + 20 == a3;
        v100 = v114;
        v101 = &v119;
        v94 = v27;
        v109 = v27;
        v111 = v29;
        v102 = &v127;
        v103 = &v115;
        v112 = a4;
        v104 = &v123;
        v105 = &v131;
        v113 = v95;
        if (v10 + 20 == a3)
        {
          v36 = 0;
        }

        else
        {
          v36 = a3;
        }

        v37 = v27;
        v38 = nw_protocol_request_outbound_data();
        refreshed = quic_conn_refresh_path(a1, v35);
        if (refreshed == v10)
        {
          v36 = a3;
        }

        if (v38 && *(v120 + 24) != 1)
        {
          goto LABEL_68;
        }

        if (!v94)
        {
          qlog_abort_internal("%s strict_calloc called with size 0", "quic_conn_send_frames_for_key_state");
        }

        v40 = malloc_type_calloc(1uLL, v37, 0x947584FDuLL);
        if (!v40)
        {
          qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_send_frames_for_key_state", 1uLL, v37);
        }

        v124[3] = v40;
        if (quic_conn_assemble_and_encrypt(a1, a4, refreshed, v128 + 3, v36, v40, v94))
        {
LABEL_68:
          if (v92)
          {
            if ((quic_conn_is_pacing(a1, refreshed) & v38) == 1)
            {
              v41 = v116[3];
              if (!v41)
              {
                if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
                {
                  v87 = _os_log_pack_size();
                  v88 = &v90 - ((MEMORY[0x1EEE9AC00](v87, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
                  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v89 = _os_log_pack_fill();
                  *v89 = 136446210;
                  *(v89 + 4) = "quic_conn_send_frames_for_key_state";
                  qlog_internal(17, v88, 2377);
                  v41 = v116[3];
                }

                else
                {
                  v41 = 0;
                }
              }

              v42 = *(a1 + 960);
              v43 = v41 / 0x3E8;
            }

            else
            {
              v42 = *(a1 + 960);
              v43 = v132[3];
            }

            quic_ack_sent(v42, v43);
          }

          v57 = 1;
        }

        else
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
          {
            v50 = _os_log_pack_size();
            v51 = &v90 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v52 = _os_log_pack_fill();
            v53 = quic_cid_describe((*(a1 + 1112) + 38));
            v54 = quic_cid_describe((*(a1 + 1112) + 17));
            *v52 = 136446978;
            *(v52 + 4) = "quic_conn_send_frames_for_key_state";
            *(v52 + 12) = 2082;
            *(v52 + 14) = a1 + 976;
            *(v52 + 22) = 2082;
            *(v52 + 24) = v53;
            *(v52 + 32) = 2082;
            *(v52 + 34) = v54;
            qlog_internal(16, v51, 2364);
          }

          v55 = v128[3];
          if (v55)
          {
            _quic_packet_destroy(v55);
            v128[3] = 0;
          }

          v56 = v124[3];
          if (v56)
          {
            free(v56);
            v57 = 0;
            v124[3] = 0;
          }

          else
          {
            v57 = 0;
          }
        }

        _Block_object_dispose(v114, 8);
        _Block_object_dispose(&v115, 8);
        _Block_object_dispose(&v119, 8);
        _Block_object_dispose(&v123, 8);
        _Block_object_dispose(&v127, 8);
        _Block_object_dispose(&v131, 8);
        return v57;
      }

      if ((qlog_datapath_enabled & 1) != 0 || *(v19 + 3897))
      {
        if (((qlog_debug_enabled | *(v19 + 3897)) & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }
        }

        v58 = _os_log_pack_size();
        v59 = &v90 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v60 = _os_log_pack_fill();
        *v60 = 136446466;
        *(v60 + 4) = "quic_conn_send_frames_for_key_state";
        *(v60 + 12) = 1024;
        *(v60 + 14) = v27;
        v47 = 2;
        v48 = v59;
        v49 = 2204;
        goto LABEL_77;
      }

      return 0;
    }

    if (!a3)
    {
      v61 = v10[38];
      if (v61)
      {
        if ((*(v61 + 98) & 2) != 0)
        {
          v62 = *(v61 + 88) == v10;
          v63 = v91 & (0x38u >> a4) ^ 1;
          if (!v62)
          {
            LOBYTE(v63) = 1;
          }

          if ((v63 & 1) == 0 && quic_packet_builder_has_frames(*(a1 + 560), v13))
          {
            if (quic_packet_builder_split_frames(*(a1 + 560), a1, v10, largest_acked_pn, a6))
            {
              return quic_conn_send_frames_for_key_state(a1, v10, 0, a4, v94, a6);
            }

            if ((qlog_debug_enabled & 1) != 0 || (*(v19 + 3897) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v64 = _os_log_pack_size();
              v65 = &v90 - ((MEMORY[0x1EEE9AC00](v64, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v66 = _os_log_pack_fill();
              *v66 = 136446210;
              *(v66 + 4) = "quic_conn_send_frames_for_key_state";
              qlog_internal(16, v65, 2183);
            }

            *(a1 + 1072) = 1;
            *(a1 + 1080) = "no frames fit in current MSS";
            quic_conn_close(a1);
            return 0;
          }
        }
      }
    }

    if ((qlog_debug_enabled & 1) == 0 && (*(v19 + 3897) & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v44 = _os_log_pack_size();
    v45 = &v90 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "quic_conn_send_frames_for_key_state";
    v47 = 16;
    v48 = v45;
    v49 = 2191;
LABEL_77:
    qlog_internal(v47, v48, v49);
    return 0;
  }

  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
  {
    return 0;
  }

  if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), result))
  {
    v76 = _os_log_pack_size();
    v77 = &v90 - ((MEMORY[0x1EEE9AC00](v76, v76) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v78 = _os_log_pack_fill();
    if (a4 > 5)
    {
      v79 = "???";
    }

    else
    {
      v79 = off_1E73D2630[(a4 - 1)];
    }

    *v78 = 136446466;
    *(v78 + 4) = "quic_conn_send_frames_for_key_state";
    *(v78 + 12) = 2082;
    *(v78 + 14) = v79;
    qlog_internal(2, v77, 2111);
    return 0;
  }

  return result;
}

uint64_t __quic_tp_serialize_internal_block_invoke_29(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 64) == 1)
  {
    if (a2 <= 47806)
    {
      if (a2 > 0x20)
      {
        goto LABEL_18;
      }

      if (((1 << a2) & 0x1AC05) != 0)
      {
        return 1;
      }

      if (a2 != 32)
      {
        goto LABEL_18;
      }

LABEL_16:
      v4 = *(*(*(a1 + 32) + 8) + 24);
      v5 = (*(*(a1 + 40) + 8) + 24);
      v6 = *(a1 + 56) + 1360;
      v2 = 32;
      goto LABEL_20;
    }

    if (a2 != 47807)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (a2 > 4278443545)
  {
LABEL_12:
    if (a2 == 4278443546)
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      v5 = (*(*(a1 + 40) + 8) + 24);
      v6 = *(a1 + 56) + 1520;
      v2 = 4278443546;
      goto LABEL_20;
    }

    if (a2 == 4278716424)
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      v5 = (*(*(a1 + 40) + 8) + 24);
      v6 = *(a1 + 56) + 1600;
      v2 = 4278716424;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a2 == 32)
  {
    goto LABEL_16;
  }

  if (a2 == 47807)
  {
LABEL_15:
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = (*(*(a1 + 40) + 8) + 24);
    v6 = *(a1 + 56) + 1440;
    v2 = 47807;
    goto LABEL_20;
  }

LABEL_18:
  if (a2 > 0x10)
  {
    qlog_abort_internal("%s invalid TP type %llu", "quic_tp_serialize_internal_block_invoke", a2);
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a1 + 56) + 80 * a2;
  v5 = (*(*(a1 + 40) + 8) + 24);
LABEL_20:
  *(*(*(a1 + 32) + 8) + 24) = quic_tp_serialize_parameter(v4, v5, v2, v6);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    return 1;
  }

  result = *(*(*(a1 + 48) + 8) + 24);
  if (result)
  {
    free(result);
    result = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

char *quic_tp_serialize_parameter(char *__dst, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = __dst;
  __src[1] = *MEMORY[0x1E69E9840];
  if (a3 > 11)
  {
    if (a3 > 16)
    {
      if (a3 <= 47806)
      {
        if (a3 != 17 && a3 != 32)
        {
          return __dst;
        }
      }

      else if (a3 != 47807 && a3 != 4278443546 && a3 != 4278716424)
      {
        return __dst;
      }

LABEL_3:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v8 = _os_log_pack_size();
        v9 = &v72 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = quic_tp_type_to_string(v5);
        v12 = *(a4 + 8);
        *v10 = 136446722;
        *(v10 + 4) = "quic_tp_serialize_parameter";
        *(v10 + 12) = 2082;
        *(v10 + 14) = v11;
        *(v10 + 22) = 2048;
        *(v10 + 24) = v12;
        qlog_internal(2, v9, 541);
      }

      v13 = *(a4 + 8);
      if (v13)
      {
        if (v13 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v13);
        }

        v14 = byte_193207AD4[(73 - __clz(v13)) >> 3];
        if (v14 != 1)
        {
          if (v14 == 4)
          {
            v13 = bswap32(v13 | 0x80000000);
          }

          else if (v14 == 2)
          {
            v13 = bswap32(v13 | 0x4000) >> 16;
          }

          else
          {
            v13 = bswap64(v13 | 0xC000000000000000);
          }
        }
      }

      else
      {
        v14 = 1;
      }

      v78 = v13;
      v30 = byte_193207AD4[(73 - __clz(v5)) >> 3];
      if (v30 != 1)
      {
        if (v30 != 4)
        {
          if (v30 == 2)
          {
            __src[0] = bswap32(v5 | 0x4000) >> 16;
            if (!v14)
            {
LABEL_54:
              v31 = 0;
              v32 = 1;
LABEL_65:
              v77 = v31;
              if (v30 + v14 + v32 > *a2)
              {
                return 0;
              }

              v33 = quic_safe_append(v7, a2, __src, v30);
              v28 = quic_safe_append(v33, a2, &v77, v32);
              v29 = &v78;
              v34 = a2;
              v35 = v14;
              return quic_safe_append(v28, v34, v29, v35);
            }
          }

          else
          {
            __src[0] = bswap64(v5 | 0xC000000000000000);
            if (!v14)
            {
              goto LABEL_54;
            }
          }

LABEL_57:
          v31 = v14;
          v32 = byte_193207AD4[(73 - __clz(v14)) >> 3];
          if (v32 != 1)
          {
            if (v32 == 4)
            {
              v31 = 128;
            }

            else if (v32 == 2)
            {
              v31 = __rev16(v14 | 0x4000);
            }

            else
            {
              v31 = bswap64(v14 | 0xC000000000000000);
            }
          }

          goto LABEL_65;
        }

        v5 = bswap32(v5 | 0x80000000);
      }

      __src[0] = v5;
      if (!v14)
      {
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    if (a3 <= 13)
    {
      if (a3 == 12)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v60 = _os_log_pack_size();
          v61 = &v72 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v62 = _os_log_pack_fill();
          *v62 = 136446466;
          *(v62 + 4) = "quic_tp_serialize_parameter";
          *(v62 + 12) = 2082;
          *(v62 + 14) = "disable_active_migration";
          qlog_internal(2, v61, 521);
        }

        LOWORD(v78) = 0;
        __src[0] = 12;
        if (*a2 < 2u)
        {
          return 0;
        }

        v28 = quic_safe_append(v7, a2, __src, 1uLL);
        v29 = &v78;
        v34 = a2;
        v35 = 1;
        return quic_safe_append(v28, v34, v29, v35);
      }

      v76 = *(a4 + 32);
      v36 = v76;
      v37 = v76 + 41;
      __src[0] = 13;
      v38 = byte_193207AD4[(73 - __clz(v76 + 41)) >> 3];
      v39 = __rev16((v76 + 41) | 0x4000);
      if (v38 == 2)
      {
        v40 = v39;
      }

      else
      {
        v40 = 192;
      }

      if (v38 == 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = v38;
      }

      if (v38 == 4)
      {
        v42 = 128;
      }

      else
      {
        v42 = v40;
      }

      if (v38 == 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v41;
      }

      if (v38 == 1)
      {
        v44 = 1;
      }

      else
      {
        v37 = v42;
        v44 = v43;
      }

      v77 = v37;
      if (*a2 < v76 + v44 + 42)
      {
        return 0;
      }

      v45 = quic_safe_append(__dst, a2, __src, 1uLL);
      v46 = quic_safe_append(v45, a2, &v77, v44);
      LODWORD(v78) = bswap32(*(a4 + 8));
      v47 = quic_safe_append(v46, a2, &v78, 4uLL);
      v75 = bswap32(*(a4 + 12)) >> 16;
      v48 = quic_safe_append(v47, a2, &v75, 2uLL);
      v49 = quic_safe_append(v48, a2, (a4 + 14), 0x10uLL);
      v74 = bswap32(*(a4 + 30)) >> 16;
      v28 = quic_safe_append(v49, a2, &v74, 2uLL);
      if (v36)
      {
        v50 = quic_safe_append(v28, a2, &v76, 1uLL);
        quic_cid_write((a4 + 32), v50, *a2);
        v28 = &v50[v76];
        *a2 -= v76;
      }

      v29 = (a4 + 53);
LABEL_90:
      v34 = a2;
      v35 = 16;
      return quic_safe_append(v28, v34, v29, v35);
    }

    if (a3 == 14)
    {
      goto LABEL_3;
    }

    if (a3 == 15)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v51 = _os_log_pack_size();
        v73 = &v72;
        v52 = &v72 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v53 = _os_log_pack_fill();
        v54 = &quic_cid_describe_cid_buf3;
        if (quic_cid_describe_state % 3 == 2)
        {
          v54 = &quic_cid_describe_cid_buf2;
        }

        if (quic_cid_describe_state % 3)
        {
          v55 = v54;
        }

        else
        {
          v55 = &quic_cid_describe_cid_buf1;
        }

        ++quic_cid_describe_state;
        v56 = *(a4 + 8);
        *v55 = 0u;
        v55[1] = 0u;
        *(v55 + 25) = 0u;
        if (v56)
        {
          if (v56 >= 0x14)
          {
            v57 = 20;
          }

          else
          {
            v57 = v56;
          }

          v58 = (a4 + 9);
          do
          {
            v59 = *v58++;
            snprintf(v55, 0x29uLL, "%s%02x", v55, v59);
            --v57;
          }

          while (v57);
        }

        *v53 = 136446722;
        *(v53 + 4) = "quic_tp_serialize_parameter";
        *(v53 + 12) = 2082;
        *(v53 + 14) = "initial_scid";
        *(v53 + 22) = 2082;
        *(v53 + 24) = v55;
        qlog_internal(2, v52, 498);
      }

      return quic_tp_serialize_cid(v7, a2, 0xFuLL, (a4 + 8));
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v15 = _os_log_pack_size();
        v73 = &v72;
        v16 = &v72 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        v18 = &quic_cid_describe_cid_buf3;
        if (quic_cid_describe_state % 3 == 2)
        {
          v18 = &quic_cid_describe_cid_buf2;
        }

        if (quic_cid_describe_state % 3)
        {
          v19 = v18;
        }

        else
        {
          v19 = &quic_cid_describe_cid_buf1;
        }

        ++quic_cid_describe_state;
        v20 = *(a4 + 8);
        *v19 = 0u;
        v19[1] = 0u;
        *(v19 + 25) = 0u;
        if (v20)
        {
          if (v20 >= 0x14)
          {
            v21 = 20;
          }

          else
          {
            v21 = v20;
          }

          v22 = (a4 + 9);
          do
          {
            v23 = *v22++;
            snprintf(v19, 0x29uLL, "%s%02x", v19, v23);
            --v21;
          }

          while (v21);
        }

        *v17 = 136446722;
        *(v17 + 4) = "quic_tp_serialize_parameter";
        *(v17 + 12) = 2082;
        *(v17 + 14) = "retry_scid";
        *(v17 + 22) = 2082;
        *(v17 + 24) = v19;
        qlog_internal(2, v16, 505);
      }

      return quic_tp_serialize_cid(v7, a2, 0x10uLL, (a4 + 8));
    }
  }

  else
  {
    if (a3 > 2)
    {
      goto LABEL_3;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        goto LABEL_3;
      }

      if (a3 != 2)
      {
        return __dst;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v24 = _os_log_pack_size();
        v25 = &v72 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        snprintf(quic_tp_srt_describe_token_str, 0x21uLL, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", *(a4 + 8), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15), *(a4 + 16), *(a4 + 17), *(a4 + 18), *(a4 + 19), *(a4 + 20), *(a4 + 21), *(a4 + 22), *(a4 + 23));
        *v26 = 136446722;
        *(v26 + 4) = "quic_tp_serialize_parameter";
        *(v26 + 12) = 2082;
        *(v26 + 14) = "stateless_reset_token";
        *(v26 + 22) = 2082;
        *(v26 + 24) = quic_tp_srt_describe_token_str;
        qlog_internal(2, v25, 512);
      }

      __src[0] = 2;
      LOWORD(v78) = 16;
      if (*a2 < 0x12u)
      {
        return 0;
      }

      v27 = quic_safe_append(v7, a2, __src, 1uLL);
      v28 = quic_safe_append(v27, a2, &v78, 1uLL);
      v29 = (a4 + 8);
      goto LABEL_90;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v63 = _os_log_pack_size();
      v73 = &v72;
      v64 = &v72 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v65 = _os_log_pack_fill();
      v66 = &quic_cid_describe_cid_buf3;
      if (quic_cid_describe_state % 3 == 2)
      {
        v66 = &quic_cid_describe_cid_buf2;
      }

      if (quic_cid_describe_state % 3)
      {
        v67 = v66;
      }

      else
      {
        v67 = &quic_cid_describe_cid_buf1;
      }

      ++quic_cid_describe_state;
      v68 = *(a4 + 8);
      *v67 = 0u;
      v67[1] = 0u;
      *(v67 + 25) = 0u;
      if (v68)
      {
        if (v68 >= 0x14)
        {
          v69 = 20;
        }

        else
        {
          v69 = v68;
        }

        v70 = (a4 + 9);
        do
        {
          v71 = *v70++;
          snprintf(v67, 0x29uLL, "%s%02x", v67, v71);
          --v69;
        }

        while (v69);
      }

      *v65 = 136446722;
      *(v65 + 4) = "quic_tp_serialize_parameter";
      *(v65 + 12) = 2082;
      *(v65 + 14) = "original_dcid";
      *(v65 + 22) = 2082;
      *(v65 + 24) = v67;
      qlog_internal(2, v64, 491);
    }

    return quic_tp_serialize_cid(v7, a2, 0, (a4 + 8));
  }
}

char *quic_tp_serialize_cid(char *a1, unsigned __int16 *a2, unint64_t a3, unsigned __int8 *a4)
{
  v8 = quic_cid_len(a4);
  v9 = v8;
  if (a3)
  {
    if (a3 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
    }

    v10 = byte_193207AD4[(73 - __clz(a3)) >> 3];
    if (v10 != 1)
    {
      if (v10 == 4)
      {
        LOWORD(a3) = bswap32(a3 | 0x80000000);
      }

      else if (v10 == 2)
      {
        LODWORD(a3) = bswap32(a3 | 0x4000) >> 16;
      }

      else
      {
        LOWORD(a3) = bswap64(a3 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  __src = a3;
  if (v8)
  {
    v11 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    switch(v11)
    {
      case 1:
        v12 = v8;
        break;
      case 4:
        v12 = 128;
        break;
      case 2:
        v12 = __rev16(v8 | 0x4000);
        break;
      default:
        v12 = bswap64(v8 | 0xC000000000000000);
        break;
    }
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v16 = v12;
  if (v10 + v8 + v11 > *a2)
  {
    return 0;
  }

  v14 = quic_safe_append(a1, a2, &__src, v10);
  result = quic_safe_append(v14, a2, &v16, v11);
  if (v9)
  {
    v15 = result;
    quic_cid_write(a4, result, *a2);
    result = &v15[v9];
    *a2 -= v9;
  }

  return result;
}

BOOL __quic_crypto_tls_start_block_invoke_4(uint64_t a1, void *a2)
{
  result = quic_conn_ensure_has_current_path(a2);
  if (result)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = result;
    quic_crypto_new_flow(a2, v6, v5, v7, v8);
    return v9;
  }

  return result;
}

uint64_t __quic_crypto_new_flow_block_invoke(void *a1, void *a2)
{
  *a2 = a1[4];
  a2[3] = a1[5];
  a2[5] = -1;
  a2[6] = -1;
  v3 = *(a1[6] + 1320);
  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x1DAE7751uLL);
  if (!v4 || (v4[6] = 0, v5 = v3 + 48, v4[7] = v4 + 6, v4[4] = -1, v4[5] = v5, a2[33] = v4, (v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x1DAE7751uLL)) == 0) || (v6[6] = 0, v6[7] = v6 + 6, v6[4] = -1, v6[5] = v5, a2[34] = v6, (v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x1DAE7751uLL)) == 0))
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_reassq_create", 1uLL, 0x48uLL);
  }

  v7[6] = 0;
  v7[7] = v7 + 6;
  v7[4] = -1;
  v7[5] = v5;
  a2[35] = v7;
  return 1;
}

void quic_protector_derive_initial_secrets(uint64_t a1, unsigned __int8 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v2 = _os_log_pack_size();
    v3 = v13 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_protector_derive_initial_secrets";
    v5 = v3;
    v6 = 1146;
LABEL_19:
    qlog_internal(17, v5, v6);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v13 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_protector_derive_initial_secrets";
    v5 = v8;
    v6 = 1147;
    goto LABEL_19;
  }

  if (*a2)
  {
    quic_cid_write(a2, __dst, 0x14uLL);
  }

  v13[1] = 0;
  CCKDFParametersCreateHkdf();
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_protector_derive_initial_secrets";
    v5 = v11;
    v6 = 1164;
    goto LABEL_19;
  }
}

void quic_rtt_setup_cached_rtt(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      nw_path_get_rtt_values();
      if ((*(a1 + 156) & 4) != 0)
      {
        v3 = *(a1 + 144);
        if (v3)
        {
          if (v3 >= *(a1 + 148))
          {
            v4 = *(a1 + 152);
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
            {
              v5 = vcvtd_n_f64_u32(v4, 4uLL);
              v6 = _os_log_pack_size();
              v7 = v15 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v8 = _os_log_pack_fill();
              *v8 = 136446722;
              *(v8 + 4) = "quic_rtt_setup_cached_rtt";
              *(v8 + 12) = 2048;
              *(v8 + 14) = vcvtd_n_f64_u32(v3, 5uLL);
              *(v8 + 22) = 2048;
              *(v8 + 24) = v5;
              v9 = 1;
              v10 = v7;
              v11 = 116;
LABEL_10:
              qlog_internal(v9, v10, v11);
            }
          }
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_rtt_setup_cached_rtt";
    v9 = 17;
    v10 = v13;
    v11 = 101;
    goto LABEL_10;
  }
}

uint64_t __quic_crypto_setup_sec_options_block_invoke_2()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  nw_protocol_instance_access_state();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

uint64_t quic_crypto_output_handler(uint64_t a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_crypto_output_handler";
      qlog_internal(17, v8, 623);
    }

    return 0;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return a1 + 240;
      }

      goto LABEL_9;
    }

    return a1 + 112;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1 + 176;
      }

LABEL_9:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v4 = _os_log_pack_size();
        v5 = v10 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        *v6 = 136446466;
        *(v6 + 4) = "quic_crypto_output_handler";
        *(v6 + 12) = 1024;
        *(v6 + 14) = a2;
        qlog_internal(17, v5, 635);
      }

      return 0;
    }

    return a1 + 48;
  }
}

uint64_t quic_crypto_get_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v23[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v23 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_crypto_get_output_frames";
    v12 = v10;
    v13 = 1469;
    goto LABEL_27;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v23 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_crypto_get_output_frames";
    v12 = v15;
    v13 = 1470;
    goto LABEL_27;
  }

  LODWORD(v6) = a4;
  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v17 = _os_log_pack_size();
    v18 = v23 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_crypto_get_output_frames";
    v12 = v18;
    v13 = 1471;
    goto LABEL_27;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v20 = _os_log_pack_size();
    v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_crypto_get_output_frames";
    v12 = v21;
    v13 = 1472;
LABEL_27:
    qlog_internal(17, v12, v13);
    return 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = __quic_crypto_get_output_frames_block_invoke;
  v23[3] = &__block_descriptor_tmp_74;
  v23[4] = a2;
  nw_protocol_instance_access_state();
  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFFLL;
  }

  else
  {
    v6 = v6;
  }

  if (!malloc_type_malloc(v6, 0x62CEFC9CuLL))
  {
    qlog_abort_internal("%s strict allocator failed", "quic_crypto_get_output_frames");
  }

  nw_frame_create();
  v7 = 1;
  nw_frame_array_append();
  return v7;
}

uint64_t quic_crypto_finalize_output_frames(uint64_t a1, uint64_t a2)
{
  v12[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 40);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __quic_crypto_finalize_output_frames_block_invoke;
      v12[3] = &__block_descriptor_tmp_80;
      v12[4] = a1;
      v12[5] = v2;
      v12[6] = a2;
      return nw_protocol_instance_access_state();
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_crypto_finalize_output_frames";
      v7 = v10;
      v8 = 1496;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_crypto_finalize_output_frames";
    v7 = v5;
    v8 = 1495;
LABEL_13:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return result;
}

uint64_t __quic_crypto_finalize_output_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 477);
  if (*(a2 + 1380))
  {
    if (v3 == 4 && *(a1 + 32) == a2 + 112)
    {
      v4 = 8;
      goto LABEL_7;
    }
  }

  else if (v3 == 1)
  {
    v4 = 6;
LABEL_7:
    quic_fsm_conn_change(a2, v4);
  }

  nw_protocol_instance_get_flow_for_key();
  return nw_protocol_instance_access_flow_state();
}

uint64_t quic_packet_builder_remaining_length(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x4020100u >> (8 * a3);
  }

  tag_size = quic_protector_get_tag_size(a2, v11 & 7);
  v13 = a6 - tag_size;
  if (((a6 - tag_size) & 0xFFFF0000) != 0)
  {
    v14 = tag_size;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v26 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136447234;
      *(v17 + 4) = "quic_packet_builder_remaining_length";
      *(v17 + 12) = 2082;
      *(v17 + 14) = "mss";
      *(v17 + 22) = 2048;
      *(v17 + 24) = v13 + v14;
      *(v17 + 32) = 2048;
      *(v17 + 34) = v14;
      *(v17 + 42) = 2048;
      *(v17 + 44) = v13;
      qlog_internal(17, v16, 501);
    }

    v13 = 0;
  }

  v18 = _quic_packet_builder_calculate_size(a1, a2, v11, a4, a5, 0, v13, 0, 0);
  v19 = v13 - 3;
  if (v19 >= 0x10000)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v20 = _os_log_pack_size();
      v21 = v26 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      v23 = (v13 - 3);
      *v22 = 136447234;
      *(v22 + 4) = "quic_packet_builder_remaining_length";
      *(v22 + 12) = 2082;
      *(v22 + 14) = "mss";
      *(v22 + 22) = 2048;
      *(v22 + 24) = v23 + 3;
      *(v22 + 32) = 2048;
      *(v22 + 34) = 3;
      *(v22 + 42) = 2048;
      *(v22 + 44) = v23;
      qlog_internal(17, v21, 507);
    }

    v19 = 0;
  }

  v24 = v19 - v18;
  if (v19 < v18)
  {
    return 0;
  }

  return v24;
}

void qlog_dump_buffer(uint64_t a1, unint64_t a2)
{
  v36 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v3 = &qword_1ED6D7000;
  if (!qlog_datapath_enabled)
  {
    return;
  }

  if (!v36)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v33 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "qlog_dump_buffer";
    v28 = v26;
    v29 = 207;
LABEL_36:
    qlog_internal(17, v28, v29);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = _os_log_pack_size();
    v31 = v33 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "qlog_dump_buffer";
    v28 = v31;
    v29 = 208;
    goto LABEL_36;
  }

  v4 = 0;
  *&v5 = 0x2020202020202020;
  *(&v5 + 1) = 0x2020202020202020;
  *&v39[15] = v5;
  v38 = v5;
  *v39 = v5;
  v40 = 0;
  v6 = 0x1EAE32000uLL;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v5 = 136446978;
  v34 = v5;
  do
  {
    if (a2 - v4 >= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = a2 - v4;
    }

    if (a2 != v4)
    {
      v10 = (v36 + v4);
      if (v7 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v7;
      }

      v12 = 3 * (v7 - 1);
      v13 = v37;
      v14 = &v38 + 1;
      do
      {
        v16 = *v10++;
        v15 = v16;
        if (v16 - 32 >= 0x5F)
        {
          v17 = 46;
        }

        else
        {
          v17 = v15;
        }

        v18 = qlog_dump_buffer_hexChars[v15 >> 4];
        *v13 = v17;
        *(v14 - 1) = v18;
        *v14 = qlog_dump_buffer_hexChars[v15 & 0xF];
        if (!v12)
        {
          v37[(v7 - 1) + 1] = 0;
        }

        v12 -= 3;
        v14 += 3;
        ++v13;
        --v11;
      }

      while (v11);
    }

    if (a2 - v4 <= 0xF)
    {
      v8 = v6;
      v9 = v3;
      memset(&v39[3 * v7 - 16], 32, (3 * (16 - v7) - 1));
      v3 = v9;
      v6 = v8;
    }

    if ((v3[41] & 1) != 0 || *(v6 + 3897))
    {
      if (((qlog_debug_enabled | *(v6 + 3897)) & 1) != 0 || (v19 = v6, v20 = v3, v21 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v3 = v20, v6 = v19, v21))
      {
        v22 = _os_log_pack_size();
        v33[1] = v33;
        v23 = v33 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = _os_log_pack_fill();
        *v24 = v34;
        *(v24 + 4) = "qlog_dump_buffer";
        *(v24 + 12) = 2048;
        *(v24 + 14) = v4;
        *(v24 + 22) = 2082;
        *(v24 + 24) = &v38;
        *(v24 + 32) = 2082;
        *(v24 + 34) = v37;
        qlog_internal(2, v23, 242);
        v3 = &qword_1ED6D7000;
      }
    }

    v4 += v7;
  }

  while (v4 < a2);
}

void quic_crypto_new_flow(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] == a4)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v7 = _os_log_pack_size();
      v62 = &v60;
      v8 = &v60 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      v10 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v11 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v11 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v12 = v11;
      }

      else
      {
        v12 = &quic_cid_describe_cid_buf1;
      }

      v13 = ++quic_cid_describe_state;
      v14 = *(v10 + 38);
      v15 = 0uLL;
      *(v12 + 25) = 0u;
      v61 = a1 + 976;
      *v12 = 0u;
      v12[1] = 0u;
      if (v14)
      {
        if (v14 >= 0x14)
        {
          v16 = 20;
        }

        else
        {
          v16 = v14;
        }

        v17 = (v10 + 39);
        do
        {
          v18 = *v17++;
          snprintf(v12, 0x29uLL, "%s%02x", v12, v18);
          --v16;
        }

        while (v16);
        v13 = quic_cid_describe_state;
        v15 = 0uLL;
      }

      v19 = *(a1 + 1112);
      v20 = v13 % 3;
      if (v13 % 3 == 2)
      {
        v21 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v21 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v13 + 1;
      v22 = *(v19 + 17);
      if (v20)
      {
        v23 = v21;
      }

      else
      {
        v23 = &quic_cid_describe_cid_buf1;
      }

      *v23 = v15;
      v23[1] = v15;
      *(v23 + 25) = v15;
      if (v22)
      {
        if (v22 >= 0x14)
        {
          v24 = 20;
        }

        else
        {
          v24 = v22;
        }

        v25 = (v19 + 18);
        do
        {
          v26 = *v25++;
          snprintf(v23, 0x29uLL, "%s%02x", v23, v26);
          --v24;
        }

        while (v24);
      }

      *v9 = 136447234;
      *(v9 + 4) = "quic_crypto_new_flow";
      *(v9 + 12) = 2082;
      *(v9 + 14) = v61;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      *(v9 + 42) = 2048;
      *(v9 + 44) = a4;
      qlog_internal(16, v8, 1085);
    }
  }

  else
  {
    nw_protocol_instance_clear_flow_for_key();
    v73 = -1;
    nw_protocol_instance_set_flow_for_key();
    nw_protocol_instance_update_outbound_data_limit();
    v66 = MEMORY[0x1E69E9820];
    v67 = 0x40000000;
    v68 = __quic_crypto_new_flow_block_invoke;
    v69 = &__block_descriptor_tmp_50;
    v70 = -1;
    v71 = a4;
    v72 = a1;
    nw_protocol_instance_access_flow_state();
    v30 = *(a1 + 24);
    if (v30)
    {
      nw_connection_force_cancel(v30);
      v31 = *(a1 + 24);
      if (v31)
      {
        nw_release(v31);
        *(a1 + 24) = 0;
      }
    }

    v32 = nw_retain(a5);
    *(a1 + 24) = v32;
    nw_connection_set_queue(v32, *(a1 + 16));
    if ((a3 & 1) == 0)
    {
      if (*(a1 + 568))
      {
        nw_protocol_implementation_finalize_pending_frames();
        v33 = *(a1 + 568);
        if (!v33)
        {
          qlog_abort_internal("%s null protector", "quic_protector_get_pn");
        }

        v34 = *(v33 + 3192);
        _quic_protector_destroy(v33);
        *(a1 + 568) = 0;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(a1 + 1112);
      v36 = malloc_type_calloc(1uLL, 0xC98uLL, 0xCF345CFAuLL);
      if (!v36)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_create", 1uLL, 0xC98uLL);
      }

      v37 = v36;
      v36[3216] = 1;
      quic_protector_derive_initial_secrets(v36, (v35 + 17));
      *(v37 + 3200) = 0;
      *(v37 + 3208) = v37 + 3200;
      *(a1 + 568) = v37;
      if (v34)
      {
        quic_protector_advance_pn(v37, v34);
      }
    }

    nw_retain(a2);
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2000000000;
    v65 = 0;
    v38 = *(a1 + 24);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __quic_crypto_new_flow_block_invoke_2;
    handler[3] = &unk_1E73D1250;
    handler[4] = v64;
    handler[5] = a2;
    handler[6] = a4;
    nw_connection_set_state_changed_handler(v38, handler);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
    {
      v39 = _os_log_pack_size();
      v62 = &v60;
      v40 = &v60 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v41 = _os_log_pack_fill();
      v42 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v43 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v43 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v44 = v43;
      }

      else
      {
        v44 = &quic_cid_describe_cid_buf1;
      }

      v45 = ++quic_cid_describe_state;
      v46 = *(v42 + 38);
      v47 = 0uLL;
      *(v44 + 25) = 0u;
      v61 = a1 + 976;
      *v44 = 0u;
      v44[1] = 0u;
      if (v46)
      {
        if (v46 >= 0x14)
        {
          v48 = 20;
        }

        else
        {
          v48 = v46;
        }

        v49 = (v42 + 39);
        do
        {
          v50 = *v49++;
          snprintf(v44, 0x29uLL, "%s%02x", v44, v50);
          --v48;
        }

        while (v48);
        v45 = quic_cid_describe_state;
        v47 = 0uLL;
      }

      v51 = *(a1 + 1112);
      v52 = v45 % 3;
      if (v45 % 3 == 2)
      {
        v53 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v53 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v45 + 1;
      v54 = *(v51 + 17);
      if (v52)
      {
        v55 = v53;
      }

      else
      {
        v55 = &quic_cid_describe_cid_buf1;
      }

      *v55 = v47;
      v55[1] = v47;
      *(v55 + 25) = v47;
      if (v54)
      {
        if (v54 >= 0x14)
        {
          v56 = 20;
        }

        else
        {
          v56 = v54;
        }

        v57 = (v51 + 18);
        do
        {
          v58 = *v57++;
          snprintf(v55, 0x29uLL, "%s%02x", v55, v58);
          --v56;
        }

        while (v56);
      }

      id = nw_connection_get_id();
      *v41 = 136447234;
      *(v41 + 4) = "quic_crypto_new_flow";
      *(v41 + 12) = 2082;
      *(v41 + 14) = v61;
      *(v41 + 22) = 2082;
      *(v41 + 24) = v44;
      *(v41 + 32) = 2082;
      *(v41 + 34) = v55;
      *(v41 + 42) = 2048;
      *(v41 + 44) = id;
      qlog_internal(0, v40, 1172);
    }

    nw_connection_start(*(a1 + 24));
    _Block_object_dispose(v64, 8);
  }
}

uint64_t __quic_crypto_finalize_output_frames_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2 + 48)
  {
    v9 = 1;
LABEL_11:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __quic_crypto_finalize_output_frames_block_invoke_76;
    v11[3] = &__block_descriptor_tmp_78;
    v12 = v9;
    v11[4] = v2;
    v11[5] = a2;
    nw_frame_array_remove_each();
    return 1;
  }

  if (v3 == v2 + 112)
  {
    v9 = 2;
    goto LABEL_11;
  }

  if (v3 == v2 + 240)
  {
    v9 = 3;
    goto LABEL_11;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v11 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    v8 = *(a1 + 32);
    *v7 = 136446466;
    *(v7 + 4) = "quic_crypto_finalize_output_frames_block_invoke_2";
    *(v7 + 12) = 2048;
    *(v7 + 14) = v8;
    qlog_internal(17, v6, 1525);
  }

  return 1;
}

uint64_t __quic_crypto_finalize_output_frames_block_invoke_76()
{
  nw_frame_unclaimed_bytes();
  nw_frame_finalize();
  return 1;
}

void quic_crypto_send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, unsigned int a6, __n128 a7)
{
  v93 = a5;
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v63 = _os_log_pack_size();
    v64 = &StatusReg - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v65 = _os_log_pack_fill();
    *v65 = 136446210;
    *(v65 + 4) = "quic_crypto_send";
    v60 = 17;
    v61 = v64;
    v62 = 1351;
LABEL_67:
    qlog_internal(v60, v61, v62);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v66 = _os_log_pack_size();
    v67 = &StatusReg - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v68 = _os_log_pack_fill();
    *v68 = 136446210;
    *(v68 + 4) = "quic_crypto_send";
    v60 = 17;
    v61 = v67;
    v62 = 1352;
    goto LABEL_67;
  }

  v8 = a3;
  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v69 = _os_log_pack_size();
    v70 = &StatusReg - ((MEMORY[0x1EEE9AC00](v69, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v71 = _os_log_pack_fill();
    *v71 = 136446210;
    *(v71 + 4) = "quic_crypto_send";
    v60 = 17;
    v61 = v70;
    v62 = 1353;
    goto LABEL_67;
  }

  v9 = a4;
  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v72 = _os_log_pack_size();
    v73 = &StatusReg - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v74 = _os_log_pack_fill();
    *v74 = 136446210;
    *(v74 + 4) = "quic_crypto_send";
    v60 = 17;
    v61 = v73;
    v62 = 1354;
    goto LABEL_67;
  }

  v10 = a6;
  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v75 = _os_log_pack_size();
    v76 = &StatusReg - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v77 = _os_log_pack_fill();
    *v77 = 136446210;
    *(v77 + 4) = "quic_crypto_send";
    v60 = 17;
    v61 = v76;
    v62 = 1356;
    goto LABEL_67;
  }

  v11 = a1;
  v92 = a1;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v78 = _os_log_pack_size();
    v79 = &StatusReg - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v80 = _os_log_pack_fill();
    if (v8 > 3)
    {
      v81 = "???";
    }

    else
    {
      v81 = off_1E73D1470[(v8 - 1)];
    }

    *v80 = 136446722;
    *(v80 + 4) = "quic_crypto_send";
    *(v80 + 12) = 1024;
    *(v80 + 14) = v10;
    *(v80 + 18) = 2082;
    *(v80 + 20) = v81;
    qlog_internal(2, v79, 1359);
    v11 = v92;
  }

  v12 = 224;
  if (v8 == 2)
  {
    v12 = 216;
  }

  v13 = (v9 + v12);
  v87 = (v9 + 208);
  v85 = v11 + 122;
  v86 = v13;
  if (v8 == 1)
  {
    v13 = (v9 + 208);
  }

  v91 = v13;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  a7.n128_u64[0] = 136446978;
  v84 = a7;
  v83 = v9;
  while (1)
  {
    largest_acked_pn = quic_recovery_get_largest_acked_pn(v11[119], v8, a2);
    if (v8 == 1)
    {
      v16 = *(a2 + 380) - 197;
      v17 = v87;
    }

    else
    {
      v16 = quic_packet_builder_remaining_length(v11[70], v11[71], v8, a2, largest_acked_pn, *(a2 + 380));
      v17 = v86;
    }

    v18 = *v17;
    if (v16)
    {
      v19 = byte_193207AD4[(73 - __clz(v16)) >> 3] + 1;
      v20 = __clz(v18);
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 2;
      v20 = __clz(v18);
      if (!v18)
      {
LABEL_23:
        v21 = 1;
        goto LABEL_24;
      }
    }

    if (v18 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v18);
    }

    v21 = byte_193207AD4[(73 - v20) >> 3];
LABEL_24:
    v22 = v21 + v19;
    if (v22 > v16)
    {
      break;
    }

    if (v10 >= (v16 - v22))
    {
      v23 = (v16 - v22);
    }

    else
    {
      v23 = v10;
    }

    if (v22 != v16)
    {
      *v91 += v23;
      v24 = v11[70];
      frame_pool = quic_packet_builder_get_frame_pool(v24);
      v26 = quic_frame_create(frame_pool, 6);
      v27 = v8;
      v28 = v26;
      v29 = v27;
      *(v26 + 16) = v27;
      v26[3] = v18;
      v26[4] = v23;
      v30 = malloc_type_calloc(1uLL, v23, 0xC212D224uLL);
      if (!v30)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_alloc_CRYPTO", 1uLL, v23);
      }

      v28[5] = v30;
      *(v28 + 17) |= 1u;
      memcpy(v30, v93, v23);
      if (v18)
      {
        v31 = byte_193207AD4[(73 - v20) >> 3];
      }

      else
      {
        v31 = 1;
      }

      *(v28 + 4) = v23 + v31 + byte_193207AD4[(73 - __clz(v23)) >> 3] + 1;
      v32 = v28;
      v8 = v29;
      quic_packet_builder_append_for_pn_space(v24, v32, v29);
      v11 = v92;
      v33 = quic_conn_preferred_path(v92);
      if ((quic_conn_send_internal(v11, v33, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && v11[139])
      {
        v34 = _os_log_pack_size();
        p_StatusReg = &StatusReg;
        v89 = &StatusReg - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
        v35 = _os_log_pack_fill();
        v36 = v11[139];
        v37 = &quic_cid_describe_cid_buf3;
        if (quic_cid_describe_state % 3 == 2)
        {
          v37 = &quic_cid_describe_cid_buf2;
        }

        v38 = quic_cid_describe_state % 3 == 0;
        v39 = ++quic_cid_describe_state;
        v40 = *(v36 + 38);
        if (v38)
        {
          v41 = &quic_cid_describe_cid_buf1;
        }

        else
        {
          v41 = v37;
        }

        *(v41 + 25) = 0u;
        *v41 = 0u;
        v41[1] = 0u;
        if (v40)
        {
          v88 = &StatusReg;
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
            snprintf(v41, 0x29uLL, "%s%02x", v41, v44);
            --v42;
          }

          while (v42);
          v39 = quic_cid_describe_state;
        }

        v88 = &StatusReg;
        v45 = v92[139];
        v46 = v39 % 3;
        v47 = &quic_cid_describe_cid_buf3;
        if (v39 % 3 == 2)
        {
          v47 = &quic_cid_describe_cid_buf2;
        }

        quic_cid_describe_state = v39 + 1;
        v48 = *(v45 + 17);
        if (v46)
        {
          v49 = v47;
        }

        else
        {
          v49 = &quic_cid_describe_cid_buf1;
        }

        *v49 = 0u;
        v49[1] = 0u;
        *(v49 + 25) = 0u;
        if (v48)
        {
          if (v48 >= 0x14)
          {
            v50 = 20;
          }

          else
          {
            v50 = v48;
          }

          v51 = (v45 + 18);
          do
          {
            v52 = *v51++;
            snprintf(v49, 0x29uLL, "%s%02x", v49, v52);
            --v50;
          }

          while (v50);
        }

        v14 = v89;
        *v35 = v84.n128_u32[0];
        *(v35 + 4) = "quic_crypto_send";
        *(v35 + 12) = 2082;
        *(v35 + 14) = v85;
        *(v35 + 22) = 2082;
        *(v35 + 24) = v41;
        *(v35 + 32) = 2082;
        *(v35 + 34) = v49;
        qlog_internal(16, v14, 1427);
        v9 = v83;
        v8 = v29;
        v11 = v92;
      }

      *(v9 + 32) += v23;
      v93 += v23;
      v10 -= v23;
      if (v10)
      {
        continue;
      }
    }

    return;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && v11[139])
  {
    v53 = _os_log_pack_size();
    v54 = &StatusReg - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v55 = _os_log_pack_fill();
    v56 = quic_cid_describe((v11[139] + 38));
    v57 = v11;
    v58 = v56;
    v59 = quic_cid_describe((v57[139] + 17));
    *v55 = v84.n128_u32[0];
    *(v55 + 4) = "quic_crypto_send";
    *(v55 + 12) = 2082;
    *(v55 + 14) = v85;
    *(v55 + 22) = 2082;
    *(v55 + 24) = v58;
    *(v55 + 32) = 2082;
    *(v55 + 34) = v59;
    v60 = 16;
    v61 = v54;
    v62 = 1406;
    goto LABEL_67;
  }
}

uint64_t quic_conn_foreach_path(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = (a1 + 1360);

    return quic_path_foreach(v3, (a1 + 602), a2);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_conn_foreach_path";
      qlog_internal(17, v6, 5857);
    }

    return 0;
  }
}

uint64_t quic_path_foreach(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v8 = _os_log_pack_size();
    v9 = v17 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_path_foreach";
    v11 = v9;
    v12 = 351;
    goto LABEL_17;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v13 = _os_log_pack_size();
    v14 = v17 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_path_foreach";
    v11 = v14;
    v12 = 352;
LABEL_17:
    qlog_internal(17, v11, v12);
    return 0;
  }

  *a2 = 0;
  v6 = *a1;
  while (v6)
  {
    v7 = *(v6 + 216);
    if (!(*(a3 + 16))(a3, v6))
    {
      break;
    }

    v6 = v7;
    if (*a2 == 1)
    {
      v6 = *a1;
      *a2 = 0;
    }
  }

  return v6;
}

BOOL quic_packet_parser_open_header(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 477) == 2)
  {
    quic_protector_derive_initial_secrets(*(a1 + 568), (a2 + 40));
  }

  v8 = *(a1 + 568);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v38 = _os_log_pack_size();
      v39 = v41 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v40 = _os_log_pack_fill();
      *v40 = 136446210;
      *(v40 + 4) = "quic_packet_parser_open_header";
      v15 = v39;
      v16 = 100;
      goto LABEL_31;
    }

    return result;
  }

  v9 = quic_protector_open_key_ready(v8, *(a2 + 82));
  v10 = *(a2 + 82);
  if (v9 && (v10 < 4 || *(a1 + 477) > 8u))
  {
    if (quic_protector_open_header(*(a1 + 568), a2, a3))
    {
      return 1;
    }

    v24 = *(a1 + 1216);
    v25 = __CFADD__(v24, 1);
    v26 = v24 + 1;
    v27 = v25;
    *(a1 + 1216) = v26;
    v28 = qlog_debug_enabled;
    if (v27 << 63 >> 63 != v27)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        *(a1 + 1216) = -1;
LABEL_28:
        if ((qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }
        }

LABEL_30:
        v33 = _os_log_pack_size();
        v34 = v41 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v35 = _os_log_pack_fill();
        *v35 = 136446210;
        *(v35 + 4) = "quic_packet_parser_open_header";
        v15 = v34;
        v16 = 130;
        goto LABEL_31;
      }

      v29 = _os_log_pack_size();
      v30 = v41 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      v32 = *(a1 + 1216);
      *v31 = 136447234;
      *(v31 + 4) = "quic_packet_parser_open_header";
      *(v31 + 12) = 2082;
      *(v31 + 14) = "conn->statistics.decryption_failures";
      *(v31 + 22) = 2048;
      *(v31 + 24) = v32 - 1;
      *(v31 + 32) = 2048;
      *(v31 + 34) = 1;
      *(v31 + 42) = 2048;
      *(v31 + 44) = v32;
      qlog_internal(17, v30, 129);
      v28 = qlog_debug_enabled;
      *(a1 + 1216) = -1;
    }

    if (v28)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if ((v10 | 2) != 3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v17 = *(a2 + 82), v18 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v19 = v17, v18))
    {
      v20 = _os_log_pack_size();
      v21 = v41 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      if (*(a2 + 82) - 1 > 4)
      {
        v23 = "???";
      }

      else
      {
        v23 = off_1E73D2630[(*(a2 + 82) - 1)];
      }

      v36 = "connected";
      v37 = *(a1 + 477);
      *(v22 + 4) = "quic_packet_parser_open_header";
      *v22 = 136446722;
      *(v22 + 12) = 2082;
      if (v37 < 9)
      {
        v36 = "not connected";
      }

      *(v22 + 14) = v23;
      *(v22 + 22) = 2082;
      *(v22 + 24) = v36;
      qlog_internal(2, v21, 118);
      v19 = *(a2 + 82);
    }

    quic_crypto_queue_append(*(a1 + 32), v19, *a2, (*(a2 + 84) + a3), a4);
    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v12 = _os_log_pack_size();
    v13 = v41 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_packet_parser_open_header";
    v15 = v13;
    v16 = 109;
LABEL_31:
    qlog_internal(2, v15, v16);
    return 0;
  }

  return result;
}

BOOL quic_protector_open_header(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v6 = _os_log_pack_size();
    v7 = v17 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_protector_open_header";
    v9 = v7;
    v10 = 1780;
LABEL_23:
    qlog_internal(17, v9, v10);
    return 0;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v11 = _os_log_pack_size();
    v12 = v17 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_protector_open_header";
    v9 = v12;
    v10 = 1782;
    goto LABEL_23;
  }

  if (!*(a2 + 82))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_protector_open_header";
    v9 = v15;
    v10 = 1785;
    goto LABEL_23;
  }

  v3 = a1 + 264 * *(a2 + 82);
  v4 = *(v3 + 1812);
  if ((v4 - 1) < 2)
  {
    return sec_framer_open_header_aes(v3 + 1584, a2, a3);
  }

  if (v4 == 3)
  {
    return sec_framer_open_header_chacha20poly1305(v3 + 1584, a2, a3);
  }

  if (v4 == 4)
  {
    return sec_framer_open_header_aes(v3 + 1584, a2, a3);
  }

  return 0;
}

BOOL sec_framer_open_header_aes(uint64_t a1, uint64_t a2, unsigned int a3)
{
  dataOut[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 0xF)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v12 = _os_log_pack_size();
      v13 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "sec_framer_open_header_aes";
      v9 = 17;
      v10 = v13;
      v11 = 687;
      goto LABEL_10;
    }
  }

  else
  {
    dataOut[0] = 0;
    dataOut[1] = 0;
    v4 = *(a2 + 86);
    if (v4 <= 0xF)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v15 = _os_log_pack_size();
        v16 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        v18 = *(a2 + 86);
        *v17 = 136446466;
        *(v17 + 4) = "sec_framer_open_header_aes";
        *(v17 + 12) = 1024;
        *(v17 + 14) = v18;
        qlog_internal(17, v16, 693);
        return 0;
      }
    }

    else
    {
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v20 = a1, v21 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v20, v21))
        {
          v22 = a1;
          v23 = _os_log_pack_size();
          v24 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v25 = _os_log_pack_fill();
          v26 = *(v22 + 220) == 16;
          *(v25 + 4) = "sec_framer_open_header_aes";
          *v25 = 136446722;
          if (v26)
          {
            v27 = 128;
          }

          else
          {
            v27 = 256;
          }

          *(v25 + 12) = 1024;
          *(v25 + 14) = v27;
          *(v25 + 18) = 1024;
          *(v25 + 20) = a3;
          qlog_internal(2, v24, 697);
          a1 = v22;
          v4 = *(a2 + 86);
        }
      }

      if (CCCryptorUpdate(*(a1 + 248), *(a2 + 32), v4, dataOut, 0x10uLL, 0))
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
        {
          v6 = _os_log_pack_size();
          v7 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v8 = _os_log_pack_fill();
          *v8 = 136446210;
          *(v8 + 4) = "sec_framer_open_header_aes";
          v9 = 16;
          v10 = v7;
          v11 = 703;
LABEL_10:
          qlog_internal(v9, v10, v11);
          return 0;
        }
      }

      else
      {
        sec_framer_process_header_protection(a2, dataOut);
        return 1;
      }
    }
  }

  return result;
}

BOOL sec_framer_open(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v6 = _os_log_pack_size();
    v7 = v17 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "sec_framer_open";
    v9 = v7;
    v10 = 464;
LABEL_28:
    qlog_internal(17, v9, v10);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v11 = _os_log_pack_size();
    v12 = v17 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "sec_framer_open";
    v9 = v12;
    v10 = 465;
    goto LABEL_28;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "sec_framer_open";
    v9 = v15;
    v10 = 466;
    goto LABEL_28;
  }

  v4 = *(a1 + 228);
  if ((v4 - 1) < 2)
  {

    return sec_framer_open_aesgcm(a1, a2, a3, a4);
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {

        return sec_framer_open_qpod(a1, a2, a3, a4);
      }

      return 0;
    }

    return sec_framer_open_chacha20poly1305(a1, a2, a4);
  }
}

BOOL sec_framer_open_aesgcm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v16 = _os_log_pack_size();
    v17 = v20 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    if (*(a1 + 220) == 16)
    {
      v19 = 128;
    }

    else
    {
      v19 = 256;
    }

    __os_log_helper_1_2_10_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0_8_0_8_0(v18, v19, a3, *(a4 + 84), *(a4 + 8) - *a4, *(a4 + 88), *(a4 + 16) - *a4, *(a4 + 87), *(a4 + 112), *(a4 + 224));
    qlog_internal(2, v17, 727);
  }

  v7 = CCCryptorGCMReset();
  v8 = CCCryptorGCMSetIV() | v7;
  v9 = CCCryptorGCMAddAAD();
  v10 = v8 | v9 | MEMORY[0x193B14170](*(a1 + 240), *(a4 + 8), *(a4 + 88), *(a4 + 8));
  v11 = v10 | CCCryptorGCMFinalize();
  if (v11)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v12 = _os_log_pack_size();
      v13 = v20 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446466;
      *(v14 + 4) = "sec_framer_open_aesgcm";
      *(v14 + 12) = 1024;
      *(v14 + 14) = v11;
      qlog_internal(16, v13, 738);
    }

    cc_clear();
  }

  return v11 == 0;
}

uint64_t quic_frame_parse(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v16 = _os_log_pack_size();
    v17 = v27 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_frame_parse";
    v19 = v17;
    v20 = 4500;
LABEL_29:
    qlog_internal(17, v19, v20);
    return 0;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v21 = _os_log_pack_size();
    v22 = v27 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_frame_parse";
    v19 = v22;
    v20 = 4501;
    goto LABEL_29;
  }

  if (a6)
  {
    v12 = *a1;
    if ((*a1 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      v12 = 8;
    }

    else
    {
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) != 0x30)
      {
        v13 = a2 + 133;
        a2[133] = v12;
        if (v12 <= 0xBAB9FF)
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 - 12237272;
        }

        goto LABEL_12;
      }

      v12 = 48;
    }

    v13 = a2 + 133;
    a2[133] = v12;
    v14 = v12;
LABEL_12:
    if (quic_frame_is_type_index_valid(v14, v12))
    {
      result = (quic_frames[6 * v14])(a1, a2, a3, a4, a5, a6);
      if (!a2[134])
      {
        *v13 = 0;
      }
    }

    else
    {
      result = 0;
      a2[134] = 7;
      a2[135] = "unknown frame";
    }

    return result;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v24 = _os_log_pack_size();
    v25 = v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_frame_parse";
    v19 = v25;
    v20 = 4502;
    goto LABEL_29;
  }

  return result;
}

uint64_t quic_frame_parse_common_ack_fields(uint64_t *a1, void *a2, void **a3, unsigned __int16 *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  memset(v112, 0, sizeof(v112));
  v8 = quic_vle_decode(*a3, *a4, a1 + 4);
  if (v8)
  {
    v9 = (*a3 + v8);
    *a3 = v9;
    v10 = *a4 - v8;
    *a4 = v10;
    v11 = quic_vle_decode(v9, v10, a1 + 5);
    if (v11)
    {
      v12 = (*a3 + v11);
      *a3 = v12;
      v13 = *a4 - v11;
      *a4 = v13;
      v14 = quic_vle_decode(v12, v13, a1 + 9);
      if (v14)
      {
        *a3 = (*a3 + v14);
        *a4 -= v14;
        v15 = a1[9];
        if (v15 >= 0x401)
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
          {
            if (a2[139])
            {
              v17 = _os_log_pack_size();
              v111[1] = v111;
              v18 = v111 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v19 = _os_log_pack_fill();
              v20 = a2[139];
              if (quic_cid_describe_state % 3 == 2)
              {
                v21 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v21 = &quic_cid_describe_cid_buf3;
              }

              if (quic_cid_describe_state % 3)
              {
                v22 = v21;
              }

              else
              {
                v22 = &quic_cid_describe_cid_buf1;
              }

              v23 = ++quic_cid_describe_state;
              v24 = *(v20 + 38);
              v25 = 0uLL;
              *(v22 + 25) = 0u;
              v111[0] = a2 + 122;
              *v22 = 0u;
              v22[1] = 0u;
              if (v24)
              {
                if (v24 >= 0x14)
                {
                  v26 = 20;
                }

                else
                {
                  v26 = v24;
                }

                v27 = (v20 + 39);
                do
                {
                  v28 = *v27++;
                  snprintf(v22, 0x29uLL, "%s%02x", v22, v28);
                  --v26;
                }

                while (v26);
                v23 = quic_cid_describe_state;
                v25 = 0uLL;
              }

              v29 = a2[139];
              v30 = v23 % 3;
              if (v23 % 3 == 2)
              {
                v31 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v31 = &quic_cid_describe_cid_buf3;
              }

              quic_cid_describe_state = v23 + 1;
              v32 = *(v29 + 17);
              if (v30)
              {
                v33 = v31;
              }

              else
              {
                v33 = &quic_cid_describe_cid_buf1;
              }

              *v33 = v25;
              v33[1] = v25;
              *(v33 + 25) = v25;
              if (v32)
              {
                if (v32 >= 0x14)
                {
                  v34 = 20;
                }

                else
                {
                  v34 = v32;
                }

                v35 = (v29 + 18);
                do
                {
                  v36 = *v35++;
                  snprintf(v33, 0x29uLL, "%s%02x", v33, v36);
                  --v34;
                }

                while (v34);
              }

              v37 = a1[9];
              *v19 = 136447234;
              *(v19 + 4) = "quic_frame_parse_common_ack_fields";
              *(v19 + 12) = 2082;
              *(v19 + 14) = v111[0];
              *(v19 + 22) = 2082;
              *(v19 + 24) = v22;
              *(v19 + 32) = 2082;
              *(v19 + 34) = v33;
              *(v19 + 42) = 2048;
              *(v19 + 44) = v37;
              qlog_internal(16, v18, 2133);
              return 0;
            }

            else
            {
              return 0;
            }
          }

          return result;
        }

        v47 = v15 + 1;
        a1[9] = v15 + 1;
        a1[11] = v15 + 1;
        v48 = malloc_type_calloc(v15 + 1, 0x10uLL, 0x112F7911uLL);
        if (!v48)
        {
          qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_parse_common_ack_fields", v47, 0x10uLL);
        }

        a1[10] = v48;
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          if (*a1 >> 1 == 6118656)
          {
            snprintf(v112, 0x100uLL, "path_id=%llu largest=%llu delay=%llu usec (raw %llu) count=%llu", a1[3], a1[4], a1[5] << a2[66], a1[5], a1[9] - 1);
          }

          else
          {
            snprintf(v112, 0x100uLL, "largest=%llu delay=%llu usec (raw %llu) count=%llu", a1[4], a1[5] << a2[66], a1[5], a1[9] - 1);
          }
        }

        a1[5] <<= a2[66];
        if (a1[9])
        {
          v49 = a1[4];
          v50 = quic_vle_decode(*a3, *a4, (a1[10] + 8));
          if (!v50)
          {
LABEL_85:
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v71 = _os_log_pack_size();
              v72 = v111 - ((MEMORY[0x1EEE9AC00](v71, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v73 = _os_log_pack_fill();
              *v73 = 136446210;
              *(v73 + 4) = "quic_frame_parse_common_ack_fields";
              qlog_internal(16, v72, 2175);
            }

            a2[134] = 7;
            v74 = "invalid ACK range";
LABEL_110:
            a2[135] = v74;
LABEL_111:
            result = a1[10];
            if (result)
            {
              free(result);
              result = 0;
              a1[10] = 0;
            }

            return result;
          }

          *a3 = (*a3 + v50);
          *a4 -= v50;
          if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
          {
            snprintf(v112, 0x100uLL, "%s range%llu=%llu", v112, 0, *(a1[10] + 8));
          }

          v51 = a1[10];
          if (v49 < *(v51 + 8))
          {
            v53 = 0;
LABEL_128:
            a2[134] = 7;
            a2[135] = "invalid ACK range";
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a2[139])
            {
              v101 = _os_log_pack_size();
              v102 = v111 - ((MEMORY[0x1EEE9AC00](v101, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v103 = _os_log_pack_fill();
              v104 = quic_cid_describe((a2[139] + 38));
              v105 = quic_cid_describe((a2[139] + 17));
              v106 = *(a1[10] + 16 * v53 + 8);
              *v103 = 136447490;
              *(v103 + 4) = "quic_frame_parse_common_ack_fields";
              *(v103 + 12) = 2082;
              *(v103 + 14) = a2 + 122;
              *(v103 + 22) = 2082;
              *(v103 + 24) = v104;
              *(v103 + 32) = 2082;
              *(v103 + 34) = v105;
              *(v103 + 42) = 2048;
              *(v103 + 44) = v49;
              *(v103 + 52) = 2048;
              *(v103 + 54) = v106;
              v93 = v102;
              v94 = 2224;
LABEL_133:
              qlog_internal(16, v93, v94);
            }

            goto LABEL_111;
          }

          if (a1[9] >= 2)
          {
            v52 = 0;
            v53 = 1;
            while (1)
            {
              v54 = quic_vle_decode(*a3, *a4, (v51 + v52 + 16));
              if (!v54)
              {
                if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
                {
                  v81 = _os_log_pack_size();
                  v82 = v111 - ((MEMORY[0x1EEE9AC00](v81, v81) + 15) & 0xFFFFFFFFFFFFFFF0);
                  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v83 = _os_log_pack_fill();
                  *v83 = 136446210;
                  *(v83 + 4) = "quic_frame_parse_common_ack_fields";
                  qlog_internal(16, v82, 2167);
                }

                a2[134] = 7;
                v74 = "invalid ACK gap";
                goto LABEL_110;
              }

              v55 = v54;
              v56 = (*a3 + v54);
              *a3 = v56;
              v57 = *a4 - v55;
              *a4 = v57;
              v58 = a1[10];
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
              {
                snprintf(v112, 0x100uLL, "%s gap%llu=%llu", v112, v53 - 1, *(v58 + v52 + 16));
                v58 = a1[10];
                v56 = *a3;
                v57 = *a4;
              }

              v59 = quic_vle_decode(v56, v57, (v58 + v52 + 24));
              if (!v59)
              {
                goto LABEL_85;
              }

              *a3 = (*a3 + v59);
              *a4 -= v59;
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
              {
                snprintf(v112, 0x100uLL, "%s range%llu=%llu", v112, v53, *(a1[10] + v52 + 24));
              }

              v51 = a1[10];
              v60 = *(v51 + v52 + 16);
              v61 = v49 - *(v51 + v52 + 8);
              v62 = v61 >= v60;
              v63 = v61 - v60;
              if (!v62)
              {
                a2[134] = 7;
                a2[135] = "invalid ACK gap";
                if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a2[139])
                {
                  v87 = _os_log_pack_size();
                  v88 = v111 - ((MEMORY[0x1EEE9AC00](v87, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
                  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v89 = _os_log_pack_fill();
                  v90 = quic_cid_describe((a2[139] + 38));
                  v91 = quic_cid_describe((a2[139] + 17));
                  v92 = *(a1[10] + 16 * v53);
                  *v89 = 136447490;
                  *(v89 + 4) = "quic_frame_parse_common_ack_fields";
                  *(v89 + 12) = 2082;
                  *(v89 + 14) = a2 + 122;
                  *(v89 + 22) = 2082;
                  *(v89 + 24) = v90;
                  *(v89 + 32) = 2082;
                  *(v89 + 34) = v91;
                  *(v89 + 42) = 2048;
                  *(v89 + 44) = v61;
                  *(v89 + 52) = 2048;
                  *(v89 + 54) = v92;
                  v93 = v88;
                  v94 = 2198;
                  goto LABEL_133;
                }

                goto LABEL_111;
              }

              if (v63 <= 1)
              {
                break;
              }

              v49 = v63 - 2;
              if (v63 - 2 < *(v51 + v52 + 24))
              {
                goto LABEL_128;
              }

              ++v53;
              v52 += 16;
              if (v53 >= a1[9])
              {
                goto LABEL_74;
              }
            }

            a2[134] = 7;
            a2[135] = "small ACK gap";
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a2[139])
            {
              v95 = _os_log_pack_size();
              v96 = v111 - ((MEMORY[0x1EEE9AC00](v95, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v97 = _os_log_pack_fill();
              v98 = quic_cid_describe((a2[139] + 38));
              v99 = quic_cid_describe((a2[139] + 17));
              v100 = *(a1[10] + 16 * v53);
              *v97 = 136447490;
              *(v97 + 4) = "quic_frame_parse_common_ack_fields";
              *(v97 + 12) = 2082;
              *(v97 + 14) = a2 + 122;
              *(v97 + 22) = 2082;
              *(v97 + 24) = v98;
              *(v97 + 32) = 2082;
              *(v97 + 34) = v99;
              *(v97 + 42) = 2048;
              *(v97 + 44) = v61;
              *(v97 + 52) = 2048;
              *(v97 + 54) = v100;
              v93 = v96;
              v94 = 2212;
              goto LABEL_133;
            }

            goto LABEL_111;
          }
        }

LABEL_74:
        if (*a1 != 12237313 && *a1 != 3)
        {
LABEL_81:
          if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            return 1;
          }

          v107 = _os_log_pack_size();
          v108 = v111 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v109 = _os_log_pack_fill();
          v110 = quic_frame_type_describe(*a1);
          *v109 = 136446722;
          *(v109 + 4) = "quic_frame_parse_common_ack_fields";
          *(v109 + 12) = 2082;
          *(v109 + 14) = v110;
          *(v109 + 22) = 2082;
          *(v109 + 24) = v112;
          qlog_internal(2, v108, 2248);
          return 1;
        }

        v64 = quic_vle_decode(*a3, *a4, a1 + 6);
        if (v64)
        {
          v65 = (*a3 + v64);
          *a3 = v65;
          v66 = *a4 - v64;
          *a4 = v66;
          v67 = quic_vle_decode(v65, v66, a1 + 7);
          if (v67)
          {
            v68 = (*a3 + v67);
            *a3 = v68;
            v69 = *a4 - v67;
            *a4 = v69;
            v70 = quic_vle_decode(v68, v69, a1 + 8);
            if (v70)
            {
              *a3 = (*a3 + v70);
              *a4 -= v70;
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
              {
                snprintf(v112, 0x100uLL, "%s ECT(0)=%llu ECT(1)=%llu CE=%llu", v112, a1[6], a1[7], a1[8]);
              }

              goto LABEL_81;
            }

            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v84 = _os_log_pack_size();
              v85 = v111 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v86 = _os_log_pack_fill();
              *v86 = 136446210;
              *(v86 + 4) = "quic_frame_parse_common_ack_fields";
              qlog_internal(16, v85, 2239);
            }

            a2[134] = 7;
            v74 = "invalid ACK CE count";
          }

          else
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v78 = _os_log_pack_size();
              v79 = v111 - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v80 = _os_log_pack_fill();
              *v80 = 136446210;
              *(v80 + 4) = "quic_frame_parse_common_ack_fields";
              qlog_internal(16, v79, 2236);
            }

            a2[134] = 7;
            v74 = "invalid ACK ECT(1) count";
          }
        }

        else
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v75 = _os_log_pack_size();
            v76 = v111 - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v77 = _os_log_pack_fill();
            *v77 = 136446210;
            *(v77 + 4) = "quic_frame_parse_common_ack_fields";
            qlog_internal(16, v76, 2233);
          }

          a2[134] = 7;
          v74 = "invalid ACK ECT(0) count";
        }

        goto LABEL_110;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v44 = _os_log_pack_size();
        v45 = v111 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v46 = _os_log_pack_fill();
        *v46 = 136446210;
        *(v46 + 4) = "quic_frame_parse_common_ack_fields";
        qlog_internal(16, v45, 2130);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid ACK range count";
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v41 = _os_log_pack_size();
        v42 = v111 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v43 = _os_log_pack_fill();
        *v43 = 136446210;
        *(v43 + 4) = "quic_frame_parse_common_ack_fields";
        qlog_internal(16, v42, 2129);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid ACK delay";
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v38 = _os_log_pack_size();
      v39 = v111 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v40 = _os_log_pack_fill();
      *v40 = 136446210;
      *(v40 + 4) = "quic_frame_parse_common_ack_fields";
      qlog_internal(16, v39, 2128);
    }

    result = 0;
    a2[134] = 7;
    a2[135] = "invalid ACK largest";
  }

  return result;
}

void quic_packet_parser_describe_header(unsigned __int8 **a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v1 = qlog_datapath_enabled;
  v2 = qlog_nwlog_enabled;
  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
  {
    return;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *__str = 0u;
  v52 = 0u;
  v3 = *(a1 + 58);
  v4 = a1;
  if ((v3 & 0x100) != 0)
  {
    if (*(a1 + 47))
    {
      if (*a1[12] == 1)
      {
        v18 = "v1";
      }

      else
      {
        v18 = quic_version_describe_buffer;
        snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", *a1[12]);
      }

      snprintf(__str, 0x80uLL, "%s%s%s", &unk_193210B0B, __str, v18);
      a1 = v4;
      if (*(v4 + 47) >= 2u)
      {
        v27 = 1;
        do
        {
          v28 = "v1";
          if (*&a1[12][4 * v27] != 1)
          {
            snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", *&a1[12][4 * v27]);
            v28 = quic_version_describe_buffer;
          }

          snprintf(__str, 0x80uLL, "%s%s%s", ", ", __str, v28);
          ++v27;
          a1 = v4;
        }

        while (v27 < *(v4 + 47));
      }

      v2 = qlog_nwlog_enabled;
      v1 = qlog_datapath_enabled;
    }

    if (v1 & 1) != 0 || (v2)
    {
      if (((qlog_debug_enabled | v2) & 1) != 0 || (v29 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v4, v29))
      {
        v30 = a1;
        v31 = _os_log_pack_size();
        v32 = &__str[-((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v33 = _os_log_pack_fill();
        v34 = quic_cid_describe(v30 + 40);
        v35 = quic_cid_describe(v30 + 61);
        *v33 = 136446978;
        *(v33 + 4) = "quic_packet_parser_describe_header";
        *(v33 + 12) = 2082;
        *(v33 + 14) = v34;
        *(v33 + 22) = 2082;
        *(v33 + 24) = v35;
        *(v33 + 32) = 2082;
        *(v33 + 34) = __str;
        v16 = v32;
        v17 = 186;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v5 = *a1;
    if ((v3 & 1) == 0)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0)
      {
        v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG);
        a1 = v4;
        if (!v6)
        {
          return;
        }
      }

      v7 = a1;
      v8 = _os_log_pack_size();
      v9 = &__str[-((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *v5;
      v12 = (v11 >> 2) & 1;
      v13 = (v11 >> 5) & 1;
      v14 = quic_cid_describe(v7 + 40);
      v15 = *(v7 + 14);
      *v10 = 136447234;
      *(v10 + 4) = "quic_packet_parser_describe_header";
      *(v10 + 12) = 1024;
      *(v10 + 14) = v12;
      *(v10 + 18) = 1024;
      *(v10 + 20) = v13;
      *(v10 + 24) = 2082;
      *(v10 + 26) = v14;
      *(v10 + 34) = 2048;
      *(v10 + 36) = v15;
      v16 = v9;
      v17 = 218;
      goto LABEL_39;
    }

    v19 = (*v5 >> 4) & 3;
    if (v19)
    {
      if (v19 == 3)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0)
        {
          v20 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG);
          a1 = v4;
          if (!v20)
          {
            return;
          }
        }

        v21 = a1;
        v22 = _os_log_pack_size();
        v23 = &__str[-((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v24 = _os_log_pack_fill();
        v25 = *(v21 + 27);
        if (v25 == 1)
        {
          v26 = "v1";
        }

        else
        {
          v26 = quic_version_describe_buffer;
          snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", v25);
        }

        v45 = quic_cid_describe(v4 + 40);
        v46 = quic_cid_describe(v4 + 61);
        v47 = *(v4 + 47);
        *v24 = 136447234;
        *(v24 + 4) = "quic_packet_parser_describe_header";
        *(v24 + 12) = 2082;
        *(v24 + 14) = v26;
        *(v24 + 22) = 2082;
        *(v24 + 24) = v45;
        *(v24 + 32) = 2082;
        *(v24 + 34) = v46;
        *(v24 + 42) = 1024;
        *(v24 + 44) = v47;
        v16 = v23;
        v17 = 197;
LABEL_39:
        qlog_internal(2, v16, v17);
        return;
      }
    }

    else
    {
      snprintf(__str, 0x80uLL, "token len %hu, ", *(a1 + 47));
      v2 = qlog_nwlog_enabled;
      v1 = qlog_datapath_enabled;
    }

    v36 = v4;
    if ((v1 & 1) != 0 || v2)
    {
      if (((qlog_debug_enabled | v2) & 1) != 0 || (v37 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v36 = v4, v37))
      {
        v38 = v36;
        v39 = _os_log_pack_size();
        v40 = &__str[-((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v41 = _os_log_pack_fill();
        v42 = off_1E73D26A0[(*v5 >> 4) & 3];
        v43 = *(v38 + 27);
        if (v43 == 1)
        {
          v44 = "v1";
        }

        else
        {
          v44 = quic_version_describe_buffer;
          snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", v43);
        }

        v48 = v4;
        v49 = quic_cid_describe(v4 + 40);
        v50 = quic_cid_describe(v48 + 61);
        __os_log_helper_1_2_8_8_34_8_34_8_34_8_34_8_34_4_0_8_32_8_0(v41, v42, v44, v49, v50, *(v48 + 44), __str, *(v48 + 14));
        v16 = v40;
        v17 = 210;
        goto LABEL_39;
      }
    }
  }
}

uint64_t quic_vle_decode(void *a1, unsigned int a2, void *a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v6 = _os_log_pack_size();
    v7 = v27 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_vle_decode";
    v9 = 17;
    v10 = v7;
    v11 = 70;
    goto LABEL_27;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v12 = _os_log_pack_size();
    v13 = v27 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_vle_decode";
    v9 = 17;
    v10 = v13;
    v11 = 71;
    goto LABEL_27;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v15 = _os_log_pack_size();
    v16 = v27 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_vle_decode";
    v9 = 17;
    v10 = v16;
    v11 = 72;
    goto LABEL_27;
  }

  v3 = *a1;
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 != 2)
    {
      if (a2 <= 7)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
        {
          v24 = _os_log_pack_size();
          v25 = v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v26 = _os_log_pack_fill();
          *v26 = 136446210;
          *(v26 + 4) = "quic_vle_decode";
          v9 = 16;
          v10 = v25;
          v11 = 103;
          goto LABEL_27;
        }
      }

      else
      {
        *a3 = bswap64(*a1 & 0xFFFFFFFFFFFFFF3FLL);
        return 8;
      }

      return result;
    }

    if (a2 > 3)
    {
      *a3 = bswap32(*a1 & 0xFFFFFF7F);
      return 4;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v18 = _os_log_pack_size();
    v19 = v27 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_vle_decode";
    v9 = 16;
    v10 = v19;
    v11 = 95;
LABEL_27:
    qlog_internal(v9, v10, v11);
    return 0;
  }

  if (!v4)
  {
    *a3 = v3;
    return 1;
  }

  if (a2 != 1)
  {
    *a3 = bswap32(*a1 & 0xFFBF) >> 16;
    return 2;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
  {
    v21 = _os_log_pack_size();
    v22 = v27 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_vle_decode";
    v9 = 16;
    v10 = v22;
    v11 = 87;
    goto LABEL_27;
  }

  return result;
}

BOOL quic_packet_parser_open(uint64_t a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 600);
  if (v3 >= 4)
  {
    v4 = *(a2 + 82);
    if (v4 >= 4 && v3 != v4)
    {
      v16 = a2;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v17 = *(a1 + 600), v18 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v19 = v17, v18))
      {
        v20 = _os_log_pack_size();
        v21 = v24 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v22 = _os_log_pack_fill();
        if (*(v16 + 82) - 1 > 4)
        {
          v23 = "???";
        }

        else
        {
          v23 = off_1E73D2630[(*(v16 + 82) - 1)];
        }

        *v22 = 136446466;
        *(v22 + 4) = "quic_packet_parser_open";
        *(v22 + 12) = 2082;
        *(v22 + 14) = v23;
        qlog_internal(2, v21, 144);
        v19 = *(a1 + 600);
      }

      quic_protector_traffic_update(*(a1 + 568), v19);
      a2 = v16;
    }
  }

  result = quic_protector_open(*(a1 + 568), a2);
  if (!result)
  {
    v7 = *(a1 + 1216);
    v8 = __CFADD__(v7, 1);
    v9 = v7 + 1;
    v10 = v8;
    *(a1 + 1216) = v9;
    if (v10 << 63 >> 63 != v10)
    {
      v11 = result;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v12 = _os_log_pack_size();
        v13 = v24 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v14 = _os_log_pack_fill();
        v15 = *(a1 + 1216);
        *v14 = 136447234;
        *(v14 + 4) = "quic_packet_parser_open";
        *(v14 + 12) = 2082;
        *(v14 + 14) = "conn->statistics.decryption_failures";
        *(v14 + 22) = 2048;
        *(v14 + 24) = v15 - 1;
        *(v14 + 32) = 2048;
        *(v14 + 34) = 1;
        *(v14 + 42) = 2048;
        *(v14 + 44) = v15;
        qlog_internal(17, v13, 158);
      }

      *(a1 + 1216) = -1;
      return v11;
    }
  }

  return result;
}

BOOL quic_protector_open(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v9 = _os_log_pack_size();
    v10 = &v22[-((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_protector_open";
    v12 = v10;
    v13 = 1741;
LABEL_31:
    qlog_internal(17, v12, v13);
    return 0;
  }

  if (!*(a2 + 82))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = _os_log_pack_size();
    v15 = &v22[-((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_protector_open";
    v12 = v15;
    v13 = 1745;
    goto LABEL_31;
  }

  v3 = (a1 + 264 * *(a2 + 82));
  if ((v3[115].i8[0] & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v17 = _os_log_pack_size();
    v18 = &v22[-((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_protector_open";
    v12 = v18;
    v13 = 1752;
    goto LABEL_31;
  }

  v4 = v3 + 99;
  if (__quic_signpost_is_enabled__quic_signposts_once_629[0] != -1)
  {
    dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_629, &__block_literal_global_630);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_631 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v5 = v4[14].u8[0];
  v6 = v4[13].u8[14];
  if (v4[14].i8[4] == 4)
  {
    quic_protector_prepare_qpod_nonce(v22, v5, v4 + 5, v6, *(a2 + 112));
  }

  else
  {
    quic_protector_prepare_nonce(v22, v5, v4 + 5, v6, *(a2 + 224), *(a2 + 112));
  }

  result = sec_framer_open(v4, v22, v4[14].u8[0], a2);
  if (__quic_signpost_is_enabled__quic_signposts_once_629[0] != -1)
  {
    v20 = result;
    dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_629, &__block_literal_global_630);
    result = v20;
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_631 == 1)
  {
    v8 = result;
    if (kdebug_is_enabled())
    {
      kdebug_trace();
    }

    return v8;
  }

  return result;
}

void sec_framer_process_header_protection(uint64_t a1, _BYTE *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a1 + 232))
    {
      v2 = 15;
    }

    else
    {
      v2 = 31;
    }

    **a1 ^= *a2 & v2;
    if (*(a1 + 85))
    {
      if (*(a1 + 85) > 4u)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v3 = _os_log_pack_size();
          v4 = v12 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v5 = _os_log_pack_fill();
          *v5 = 136446210;
          *(v5 + 4) = "sec_framer_process_header_protection";
          v6 = v4;
          v7 = 398;
LABEL_19:
          qlog_internal(17, v6, v7);
          return;
        }

        return;
      }
    }

    else
    {
      *(a1 + 85) = (**a1 & 3) + 1;
    }

    v8 = 0;
    do
    {
      *(*(a1 + 24) + v8) ^= a2[v8 + 1];
      ++v8;
    }

    while (v8 < *(a1 + 85));
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "sec_framer_process_header_protection";
    v6 = v10;
    v7 = 385;
    goto LABEL_19;
  }
}

void quic_protector_prepare_nonce(__int8 *a1, size_t a2, int8x16_t *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v46[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v28 = _os_log_pack_size();
    v29 = v46 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_protector_prepare_nonce";
    v31 = v29;
    v32 = 1530;
LABEL_46:
    qlog_internal(17, v31, v32);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v33 = _os_log_pack_size();
    v34 = v46 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_protector_prepare_nonce";
    v31 = v34;
    v32 = 1531;
    goto LABEL_46;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v36 = _os_log_pack_size();
    v37 = v46 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_protector_prepare_nonce";
    v31 = v37;
    v32 = 1532;
    goto LABEL_46;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = v46 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_protector_prepare_nonce";
    v31 = v40;
    v32 = 1533;
    goto LABEL_46;
  }

  if (a2 != a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v43 = _os_log_pack_size();
    v44 = v46 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446722;
    *(v45 + 4) = "quic_protector_prepare_nonce";
    *(v45 + 12) = 2048;
    *(v45 + 14) = a2;
    *(v45 + 22) = 2048;
    *(v45 + 24) = a4;
    v31 = v44;
    v32 = 1538;
    goto LABEL_46;
  }

  bzero(a1, a2);
  if (a5 != -1)
  {
    if (HIDWORD(a5))
    {
      qlog_abort_internal("%s path_id %llx greater than 32 bits, can't derive nonce", "quic_protector_prepare_nonce", a5);
    }

    *a1 |= BYTE3(a5);
    a1[1] |= BYTE2(a5);
    a1[2] |= BYTE1(a5);
    a1[3] |= a5;
  }

  v11 = vdupq_n_s64(a6);
  v12 = vmovn_s64(vshlq_u64(v11, xmmword_193207810));
  v13 = vmovn_s64(vshlq_u64(v11, xmmword_193207800));
  *v11.i8 = vmovn_s64(vshlq_u64(v11, xmmword_193207820));
  v12.i8[1] = v12.i8[4];
  v12.i8[2] = v13.i8[0];
  v12.i8[3] = v13.i8[4];
  v12.i8[4] = v11.i8[0];
  v12.i8[5] = v11.i8[4];
  v12.i8[6] = BYTE1(a6);
  v12.i8[7] = a6;
  *(a1 + 4) = vorr_s8(*(a1 + 4), v12);
  if (a2 < 8 || &a3->i8[a2] > a1 && &a1[a2] > a3)
  {
    v14 = 0;
    goto LABEL_13;
  }

  if (a2 >= 0x20)
  {
    v14 = a2 & 0xFFFFFFFFFFFFFFE0;
    v19 = (a1 + 16);
    v20 = a3 + 1;
    v21 = a2 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v22 = veorq_s8(*v19, *v20);
      v19[-1] = veorq_s8(v19[-1], v20[-1]);
      *v19 = v22;
      v19 += 2;
      v20 += 2;
      v21 -= 32;
    }

    while (v21);
    if (v14 == a2)
    {
      return;
    }

    if ((a2 & 0x18) == 0)
    {
LABEL_13:
      v15 = a2 - v14;
      v16 = &a1[v14];
      v17 = &a3->i8[v14];
      do
      {
        v18 = *v17++;
        *v16++ ^= v18;
        --v15;
      }

      while (v15);
      return;
    }
  }

  else
  {
    v14 = 0;
  }

  v23 = v14;
  v14 = a2 & 0xFFFFFFFFFFFFFFF8;
  v24 = v23 - (a2 & 0xFFFFFFFFFFFFFFF8);
  v25 = &a1[v23];
  v26 = &a3->i8[v23];
  do
  {
    v27 = *v26++;
    *v25 = veor_s8(*v25, v27);
    ++v25;
    v24 += 8;
  }

  while (v24);
  if (v14 != a2)
  {
    goto LABEL_13;
  }
}

uint64_t quic_conn_process_lh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a1 + 477);
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      *(a1 + 413) = *(a3 + 61);
      v34 = *(a3 + 78);
      *(a1 + 414) = *(a3 + 62);
      *(a1 + 430) = v34;
      if (!*(a1 + 434))
      {
        *(a1 + 434) = *(a3 + 40);
        v35 = *(a3 + 57);
        *(a1 + 435) = *(a3 + 41);
        *(a1 + 451) = v35;
      }

      v106 = -1;
      if (nw_protocol_instance_get_flow_for_key() == *MEMORY[0x1E6977ED8])
      {
        quic_crypto_tls_start(*a1, *(a1 + 368), *(a1 + 1380) & 1);
        quic_path_assign_dcid(a2, a3 + 61, a1);
        if (*(a2 + 17))
        {
          quic_conn_new_dcid(a1, 0, (a2 + 17), 0);
          quic_conn_mark_dcid_used(a1);
        }
      }

      goto LABEL_137;
    }

    if (v7 == 6)
    {
      if ((*v6 & 0x30) != 0)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
        {
          goto LABEL_117;
        }

        v40 = _os_log_pack_size();
        v105 = &v104;
        v41 = &v104 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v42 = _os_log_pack_fill();
        v43 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v44 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v44 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v45 = v44;
        }

        else
        {
          v45 = &quic_cid_describe_cid_buf1;
        }

        v46 = ++quic_cid_describe_state;
        v47 = *(v43 + 38);
        v48 = 0uLL;
        *(v45 + 25) = 0u;
        v104 = a1 + 976;
        *v45 = 0u;
        v45[1] = 0u;
        if (v47)
        {
          if (v47 >= 0x14)
          {
            v49 = 20;
          }

          else
          {
            v49 = v47;
          }

          v50 = (v43 + 39);
          do
          {
            v51 = *v50++;
            snprintf(v45, 0x29uLL, "%s%02x", v45, v51);
            --v49;
          }

          while (v49);
          v46 = quic_cid_describe_state;
          v48 = 0uLL;
        }

        v52 = *(a1 + 1112);
        v53 = v46 % 3;
        if (v46 % 3 == 2)
        {
          v54 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v54 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v46 + 1;
        v55 = *(v52 + 17);
        if (v53)
        {
          v56 = v54;
        }

        else
        {
          v56 = &quic_cid_describe_cid_buf1;
        }

        *v56 = v48;
        v56[1] = v48;
        *(v56 + 25) = v48;
        if (v55)
        {
          if (v55 >= 0x14)
          {
            v57 = 20;
          }

          else
          {
            v57 = v55;
          }

          v58 = (v52 + 18);
          do
          {
            v59 = *v58++;
            snprintf(v56, 0x29uLL, "%s%02x", v56, v59);
            --v57;
          }

          while (v57);
        }

        v60 = off_1E73D26A0[(*v6 >> 4) & 3];
        *v42 = 136447234;
        *(v42 + 4) = "quic_conn_process_lh";
        *(v42 + 12) = 2082;
        *(v42 + 14) = v104;
        *(v42 + 22) = 2082;
        *(v42 + 24) = v45;
        *(v42 + 32) = 2082;
        *(v42 + 34) = v56;
        *(v42 + 42) = 2082;
        *(v42 + 44) = v60;
        v28 = v41;
        v29 = 3218;
        goto LABEL_116;
      }

      quic_fsm_conn_change(a1, 8u);
      *(a1 + 600) = 2;
      quic_path_assign_dcid(a2, a3 + 61, a1);
      goto LABEL_137;
    }

    if (v7 != 12)
    {
      goto LABEL_137;
    }

LABEL_39:
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v30 = _os_log_pack_size();
      v31 = &v104 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = _os_log_pack_fill();
      v33 = *(a1 + 477);
      *v32 = 136446466;
      *(v32 + 4) = "quic_conn_process_lh";
      *(v32 + 12) = 1024;
      *(v32 + 14) = v33;
      qlog_internal(17, v31, 3235);
    }

    goto LABEL_137;
  }

  if (!*(a1 + 477))
  {
    goto LABEL_39;
  }

  if (v7 == 1)
  {
    if ((*(a1 + 1380) & 1) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v36 = _os_log_pack_size();
        v37 = &v104 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v38 = _os_log_pack_fill();
        *v38 = 136446210;
        *(v38 + 4) = "quic_conn_process_lh";
        qlog_internal(17, v37, 3121);
      }

      goto LABEL_53;
    }

    if ((*v6 & 0x30) != 0)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
      {
        goto LABEL_117;
      }

      v61 = _os_log_pack_size();
      v105 = &v104;
      v62 = &v104 - ((MEMORY[0x1EEE9AC00](v61, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v63 = _os_log_pack_fill();
      v64 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v65 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v65 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v66 = v65;
      }

      else
      {
        v66 = &quic_cid_describe_cid_buf1;
      }

      v67 = ++quic_cid_describe_state;
      v68 = *(v64 + 38);
      v69 = 0uLL;
      *(v66 + 25) = 0u;
      v104 = a1 + 976;
      *v66 = 0u;
      v66[1] = 0u;
      if (v68)
      {
        if (v68 >= 0x14)
        {
          v70 = 20;
        }

        else
        {
          v70 = v68;
        }

        v71 = (v64 + 39);
        do
        {
          v72 = *v71++;
          snprintf(v66, 0x29uLL, "%s%02x", v66, v72);
          --v70;
        }

        while (v70);
        v67 = quic_cid_describe_state;
        v69 = 0uLL;
      }

      v73 = *(a1 + 1112);
      v74 = v67 % 3;
      if (v67 % 3 == 2)
      {
        v75 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v75 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v67 + 1;
      v76 = *(v73 + 17);
      if (v74)
      {
        v77 = v75;
      }

      else
      {
        v77 = &quic_cid_describe_cid_buf1;
      }

      *v77 = v69;
      v77[1] = v69;
      *(v77 + 25) = v69;
      if (v76)
      {
        if (v76 >= 0x14)
        {
          v78 = 20;
        }

        else
        {
          v78 = v76;
        }

        v79 = (v73 + 18);
        do
        {
          v80 = *v79++;
          snprintf(v77, 0x29uLL, "%s%02x", v77, v80);
          --v78;
        }

        while (v78);
      }

      *v63 = 136446978;
      *(v63 + 4) = "quic_conn_process_lh";
      *(v63 + 12) = 2082;
      *(v63 + 14) = v104;
      *(v63 + 22) = 2082;
      *(v63 + 24) = v66;
      *(v63 + 32) = 2082;
      *(v63 + 34) = v77;
      v28 = v62;
      v29 = 3127;
      goto LABEL_116;
    }

    v99 = *(a3 + 108);
    *(a1 + 524) = v99;
    quic_packet_builder_set_version(*(a1 + 560), v99);
    quic_fsm_conn_change(a1, 4u);
    *(a1 + 600) = 2;
  }

  else if (v7 == 2)
  {
    if ((*v6 & 0x30) != 0)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
      {
        goto LABEL_117;
      }

      v8 = _os_log_pack_size();
      v105 = &v104;
      v9 = &v104 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v12 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v12 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v13 = v12;
      }

      else
      {
        v13 = &quic_cid_describe_cid_buf1;
      }

      v14 = ++quic_cid_describe_state;
      v15 = *(v11 + 38);
      v16 = 0uLL;
      *(v13 + 25) = 0u;
      v104 = a1 + 976;
      *v13 = 0u;
      v13[1] = 0u;
      if (v15)
      {
        if (v15 >= 0x14)
        {
          v17 = 20;
        }

        else
        {
          v17 = v15;
        }

        v18 = (v11 + 39);
        do
        {
          v19 = *v18++;
          snprintf(v13, 0x29uLL, "%s%02x", v13, v19);
          --v17;
        }

        while (v17);
        v14 = quic_cid_describe_state;
        v16 = 0uLL;
      }

      v20 = *(a1 + 1112);
      v21 = v14 % 3;
      if (v14 % 3 == 2)
      {
        v22 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v22 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v14 + 1;
      v23 = *(v20 + 17);
      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = &quic_cid_describe_cid_buf1;
      }

      *v24 = v16;
      v24[1] = v16;
      *(v24 + 25) = v16;
      if (v23)
      {
        if (v23 >= 0x14)
        {
          v25 = 20;
        }

        else
        {
          v25 = v23;
        }

        v26 = (v20 + 18);
        do
        {
          v27 = *v26++;
          snprintf(v24, 0x29uLL, "%s%02x", v24, v27);
          --v25;
        }

        while (v25);
      }

      *v10 = 136446978;
      *(v10 + 4) = "quic_conn_process_lh";
      *(v10 + 12) = 2082;
      *(v10 + 14) = v104;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v13;
      *(v10 + 32) = 2082;
      *(v10 + 34) = v24;
      v28 = v9;
      v29 = 3170;
LABEL_116:
      qlog_internal(16, v28, v29);
LABEL_117:
      result = 0;
      *(a1 + 1072) = 10;
      return result;
    }

    v81 = *(a3 + 108);
    if (v81 == *(a1 + 1376))
    {
      *(a1 + 524) = v81;
      quic_packet_builder_set_version(*(a1 + 560), v81);
      quic_fsm_conn_change(a1, 4u);
      *(a1 + 600) = 2;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v82 = _os_log_pack_size();
        v83 = &v104 - ((MEMORY[0x1EEE9AC00](v82, v82) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v84 = _os_log_pack_fill();
        v85 = quic_cid_describe((*(a1 + 1112) + 38));
        v86 = quic_cid_describe((*(a1 + 1112) + 17));
        v87 = quic_cid_describe((a3 + 40));
        *v84 = 136447234;
        *(v84 + 4) = "quic_conn_process_lh";
        *(v84 + 12) = 2082;
        *(v84 + 14) = a1 + 976;
        *(v84 + 22) = 2082;
        *(v84 + 24) = v85;
        *(v84 + 32) = 2082;
        *(v84 + 34) = v86;
        *(v84 + 42) = 2082;
        *(v84 + 44) = v87;
        qlog_internal(0, v83, 3182);
      }

      quic_path_set_scid(a2, a3 + 40, a1);
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v88 = _os_log_pack_size();
        v89 = &v104 - ((MEMORY[0x1EEE9AC00](v88, v88) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v90 = _os_log_pack_fill();
        v91 = quic_cid_describe((*(a1 + 1112) + 38));
        v92 = quic_cid_describe((*(a1 + 1112) + 17));
        v93 = quic_cid_describe((a3 + 61));
        *v90 = 136447234;
        *(v90 + 4) = "quic_conn_process_lh";
        *(v90 + 12) = 2082;
        *(v90 + 14) = a1 + 976;
        *(v90 + 22) = 2082;
        *(v90 + 24) = v91;
        *(v90 + 32) = 2082;
        *(v90 + 34) = v92;
        *(v90 + 42) = 2082;
        *(v90 + 44) = v93;
        qlog_internal(0, v89, 3185);
      }

      quic_path_assign_dcid(a2, a3 + 61, a1);
      quic_protector_derive_initial_secrets(*(a1 + 568), (a3 + 40));
      goto LABEL_137;
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v94 = _os_log_pack_size();
      v95 = &v104 - ((MEMORY[0x1EEE9AC00](v94, v94) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v96 = _os_log_pack_fill();
      v97 = quic_cid_describe((*(a1 + 1112) + 38));
      v98 = quic_cid_describe((*(a1 + 1112) + 17));
      *v96 = 136446978;
      *(v96 + 4) = "quic_conn_process_lh";
      *(v96 + 12) = 2082;
      *(v96 + 14) = a1 + 976;
      *(v96 + 22) = 2082;
      *(v96 + 24) = v97;
      *(v96 + 32) = 2082;
      *(v96 + 34) = v98;
      qlog_internal(16, v95, 3192);
    }

LABEL_53:
    result = 0;
    *(a1 + 1072) = 1;
    return result;
  }

LABEL_137:
  v100 = *(a1 + 1380);
  if ((v100 & 0x800) == 0 && (*v6 & 0x30) == 0x20)
  {
    *(a1 + 1380) = v100 | 0x800;
    if ((v100 & 0x401) == 1)
    {
      quic_conn_discard_initial_keys(a1);
    }
  }

  quic_ack_append(*(a1 + 960), *(a3 + 83), *(a3 + 224), *(a3 + 112));
  v101 = *(a1 + 1312);
  if (v101)
  {
    ++*(v101 + 184);
  }

  ++*(a1 + 1144);
  if (a2)
  {
    v102 = *(a3 + 90);
    *(a1 + 1152) += v102;
    result = 1;
    v103.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v103.i64[1] = v102;
    *(a2 + 328) = vaddq_s64(*(a2 + 328), v103);
  }

  else
  {
    *(a1 + 1152) += *(a3 + 90);
    return 1;
  }

  return result;
}

void quic_path_assign_dcid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v25 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_path_assign_dcid";
    v12 = v10;
    v13 = 422;
LABEL_25:
    qlog_internal(17, v12, v13);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v25 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_path_assign_dcid";
    v12 = v15;
    v13 = 423;
    goto LABEL_25;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = v25 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_path_assign_dcid";
    v12 = v18;
    v13 = 424;
    goto LABEL_25;
  }

  *(a1 + 17) = *a2;
  v5 = (a1 + 17);
  v6 = *(a2 + 1);
  *(a1 + 34) = *(a2 + 17);
  *(a1 + 18) = v6;
  if (*(a1 + 17) && (v7 = quic_cid_array_find_by_cid(*(a3 + 384), a2)) != 0)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 232) = v8;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v20 = _os_log_pack_size();
    v21 = v25 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    v23 = quic_cid_describe(v5);
    v24 = *(a1 + 232);
    *v22 = 136446978;
    *(v22 + 4) = "quic_path_assign_dcid";
    *(v22 + 12) = 2082;
    *(v22 + 14) = v23;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v24;
    *(v22 + 32) = 2048;
    *(v22 + 34) = a1;
    qlog_internal(2, v21, 442);
  }

  if (quic_migration_multipath_ready(*(a3 + 1120)))
  {
    quic_recovery_path_state_reset(a3, a1);
    quic_ecn_path_state_reset(*(a1 + 320));
  }
}