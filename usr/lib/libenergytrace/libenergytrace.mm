uint64_t entr_act_begin(unsigned int a1, int a2, void *ptr, int a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v13 = 0;
  signpost_params = _get_signpost_params(a1, ptr, &v13);
  v9 = v13;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpost_params;
    if (os_signpost_enabled(signpost_params))
    {
      *buf = 67240704;
      v15 = a2;
      v16 = 1026;
      v17 = a4;
      v18 = 2050;
      v19 = a5;
      _os_signpost_emit_with_name_impl(&dword_29875D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "EnTr_Activation_Begin", "act_opcode = %{public, signpost.description:attribute}u act_quality = %{public}u act_value = %{public}lld ", buf, 0x18u);
    }
  }

  result = kdebug_trace();
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _get_signpost_params(unsigned int a1, void *ptr, os_signpost_id_t *a3)
{
  if (a1 >= 7)
  {
    v4 = 0;
    _get_signpost_params_handle = 0;
    if (!a3)
    {
      return _get_signpost_params_handle;
    }

    goto LABEL_13;
  }

  if (_get_signpost_params_initGate != -1)
  {
    _get_signpost_params_cold_1();
  }

  v7 = _get_signpost_params_handles[a1];
  _get_signpost_params_handle = v7;
  if (a1 == 3)
  {
    v4 = os_signpost_id_make_with_pointer(v7, ptr);
    if (!a3)
    {
      return _get_signpost_params_handle;
    }

    goto LABEL_13;
  }

  if (ptr)
  {
    v4 = ptr;
  }

  else
  {
    v4 = -1;
  }

  if (a3)
  {
LABEL_13:
    *a3 = v4;
  }

  return _get_signpost_params_handle;
}

uint64_t entr_act_end(unsigned int a1, void *ptr, uint64_t a3, int a4, uint64_t a5)
{
  v7 = ptr;
  v20 = *MEMORY[0x29EDCA608];
  v13 = 0;
  signpost_params = _get_signpost_params(a1, ptr, &v13);
  v9 = v13;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpost_params;
    if (os_signpost_enabled(signpost_params))
    {
      *buf = 67240704;
      v15 = v7;
      v16 = 1026;
      v17 = a4;
      v18 = 2050;
      v19 = a5;
      _os_signpost_emit_with_name_impl(&dword_29875D000, v10, OS_SIGNPOST_INTERVAL_END, v9, "EnTr_Activation_End", "act_opcode = %{public, signpost.description:attribute}u act_quality = %{public}u act_value = %{public}lld ", buf, 0x18u);
    }
  }

  result = kdebug_trace();
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

os_log_t ___get_signpost_params_block_invoke()
{
  qword_2A18984C8 = os_log_create("com.apple.EnergyTracing", "EnTr_AppState");
  qword_2A18984D0 = os_log_create("com.apple.EnergyTracing", "EnTr_SysPower");
  qword_2A18984D8 = os_log_create("com.apple.EnergyTracing", "EnTr_Networking");
  result = os_log_create("com.apple.EnergyTracing", "EnTr_Spatial");
  qword_2A18984E0 = result;
  return result;
}

uint64_t entr_act_modify(unsigned int a1, int a2, void *ptr, int a4, uint64_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v13 = 0;
  signpost_params = _get_signpost_params(a1, ptr, &v13);
  v9 = v13;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpost_params;
    if (os_signpost_enabled(signpost_params))
    {
      *buf = 67240704;
      v15 = a2;
      v16 = 1026;
      v17 = a4;
      v18 = 2050;
      v19 = a5;
      _os_signpost_emit_with_name_impl(&dword_29875D000, v10, OS_SIGNPOST_EVENT, v9, "EnTr_Activation_Modify", "act_opcode = %{public, signpost.description:attribute}u act_quality = %{public}u act_value = %{public}lld ", buf, 0x18u);
    }
  }

  result = kdebug_trace();
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t entr_shouldtrace()
{
  if (MEMORY[0xFFFFFC100])
  {
    return 1;
  }

  v1 = 6;
  do
  {
    v2 = v1 - 1;
    v0 = v1 != 0;
    if (!v1)
    {
      break;
    }

    signpost_params = _get_signpost_params(v1, 0, 0);
    v4 = os_signpost_enabled(signpost_params);
    v1 = v2;
  }

  while (!v4);
  return v0;
}

uint64_t entr_act_associate(unsigned int a1, int a2, void *ptr, int a4, int a5, uint64_t a6)
{
  v27 = *MEMORY[0x29EDCA608];
  v16 = 0;
  signpost_params = _get_signpost_params(a1, ptr, &v16);
  v12 = v16;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = signpost_params;
    if (os_signpost_enabled(signpost_params))
    {
      *buf = 67241216;
      v18 = a1;
      v19 = 1026;
      v20 = a2;
      v21 = 1026;
      v22 = a4;
      v23 = 1026;
      v24 = a5;
      v25 = 2050;
      v26 = a6;
      _os_signpost_emit_with_name_impl(&dword_29875D000, v13, OS_SIGNPOST_EVENT, v12, "EnTr_Activation_Associate", "parent_component = %{public}u                                              parent_opcode = %{public, signpost.description:attribute}u sub_component = %{public}u sub_opcode = %{public}u sub_activation_id = %{public}lu", buf, 0x24u);
    }
  }

  result = kdebug_trace();
  v15 = *MEMORY[0x29EDCA608];
  return result;
}