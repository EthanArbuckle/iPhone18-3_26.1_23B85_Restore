uint64_t ctrl_set_color_range(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v19) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_noise_sensitivity(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v13) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_min_gf_interval(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v15) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_max_gf_interval(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  LODWORD(v16) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_svc_ref_frame_config(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1312);
  v3 = v2 + 231555;
  v4 = *a2;
  v2[231751] = 1;
  v5 = v2[188638];
  if (v5 >= 1)
  {
    v6 = (v4 + 140);
    v7 = v3 + 674;
    v8 = (v4 + 200);
    v9 = v3 + 203;
    do
    {
      v3[161] = *(v6 - 20);
      *(v7 - 10) = *v6;
      *(v7 - 5) = v6[5];
      *v7++ = v6[10];
      *v3 = *(v6 - 35);
      v3[12] = *(v6 - 30);
      v10 = *v8++;
      *v9++ = v10;
      v3[24] = *(v6 - 25);
      ++v6;
      ++v3;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t ctrl_set_render_size(uint64_t a1, void **a2)
{
  v22 = a2;
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 1;
  *&v20 = **a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_target_level(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v17) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_row_mt(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  DWORD2(v20) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_enable_motion_vector_unit_test(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 832);
  v19 = *(a1 + 816);
  v20 = v3;
  v21 = *(a1 + 848);
  v4 = *(a1 + 768);
  v15 = *(a1 + 752);
  v16 = v4;
  v5 = *(a1 + 800);
  v17 = *(a1 + 784);
  v18 = v5;
  v6 = *(a1 + 736);
  v13 = *(a1 + 720);
  v14 = v6;
  v22 = a2 + 2;
  HIDWORD(v20) = *a2;
  result = validate_config_0(a1, (a1 + 216), &v13);
  if (!result)
  {
    v8 = v20;
    *(a1 + 816) = v19;
    *(a1 + 832) = v8;
    *(a1 + 848) = v21;
    v9 = v16;
    *(a1 + 752) = v15;
    *(a1 + 768) = v9;
    v10 = v18;
    *(a1 + 784) = v17;
    *(a1 + 800) = v10;
    v11 = v14;
    *(a1 + 720) = v13;
    *(a1 + 736) = v11;
    v12 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v12;
  }

  return result;
}

uint64_t ctrl_set_svc_frame_drop_layer(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1312);
  v3 = v2 + 926716;
  v4 = *a2;
  *(v2 + 926848) = *(*a2 + 20);
  v5 = *(v2 + 754552);
  if (v5 >= 1)
  {
    if (v5 < 8 || (v2 + 926700 - v4) < 0x20)
    {
      v6 = 0;
LABEL_5:
      v7 = v5 - v6;
      v8 = 4 * v6;
      v9 = (v2 + 926700 + v8);
      v10 = (v4 + v8);
      do
      {
        v11 = *v10++;
        *v9++ = v11;
        --v7;
      }

      while (v7);
      goto LABEL_7;
    }

    v6 = v5 & 0x7FFFFFF8;
    v14 = (v4 + 16);
    v15 = v6;
    v16 = (v2 + 926716);
    do
    {
      v17 = *v14;
      *(v16 - 1) = *(v14 - 1);
      *v16 = v17;
      v14 += 2;
      v16 += 2;
      v15 -= 8;
    }

    while (v15);
    if (v6 != v5)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  v12 = *(v4 + 24);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  *(v3 + 128) = v12;
  return 0;
}

uint64_t ctrl_set_svc_spatial_layer_sync(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1312);
  v3 = v2 + 926968;
  v4 = *a2;
  v5 = *(v2 + 754552);
  if (v5 >= 1)
  {
    if (v5 < 8 || (v2 + 926952 - v4) < 0x20)
    {
      v6 = 0;
LABEL_5:
      v7 = v5 - v6;
      v8 = 4 * v6;
      v9 = (v2 + 926952 + v8);
      v10 = (v4 + v8);
      do
      {
        v11 = *v10++;
        *v9++ = v11;
        --v7;
      }

      while (v7);
      goto LABEL_7;
    }

    v6 = v5 & 0x7FFFFFF8;
    v13 = (v4 + 16);
    v14 = v6;
    v15 = (v2 + 926968);
    do
    {
      v16 = *v13;
      *(v15 - 1) = *(v13 - 1);
      *v15 = v16;
      v13 += 2;
      v15 += 2;
      v14 -= 8;
    }

    while (v14);
    if (v6 != v5)
    {
      goto LABEL_5;
    }
  }

LABEL_7:
  *(v3 + 24) = *(v4 + 20);
  return 0;
}

uint64_t ctrl_set_delta_q_uv(uint64_t a1, int *a2)
{
  v23 = a2;
  v3 = *(a1 + 800);
  v18 = *(a1 + 784);
  v19 = v3;
  v4 = *(a1 + 832);
  v20 = *(a1 + 816);
  v21 = v4;
  v5 = *(a1 + 736);
  v14 = *(a1 + 720);
  v15 = v5;
  v6 = *(a1 + 768);
  v16 = *(a1 + 752);
  v17 = v6;
  v23 = a2 + 2;
  v7 = *a2;
  if (*a2 <= -15)
  {
    v7 = -15;
  }

  if (v7 >= 15)
  {
    v7 = 15;
  }

  v22 = v7;
  result = validate_config_0(a1, (a1 + 216), &v14);
  if (!result)
  {
    v9 = v21;
    *(a1 + 816) = v20;
    *(a1 + 832) = v9;
    *(a1 + 848) = v22;
    v10 = v17;
    *(a1 + 752) = v16;
    *(a1 + 768) = v10;
    v11 = v19;
    *(a1 + 784) = v18;
    *(a1 + 800) = v11;
    v12 = v15;
    *(a1 + 720) = v14;
    *(a1 + 736) = v12;
    v13 = result;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return v13;
  }

  return result;
}

uint64_t ctrl_set_rtc_external_ratectrl_0(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 1312);
  if (*a2)
  {
    v3 = v2 + 942080;
    v4 = v2 + 739168;
    *(v3 + 28) = 0;
    *v4 = 0;
    *(*(v4 + 1104) + 132) = 0;
    *(v3 + 448) = 1;
  }

  return 0;
}

uint64_t ctrl_set_external_rate_control(uint64_t a1, __int128 **a2)
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *&v28[0] = a2 + 1;
  v2 = *a2;
  v3 = (*a2)[1];
  v29 = **a2;
  v30 = v3;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  v33 = v2[4];
  v34 = v6;
  v31 = v4;
  v32 = v5;
  v7 = *(a1 + 1312);
  if (v7[23759].i32[1] != 2)
  {
    return 0;
  }

  v8 = *v7;
  v9 = v7[92722].i32[0];
  v10 = v7[23791];
  v11 = *&v7[23755] / 1000;
  v12 = v7[23752];
  v13 = v7[23762];
  v14 = v7[23767];
  v15 = v7[23768].i32[0];
  v16 = v7[23761].u32[1];
  v17 = v16 > 3 ? 0 : *(&xmmword_273B91FC0 + v16);
  v28[2] = v31;
  v28[3] = v32;
  v28[4] = v33;
  v28[5] = v34;
  v28[0] = v29;
  v28[1] = v30;
  v19 = v8;
  v20 = v9;
  v21 = vrev64_s32(v10);
  v22 = v11;
  v23 = vrev64_s32(v12);
  v24 = v17;
  v25 = vrev64_s32(v13);
  v26 = vrev64_s32(v14);
  v27 = v15;
  result = vp9_extrc_create(v28, &v19, &v7[117791]);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t ctrl_set_quantizer_one_pass(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 1312);
  v23 = a2 + 2;
  v3 = *a2;
  v4 = *(a1 + 832);
  v20 = *(a1 + 816);
  v21 = v4;
  v22 = *(a1 + 848);
  v5 = *(a1 + 768);
  v16 = *(a1 + 752);
  v17 = v5;
  v6 = *(a1 + 800);
  v18 = *(a1 + 784);
  v19 = v6;
  v7 = *(a1 + 736);
  v14 = *(a1 + 720);
  v15 = v7;
  if (v3 > 0x3F)
  {
    return 8;
  }

  *(a1 + 336) = v3;
  *(a1 + 332) = v3;
  DWORD1(v19) = 0;
  *(v2 + 942520) = 1;
  result = validate_config_0(a1, (a1 + 216), &v14);
  if (!result)
  {
    v10 = v21;
    *(a1 + 816) = v20;
    *(a1 + 832) = v10;
    *(a1 + 848) = v22;
    v11 = v17;
    *(a1 + 752) = v16;
    *(a1 + 768) = v11;
    v12 = v19;
    *(a1 + 784) = v18;
    *(a1 + 800) = v12;
    v13 = v15;
    *(a1 + 720) = v14;
    *(a1 + 736) = v13;
    set_encoder_config(a1 + 872, a1 + 216, a1 + 720);
    set_twopass_params_from_config((a1 + 216), *(a1 + 1312));
    vp9_change_config(*(a1 + 1312), (a1 + 872));
    return 0;
  }

  return result;
}

uint64_t ctrl_get_quantizer(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(a1 + 1312) + 173028);
  return result;
}

uint64_t ctrl_get_quantizer64(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = 0;
  while (quantizer_to_qindex[v2] < *(*(a1 + 1312) + 173028))
  {
    if (++v2 == 64)
    {
      LODWORD(v2) = 63;
      break;
    }
  }

  result = 0;
  **a2 = v2;
  return result;
}

uint64_t ctrl_get_quantizer_svc_layers(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  v5 = (*(a1 + 1312) + 925696);
  *v2 = v5[319];
  v2[1] = v5[320];
  v2[2] = v5[321];
  v2[3] = v5[322];
  v2[4] = v5[323];
  return result;
}

uint64_t ctrl_get_loopfilter_level(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  result = 0;
  **a2 = *(*(a1 + 1312) + 176424);
  return result;
}

uint64_t ctrl_get_reference(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 1312);
  v3 = *(v2 + 172644);
  if (v3 > 0xB)
  {
    return 1;
  }

  if (*(v2 + 171696))
  {
    return 1;
  }

  yuvconfig2image(*a2 + 8, *(v2 + 189944) + 224 * v3 + 88, 0);
  return 0;
}

uint64_t ctrl_get_active_map(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 1312);
  v4 = v3 + 173004;
  v5 = *(v2 + 8);
  if (*(v3 + 173004) != v5)
  {
    return 8;
  }

  v6 = *v2;
  v7 = *(v2 + 12);
  if (!*v2 || *(v3 + 173012) != v7)
  {
    return 8;
  }

  v10 = v3 + 737280;
  v11 = v10 + 2944;
  v12 = *(v10 + 2944);
  v13 = *(v4 + 4);
  v14 = *(v4 + 12);
  memset(v6, *(v10 + 3000) == 0, v7 * v5);
  if (*(v11 + 56))
  {
    v15 = v13 < 1;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v14 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = 0;
      do
      {
        *(v6 + ((v17 >> 1) * v7 + (v18 >> 1))) |= *(v12 + v18) != 7;
        ++v18;
      }

      while (v14 != v18);
      ++v17;
      v12 += v14;
    }

    while (v17 != v13);
  }

  return 0;
}

uint64_t ctrl_get_level(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = &qword_273BCFD50;
  v4 = 14;
  do
  {
    if (*(v3 - 3) * 1.015 >= *(*(a1 + 1312) + 936168) && *(*(a1 + 1312) + 936176) <= *(v3 - 4) && *(*(a1 + 1312) + 936180) <= *(v3 - 3) && *(*(a1 + 1312) + 936184) <= *(v3 - 1) && *(*(a1 + 1312) + 936192) <= *v3 && *(*(a1 + 1312) + 936200) >= *(v3 + 1) && *(*(a1 + 1312) + 936208) <= *(v3 + 16) && *(*(a1 + 1312) + 936212) >= *(v3 + 5) && *(*(a1 + 1312) + 936216) <= *(v3 + 24))
    {
      result = 0;
      *v2 = *(v3 - 8);
      return result;
    }

    v3 += 8;
    --v4;
  }

  while (v4);
  result = 0;
  *v2 = 0;
  return result;
}

uint64_t ctrl_get_svc_ref_frame_config(uint64_t a1, void *a2)
{
  v2 = *(a1 + 1312);
  if ((*(v2 + 754544) & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = (v2 + 926220);
    v5 = (*a2 + 100);
    v6 = v2 + 926909;
    do
    {
      *(v5 - 10) = v4[161];
      v5[10] = *(v6 + v3 - 25);
      v5[15] = *(v6 + v3 - 20);
      v5[20] = *(v6 + v3 - 15);
      *(v5 - 25) = *v4;
      *(v5 - 20) = v4[12];
      *(v5 - 15) = v4[24];
      *(v5 - 5) = *(v6 + v3 - 10);
      *v5 = *(v6 + v3 - 5);
      v5[5] = *(v6 + v3);
      ++v4;
      ++v5;
    }

    while (v3++ < *(v2 + 754544));
  }

  return 0;
}

uint64_t write_superframe_index(uint64_t a1)
{
  v1 = *(a1 + 1352);
  v2 = *(a1 + 1424);
  if (v2 < 0xFFFFFFFF)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (v2 >= 0xFFFFFF)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v2 >= 0xFFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v2 < 0xFF)
  {
    v5 = 0;
  }

  v6 = *(a1 + 1344);
  v7 = v1 + v1 * v5 + 2;
  if ((v6 + v7) < *(a1 + 1328))
  {
    v8 = (v1 + 63) | (8 * v5) | 0xC0;
    v9 = (*(a1 + 1336) + v6);
    *v9 = v8;
    v10 = v9 + 1;
    if (*(a1 + 1352) >= 1)
    {
      v11 = 0;
      do
      {
        v12 = *(a1 + 1360 + 8 * v11);
        *v10 = v12;
        if (v5)
        {
          v10[1] = BYTE1(v12);
          if (v5 == 1)
          {
            v10 += 2;
          }

          else
          {
            v10[2] = BYTE2(v12);
            if (v5 == 2)
            {
              v10 += 3;
            }

            else
            {
              v10[3] = BYTE3(v12);
              if (v5 == 3)
              {
                v10 += 4;
              }

              else
              {
                v10[4] = 0;
                v10 += 5;
              }
            }
          }
        }

        else
        {
          ++v10;
        }

        ++v11;
      }

      while (v11 < *(a1 + 1352));
    }

    *v10 = v8;
    *(a1 + 1344) += v7;
  }

  return v7;
}

uint64_t vp9_fwht4x4_c(__int16 *a1, _DWORD *a2, int a3)
{
  v3 = a3;
  v4 = a1[v3];
  v5 = 2 * a3;
  v6 = a1[v5];
  v7 = 3 * a3;
  v8 = v4 + *a1;
  v9 = a1[3 * a3] - v6;
  v10 = (v8 - v9) >> 1;
  v11 = v10 - v4;
  v12 = v10 - v6;
  v13 = v8 - (v10 - v6);
  v14 = a1[v3 + 1];
  v15 = a1[v5 + 1];
  v16 = v11 + v9;
  v17 = v14 + a1[1];
  v18 = a1[v7 + 1] - v15;
  v19 = (v17 - v18) >> 1;
  v20 = v19 - v14;
  v21 = v19 - v15;
  v22 = v17 - v21;
  v23 = v20 + v18;
  v24 = a1[v3 + 2];
  v25 = a1[v5 + 2];
  v26 = v24 + a1[2];
  v27 = a1[v7 + 2] - v25;
  v28 = (v26 - v27) >> 1;
  v29 = v28 - v24;
  v30 = v28 - v25;
  v31 = v26 - (v28 - v25);
  v32 = v29 + v27;
  v34 = a1[3];
  v33 = a1 + 3;
  v35 = v33[v3];
  v36 = v33[v5];
  v37 = v33[v7];
  v38 = v35 + v34;
  v39 = v37 - v36;
  v40 = (v35 + v34 - v39) >> 1;
  v41 = v40 - v35;
  v42 = v40 - v36;
  v43 = v41 + v39;
  v44 = v22 + v13;
  v45 = v38 - (v42 + v31);
  v46 = (v44 - v45) >> 1;
  LODWORD(v22) = v46 - v22;
  LODWORD(v31) = v46 - v31;
  *a2 = 4 * (v44 - v31);
  a2[1] = 4 * v31;
  a2[2] = 4 * (v22 + v45);
  a2[3] = 4 * v22;
  v47 = v21 + v12;
  v48 = v42 - v30;
  v49 = (v47 - v48) >> 1;
  LODWORD(v44) = v49 - v21;
  LODWORD(v49) = v49 - v30;
  LODWORD(v47) = 4 * (v47 - v49);
  result = (4 * v49);
  a2[4] = v47;
  a2[5] = result;
  a2[6] = 4 * (v44 + v48);
  a2[7] = 4 * v44;
  v51 = v23 + v16;
  LODWORD(v47) = v43 - v32;
  v52 = (v51 - (v43 - v32)) >> 1;
  LODWORD(v23) = v52 - v23;
  LODWORD(v32) = v52 - v32;
  a2[8] = 4 * (v51 - v32);
  a2[9] = 4 * v32;
  a2[10] = 4 * (v23 + v47);
  a2[11] = 4 * v23;
  v53 = v20 + v11;
  LODWORD(v51) = v41 - v29;
  v54 = (v53 - (v41 - v29)) >> 1;
  LODWORD(v29) = v54 - v29;
  a2[12] = 4 * (v53 - v29);
  a2[13] = 4 * v29;
  LODWORD(v20) = v54 - v20;
  a2[14] = 4 * (v20 + v51);
  a2[15] = 4 * v20;
  return result;
}

int32x4_t vp9_fht4x4_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int16x4_t a5)
{
  if (a4 == 2)
  {
    v41 = vshl_n_s16(*a1, 4uLL);
    *v42.i8 = *(a1 + 6 * a3);
    *v43.i8 = vbic_s8(vorr_s8(v41, 1), vceq_s16(v41, 0x1000100010000));
    v43.u64[1] = vshl_n_s16(*(a1 + 2 * a3), 4uLL);
    v42.u64[1] = *(a1 + 4 * a3);
    v44 = vshlq_n_s16(v42, 4uLL);
    v45 = vaddq_s16(v44, v43);
    v46 = vsubq_s16(v43, v44);
    v47 = vmovl_s16(*v45.i8);
    v48 = vdupq_n_s32(0x5A820000u);
    v49 = vqrdmulhq_s32(vaddw_high_s16(v47, v45), v48);
    v50 = vqrdmulhq_s32(vsubw_high_s16(v47, v45), v48);
    *v45.i8 = vmovn_s32(v49);
    v51 = vdupq_n_s16(0x3B21u);
    *v50.i8 = vmovn_s32(v50);
    v52 = vdupq_n_s16(0x187Eu);
    v53 = vmlsl_high_s16(vmull_s16(*v46.i8, *v52.i8), v46, v51);
    *v46.i8 = vqrshrn_n_s32(vmlal_high_s16(vmull_s16(*v46.i8, *v51.i8), v46, v52), 0xEuLL);
    *v51.i8 = vqrshrn_n_s32(v53, 0xEuLL);
    *v48.i8 = vtrn1_s16(*v45.i8, *v46.i8);
    *v46.i8 = vtrn2_s16(*v45.i8, *v46.i8);
    *v45.i8 = vtrn1_s16(*v50.i8, *v51.i8);
    *v50.i8 = vtrn2_s16(*v50.i8, *v51.i8);
    *v51.i8 = vzip1_s32(*v48.i8, *v45.i8);
    *v45.i8 = vzip2_s32(*v48.i8, *v45.i8);
    *v48.i8 = vzip1_s32(*v46.i8, *v50.i8);
    *v46.i8 = vzip2_s32(*v46.i8, *v50.i8);
    *v50.i8 = vdup_n_s16(0x14A3u);
    *v52.i8 = vdup_n_s16(0x26C9u);
    v54 = vdup_n_s16(0x3B6Cu);
    v55 = vmlal_s16(vmlal_s16(vmull_s16(*v48.i8, *v52.i8), *v51.i8, *v50.i8), *v46.i8, v54);
    v56 = vdup_n_s16(0x3441u);
    v57 = vmlsl_s16(vmlal_s16(vmull_s16(*v48.i8, v56), *v51.i8, v56), *v46.i8, v56);
    v58 = vmlal_s16(vmlsl_s16(vmull_s16(*v51.i8, v54), *v48.i8, *v50.i8), *v46.i8, *v52.i8);
    v59 = vsubq_s32(v58, v55);
    v60 = vmlsl_s16(v58, *v45.i8, v56);
    v61 = vmlal_s16(v59, *v45.i8, v56);
    *v50.i8 = vrshrn_n_s32(vmlal_s16(v55, *v45.i8, v56), 0xEuLL);
    *v45.i8 = vrshrn_n_s32(v57, 0xEuLL);
    *v60.i8 = vrshrn_n_s32(v60, 0xEuLL);
    *v61.i8 = vrshrn_n_s32(v61, 0xEuLL);
    *v48.i8 = vtrn1_s16(*v50.i8, *v45.i8);
    *v50.i8 = vtrn2_s16(*v50.i8, *v45.i8);
    *v45.i8 = vtrn1_s16(*v60.i8, *v61.i8);
    *v61.i8 = vtrn2_s16(*v60.i8, *v61.i8);
    *v60.i8 = vzip1_s32(*v48.i8, *v45.i8);
    *v45.i8 = vzip2_s32(*v48.i8, *v45.i8);
    v60.u64[1] = vzip1_s32(*v50.i8, *v61.i8);
    v45.u64[1] = vzip2_s32(*v50.i8, *v61.i8);
    v61.i64[0] = 0x1000100010001;
    v61.i64[1] = 0x1000100010001;
    v62 = vaddq_s16(v60, v61);
    v39 = vaddq_s16(v45, v61);
LABEL_8:
    v40 = vshrq_n_s16(v62, 2uLL);
    goto LABEL_9;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      result.i64[0] = vpx_fdct4x4_neon(a1, a2, a3, a5).u64[0];
      return result;
    }

    v63 = vshl_n_s16(*a1, 4uLL);
    v64 = vshl_n_s16(*(a1 + 2 * a3), 4uLL);
    v65 = vshl_n_s16(*(a1 + 4 * a3), 4uLL);
    v66 = vshl_n_s16(*(a1 + 6 * a3), 4uLL);
    v67 = vbic_s8(vorr_s8(v63, 1), vceq_s16(v63, 0x1000100010000));
    v68 = vdup_n_s16(0x14A3u);
    v69 = vdup_n_s16(0x26C9u);
    v70 = vdup_n_s16(0x3B6Cu);
    v71 = vmlal_s16(vmlal_s16(vmull_s16(v64, v69), v67, v68), v66, v70);
    v72 = vdup_n_s16(0x3441u);
    v73 = vmlsl_s16(vmlal_s16(vmull_s16(v64, v72), v67, v72), v66, v72);
    v74 = vmlal_s16(vmlsl_s16(vmull_s16(v67, v70), v64, v68), v66, v69);
    v75 = vsubq_s32(v74, v71);
    v76 = vmlsl_s16(v74, v65, v72);
    v77 = vmlal_s16(v75, v65, v72);
    v78 = vrshrn_n_s32(vmlal_s16(v71, v65, v72), 0xEuLL);
    v79 = vrshrn_n_s32(v73, 0xEuLL);
    *v76.i8 = vrshrn_n_s32(v76, 0xEuLL);
    *v77.i8 = vrshrn_n_s32(v77, 0xEuLL);
    *v71.i8 = vtrn1_s16(v78, v79);
    v80 = vtrn2_s16(v78, v79);
    v81 = vtrn1_s16(*v76.i8, *v77.i8);
    *v76.i8 = vtrn2_s16(*v76.i8, *v77.i8);
    *v77.i8 = vzip1_s32(*v71.i8, v81);
    v82 = vzip2_s32(*v71.i8, v81);
    *v71.i8 = vzip1_s32(v80, *v76.i8);
    *v76.i8 = vzip2_s32(v80, *v76.i8);
    v83 = vmlal_s16(vmlal_s16(vmull_s16(*v71.i8, v69), *v77.i8, v68), *v76.i8, v70);
    v84 = vmlsl_s16(vmlal_s16(vmull_s16(*v71.i8, v72), *v77.i8, v72), *v76.i8, v72);
    v85 = vmlal_s16(vmlsl_s16(vmull_s16(*v77.i8, v70), *v71.i8, v68), *v76.i8, v69);
    v86 = vsubq_s32(v85, v83);
    v87 = vmlsl_s16(v85, v82, v72);
    v88 = vmlal_s16(v86, v82, v72);
    *v83.i8 = vrshrn_n_s32(vmlal_s16(v83, v82, v72), 0xEuLL);
    v89 = vrshrn_n_s32(v84, 0xEuLL);
    *v87.i8 = vrshrn_n_s32(v87, 0xEuLL);
    *v88.i8 = vrshrn_n_s32(v88, 0xEuLL);
    v90 = vtrn1_s16(*v83.i8, v89);
    *v83.i8 = vtrn2_s16(*v83.i8, v89);
    v91 = vtrn1_s16(*v87.i8, *v88.i8);
    *v88.i8 = vtrn2_s16(*v87.i8, *v88.i8);
    *v87.i8 = vzip1_s32(v90, v91);
    *v92.i8 = vzip2_s32(v90, v91);
    v87.u64[1] = vzip1_s32(*v83.i8, *v88.i8);
    v92.u64[1] = vzip2_s32(*v83.i8, *v88.i8);
    v88.i64[0] = 0x1000100010001;
    v88.i64[1] = 0x1000100010001;
    v62 = vaddq_s16(v87, v88);
    v39 = vaddq_s16(v92, v88);
    goto LABEL_8;
  }

  v6 = vshl_n_s16(*a1, 4uLL);
  v7 = vshl_n_s16(*(a1 + 2 * a3), 4uLL);
  v8 = vshl_n_s16(*(a1 + 4 * a3), 4uLL);
  v9 = vshl_n_s16(*(a1 + 6 * a3), 4uLL);
  v10 = vbic_s8(vorr_s8(v6, 1), vceq_s16(v6, 0x1000100010000));
  v11 = vdup_n_s16(0x14A3u);
  v12 = vdup_n_s16(0x26C9u);
  v13 = vdup_n_s16(0x3B6Cu);
  v14 = vmlal_s16(vmlal_s16(vmull_s16(v7, v12), v10, v11), v9, v13);
  v15 = vdup_n_s16(0x3441u);
  v16 = vmlsl_s16(vmlal_s16(vmull_s16(v7, v15), v10, v15), v9, v15);
  v17 = vmlal_s16(vmlsl_s16(vmull_s16(v10, v13), v7, v11), v9, v12);
  v18 = vsubq_s32(v17, v14);
  v19 = vmlsl_s16(v17, v8, v15);
  v20 = vmlal_s16(v18, v8, v15);
  v21 = vrshrn_n_s32(vmlal_s16(v14, v8, v15), 0xEuLL);
  v22 = vrshrn_n_s32(v16, 0xEuLL);
  *v19.i8 = vrshrn_n_s32(v19, 0xEuLL);
  *v20.i8 = vrshrn_n_s32(v20, 0xEuLL);
  v23 = vtrn1_s16(v21, v22);
  v24 = vtrn2_s16(v21, v22);
  v25 = vtrn1_s16(*v19.i8, *v20.i8);
  *v19.i8 = vtrn2_s16(*v19.i8, *v20.i8);
  *v20.i8 = vzip1_s32(v23, v25);
  v26 = vzip2_s32(v23, v25);
  v27 = vzip1_s32(v24, *v19.i8);
  *v19.i8 = vzip2_s32(v24, *v19.i8);
  v28 = vadd_s16(*v19.i8, *v20.i8);
  v29 = vadd_s16(v26, v27);
  v30 = vsub_s16(v27, v26);
  *v19.i8 = vsub_s16(*v20.i8, *v19.i8);
  v31 = vdupq_n_s32(0x5A820000u);
  *v20.i8 = vmovn_s32(vqrdmulhq_s32(vaddl_s16(v29, v28), v31));
  v32 = vmovn_s32(vqrdmulhq_s32(vsubl_s16(v28, v29), v31));
  *v31.i8 = vdup_n_s16(0x3B21u);
  v33 = vdup_n_s16(0x187Eu);
  v34 = vmull_s16(*v19.i8, v33);
  *v19.i8 = vqrshrn_n_s32(vmlal_s16(vmull_s16(v30, v33), *v19.i8, *v31.i8), 0xEuLL);
  v35 = vqrshrn_n_s32(vmlsl_s16(v34, v30, *v31.i8), 0xEuLL);
  *v31.i8 = vtrn1_s16(*v20.i8, *v19.i8);
  *v19.i8 = vtrn2_s16(*v20.i8, *v19.i8);
  *v20.i8 = vtrn1_s16(v32, v35);
  v36 = vtrn2_s16(v32, v35);
  *v37.i8 = vzip1_s32(*v31.i8, *v20.i8);
  *v20.i8 = vzip2_s32(*v31.i8, *v20.i8);
  v37.u64[1] = vzip1_s32(*v19.i8, v36);
  v20.u64[1] = vzip2_s32(*v19.i8, v36);
  v19.i64[0] = 0x1000100010001;
  v19.i64[1] = 0x1000100010001;
  v38 = vaddq_s16(v37, v19);
  v39 = vaddq_s16(v20, v19);
  v40 = vshrq_n_s16(v38, 2uLL);
LABEL_9:
  v93 = vshrq_n_s16(v39, 2uLL);
  *a2 = vmovl_s16(*v40.i8);
  a2[1] = vmovl_high_s16(v40);
  v94 = vmovl_s16(*v93.i8);
  result = vmovl_high_s16(v93);
  a2[2] = v94;
  a2[3] = result;
  return result;
}

int32x4_t vp9_fht8x8_neon(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v180 = *MEMORY[0x277D85DE8];
  if (a4 == 2)
  {
    v82 = vshlq_n_s16(*a1, 2uLL);
    v83 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
    v84 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
    v85 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
    v86 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
    v87 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
    v88 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
    v89 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
    v90 = vaddq_s16(v89, v82);
    v91 = vaddq_s16(v88, v83);
    v92 = vaddq_s16(v87, v84);
    v93 = vaddq_s16(v86, v85);
    v94 = vsubq_s16(v85, v86);
    v95 = vsubq_s16(v84, v87);
    v96 = vsubq_s16(v83, v88);
    v97 = vsubq_s16(v82, v89);
    v98 = vaddq_s16(v90, v93);
    v99 = vaddq_s16(v91, v92);
    v100 = vsubq_s16(v91, v92);
    v101 = vsubq_s16(v90, v93);
    v102 = vdupq_n_s32(0x5A820000u);
    v103 = vqrdmulhq_s32(vaddl_s16(*v98.i8, *v99.i8), v102);
    v104 = vqrdmulhq_s32(vaddl_high_s16(v98, v99), v102);
    v105 = vqrdmulhq_s32(vsubl_s16(*v98.i8, *v99.i8), v102);
    v106 = vqrdmulhq_s32(vsubl_high_s16(v98, v99), v102);
    v107 = vuzp1q_s16(v103, v104);
    v108 = vuzp1q_s16(v105, v106);
    v109 = vdupq_n_s16(0x3B21u);
    v110 = vdupq_n_s16(0x187Eu);
    v111 = vmull_s16(*v101.i8, *v110.i8);
    v112 = vmull_high_s16(v101, v110);
    v113 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v100.i8, *v110.i8), *v101.i8, *v109.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v100, v110), v101, v109), 0xEuLL);
    v114 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v111, *v100.i8, *v109.i8), 0xEuLL), vmlsl_high_s16(v112, v100, v109), 0xEuLL);
    v115 = vqrdmulhq_s32(vaddl_s16(*v96.i8, *v95.i8), v102);
    v116 = vqrdmulhq_s32(vaddl_high_s16(v96, v95), v102);
    v117 = vqrdmulhq_s32(vsubl_s16(*v96.i8, *v95.i8), v102);
    v118 = vqrdmulhq_s32(vsubl_high_s16(v96, v95), v102);
    v119 = vuzp1q_s16(v115, v116);
    v120 = vuzp1q_s16(v117, v118);
    v121 = vaddq_s16(v94, v120);
    v122 = vsubq_s16(v94, v120);
    v123 = vsubq_s16(v97, v119);
    v124 = vaddq_s16(v97, v119);
    v125 = vdupq_n_s16(0x3EC5u);
    v126 = vdupq_n_s16(0xC7Cu);
    v127 = vmull_s16(*v124.i8, *v126.i8);
    v128 = vmull_high_s16(v124, v126);
    v129 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v121.i8, *v126.i8), *v124.i8, *v125.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v121, v126), v124, v125), 0xEuLL);
    v130 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v127, *v121.i8, *v125.i8), 0xEuLL), vmlsl_high_s16(v128, v121, v125), 0xEuLL);
    v131 = vdupq_n_s16(0x238Eu);
    v132 = vdupq_n_s16(0x3537u);
    v133 = vmlsl_s16(vmull_s16(*v123.i8, *v132.i8), *v122.i8, *v131.i8);
    v134 = vmlsl_high_s16(vmull_high_s16(v123, v132), v122, v131);
    v135 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v122.i8, *v132.i8), *v123.i8, *v131.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v122, v132), v123, v131), 0xEuLL);
    v136 = vqrshrn_high_n_s32(vqrshrn_n_s32(v133, 0xEuLL), v134, 0xEuLL);
    v137 = vtrn1q_s16(v107, v129);
    v138 = vtrn2q_s16(v107, v129);
    v139 = vtrn1q_s16(v113, v136);
    v140 = vtrn2q_s16(v113, v136);
    v141 = vtrn1q_s16(v108, v135);
    v142 = vtrn2q_s16(v108, v135);
    v143 = vtrn1q_s16(v114, v130);
    v144 = vtrn2q_s16(v114, v130);
    v145 = vtrn1q_s32(v137, v139);
    v146 = vtrn2q_s32(v137, v139);
    v147 = vtrn1q_s32(v138, v140);
    v148 = vtrn2q_s32(v138, v140);
    v149 = vtrn1q_s32(v141, v143);
    v150 = vtrn2q_s32(v141, v143);
    v151 = vtrn1q_s32(v142, v144);
    v152 = vtrn2q_s32(v142, v144);
    v153 = vzip2q_s64(v145, v149);
    v145.i64[1] = v149.i64[0];
    v154 = vzip2q_s64(v147, v151);
    v147.i64[1] = v151.i64[0];
    v155 = vzip2q_s64(v146, v150);
    v146.i64[1] = v150.i64[0];
    v156 = vzip2q_s64(v148, v152);
    v148.i64[1] = v152.i64[0];
    v172 = v145;
    v173 = v147;
    v174 = v146;
    v175 = v148;
    v176 = v153;
    v177 = v154;
    v178 = v155;
    v179 = v156;
LABEL_10:
    fadst8x8_neon(&v172);
    v161 = vsraq_n_u16(v177, v177, 0xFuLL);
    v162 = vsraq_n_u16(v178, v178, 0xFuLL);
    v163 = vsraq_n_u16(v179, v179, 0xFuLL);
    v164 = vshrq_n_s16(vsraq_n_u16(v172, v172, 0xFuLL), 1uLL);
    v165 = vshrq_n_s16(vsraq_n_u16(v173, v173, 0xFuLL), 1uLL);
    v166 = vshrq_n_s16(vsraq_n_u16(v174, v174, 0xFuLL), 1uLL);
    v167 = vshrq_n_s16(vsraq_n_u16(v175, v175, 0xFuLL), 1uLL);
    v168 = vshrq_n_s16(vsraq_n_u16(v176, v176, 0xFuLL), 1uLL);
    *a2 = vmovl_s16(*v164.i8);
    a2[1] = vmovl_high_s16(v164);
    v169 = vshrq_n_s16(v161, 1uLL);
    a2[2] = vmovl_s16(*v165.i8);
    a2[3] = vmovl_high_s16(v165);
    v170 = vshrq_n_s16(v162, 1uLL);
    a2[4] = vmovl_s16(*v166.i8);
    a2[5] = vmovl_high_s16(v166);
    v171 = vshrq_n_s16(v163, 1uLL);
    a2[6] = vmovl_s16(*v167.i8);
    a2[7] = vmovl_high_s16(v167);
    a2[8] = vmovl_s16(*v168.i8);
    a2[9] = vmovl_high_s16(v168);
    a2[10] = vmovl_s16(*v169.i8);
    a2[11] = vmovl_high_s16(v169);
    a2[12] = vmovl_s16(*v170.i8);
    a2[13] = vmovl_high_s16(v170);
    result = vmovl_s16(*v171.i8);
    a2[14] = result;
    a2[15] = vmovl_high_s16(v171);
    return result;
  }

  if (a4 == 1)
  {
    v6 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
    v172 = vshlq_n_s16(*a1, 2uLL);
    v173 = v6;
    v7 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
    v174 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
    v175 = v7;
    v8 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
    v176 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
    v177 = v8;
    v9 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
    v178 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
    v179 = v9;
    fadst8x8_neon(&v172);
    v10 = vaddq_s16(v179, v172);
    v11 = vaddq_s16(v178, v173);
    v12 = vaddq_s16(v177, v174);
    v13 = vaddq_s16(v176, v175);
    v14 = vsubq_s16(v175, v176);
    v15 = vsubq_s16(v174, v177);
    v16 = vsubq_s16(v173, v178);
    v17 = vsubq_s16(v172, v179);
    v18 = vaddq_s16(v13, v10);
    v19 = vaddq_s16(v12, v11);
    v20 = vsubq_s16(v11, v12);
    v21 = vsubq_s16(v10, v13);
    v22 = vdupq_n_s32(0x5A820000u);
    v23 = vqrdmulhq_s32(vaddl_s16(*v18.i8, *v19.i8), v22);
    v24 = vqrdmulhq_s32(vaddl_high_s16(v18, v19), v22);
    v25 = vqrdmulhq_s32(vsubl_s16(*v18.i8, *v19.i8), v22);
    v26 = vqrdmulhq_s32(vsubl_high_s16(v18, v19), v22);
    v27 = vuzp1q_s16(v23, v24);
    v28 = vuzp1q_s16(v25, v26);
    v29 = vdupq_n_s16(0x3B21u);
    v30 = vdupq_n_s16(0x187Eu);
    v31 = vmull_s16(*v21.i8, *v30.i8);
    v32 = vmull_high_s16(v21, v30);
    v33 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v20.i8, *v30.i8), *v21.i8, *v29.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v20, v30), v21, v29), 0xEuLL);
    v34 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v31, *v20.i8, *v29.i8), 0xEuLL), vmlsl_high_s16(v32, v20, v29), 0xEuLL);
    v35 = vuzp1q_s16(vqrdmulhq_s32(vaddl_s16(*v15.i8, *v16.i8), v22), vqrdmulhq_s32(vaddl_high_s16(v15, v16), v22));
    v36 = vuzp1q_s16(vqrdmulhq_s32(vsubl_s16(*v16.i8, *v15.i8), v22), vqrdmulhq_s32(vsubl_high_s16(v16, v15), v22));
    v37 = vaddq_s16(v14, v36);
    v38 = vsubq_s16(v14, v36);
    v39 = vsubq_s16(v17, v35);
    v40 = vdupq_n_s16(0x3EC5u);
    v41 = vaddq_s16(v17, v35);
    v42 = vdupq_n_s16(0xC7Cu);
    v43 = vmull_s16(*v41.i8, *v42.i8);
    v44 = vmull_high_s16(v41, v42);
    v45 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v37.i8, *v42.i8), *v41.i8, *v40.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v37, v42), v41, v40), 0xEuLL);
    v46 = vdupq_n_s16(0x238Eu);
    v47 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v43, *v37.i8, *v40.i8), 0xEuLL), vmlsl_high_s16(v44, v37, v40), 0xEuLL);
    v48 = vdupq_n_s16(0x3537u);
    v49 = vmlsl_s16(vmull_s16(*v39.i8, *v48.i8), *v38.i8, *v46.i8);
    v50 = vmlsl_high_s16(vmull_high_s16(v39, v48), v38, v46);
    v51 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v38.i8, *v48.i8), *v39.i8, *v46.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v38, v48), v39, v46), 0xEuLL);
    v52 = vqrshrn_high_n_s32(vqrshrn_n_s32(v49, 0xEuLL), v50, 0xEuLL);
    v53 = vtrn1q_s16(v27, v45);
    v54 = vtrn2q_s16(v27, v45);
    v55 = vtrn1q_s16(v33, v52);
    v56 = vtrn2q_s16(v33, v52);
    v57 = vtrn1q_s16(v28, v51);
    v58 = vtrn2q_s16(v28, v51);
    v59 = vtrn1q_s16(v34, v47);
    v60 = vtrn2q_s16(v34, v47);
    v61 = vtrn1q_s32(v53, v55);
    v62 = vtrn2q_s32(v53, v55);
    v63 = vtrn1q_s32(v54, v56);
    v64 = vtrn2q_s32(v54, v56);
    v65 = vtrn1q_s32(v57, v59);
    v66 = vtrn2q_s32(v57, v59);
    v67 = vtrn1q_s32(v58, v60);
    v68 = vtrn2q_s32(v58, v60);
    v69 = vzip2q_s64(v61, v65);
    v61.i64[1] = v65.i64[0];
    v70 = vzip2q_s64(v63, v67);
    v63.i64[1] = v67.i64[0];
    v71 = vzip2q_s64(v62, v66);
    v62.i64[1] = v66.i64[0];
    v72 = vzip2q_s64(v64, v68);
    v64.i64[1] = v68.i64[0];
    v73 = vshrq_n_s16(vsraq_n_u16(v61, v61, 0xFuLL), 1uLL);
    v74 = vshrq_n_s16(vsraq_n_u16(v63, v63, 0xFuLL), 1uLL);
    v75 = vshrq_n_s16(vsraq_n_u16(v62, v62, 0xFuLL), 1uLL);
    *a2 = vmovl_s16(*v73.i8);
    a2[1] = vmovl_high_s16(v73);
    a2[2] = vmovl_s16(*v74.i8);
    a2[3] = vmovl_high_s16(v74);
    a2[4] = vmovl_s16(*v75.i8);
    a2[5] = vmovl_high_s16(v75);
    v76 = vshrq_n_s16(vsraq_n_u16(v64, v64, 0xFuLL), 1uLL);
    v77 = vshrq_n_s16(vsraq_n_u16(v69, v69, 0xFuLL), 1uLL);
    v78 = vshrq_n_s16(vsraq_n_u16(v70, v70, 0xFuLL), 1uLL);
    v79 = vshrq_n_s16(vsraq_n_u16(v71, v71, 0xFuLL), 1uLL);
    a2[6] = vmovl_s16(*v76.i8);
    a2[7] = vmovl_high_s16(v76);
    a2[8] = vmovl_s16(*v77.i8);
    a2[9] = vmovl_high_s16(v77);
    v80 = vshrq_n_s16(vsraq_n_u16(v72, v72, 0xFuLL), 1uLL);
    a2[10] = vmovl_s16(*v78.i8);
    a2[11] = vmovl_high_s16(v78);
    a2[12] = vmovl_s16(*v79.i8);
    a2[13] = vmovl_high_s16(v79);
    v81 = vmovl_s16(*v80.i8);
    result = vmovl_high_s16(v80);
    a2[14] = v81;
    a2[15] = result;
    return result;
  }

  if (a4)
  {
    v157 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
    v172 = vshlq_n_s16(*a1, 2uLL);
    v173 = v157;
    v158 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
    v174 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
    v175 = v158;
    v159 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
    v176 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
    v177 = v159;
    v160 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
    v178 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
    v179 = v160;
    fadst8x8_neon(&v172);
    goto LABEL_10;
  }

  result.i64[0] = vpx_fdct8x8_neon(a1, a2, a3).u64[0];
  return result;
}

int64x2_t fadst8x8_neon(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 16);
  v6 = vdupq_n_s16(0x3FB1u);
  v7 = vdupq_n_s16(0x646u);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = vmull_s16(*v9.i8, *v7.i8);
  v11 = vmull_high_s16(v9, v7);
  v12 = vmlal_s16(vmull_s16(*a1, *v7.i8), *v9.i8, *v6.i8);
  v13 = vmlal_high_s16(vmull_high_s16(*a1, v7), v9, v6);
  v14 = vmlsl_s16(v10, *a1, *v6.i8);
  v15 = vmlsl_high_s16(v11, *a1, v6);
  v16 = vdupq_n_s16(0x3871u);
  v17 = vdupq_n_s16(0x1E2Bu);
  v18 = vmlal_s16(vmull_s16(*v1.i8, *v17.i8), *v4.i8, *v16.i8);
  v19 = vmlal_high_s16(vmull_high_s16(v1, v17), v4, v16);
  v20 = vmlsl_s16(vmull_s16(*v4.i8, *v17.i8), *v1.i8, *v16.i8);
  v21 = vmlsl_high_s16(vmull_high_s16(v4, v17), v1, v16);
  v22 = vdupq_n_s16(0x289Au);
  v23 = vdupq_n_s16(0x3179u);
  v24 = vmull_high_s16(v2, v23);
  v25 = vmlal_s16(vmull_s16(*v3.i8, *v23.i8), *v2.i8, *v22.i8);
  v26 = vmlal_high_s16(vmull_high_s16(v3, v23), v2, v22);
  v27 = vmlsl_s16(vmull_s16(*v2.i8, *v23.i8), *v3.i8, *v22.i8);
  v28 = vdupq_n_s16(0x1294u);
  v29 = vdupq_n_s16(0x3D3Fu);
  v30 = vmlsl_high_s16(v24, v3, v22);
  v31 = vmlal_s16(vmull_s16(*v8.i8, *v29.i8), *v5.i8, *v28.i8);
  v32 = vmlal_high_s16(vmull_high_s16(v8, v29), v5, v28);
  v33 = vmlsl_s16(vmull_s16(*v5.i8, *v29.i8), *v8.i8, *v28.i8);
  v34 = vmlsl_high_s16(vmull_high_s16(v5, v29), v8, v28);
  v35 = vaddq_s32(v25, v12);
  v36 = vaddq_s32(v26, v13);
  v37 = vaddq_s32(v27, v14);
  v38 = vaddq_s32(v30, v15);
  v39 = vrshrq_n_s32(vaddq_s32(v31, v18), 0xEuLL);
  v40 = vrshrq_n_s32(vaddq_s32(v32, v19), 0xEuLL);
  v41 = vrshrq_n_s32(vaddq_s32(v33, v20), 0xEuLL);
  v42 = vrshrq_n_s32(vaddq_s32(v34, v21), 0xEuLL);
  v43 = vrshrq_n_s32(vsubq_s32(v12, v25), 0xEuLL);
  v44 = vrshrq_n_s32(vsubq_s32(v13, v26), 0xEuLL);
  v45 = vrshrq_n_s32(vsubq_s32(v14, v27), 0xEuLL);
  v46 = vrshrq_n_s32(vsubq_s32(v15, v30), 0xEuLL);
  v47 = vrshrq_n_s32(vsubq_s32(v18, v31), 0xEuLL);
  v48 = vrshrq_n_s32(vsubq_s32(v19, v32), 0xEuLL);
  v49 = vrshrq_n_s32(vsubq_s32(v20, v33), 0xEuLL);
  v50 = vrshrq_n_s32(vsubq_s32(v21, v34), 0xEuLL);
  v51 = vdupq_n_s32(0x3B21u);
  v52 = vdupq_n_s32(0x187Eu);
  v53 = vmlaq_s32(vmulq_s32(v43, v51), v45, v52);
  v54 = vmlaq_s32(vmulq_s32(v44, v51), v46, v52);
  v55 = vdupq_n_s32(0xFFFFC4DF);
  v56 = vmlaq_s32(vmulq_s32(v43, v52), v45, v55);
  v57 = vdupq_n_s32(0xFFFFE782);
  v58 = vmlaq_s32(vmulq_s32(v44, v52), v46, v55);
  v59 = vmlaq_s32(vmulq_s32(v47, v57), v49, v51);
  v60 = vmlaq_s32(vmulq_s32(v48, v57), v50, v51);
  v61 = vmlaq_s32(vmulq_s32(v47, v51), v49, v52);
  v62 = vmlaq_s32(vmulq_s32(v48, v51), v50, v52);
  v63 = vrshrq_n_s32(vaddq_s32(v59, v53), 0xEuLL);
  v64 = vrshrq_n_s32(vaddq_s32(v60, v54), 0xEuLL);
  v65 = vrshrq_n_s32(vaddq_s32(v61, v56), 0xEuLL);
  v66 = vrshrq_n_s32(vaddq_s32(v62, v58), 0xEuLL);
  v67 = vrshrq_n_s32(vsubq_s32(v56, v61), 0xEuLL);
  v68 = vrshrq_n_s32(vsubq_s32(v58, v62), 0xEuLL);
  v69 = vdupq_n_s32(0x2D41u);
  v70 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v35, 0xEuLL), v39), v69);
  v71 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v36, 0xEuLL), v40), v69);
  v72 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v37, 0xEuLL), v41), v69);
  v73 = vaddq_s32(v72, v70);
  v74 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v38, 0xEuLL), v42), v69);
  v75 = vmulq_s32(vrshrq_n_s32(vsubq_s32(v53, v59), 0xEuLL), v69);
  v76 = vmulq_s32(vrshrq_n_s32(vsubq_s32(v54, v60), 0xEuLL), v69);
  v77 = vmulq_s32(v67, v69);
  v78 = vmulq_s32(v68, v69);
  v79 = vaddq_s32(v78, v76);
  v80 = vsubq_s32(v76, v78);
  *v78.i8 = vrshrn_n_s32(vsubq_s32(v70, v72), 0xEuLL);
  v81 = vuzp1q_s16(vrsraq_n_s32(v39, v35, 0xEuLL), vrsraq_n_s32(v40, v36, 0xEuLL));
  v82 = vnegq_s16(vuzp1q_s16(v63, v64));
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v77, v75), 0xEuLL), v79, 0xEuLL);
  v84 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xEuLL), vaddq_s32(v74, v71), 0xEuLL));
  v85 = vrshrn_high_n_s32(*v78.i8, vsubq_s32(v71, v74), 0xEuLL);
  v86 = vnegq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vsubq_s32(v75, v77), 0xEuLL), v80, 0xEuLL));
  v87 = vuzp1q_s16(v65, v66);
  v88 = vnegq_s16(vuzp1q_s16(vrsraq_n_s32(v41, v37, 0xEuLL), vrsraq_n_s32(v42, v38, 0xEuLL)));
  v89 = vtrn1q_s16(v81, v82);
  v90 = vtrn2q_s16(v81, v82);
  v91 = vtrn1q_s16(v83, v84);
  v92 = vtrn2q_s16(v83, v84);
  v93 = vtrn1q_s16(v85, v86);
  v94 = vtrn2q_s16(v85, v86);
  v95 = vtrn1q_s16(v87, v88);
  v96 = vtrn2q_s16(v87, v88);
  v97 = vtrn1q_s32(v89, v91);
  v98 = vtrn2q_s32(v89, v91);
  v99 = vtrn1q_s32(v90, v92);
  v100 = vtrn2q_s32(v90, v92);
  v101 = vtrn1q_s32(v93, v95);
  v102 = vtrn2q_s32(v93, v95);
  v103 = vtrn1q_s32(v94, v96);
  result = vtrn2q_s32(v94, v96);
  v105 = vzip2q_s64(v97, v101);
  v97.i64[1] = v101.i64[0];
  v106 = vzip2q_s64(v99, v103);
  v99.i64[1] = v103.i64[0];
  v107 = vzip2q_s64(v98, v102);
  v98.i64[1] = v102.i64[0];
  v108 = vzip2q_s64(v100, result);
  v100.i64[1] = result.i64[0];
  *a1 = v97;
  *(a1 + 16) = v99;
  *(a1 + 32) = v98;
  *(a1 + 48) = v100;
  *(a1 + 64) = v105;
  *(a1 + 80) = v106;
  *(a1 + 96) = v107;
  *(a1 + 112) = v108;
  return result;
}

void vp9_fht16x16_neon(int16x8_t *a1, uint64_t a2, int a3, int a4)
{
  v396 = *MEMORY[0x277D85DE8];
  if (a4 == 2)
  {
    v112 = 2 * a3;
    v113 = vshlq_n_s16(*(a1 + v112), 2uLL);
    v380 = vshlq_n_s16(*a1, 2uLL);
    v381 = v113;
    v114 = 4 * a3;
    v115 = 6 * a3;
    v116 = vshlq_n_s16(*(a1 + v115), 2uLL);
    v382 = vshlq_n_s16(*(a1 + v114), 2uLL);
    v383 = v116;
    v117 = 8 * a3;
    v118 = 10 * a3;
    v119 = vshlq_n_s16(*(a1 + v118), 2uLL);
    v384 = vshlq_n_s16(*(a1 + v117), 2uLL);
    v385 = v119;
    v120 = 12 * a3;
    v121 = a3;
    v122 = v121 * 16 - v112;
    v123 = vshlq_n_s16(*(a1 + v121 * 16 - v112), 2uLL);
    v386 = vshlq_n_s16(*(a1 + v120), 2uLL);
    v387 = v123;
    v124 = vshlq_n_s16(*(&a1[v121] + v112), 2uLL);
    v388 = vshlq_n_s16(a1[v121], 2uLL);
    v389 = v124;
    v125 = vshlq_n_s16(*(&a1[v121] + v115), 2uLL);
    v390 = vshlq_n_s16(*(&a1[v121] + v114), 2uLL);
    v391 = v125;
    v126 = vshlq_n_s16(*(&a1[v121] + v118), 2uLL);
    v392 = vshlq_n_s16(*(&a1[v121] + v117), 2uLL);
    v393 = v126;
    v127 = vshlq_n_s16(*(&a1[v121] + v121 * 16 - v112), 2uLL);
    v394 = vshlq_n_s16(*(&a1[v121] + v120), 2uLL);
    v395 = v127;
    v129 = a1[1];
    v128 = a1 + 1;
    v130 = vshlq_n_s16(*(v128 + v112), 2uLL);
    v364 = vshlq_n_s16(v129, 2uLL);
    v365 = v130;
    v131 = vshlq_n_s16(*(v128 + v115), 2uLL);
    v366 = vshlq_n_s16(*(v128 + v114), 2uLL);
    v367 = v131;
    v132 = vshlq_n_s16(*(v128 + v118), 2uLL);
    v368 = vshlq_n_s16(*(v128 + v117), 2uLL);
    v369 = v132;
    v133 = vshlq_n_s16(*(v128 + v121 * 16 - v112), 2uLL);
    v370 = vshlq_n_s16(*(v128 + v120), 2uLL);
    v371 = v133;
    v134 = &v128[v121];
    v135 = vshlq_n_s16(*(v134 + v112), 2uLL);
    v372 = vshlq_n_s16(*v134, 2uLL);
    v373 = v135;
    v136 = vshlq_n_s16(*(v134 + v115), 2uLL);
    v374 = vshlq_n_s16(*(v134 + v114), 2uLL);
    v375 = v136;
    v137 = vshlq_n_s16(*(v134 + v118), 2uLL);
    v376 = vshlq_n_s16(*(v134 + v117), 2uLL);
    v377 = v137;
    v138 = vshlq_n_s16(*(v134 + v122), 2uLL);
    v378 = vshlq_n_s16(*(v134 + v120), 2uLL);
    v379 = v138;
    fdct16_8col(&v380);
    fdct16_8col(&v364);
LABEL_10:
    v166 = vtrn1q_s16(v380, v381);
    v167 = vtrn2q_s16(v380, v381);
    v168 = vtrn1q_s16(v382, v383);
    v169 = vtrn2q_s16(v382, v383);
    v170 = vtrn1q_s16(v384, v385);
    v171 = vtrn2q_s16(v384, v385);
    v172 = vtrn1q_s16(v386, v387);
    v173 = vtrn2q_s16(v386, v387);
    v174 = vtrn1q_s32(v166, v168);
    v175 = vtrn2q_s32(v166, v168);
    v176 = vtrn1q_s32(v167, v169);
    v177 = vtrn2q_s32(v167, v169);
    v178 = vtrn1q_s32(v170, v172);
    v179 = vtrn2q_s32(v170, v172);
    v180 = vtrn1q_s32(v171, v173);
    v181 = vtrn2q_s32(v171, v173);
    v182 = vzip2q_s64(v174, v178);
    v170.i64[0] = v174.i64[0];
    v170.i64[1] = v178.i64[0];
    v183 = vzip2q_s64(v176, v180);
    v176.i64[1] = v180.i64[0];
    v184 = vzip2q_s64(v175, v179);
    v175.i64[1] = v179.i64[0];
    v185 = vzip2q_s64(v177, v181);
    v177.i64[1] = v181.i64[0];
    v186 = vtrn1q_s16(v364, v365);
    v187 = vtrn2q_s16(v364, v365);
    v188 = vtrn1q_s16(v366, v367);
    v189 = vtrn2q_s16(v366, v367);
    v190 = vtrn1q_s16(v368, v369);
    v191 = vtrn2q_s16(v368, v369);
    v192 = vtrn1q_s16(v370, v371);
    v193 = vtrn2q_s16(v370, v371);
    v194 = vtrn1q_s32(v186, v188);
    v195 = vtrn2q_s32(v186, v188);
    v196 = vtrn1q_s32(v187, v189);
    v197 = vtrn2q_s32(v187, v189);
    v198 = vtrn1q_s32(v190, v192);
    v199 = vtrn2q_s32(v190, v192);
    v200 = vtrn1q_s32(v191, v193);
    v201 = vtrn2q_s32(v191, v193);
    v202 = vzip2q_s64(v194, v198);
    v188.i64[0] = v194.i64[0];
    v188.i64[1] = v198.i64[0];
    v203 = vzip2q_s64(v196, v200);
    v191.i64[0] = v196.i64[0];
    v191.i64[1] = v200.i64[0];
    v204 = vzip2q_s64(v195, v199);
    v193.i64[0] = v195.i64[0];
    v193.i64[1] = v199.i64[0];
    v205 = vzip2q_s64(v197, v201);
    v194.i64[0] = v197.i64[0];
    v194.i64[1] = v201.i64[0];
    v206 = vtrn1q_s16(v388, v389);
    v207 = vtrn2q_s16(v388, v389);
    v208 = vtrn1q_s16(v390, v391);
    v380 = v170;
    v381 = v176;
    v209 = vtrn2q_s16(v390, v391);
    v210 = vtrn1q_s16(v392, v393);
    v211 = vtrn2q_s16(v392, v393);
    v382 = v175;
    v383 = v177;
    v212 = vtrn1q_s16(v394, v395);
    v213 = vtrn2q_s16(v394, v395);
    v214 = vtrn1q_s32(v206, v208);
    v384 = v182;
    v385 = v183;
    v215 = vtrn2q_s32(v206, v208);
    v216 = vtrn1q_s32(v207, v209);
    v217 = vtrn2q_s32(v207, v209);
    v386 = v184;
    v387 = v185;
    v218 = vtrn1q_s32(v210, v212);
    v219 = vtrn2q_s32(v210, v212);
    v220 = vtrn1q_s32(v211, v213);
    v221 = vtrn2q_s32(v211, v213);
    v222 = vzip2q_s64(v214, v218);
    v209.i64[0] = v214.i64[0];
    v209.i64[1] = v218.i64[0];
    v223 = vzip2q_s64(v216, v220);
    v210.i64[0] = v216.i64[0];
    v210.i64[1] = v220.i64[0];
    v224 = vzip2q_s64(v215, v219);
    v212.i64[0] = v215.i64[0];
    v212.i64[1] = v219.i64[0];
    v225 = vzip2q_s64(v217, v221);
    v213.i64[0] = v217.i64[0];
    v213.i64[1] = v221.i64[0];
    v226 = vtrn1q_s16(v372, v373);
    v227 = vtrn2q_s16(v372, v373);
    v228 = vtrn1q_s16(v374, v375);
    v229 = vtrn2q_s16(v374, v375);
    v230 = vtrn1q_s16(v376, v377);
    v231 = vtrn2q_s16(v376, v377);
    v232 = vtrn1q_s16(v378, v379);
    v233 = vtrn2q_s16(v378, v379);
    v234 = vtrn1q_s32(v226, v228);
    v388 = v188;
    v389 = v191;
    v235 = vtrn2q_s32(v226, v228);
    v236 = vtrn1q_s32(v227, v229);
    v237 = vtrn2q_s32(v227, v229);
    v390 = v193;
    v391 = v194;
    v238 = vtrn1q_s32(v230, v232);
    v239 = vtrn2q_s32(v230, v232);
    v240 = vtrn1q_s32(v231, v233);
    v241 = vtrn2q_s32(v231, v233);
    v242 = vzip2q_s64(v234, v238);
    v226.i64[0] = v234.i64[0];
    v226.i64[1] = v238.i64[0];
    v243 = vzip2q_s64(v236, v240);
    v231.i64[0] = v236.i64[0];
    v231.i64[1] = v240.i64[0];
    v244 = vzip2q_s64(v235, v239);
    v227.i64[0] = v235.i64[0];
    v227.i64[1] = v239.i64[0];
    v245 = vzip2q_s64(v237, v241);
    v237.i64[1] = v241.i64[0];
    v392 = v202;
    v393 = v203;
    v394 = v204;
    v365 = v210;
    v367 = v213;
    v368 = v222;
    v369 = v223;
    v370 = v224;
    v372 = v226;
    v376 = v242;
    v380 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v380, 0xFuLL), vmvnq_s8(v380)), 2uLL);
    v381 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v381, 0xFuLL), vmvnq_s8(v381)), 2uLL);
    v382 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v382, 0xFuLL), vmvnq_s8(v382)), 2uLL);
    v383 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v383, 0xFuLL), vmvnq_s8(v383)), 2uLL);
    v384 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v384, 0xFuLL), vmvnq_s8(v384)), 2uLL);
    v385 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v385, 0xFuLL), vmvnq_s8(v385)), 2uLL);
    v386 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v386, 0xFuLL), vmvnq_s8(v386)), 2uLL);
    v387 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v387, 0xFuLL), vmvnq_s8(v387)), 2uLL);
    v388 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v388, 0xFuLL), vmvnq_s8(v388)), 2uLL);
    v389 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v389, 0xFuLL), vmvnq_s8(v389)), 2uLL);
    v390 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v390, 0xFuLL), vmvnq_s8(v390)), 2uLL);
    v391 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v391, 0xFuLL), vmvnq_s8(v391)), 2uLL);
    v392 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v392, 0xFuLL), vmvnq_s8(v392)), 2uLL);
    v393 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v393, 0xFuLL), vmvnq_s8(v393)), 2uLL);
    v394 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v394, 0xFuLL), vmvnq_s8(v394)), 2uLL);
    v395 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v205, 0xFuLL), vmvnq_s8(v205)), 2uLL);
    v364 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v209, 0xFuLL), vmvnq_s8(v209)), 2uLL);
    v365 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v365, 0xFuLL), vmvnq_s8(v365)), 2uLL);
    v366 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v212, 0xFuLL), vmvnq_s8(v212)), 2uLL);
    v367 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v367, 0xFuLL), vmvnq_s8(v367)), 2uLL);
    v368 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v368, 0xFuLL), vmvnq_s8(v368)), 2uLL);
    v369 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v369, 0xFuLL), vmvnq_s8(v369)), 2uLL);
    v370 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v370, 0xFuLL), vmvnq_s8(v370)), 2uLL);
    v371 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v225, 0xFuLL), vmvnq_s8(v225)), 2uLL);
    v372 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v372, 0xFuLL), vmvnq_s8(v372)), 2uLL);
    v373 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v231, 0xFuLL), vmvnq_s8(v231)), 2uLL);
    v374 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v227, 0xFuLL), vmvnq_s8(v227)), 2uLL);
    v375 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v237, 0xFuLL), vmvnq_s8(v237)), 2uLL);
    v376 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v376, 0xFuLL), vmvnq_s8(v376)), 2uLL);
    v377 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v243, 0xFuLL), vmvnq_s8(v243)), 2uLL);
    v378 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v244, 0xFuLL), vmvnq_s8(v244)), 2uLL);
    v379 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v245, 0xFuLL), vmvnq_s8(v245)), 2uLL);
    fadst16_8col(&v380);
    fadst16_8col(&v364);
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v5 = 2 * a3;
    v6 = vshlq_n_s16(*(a1 + v5), 2uLL);
    v380 = vshlq_n_s16(*a1, 2uLL);
    v381 = v6;
    v7 = 4 * a3;
    v8 = 6 * a3;
    v9 = vshlq_n_s16(*(a1 + v8), 2uLL);
    v382 = vshlq_n_s16(*(a1 + v7), 2uLL);
    v383 = v9;
    v10 = 8 * a3;
    v11 = 10 * a3;
    v12 = vshlq_n_s16(*(a1 + v11), 2uLL);
    v384 = vshlq_n_s16(*(a1 + v10), 2uLL);
    v385 = v12;
    v13 = 12 * a3;
    v14 = a3;
    v15 = v14 * 16 - v5;
    v16 = vshlq_n_s16(*(a1 + v14 * 16 - v5), 2uLL);
    v386 = vshlq_n_s16(*(a1 + v13), 2uLL);
    v387 = v16;
    v17 = vshlq_n_s16(*(&a1[v14] + v5), 2uLL);
    v388 = vshlq_n_s16(a1[v14], 2uLL);
    v389 = v17;
    v18 = vshlq_n_s16(*(&a1[v14] + v8), 2uLL);
    v390 = vshlq_n_s16(*(&a1[v14] + v7), 2uLL);
    v391 = v18;
    v19 = vshlq_n_s16(*(&a1[v14] + v11), 2uLL);
    v392 = vshlq_n_s16(*(&a1[v14] + v10), 2uLL);
    v393 = v19;
    v20 = vshlq_n_s16(*(&a1[v14] + v14 * 16 - v5), 2uLL);
    v394 = vshlq_n_s16(*(&a1[v14] + v13), 2uLL);
    v395 = v20;
    v22 = a1[1];
    v21 = a1 + 1;
    v23 = vshlq_n_s16(*(v21 + v5), 2uLL);
    v364 = vshlq_n_s16(v22, 2uLL);
    v365 = v23;
    v24 = vshlq_n_s16(*(v21 + v8), 2uLL);
    v366 = vshlq_n_s16(*(v21 + v7), 2uLL);
    v367 = v24;
    v25 = vshlq_n_s16(*(v21 + v11), 2uLL);
    v368 = vshlq_n_s16(*(v21 + v10), 2uLL);
    v369 = v25;
    v26 = vshlq_n_s16(*(v21 + v14 * 16 - v5), 2uLL);
    v370 = vshlq_n_s16(*(v21 + v13), 2uLL);
    v371 = v26;
    v27 = &v21[v14];
    v28 = vshlq_n_s16(*(v27 + v5), 2uLL);
    v372 = vshlq_n_s16(*v27, 2uLL);
    v373 = v28;
    v29 = vshlq_n_s16(*(v27 + v8), 2uLL);
    v374 = vshlq_n_s16(*(v27 + v7), 2uLL);
    v375 = v29;
    v30 = vshlq_n_s16(*(v27 + v11), 2uLL);
    v376 = vshlq_n_s16(*(v27 + v10), 2uLL);
    v377 = v30;
    v31 = vshlq_n_s16(*(v27 + v15), 2uLL);
    v378 = vshlq_n_s16(*(v27 + v13), 2uLL);
    v379 = v31;
    fadst16_8col(&v380);
    fadst16_8col(&v364);
    v32 = vtrn1q_s16(v380, v381);
    v33 = vtrn2q_s16(v380, v381);
    v34 = vtrn1q_s16(v382, v383);
    v35 = vtrn2q_s16(v382, v383);
    v36 = vtrn1q_s16(v384, v385);
    v37 = vtrn2q_s16(v384, v385);
    v38 = vtrn1q_s16(v386, v387);
    v39 = vtrn2q_s16(v386, v387);
    v40 = vtrn1q_s32(v32, v34);
    v41 = vtrn2q_s32(v32, v34);
    v42 = vtrn1q_s32(v33, v35);
    v43 = vtrn2q_s32(v33, v35);
    v44 = vtrn1q_s32(v36, v38);
    v45 = vtrn2q_s32(v36, v38);
    v46 = vtrn1q_s32(v37, v39);
    v47 = vtrn2q_s32(v37, v39);
    v48 = vzip2q_s64(v40, v44);
    v36.i64[0] = v40.i64[0];
    v36.i64[1] = v44.i64[0];
    v49 = vzip2q_s64(v42, v46);
    v42.i64[1] = v46.i64[0];
    v50 = vzip2q_s64(v41, v45);
    v41.i64[1] = v45.i64[0];
    v51 = vzip2q_s64(v43, v47);
    v43.i64[1] = v47.i64[0];
    v52 = vtrn1q_s16(v364, v365);
    v53 = vtrn2q_s16(v364, v365);
    v54 = vtrn1q_s16(v366, v367);
    v55 = vtrn2q_s16(v366, v367);
    v56 = vtrn1q_s16(v368, v369);
    v57 = vtrn2q_s16(v368, v369);
    v58 = vtrn1q_s16(v370, v371);
    v59 = vtrn2q_s16(v370, v371);
    v60 = vtrn1q_s32(v52, v54);
    v61 = vtrn2q_s32(v52, v54);
    v62 = vtrn1q_s32(v53, v55);
    v63 = vtrn2q_s32(v53, v55);
    v64 = vtrn1q_s32(v56, v58);
    v65 = vtrn2q_s32(v56, v58);
    v66 = vtrn1q_s32(v57, v59);
    v67 = vtrn2q_s32(v57, v59);
    v68 = vzip2q_s64(v60, v64);
    v54.i64[0] = v60.i64[0];
    v54.i64[1] = v64.i64[0];
    v69 = vzip2q_s64(v62, v66);
    v57.i64[0] = v62.i64[0];
    v57.i64[1] = v66.i64[0];
    v70 = vzip2q_s64(v61, v65);
    v59.i64[0] = v61.i64[0];
    v59.i64[1] = v65.i64[0];
    v71 = vzip2q_s64(v63, v67);
    v60.i64[0] = v63.i64[0];
    v60.i64[1] = v67.i64[0];
    v72 = vtrn1q_s16(v388, v389);
    v73 = vtrn2q_s16(v388, v389);
    v74 = vtrn1q_s16(v390, v391);
    v380 = v36;
    v381 = v42;
    v75 = vtrn2q_s16(v390, v391);
    v76 = vtrn1q_s16(v392, v393);
    v77 = vtrn2q_s16(v392, v393);
    v382 = v41;
    v383 = v43;
    v78 = vtrn1q_s16(v394, v395);
    v79 = vtrn2q_s16(v394, v395);
    v80 = vtrn1q_s32(v72, v74);
    v384 = v48;
    v385 = v49;
    v81 = vtrn2q_s32(v72, v74);
    v82 = vtrn1q_s32(v73, v75);
    v83 = vtrn2q_s32(v73, v75);
    v386 = v50;
    v387 = v51;
    v84 = vtrn1q_s32(v76, v78);
    v85 = vtrn2q_s32(v76, v78);
    v86 = vtrn1q_s32(v77, v79);
    v87 = vtrn2q_s32(v77, v79);
    v88 = vzip2q_s64(v80, v84);
    v75.i64[0] = v80.i64[0];
    v75.i64[1] = v84.i64[0];
    v89 = vzip2q_s64(v82, v86);
    v76.i64[0] = v82.i64[0];
    v76.i64[1] = v86.i64[0];
    v90 = vzip2q_s64(v81, v85);
    v78.i64[0] = v81.i64[0];
    v78.i64[1] = v85.i64[0];
    v91 = vzip2q_s64(v83, v87);
    v79.i64[0] = v83.i64[0];
    v79.i64[1] = v87.i64[0];
    v92 = vtrn1q_s16(v372, v373);
    v93 = vtrn2q_s16(v372, v373);
    v94 = vtrn1q_s16(v374, v375);
    v95 = vtrn2q_s16(v374, v375);
    v96 = vtrn1q_s16(v376, v377);
    v97 = vtrn2q_s16(v376, v377);
    v98 = vtrn1q_s16(v378, v379);
    v99 = vtrn2q_s16(v378, v379);
    v100 = vtrn1q_s32(v92, v94);
    v388 = v54;
    v389 = v57;
    v101 = vtrn2q_s32(v92, v94);
    v102 = vtrn1q_s32(v93, v95);
    v103 = vtrn2q_s32(v93, v95);
    v390 = v59;
    v391 = v60;
    v104 = vtrn1q_s32(v96, v98);
    v105 = vtrn2q_s32(v96, v98);
    v106 = vtrn1q_s32(v97, v99);
    v107 = vtrn2q_s32(v97, v99);
    v108 = vzip2q_s64(v100, v104);
    v92.i64[0] = v100.i64[0];
    v92.i64[1] = v104.i64[0];
    v109 = vzip2q_s64(v102, v106);
    v97.i64[0] = v102.i64[0];
    v97.i64[1] = v106.i64[0];
    v110 = vzip2q_s64(v101, v105);
    v93.i64[0] = v101.i64[0];
    v93.i64[1] = v105.i64[0];
    v111 = vzip2q_s64(v103, v107);
    v103.i64[1] = v107.i64[0];
    v392 = v68;
    v393 = v69;
    v394 = v70;
    v365 = v76;
    v367 = v79;
    v368 = v88;
    v369 = v89;
    v370 = v90;
    v372 = v92;
    v376 = v108;
    v380 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v380, 0xFuLL), vmvnq_s8(v380)), 2uLL);
    v381 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v381, 0xFuLL), vmvnq_s8(v381)), 2uLL);
    v382 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v382, 0xFuLL), vmvnq_s8(v382)), 2uLL);
    v383 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v383, 0xFuLL), vmvnq_s8(v383)), 2uLL);
    v384 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v384, 0xFuLL), vmvnq_s8(v384)), 2uLL);
    v385 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v385, 0xFuLL), vmvnq_s8(v385)), 2uLL);
    v386 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v386, 0xFuLL), vmvnq_s8(v386)), 2uLL);
    v387 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v387, 0xFuLL), vmvnq_s8(v387)), 2uLL);
    v388 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v388, 0xFuLL), vmvnq_s8(v388)), 2uLL);
    v389 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v389, 0xFuLL), vmvnq_s8(v389)), 2uLL);
    v390 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v390, 0xFuLL), vmvnq_s8(v390)), 2uLL);
    v391 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v391, 0xFuLL), vmvnq_s8(v391)), 2uLL);
    v392 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v392, 0xFuLL), vmvnq_s8(v392)), 2uLL);
    v393 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v393, 0xFuLL), vmvnq_s8(v393)), 2uLL);
    v394 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v394, 0xFuLL), vmvnq_s8(v394)), 2uLL);
    v395 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v71, 0xFuLL), vmvnq_s8(v71)), 2uLL);
    v364 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v75, 0xFuLL), vmvnq_s8(v75)), 2uLL);
    v365 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v365, 0xFuLL), vmvnq_s8(v365)), 2uLL);
    v366 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v78, 0xFuLL), vmvnq_s8(v78)), 2uLL);
    v367 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v367, 0xFuLL), vmvnq_s8(v367)), 2uLL);
    v368 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v368, 0xFuLL), vmvnq_s8(v368)), 2uLL);
    v369 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v369, 0xFuLL), vmvnq_s8(v369)), 2uLL);
    v370 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v370, 0xFuLL), vmvnq_s8(v370)), 2uLL);
    v371 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v91, 0xFuLL), vmvnq_s8(v91)), 2uLL);
    v372 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v372, 0xFuLL), vmvnq_s8(v372)), 2uLL);
    v373 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v97, 0xFuLL), vmvnq_s8(v97)), 2uLL);
    v374 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v93, 0xFuLL), vmvnq_s8(v93)), 2uLL);
    v375 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v103, 0xFuLL), vmvnq_s8(v103)), 2uLL);
    v376 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v376, 0xFuLL), vmvnq_s8(v376)), 2uLL);
    v377 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v109, 0xFuLL), vmvnq_s8(v109)), 2uLL);
    v378 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v110, 0xFuLL), vmvnq_s8(v110)), 2uLL);
    v379 = vshrq_n_s16(vsubq_s16(vshrq_n_u16(v111, 0xFuLL), vmvnq_s8(v111)), 2uLL);
    fdct16_8col(&v380);
    fdct16_8col(&v364);
LABEL_11:
    v246 = v388;
    v247 = v389;
    v248 = v390;
    v249 = v391;
    v250 = v392;
    v251 = v393;
    v252 = v394;
    v253 = v395;
    v254 = vtrn1q_s16(v380, v381);
    v255 = vtrn2q_s16(v380, v381);
    v256 = vtrn1q_s16(v382, v383);
    v257 = vtrn2q_s16(v382, v383);
    v258 = vtrn1q_s16(v384, v385);
    v259 = vtrn2q_s16(v384, v385);
    v260 = vtrn1q_s16(v386, v387);
    v261 = vtrn2q_s16(v386, v387);
    v262 = vtrn1q_s32(v254, v256);
    v263 = vtrn2q_s32(v254, v256);
    v264 = vtrn1q_s32(v255, v257);
    v265 = vtrn2q_s32(v255, v257);
    v266 = vtrn1q_s32(v258, v260);
    v267 = vtrn2q_s32(v258, v260);
    v268 = vtrn1q_s32(v259, v261);
    v269 = vtrn2q_s32(v259, v261);
    v270 = vzip2q_s64(v262, v266);
    v262.i64[1] = v266.i64[0];
    v271 = vzip2q_s64(v264, v268);
    v264.i64[1] = v268.i64[0];
    v272 = vzip2q_s64(v263, v267);
    v263.i64[1] = v267.i64[0];
    v273 = vzip2q_s64(v265, v269);
    v265.i64[1] = v269.i64[0];
    v382 = v263;
    v383 = v265;
    v384 = v270;
    v385 = v271;
    v386 = v272;
    v387 = v273;
    v274 = vtrn1q_s16(v364, v365);
    v275 = vtrn2q_s16(v364, v365);
    v276 = vtrn1q_s16(v366, v367);
    v277 = vtrn2q_s16(v366, v367);
    v278 = vtrn1q_s16(v368, v369);
    v279 = vtrn2q_s16(v368, v369);
    v280 = vtrn1q_s16(v370, v371);
    v281 = vtrn2q_s16(v370, v371);
    v282 = vtrn1q_s32(v274, v276);
    v283 = vtrn2q_s32(v274, v276);
    v284 = vtrn1q_s32(v275, v277);
    v285 = vtrn2q_s32(v275, v277);
    v286 = vtrn1q_s32(v278, v280);
    v287 = vtrn2q_s32(v278, v280);
    v288 = vtrn1q_s32(v279, v281);
    v289 = vtrn2q_s32(v279, v281);
    v290 = vzip2q_s64(v282, v286);
    v282.i64[1] = v286.i64[0];
    v291 = vzip2q_s64(v284, v288);
    v284.i64[1] = v288.i64[0];
    v292 = vzip2q_s64(v283, v287);
    v283.i64[1] = v287.i64[0];
    v293 = vzip2q_s64(v285, v289);
    v285.i64[1] = v289.i64[0];
    v388 = v282;
    v389 = v284;
    v390 = v283;
    v391 = v285;
    v392 = v290;
    v393 = v291;
    v394 = v292;
    v395 = v293;
    v294 = vtrn1q_s16(v246, v247);
    v295 = vtrn2q_s16(v246, v247);
    v296 = vtrn1q_s16(v248, v249);
    v297 = vtrn2q_s16(v248, v249);
    v298 = vtrn1q_s16(v250, v251);
    v299 = vtrn2q_s16(v250, v251);
    v300 = vtrn1q_s16(v252, v253);
    v301 = vtrn2q_s16(v252, v253);
    v302 = vtrn1q_s32(v294, v296);
    v303 = vtrn2q_s32(v294, v296);
    v304 = vtrn1q_s32(v295, v297);
    v305 = vtrn2q_s32(v295, v297);
    v306 = vtrn1q_s32(v298, v300);
    v307 = vtrn2q_s32(v298, v300);
    v308 = vtrn1q_s32(v299, v301);
    v309 = vtrn2q_s32(v299, v301);
    v310 = vzip2q_s64(v302, v306);
    v302.i64[1] = v306.i64[0];
    v311 = vzip2q_s64(v304, v308);
    v304.i64[1] = v308.i64[0];
    v312 = vzip2q_s64(v303, v307);
    v303.i64[1] = v307.i64[0];
    v313 = vzip2q_s64(v305, v309);
    v305.i64[1] = v309.i64[0];
    v364 = v302;
    v365 = v304;
    v366 = v303;
    v367 = v305;
    v368 = v310;
    v369 = v311;
    v370 = v312;
    v371 = v313;
    v314 = vtrn1q_s16(v372, v373);
    v315 = vtrn2q_s16(v372, v373);
    v316 = vtrn1q_s16(v374, v375);
    v317 = vtrn2q_s16(v374, v375);
    v318 = vtrn1q_s16(v376, v377);
    v319 = vtrn2q_s16(v376, v377);
    v320 = vtrn1q_s16(v378, v379);
    v321 = vtrn2q_s16(v378, v379);
    v322 = vtrn1q_s32(v314, v316);
    v323 = vtrn2q_s32(v314, v316);
    v324 = vtrn1q_s32(v315, v317);
    v325 = vtrn2q_s32(v315, v317);
    v326 = vtrn1q_s32(v318, v320);
    v327 = vtrn2q_s32(v318, v320);
    v328 = vtrn1q_s32(v319, v321);
    v329 = vtrn2q_s32(v319, v321);
    v330 = vzip2q_s64(v322, v326);
    v322.i64[1] = v326.i64[0];
    v331 = vzip2q_s64(v324, v328);
    v324.i64[1] = v328.i64[0];
    v332 = vzip2q_s64(v323, v327);
    v323.i64[1] = v327.i64[0];
    v333 = vzip2q_s64(v325, v329);
    v325.i64[1] = v329.i64[0];
    v372 = v322;
    v373 = v324;
    v374 = v323;
    v375 = v325;
    v376 = v330;
    v377 = v331;
    v378 = v332;
    v379 = v333;
    *a2 = vmovl_s16(*v262.i8);
    *(a2 + 16) = vmovl_high_s16(v262);
    *(a2 + 64) = vmovl_s16(*v264.i8);
    *(a2 + 80) = vmovl_high_s16(v264);
    v334 = v383;
    v335 = vmovl_high_s16(v382);
    *(a2 + 128) = vmovl_s16(*v382.i8);
    *(a2 + 144) = v335;
    *(a2 + 192) = vmovl_s16(*v334.i8);
    *(a2 + 208) = vmovl_high_s16(v334);
    v336 = v385;
    v337 = vmovl_high_s16(v384);
    *(a2 + 256) = vmovl_s16(*v384.i8);
    *(a2 + 272) = v337;
    *(a2 + 320) = vmovl_s16(*v336.i8);
    *(a2 + 336) = vmovl_high_s16(v336);
    v338 = v387;
    v339 = vmovl_high_s16(v386);
    *(a2 + 384) = vmovl_s16(*v386.i8);
    *(a2 + 400) = v339;
    *(a2 + 448) = vmovl_s16(*v338.i8);
    *(a2 + 464) = vmovl_high_s16(v338);
    v340 = v389;
    v341 = vmovl_high_s16(v388);
    *(a2 + 512) = vmovl_s16(*v388.i8);
    *(a2 + 528) = v341;
    *(a2 + 576) = vmovl_s16(*v340.i8);
    *(a2 + 592) = vmovl_high_s16(v340);
    v342 = v391;
    v343 = vmovl_high_s16(v390);
    *(a2 + 640) = vmovl_s16(*v390.i8);
    *(a2 + 656) = v343;
    *(a2 + 704) = vmovl_s16(*v342.i8);
    *(a2 + 720) = vmovl_high_s16(v342);
    v344 = v393;
    v345 = vmovl_high_s16(v392);
    *(a2 + 768) = vmovl_s16(*v392.i8);
    *(a2 + 784) = v345;
    *(a2 + 832) = vmovl_s16(*v344.i8);
    *(a2 + 848) = vmovl_high_s16(v344);
    v346 = v395;
    v347 = vmovl_high_s16(v394);
    *(a2 + 896) = vmovl_s16(*v394.i8);
    *(a2 + 912) = v347;
    *(a2 + 960) = vmovl_s16(*v346.i8);
    *(a2 + 976) = vmovl_high_s16(v346);
    v348 = v365;
    v349 = vmovl_high_s16(v364);
    *(a2 + 32) = vmovl_s16(*v364.i8);
    *(a2 + 48) = v349;
    *(a2 + 96) = vmovl_s16(*v348.i8);
    *(a2 + 112) = vmovl_high_s16(v348);
    v350 = v367;
    v351 = vmovl_high_s16(v366);
    *(a2 + 160) = vmovl_s16(*v366.i8);
    *(a2 + 176) = v351;
    *(a2 + 224) = vmovl_s16(*v350.i8);
    *(a2 + 240) = vmovl_high_s16(v350);
    v352 = v369;
    v353 = vmovl_high_s16(v368);
    *(a2 + 288) = vmovl_s16(*v368.i8);
    *(a2 + 304) = v353;
    *(a2 + 352) = vmovl_s16(*v352.i8);
    *(a2 + 368) = vmovl_high_s16(v352);
    v354 = v371;
    v355 = vmovl_high_s16(v370);
    *(a2 + 416) = vmovl_s16(*v370.i8);
    *(a2 + 432) = v355;
    *(a2 + 480) = vmovl_s16(*v354.i8);
    *(a2 + 496) = vmovl_high_s16(v354);
    v356 = v373;
    v357 = vmovl_high_s16(v372);
    *(a2 + 544) = vmovl_s16(*v372.i8);
    *(a2 + 560) = v357;
    *(a2 + 608) = vmovl_s16(*v356.i8);
    *(a2 + 624) = vmovl_high_s16(v356);
    v358 = v375;
    v359 = vmovl_high_s16(v374);
    *(a2 + 672) = vmovl_s16(*v374.i8);
    *(a2 + 688) = v359;
    *(a2 + 736) = vmovl_s16(*v358.i8);
    *(a2 + 752) = vmovl_high_s16(v358);
    v360 = v377;
    v361 = vmovl_high_s16(v376);
    *(a2 + 800) = vmovl_s16(*v376.i8);
    *(a2 + 816) = v361;
    *(a2 + 864) = vmovl_s16(*v360.i8);
    *(a2 + 880) = vmovl_high_s16(v360);
    v362 = v379;
    v363 = vmovl_high_s16(v378);
    *(a2 + 928) = vmovl_s16(*v378.i8);
    *(a2 + 944) = v363;
    *(a2 + 992) = vmovl_s16(*v362.i8);
    *(a2 + 1008) = vmovl_high_s16(v362);
    return;
  }

  if (a4)
  {
    v139 = 2 * a3;
    v140 = vshlq_n_s16(*(a1 + v139), 2uLL);
    v380 = vshlq_n_s16(*a1, 2uLL);
    v381 = v140;
    v141 = 4 * a3;
    v142 = 6 * a3;
    v143 = vshlq_n_s16(*(a1 + v142), 2uLL);
    v382 = vshlq_n_s16(*(a1 + v141), 2uLL);
    v383 = v143;
    v144 = 8 * a3;
    v145 = 10 * a3;
    v146 = vshlq_n_s16(*(a1 + v145), 2uLL);
    v384 = vshlq_n_s16(*(a1 + v144), 2uLL);
    v385 = v146;
    v147 = 12 * a3;
    v148 = a3;
    v149 = v148 * 16 - v139;
    v150 = vshlq_n_s16(*(a1 + v148 * 16 - v139), 2uLL);
    v386 = vshlq_n_s16(*(a1 + v147), 2uLL);
    v387 = v150;
    v151 = vshlq_n_s16(*(&a1[v148] + v139), 2uLL);
    v388 = vshlq_n_s16(a1[v148], 2uLL);
    v389 = v151;
    v152 = vshlq_n_s16(*(&a1[v148] + v142), 2uLL);
    v390 = vshlq_n_s16(*(&a1[v148] + v141), 2uLL);
    v391 = v152;
    v153 = vshlq_n_s16(*(&a1[v148] + v145), 2uLL);
    v392 = vshlq_n_s16(*(&a1[v148] + v144), 2uLL);
    v393 = v153;
    v154 = vshlq_n_s16(*(&a1[v148] + v148 * 16 - v139), 2uLL);
    v394 = vshlq_n_s16(*(&a1[v148] + v147), 2uLL);
    v395 = v154;
    v156 = a1[1];
    v155 = a1 + 1;
    v157 = vshlq_n_s16(*(v155 + v139), 2uLL);
    v364 = vshlq_n_s16(v156, 2uLL);
    v365 = v157;
    v158 = vshlq_n_s16(*(v155 + v142), 2uLL);
    v366 = vshlq_n_s16(*(v155 + v141), 2uLL);
    v367 = v158;
    v159 = vshlq_n_s16(*(v155 + v145), 2uLL);
    v368 = vshlq_n_s16(*(v155 + v144), 2uLL);
    v369 = v159;
    v160 = vshlq_n_s16(*(v155 + v148 * 16 - v139), 2uLL);
    v370 = vshlq_n_s16(*(v155 + v147), 2uLL);
    v371 = v160;
    v161 = &v155[v148];
    v162 = vshlq_n_s16(*(v161 + v139), 2uLL);
    v372 = vshlq_n_s16(*v161, 2uLL);
    v373 = v162;
    v163 = vshlq_n_s16(*(v161 + v142), 2uLL);
    v374 = vshlq_n_s16(*(v161 + v141), 2uLL);
    v375 = v163;
    v164 = vshlq_n_s16(*(v161 + v145), 2uLL);
    v376 = vshlq_n_s16(*(v161 + v144), 2uLL);
    v377 = v164;
    v165 = vshlq_n_s16(*(v161 + v149), 2uLL);
    v378 = vshlq_n_s16(*(v161 + v147), 2uLL);
    v379 = v165;
    fadst16_8col(&v380);
    fadst16_8col(&v364);
    goto LABEL_10;
  }

  vpx_fdct16x16_neon(a1, a2, a3);
}

int32x4_t vp9_highbd_fht4x4_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int16x8_t a5, int16x8_t a6)
{
  if (a4 == 2)
  {
    v57 = vshll_n_s16(*a1, 4uLL);
    v58 = vshll_n_s16(*(a1 + 2 * a3), 4uLL);
    v59 = vshll_n_s16(*(a1 + 4 * a3), 4uLL);
    v60 = vshll_n_s16(*(a1 + 6 * a3), 4uLL);
    v61 = vbicq_s8(vorrq_s8(v57, xmmword_273B91FB0), vceqq_s32(v57, xmmword_273BCF200));
    v62 = vaddq_s32(v60, v61);
    v63 = vaddq_s32(v59, v58);
    v64 = vsubq_s32(v58, v59);
    v65 = vsubq_s32(v61, v60);
    v66 = vdupq_n_s32(0x5A820000u);
    v67 = vqrdmulhq_s32(vaddq_s32(v62, v63), v66);
    v68 = vsubq_s32(v62, v63);
    v69 = vdupq_n_s32(0x3B21u);
    v70 = vdupq_n_s32(0x187Eu);
    v71 = vqrdmulhq_s32(v68, v66);
    v72 = vmull_s32(*v65.i8, *v70.i8);
    v73 = vmull_high_s32(v65, v70);
    v74 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(vmull_s32(*v64.i8, *v70.i8), *v65.i8, *v69.i8), 0xEuLL), vmlal_high_s32(vmull_high_s32(v64, v70), v65, v69), 0xEuLL);
    v75 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v72, *v64.i8, *v69.i8), 0xEuLL), vmlsl_high_s32(v73, v64, v69), 0xEuLL);
    v76 = vtrn1q_s32(v67, v74);
    v77 = vtrn2q_s32(v67, v74);
    v78 = vtrn1q_s32(v71, v75);
    v79 = vtrn2q_s32(v71, v75);
    v80 = vzip2q_s64(v76, v78);
    *v69.i8 = vdup_n_s32(0x14A3u);
    v81 = vdupq_n_s32(0x26C9u);
    v82 = vzip2q_s64(v77, v79);
    v83 = vdupq_n_s32(0x3B6Cu);
    v84 = vmlal_s32(vmlal_s32(vmull_s32(*v77.i8, *v81.i8), *v76.i8, *v69.i8), *v82.i8, *v83.i8);
    v85 = vdupq_n_s32(0x3441u);
    v86 = vmlal_high_s32(vmlal_s32(vmull_s32(*v79.i8, *v81.i8), *v78.i8, *v69.i8), v82, v83);
    v87 = vmlsl_s32(vmlal_s32(vmull_s32(*v77.i8, *v85.i8), *v76.i8, *v85.i8), *v82.i8, *v85.i8);
    v88 = vmlsl_high_s32(vmlal_s32(vmull_s32(*v79.i8, *v85.i8), *v78.i8, *v85.i8), v82, v85);
    v89 = vmlal_s32(vmlsl_s32(vmull_s32(*v76.i8, *v83.i8), *v77.i8, *v69.i8), *v82.i8, *v81.i8);
    v90 = vmlal_high_s32(vmlsl_s32(vmull_s32(*v78.i8, *v83.i8), *v79.i8, *v69.i8), v82, v81);
    v91 = vsubq_s64(v89, v84);
    v92 = vmlsl_s32(v89, *v80.i8, *v85.i8);
    v93 = vmlal_s32(v91, *v80.i8, *v85.i8);
    v94 = vsubq_s64(v90, v86);
    v95 = vmlsl_high_s32(v90, v80, v85);
    v96 = vmlal_high_s32(v94, v80, v85);
    v97 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v84, *v80.i8, *v85.i8), 0xEuLL), vmlal_high_s32(v86, v80, v85), 0xEuLL);
    v98 = vrshrn_high_n_s64(vrshrn_n_s64(v87, 0xEuLL), v88, 0xEuLL);
    v99 = vrshrn_high_n_s64(vrshrn_n_s64(v92, 0xEuLL), v95, 0xEuLL);
    v100 = vrshrn_high_n_s64(vrshrn_n_s64(v93, 0xEuLL), v96, 0xEuLL);
    v101 = vtrn1q_s32(v97, v98);
    v102 = vtrn2q_s32(v97, v98);
    v103 = vtrn1q_s32(v99, v100);
    v104 = vzip2q_s64(v101, v103);
    v101.i64[1] = v103.i64[0];
    v105 = vtrn2q_s32(v99, v100);
    v106 = vzip2q_s64(v102, v105);
    v102.i64[1] = v105.i64[0];
    v105.i64[0] = 0x100000001;
    v105.i64[1] = 0x100000001;
    v107 = vshrq_n_s32(vaddq_s32(v104, v105), 2uLL);
    *a2 = vshrq_n_s32(vaddq_s32(v101, v105), 2uLL);
    a2[1] = vshrq_n_s32(vaddq_s32(v102, v105), 2uLL);
    result = vshrq_n_s32(vaddq_s32(v106, v105), 2uLL);
    a2[2] = v107;
    a2[3] = result;
  }

  else if (a4 == 1)
  {
    v7 = vshll_n_s16(*a1, 4uLL);
    v8 = vshll_n_s16(*(a1 + 2 * a3), 4uLL);
    v9 = vshll_n_s16(*(a1 + 4 * a3), 4uLL);
    v10 = vshll_n_s16(*(a1 + 6 * a3), 4uLL);
    v11 = vbicq_s8(vorrq_s8(v7, xmmword_273B91FB0), vceqq_s32(v7, xmmword_273BCF200));
    v12 = vdupq_n_s32(0x14A3u);
    v13 = vdupq_n_s32(0x26C9u);
    v14 = vdupq_n_s32(0x3B6Cu);
    v15 = vmlal_s32(vmlal_s32(vmull_s32(*v8.i8, *v13.i8), *v11.i8, *v12.i8), *v10.i8, *v14.i8);
    v16 = vmlal_high_s32(vmlal_high_s32(vmull_high_s32(v8, v13), v11, v12), v10, v14);
    v17 = vdupq_n_s32(0x3441u);
    v18 = vmlsl_s32(vmlal_s32(vmull_s32(*v8.i8, *v17.i8), *v11.i8, *v17.i8), *v10.i8, *v17.i8);
    v19 = vmlsl_high_s32(vmlal_high_s32(vmull_high_s32(v8, v17), v11, v17), v10, v17);
    v20 = vmlal_s32(vmlsl_s32(vmull_s32(*v11.i8, *v14.i8), *v8.i8, *v12.i8), *v10.i8, *v13.i8);
    v21 = vmlal_high_s32(vmlsl_high_s32(vmull_high_s32(v11, v14), v8, v12), v10, v13);
    v22 = vsubq_s64(v20, v15);
    v23 = vmlsl_s32(v20, *v9.i8, *v17.i8);
    v24 = vmlal_s32(v22, *v9.i8, *v17.i8);
    v25 = vsubq_s64(v21, v16);
    v26 = vmlsl_high_s32(v21, v9, v17);
    v27 = vmlal_high_s32(v25, v9, v17);
    v28 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v15, *v9.i8, *v17.i8), 0xEuLL), vmlal_high_s32(v16, v9, v17), 0xEuLL);
    v29 = vrshrn_high_n_s64(vrshrn_n_s64(v18, 0xEuLL), v19, 0xEuLL);
    v30 = vrshrn_high_n_s64(vrshrn_n_s64(v23, 0xEuLL), v26, 0xEuLL);
    v31 = vrshrn_high_n_s64(vrshrn_n_s64(v24, 0xEuLL), v27, 0xEuLL);
    v32 = vtrn1q_s32(v28, v29);
    v33 = vtrn2q_s32(v28, v29);
    v34 = vtrn1q_s32(v30, v31);
    v35 = vtrn2q_s32(v30, v31);
    v36 = vzip2q_s64(v32, v34);
    v32.i64[1] = v34.i64[0];
    v37 = vzip2q_s64(v33, v35);
    v33.i64[1] = v35.i64[0];
    v38 = vaddq_s32(v37, v32);
    v39 = vaddq_s32(v36, v33);
    v40 = vsubq_s32(v33, v36);
    v41 = vsubq_s32(v32, v37);
    v42 = vdupq_n_s32(0x5A820000u);
    v43 = vqrdmulhq_s32(vaddq_s32(v39, v38), v42);
    v44 = vqrdmulhq_s32(vsubq_s32(v38, v39), v42);
    v45 = vdupq_n_s32(0x3B21u);
    v46 = vdupq_n_s32(0x187Eu);
    v47 = vmlsl_s32(vmull_s32(*v41.i8, *v46.i8), *v40.i8, *v45.i8);
    v48 = vmlsl_high_s32(vmull_high_s32(v41, v46), v40, v45);
    v49 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(vmull_s32(*v40.i8, *v46.i8), *v41.i8, *v45.i8), 0xEuLL), vmlal_high_s32(vmull_high_s32(v40, v46), v41, v45), 0xEuLL);
    v50 = vrshrn_high_n_s64(vrshrn_n_s64(v47, 0xEuLL), v48, 0xEuLL);
    v51 = vtrn1q_s32(v43, v49);
    v52 = vtrn2q_s32(v43, v49);
    v53 = vtrn1q_s32(v44, v50);
    v54 = vzip2q_s64(v51, v53);
    v51.i64[1] = v53.i64[0];
    v55 = vtrn2q_s32(v44, v50);
    v56 = vzip2q_s64(v52, v55);
    v52.i64[1] = v55.i64[0];
    v55.i64[0] = 0x100000001;
    v55.i64[1] = 0x100000001;
    *a2 = vshrq_n_s32(vaddq_s32(v51, v55), 2uLL);
    a2[1] = vshrq_n_s32(vaddq_s32(v52, v55), 2uLL);
    result = vshrq_n_s32(vaddq_s32(v56, v55), 2uLL);
    a2[2] = vshrq_n_s32(vaddq_s32(v54, v55), 2uLL);
    a2[3] = result;
  }

  else if (a4)
  {
    v108 = vshll_n_s16(*a1, 4uLL);
    v109 = vshll_n_s16(*(a1 + 2 * a3), 4uLL);
    v110 = vshll_n_s16(*(a1 + 4 * a3), 4uLL);
    v111 = vshll_n_s16(*(a1 + 6 * a3), 4uLL);
    v112 = vbicq_s8(vorrq_s8(v108, xmmword_273B91FB0), vceqq_s32(v108, xmmword_273BCF200));
    v113 = vdupq_n_s32(0x14A3u);
    v114 = vdupq_n_s32(0x26C9u);
    v115 = vdupq_n_s32(0x3B6Cu);
    v116 = vmlal_s32(vmlal_s32(vmull_s32(*v109.i8, *v114.i8), *v112.i8, *v113.i8), *v111.i8, *v115.i8);
    v117 = vmlal_high_s32(vmlal_high_s32(vmull_high_s32(v109, v114), v112, v113), v111, v115);
    v118 = vdupq_n_s32(0x3441u);
    v119 = vmlsl_s32(vmlal_s32(vmull_s32(*v109.i8, *v118.i8), *v112.i8, *v118.i8), *v111.i8, *v118.i8);
    v120 = vmlsl_high_s32(vmlal_high_s32(vmull_high_s32(v109, v118), v112, v118), v111, v118);
    v121 = vmlal_s32(vmlsl_s32(vmull_s32(*v112.i8, *v115.i8), *v109.i8, *v113.i8), *v111.i8, *v114.i8);
    v122 = vmlal_high_s32(vmlsl_high_s32(vmull_high_s32(v112, v115), v109, v113), v111, v114);
    v123 = vsubq_s64(v121, v116);
    v124 = vmlsl_s32(v121, *v110.i8, *v118.i8);
    v125 = vmlal_s32(v123, *v110.i8, *v118.i8);
    v126 = vsubq_s64(v122, v117);
    v127 = vmlsl_high_s32(v122, v110, v118);
    v128 = vmlal_high_s32(v126, v110, v118);
    v129 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v116, *v110.i8, *v118.i8), 0xEuLL), vmlal_high_s32(v117, v110, v118), 0xEuLL);
    v130 = vrshrn_high_n_s64(vrshrn_n_s64(v119, 0xEuLL), v120, 0xEuLL);
    v131 = vrshrn_high_n_s64(vrshrn_n_s64(v124, 0xEuLL), v127, 0xEuLL);
    v132 = vrshrn_high_n_s64(vrshrn_n_s64(v125, 0xEuLL), v128, 0xEuLL);
    v133 = vtrn1q_s32(v129, v130);
    v134 = vtrn2q_s32(v129, v130);
    v135 = vtrn1q_s32(v131, v132);
    v136 = vtrn2q_s32(v131, v132);
    v137 = vzip2q_s64(v133, v135);
    v138 = vzip2q_s64(v134, v136);
    v139 = vmlal_s32(vmlal_s32(vmull_s32(*v134.i8, *v114.i8), *v133.i8, *v113.i8), *v138.i8, *v115.i8);
    v140 = vmlal_high_s32(vmlal_s32(vmull_s32(*v136.i8, *v114.i8), *v135.i8, *v113.i8), v138, v115);
    v141 = vmlsl_s32(vmlal_s32(vmull_s32(*v134.i8, *v118.i8), *v133.i8, *v118.i8), *v138.i8, *v118.i8);
    v142 = vmlsl_high_s32(vmlal_s32(vmull_s32(*v136.i8, *v118.i8), *v135.i8, *v118.i8), v138, v118);
    v143 = vmlal_s32(vmlsl_s32(vmull_s32(*v133.i8, *v115.i8), *v134.i8, *v113.i8), *v138.i8, *v114.i8);
    v144 = vmlal_high_s32(vmlsl_s32(vmull_s32(*v135.i8, *v115.i8), *v136.i8, *v113.i8), v138, v114);
    v145 = vsubq_s64(v143, v139);
    v146 = vmlsl_s32(v143, *v137.i8, *v118.i8);
    v147 = vmlal_s32(v145, *v137.i8, *v118.i8);
    v148 = vsubq_s64(v144, v140);
    v149 = vmlsl_high_s32(v144, v137, v118);
    v150 = vmlal_high_s32(v148, v137, v118);
    v151 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v139, *v137.i8, *v118.i8), 0xEuLL), vmlal_high_s32(v140, v137, v118), 0xEuLL);
    v152 = vrshrn_high_n_s64(vrshrn_n_s64(v141, 0xEuLL), v142, 0xEuLL);
    v153 = vrshrn_high_n_s64(vrshrn_n_s64(v146, 0xEuLL), v149, 0xEuLL);
    v154 = vrshrn_high_n_s64(vrshrn_n_s64(v147, 0xEuLL), v150, 0xEuLL);
    v155 = vtrn1q_s32(v151, v152);
    v156 = vtrn2q_s32(v151, v152);
    v157 = vtrn1q_s32(v153, v154);
    v158 = vzip2q_s64(v155, v157);
    v155.i64[1] = v157.i64[0];
    v159 = vtrn2q_s32(v153, v154);
    v160 = vzip2q_s64(v156, v159);
    v156.i64[1] = v159.i64[0];
    v159.i64[0] = 0x100000001;
    v159.i64[1] = 0x100000001;
    v161 = vshrq_n_s32(vaddq_s32(v158, v159), 2uLL);
    *a2 = vshrq_n_s32(vaddq_s32(v155, v159), 2uLL);
    a2[1] = vshrq_n_s32(vaddq_s32(v156, v159), 2uLL);
    result = vshrq_n_s32(vaddq_s32(v160, v159), 2uLL);
    a2[2] = v161;
    a2[3] = result;
  }

  else
  {
    result.i64[0] = vpx_highbd_fdct4x4_neon(a1, a2, a3, a5, a6).u64[0];
  }

  return result;
}

void vp9_highbd_fht8x8_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v293 = *MEMORY[0x277D85DE8];
  if (a4 == 2)
  {
    v126 = vshll_n_s16(*a1, 2uLL);
    v127 = vshll_high_n_s16(*a1->i8, 2uLL);
    v128 = *&a1->i8[2 * a3];
    v129 = vshll_n_s16(*v128.i8, 2uLL);
    v130 = vshll_high_n_s16(v128, 2uLL);
    v131 = *&a1->i8[4 * a3];
    v132 = vshll_n_s16(*v131.i8, 2uLL);
    v133 = vshll_high_n_s16(v131, 2uLL);
    v134 = *&a1->i8[6 * a3];
    v135 = vshll_n_s16(*v134.i8, 2uLL);
    v136 = vshll_high_n_s16(v134, 2uLL);
    v137 = *a1[a3].i8;
    v138 = vshll_n_s16(*v137.i8, 2uLL);
    v139 = vshll_high_n_s16(v137, 2uLL);
    v140 = *&a1->i8[10 * a3];
    v141 = vshll_n_s16(*v140.i8, 2uLL);
    v142 = vshll_high_n_s16(v140, 2uLL);
    v143 = *&a1->i8[12 * a3];
    v144 = vshll_n_s16(*v143.i8, 2uLL);
    v145 = vshll_high_n_s16(v143, 2uLL);
    v146 = *&a1->i8[14 * a3];
    v147 = vshll_n_s16(*v146.i8, 2uLL);
    v148 = vshll_high_n_s16(v146, 2uLL);
    v149 = vaddq_s32(v147, v126);
    v150 = vaddq_s32(v144, v129);
    v151 = vaddq_s32(v141, v132);
    v152 = vaddq_s32(v138, v135);
    v153 = vsubq_s32(v135, v138);
    v154 = vsubq_s32(v132, v141);
    v155 = vsubq_s32(v129, v144);
    v156 = vsubq_s32(v126, v147);
    v157 = vaddq_s32(v148, v127);
    v158 = vaddq_s32(v145, v130);
    v159 = vaddq_s32(v142, v133);
    v160 = vaddq_s32(v139, v136);
    v161 = vsubq_s32(v136, v139);
    v162 = vsubq_s32(v133, v142);
    v163 = vsubq_s32(v130, v145);
    v164 = vsubq_s32(v127, v148);
    v165 = vaddq_s32(v149, v152);
    v166 = vaddq_s32(v157, v160);
    v167 = vaddq_s32(v150, v151);
    v168 = vaddq_s32(v158, v159);
    v169 = vsubq_s32(v150, v151);
    v170 = vsubq_s32(v158, v159);
    v171 = vsubq_s32(v149, v152);
    v172 = vsubq_s32(v157, v160);
    v173 = vdupq_n_s32(0x5A820000u);
    v174 = vqrdmulhq_s32(vaddq_s32(v165, v167), v173);
    v175 = vqrdmulhq_s32(vaddq_s32(v166, v168), v173);
    v176 = vqrdmulhq_s32(vsubq_s32(v165, v167), v173);
    v177 = vsubq_s32(v166, v168);
    v178 = vdupq_n_s32(0x3B21u);
    v179 = vqrdmulhq_s32(v177, v173);
    v180 = vdupq_n_s32(0x187Eu);
    v181 = vmull_s32(*v171.i8, *v180.i8);
    v182 = vmull_high_s32(v171, v180);
    v183 = vmull_s32(*v172.i8, *v180.i8);
    v184 = vmull_high_s32(v172, v180);
    v185 = vmlal_s32(vmull_s32(*v169.i8, *v180.i8), *v171.i8, *v178.i8);
    v186 = vmlal_high_s32(vmull_high_s32(v169, v180), v171, v178);
    v187 = vmlal_s32(vmull_s32(*v170.i8, *v180.i8), *v172.i8, *v178.i8);
    v188 = vmlal_high_s32(vmull_high_s32(v170, v180), v172, v178);
    v189 = vrshrn_high_n_s64(vrshrn_n_s64(v185, 0xEuLL), v186, 0xEuLL);
    v190 = vrshrn_high_n_s64(vrshrn_n_s64(v187, 0xEuLL), v188, 0xEuLL);
    v191 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v181, *v169.i8, *v178.i8), 0xEuLL), vmlsl_high_s32(v182, v169, v178), 0xEuLL);
    v192 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v183, *v170.i8, *v178.i8), 0xEuLL), vmlsl_high_s32(v184, v170, v178), 0xEuLL);
    v193 = vqrdmulhq_s32(vaddq_s32(v155, v154), v173);
    v194 = vqrdmulhq_s32(vaddq_s32(v163, v162), v173);
    v195 = vqrdmulhq_s32(vsubq_s32(v155, v154), v173);
    v196 = vqrdmulhq_s32(vsubq_s32(v163, v162), v173);
    v197 = vaddq_s32(v195, v153);
    v198 = vaddq_s32(v196, v161);
    v199 = vsubq_s32(v153, v195);
    v200 = vsubq_s32(v161, v196);
    v201 = vsubq_s32(v156, v193);
    v202 = vsubq_s32(v164, v194);
    v203 = vaddq_s32(v193, v156);
    v204 = vaddq_s32(v194, v164);
    v205 = vdupq_n_s32(0x3EC5u);
    v206 = vdupq_n_s32(0xC7Cu);
    v207 = vmull_s32(*v203.i8, *v206.i8);
    v208 = vmull_high_s32(v203, v206);
    v209 = vmull_s32(*v204.i8, *v206.i8);
    v210 = vmull_high_s32(v204, v206);
    v211 = vmlal_s32(vmull_s32(*v197.i8, *v206.i8), *v203.i8, *v205.i8);
    v212 = vmlal_high_s32(vmull_high_s32(v197, v206), v203, v205);
    v213 = vmlal_s32(vmull_s32(*v198.i8, *v206.i8), *v204.i8, *v205.i8);
    v214 = vmlal_high_s32(vmull_high_s32(v198, v206), v204, v205);
    v215 = vrshrn_high_n_s64(vrshrn_n_s64(v211, 0xEuLL), v212, 0xEuLL);
    v216 = vrshrn_high_n_s64(vrshrn_n_s64(v213, 0xEuLL), v214, 0xEuLL);
    v217 = vmlsl_high_s32(v208, v197, v205);
    *v207.i8 = vrshrn_n_s64(vmlsl_s32(v207, *v197.i8, *v205.i8), 0xEuLL);
    v218 = vdupq_n_s32(0x238Eu);
    v219 = vrshrn_high_n_s64(*v207.i8, v217, 0xEuLL);
    v220 = vdupq_n_s32(0x3537u);
    v221 = vmull_s32(*v201.i8, *v220.i8);
    v222 = vmull_high_s32(v201, v220);
    v223 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(vmull_s32(*v199.i8, *v220.i8), *v201.i8, *v218.i8), 0xEuLL), vmlal_high_s32(vmull_high_s32(v199, v220), v201, v218), 0xEuLL);
    v224 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v221, *v199.i8, *v218.i8), 0xEuLL), vmlsl_high_s32(v222, v199, v218), 0xEuLL);
    v225 = vtrn1q_s32(v174, v215);
    v226 = vtrn2q_s32(v174, v215);
    v227 = vtrn1q_s32(v189, v224);
    v228 = vtrn2q_s32(v189, v224);
    v229 = vtrn1q_s32(v176, v223);
    v230 = vtrn2q_s32(v176, v223);
    v231 = vtrn1q_s32(v191, v219);
    v232 = vtrn2q_s32(v191, v219);
    v223.i64[0] = v225.i64[0];
    v233 = vzip2q_s64(v226, v228);
    v234 = vzip2q_s64(v229, v231);
    v219.i64[0] = v229.i64[0];
    v229.i64[0] = v230.i64[0];
    v235 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v209, *v198.i8, *v205.i8), 0xEuLL), vmlsl_high_s32(v210, v198, v205), 0xEuLL);
    v236 = vmull_s32(*v202.i8, *v220.i8);
    v237 = vmull_high_s32(v202, v220);
    v238 = vmull_s32(*v200.i8, *v220.i8);
    v239 = vmull_high_s32(v200, v220);
    v240 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v236, *v200.i8, *v218.i8), 0xEuLL), vmlsl_high_s32(v237, v200, v218), 0xEuLL);
    v241 = vtrn1q_s32(v175, v216);
    v242 = vtrn2q_s32(v175, v216);
    v243 = vtrn1q_s32(v190, v240);
    v244 = vzip2q_s64(v241, v243);
    v245 = vtrn2q_s32(v190, v240);
    v246 = vzip2q_s64(v242, v245);
    v223.i64[1] = v227.i64[0];
    v226.i64[1] = v228.i64[0];
    v247 = vrshrn_high_n_s64(vrshrn_n_s64(vmlal_s32(v238, *v202.i8, *v218.i8), 0xEuLL), vmlal_high_s32(v239, v202, v218), 0xEuLL);
    v248 = vtrn1q_s32(v179, v247);
    v249 = vtrn1q_s32(v192, v235);
    v250 = vzip2q_s64(v248, v249);
    v285 = v223;
    v286 = v226;
    v287 = vzip2q_s64(v225, v227);
    v288 = v233;
    v251 = vtrn2q_s32(v179, v247);
    v252 = vtrn2q_s32(v192, v235);
    v241.i64[1] = v243.i64[0];
    v242.i64[1] = v245.i64[0];
    v253 = vzip2q_s64(v251, v252);
    v289 = v241;
    v290 = v242;
    v291 = v244;
    v292 = v246;
    v219.i64[1] = v231.i64[0];
    v229.i64[1] = v232.i64[0];
    v277 = v219;
    v278 = v229;
    v279 = v234;
    v280 = vzip2q_s64(v230, v232);
    v248.i64[1] = v249.i64[0];
    v251.i64[1] = v252.i64[0];
    v281 = v248;
    v282 = v251;
    v283 = v250;
    v284 = v253;
LABEL_10:
    highbd_fadst8x8_neon(&v285, &v277);
    v262 = vsraq_n_u32(v282, v282, 0x1FuLL);
    v263 = vsraq_n_u32(v291, v291, 0x1FuLL);
    v264 = vsraq_n_u32(v283, v283, 0x1FuLL);
    v265 = vsraq_n_u32(v292, v292, 0x1FuLL);
    v266 = vsraq_n_u32(v284, v284, 0x1FuLL);
    v267 = vshrq_n_s32(vsraq_n_u32(v277, v277, 0x1FuLL), 1uLL);
    v268 = vshrq_n_s32(vsraq_n_u32(v286, v286, 0x1FuLL), 1uLL);
    v269 = vshrq_n_s32(vsraq_n_u32(v278, v278, 0x1FuLL), 1uLL);
    v270 = vshrq_n_s32(vsraq_n_u32(v287, v287, 0x1FuLL), 1uLL);
    v271 = vshrq_n_s32(vsraq_n_u32(v279, v279, 0x1FuLL), 1uLL);
    v272 = vshrq_n_s32(vsraq_n_u32(v288, v288, 0x1FuLL), 1uLL);
    v273 = vshrq_n_s32(vsraq_n_u32(v280, v280, 0x1FuLL), 1uLL);
    v274 = vshrq_n_s32(vsraq_n_u32(v289, v289, 0x1FuLL), 1uLL);
    v275 = vshrq_n_s32(vsraq_n_u32(v281, v281, 0x1FuLL), 1uLL);
    v276 = vshrq_n_s32(vsraq_n_u32(v290, v290, 0x1FuLL), 1uLL);
    *a2 = vshrq_n_s32(vsraq_n_u32(v285, v285, 0x1FuLL), 1uLL);
    a2[1] = v267;
    a2[2] = v268;
    a2[3] = v269;
    a2[4] = v270;
    a2[5] = v271;
    a2[6] = v272;
    a2[7] = v273;
    a2[8] = v274;
    a2[9] = v275;
    a2[10] = v276;
    a2[11] = vshrq_n_s32(v262, 1uLL);
    a2[12] = vshrq_n_s32(v263, 1uLL);
    a2[13] = vshrq_n_s32(v264, 1uLL);
    a2[14] = vshrq_n_s32(v265, 1uLL);
    a2[15] = vshrq_n_s32(v266, 1uLL);
    return;
  }

  if (a4 == 1)
  {
    v5 = *&a1->i8[2 * a3];
    v6 = *&a1->i8[4 * a3];
    v7 = *&a1->i8[6 * a3];
    v8 = *a1->i8;
    v9 = *a1[a3].i8;
    v10 = *&a1->i8[10 * a3];
    v11 = *&a1->i8[12 * a3];
    v12 = *&a1->i8[14 * a3];
    v285 = vshll_n_s16(*a1, 2uLL);
    v286 = vshll_n_s16(*v5.i8, 2uLL);
    v277 = vshll_high_n_s16(v8, 2uLL);
    v278 = vshll_high_n_s16(v5, 2uLL);
    v287 = vshll_n_s16(*v6.i8, 2uLL);
    v288 = vshll_n_s16(*v7.i8, 2uLL);
    v279 = vshll_high_n_s16(v6, 2uLL);
    v280 = vshll_high_n_s16(v7, 2uLL);
    v289 = vshll_n_s16(*v9.i8, 2uLL);
    v290 = vshll_n_s16(*v10.i8, 2uLL);
    v281 = vshll_high_n_s16(v9, 2uLL);
    v282 = vshll_high_n_s16(v10, 2uLL);
    v291 = vshll_n_s16(*v11.i8, 2uLL);
    v292 = vshll_n_s16(*v12.i8, 2uLL);
    v283 = vshll_high_n_s16(v11, 2uLL);
    v284 = vshll_high_n_s16(v12, 2uLL);
    highbd_fadst8x8_neon(&v285, &v277);
    v13 = vaddq_s32(v292, v285);
    v14 = vaddq_s32(v291, v286);
    v15 = vaddq_s32(v290, v287);
    v16 = vaddq_s32(v289, v288);
    v17 = vsubq_s32(v288, v289);
    v18 = vsubq_s32(v287, v290);
    v19 = vsubq_s32(v286, v291);
    v20 = vsubq_s32(v285, v292);
    v21 = vaddq_s32(v284, v277);
    v22 = vaddq_s32(v283, v278);
    v23 = vaddq_s32(v282, v279);
    v24 = vaddq_s32(v281, v280);
    v25 = vsubq_s32(v280, v281);
    v26 = vsubq_s32(v279, v282);
    v27 = vsubq_s32(v278, v283);
    v28 = vsubq_s32(v277, v284);
    v29 = vaddq_s32(v16, v13);
    v30 = vaddq_s32(v24, v21);
    v31 = vaddq_s32(v15, v14);
    v32 = vaddq_s32(v23, v22);
    v33 = vsubq_s32(v14, v15);
    v34 = vsubq_s32(v22, v23);
    v35 = vsubq_s32(v13, v16);
    v36 = vsubq_s32(v21, v24);
    v37 = vdupq_n_s32(0x5A820000u);
    v38 = vqrdmulhq_s32(vaddq_s32(v29, v31), v37);
    v39 = vqrdmulhq_s32(vaddq_s32(v30, v32), v37);
    v40 = vqrdmulhq_s32(vsubq_s32(v29, v31), v37);
    v41 = vqrdmulhq_s32(vsubq_s32(v30, v32), v37);
    v42 = vdupq_n_s32(0x3B21u);
    v43 = vdupq_n_s32(0x187Eu);
    v44 = vmull_s32(*v35.i8, *v43.i8);
    v45 = vmull_high_s32(v35, v43);
    v46 = vmull_s32(*v36.i8, *v43.i8);
    v47 = vmull_high_s32(v36, v43);
    v48 = vmlal_s32(vmull_s32(*v33.i8, *v43.i8), *v35.i8, *v42.i8);
    v49 = vmlal_high_s32(vmull_high_s32(v33, v43), v35, v42);
    v50 = vmlal_s32(vmull_s32(*v34.i8, *v43.i8), *v36.i8, *v42.i8);
    v51 = vmlal_high_s32(vmull_high_s32(v34, v43), v36, v42);
    v52 = vrshrn_high_n_s64(vrshrn_n_s64(v48, 0xEuLL), v49, 0xEuLL);
    v53 = vrshrn_high_n_s64(vrshrn_n_s64(v50, 0xEuLL), v51, 0xEuLL);
    v54 = vmlsl_s32(v46, *v34.i8, *v42.i8);
    v55 = vmlsl_high_s32(v47, v34, v42);
    v56 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v44, *v33.i8, *v42.i8), 0xEuLL), vmlsl_high_s32(v45, v33, v42), 0xEuLL);
    v57 = vrshrn_high_n_s64(vrshrn_n_s64(v54, 0xEuLL), v55, 0xEuLL);
    v58 = vqrdmulhq_s32(vaddq_s32(v18, v19), v37);
    v59 = vqrdmulhq_s32(vaddq_s32(v26, v27), v37);
    v60 = vqrdmulhq_s32(vsubq_s32(v19, v18), v37);
    v61 = vqrdmulhq_s32(vsubq_s32(v27, v26), v37);
    v62 = vaddq_s32(v60, v17);
    v63 = vaddq_s32(v61, v25);
    v64 = vsubq_s32(v17, v60);
    v65 = vsubq_s32(v25, v61);
    v66 = vsubq_s32(v20, v58);
    v67 = vsubq_s32(v28, v59);
    v68 = vaddq_s32(v58, v20);
    v69 = vaddq_s32(v59, v28);
    v70 = vdupq_n_s32(0x3EC5u);
    v71 = vdupq_n_s32(0xC7Cu);
    v72 = vmull_s32(*v68.i8, *v71.i8);
    v73 = vmull_high_s32(v68, v71);
    v74 = vmull_s32(*v69.i8, *v71.i8);
    v75 = vmull_high_s32(v69, v71);
    v76 = vmlal_s32(vmull_s32(*v62.i8, *v71.i8), *v68.i8, *v70.i8);
    v77 = vmlal_high_s32(vmull_high_s32(v62, v71), v68, v70);
    v78 = vmlal_s32(vmull_s32(*v63.i8, *v71.i8), *v69.i8, *v70.i8);
    v79 = vmlal_high_s32(vmull_high_s32(v63, v71), v69, v70);
    v80 = vrshrn_high_n_s64(vrshrn_n_s64(v76, 0xEuLL), v77, 0xEuLL);
    v81 = vrshrn_high_n_s64(vrshrn_n_s64(v78, 0xEuLL), v79, 0xEuLL);
    v82 = vmlsl_s32(v74, *v63.i8, *v70.i8);
    v83 = vmlsl_high_s32(v75, v63, v70);
    v84 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v72, *v62.i8, *v70.i8), 0xEuLL), vmlsl_high_s32(v73, v62, v70), 0xEuLL);
    v85 = vrshrn_high_n_s64(vrshrn_n_s64(v82, 0xEuLL), v83, 0xEuLL);
    v86 = vdupq_n_s32(0x238Eu);
    v87 = vdupq_n_s32(0x3537u);
    v88 = vmull_s32(*v66.i8, *v87.i8);
    v89 = vmull_high_s32(v66, v87);
    v90 = vmull_s32(*v67.i8, *v87.i8);
    v91 = vmull_high_s32(v67, v87);
    v92 = vmlal_s32(vmull_s32(*v64.i8, *v87.i8), *v66.i8, *v86.i8);
    v93 = vmlal_high_s32(vmull_high_s32(v64, v87), v66, v86);
    v94 = vmlal_s32(vmull_s32(*v65.i8, *v87.i8), *v67.i8, *v86.i8);
    v95 = vmlal_high_s32(vmull_high_s32(v65, v87), v67, v86);
    v96 = vrshrn_high_n_s64(vrshrn_n_s64(v92, 0xEuLL), v93, 0xEuLL);
    v97 = vrshrn_high_n_s64(vrshrn_n_s64(v94, 0xEuLL), v95, 0xEuLL);
    v98 = vmlsl_s32(v90, *v65.i8, *v86.i8);
    v99 = vmlsl_high_s32(v91, v65, v86);
    v100 = vrshrn_high_n_s64(vrshrn_n_s64(vmlsl_s32(v88, *v64.i8, *v86.i8), 0xEuLL), vmlsl_high_s32(v89, v64, v86), 0xEuLL);
    v101 = vrshrn_high_n_s64(vrshrn_n_s64(v98, 0xEuLL), v99, 0xEuLL);
    v102 = vtrn1q_s32(v38, v80);
    v103 = vtrn2q_s32(v38, v80);
    v104 = vtrn1q_s32(v52, v100);
    v105 = vtrn2q_s32(v52, v100);
    v106 = vtrn1q_s32(v40, v96);
    v107 = vtrn2q_s32(v40, v96);
    v108 = vtrn1q_s32(v56, v84);
    v109 = vtrn2q_s32(v56, v84);
    v110 = vtrn1q_s32(v39, v81);
    v111 = vtrn2q_s32(v39, v81);
    v112 = vtrn1q_s32(v53, v101);
    v113 = vtrn2q_s32(v53, v101);
    v114 = vtrn1q_s32(v41, v97);
    v115 = vtrn2q_s32(v41, v97);
    v116 = vtrn1q_s32(v57, v85);
    v117 = vtrn2q_s32(v57, v85);
    v118 = vzip2q_s64(v102, v104);
    v56.i64[0] = v102.i64[0];
    v56.i64[1] = v104.i64[0];
    v119 = vzip2q_s64(v103, v105);
    v103.i64[1] = v105.i64[0];
    v120 = vzip2q_s64(v106, v108);
    v97.i64[0] = v106.i64[0];
    v97.i64[1] = v108.i64[0];
    v121 = vzip2q_s64(v107, v109);
    v101.i64[0] = v107.i64[0];
    v101.i64[1] = v109.i64[0];
    v122 = vzip2q_s64(v110, v112);
    v81.i64[0] = v110.i64[0];
    v81.i64[1] = v112.i64[0];
    v123 = vzip2q_s64(v111, v113);
    v106.i64[0] = v111.i64[0];
    v106.i64[1] = v113.i64[0];
    v124 = vzip2q_s64(v114, v116);
    v85.i64[0] = v114.i64[0];
    v85.i64[1] = v116.i64[0];
    v125 = vzip2q_s64(v115, v117);
    v115.i64[1] = v117.i64[0];
    *a2 = vshrq_n_s32(vsraq_n_u32(v56, v56, 0x1FuLL), 1uLL);
    a2[1] = vshrq_n_s32(vsraq_n_u32(v97, v97, 0x1FuLL), 1uLL);
    a2[2] = vshrq_n_s32(vsraq_n_u32(v103, v103, 0x1FuLL), 1uLL);
    a2[3] = vshrq_n_s32(vsraq_n_u32(v101, v101, 0x1FuLL), 1uLL);
    a2[4] = vshrq_n_s32(vsraq_n_u32(v118, v118, 0x1FuLL), 1uLL);
    a2[5] = vshrq_n_s32(vsraq_n_u32(v120, v120, 0x1FuLL), 1uLL);
    a2[6] = vshrq_n_s32(vsraq_n_u32(v119, v119, 0x1FuLL), 1uLL);
    a2[7] = vshrq_n_s32(vsraq_n_u32(v121, v121, 0x1FuLL), 1uLL);
    a2[8] = vshrq_n_s32(vsraq_n_u32(v81, v81, 0x1FuLL), 1uLL);
    a2[9] = vshrq_n_s32(vsraq_n_u32(v85, v85, 0x1FuLL), 1uLL);
    a2[10] = vshrq_n_s32(vsraq_n_u32(v106, v106, 0x1FuLL), 1uLL);
    a2[11] = vshrq_n_s32(vsraq_n_u32(v115, v115, 0x1FuLL), 1uLL);
    a2[12] = vshrq_n_s32(vsraq_n_u32(v122, v122, 0x1FuLL), 1uLL);
    a2[13] = vshrq_n_s32(vsraq_n_u32(v124, v124, 0x1FuLL), 1uLL);
    a2[14] = vshrq_n_s32(vsraq_n_u32(v123, v123, 0x1FuLL), 1uLL);
    a2[15] = vshrq_n_s32(vsraq_n_u32(v125, v125, 0x1FuLL), 1uLL);
    return;
  }

  if (a4)
  {
    v254 = *&a1->i8[2 * a3];
    v255 = *&a1->i8[4 * a3];
    v256 = *&a1->i8[6 * a3];
    v257 = *a1->i8;
    v258 = *a1[a3].i8;
    v259 = *&a1->i8[10 * a3];
    v260 = *&a1->i8[12 * a3];
    v261 = *&a1->i8[14 * a3];
    v285 = vshll_n_s16(*a1, 2uLL);
    v286 = vshll_n_s16(*v254.i8, 2uLL);
    v277 = vshll_high_n_s16(v257, 2uLL);
    v278 = vshll_high_n_s16(v254, 2uLL);
    v287 = vshll_n_s16(*v255.i8, 2uLL);
    v288 = vshll_n_s16(*v256.i8, 2uLL);
    v279 = vshll_high_n_s16(v255, 2uLL);
    v280 = vshll_high_n_s16(v256, 2uLL);
    v289 = vshll_n_s16(*v258.i8, 2uLL);
    v290 = vshll_n_s16(*v259.i8, 2uLL);
    v281 = vshll_high_n_s16(v258, 2uLL);
    v282 = vshll_high_n_s16(v259, 2uLL);
    v291 = vshll_n_s16(*v260.i8, 2uLL);
    v292 = vshll_n_s16(*v261.i8, 2uLL);
    v283 = vshll_high_n_s16(v260, 2uLL);
    v284 = vshll_high_n_s16(v261, 2uLL);
    highbd_fadst8x8_neon(&v285, &v277);
    goto LABEL_10;
  }

  vpx_highbd_fdct8x8_neon(a1, a2, a3);
}

int64x2_t highbd_fadst8x8_neon(uint64_t a1, uint64_t a2)
{
  v2 = vdupq_n_s32(0x3FB1u);
  v3 = vdupq_n_s32(0x646u);
  v4 = *(a1 + 112);
  v6 = *(a2 + 96);
  v5 = *(a2 + 112);
  v7 = *(a1 + 16);
  v120 = vmlal_s32(vmull_s32(*a1, *v3.i8), *v4.i8, *v2.i8);
  v8 = vmlal_high_s32(vmull_high_s32(*a1, v3), v4, v2);
  v9 = *(a2 + 16);
  v10 = vmlal_s32(vmull_s32(*a2, *v3.i8), *v5.i8, *v2.i8);
  v11 = vmlal_high_s32(vmull_high_s32(*a2, v3), v5, v2);
  v119 = vmlsl_s32(vmull_s32(*v4.i8, *v3.i8), *a1, *v2.i8);
  v121 = vmlsl_high_s32(vmull_high_s32(v4, v3), *a1, v2);
  v122 = vmlsl_s32(vmull_s32(*v5.i8, *v3.i8), *a2, *v2.i8);
  v126 = vmlsl_high_s32(vmull_high_s32(v5, v3), *a2, v2);
  v12 = vdupq_n_s32(0x3871u);
  v13 = vdupq_n_s32(0x1E2Bu);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = vmull_s32(*v14.i8, *v13.i8);
  v17 = vmull_high_s32(v14, v13);
  v18 = *(a2 + 64);
  v19 = *(a2 + 80);
  v20 = vmull_s32(*v19.i8, *v13.i8);
  v21 = vmull_high_s32(v19, v13);
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v116 = vmlal_s32(vmull_s32(*v22.i8, *v13.i8), *v14.i8, *v12.i8);
  v114 = vmlal_high_s32(vmull_high_s32(v22, v13), v14, v12);
  v25 = *(a2 + 32);
  v24 = *(a2 + 48);
  v113 = vmlal_s32(vmull_s32(*v25.i8, *v13.i8), *v19.i8, *v12.i8);
  v26 = vmlal_high_s32(vmull_high_s32(v25, v13), v19, v12);
  v115 = vmlsl_s32(v16, *v22.i8, *v12.i8);
  v117 = vmlsl_high_s32(v17, v22, v12);
  v124 = vmlsl_s32(v20, *v25.i8, *v12.i8);
  v125 = vmlsl_high_s32(v21, v25, v12);
  v27 = vdupq_n_s32(0x289Au);
  v28 = vdupq_n_s32(0x3179u);
  v29 = (a1 + 64);
  v30 = *(a1 + 64);
  v31 = vmlal_s32(vmull_s32(*v30.i8, *v28.i8), *v23.i8, *v27.i8);
  v32 = vmlal_high_s32(vmull_high_s32(v30, v28), v23, v27);
  v33 = vmlal_s32(vmull_s32(*v18.i8, *v28.i8), *v24.i8, *v27.i8);
  v34 = vmlal_high_s32(vmull_high_s32(v18, v28), v24, v27);
  v35 = vmlsl_s32(vmull_s32(*v23.i8, *v28.i8), *v30.i8, *v27.i8);
  v36 = vmlsl_high_s32(vmull_high_s32(v23, v28), v30, v27);
  v37 = vdupq_n_s32(0x1294u);
  v38 = vmlsl_s32(vmull_s32(*v24.i8, *v28.i8), *v18.i8, *v27.i8);
  v39 = vmlsl_high_s32(vmull_high_s32(v24, v28), v18, v27);
  v40 = vdupq_n_s32(0x3D3Fu);
  v41 = vmlal_s32(vmull_s32(*v15.i8, *v40.i8), *v7.i8, *v37.i8);
  v42 = vmlal_high_s32(vmull_high_s32(v15, v40), v7, v37);
  v43 = vmlal_s32(vmull_s32(*v6.i8, *v40.i8), *v9.i8, *v37.i8);
  v44 = vmlal_high_s32(vmull_high_s32(v6, v40), v9, v37);
  v45 = vmlsl_s32(vmull_s32(*v7.i8, *v40.i8), *v15.i8, *v37.i8);
  v46 = vmlsl_high_s32(vmull_high_s32(v7, v40), v15, v37);
  v47 = vmlsl_s32(vmull_s32(*v9.i8, *v40.i8), *v6.i8, *v37.i8);
  v111 = vmlsl_high_s32(vmull_high_s32(v9, v40), v6, v37);
  v123 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v31, v120), 0xEuLL), vaddq_s64(v32, v8), 0xEuLL);
  v118 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v33, v10), 0xEuLL), vaddq_s64(v34, v11), 0xEuLL);
  v129 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v35, v119), 0xEuLL), vaddq_s64(v36, v121), 0xEuLL);
  v130 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v38, v122), 0xEuLL), vaddq_s64(v39, v126), 0xEuLL);
  v48 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v41, v116), 0xEuLL), vaddq_s64(v42, v114), 0xEuLL);
  v112 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v43, v113), 0xEuLL), vaddq_s64(v44, v26), 0xEuLL);
  v128 = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v45, v115), 0xEuLL), vaddq_s64(v46, v117), 0xEuLL);
  v49 = vsubq_s64(v126, v39);
  v127 = vaddq_s64(v47, v124);
  *v7.i8 = vrshrn_n_s64(vsubq_s64(v120, v31), 0xEuLL);
  *v6.i8 = vrshrn_n_s64(vsubq_s64(v8, v32), 0xEuLL);
  *v39.i8 = vrshrn_n_s64(vsubq_s64(v10, v33), 0xEuLL);
  *v10.i8 = vrshrn_n_s64(vsubq_s64(v11, v34), 0xEuLL);
  *v11.i8 = vrshrn_n_s64(vsubq_s64(v119, v35), 0xEuLL);
  *v36.i8 = vrshrn_n_s64(vsubq_s64(v121, v36), 0xEuLL);
  *v38.i8 = vrshrn_n_s64(vsubq_s64(v122, v38), 0xEuLL);
  *v31.i8 = vrshrn_n_s64(v49, 0xEuLL);
  *v30.i8 = vrshrn_n_s64(vsubq_s64(v116, v41), 0xEuLL);
  *v27.i8 = vrshrn_n_s64(vsubq_s64(v114, v42), 0xEuLL);
  *v18.i8 = vrshrn_n_s64(vsubq_s64(v113, v43), 0xEuLL);
  *v40.i8 = vrshrn_n_s64(vsubq_s64(v26, v44), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v115, v45), 0xEuLL);
  *v26.i8 = vrshrn_n_s64(vsubq_s64(v117, v46), 0xEuLL);
  *v28.i8 = vrshrn_n_s64(vsubq_s64(v124, v47), 0xEuLL);
  *v33.i8 = vrshrn_n_s64(vsubq_s64(v125, v111), 0xEuLL);
  *v47.i8 = vdup_n_s32(0x3B21u);
  *v42.i8 = vdup_n_s32(0x187Eu);
  v50 = vmull_s32(*v7.i8, *v42.i8);
  v51 = vmull_s32(*v6.i8, *v42.i8);
  v52 = vmlal_s32(vmull_s32(*v11.i8, *v42.i8), *v7.i8, *v47.i8);
  v53 = vmlal_s32(vmull_s32(*v36.i8, *v42.i8), *v6.i8, *v47.i8);
  v54 = vmlal_s32(vmull_s32(*v38.i8, *v42.i8), *v39.i8, *v47.i8);
  v55 = vmlal_s32(vmull_s32(*v31.i8, *v42.i8), *v10.i8, *v47.i8);
  v56 = vmlsl_s32(v50, *v11.i8, *v47.i8);
  v57 = vmlsl_s32(v51, *v36.i8, *v47.i8);
  v58 = vmlsl_s32(vmull_s32(*v39.i8, *v42.i8), *v38.i8, *v47.i8);
  v59 = vmlsl_s32(vmull_s32(*v10.i8, *v42.i8), *v31.i8, *v47.i8);
  *v36.i8 = vdup_n_s32(0xFFFFE782);
  v60 = vmull_s32(*v30.i8, *v47.i8);
  v61 = vmull_s32(*v27.i8, *v47.i8);
  v62 = vmull_s32(*v18.i8, *v47.i8);
  v63 = vmlal_s32(vmull_s32(*v32.i8, *v47.i8), *v30.i8, *v36.i8);
  v64 = vmlal_s32(vmull_s32(*v26.i8, *v47.i8), *v27.i8, *v36.i8);
  v65 = vmlal_s32(vmull_s32(*v28.i8, *v47.i8), *v18.i8, *v36.i8);
  v66 = vmull_s32(*v40.i8, *v47.i8);
  v67 = vmlal_s32(vmull_s32(*v33.i8, *v47.i8), *v40.i8, *v36.i8);
  v68 = vmlsl_s32(v60, *v32.i8, *v36.i8);
  v69 = vmlsl_s32(v61, *v26.i8, *v36.i8);
  v70 = vmlsl_s32(v62, *v28.i8, *v36.i8);
  v71 = vmlsl_s32(v66, *v33.i8, *v36.i8);
  v72 = vsubq_s32(v123, v48);
  v73 = vrshrn_high_n_s64(vrshrn_n_s64(vsubq_s64(v52, v63), 0xEuLL), vsubq_s64(v53, v64), 0xEuLL);
  v74 = vrshrn_high_n_s64(vrshrn_n_s64(vsubq_s64(v54, v65), 0xEuLL), vsubq_s64(v55, v67), 0xEuLL);
  v75 = vrshrn_high_n_s64(vrshrn_n_s64(vsubq_s64(v56, v68), 0xEuLL), vsubq_s64(v57, v69), 0xEuLL);
  v76 = vrshrn_high_n_s64(vrshrn_n_s64(vsubq_s64(v58, v70), 0xEuLL), vsubq_s64(v59, v71), 0xEuLL);
  v77 = vdupq_n_s32(0x5A820000u);
  *a1 = vaddq_s32(v48, v123);
  v78 = vsubq_s32(v129, v128);
  *a2 = vaddq_s32(v112, v118);
  *(a1 + 32) = vqrdmulhq_s32(vaddq_s32(v75, v73), v77);
  *(a2 + 32) = vqrdmulhq_s32(vaddq_s32(v76, v74), v77);
  *(a1 + 64) = vqrdmulhq_s32(vsubq_s32(v72, v78), v77);
  v79 = vrshrn_high_n_s64(vrshrn_n_s64(v127, 0xEuLL), vaddq_s64(v111, v125), 0xEuLL);
  v80 = vsubq_s32(v118, v112);
  v81 = vsubq_s32(v130, v79);
  *(a2 + 64) = vqrdmulhq_s32(vsubq_s32(v80, v81), v77);
  *(a1 + 96) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v68, v56), 0xEuLL), vaddq_s64(v69, v57), 0xEuLL);
  *(a2 + 96) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v70, v58), 0xEuLL), vaddq_s64(v71, v59), 0xEuLL);
  *(a1 + 16) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v63, v52), 0xEuLL), vaddq_s64(v64, v53), 0xEuLL));
  *(a2 + 16) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v65, v54), 0xEuLL), vaddq_s64(v67, v55), 0xEuLL));
  *(a1 + 48) = vnegq_s32(vqrdmulhq_s32(vaddq_s32(v78, v72), v77));
  *(a2 + 48) = vnegq_s32(vqrdmulhq_s32(vaddq_s32(v81, v80), v77));
  *(a1 + 80) = vnegq_s32(vqrdmulhq_s32(vsubq_s32(v73, v75), v77));
  *(a2 + 80) = vnegq_s32(vqrdmulhq_s32(vsubq_s32(v74, v76), v77));
  *(a1 + 112) = vnegq_s32(vaddq_s32(v129, v128));
  v82 = vnegq_s32(vaddq_s32(v130, v79));
  *(a2 + 112) = v82;
  v83 = *(a1 + 16);
  v84 = *a2;
  v85 = *(a2 + 16);
  v86 = *(a1 + 32);
  v87 = *(a1 + 48);
  v88 = *(a2 + 32);
  v89 = *(a2 + 48);
  v90 = vtrn1q_s32(*a1, v83);
  v91 = vtrn1q_s32(v86, v87);
  v92 = vzip2q_s64(v90, v91);
  v93 = vtrn2q_s32(*a1, v83);
  v94 = vtrn2q_s32(v86, v87);
  v95 = vzip2q_s64(v93, v94);
  v90.i64[1] = v91.i64[0];
  v93.i64[1] = v94.i64[0];
  v96 = *(a2 + 64);
  v97 = *(a2 + 80);
  v98 = *(a2 + 96);
  *a1 = v90;
  *(a1 + 16) = v93;
  v99 = vtrn1q_s32(v84, v85);
  v100 = vtrn2q_s32(v84, v85);
  v101 = vtrn1q_s32(v88, v89);
  v102 = vzip2q_s64(v99, v101);
  v103 = vtrn2q_s32(v88, v89);
  v104 = vzip2q_s64(v100, v103);
  *(a1 + 32) = v92;
  *(a1 + 48) = v95;
  v99.i64[1] = v101.i64[0];
  v100.i64[1] = v103.i64[0];
  v131 = vld4q_f32(v29);
  *(a1 + 64) = v99;
  *(a1 + 80) = v100;
  *(a1 + 96) = v102;
  *(a1 + 112) = v104;
  *a2 = v131;
  v105 = vtrn1q_s32(v96, v97);
  v106 = vtrn2q_s32(v96, v97);
  v107 = vtrn1q_s32(v98, v82);
  result = vtrn2q_s32(v98, v82);
  v109 = vzip2q_s64(v105, v107);
  v105.i64[1] = v107.i64[0];
  v110 = vzip2q_s64(v106, result);
  v106.i64[1] = result.i64[0];
  *(a2 + 64) = v105;
  *(a2 + 80) = v106;
  *(a2 + 96) = v109;
  *(a2 + 112) = v110;
  return result;
}

void vp9_highbd_fht16x16_neon(int16x8_t *a1, uint64_t a2, int a3, int a4)
{
  v367 = *MEMORY[0x277D85DE8];
  if (a4 == 2)
  {
    v106 = 2 * a3;
    v107 = *(a1 + v106);
    v108 = 4 * a3;
    v109 = *(a1 + v108);
    v110 = 6 * a3;
    v111 = *(a1 + v110);
    v112 = 8 * a3;
    v113 = *(a1 + v112);
    v114 = 10 * a3;
    v115 = *(a1 + v114);
    v116 = *a1;
    v117 = 12 * a3;
    v118 = *(a1 + v117);
    v119 = a3;
    v120 = v119 * 16 - v106;
    v121 = *(a1 + v119 * 16 - v106);
    v351 = vshll_n_s16(*a1->i8, 2uLL);
    v352 = vshll_n_s16(*v107.i8, 2uLL);
    v335 = vshll_high_n_s16(v116, 2uLL);
    v336 = vshll_high_n_s16(v107, 2uLL);
    v353 = vshll_n_s16(*v109.i8, 2uLL);
    v354 = vshll_n_s16(*v111.i8, 2uLL);
    v337 = vshll_high_n_s16(v109, 2uLL);
    v338 = vshll_high_n_s16(v111, 2uLL);
    v355 = vshll_n_s16(*v113.i8, 2uLL);
    v356 = vshll_n_s16(*v115.i8, 2uLL);
    v339 = vshll_high_n_s16(v113, 2uLL);
    v340 = vshll_high_n_s16(v115, 2uLL);
    v357 = vshll_n_s16(*v118.i8, 2uLL);
    v358 = vshll_n_s16(*v121.i8, 2uLL);
    v341 = vshll_high_n_s16(v118, 2uLL);
    v342 = vshll_high_n_s16(v121, 2uLL);
    v122 = a1[v119];
    v123 = *(&a1[v119] + v106);
    v124 = *(&a1[v119] + v108);
    v125 = *(&a1[v119] + v110);
    v126 = *(&a1[v119] + v112);
    v127 = *(&a1[v119] + v114);
    v128 = *(&a1[v119] + v117);
    v129 = *(&a1[v119] + v119 * 16 - v106);
    v359 = vshll_n_s16(*v122.i8, 2uLL);
    v360 = vshll_n_s16(*v123.i8, 2uLL);
    v343 = vshll_high_n_s16(v122, 2uLL);
    v344 = vshll_high_n_s16(v123, 2uLL);
    v361 = vshll_n_s16(*v124.i8, 2uLL);
    v362 = vshll_n_s16(*v125.i8, 2uLL);
    v345 = vshll_high_n_s16(v124, 2uLL);
    v346 = vshll_high_n_s16(v125, 2uLL);
    v363 = vshll_n_s16(*v126.i8, 2uLL);
    v364 = vshll_n_s16(*v127.i8, 2uLL);
    v347 = vshll_high_n_s16(v126, 2uLL);
    v348 = vshll_high_n_s16(v127, 2uLL);
    v365 = vshll_n_s16(*v128.i8, 2uLL);
    v366 = vshll_n_s16(*v129.i8, 2uLL);
    v349 = vshll_high_n_s16(v128, 2uLL);
    v350 = vshll_high_n_s16(v129, 2uLL);
    v131 = a1[1];
    v130 = a1 + 1;
    v132 = *(v130 + v106);
    v133 = *(v130 + v108);
    v134 = *(v130 + v110);
    v135 = *(v130 + v112);
    v136 = *(v130 + v114);
    v137 = *(v130 + v117);
    v138 = *(v130 + v119 * 16 - v106);
    v319 = vshll_n_s16(*v131.i8, 2uLL);
    v320 = vshll_n_s16(*v132.i8, 2uLL);
    v303 = vshll_high_n_s16(v131, 2uLL);
    v304 = vshll_high_n_s16(v132, 2uLL);
    v321 = vshll_n_s16(*v133.i8, 2uLL);
    v322 = vshll_n_s16(*v134.i8, 2uLL);
    v305 = vshll_high_n_s16(v133, 2uLL);
    v306 = vshll_high_n_s16(v134, 2uLL);
    v323 = vshll_n_s16(*v135.i8, 2uLL);
    v324 = vshll_n_s16(*v136.i8, 2uLL);
    v307 = vshll_high_n_s16(v135, 2uLL);
    v308 = vshll_high_n_s16(v136, 2uLL);
    v325 = vshll_n_s16(*v137.i8, 2uLL);
    v326 = vshll_n_s16(*v138.i8, 2uLL);
    v309 = vshll_high_n_s16(v137, 2uLL);
    v310 = vshll_high_n_s16(v138, 2uLL);
    v139 = &v130[v119];
    v140 = *(v139 + v106);
    v141 = *(v139 + v108);
    v142 = *(v139 + v110);
    v143 = *(v139 + v112);
    v144 = *(v139 + v114);
    v145 = *(v139 + v117);
    v146 = *(v139 + v120);
    v147 = vshll_high_n_s16(*v139, 2uLL);
    v327 = vshll_n_s16(*v139->i8, 2uLL);
    v328 = vshll_n_s16(*v140.i8, 2uLL);
    v311 = v147;
    v312 = vshll_high_n_s16(v140, 2uLL);
    v329 = vshll_n_s16(*v141.i8, 2uLL);
    v330 = vshll_n_s16(*v142.i8, 2uLL);
    v313 = vshll_high_n_s16(v141, 2uLL);
    v314 = vshll_high_n_s16(v142, 2uLL);
    v331 = vshll_n_s16(*v143.i8, 2uLL);
    v332 = vshll_n_s16(*v144.i8, 2uLL);
    v315 = vshll_high_n_s16(v143, 2uLL);
    v316 = vshll_high_n_s16(v144, 2uLL);
    v333 = vshll_n_s16(*v145.i8, 2uLL);
    v334 = vshll_n_s16(*v146.i8, 2uLL);
    v317 = vshll_high_n_s16(v145, 2uLL);
    v318 = vshll_high_n_s16(v146, 2uLL);
    highbd_fdct16_8col(&v351, &v335);
    highbd_fdct16_8col(&v319, &v303);
    v392 = vld4q_f32(v359.i32);
    v383 = vld4q_f32(v363.i32);
    v402 = vld4q_f32(v343.i32);
    v389 = vld4q_f32(v347.i32);
    v359 = v319;
    v360 = v320;
    v361 = v321;
    v362 = v322;
    v363 = v323;
    v364 = v324;
    v365 = v325;
    v366 = v326;
    v343 = v303;
    v344 = v304;
    v345 = v305;
    v346 = v306;
    v347 = v307;
    v348 = v308;
    v349 = v309;
    v350 = v310;
    v373 = vld4q_f32(v355.i32);
    v412 = vld4q_f32(v339.i32);
    v295 = v336;
    v297 = v335;
    v299 = v338;
    v301 = v337;
    v335 = v373.val[0];
    v336 = v373.val[1];
    v337 = v373.val[2];
    v338 = v373.val[3];
    v339 = v412.val[0];
    v340 = v412.val[1];
    v341 = v412.val[2];
    v342 = v412.val[3];
    v434 = vld4q_f32(v359.i32);
    v413 = vld4q_f32(v343.i32);
    v374 = vld4q_f32(v363.i32);
    v423 = vld4q_f32(v347.i32);
    v293 = v423.val[0];
    v319 = v392.val[0];
    v320 = v392.val[1];
    v321 = v392.val[2];
    v322 = v392.val[3];
    v323 = v402.val[0];
    v324 = v402.val[1];
    v393 = vld4q_f32(v327.i32);
    v325 = v402.val[2];
    v326 = v402.val[3];
    v303 = v383.val[0];
    v304 = v383.val[1];
    v305 = v383.val[2];
    v306 = v383.val[3];
    v383.val[3] = vtrn1q_s32(v351, v352);
    v423.val[0] = vtrn2q_s32(v351, v352);
    v402.val[1] = vtrn1q_s32(v353, v354);
    v402.val[0] = vtrn2q_s32(v353, v354);
    v307 = v389.val[0];
    v308 = v389.val[1];
    v309 = v389.val[2];
    v310 = v389.val[3];
    v390 = vld4q_f32(v311.i32);
    v402.val[2] = vtrn1q_s32(v297, v295);
    v383.val[0] = vtrn2q_s32(v297, v295);
    v359 = v434.val[0];
    v360 = v434.val[1];
    v361 = v434.val[2];
    v362 = v434.val[3];
    v435 = vld4q_f32(v331.i32);
    v402.val[3] = vtrn1q_s32(v301, v299);
    v383.val[1] = vtrn2q_s32(v301, v299);
    v363 = v413.val[0];
    v364 = v413.val[1];
    v365 = v413.val[2];
    v366 = v413.val[3];
    v413.val[2] = vzip2q_s64(v383.val[3], v402.val[1]);
    v413.val[3] = vzip2q_s64(v423.val[0], v402.val[0]);
    v413.val[1].i64[0] = v402.val[2].i64[0];
    v413.val[1].i64[1] = v402.val[3].i64[0];
    v357 = vzip2q_s64(v402.val[2], v402.val[3]);
    v358 = vzip2q_s64(v383.val[0], v383.val[1]);
    v383.val[0].i64[1] = v383.val[1].i64[0];
    v355 = v413.val[1];
    v356 = v383.val[0];
    v383.val[3].i64[1] = v402.val[1].i64[0];
    v423.val[0].i64[1] = v402.val[0].i64[0];
    v351 = v383.val[3];
    v352 = v423.val[0];
    v343 = v374.val[0];
    v344 = v374.val[1];
    v345 = v374.val[2];
    v346 = v374.val[3];
    v353 = v413.val[2];
    v354 = v413.val[3];
    v347 = v293;
    v348 = v423.val[1];
    v349 = v423.val[2];
    v350 = v423.val[3];
    v148 = &v315;
    v375 = vld4q_f32(v148);
    v327 = v393.val[0];
    v328 = v393.val[1];
    v329 = v393.val[2];
    v330 = v393.val[3];
    v331 = v390.val[0];
    v332 = v390.val[1];
    v333 = v390.val[2];
    v334 = v390.val[3];
    v315 = v375.val[0];
    v317 = v375.val[2];
    v318 = v375.val[3];
    v351 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v351, 0x1FuLL), vmvnq_s8(v351)), 2uLL);
    v352 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v423.val[0], 0x1FuLL), vmvnq_s8(v423.val[0])), 2uLL);
    v335 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v335, 0x1FuLL), vmvnq_s8(v335)), 2uLL);
    v336 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v336, 0x1FuLL), vmvnq_s8(v336)), 2uLL);
    v353 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v413.val[2], 0x1FuLL), vmvnq_s8(v413.val[2])), 2uLL);
    v354 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v413.val[3], 0x1FuLL), vmvnq_s8(v413.val[3])), 2uLL);
    v337 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v337, 0x1FuLL), vmvnq_s8(v337)), 2uLL);
    v338 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v338, 0x1FuLL), vmvnq_s8(v338)), 2uLL);
    v355 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v413.val[1], 0x1FuLL), vmvnq_s8(v413.val[1])), 2uLL);
    v356 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v356, 0x1FuLL), vmvnq_s8(v356)), 2uLL);
    v339 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v339, 0x1FuLL), vmvnq_s8(v339)), 2uLL);
    v340 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v340, 0x1FuLL), vmvnq_s8(v340)), 2uLL);
    v357 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v357, 0x1FuLL), vmvnq_s8(v357)), 2uLL);
    v358 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v358, 0x1FuLL), vmvnq_s8(v358)), 2uLL);
    v341 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v341, 0x1FuLL), vmvnq_s8(v341)), 2uLL);
    v342 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v342, 0x1FuLL), vmvnq_s8(v342)), 2uLL);
    v359 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v359, 0x1FuLL), vmvnq_s8(v359)), 2uLL);
    v360 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v360, 0x1FuLL), vmvnq_s8(v360)), 2uLL);
    v343 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v343, 0x1FuLL), vmvnq_s8(v343)), 2uLL);
    v344 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v344, 0x1FuLL), vmvnq_s8(v344)), 2uLL);
    v361 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v361, 0x1FuLL), vmvnq_s8(v361)), 2uLL);
    v362 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v362, 0x1FuLL), vmvnq_s8(v362)), 2uLL);
    v345 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v345, 0x1FuLL), vmvnq_s8(v345)), 2uLL);
    v346 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v346, 0x1FuLL), vmvnq_s8(v346)), 2uLL);
    v363 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v363, 0x1FuLL), vmvnq_s8(v363)), 2uLL);
    v364 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v364, 0x1FuLL), vmvnq_s8(v364)), 2uLL);
    v347 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v347, 0x1FuLL), vmvnq_s8(v347)), 2uLL);
    v348 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v423.val[1], 0x1FuLL), vmvnq_s8(v423.val[1])), 2uLL);
    v365 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v365, 0x1FuLL), vmvnq_s8(v365)), 2uLL);
    v366 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v366, 0x1FuLL), vmvnq_s8(v366)), 2uLL);
    v349 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v423.val[2], 0x1FuLL), vmvnq_s8(v423.val[2])), 2uLL);
    v350 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v350, 0x1FuLL), vmvnq_s8(v350)), 2uLL);
    v319 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v319, 0x1FuLL), vmvnq_s8(v319)), 2uLL);
    v320 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v320, 0x1FuLL), vmvnq_s8(v320)), 2uLL);
    v303 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v303, 0x1FuLL), vmvnq_s8(v303)), 2uLL);
    v304 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v304, 0x1FuLL), vmvnq_s8(v304)), 2uLL);
    v321 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v321, 0x1FuLL), vmvnq_s8(v321)), 2uLL);
    v322 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v322, 0x1FuLL), vmvnq_s8(v322)), 2uLL);
    v305 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v305, 0x1FuLL), vmvnq_s8(v305)), 2uLL);
    v306 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v306, 0x1FuLL), vmvnq_s8(v306)), 2uLL);
    v323 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v323, 0x1FuLL), vmvnq_s8(v323)), 2uLL);
    v324 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v324, 0x1FuLL), vmvnq_s8(v324)), 2uLL);
    v307 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v307, 0x1FuLL), vmvnq_s8(v307)), 2uLL);
    v308 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v308, 0x1FuLL), vmvnq_s8(v308)), 2uLL);
    v325 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v325, 0x1FuLL), vmvnq_s8(v325)), 2uLL);
    v326 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v326, 0x1FuLL), vmvnq_s8(v326)), 2uLL);
    v309 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v309, 0x1FuLL), vmvnq_s8(v309)), 2uLL);
    v310 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v310, 0x1FuLL), vmvnq_s8(v310)), 2uLL);
    v327 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v327, 0x1FuLL), vmvnq_s8(v327)), 2uLL);
    v328 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v328, 0x1FuLL), vmvnq_s8(v328)), 2uLL);
    v311 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v435.val[0], 0x1FuLL), vmvnq_s8(v435.val[0])), 2uLL);
    v312 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v435.val[1], 0x1FuLL), vmvnq_s8(v435.val[1])), 2uLL);
    v329 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v329, 0x1FuLL), vmvnq_s8(v329)), 2uLL);
    v330 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v330, 0x1FuLL), vmvnq_s8(v330)), 2uLL);
    v313 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v435.val[2], 0x1FuLL), vmvnq_s8(v435.val[2])), 2uLL);
    v314 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v435.val[3], 0x1FuLL), vmvnq_s8(v435.val[3])), 2uLL);
    v331 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v331, 0x1FuLL), vmvnq_s8(v331)), 2uLL);
    v332 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v332, 0x1FuLL), vmvnq_s8(v332)), 2uLL);
    v315 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v315, 0x1FuLL), vmvnq_s8(v315)), 2uLL);
    v316 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v375.val[1], 0x1FuLL), vmvnq_s8(v375.val[1])), 2uLL);
    v333 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v333, 0x1FuLL), vmvnq_s8(v333)), 2uLL);
    v334 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v334, 0x1FuLL), vmvnq_s8(v334)), 2uLL);
    v317 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v317, 0x1FuLL), vmvnq_s8(v317)), 2uLL);
    v318 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v318, 0x1FuLL), vmvnq_s8(v318)), 2uLL);
    highbd_fadst16_8col(&v351, &v335);
    highbd_fadst16_8col(&v319, &v303);
    v414 = vld4q_f32(v359.i32);
    v384 = vld4q_f32(v363.i32);
    v403 = vld4q_f32(v343.i32);
    v150 = &v355;
    v149 = &v339;
    v424 = vld4q_f32(v150);
    v436 = vld4q_f32(v149);
    v151 = v335;
    v152 = v336;
    v153 = v337;
    v154 = v338;
    v335 = v424.val[0];
    v336 = v424.val[1];
    v337 = v424.val[2];
    v338 = v424.val[3];
    v339 = v436.val[0];
    v340 = v436.val[1];
    v341 = v436.val[2];
    v342 = v436.val[3];
    v359 = v319;
    v360 = v320;
    v424.val[0] = v321;
    v424.val[1] = v322;
    v319 = v414.val[0];
    v320 = v414.val[1];
    v321 = v414.val[2];
    v322 = v414.val[3];
    v415 = vld4q_f32(v347.i32);
    v361 = v424.val[0];
    v362 = v424.val[1];
    v363 = v323;
    v364 = v324;
    v365 = v325;
    v366 = v326;
    v343 = v303;
    v344 = v304;
    v345 = v305;
    v346 = v306;
    v347 = v307;
    v348 = v308;
    v424.val[0] = v309;
    v424.val[1] = v310;
    v323 = v403.val[0];
    v324 = v403.val[1];
    v325 = v403.val[2];
    v326 = v403.val[3];
    v303 = v384.val[0];
    v304 = v384.val[1];
    v305 = v384.val[2];
    v306 = v384.val[3];
    v307 = v415.val[0];
    v308 = v415.val[1];
    v309 = v415.val[2];
    v310 = v415.val[3];
    v385 = vld4q_f32(v359.i32);
    v404 = vld4q_f32(v343.i32);
    v416 = vld4q_f32(v363.i32);
    v349 = v424.val[0];
    v350 = v424.val[1];
    v359 = v385.val[0];
    v360 = v385.val[1];
    v361 = v385.val[2];
    v362 = v385.val[3];
    v386 = vld4q_f32(v347.i32);
    v363 = v404.val[0];
    v364 = v404.val[1];
    v365 = v404.val[2];
    v366 = v404.val[3];
    v343 = v416.val[0];
    v344 = v416.val[1];
    v345 = v416.val[2];
    v346 = v416.val[3];
    v347 = v386.val[0];
    v348 = v386.val[1];
    v349 = v386.val[2];
    v350 = v386.val[3];
    v387 = vld4q_f32(v327.i32);
    v405 = vld4q_f32(v311.i32);
    v417 = vld4q_f32(v331.i32);
    v327 = v387.val[0];
    v328 = v387.val[1];
    v329 = v387.val[2];
    v330 = v387.val[3];
    v331 = v405.val[0];
    v332 = v405.val[1];
    v333 = v405.val[2];
    v334 = v405.val[3];
    v405.val[0] = vtrn1q_s32(v351, v352);
    v387.val[0] = vtrn2q_s32(v351, v352);
    v387.val[1] = vtrn1q_s32(v353, v354);
    v387.val[2] = vtrn2q_s32(v353, v354);
    v387.val[3] = vtrn1q_s32(v151, v152);
    v155 = vtrn2q_s32(v151, v152);
    v156 = vtrn1q_s32(v153, v154);
    v157 = vtrn2q_s32(v153, v154);
    v158 = vzip2q_s64(v405.val[0], v387.val[1]);
    v405.val[0].i64[1] = v387.val[1].i64[0];
    v387.val[1] = vzip2q_s64(v387.val[0], v387.val[2]);
    v387.val[0].i64[1] = v387.val[2].i64[0];
    v387.val[2] = vzip2q_s64(v387.val[3], v156);
    v387.val[3].i64[1] = v156.i64[0];
    v159 = vzip2q_s64(v155, v157);
    v155.i64[1] = v157.i64[0];
    v351 = v405.val[0];
    v352 = v387.val[0];
    v353 = v158;
    v354 = v387.val[1];
    v355 = v387.val[3];
    v356 = v155;
    v357 = v387.val[2];
    v358 = v159;
    v311 = v417.val[0];
    v312 = v417.val[1];
    v313 = v417.val[2];
    v314 = v417.val[3];
LABEL_10:
    v372 = vld4q_f32(v315.i32);
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    v5 = 2 * a3;
    v6 = *(a1 + v5);
    v7 = 4 * a3;
    v8 = *(a1 + v7);
    v9 = 6 * a3;
    v10 = *(a1 + v9);
    v11 = 8 * a3;
    v12 = *(a1 + v11);
    v13 = *a1;
    v14 = 10 * a3;
    v15 = *(a1 + v14);
    v16 = 12 * a3;
    v17 = *(a1 + v16);
    v18 = a3;
    v19 = v18 * 16 - v5;
    v20 = *(a1 + v18 * 16 - v5);
    v351 = vshll_n_s16(*a1->i8, 2uLL);
    v352 = vshll_n_s16(*v6.i8, 2uLL);
    v335 = vshll_high_n_s16(v13, 2uLL);
    v336 = vshll_high_n_s16(v6, 2uLL);
    v353 = vshll_n_s16(*v8.i8, 2uLL);
    v354 = vshll_n_s16(*v10.i8, 2uLL);
    v337 = vshll_high_n_s16(v8, 2uLL);
    v338 = vshll_high_n_s16(v10, 2uLL);
    v355 = vshll_n_s16(*v12.i8, 2uLL);
    v356 = vshll_n_s16(*v15.i8, 2uLL);
    v339 = vshll_high_n_s16(v12, 2uLL);
    v340 = vshll_high_n_s16(v15, 2uLL);
    v357 = vshll_n_s16(*v17.i8, 2uLL);
    v358 = vshll_n_s16(*v20.i8, 2uLL);
    v341 = vshll_high_n_s16(v17, 2uLL);
    v342 = vshll_high_n_s16(v20, 2uLL);
    v21 = a1[v18];
    v22 = *(&a1[v18] + v5);
    v23 = *(&a1[v18] + v7);
    v24 = *(&a1[v18] + v9);
    v25 = *(&a1[v18] + v11);
    v26 = *(&a1[v18] + v14);
    v27 = *(&a1[v18] + v16);
    v28 = *(&a1[v18] + v18 * 16 - v5);
    v359 = vshll_n_s16(*v21.i8, 2uLL);
    v360 = vshll_n_s16(*v22.i8, 2uLL);
    v343 = vshll_high_n_s16(v21, 2uLL);
    v344 = vshll_high_n_s16(v22, 2uLL);
    v361 = vshll_n_s16(*v23.i8, 2uLL);
    v362 = vshll_n_s16(*v24.i8, 2uLL);
    v345 = vshll_high_n_s16(v23, 2uLL);
    v346 = vshll_high_n_s16(v24, 2uLL);
    v363 = vshll_n_s16(*v25.i8, 2uLL);
    v364 = vshll_n_s16(*v26.i8, 2uLL);
    v347 = vshll_high_n_s16(v25, 2uLL);
    v348 = vshll_high_n_s16(v26, 2uLL);
    v365 = vshll_n_s16(*v27.i8, 2uLL);
    v366 = vshll_n_s16(*v28.i8, 2uLL);
    v349 = vshll_high_n_s16(v27, 2uLL);
    v350 = vshll_high_n_s16(v28, 2uLL);
    v30 = a1[1];
    v29 = a1 + 1;
    v31 = *(v29 + v5);
    v32 = *(v29 + v7);
    v33 = *(v29 + v9);
    v34 = *(v29 + v11);
    v35 = *(v29 + v14);
    v36 = *(v29 + v16);
    v37 = *(v29 + v18 * 16 - v5);
    v319 = vshll_n_s16(*v30.i8, 2uLL);
    v320 = vshll_n_s16(*v31.i8, 2uLL);
    v303 = vshll_high_n_s16(v30, 2uLL);
    v304 = vshll_high_n_s16(v31, 2uLL);
    v321 = vshll_n_s16(*v32.i8, 2uLL);
    v322 = vshll_n_s16(*v33.i8, 2uLL);
    v305 = vshll_high_n_s16(v32, 2uLL);
    v306 = vshll_high_n_s16(v33, 2uLL);
    v323 = vshll_n_s16(*v34.i8, 2uLL);
    v324 = vshll_n_s16(*v35.i8, 2uLL);
    v307 = vshll_high_n_s16(v34, 2uLL);
    v308 = vshll_high_n_s16(v35, 2uLL);
    v325 = vshll_n_s16(*v36.i8, 2uLL);
    v326 = vshll_n_s16(*v37.i8, 2uLL);
    v309 = vshll_high_n_s16(v36, 2uLL);
    v310 = vshll_high_n_s16(v37, 2uLL);
    v38 = &v29[v18];
    v39 = *(v38 + v5);
    v40 = *(v38 + v7);
    v41 = *(v38 + v9);
    v42 = *(v38 + v11);
    v43 = *(v38 + v14);
    v44 = *(v38 + v16);
    v45 = *(v38 + v19);
    v46 = vshll_high_n_s16(*v38, 2uLL);
    v327 = vshll_n_s16(*v38->i8, 2uLL);
    v328 = vshll_n_s16(*v39.i8, 2uLL);
    v311 = v46;
    v312 = vshll_high_n_s16(v39, 2uLL);
    v329 = vshll_n_s16(*v40.i8, 2uLL);
    v330 = vshll_n_s16(*v41.i8, 2uLL);
    v313 = vshll_high_n_s16(v40, 2uLL);
    v314 = vshll_high_n_s16(v41, 2uLL);
    v331 = vshll_n_s16(*v42.i8, 2uLL);
    v332 = vshll_n_s16(*v43.i8, 2uLL);
    v315 = vshll_high_n_s16(v42, 2uLL);
    v316 = vshll_high_n_s16(v43, 2uLL);
    v333 = vshll_n_s16(*v44.i8, 2uLL);
    v334 = vshll_n_s16(*v45.i8, 2uLL);
    v317 = vshll_high_n_s16(v44, 2uLL);
    v318 = vshll_high_n_s16(v45, 2uLL);
    highbd_fadst16_8col(&v351, &v335);
    highbd_fadst16_8col(&v319, &v303);
    v396 = vld4q_f32(v359.i32);
    v369 = vld4q_f32(v363.i32);
    v406 = vld4q_f32(v343.i32);
    v47 = v319;
    v48 = v320;
    v49 = v335;
    v50 = v336;
    v430 = vld4q_f32(v355.i32);
    v51 = v337;
    v52 = v338;
    v335 = v430.val[0];
    v336 = v430.val[1];
    v337 = v430.val[2];
    v338 = v430.val[3];
    v53 = &v339;
    v431 = vld4q_f32(v53);
    v339 = v431.val[0];
    v340 = v431.val[1];
    v341 = v431.val[2];
    v342 = v431.val[3];
    v431.val[2] = vtrn1q_s32(v351, v352);
    v54 = vtrn2q_s32(v351, v352);
    v55 = vtrn1q_s32(v353, v354);
    v431.val[0] = vtrn2q_s32(v353, v354);
    v431.val[1] = vtrn1q_s32(v49, v50);
    v56 = vtrn2q_s32(v49, v50);
    v57 = vtrn1q_s32(v51, v52);
    v58 = vtrn2q_s32(v51, v52);
    v59 = vzip2q_s64(v431.val[2], v55);
    v431.val[2].i64[1] = v55.i64[0];
    v60 = vzip2q_s64(v54, v431.val[0]);
    v54.i64[1] = v431.val[0].i64[0];
    v431.val[0] = vzip2q_s64(v431.val[1], v57);
    v431.val[1].i64[1] = v57.i64[0];
    v61 = vzip2q_s64(v56, v58);
    v56.i64[1] = v58.i64[0];
    v62 = v321;
    v431.val[3] = v322;
    v319 = v396.val[0];
    v320 = v396.val[1];
    v321 = v396.val[2];
    v322 = v396.val[3];
    v63 = &v323;
    v397 = vld4q_f32(v63);
    v351 = v431.val[2];
    v352 = v54;
    v323 = v406.val[0];
    v324 = v406.val[1];
    v325 = v406.val[2];
    v326 = v406.val[3];
    v407 = vld4q_f32(v347.i32);
    v353 = v59;
    v354 = v60;
    v64 = v303;
    v65 = v304;
    v355 = v431.val[1];
    v356 = v56;
    v66 = v305;
    v67 = v306;
    v303 = v369.val[0];
    v304 = v369.val[1];
    v305 = v369.val[2];
    v306 = v369.val[3];
    v68 = &v307;
    v370 = vld4q_f32(v68);
    v357 = v431.val[0];
    v358 = v61;
    v307 = v407.val[0];
    v308 = v407.val[1];
    v309 = v407.val[2];
    v310 = v407.val[3];
    v407.val[0] = vtrn1q_s32(v47, v48);
    v69 = vtrn2q_s32(v47, v48);
    v70 = vtrn1q_s32(v62, v431.val[3]);
    v407.val[1] = vtrn2q_s32(v62, v431.val[3]);
    v407.val[2] = vtrn1q_s32(v64, v65);
    v71 = vtrn2q_s32(v64, v65);
    v407.val[3] = vtrn1q_s32(v66, v67);
    v72 = vtrn2q_s32(v66, v67);
    v73 = vzip2q_s64(v407.val[0], v70);
    v407.val[0].i64[1] = v70.i64[0];
    v74 = vzip2q_s64(v69, v407.val[1]);
    v69.i64[1] = v407.val[1].i64[0];
    v407.val[1] = vzip2q_s64(v407.val[2], v407.val[3]);
    v407.val[2].i64[1] = v407.val[3].i64[0];
    v407.val[3] = vzip2q_s64(v71, v72);
    v71.i64[1] = v72.i64[0];
    v359 = v407.val[0];
    v360 = v69;
    v361 = v73;
    v362 = v74;
    v343 = v397.val[0];
    v344 = v397.val[1];
    v345 = v397.val[2];
    v346 = v397.val[3];
    v347 = v370.val[0];
    v348 = v370.val[1];
    v349 = v370.val[2];
    v350 = v370.val[3];
    v371 = vld4q_f32(v327.i32);
    v398 = vld4q_f32(v311.i32);
    v421 = vld4q_f32(v331.i32);
    v432 = vld4q_f32(v315.i32);
    v363 = v407.val[2];
    v364 = v71;
    v365 = v407.val[1];
    v366 = v407.val[3];
    v327 = v371.val[0];
    v328 = v371.val[1];
    v329 = v371.val[2];
    v330 = v371.val[3];
    v331 = v398.val[0];
    v332 = v398.val[1];
    v333 = v398.val[2];
    v334 = v398.val[3];
    v311 = v421.val[0];
    v312 = v421.val[1];
    v313 = v421.val[2];
    v314 = v421.val[3];
    v315 = v432.val[0];
    v316 = v432.val[1];
    v317 = v432.val[2];
    v318 = v432.val[3];
    v407.val[0] = v351;
    v398.val[3] = v352;
    v407.val[1] = v335;
    v75 = v336;
    *a2 = v351;
    *(a2 + 16) = v407.val[1];
    *(a2 + 64) = v398.val[3];
    *(a2 + 80) = v75;
    v398.val[0] = v353;
    v371.val[2] = v354;
    v398.val[1] = v337;
    v371.val[3] = v338;
    *(a2 + 128) = v353;
    *(a2 + 144) = v398.val[1];
    *(a2 + 192) = v371.val[2];
    *(a2 + 208) = v371.val[3];
    v76 = v355;
    v77 = v356;
    v398.val[2] = v339;
    v78 = v340;
    v371.val[1] = v341;
    v371.val[0] = v342;
    v407.val[2] = vshrq_n_u32(v342, 0x1FuLL);
    *(a2 + 256) = v355;
    *(a2 + 272) = v398.val[2];
    *(a2 + 320) = v77;
    *(a2 + 336) = v78;
    v421.val[0] = v357;
    v421.val[1] = v358;
    *(a2 + 384) = v357;
    *(a2 + 400) = v371.val[1];
    *(a2 + 448) = v421.val[1];
    *(a2 + 464) = v371.val[0];
    v407.val[3] = vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0]));
    v421.val[2] = vsubq_s32(vshrq_n_u32(v371.val[3], 0x1FuLL), vmvnq_s8(v371.val[3]));
    v421.val[3] = vsubq_s32(vshrq_n_u32(v76, 0x1FuLL), vmvnq_s8(v76));
    v432.val[0] = vsubq_s32(vshrq_n_u32(v398.val[2], 0x1FuLL), vmvnq_s8(v398.val[2]));
    v432.val[1] = vsubq_s32(vshrq_n_u32(v77, 0x1FuLL), vmvnq_s8(v77));
    v432.val[2] = vsubq_s32(vshrq_n_u32(v78, 0x1FuLL), vmvnq_s8(v78));
    v432.val[3] = vsubq_s32(vshrq_n_u32(v371.val[1], 0x1FuLL), vmvnq_s8(v371.val[1]));
    v407.val[2] = vsubq_s32(v407.val[2], vmvnq_s8(v371.val[0]));
    v79 = v359;
    v371.val[0] = v360;
    v351 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[0], 0x1FuLL), vmvnq_s8(v407.val[0])), 2uLL);
    v352 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v398.val[3], 0x1FuLL), vmvnq_s8(v398.val[3])), 2uLL);
    v398.val[2] = v343;
    v371.val[3] = v344;
    *(a2 + 512) = v359;
    *(a2 + 528) = v398.val[2];
    *(a2 + 576) = v371.val[0];
    *(a2 + 592) = v371.val[3];
    v335 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[1], 0x1FuLL), vmvnq_s8(v407.val[1])), 2uLL);
    v336 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v75, 0x1FuLL), vmvnq_s8(v75)), 2uLL);
    v398.val[0] = v361;
    v371.val[1] = v362;
    v353 = vshrq_n_s32(v407.val[3], 2uLL);
    v354 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v371.val[2], 0x1FuLL), vmvnq_s8(v371.val[2])), 2uLL);
    v407.val[0] = v345;
    v80 = v346;
    *(a2 + 640) = v361;
    *(a2 + 656) = v407.val[0];
    *(a2 + 704) = v371.val[1];
    *(a2 + 720) = v80;
    v337 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v398.val[1], 0x1FuLL), vmvnq_s8(v398.val[1])), 2uLL);
    v338 = vshrq_n_s32(v421.val[2], 2uLL);
    v398.val[1] = v363;
    v81 = v364;
    v355 = vshrq_n_s32(v421.val[3], 2uLL);
    v356 = vshrq_n_s32(v432.val[1], 2uLL);
    v82 = v349;
    v371.val[2] = v350;
    v339 = vshrq_n_s32(v432.val[0], 2uLL);
    v340 = vshrq_n_s32(v432.val[2], 2uLL);
    v398.val[3] = vshrq_n_u32(v350, 0x1FuLL);
    v357 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[0], 0x1FuLL), vmvnq_s8(v421.val[0])), 2uLL);
    v358 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[1], 0x1FuLL), vmvnq_s8(v421.val[1])), 2uLL);
    v421.val[1] = vshrq_n_u32(v398.val[2], 0x1FuLL);
    v341 = vshrq_n_s32(v432.val[3], 2uLL);
    v342 = vshrq_n_s32(v407.val[2], 2uLL);
    v407.val[1] = vsubq_s32(vshrq_n_u32(v79, 0x1FuLL), vmvnq_s8(v79));
    v83 = vmvnq_s8(v398.val[2]);
    v398.val[2] = v347;
    v421.val[0] = v348;
    v84 = vsubq_s32(v421.val[1], v83);
    *(a2 + 768) = v363;
    *(a2 + 784) = v398.val[2];
    v421.val[1] = vsubq_s32(vshrq_n_u32(v371.val[0], 0x1FuLL), vmvnq_s8(v371.val[0]));
    *(a2 + 832) = v81;
    *(a2 + 848) = v421.val[0];
    v407.val[3] = vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0]));
    v371.val[0] = v365;
    v398.val[0] = v366;
    *(a2 + 896) = v365;
    *(a2 + 912) = v82;
    v407.val[2] = vsubq_s32(vshrq_n_u32(v371.val[1], 0x1FuLL), vmvnq_s8(v371.val[1]));
    *(a2 + 960) = v398.val[0];
    *(a2 + 976) = v371.val[2];
    v421.val[2] = vsubq_s32(vshrq_n_u32(v80, 0x1FuLL), vmvnq_s8(v80));
    v421.val[3] = vsubq_s32(vshrq_n_u32(v398.val[1], 0x1FuLL), vmvnq_s8(v398.val[1]));
    v432.val[0] = vsubq_s32(vshrq_n_u32(v398.val[2], 0x1FuLL), vmvnq_s8(v398.val[2]));
    v432.val[1] = vsubq_s32(vshrq_n_u32(v81, 0x1FuLL), vmvnq_s8(v81));
    v432.val[2] = vsubq_s32(vshrq_n_u32(v371.val[0], 0x1FuLL), vmvnq_s8(v371.val[0]));
    v371.val[0] = vsubq_s32(vshrq_n_u32(v82, 0x1FuLL), vmvnq_s8(v82));
    v432.val[3] = vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0]));
    v371.val[1] = vsubq_s32(v398.val[3], vmvnq_s8(v371.val[2]));
    v86 = v319;
    v85 = v320;
    v359 = vshrq_n_s32(v407.val[1], 2uLL);
    v360 = vshrq_n_s32(v421.val[1], 2uLL);
    v398.val[2] = v303;
    v87 = v304;
    *(a2 + 32) = v319;
    *(a2 + 48) = v398.val[2];
    *(a2 + 96) = v85;
    *(a2 + 112) = v87;
    v343 = vshrq_n_s32(v84, 2uLL);
    v344 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v371.val[3], 0x1FuLL), vmvnq_s8(v371.val[3])), 2uLL);
    v398.val[0] = v321;
    v371.val[3] = v322;
    v361 = vshrq_n_s32(v407.val[3], 2uLL);
    v362 = vshrq_n_s32(v407.val[2], 2uLL);
    v398.val[1] = v305;
    v88 = v306;
    *(a2 + 160) = v321;
    *(a2 + 176) = v398.val[1];
    v345 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[0], 0x1FuLL), vmvnq_s8(v407.val[0])), 2uLL);
    v346 = vshrq_n_s32(v421.val[2], 2uLL);
    v398.val[3] = v307;
    v371.val[2] = v308;
    v363 = vshrq_n_s32(v421.val[3], 2uLL);
    v364 = vshrq_n_s32(v432.val[1], 2uLL);
    v407.val[2] = vshrq_n_u32(v307, 0x1FuLL);
    *(a2 + 224) = v371.val[3];
    *(a2 + 240) = v88;
    v407.val[0] = vsubq_s32(vshrq_n_u32(v86, 0x1FuLL), vmvnq_s8(v86));
    v347 = vshrq_n_s32(v432.val[0], 2uLL);
    v348 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[0], 0x1FuLL), vmvnq_s8(v421.val[0])), 2uLL);
    v89 = vsubq_s32(vshrq_n_u32(v398.val[2], 0x1FuLL), vmvnq_s8(v398.val[2]));
    v407.val[1] = v323;
    v407.val[3] = v324;
    *(a2 + 288) = v323;
    *(a2 + 304) = v398.val[3];
    *(a2 + 352) = v407.val[3];
    *(a2 + 368) = v371.val[2];
    v398.val[2] = vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0]));
    v365 = vshrq_n_s32(v432.val[2], 2uLL);
    v366 = vshrq_n_s32(v432.val[3], 2uLL);
    v421.val[0] = vsubq_s32(vshrq_n_u32(v398.val[1], 0x1FuLL), vmvnq_s8(v398.val[1]));
    v398.val[1] = v325;
    v421.val[1] = v326;
    v421.val[2] = vsubq_s32(vshrq_n_u32(v371.val[3], 0x1FuLL), vmvnq_s8(v371.val[3]));
    v398.val[3] = vsubq_s32(v407.val[2], vmvnq_s8(v398.val[3]));
    v371.val[3] = v309;
    v398.val[0] = v310;
    *(a2 + 416) = v325;
    *(a2 + 432) = v371.val[3];
    *(a2 + 480) = v421.val[1];
    *(a2 + 496) = v398.val[0];
    v349 = vshrq_n_s32(v371.val[0], 2uLL);
    v350 = vshrq_n_s32(v371.val[1], 2uLL);
    v371.val[1] = vsubq_s32(vshrq_n_u32(v407.val[3], 0x1FuLL), vmvnq_s8(v407.val[3]));
    v407.val[2] = vsubq_s32(vshrq_n_u32(v371.val[2], 0x1FuLL), vmvnq_s8(v371.val[2]));
    v407.val[3] = vsubq_s32(vshrq_n_u32(v398.val[1], 0x1FuLL), vmvnq_s8(v398.val[1]));
    v421.val[3] = vsubq_s32(vshrq_n_u32(v371.val[3], 0x1FuLL), vmvnq_s8(v371.val[3]));
    v432.val[0] = vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0]));
    v398.val[1] = v327;
    v371.val[3] = v328;
    v319 = vshrq_n_s32(v407.val[0], 2uLL);
    v320 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v85, 0x1FuLL), vmvnq_s8(v85)), 2uLL);
    v407.val[0] = v311;
    v90 = v312;
    *(a2 + 544) = v327;
    *(a2 + 560) = v407.val[0];
    *(a2 + 608) = v371.val[3];
    *(a2 + 624) = v90;
    v303 = vshrq_n_s32(v89, 2uLL);
    v304 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v87, 0x1FuLL), vmvnq_s8(v87)), 2uLL);
    v398.val[0] = v329;
    v371.val[2] = v330;
    v321 = vshrq_n_s32(v398.val[2], 2uLL);
    v322 = vshrq_n_s32(v421.val[2], 2uLL);
    v398.val[2] = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v88, 0x1FuLL), vmvnq_s8(v88)), 2uLL);
    v91 = v331;
    v371.val[0] = v332;
    v92 = vshrq_n_s32(v407.val[3], 2uLL);
    v305 = vshrq_n_s32(v421.val[0], 2uLL);
    v306 = v398.val[2];
    v398.val[2] = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[1], 0x1FuLL), vmvnq_s8(v421.val[1])), 2uLL);
    v323 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[1], 0x1FuLL), vmvnq_s8(v407.val[1])), 2uLL);
    v324 = vshrq_n_s32(v371.val[1], 2uLL);
    v407.val[1] = vshrq_n_u32(v331, 0x1FuLL);
    v421.val[0] = v313;
    v421.val[1] = v314;
    *(a2 + 672) = v329;
    *(a2 + 688) = v421.val[0];
    *(a2 + 736) = v371.val[2];
    *(a2 + 752) = v421.val[1];
    v307 = vshrq_n_s32(v398.val[3], 2uLL);
    v308 = vshrq_n_s32(v407.val[2], 2uLL);
    v398.val[3] = v315;
    v407.val[2] = v316;
    *(a2 + 800) = v91;
    *(a2 + 816) = v398.val[3];
    *(a2 + 864) = v371.val[0];
    *(a2 + 880) = v407.val[2];
    v309 = vshrq_n_s32(v421.val[3], 2uLL);
    v407.val[3] = vsubq_s32(vshrq_n_u32(v421.val[1], 0x1FuLL), vmvnq_s8(v421.val[1]));
    v421.val[1] = v334;
    v93 = vsubq_s32(v407.val[1], vmvnq_s8(v91));
    v325 = v92;
    v326 = v398.val[2];
    v398.val[2] = vsubq_s32(vshrq_n_u32(v398.val[3], 0x1FuLL), vmvnq_s8(v398.val[3]));
    v94 = vsubq_s32(vshrq_n_u32(v407.val[2], 0x1FuLL), vmvnq_s8(v407.val[2]));
    v398.val[3] = vsubq_s32(vshrq_n_u32(v333, 0x1FuLL), vmvnq_s8(v333));
    v407.val[1] = v317;
    v407.val[2] = v318;
    *(a2 + 928) = v333;
    *(a2 + 944) = v407.val[1];
    *(a2 + 992) = v421.val[1];
    *(a2 + 1008) = v407.val[2];
    v310 = vshrq_n_s32(v432.val[0], 2uLL);
    v327 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v398.val[1], 0x1FuLL), vmvnq_s8(v398.val[1])), 2uLL);
    v328 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v371.val[3], 0x1FuLL), vmvnq_s8(v371.val[3])), 2uLL);
    v311 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[0], 0x1FuLL), vmvnq_s8(v407.val[0])), 2uLL);
    v312 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v90, 0x1FuLL), vmvnq_s8(v90)), 2uLL);
    v329 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v398.val[0], 0x1FuLL), vmvnq_s8(v398.val[0])), 2uLL);
    v330 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v371.val[2], 0x1FuLL), vmvnq_s8(v371.val[2])), 2uLL);
    v313 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[0], 0x1FuLL), vmvnq_s8(v421.val[0])), 2uLL);
    v314 = vshrq_n_s32(v407.val[3], 2uLL);
    v331 = vshrq_n_s32(v93, 2uLL);
    v332 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v371.val[0], 0x1FuLL), vmvnq_s8(v371.val[0])), 2uLL);
    v315 = vshrq_n_s32(v398.val[2], 2uLL);
    v316 = vshrq_n_s32(v94, 2uLL);
    v333 = vshrq_n_s32(v398.val[3], 2uLL);
    v334 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v421.val[1], 0x1FuLL), vmvnq_s8(v421.val[1])), 2uLL);
    v317 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[1], 0x1FuLL), vmvnq_s8(v407.val[1])), 2uLL);
    v318 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v407.val[2], 0x1FuLL), vmvnq_s8(v407.val[2])), 2uLL);
    highbd_fdct16_8col(&v351, &v335);
    highbd_fdct16_8col(&v319, &v303);
    v95 = &v359;
    v96 = &v339;
    v408 = vld4q_f32(v95);
    v379 = vld4q_f32(v363.i32);
    v399 = vld4q_f32(v343.i32);
    v422 = vld4q_f32(v355.i32);
    v433 = vld4q_f32(v96);
    v97 = v335;
    v98 = v336;
    v99 = v337;
    v100 = v338;
    v335 = v422.val[0];
    v336 = v422.val[1];
    v337 = v422.val[2];
    v338 = v422.val[3];
    v339 = v433.val[0];
    v340 = v433.val[1];
    v341 = v433.val[2];
    v342 = v433.val[3];
    v359 = v319;
    v360 = v320;
    v422.val[0] = v321;
    v422.val[1] = v322;
    v319 = v408.val[0];
    v320 = v408.val[1];
    v321 = v408.val[2];
    v322 = v408.val[3];
    v409 = vld4q_f32(v347.i32);
    v361 = v422.val[0];
    v362 = v422.val[1];
    v363 = v323;
    v364 = v324;
    v365 = v325;
    v366 = v326;
    v343 = v303;
    v344 = v304;
    v345 = v305;
    v346 = v306;
    v347 = v307;
    v348 = v308;
    v422.val[0] = v309;
    v422.val[1] = v310;
    v323 = v399.val[0];
    v324 = v399.val[1];
    v325 = v399.val[2];
    v326 = v399.val[3];
    v303 = v379.val[0];
    v304 = v379.val[1];
    v305 = v379.val[2];
    v306 = v379.val[3];
    v307 = v409.val[0];
    v308 = v409.val[1];
    v309 = v409.val[2];
    v310 = v409.val[3];
    v380 = vld4q_f32(v95);
    v400 = vld4q_f32(v343.i32);
    v410 = vld4q_f32(v363.i32);
    v349 = v422.val[0];
    v350 = v422.val[1];
    v359 = v380.val[0];
    v360 = v380.val[1];
    v361 = v380.val[2];
    v362 = v380.val[3];
    v381 = vld4q_f32(v347.i32);
    v363 = v400.val[0];
    v364 = v400.val[1];
    v365 = v400.val[2];
    v366 = v400.val[3];
    v343 = v410.val[0];
    v344 = v410.val[1];
    v345 = v410.val[2];
    v346 = v410.val[3];
    v347 = v381.val[0];
    v348 = v381.val[1];
    v349 = v381.val[2];
    v350 = v381.val[3];
    v382 = vld4q_f32(v327.i32);
    v401 = vld4q_f32(v311.i32);
    v411 = vld4q_f32(v331.i32);
    v327 = v382.val[0];
    v328 = v382.val[1];
    v329 = v382.val[2];
    v330 = v382.val[3];
    v331 = v401.val[0];
    v332 = v401.val[1];
    v333 = v401.val[2];
    v334 = v401.val[3];
    v401.val[0] = vtrn1q_s32(v351, v352);
    v382.val[0] = vtrn2q_s32(v351, v352);
    v382.val[1] = vtrn1q_s32(v353, v354);
    v382.val[2] = vtrn2q_s32(v353, v354);
    v382.val[3] = vtrn1q_s32(v97, v98);
    v101 = vtrn2q_s32(v97, v98);
    v102 = vtrn1q_s32(v99, v100);
    v103 = vtrn2q_s32(v99, v100);
    v104 = vzip2q_s64(v401.val[0], v382.val[1]);
    v401.val[0].i64[1] = v382.val[1].i64[0];
    v382.val[1] = vzip2q_s64(v382.val[0], v382.val[2]);
    v382.val[0].i64[1] = v382.val[2].i64[0];
    v382.val[2] = vzip2q_s64(v382.val[3], v102);
    v382.val[3].i64[1] = v102.i64[0];
    v105 = vzip2q_s64(v101, v103);
    v101.i64[1] = v103.i64[0];
    v351 = v401.val[0];
    v352 = v382.val[0];
    v353 = v104;
    v354 = v382.val[1];
    v355 = v382.val[3];
    v356 = v101;
    v357 = v382.val[2];
    v358 = v105;
    v311 = v411.val[0];
    v312 = v411.val[1];
    v313 = v411.val[2];
    v314 = v411.val[3];
    v372 = vld4q_f32(v315.i32);
LABEL_11:
    v315 = v372.val[0];
    v316 = v372.val[1];
    v317 = v372.val[2];
    v318 = v372.val[3];
    v244 = v352;
    v245 = v335;
    v246 = v336;
    *a2 = v351;
    *(a2 + 16) = v245;
    *(a2 + 64) = v244;
    *(a2 + 80) = v246;
    v247 = v354;
    v248 = v337;
    v249 = v338;
    *(a2 + 128) = v353;
    *(a2 + 144) = v248;
    *(a2 + 192) = v247;
    *(a2 + 208) = v249;
    v250 = v356;
    v251 = v339;
    v252 = v340;
    *(a2 + 256) = v355;
    *(a2 + 272) = v251;
    *(a2 + 320) = v250;
    *(a2 + 336) = v252;
    v253 = v358;
    v254 = v341;
    v255 = v342;
    *(a2 + 384) = v357;
    *(a2 + 400) = v254;
    *(a2 + 448) = v253;
    *(a2 + 464) = v255;
    v256 = v360;
    v257 = v343;
    v258 = v344;
    *(a2 + 512) = v359;
    *(a2 + 528) = v257;
    *(a2 + 576) = v256;
    *(a2 + 592) = v258;
    v259 = v362;
    v260 = v345;
    v261 = v346;
    *(a2 + 640) = v361;
    *(a2 + 656) = v260;
    *(a2 + 704) = v259;
    *(a2 + 720) = v261;
    v262 = v364;
    v263 = v347;
    v264 = v348;
    *(a2 + 768) = v363;
    *(a2 + 784) = v263;
    *(a2 + 832) = v262;
    *(a2 + 848) = v264;
    v265 = v366;
    v266 = v349;
    v267 = v350;
    *(a2 + 896) = v365;
    *(a2 + 912) = v266;
    *(a2 + 960) = v265;
    *(a2 + 976) = v267;
    v268 = v320;
    v269 = v303;
    v270 = v304;
    *(a2 + 32) = v319;
    *(a2 + 48) = v269;
    *(a2 + 96) = v268;
    *(a2 + 112) = v270;
    v271 = v322;
    v272 = v305;
    v273 = v306;
    *(a2 + 160) = v321;
    *(a2 + 176) = v272;
    *(a2 + 224) = v271;
    *(a2 + 240) = v273;
    v274 = v324;
    v275 = v307;
    v276 = v308;
    *(a2 + 288) = v323;
    *(a2 + 304) = v275;
    *(a2 + 352) = v274;
    *(a2 + 368) = v276;
    v277 = v326;
    v278 = v309;
    v279 = v310;
    *(a2 + 416) = v325;
    *(a2 + 432) = v278;
    *(a2 + 480) = v277;
    *(a2 + 496) = v279;
    v280 = v328;
    v281 = v311;
    v282 = v312;
    *(a2 + 544) = v327;
    *(a2 + 560) = v281;
    *(a2 + 608) = v280;
    *(a2 + 624) = v282;
    v283 = v330;
    v284 = v313;
    v285 = v314;
    *(a2 + 672) = v329;
    *(a2 + 688) = v284;
    *(a2 + 736) = v283;
    *(a2 + 752) = v285;
    v286 = v332;
    v287 = v315;
    v288 = v316;
    *(a2 + 800) = v331;
    *(a2 + 816) = v287;
    *(a2 + 864) = v286;
    *(a2 + 880) = v288;
    v289 = v334;
    v290 = v317;
    v291 = v318;
    *(a2 + 928) = v333;
    *(a2 + 944) = v290;
    *(a2 + 992) = v289;
    *(a2 + 1008) = v291;
    return;
  }

  if (a4)
  {
    v160 = 2 * a3;
    v161 = *(a1 + v160);
    v162 = 4 * a3;
    v163 = *(a1 + v162);
    v164 = 6 * a3;
    v165 = *(a1 + v164);
    v166 = 8 * a3;
    v167 = *(a1 + v166);
    v168 = *a1;
    v169 = 10 * a3;
    v170 = *(a1 + v169);
    v171 = 12 * a3;
    v172 = *(a1 + v171);
    v173 = a3;
    v174 = v173 * 16 - v160;
    v175 = *(a1 + v173 * 16 - v160);
    v351 = vshll_n_s16(*a1->i8, 2uLL);
    v352 = vshll_n_s16(*v161.i8, 2uLL);
    v335 = vshll_high_n_s16(v168, 2uLL);
    v336 = vshll_high_n_s16(v161, 2uLL);
    v353 = vshll_n_s16(*v163.i8, 2uLL);
    v354 = vshll_n_s16(*v165.i8, 2uLL);
    v337 = vshll_high_n_s16(v163, 2uLL);
    v338 = vshll_high_n_s16(v165, 2uLL);
    v355 = vshll_n_s16(*v167.i8, 2uLL);
    v356 = vshll_n_s16(*v170.i8, 2uLL);
    v339 = vshll_high_n_s16(v167, 2uLL);
    v340 = vshll_high_n_s16(v170, 2uLL);
    v357 = vshll_n_s16(*v172.i8, 2uLL);
    v358 = vshll_n_s16(*v175.i8, 2uLL);
    v341 = vshll_high_n_s16(v172, 2uLL);
    v342 = vshll_high_n_s16(v175, 2uLL);
    v176 = a1[v173];
    v177 = *(&a1[v173] + v160);
    v178 = *(&a1[v173] + v162);
    v179 = *(&a1[v173] + v164);
    v180 = *(&a1[v173] + v166);
    v181 = *(&a1[v173] + v169);
    v182 = *(&a1[v173] + v171);
    v183 = *(&a1[v173] + v173 * 16 - v160);
    v359 = vshll_n_s16(*v176.i8, 2uLL);
    v360 = vshll_n_s16(*v177.i8, 2uLL);
    v343 = vshll_high_n_s16(v176, 2uLL);
    v344 = vshll_high_n_s16(v177, 2uLL);
    v361 = vshll_n_s16(*v178.i8, 2uLL);
    v362 = vshll_n_s16(*v179.i8, 2uLL);
    v345 = vshll_high_n_s16(v178, 2uLL);
    v346 = vshll_high_n_s16(v179, 2uLL);
    v363 = vshll_n_s16(*v180.i8, 2uLL);
    v364 = vshll_n_s16(*v181.i8, 2uLL);
    v347 = vshll_high_n_s16(v180, 2uLL);
    v348 = vshll_high_n_s16(v181, 2uLL);
    v365 = vshll_n_s16(*v182.i8, 2uLL);
    v366 = vshll_n_s16(*v183.i8, 2uLL);
    v349 = vshll_high_n_s16(v182, 2uLL);
    v350 = vshll_high_n_s16(v183, 2uLL);
    v185 = a1[1];
    v184 = a1 + 1;
    v186 = *(v184 + v160);
    v187 = *(v184 + v162);
    v188 = *(v184 + v164);
    v189 = *(v184 + v166);
    v190 = *(v184 + v169);
    v191 = *(v184 + v171);
    v192 = *(v184 + v173 * 16 - v160);
    v319 = vshll_n_s16(*v185.i8, 2uLL);
    v320 = vshll_n_s16(*v186.i8, 2uLL);
    v303 = vshll_high_n_s16(v185, 2uLL);
    v304 = vshll_high_n_s16(v186, 2uLL);
    v321 = vshll_n_s16(*v187.i8, 2uLL);
    v322 = vshll_n_s16(*v188.i8, 2uLL);
    v305 = vshll_high_n_s16(v187, 2uLL);
    v306 = vshll_high_n_s16(v188, 2uLL);
    v323 = vshll_n_s16(*v189.i8, 2uLL);
    v324 = vshll_n_s16(*v190.i8, 2uLL);
    v307 = vshll_high_n_s16(v189, 2uLL);
    v308 = vshll_high_n_s16(v190, 2uLL);
    v325 = vshll_n_s16(*v191.i8, 2uLL);
    v326 = vshll_n_s16(*v192.i8, 2uLL);
    v309 = vshll_high_n_s16(v191, 2uLL);
    v310 = vshll_high_n_s16(v192, 2uLL);
    v193 = &v184[v173];
    v194 = *(v193 + v160);
    v195 = *(v193 + v162);
    v196 = *(v193 + v164);
    v197 = *(v193 + v166);
    v198 = *(v193 + v169);
    v199 = *(v193 + v171);
    v200 = *(v193 + v174);
    v201 = vshll_high_n_s16(*v193, 2uLL);
    v327 = vshll_n_s16(*v193->i8, 2uLL);
    v328 = vshll_n_s16(*v194.i8, 2uLL);
    v311 = v201;
    v312 = vshll_high_n_s16(v194, 2uLL);
    v329 = vshll_n_s16(*v195.i8, 2uLL);
    v330 = vshll_n_s16(*v196.i8, 2uLL);
    v313 = vshll_high_n_s16(v195, 2uLL);
    v314 = vshll_high_n_s16(v196, 2uLL);
    v331 = vshll_n_s16(*v197.i8, 2uLL);
    v332 = vshll_n_s16(*v198.i8, 2uLL);
    v315 = vshll_high_n_s16(v197, 2uLL);
    v316 = vshll_high_n_s16(v198, 2uLL);
    v333 = vshll_n_s16(*v199.i8, 2uLL);
    v334 = vshll_n_s16(*v200.i8, 2uLL);
    v317 = vshll_high_n_s16(v199, 2uLL);
    v318 = vshll_high_n_s16(v200, 2uLL);
    highbd_fadst16_8col(&v351, &v335);
    highbd_fadst16_8col(&v319, &v303);
    v391 = vld4q_f32(v359.i32);
    v394 = vld4q_f32(v363.i32);
    v418 = vld4q_f32(v343.i32);
    v437 = vld4q_f32(v347.i32);
    v376 = vld4q_f32(v323.i32);
    v302 = v376;
    v425 = vld4q_f32(v355.i32);
    v202 = &v339;
    v377 = vld4q_f32(v202);
    v203 = v335;
    v204 = v337;
    v298 = v336;
    v300 = v338;
    v335 = v425.val[0];
    v336 = v425.val[1];
    v337 = v425.val[2];
    v338 = v425.val[3];
    v205 = v320;
    v339 = v377.val[0];
    v340 = v377.val[1];
    v341 = v377.val[2];
    v342 = v377.val[3];
    v426 = vld4q_f32(v307.i32);
    v206 = v322;
    v294 = v321;
    v296 = v319;
    v319 = v391.val[0];
    v320 = v391.val[1];
    v321 = v391.val[2];
    v322 = v391.val[3];
    v391 = vld4q_f32(v327.i32);
    v323 = v418.val[0];
    v324 = v418.val[1];
    v325 = v418.val[2];
    v326 = v418.val[3];
    v207 = v303;
    v418.val[3] = v304;
    v418.val[2] = v305;
    v391.val[3] = v306;
    v303 = v394.val[0];
    v304 = v394.val[1];
    v305 = v394.val[2];
    v306 = v394.val[3];
    v208 = vtrn1q_s32(v351, v352);
    v209 = vtrn2q_s32(v351, v352);
    v418.val[0] = vtrn1q_s32(v353, v354);
    v418.val[1] = vtrn2q_s32(v353, v354);
    v307 = v437.val[0];
    v308 = v437.val[1];
    v309 = v437.val[2];
    v310 = v437.val[3];
    v210 = &v311;
    v378 = vld4q_f32(v210);
    v437.val[1] = vtrn1q_s32(v203, v298);
    v211 = vtrn2q_s32(v203, v298);
    v343 = v302.val[0];
    v344 = v302.val[1];
    v345 = v302.val[2];
    v346 = v302.val[3];
    v395 = vld4q_f32(v331.i32);
    v437.val[0] = vtrn1q_s32(v204, v300);
    v437.val[2] = vtrn2q_s32(v204, v300);
    v347 = v426.val[0];
    v348 = v426.val[1];
    v349 = v426.val[2];
    v350 = v426.val[3];
    v212 = &v315;
    v427 = vld4q_f32(v212);
    v292 = v427;
    v327 = v213;
    v328 = v391.val[0];
    v329 = v391.val[1];
    v330 = v391.val[2];
    v437.val[3] = vzip2q_s64(v208, v418.val[0]);
    v214 = vzip2q_s64(v209, v418.val[1]);
    v427.val[2] = vzip2q_s64(v437.val[1], v437.val[0]);
    v391.val[2] = vtrn1q_s32(v296, v205);
    v427.val[3] = vtrn2q_s32(v296, v205);
    v215 = vtrn1q_s32(v294, v206);
    v427.val[1] = vtrn2q_s32(v294, v206);
    v427.val[0] = vtrn1q_s32(v207, v418.val[3]);
    v216 = vtrn2q_s32(v207, v418.val[3]);
    v418.val[3].i64[0] = v208.i64[0];
    v418.val[3].i64[1] = v418.val[0].i64[0];
    v391.val[1] = vtrn1q_s32(v418.val[2], v391.val[3]);
    v391.val[0] = vtrn2q_s32(v418.val[2], v391.val[3]);
    v391.val[3] = vzip2q_s64(v391.val[2], v215);
    v418.val[0].i64[0] = v391.val[2].i64[0];
    v217 = vzip2q_s64(v427.val[3], v427.val[1]);
    v391.val[2] = vzip2q_s64(v427.val[0], v391.val[1]);
    v331 = v378.val[0];
    v332 = v378.val[1];
    v333 = v378.val[2];
    v334 = v378.val[3];
    v378.val[2] = vzip2q_s64(v211, v437.val[2]);
    v209.i64[1] = v418.val[1].i64[0];
    v311 = v395.val[0];
    v312 = v395.val[1];
    v313 = v395.val[2];
    v314 = v395.val[3];
    v437.val[1].i64[1] = v437.val[0].i64[0];
    v211.i64[1] = v437.val[2].i64[0];
    v378.val[0] = vzip2q_s64(v216, v391.val[0]);
    v427.val[0].i64[1] = v391.val[1].i64[0];
    v216.i64[1] = v391.val[0].i64[0];
    v208.i64[0] = v418.val[0].i64[0];
    v208.i64[1] = v215.i64[0];
    v215.i64[0] = v427.val[3].i64[0];
    v215.i64[1] = v427.val[1].i64[0];
    v359 = v208;
    v315 = v292.val[0];
    v351 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v418.val[3], 0x1FuLL), vmvnq_s8(v418.val[3])), 2uLL);
    v352 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v209, 0x1FuLL), vmvnq_s8(v209)), 2uLL);
    v335 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v335, 0x1FuLL), vmvnq_s8(v335)), 2uLL);
    v336 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v336, 0x1FuLL), vmvnq_s8(v336)), 2uLL);
    v353 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v437.val[3], 0x1FuLL), vmvnq_s8(v437.val[3])), 2uLL);
    v354 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v214, 0x1FuLL), vmvnq_s8(v214)), 2uLL);
    v337 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v337, 0x1FuLL), vmvnq_s8(v337)), 2uLL);
    v338 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v338, 0x1FuLL), vmvnq_s8(v338)), 2uLL);
    v355 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v437.val[1], 0x1FuLL), vmvnq_s8(v437.val[1])), 2uLL);
    v356 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v211, 0x1FuLL), vmvnq_s8(v211)), 2uLL);
    v339 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v339, 0x1FuLL), vmvnq_s8(v339)), 2uLL);
    v340 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v340, 0x1FuLL), vmvnq_s8(v340)), 2uLL);
    v357 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v427.val[2], 0x1FuLL), vmvnq_s8(v427.val[2])), 2uLL);
    v358 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v378.val[2], 0x1FuLL), vmvnq_s8(v378.val[2])), 2uLL);
    v341 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v341, 0x1FuLL), vmvnq_s8(v341)), 2uLL);
    v342 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v342, 0x1FuLL), vmvnq_s8(v342)), 2uLL);
    v359 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v359, 0x1FuLL), vmvnq_s8(v359)), 2uLL);
    v360 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v215, 0x1FuLL), vmvnq_s8(v215)), 2uLL);
    v343 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v343, 0x1FuLL), vmvnq_s8(v343)), 2uLL);
    v344 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v302.val[1], 0x1FuLL), vmvnq_s8(v302.val[1])), 2uLL);
    v361 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v391.val[3], 0x1FuLL), vmvnq_s8(v391.val[3])), 2uLL);
    v362 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v217, 0x1FuLL), vmvnq_s8(v217)), 2uLL);
    v345 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v302.val[2], 0x1FuLL), vmvnq_s8(v302.val[2])), 2uLL);
    v346 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v302.val[3], 0x1FuLL), vmvnq_s8(v302.val[3])), 2uLL);
    v363 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v427.val[0], 0x1FuLL), vmvnq_s8(v427.val[0])), 2uLL);
    v364 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v216, 0x1FuLL), vmvnq_s8(v216)), 2uLL);
    v347 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v347, 0x1FuLL), vmvnq_s8(v347)), 2uLL);
    v348 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v348, 0x1FuLL), vmvnq_s8(v348)), 2uLL);
    v365 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v391.val[2], 0x1FuLL), vmvnq_s8(v391.val[2])), 2uLL);
    v366 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v378.val[0], 0x1FuLL), vmvnq_s8(v378.val[0])), 2uLL);
    v349 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v349, 0x1FuLL), vmvnq_s8(v349)), 2uLL);
    v350 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v350, 0x1FuLL), vmvnq_s8(v350)), 2uLL);
    v319 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v319, 0x1FuLL), vmvnq_s8(v319)), 2uLL);
    v320 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v320, 0x1FuLL), vmvnq_s8(v320)), 2uLL);
    v303 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v303, 0x1FuLL), vmvnq_s8(v303)), 2uLL);
    v304 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v304, 0x1FuLL), vmvnq_s8(v304)), 2uLL);
    v321 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v321, 0x1FuLL), vmvnq_s8(v321)), 2uLL);
    v322 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v322, 0x1FuLL), vmvnq_s8(v322)), 2uLL);
    v305 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v305, 0x1FuLL), vmvnq_s8(v305)), 2uLL);
    v306 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v306, 0x1FuLL), vmvnq_s8(v306)), 2uLL);
    v323 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v323, 0x1FuLL), vmvnq_s8(v323)), 2uLL);
    v324 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v324, 0x1FuLL), vmvnq_s8(v324)), 2uLL);
    v307 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v307, 0x1FuLL), vmvnq_s8(v307)), 2uLL);
    v308 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v308, 0x1FuLL), vmvnq_s8(v308)), 2uLL);
    v325 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v325, 0x1FuLL), vmvnq_s8(v325)), 2uLL);
    v326 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v326, 0x1FuLL), vmvnq_s8(v326)), 2uLL);
    v309 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v309, 0x1FuLL), vmvnq_s8(v309)), 2uLL);
    v310 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v310, 0x1FuLL), vmvnq_s8(v310)), 2uLL);
    v327 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v327, 0x1FuLL), vmvnq_s8(v327)), 2uLL);
    v328 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v328, 0x1FuLL), vmvnq_s8(v328)), 2uLL);
    v311 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v311, 0x1FuLL), vmvnq_s8(v311)), 2uLL);
    v312 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v312, 0x1FuLL), vmvnq_s8(v312)), 2uLL);
    v329 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v329, 0x1FuLL), vmvnq_s8(v329)), 2uLL);
    v330 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v330, 0x1FuLL), vmvnq_s8(v330)), 2uLL);
    v313 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v313, 0x1FuLL), vmvnq_s8(v313)), 2uLL);
    v314 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v314, 0x1FuLL), vmvnq_s8(v314)), 2uLL);
    v331 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v331, 0x1FuLL), vmvnq_s8(v331)), 2uLL);
    v332 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v332, 0x1FuLL), vmvnq_s8(v332)), 2uLL);
    v315 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v315, 0x1FuLL), vmvnq_s8(v315)), 2uLL);
    v316 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v292.val[1], 0x1FuLL), vmvnq_s8(v292.val[1])), 2uLL);
    v333 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v333, 0x1FuLL), vmvnq_s8(v333)), 2uLL);
    v334 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v334, 0x1FuLL), vmvnq_s8(v334)), 2uLL);
    v317 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v292.val[2], 0x1FuLL), vmvnq_s8(v292.val[2])), 2uLL);
    v318 = vshrq_n_s32(vsubq_s32(vshrq_n_u32(v292.val[3], 0x1FuLL), vmvnq_s8(v292.val[3])), 2uLL);
    highbd_fadst16_8col(&v351, &v335);
    highbd_fadst16_8col(&v319, &v303);
    *(&v395 + 16) = vld4q_f32(v359.i32);
    v419 = vld4q_f32(v363.i32);
    v438 = vld4q_f32(v343.i32);
    v428 = vld4q_f32(v347.i32);
    v388 = vld4q_f32(v355.i32);
    v218 = v319;
    v219 = v320;
    v220 = v335;
    v221 = v336;
    v222 = v337;
    v223 = v338;
    v335 = v388.val[0];
    v336 = v388.val[1];
    v337 = v388.val[2];
    v338 = v388.val[3];
    v224 = &v339;
    v391 = vld4q_f32(v224);
    v388.val[0] = v321;
    v388.val[1] = v322;
    v339 = v388.val[2];
    v340 = v388.val[3];
    v341 = v225;
    v342 = v391.val[0];
    v391 = vld4q_f32(v323.i32);
    v319 = v395.val[1];
    v320 = v395.val[2];
    v321 = v395.val[3];
    v322 = v226;
    v395.val[1] = v303;
    v395.val[3] = v304;
    v395.val[2] = v305;
    v227 = v306;
    v323 = v438.val[0];
    v324 = v438.val[1];
    v325 = v438.val[2];
    v326 = v438.val[3];
    v439 = vld4q_f32(v307.i32);
    v303 = v419.val[0];
    v304 = v419.val[1];
    v305 = v419.val[2];
    v306 = v419.val[3];
    v307 = v428.val[0];
    v308 = v428.val[1];
    v309 = v428.val[2];
    v310 = v428.val[3];
    v343 = v388.val[2];
    v344 = v388.val[3];
    v345 = v228;
    v346 = v391.val[0];
    v429 = vld4q_f32(v327.i32);
    v229 = &v311;
    v391 = vld4q_f32(v229);
    v420 = vld4q_f32(v331.i32);
    v347 = v439.val[0];
    v348 = v439.val[1];
    v349 = v439.val[2];
    v350 = v439.val[3];
    v327 = v429.val[0];
    v328 = v429.val[1];
    v329 = v429.val[2];
    v330 = v429.val[3];
    v331 = v388.val[2];
    v332 = v388.val[3];
    v333 = v230;
    v334 = v391.val[0];
    v439.val[0] = vtrn1q_s32(v351, v352);
    v429.val[0] = vtrn2q_s32(v351, v352);
    v429.val[1] = vtrn1q_s32(v353, v354);
    v429.val[2] = vtrn2q_s32(v353, v354);
    v429.val[3] = vtrn1q_s32(v220, v221);
    v231 = vtrn2q_s32(v220, v221);
    v232 = vtrn1q_s32(v222, v223);
    v233 = vtrn2q_s32(v222, v223);
    v234 = vzip2q_s64(v439.val[0], v429.val[1]);
    v439.val[0].i64[1] = v429.val[1].i64[0];
    v429.val[1] = vzip2q_s64(v429.val[0], v429.val[2]);
    v429.val[0].i64[1] = v429.val[2].i64[0];
    v429.val[2] = vzip2q_s64(v429.val[3], v232);
    v429.val[3].i64[1] = v232.i64[0];
    v235 = vzip2q_s64(v231, v233);
    v231.i64[1] = v233.i64[0];
    v351 = v439.val[0];
    v352 = v429.val[0];
    v353 = v234;
    v354 = v429.val[1];
    v355 = v429.val[3];
    v356 = v231;
    v357 = v429.val[2];
    v358 = v235;
    v236 = vtrn1q_s32(v218, v219);
    v237 = vtrn2q_s32(v218, v219);
    v238 = vtrn1q_s32(v388.val[0], v388.val[1]);
    v239 = vtrn2q_s32(v388.val[0], v388.val[1]);
    v240 = vtrn1q_s32(v395.val[1], v395.val[3]);
    v241 = vtrn2q_s32(v395.val[1], v395.val[3]);
    v388.val[0] = vtrn1q_s32(v395.val[2], v227);
    v388.val[1] = vtrn2q_s32(v395.val[2], v227);
    v395.val[1] = vzip2q_s64(v236, v238);
    v236.i64[1] = v238.i64[0];
    v242 = vzip2q_s64(v237, v239);
    v237.i64[1] = v239.i64[0];
    v243 = vzip2q_s64(v240, v388.val[0]);
    v240.i64[1] = v388.val[0].i64[0];
    v388.val[0] = vzip2q_s64(v241, v388.val[1]);
    v241.i64[1] = v388.val[1].i64[0];
    v359 = v236;
    v360 = v237;
    v361 = v395.val[1];
    v362 = v242;
    v363 = v240;
    v364 = v241;
    v365 = v243;
    v366 = v388.val[0];
    v311 = v420.val[0];
    v312 = v420.val[1];
    v313 = v420.val[2];
    v314 = v420.val[3];
    goto LABEL_10;
  }

  vpx_highbd_fdct16x16_neon(a1, a2, a3);
}

int16x8_t fadst16_8col(int16x8_t *a1)
{
  v1 = vdupq_n_s16(0x3FECu);
  v2 = vdupq_n_s16(0x324u);
  v3 = a1[14];
  v4 = a1[15];
  v5 = a1[1];
  v204 = vmlal_high_s16(vmull_high_s16(*a1, v2), v4, v1);
  v223 = vmlsl_s16(vmull_s16(*v4.i8, *v2.i8), *a1->i8, *v1.i8);
  v225 = vmlal_s16(vmull_s16(*a1->i8, *v2.i8), *v4.i8, *v1.i8);
  v169 = vmlsl_high_s16(vmull_high_s16(v4, v2), *a1, v1);
  v6 = vdupq_n_s16(0x3E15u);
  v7 = vdupq_n_s16(0xF8Du);
  v8 = a1[12];
  v9 = a1[13];
  v11 = a1[2];
  v10 = a1[3];
  v207 = vmlsl_s16(vmull_s16(*v9.i8, *v7.i8), *v11.i8, *v6.i8);
  v210 = vmlal_s16(vmull_s16(*v11.i8, *v7.i8), *v9.i8, *v6.i8);
  v213 = vmlsl_high_s16(vmull_high_s16(v9, v7), v11, v6);
  v216 = vmlal_high_s16(vmull_high_s16(v11, v7), v9, v6);
  v12 = vdupq_n_s16(0x39DBu);
  v13 = vdupq_n_s16(0x1B5Du);
  v14 = a1[10];
  v15 = a1[11];
  v17 = a1[4];
  v16 = a1[5];
  v18 = vmlal_s16(vmull_s16(*v17.i8, *v13.i8), *v15.i8, *v12.i8);
  v19 = vmlal_high_s16(vmull_high_s16(v17, v13), v15, v12);
  v20 = vmlsl_s16(vmull_s16(*v15.i8, *v13.i8), *v17.i8, *v12.i8);
  v21 = vmlsl_high_s16(vmull_high_s16(v15, v13), v17, v12);
  v22 = vdupq_n_s16(0x3368u);
  v23 = vdupq_n_s16(0x2620u);
  v24 = vdupq_n_s16(0x2AFBu);
  v25 = vdupq_n_s16(0x2F6Cu);
  v27 = a1[8];
  v26 = a1[9];
  v28 = a1[6];
  v29 = a1[7];
  v30 = vdupq_n_s16(0x20E7u);
  v196 = vmlal_s16(vmull_s16(*v28.i8, *v23.i8), *v26.i8, *v22.i8);
  v31 = vdupq_n_s16(0x36E5u);
  v32 = vdupq_n_s16(0x1590u);
  v33 = vmlsl_s16(vmull_s16(*v26.i8, *v23.i8), *v28.i8, *v22.i8);
  v188 = vmlal_high_s16(vmull_high_s16(v28, v23), v26, v22);
  v193 = vmlsl_high_s16(vmull_high_s16(v26, v23), v28, v22);
  v176 = vmlal_s16(vmull_s16(*v27.i8, *v25.i8), *v29.i8, *v24.i8);
  v168 = vmlal_high_s16(vmull_high_s16(v27, v25), v29, v24);
  v171 = vmlsl_high_s16(vmull_high_s16(v29, v25), v27, v24);
  v174 = vmlsl_s16(vmull_s16(*v29.i8, *v25.i8), *v27.i8, *v24.i8);
  v34 = vmull_high_s16(v16, v31);
  v35 = vmlal_s16(vmull_s16(*v14.i8, *v31.i8), *v16.i8, *v30.i8);
  v36 = vmlal_high_s16(vmull_high_s16(v14, v31), v16, v30);
  v37 = vdupq_n_s16(0x3C42u);
  v38 = vmlsl_s16(vmull_s16(*v16.i8, *v31.i8), *v14.i8, *v30.i8);
  v39 = vmlsl_high_s16(v34, v14, v30);
  v40 = vmlal_s16(vmull_s16(*v8.i8, *v37.i8), *v10.i8, *v32.i8);
  v41 = vmlal_high_s16(vmull_high_s16(v8, v37), v10, v32);
  v42 = vmlsl_s16(vmull_s16(*v10.i8, *v37.i8), *v8.i8, *v32.i8);
  v43 = vmlsl_high_s16(vmull_high_s16(v10, v37), v8, v32);
  v44 = vdupq_n_s16(0x964u);
  v45 = vdupq_n_s16(0x3F4Fu);
  v46 = vmlal_s16(vmull_s16(*v3.i8, *v45.i8), *v5.i8, *v44.i8);
  v47 = vmlal_high_s16(vmull_high_s16(v3, v45), v5, v44);
  v48 = vmlsl_s16(vmull_s16(*v5.i8, *v45.i8), *v3.i8, *v44.i8);
  v49 = vmlsl_high_s16(vmull_high_s16(v5, v45), v3, v44);
  v50 = vrshrq_n_s32(vsubq_s32(v225, v176), 0xEuLL);
  v51 = vrshrq_n_s32(vsubq_s32(v223, v174), 0xEuLL);
  v52 = vdupq_n_s32(0x3EC5u);
  v53 = vdupq_n_s32(0xC7Cu);
  v54 = vmulq_s32(v50, v53);
  v221 = vmlaq_s32(vmulq_s32(v50, v52), v51, v53);
  v55 = vdupq_n_s32(0xFFFFC13B);
  v198 = vmlaq_s32(v54, v51, v55);
  v56 = vrshrq_n_s32(vsubq_s32(v204, v168), 0xEuLL);
  v57 = vrshrq_n_s32(vsubq_s32(v169, v171), 0xEuLL);
  v202 = vmlaq_s32(vmulq_s32(v56, v53), v57, v55);
  v200 = vmlaq_s32(vmulq_s32(v56, v52), v57, v53);
  v58 = vrshrq_n_s32(vsubq_s32(v18, v40), 0xEuLL);
  v59 = vrshrq_n_s32(vsubq_s32(v19, v41), 0xEuLL);
  v60 = v20;
  v61 = vrshrq_n_s32(vsubq_s32(v20, v42), 0xEuLL);
  v62 = vrshrq_n_s32(vsubq_s32(v21, v43), 0xEuLL);
  v185 = vmlaq_s32(vmulq_s32(v58, v52), v61, v53);
  v187 = vmlaq_s32(vmulq_s32(v59, v52), v62, v53);
  v63 = vdupq_n_s32(0xFFFFF384);
  v181 = vmlaq_s32(vmulq_s32(v58, v63), v61, v52);
  v186 = vmlaq_s32(vmulq_s32(v59, v63), v62, v52);
  v64 = vrshrq_n_s32(vsubq_s32(v210, v35), 0xEuLL);
  v65 = vrshrq_n_s32(vsubq_s32(v207, v38), 0xEuLL);
  v66 = vdupq_n_s32(0x238Eu);
  v67 = vdupq_n_s32(0x3537u);
  v68 = vmulq_s32(v64, v67);
  v69 = vmlaq_s32(vmulq_s32(v64, v66), v65, v67);
  v70 = vdupq_n_s32(0xFFFFDC72);
  v183 = v69;
  v184 = vmlaq_s32(v68, v65, v70);
  v71 = vrshrq_n_s32(vsubq_s32(v216, v36), 0xEuLL);
  v72 = vrshrq_n_s32(vsubq_s32(v213, v39), 0xEuLL);
  v182 = vmlaq_s32(vmulq_s32(v71, v67), v72, v70);
  v180 = vmlaq_s32(vmulq_s32(v71, v66), v72, v67);
  v73 = vrshrq_n_s32(vsubq_s32(v196, v46), 0xEuLL);
  v74 = vrshrq_n_s32(vsubq_s32(v188, v47), 0xEuLL);
  v75 = vrshrq_n_s32(vsubq_s32(v33, v48), 0xEuLL);
  v76 = vrshrq_n_s32(vsubq_s32(v193, v49), 0xEuLL);
  v179 = vmlaq_s32(vmulq_s32(v73, v66), v75, v67);
  v178 = vmlaq_s32(vmulq_s32(v74, v66), v76, v67);
  v77 = vdupq_n_s32(0xFFFFCAC9);
  v165 = vmlaq_s32(vmulq_s32(v73, v77), v75, v66);
  v219 = vmlaq_s32(vmulq_s32(v74, v77), v76, v66);
  v78 = vaddq_s32(v168, v204);
  v205 = vaddq_s32(v174, v223);
  v175 = vaddq_s32(v171, v169);
  v177 = vaddq_s32(v176, v225);
  v79 = vaddq_s32(v35, v210);
  v80 = vaddq_s32(v36, v216);
  v172 = vaddq_s32(v38, v207);
  v166 = vaddq_s32(v39, v213);
  v81 = vaddq_s32(v40, v18);
  v82 = vaddq_s32(v48, v33);
  v83 = vaddq_s32(v49, v193);
  v217 = vrshrq_n_s32(v81, 0xEuLL);
  v226 = vrshrq_n_s32(vaddq_s32(v42, v60), 0xEuLL);
  v84 = vsubq_s32(vrshrq_n_s32(v177, 0xEuLL), v217);
  v85 = vsubq_s32(vrshrq_n_s32(v205, 0xEuLL), v226);
  v86 = vdupq_n_s32(0x3B21u);
  v87 = vdupq_n_s32(0x187Eu);
  v88 = vdupq_n_s32(0xFFFFC4DF);
  v214 = vmlaq_s32(vmulq_s32(v84, v87), v85, v88);
  v208 = vmlaq_s32(vmulq_s32(v84, v86), v85, v87);
  v211 = vrshrq_n_s32(vaddq_s32(v41, v19), 0xEuLL);
  v224 = vrshrq_n_s32(vaddq_s32(v43, v21), 0xEuLL);
  v89 = vsubq_s32(vrshrq_n_s32(v78, 0xEuLL), v211);
  v90 = vsubq_s32(vrshrq_n_s32(v175, 0xEuLL), v224);
  v91 = vmlaq_s32(vmulq_s32(v89, v86), v90, v87);
  v191 = vrshrq_n_s32(vaddq_s32(v46, v196), 0xEuLL);
  v194 = vrshrq_n_s32(v82, 0xEuLL);
  v197 = vmlaq_s32(vmulq_s32(v89, v87), v90, v88);
  v92 = vsubq_s32(vrshrq_n_s32(v79, 0xEuLL), v191);
  v93 = vsubq_s32(vrshrq_n_s32(v172, 0xEuLL), v194);
  v94 = vmlaq_s32(vmulq_s32(v92, v86), v93, v87);
  v95 = vdupq_n_s32(0xFFFFE782);
  v96 = vmlaq_s32(vmulq_s32(v92, v95), v93, v86);
  v97 = vrshrq_n_s32(vaddq_s32(v47, v188), 0xEuLL);
  v189 = vrshrq_n_s32(v83, 0xEuLL);
  v98 = vsubq_s32(vrshrq_n_s32(v80, 0xEuLL), v97);
  v99 = vsubq_s32(vrshrq_n_s32(v166, 0xEuLL), v189);
  v100 = vmlaq_s32(vmulq_s32(v98, v86), v99, v87);
  v101 = vmlaq_s32(vmulq_s32(v98, v95), v99, v86);
  v102 = vrshrq_n_s32(vsubq_s32(v221, v181), 0xEuLL);
  v103 = vrshrq_n_s32(vsubq_s32(v198, v185), 0xEuLL);
  v104 = vmlaq_s32(vmulq_s32(v102, v86), v103, v87);
  v105 = vmlaq_s32(vmulq_s32(v102, v87), v103, v88);
  v106 = vrshrq_n_s32(vsubq_s32(v200, v186), 0xEuLL);
  v107 = vrshrq_n_s32(vsubq_s32(v202, v187), 0xEuLL);
  v108 = vmlaq_s32(vmulq_s32(v106, v87), v107, v88);
  v109 = vmlaq_s32(vmulq_s32(v106, v86), v107, v87);
  v110 = vrshrq_n_s32(vsubq_s32(v183, v165), 0xEuLL);
  v111 = vrshrq_n_s32(vsubq_s32(v180, v219), 0xEuLL);
  v112 = vrshrq_n_s32(vsubq_s32(v184, v179), 0xEuLL);
  v113 = vrshrq_n_s32(vsubq_s32(v182, v178), 0xEuLL);
  v114 = vmlaq_s32(vmulq_s32(v110, v86), v112, v87);
  v115 = vmlaq_s32(vmulq_s32(v111, v86), v113, v87);
  v116 = vmlaq_s32(vmulq_s32(v110, v95), v112, v86);
  v117 = vmlaq_s32(vmulq_s32(v111, v95), v113, v86);
  v170 = vrsraq_n_s32(v191, v79, 0xEuLL);
  v118 = vrsraq_n_s32(v97, v80, 0xEuLL);
  v167 = vrsraq_n_s32(v194, v172, 0xEuLL);
  v173 = vrsraq_n_s32(v189, v166, 0xEuLL);
  v119 = vrsraq_n_s32(v217, v177, 0xEuLL);
  v120 = vrsraq_n_s32(v211, v78, 0xEuLL);
  v227 = vrsraq_n_s32(v226, v205, 0xEuLL);
  v121 = vaddq_s32(v181, v221);
  v122 = vaddq_s32(v186, v200);
  v192 = vaddq_s32(v185, v198);
  v195 = vaddq_s32(v187, v202);
  v190 = vaddq_s32(v219, v180);
  v212 = vaddq_s32(v96, v208);
  v123 = vsubq_s32(v208, v96);
  v209 = vaddq_s32(v101, v91);
  v124 = vsubq_s32(v91, v101);
  v222 = vaddq_s32(v94, v214);
  v125 = vsubq_s32(v214, v94);
  v126 = vsubq_s32(v197, v100);
  v127 = vsubq_s32(v104, v116);
  v203 = vaddq_s32(v117, v109);
  v206 = vaddq_s32(v116, v104);
  v128 = vsubq_s32(v109, v117);
  v218 = vaddq_s32(v114, v105);
  v220 = vaddq_s32(v100, v197);
  v215 = vaddq_s32(v115, v108);
  v129 = vsubq_s32(v108, v115);
  v130 = vdupq_n_s32(0xFFFFD2BF);
  v131 = vmulq_s32(vsubq_s32(v227, v167), v130);
  v132 = vmulq_s32(vsubq_s32(v119, v170), v130);
  v133 = vaddq_s32(v131, v132);
  v201 = vsubq_s32(v131, v132);
  v134 = vrsraq_n_s32(v224, v175, 0xEuLL);
  v135 = vmulq_s32(vsubq_s32(v134, v173), v130);
  v136 = v120;
  v137 = vmulq_s32(vsubq_s32(v120, v118), v130);
  v138 = vaddq_s32(v135, v137);
  v139 = vsubq_s32(v135, v137);
  v140 = vdupq_n_s32(0x2D41u);
  v141 = vmulq_s32(vrshrq_n_s32(v125, 0xEuLL), v140);
  v142 = vmulq_s32(vrshrq_n_s32(v123, 0xEuLL), v140);
  v143 = vaddq_s32(v141, v142);
  v199 = vsubq_s32(v141, v142);
  v144 = vmulq_s32(vrshrq_n_s32(v126, 0xEuLL), v140);
  v145 = vmulq_s32(vrshrq_n_s32(v124, 0xEuLL), v140);
  v146 = vaddq_s32(v144, v145);
  v147 = vsubq_s32(v144, v145);
  v148 = vrshrq_n_s32(vaddq_s32(v165, v183), 0xEuLL);
  v149 = vrshrq_n_s32(v190, 0xEuLL);
  v150 = vrshrq_n_s32(vaddq_s32(v179, v184), 0xEuLL);
  v151 = vrshrq_n_s32(vaddq_s32(v178, v182), 0xEuLL);
  v152 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v192, 0xEuLL), v150), v140);
  v153 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v195, 0xEuLL), v151), v140);
  v154 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v121, 0xEuLL), v148), v140);
  v155 = vmulq_s32(vsubq_s32(vrshrq_n_s32(v122, 0xEuLL), v149), v140);
  v156 = vaddq_s32(v152, v154);
  v157 = vsubq_s32(v152, v154);
  v158 = vaddq_s32(v153, v155);
  v159 = vsubq_s32(v153, v155);
  v160 = vmulq_s32(vrshrq_n_s32(vsubq_s32(v105, v114), 0xEuLL), v130);
  v161 = vmulq_s32(vrshrq_n_s32(v129, 0xEuLL), v130);
  v162 = vmulq_s32(vrshrq_n_s32(v127, 0xEuLL), v130);
  v163 = vmulq_s32(vrshrq_n_s32(v128, 0xEuLL), v130);
  *a1 = vuzp1q_s16(vaddq_s32(v170, v119), vaddq_s32(v118, v136));
  a1[1] = vnegq_s16(vuzp1q_s16(vrsraq_n_s32(v148, v121, 0xEuLL), vrsraq_n_s32(v149, v122, 0xEuLL)));
  a1[2] = vuzp1q_s16(vrshrq_n_s32(v206, 0xEuLL), vrshrq_n_s32(v203, 0xEuLL));
  a1[3] = vnegq_s16(vuzp1q_s16(vrshrq_n_s32(v212, 0xEuLL), vrshrq_n_s32(v209, 0xEuLL)));
  a1[4] = vrshrn_high_n_s32(vrshrn_n_s32(v143, 0xEuLL), v146, 0xEuLL);
  a1[5] = vrshrn_high_n_s32(vrshrn_n_s32(vaddq_s32(v160, v162), 0xEuLL), vaddq_s32(v161, v163), 0xEuLL);
  a1[6] = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xEuLL), v158, 0xEuLL);
  a1[7] = vrshrn_high_n_s32(vrshrn_n_s32(v133, 0xEuLL), v138, 0xEuLL);
  a1[8] = vrshrn_high_n_s32(vrshrn_n_s32(v201, 0xEuLL), v139, 0xEuLL);
  a1[9] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xEuLL), v159, 0xEuLL);
  a1[10] = vrshrn_high_n_s32(vrshrn_n_s32(vsubq_s32(v160, v162), 0xEuLL), vsubq_s32(v161, v163), 0xEuLL);
  a1[11] = vrshrn_high_n_s32(vrshrn_n_s32(v199, 0xEuLL), v147, 0xEuLL);
  a1[12] = vuzp1q_s16(vrshrq_n_s32(v222, 0xEuLL), vrshrq_n_s32(v220, 0xEuLL));
  a1[13] = vnegq_s16(vuzp1q_s16(vrshrq_n_s32(v218, 0xEuLL), vrshrq_n_s32(v215, 0xEuLL)));
  result = vnegq_s16(vuzp1q_s16(vaddq_s32(v167, v227), vaddq_s32(v173, v134)));
  a1[14] = vuzp1q_s16(vrsraq_n_s32(v150, v192, 0xEuLL), vrsraq_n_s32(v151, v195, 0xEuLL));
  a1[15] = result;
  return result;
}

int16x8_t fdct16_8col(int16x8_t *a1)
{
  v1 = a1[1];
  v3 = a1[14];
  v2 = a1[15];
  v4 = vaddq_s16(v2, *a1);
  v5 = vaddq_s16(v3, v1);
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[12];
  v8 = a1[13];
  v10 = vaddq_s16(v8, v6);
  v11 = vaddq_s16(v9, v7);
  v12 = a1[4];
  v13 = a1[5];
  v15 = a1[10];
  v14 = a1[11];
  v16 = vaddq_s16(v14, v12);
  v17 = vaddq_s16(v15, v13);
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  v21 = a1[9];
  v22 = vaddq_s16(v21, v18);
  v23 = vaddq_s16(v20, v19);
  v24 = vaddq_s16(v23, v4);
  v25 = vaddq_s16(v22, v5);
  v26 = vaddq_s16(v17, v10);
  v27 = vaddq_s16(v16, v11);
  v28 = vsubq_s16(v11, v16);
  v29 = vsubq_s16(v10, v17);
  v30 = vsubq_s16(v5, v22);
  v31 = vsubq_s16(v4, v23);
  v32 = vaddq_s16(v24, v27);
  v33 = vaddq_s16(v25, v26);
  v34 = vsubq_s16(v25, v26);
  v35 = vsubq_s16(v24, v27);
  v36 = vdupq_n_s32(0x5A820000u);
  v37 = vuzp1q_s16(vqrdmulhq_s32(vaddl_s16(*v32.i8, *v33.i8), v36), vqrdmulhq_s32(vaddl_high_s16(v32, v33), v36));
  v38 = vuzp1q_s16(vqrdmulhq_s32(vsubl_s16(*v32.i8, *v33.i8), v36), vqrdmulhq_s32(vsubl_high_s16(v32, v33), v36));
  v39 = vdupq_n_s16(0x3B21u);
  v40 = vdupq_n_s16(0x187Eu);
  v41 = vmlsl_s16(vmull_s16(*v35.i8, *v40.i8), *v34.i8, *v39.i8);
  v42 = vmlsl_high_s16(vmull_high_s16(v35, v40), v34, v39);
  v43 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v34.i8, *v40.i8), *v35.i8, *v39.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v34, v40), v35, v39), 0xEuLL);
  v44 = vqrshrn_high_n_s32(vqrshrn_n_s32(v41, 0xEuLL), v42, 0xEuLL);
  v45 = vqrdmulhq_s32(vaddl_s16(*v30.i8, *v29.i8), v36);
  v46 = vqrdmulhq_s32(vaddl_high_s16(v30, v29), v36);
  v47 = vqrdmulhq_s32(vsubl_s16(*v30.i8, *v29.i8), v36);
  v48 = vqrdmulhq_s32(vsubl_high_s16(v30, v29), v36);
  v49 = vuzp1q_s16(v45, v46);
  v50 = vuzp1q_s16(v47, v48);
  v51 = vaddq_s16(v28, v50);
  v52 = vsubq_s16(v28, v50);
  v53 = vsubq_s16(v31, v49);
  v54 = vaddq_s16(v31, v49);
  v55 = vdupq_n_s16(0x3EC5u);
  v56 = vdupq_n_s16(0xC7Cu);
  v57 = vmull_s16(*v54.i8, *v56.i8);
  v58 = vmull_high_s16(v54, v56);
  v59 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v51.i8, *v56.i8), *v54.i8, *v55.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v51, v56), v54, v55), 0xEuLL);
  v60 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlsl_s16(v57, *v51.i8, *v55.i8), 0xEuLL), vmlsl_high_s16(v58, v51, v55), 0xEuLL);
  v61 = vdupq_n_s16(0x238Eu);
  v62 = vdupq_n_s16(0x3537u);
  v63 = vmlsl_s16(vmull_s16(*v53.i8, *v62.i8), *v52.i8, *v61.i8);
  v64 = vmlsl_high_s16(vmull_high_s16(v53, v62), v52, v61);
  v65 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmlal_s16(vmull_s16(*v52.i8, *v62.i8), *v53.i8, *v61.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v52, v62), v53, v61), 0xEuLL);
  v66 = vqrshrn_high_n_s32(vqrshrn_n_s32(v63, 0xEuLL), v64, 0xEuLL);
  v67 = vtrn1q_s16(v37, v59);
  v68 = vtrn2q_s16(v37, v59);
  v69 = vtrn1q_s16(v43, v66);
  v70 = vtrn2q_s16(v43, v66);
  v71 = vtrn1q_s16(v38, v65);
  v72 = vtrn2q_s16(v38, v65);
  v73 = vtrn1q_s16(v44, v60);
  v74 = vtrn2q_s16(v44, v60);
  v75 = vtrn1q_s32(v67, v69);
  v76 = vtrn2q_s32(v67, v69);
  v77 = vtrn1q_s32(v68, v70);
  v78 = vtrn2q_s32(v68, v70);
  v79 = vtrn1q_s32(v71, v73);
  v80 = vtrn2q_s32(v71, v73);
  v81 = vtrn1q_s32(v72, v74);
  v82 = vzip2q_s64(v75, v79);
  v75.i64[1] = v79.i64[0];
  v83 = vtrn2q_s32(v72, v74);
  v84 = vzip2q_s64(v77, v81);
  v77.i64[1] = v81.i64[0];
  v85 = vzip2q_s64(v76, v80);
  v76.i64[1] = v80.i64[0];
  v80.i64[0] = v78.i64[0];
  v80.i64[1] = v83.i64[0];
  v86 = vzip2q_s64(v78, v83);
  v87 = vtrn1q_s16(v75, v77);
  v88 = vtrn2q_s16(v75, v77);
  v89 = vtrn1q_s16(v76, v80);
  v90 = vtrn2q_s16(v76, v80);
  v91 = vtrn1q_s16(v82, v84);
  v92 = vtrn2q_s16(v82, v84);
  v93 = vtrn1q_s16(v85, v86);
  v94 = vtrn2q_s16(v85, v86);
  v95 = vtrn1q_s32(v87, v89);
  v96 = vtrn2q_s32(v87, v89);
  v97 = vtrn1q_s32(v88, v90);
  v98 = vtrn2q_s32(v88, v90);
  v99 = vtrn1q_s32(v91, v93);
  v100 = vtrn2q_s32(v91, v93);
  v101 = vtrn1q_s32(v92, v94);
  v102 = vzip2q_s64(v95, v99);
  v90.i64[0] = v95.i64[0];
  v90.i64[1] = v99.i64[0];
  v103 = vzip2q_s64(v97, v101);
  v91.i64[0] = v97.i64[0];
  v91.i64[1] = v101.i64[0];
  v104 = vtrn2q_s32(v92, v94);
  v105 = vzip2q_s64(v96, v100);
  v101.i64[0] = v96.i64[0];
  v101.i64[1] = v100.i64[0];
  v106 = vzip2q_s64(v98, v104);
  v96.i64[0] = v98.i64[0];
  v96.i64[1] = v104.i64[0];
  v107 = vsubq_s16(v19, v20);
  v108 = vsubq_s16(v18, v21);
  v109 = vsubq_s16(v13, v15);
  v110 = vsubq_s16(v12, v14);
  v111 = vsubq_s16(v7, v9);
  v112 = vsubq_s16(v6, v8);
  v113 = vsubq_s16(v1, v3);
  v114 = vsubq_s16(*a1, v2);
  v115 = vsubq_s16(v112, v109);
  v116 = vsubq_s16(v111, v110);
  v117 = vaddq_s16(v110, v111);
  v118 = vaddq_s16(v109, v112);
  v119 = vdupq_n_s16(0x2D41u);
  v120 = vmull_s16(*v116.i8, *v119.i8);
  v121 = vmull_high_s16(v116, v119);
  v122 = vmull_s16(*v117.i8, *v119.i8);
  v123 = vmull_high_s16(v117, v119);
  v124 = vmull_s16(*v118.i8, *v119.i8);
  v125 = vmull_high_s16(v118, v119);
  v126 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v115.i8, *v119.i8), 0xEuLL), vmull_high_s16(v115, v119), 0xEuLL);
  v127 = vrshrn_high_n_s32(vrshrn_n_s32(v120, 0xEuLL), v121, 0xEuLL);
  v128 = vrshrn_high_n_s32(vrshrn_n_s32(v122, 0xEuLL), v123, 0xEuLL);
  v129 = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xEuLL), v125, 0xEuLL);
  v130 = vaddq_s16(v127, v107);
  v131 = vaddq_s16(v126, v108);
  v132 = vsubq_s16(v108, v126);
  v133 = vsubq_s16(v107, v127);
  v134 = vsubq_s16(v114, v128);
  v135 = vsubq_s16(v113, v129);
  v136 = vaddq_s16(v129, v113);
  v137 = vaddq_s16(v128, v114);
  v138 = vdupq_n_s16(0xC4DFu);
  v139 = vmull_s16(*v131.i8, *v40.i8);
  v140 = vmull_high_s16(v131, v40);
  v141 = vmlal_s16(vmull_s16(*v136.i8, *v40.i8), *v131.i8, *v138.i8);
  v142 = vmlal_high_s16(vmull_high_s16(v136, v40), v131, v138);
  v143 = vmlsl_s16(v139, *v136.i8, *v138.i8);
  v144 = vmlsl_high_s16(v140, v136, v138);
  v145 = vdupq_n_s16(0xE782u);
  v146 = vmull_s16(*v135.i8, *v39.i8);
  v147 = vmull_high_s16(v135, v39);
  v148 = vmlal_s16(vmull_s16(*v132.i8, *v39.i8), *v135.i8, *v145.i8);
  v149 = vmlal_high_s16(vmull_high_s16(v132, v39), v135, v145);
  v150 = vmlsl_s16(v146, *v132.i8, *v145.i8);
  v151 = vmlsl_high_s16(v147, v132, v145);
  v152 = vrshrn_high_n_s32(vrshrn_n_s32(v141, 0xEuLL), v142, 0xEuLL);
  v153 = vrshrn_high_n_s32(vrshrn_n_s32(v150, 0xEuLL), v151, 0xEuLL);
  v154 = vrshrn_high_n_s32(vrshrn_n_s32(v148, 0xEuLL), v149, 0xEuLL);
  v155 = vrshrn_high_n_s32(vrshrn_n_s32(v143, 0xEuLL), v144, 0xEuLL);
  v156 = vaddq_s16(v152, v130);
  v157 = vsubq_s16(v130, v152);
  v158 = vaddq_s16(v153, v133);
  v159 = vsubq_s16(v133, v153);
  v160 = vsubq_s16(v134, v154);
  v161 = vaddq_s16(v154, v134);
  v162 = vsubq_s16(v137, v155);
  v163 = vaddq_s16(v155, v137);
  v164 = vdupq_n_s16(0x3FB1u);
  v165 = vdupq_n_s16(0x646u);
  v166 = vmull_s16(*v163.i8, *v165.i8);
  v167 = vmull_high_s16(v163, v165);
  v168 = vmlal_s16(vmull_s16(*v156.i8, *v165.i8), *v163.i8, *v164.i8);
  v169 = vmlal_high_s16(vmull_high_s16(v156, v165), v163, v164);
  v170 = vdupq_n_s16(0x289Au);
  v171 = vdupq_n_s16(0x3179u);
  v172 = vmull_s16(*v162.i8, *v171.i8);
  v173 = vmull_high_s16(v162, v171);
  v174 = vmlal_s16(vmull_s16(*v157.i8, *v171.i8), *v162.i8, *v170.i8);
  v175 = vmlal_high_s16(vmull_high_s16(v157, v171), v162, v170);
  v176 = vmlsl_s16(v172, *v157.i8, *v170.i8);
  v177 = vdupq_n_s16(0x3871u);
  v178 = vmlsl_high_s16(v173, v157, v170);
  v179 = vdupq_n_s16(0x1E2Bu);
  v180 = vmull_s16(*v161.i8, *v179.i8);
  v181 = vmull_high_s16(v161, v179);
  v182 = vmlal_s16(vmull_s16(*v158.i8, *v179.i8), *v161.i8, *v177.i8);
  v183 = vmlal_high_s16(vmull_high_s16(v158, v179), v161, v177);
  v184 = vdupq_n_s16(0x1294u);
  v185 = vdupq_n_s16(0x3D3Fu);
  *a1 = v90;
  a1[1] = vrshrn_high_n_s32(vrshrn_n_s32(v168, 0xEuLL), v169, 0xEuLL);
  a1[2] = v91;
  a1[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(vmull_s16(*v160.i8, *v185.i8), *v159.i8, *v184.i8), 0xEuLL), vmlsl_high_s16(vmull_high_s16(v160, v185), v159, v184), 0xEuLL);
  a1[4] = v101;
  a1[5] = vrshrn_high_n_s32(vrshrn_n_s32(v182, 0xEuLL), v183, 0xEuLL);
  a1[6] = v96;
  a1[7] = vrshrn_high_n_s32(vrshrn_n_s32(v176, 0xEuLL), v178, 0xEuLL);
  a1[8] = v102;
  a1[9] = vrshrn_high_n_s32(vrshrn_n_s32(v174, 0xEuLL), v175, 0xEuLL);
  a1[10] = v103;
  a1[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v180, *v158.i8, *v177.i8), 0xEuLL), vmlsl_high_s16(v181, v158, v177), 0xEuLL);
  a1[12] = v105;
  a1[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v159.i8, *v185.i8), *v160.i8, *v184.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(v159, v185), v160, v184), 0xEuLL);
  result = vrshrn_high_n_s32(vrshrn_n_s32(vmlsl_s16(v166, *v156.i8, *v164.i8), 0xEuLL), vmlsl_high_s16(v167, v156, v164), 0xEuLL);
  a1[14] = v106;
  a1[15] = result;
  return result;
}

int32x4_t highbd_fadst16_8col(uint64_t a1, uint64_t a2)
{
  v2 = vdupq_n_s32(0x3FECu);
  v3 = vdupq_n_s32(0x324u);
  v5 = *(a1 + 224);
  v4 = *(a1 + 240);
  v7 = *(a2 + 224);
  v6 = *(a2 + 240);
  v8 = *(a1 + 16);
  v9 = vmlal_s32(vmull_s32(*a1, *v3.i8), *v4.i8, *v2.i8);
  v228 = vmlal_high_s32(vmull_high_s32(*a1, v3), v4, v2);
  v10 = *(a2 + 16);
  v252 = vmlal_s32(vmull_s32(*a2, *v3.i8), *v6.i8, *v2.i8);
  v278 = vmlal_high_s32(vmull_high_s32(*a2, v3), v6, v2);
  v11 = vmlsl_s32(vmull_s32(*v4.i8, *v3.i8), *a1, *v2.i8);
  v12 = vmlsl_high_s32(vmull_high_s32(v4, v3), *a1, v2);
  v13 = vmlsl_s32(vmull_s32(*v6.i8, *v3.i8), *a2, *v2.i8);
  v249 = vmlsl_high_s32(vmull_high_s32(v6, v3), *a2, v2);
  v14 = vdupq_n_s32(0x3E15u);
  v15 = vdupq_n_s32(0xF8Du);
  v16 = *(a1 + 192);
  v17 = *(a1 + 208);
  v18 = vmull_s32(*v17.i8, *v15.i8);
  v19 = vmull_high_s32(v17, v15);
  v20 = *(a2 + 192);
  v21 = *(a2 + 208);
  v23 = *(a1 + 32);
  v22 = *(a1 + 48);
  v275 = vmlal_s32(vmull_s32(*v23.i8, *v15.i8), *v17.i8, *v14.i8);
  v24 = vdupq_n_s32(0x39DBu);
  v263 = vmlal_high_s32(vmull_high_s32(v23, v15), v17, v14);
  v25 = vdupq_n_s32(0x1B5Du);
  v27 = *(a2 + 32);
  v26 = *(a2 + 48);
  v261 = vmlal_s32(vmull_s32(*v27.i8, *v15.i8), *v21.i8, *v14.i8);
  v215 = vmlal_high_s32(vmull_high_s32(v27, v15), v21, v14);
  v255 = vmlsl_s32(v18, *v23.i8, *v14.i8);
  v257 = vmlsl_high_s32(v19, v23, v14);
  v259 = vmlsl_s32(vmull_s32(*v21.i8, *v15.i8), *v27.i8, *v14.i8);
  v213 = vmlsl_high_s32(vmull_high_s32(v21, v15), v27, v14);
  v29 = *(a1 + 64);
  v28 = *(a1 + 80);
  v30 = *(a1 + 160);
  v31 = *(a1 + 176);
  v273 = vmlal_s32(vmull_s32(*v29.i8, *v25.i8), *v31.i8, *v24.i8);
  v271 = vmlal_high_s32(vmull_high_s32(v29, v25), v31, v24);
  v32 = vmull_s32(*v31.i8, *v25.i8);
  v33 = vmull_high_s32(v31, v25);
  v35 = *(a2 + 64);
  v34 = *(a2 + 80);
  v36 = *(a2 + 160);
  v37 = *(a2 + 176);
  v269 = vmlal_s32(vmull_s32(*v35.i8, *v25.i8), *v37.i8, *v24.i8);
  v267 = vmlal_high_s32(vmull_high_s32(v35, v25), v37, v24);
  v265 = vmlsl_s32(v32, *v29.i8, *v24.i8);
  v247 = vmlsl_high_s32(v33, v29, v24);
  v245 = vmlsl_s32(vmull_s32(*v37.i8, *v25.i8), *v35.i8, *v24.i8);
  v243 = vmlsl_high_s32(vmull_high_s32(v37, v25), v35, v24);
  v38 = vdupq_n_s32(0x3368u);
  v39 = vdupq_n_s32(0x2620u);
  v40 = *(a1 + 96);
  v41 = *(a1 + 112);
  v43 = *(a1 + 128);
  v42 = *(a1 + 144);
  v185 = vmlal_s32(vmull_s32(*v40.i8, *v39.i8), *v42.i8, *v38.i8);
  v183 = vmlal_high_s32(vmull_high_s32(v40, v39), v42, v38);
  v44 = vmull_s32(*v42.i8, *v39.i8);
  v45 = vmull_high_s32(v42, v39);
  v46 = *(a2 + 96);
  v47 = *(a2 + 112);
  v49 = *(a2 + 128);
  v48 = *(a2 + 144);
  v179 = vmlal_s32(vmull_s32(*v46.i8, *v39.i8), *v48.i8, *v38.i8);
  v177 = vmlsl_s32(v44, *v40.i8, *v38.i8);
  v178 = vmlal_high_s32(vmull_high_s32(v46, v39), v48, v38);
  v174 = vmlsl_s32(vmull_s32(*v48.i8, *v39.i8), *v46.i8, *v38.i8);
  v176 = vmlsl_high_s32(v45, v40, v38);
  v173 = vmlsl_high_s32(vmull_high_s32(v48, v39), v46, v38);
  v50 = vdupq_n_s32(0x2AFBu);
  v51 = vdupq_n_s32(0x2F6Cu);
  v198 = vmlal_s32(vmull_s32(*v43.i8, *v51.i8), *v41.i8, *v50.i8);
  v52 = vmlal_high_s32(vmull_high_s32(v43, v51), v41, v50);
  v53 = vmlal_s32(vmull_s32(*v49.i8, *v51.i8), *v47.i8, *v50.i8);
  v147 = vmlal_high_s32(vmull_high_s32(v49, v51), v47, v50);
  v54 = vmlsl_s32(vmull_s32(*v41.i8, *v51.i8), *v43.i8, *v50.i8);
  v171 = vmlsl_high_s32(vmull_high_s32(v41, v51), v43, v50);
  v161 = vmlsl_s32(vmull_s32(*v47.i8, *v51.i8), *v49.i8, *v50.i8);
  v145 = vmlsl_high_s32(vmull_high_s32(v47, v51), v49, v50);
  v55 = vdupq_n_s32(0x20E7u);
  v56 = vdupq_n_s32(0x36E5u);
  v221 = vmlal_s32(vmull_s32(*v30.i8, *v56.i8), *v28.i8, *v55.i8);
  v219 = vmlal_high_s32(vmull_high_s32(v30, v56), v28, v55);
  v192 = vmlal_s32(vmull_s32(*v36.i8, *v56.i8), *v34.i8, *v55.i8);
  v195 = vmlal_high_s32(vmull_high_s32(v36, v56), v34, v55);
  v224 = vmlsl_s32(vmull_s32(*v28.i8, *v56.i8), *v30.i8, *v55.i8);
  v57 = vmlsl_high_s32(vmull_high_s32(v28, v56), v30, v55);
  v217 = vmlsl_s32(vmull_s32(*v34.i8, *v56.i8), *v36.i8, *v55.i8);
  v226 = vmlsl_high_s32(vmull_high_s32(v34, v56), v36, v55);
  v58 = vdupq_n_s32(0x1590u);
  v59 = vdupq_n_s32(0x3C42u);
  v60 = vmlal_s32(vmull_s32(*v16.i8, *v59.i8), *v22.i8, *v58.i8);
  v61 = vmlal_high_s32(vmull_high_s32(v16, v59), v22, v58);
  v62 = vmull_s32(*v22.i8, *v59.i8);
  v63 = vmull_high_s32(v22, v59);
  v143 = vmlal_s32(vmull_s32(*v20.i8, *v59.i8), *v26.i8, *v58.i8);
  v64 = vmull_s32(*v26.i8, *v59.i8);
  v65 = vmull_high_s32(v26, v59);
  v66 = vmlal_high_s32(vmull_high_s32(v20, v59), v26, v58);
  v140 = vmlsl_s32(v62, *v16.i8, *v58.i8);
  v139 = vmlsl_high_s32(v63, v16, v58);
  v67 = vmlsl_high_s32(v65, v20, v58);
  v136 = vmlsl_s32(v64, *v20.i8, *v58.i8);
  v68 = vdupq_n_s32(0x964u);
  v69 = vdupq_n_s32(0x3F4Fu);
  v169 = vmlal_s32(vmull_s32(*v5.i8, *v69.i8), *v8.i8, *v68.i8);
  v167 = vmlal_high_s32(vmull_high_s32(v5, v69), v8, v68);
  v70 = vmull_s32(*v8.i8, *v69.i8);
  v71 = vmull_high_s32(v8, v69);
  v72 = vmlal_s32(vmull_s32(*v7.i8, *v69.i8), *v10.i8, *v68.i8);
  v166 = vmlal_high_s32(vmull_high_s32(v7, v69), v10, v68);
  v155 = vmlsl_high_s32(v71, v5, v68);
  v157 = vmlsl_s32(v70, *v5.i8, *v68.i8);
  v151 = vmlsl_high_s32(vmull_high_s32(v10, v69), v7, v68);
  v153 = vmlsl_s32(vmull_s32(*v10.i8, *v69.i8), *v7.i8, *v68.i8);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v9, v198), 0xEuLL);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v11, v54), 0xEuLL);
  *v32.i8 = vdup_n_s32(0x3EC5u);
  *v70.i8 = vdup_n_s32(0xC7Cu);
  v233 = vmlal_s32(vmull_s32(*v71.i8, *v70.i8), *v45.i8, *v32.i8);
  v231 = vmlsl_s32(vmull_s32(*v45.i8, *v70.i8), *v71.i8, *v32.i8);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v228, v52), 0xEuLL);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v12, v171), 0xEuLL);
  v241 = vmlal_s32(vmull_s32(*v45.i8, *v70.i8), *v71.i8, *v32.i8);
  v235 = vmlsl_s32(vmull_s32(*v71.i8, *v70.i8), *v45.i8, *v32.i8);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v252, v53), 0xEuLL);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v13, v161), 0xEuLL);
  v239 = vmlal_s32(vmull_s32(*v45.i8, *v70.i8), *v71.i8, *v32.i8);
  v237 = vmlsl_s32(vmull_s32(*v71.i8, *v70.i8), *v45.i8, *v32.i8);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v278, v147), 0xEuLL);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v249, v145), 0xEuLL);
  v163 = vmlal_s32(vmull_s32(*v45.i8, *v70.i8), *v71.i8, *v32.i8);
  v159 = vmlsl_s32(vmull_s32(*v71.i8, *v70.i8), *v45.i8, *v32.i8);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v273, v60), 0xEuLL);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v271, v61), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v269, v143), 0xEuLL);
  *v69.i8 = vrshrn_n_s64(vsubq_s64(v267, v66), 0xEuLL);
  *v22.i8 = vrshrn_n_s64(vsubq_s64(v265, v140), 0xEuLL);
  *v26.i8 = vrshrn_n_s64(vsubq_s64(v247, v139), 0xEuLL);
  *v58.i8 = vrshrn_n_s64(vsubq_s64(v245, v136), 0xEuLL);
  *v64.i8 = vrshrn_n_s64(vsubq_s64(v243, v67), 0xEuLL);
  v211 = vmlal_s32(vmull_s32(*v71.i8, *v32.i8), *v22.i8, *v70.i8);
  v206 = vmlal_s32(vmull_s32(*v45.i8, *v32.i8), *v26.i8, *v70.i8);
  v207 = vmlal_s32(vmull_s32(*v68.i8, *v32.i8), *v58.i8, *v70.i8);
  v133 = vmlal_s32(vmull_s32(*v69.i8, *v32.i8), *v64.i8, *v70.i8);
  v209 = vmlsl_s32(vmull_s32(*v22.i8, *v32.i8), *v71.i8, *v70.i8);
  v201 = vmlsl_s32(vmull_s32(*v58.i8, *v32.i8), *v68.i8, *v70.i8);
  v203 = vmlsl_s32(vmull_s32(*v26.i8, *v32.i8), *v45.i8, *v70.i8);
  v129 = vmlsl_s32(vmull_s32(*v64.i8, *v32.i8), *v69.i8, *v70.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v275, v221), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v255, v224), 0xEuLL);
  *v71.i8 = vdup_n_s32(0x238Eu);
  *v58.i8 = vdup_n_s32(0x3537u);
  v127 = vmlal_s32(vmull_s32(*v32.i8, *v58.i8), *v70.i8, *v71.i8);
  v131 = vmlsl_s32(vmull_s32(*v70.i8, *v58.i8), *v32.i8, *v71.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v263, v219), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v257, v57), 0xEuLL);
  v122 = vmlal_s32(vmull_s32(*v32.i8, *v58.i8), *v70.i8, *v71.i8);
  v125 = vmlsl_s32(vmull_s32(*v70.i8, *v58.i8), *v32.i8, *v71.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v261, v192), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v259, v217), 0xEuLL);
  v119 = vmlal_s32(vmull_s32(*v32.i8, *v58.i8), *v70.i8, *v71.i8);
  v124 = vmlsl_s32(vmull_s32(*v70.i8, *v58.i8), *v32.i8, *v71.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v215, v195), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v213, v226), 0xEuLL);
  v118 = vmlal_s32(vmull_s32(*v32.i8, *v58.i8), *v70.i8, *v71.i8);
  v121 = vmlsl_s32(vmull_s32(*v70.i8, *v58.i8), *v32.i8, *v71.i8);
  *v10.i8 = vrshrn_n_s64(vsubq_s64(v185, v169), 0xEuLL);
  v73 = vrshrn_n_s64(vsubq_s64(v183, v167), 0xEuLL);
  *v63.i8 = vrshrn_n_s64(vsubq_s64(v179, v72), 0xEuLL);
  *v26.i8 = vrshrn_n_s64(vsubq_s64(v178, v166), 0xEuLL);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v177, v157), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v176, v155), 0xEuLL);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v174, v153), 0xEuLL);
  *v22.i8 = vrshrn_n_s64(vsubq_s64(v173, v151), 0xEuLL);
  v117 = vmlal_s32(vmull_s32(*v10.i8, *v71.i8), *v45.i8, *v58.i8);
  v116 = vmlal_s32(vmull_s32(v73, *v71.i8), *v68.i8, *v58.i8);
  v115 = vmlal_s32(vmull_s32(*v63.i8, *v71.i8), *v70.i8, *v58.i8);
  v113 = vmlsl_s32(vmull_s32(*v45.i8, *v71.i8), *v10.i8, *v58.i8);
  v114 = vmlal_s32(vmull_s32(*v26.i8, *v71.i8), *v22.i8, *v58.i8);
  v111 = vmlsl_s32(vmull_s32(*v70.i8, *v71.i8), *v63.i8, *v58.i8);
  v112 = vmlsl_s32(vmull_s32(*v68.i8, *v71.i8), v73, *v58.i8);
  v110 = vmlsl_s32(vmull_s32(*v22.i8, *v71.i8), *v26.i8, *v58.i8);
  v137 = vaddq_s64(v198, v9);
  v199 = vaddq_s64(v52, v228);
  v229 = vaddq_s64(v53, v252);
  v74 = vaddq_s64(v147, v278);
  v181 = vaddq_s64(v171, v12);
  v172 = vaddq_s64(v145, v249);
  v253 = vaddq_s64(v221, v275);
  v148 = vaddq_s64(v161, v13);
  v149 = vaddq_s64(v219, v263);
  v279 = vaddq_s64(v192, v261);
  v222 = vaddq_s64(v195, v215);
  v250 = vaddq_s64(v224, v255);
  v165 = vaddq_s64(v57, v257);
  v276 = vaddq_s64(v217, v259);
  v162 = vaddq_s64(v226, v213);
  v193 = vaddq_s64(v66, v267);
  v196 = vaddq_s64(v61, v271);
  v188 = vaddq_s64(v67, v243);
  v190 = vaddq_s64(v139, v247);
  v75 = vaddq_s64(v169, v185);
  v76 = vaddq_s64(v72, v179);
  v150 = vaddq_s64(v166, v178);
  v77 = vaddq_s64(v157, v177);
  v168 = vaddq_s64(v167, v183);
  v170 = vaddq_s64(v155, v176);
  v78 = vaddq_s64(v153, v174);
  v175 = vaddq_s64(v151, v173);
  *v26.i8 = vsub_s32(vrshrn_n_s64(v199, 0xEuLL), vrshrn_n_s64(v196, 0xEuLL));
  *v61.i8 = vsub_s32(vrshrn_n_s64(v74, 0xEuLL), vrshrn_n_s64(v193, 0xEuLL));
  *v43.i8 = vsub_s32(vrshrn_n_s64(v181, 0xEuLL), vrshrn_n_s64(v190, 0xEuLL));
  *v47.i8 = vsub_s32(vrshrn_n_s64(v172, 0xEuLL), vrshrn_n_s64(v188, 0xEuLL));
  *v177.i8 = vrshrn_n_s64(v137, 0xEuLL);
  *v179.i8 = vrshrn_n_s64(vaddq_s64(v54, v11), 0xEuLL);
  *v183.i8 = vrshrn_n_s64(vaddq_s64(v60, v273), 0xEuLL);
  *v185.i8 = vrshrn_n_s64(vaddq_s64(v140, v265), 0xEuLL);
  *v67.i8 = vdup_n_s32(0x3B21u);
  *v70.i8 = vsub_s32(*v177.i8, *v183.i8);
  *v9.i8 = vdup_n_s32(0x187Eu);
  *v58.i8 = vsub_s32(*v179.i8, *v185.i8);
  v218 = vmlal_s32(vmull_s32(*v58.i8, *v9.i8), *v70.i8, *v67.i8);
  v225 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v58.i8, *v67.i8);
  v264 = vmlal_s32(vmull_s32(*v43.i8, *v9.i8), *v26.i8, *v67.i8);
  v262 = vmlsl_s32(vmull_s32(*v26.i8, *v9.i8), *v43.i8, *v67.i8);
  *v166.i8 = vrshrn_n_s64(v229, 0xEuLL);
  *v173.i8 = vrshrn_n_s64(v148, 0xEuLL);
  *v176.i8 = vrshrn_n_s64(vaddq_s64(v143, v269), 0xEuLL);
  *v178.i8 = vrshrn_n_s64(vaddq_s64(v136, v245), 0xEuLL);
  *v70.i8 = vsub_s32(*v166.i8, *v176.i8);
  *v22.i8 = vsub_s32(*v173.i8, *v178.i8);
  v258 = vmlal_s32(vmull_s32(*v22.i8, *v9.i8), *v70.i8, *v67.i8);
  v256 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v22.i8, *v67.i8);
  v270 = vmlal_s32(vmull_s32(*v47.i8, *v9.i8), *v61.i8, *v67.i8);
  v268 = vmlsl_s32(vmull_s32(*v61.i8, *v9.i8), *v47.i8, *v67.i8);
  *v70.i8 = vsub_s32(vrshrn_n_s64(v165, 0xEuLL), vrshrn_n_s64(v170, 0xEuLL));
  *v22.i8 = vsub_s32(vrshrn_n_s64(v162, 0xEuLL), vrshrn_n_s64(v175, 0xEuLL));
  *v26.i8 = vsub_s32(vrshrn_n_s64(v149, 0xEuLL), vrshrn_n_s64(v168, 0xEuLL));
  *v58.i8 = vsub_s32(vrshrn_n_s64(v222, 0xEuLL), vrshrn_n_s64(v150, 0xEuLL));
  *v143.i8 = vrshrn_n_s64(v253, 0xEuLL);
  *v145.i8 = vrshrn_n_s64(v250, 0xEuLL);
  v146 = vrshrn_n_s64(v75, 0xEuLL);
  *v148.i8 = vrshrn_n_s64(v77, 0xEuLL);
  *v61.i8 = vsub_s32(*v145.i8, *v148.i8);
  *v43.i8 = vsub_s32(*v143.i8, v146);
  v216 = vmlal_s32(vmull_s32(*v43.i8, *v67.i8), *v61.i8, *v9.i8);
  v214 = vmlsl_s32(vmull_s32(*v61.i8, *v67.i8), *v43.i8, *v9.i8);
  v246 = vmlal_s32(vmull_s32(*v26.i8, *v67.i8), *v70.i8, *v9.i8);
  v227 = vmlsl_s32(vmull_s32(*v70.i8, *v67.i8), *v26.i8, *v9.i8);
  *v136.i8 = vrshrn_n_s64(v279, 0xEuLL);
  *v139.i8 = vrshrn_n_s64(v276, 0xEuLL);
  v142 = vrshrn_n_s64(v76, 0xEuLL);
  v144 = vrshrn_n_s64(v78, 0xEuLL);
  *v70.i8 = vsub_s32(*v139.i8, v144);
  *v32.i8 = vsub_s32(*v136.i8, v142);
  v244 = vmlal_s32(vmull_s32(*v32.i8, *v67.i8), *v70.i8, *v9.i8);
  v220 = vmlsl_s32(vmull_s32(*v70.i8, *v67.i8), *v32.i8, *v9.i8);
  v248 = vmlal_s32(vmull_s32(*v58.i8, *v67.i8), *v22.i8, *v9.i8);
  v230 = vmlsl_s32(vmull_s32(*v22.i8, *v67.i8), *v58.i8, *v9.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v233, v209), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v231, v211), 0xEuLL);
  v251 = vmlal_s32(vmull_s32(*v32.i8, *v9.i8), *v70.i8, *v67.i8);
  v266 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v32.i8, *v67.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v241, v203), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v235, v206), 0xEuLL);
  v158 = vmlal_s32(vmull_s32(*v32.i8, *v9.i8), *v70.i8, *v67.i8);
  v152 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v32.i8, *v67.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v239, v201), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v237, v207), 0xEuLL);
  v156 = vmlal_s32(vmull_s32(*v32.i8, *v9.i8), *v70.i8, *v67.i8);
  v280 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v32.i8, *v67.i8);
  *v70.i8 = vrshrn_n_s64(vsubq_s64(v163, v129), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v159, v133), 0xEuLL);
  v154 = vmlal_s32(vmull_s32(*v32.i8, *v9.i8), *v70.i8, *v67.i8);
  v272 = vmlsl_s32(vmull_s32(*v70.i8, *v9.i8), *v32.i8, *v67.i8);
  *v71.i8 = vrshrn_n_s64(vsubq_s64(v127, v113), 0xEuLL);
  *v32.i8 = vrshrn_n_s64(vsubq_s64(v122, v112), 0xEuLL);
  *v22.i8 = vrshrn_n_s64(vsubq_s64(v119, v111), 0xEuLL);
  *v26.i8 = vrshrn_n_s64(vsubq_s64(v118, v110), 0xEuLL);
  *v58.i8 = vrshrn_n_s64(vsubq_s64(v131, v117), 0xEuLL);
  *v61.i8 = vrshrn_n_s64(vsubq_s64(v125, v116), 0xEuLL);
  *v43.i8 = vrshrn_n_s64(vsubq_s64(v124, v115), 0xEuLL);
  *v47.i8 = vrshrn_n_s64(vsubq_s64(v121, v114), 0xEuLL);
  v260 = vmlal_s32(vmull_s32(*v71.i8, *v67.i8), *v58.i8, *v9.i8);
  v141 = vmlal_s32(vmull_s32(*v32.i8, *v67.i8), *v61.i8, *v9.i8);
  v277 = vmlal_s32(vmull_s32(*v22.i8, *v67.i8), *v43.i8, *v9.i8);
  v79 = vmull_s32(*v47.i8, *v67.i8);
  v274 = vmlal_s32(vmull_s32(*v26.i8, *v67.i8), *v47.i8, *v9.i8);
  v254 = vmlsl_s32(vmull_s32(*v58.i8, *v67.i8), *v71.i8, *v9.i8);
  v80 = vmlsl_s32(vmull_s32(*v61.i8, *v67.i8), *v32.i8, *v9.i8);
  v135 = vmlsl_s32(vmull_s32(*v43.i8, *v67.i8), *v22.i8, *v9.i8);
  v138 = vmlsl_s32(v79, *v26.i8, *v9.i8);
  v81 = vaddq_s64(v209, v233);
  v82 = vaddq_s64(v203, v241);
  v204 = vaddq_s64(v201, v239);
  v83 = vaddq_s64(v211, v231);
  v84 = vaddq_s64(v207, v237);
  v108 = vaddq_s64(v133, v159);
  v109 = vaddq_s64(v206, v235);
  v85 = vaddq_s64(v113, v127);
  v123 = vaddq_s64(v112, v122);
  v86 = vaddq_s64(v111, v119);
  v120 = vaddq_s64(v110, v118);
  v128 = vaddq_s64(v116, v125);
  v87 = vaddq_s64(v115, v124);
  v232 = vaddq_s64(v114, v121);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v218, v214), 0xEuLL);
  *v69.i8 = vrshrn_n_s64(vsubq_s64(v225, v216), 0xEuLL);
  *v71.i8 = vdup_n_s32(0x2D41u);
  v238 = vmlal_s32(vmull_s32(*v45.i8, *v71.i8), *v69.i8, *v71.i8);
  v242 = vmlsl_s32(vmull_s32(*v69.i8, *v71.i8), *v45.i8, *v71.i8);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v264, v227), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v262, v246), 0xEuLL);
  v212 = vmlal_s32(vmull_s32(*v45.i8, *v71.i8), *v68.i8, *v71.i8);
  v236 = vmlsl_s32(vmull_s32(*v68.i8, *v71.i8), *v45.i8, *v71.i8);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v258, v220), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v256, v244), 0xEuLL);
  v210 = vmlal_s32(vmull_s32(*v45.i8, *v71.i8), *v68.i8, *v71.i8);
  v240 = vmlsl_s32(vmull_s32(*v68.i8, *v71.i8), *v45.i8, *v71.i8);
  *v45.i8 = vrshrn_n_s64(vsubq_s64(v270, v230), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v268, v248), 0xEuLL);
  v208 = vmlal_s32(vmull_s32(*v45.i8, *v71.i8), *v68.i8, *v71.i8);
  v234 = vmlsl_s32(vmull_s32(*v68.i8, *v71.i8), *v45.i8, *v71.i8);
  *v45.i8 = vsub_s32(vrshrn_n_s64(v109, 0xEuLL), vrshrn_n_s64(v128, 0xEuLL));
  *v68.i8 = vsub_s32(vrshrn_n_s64(v108, 0xEuLL), vrshrn_n_s64(v232, 0xEuLL));
  v88 = v82;
  *v69.i8 = vsub_s32(vrshrn_n_s64(v82, 0xEuLL), vrshrn_n_s64(v123, 0xEuLL));
  v89 = vaddq_s64(v129, v163);
  *v22.i8 = vsub_s32(vrshrn_n_s64(v89, 0xEuLL), vrshrn_n_s64(v120, 0xEuLL));
  *v60.i8 = vrshrn_n_s64(v81, 0xEuLL);
  *v75.i8 = vrshrn_n_s64(v83, 0xEuLL);
  *v121.i8 = vrshrn_n_s64(v85, 0xEuLL);
  *v124.i8 = vrshrn_n_s64(vaddq_s64(v117, v131), 0xEuLL);
  *v32.i8 = vsub_s32(*v75.i8, *v124.i8);
  *v82.i8 = vsub_s32(*v60.i8, *v121.i8);
  v202 = vmlal_s32(vmull_s32(*v82.i8, *v71.i8), *v32.i8, *v71.i8);
  v164 = vmlsl_s32(vmull_s32(*v32.i8, *v71.i8), *v82.i8, *v71.i8);
  v134 = vmlal_s32(vmull_s32(*v69.i8, *v71.i8), *v45.i8, *v71.i8);
  v160 = vmlsl_s32(vmull_s32(*v45.i8, *v71.i8), *v69.i8, *v71.i8);
  *v76.i8 = vrshrn_n_s64(v204, 0xEuLL);
  *v53.i8 = vrshrn_n_s64(v84, 0xEuLL);
  *v118.i8 = vrshrn_n_s64(v86, 0xEuLL);
  *v206.i8 = vrshrn_n_s64(v87, 0xEuLL);
  *v86.i8 = vsub_s32(*v53.i8, *v206.i8);
  *v32.i8 = vsub_s32(*v76.i8, *v118.i8);
  v205 = vmlsl_s32(vmull_s32(*v86.i8, *v71.i8), *v32.i8, *v71.i8);
  v126 = vmlal_s32(vmull_s32(*v22.i8, *v71.i8), *v68.i8, *v71.i8);
  v130 = vmlal_s32(vmull_s32(*v32.i8, *v71.i8), *v86.i8, *v71.i8);
  v132 = vmlsl_s32(vmull_s32(*v68.i8, *v71.i8), *v22.i8, *v71.i8);
  v90 = vrshrn_high_n_s64(*v166.i8, v74, 0xEuLL);
  v91 = vaddq_s32(vrshrn_high_n_s64(*v183.i8, v196, 0xEuLL), vrshrn_high_n_s64(*v177.i8, v199, 0xEuLL));
  v92 = vaddq_s32(vrshrn_high_n_s64(*v176.i8, v193, 0xEuLL), v90);
  v194 = vaddq_s32(vrshrn_high_n_s64(*v178.i8, v188, 0xEuLL), vrshrn_high_n_s64(*v173.i8, v172, 0xEuLL));
  v93 = vaddq_s32(vrshrn_high_n_s64(v146, v168, 0xEuLL), vrshrn_high_n_s64(*v143.i8, v149, 0xEuLL));
  v94 = vaddq_s32(vrshrn_high_n_s64(v142, v150, 0xEuLL), vrshrn_high_n_s64(*v136.i8, v222, 0xEuLL));
  v223 = vaddq_s32(vrshrn_high_n_s64(*v148.i8, v170, 0xEuLL), vrshrn_high_n_s64(*v145.i8, v165, 0xEuLL));
  v197 = vaddq_s32(vrshrn_high_n_s64(v144, v175, 0xEuLL), vrshrn_high_n_s64(*v139.i8, v162, 0xEuLL));
  v200 = vaddq_s32(vrshrn_high_n_s64(*v185.i8, v190, 0xEuLL), vrshrn_high_n_s64(*v179.i8, v181, 0xEuLL));
  v95 = vsubq_s32(v91, v93);
  v96 = vsubq_s32(v200, v223);
  v97 = vdupq_n_s32(0xFFFFD2BF);
  v98 = vmlal_s32(vmull_s32(*v95.i8, *v97.i8), *v96.i8, *v97.i8);
  v99 = vmlal_high_s32(vmull_high_s32(v95, v97), v96, v97);
  v186 = vmlsl_high_s32(vmull_high_s32(v96, v97), v95, v97);
  v187 = vmlsl_s32(vmull_s32(*v96.i8, *v97.i8), *v95.i8, *v97.i8);
  v100 = vsubq_s32(v92, v94);
  v101 = vsubq_s32(v194, v197);
  v182 = vmlal_s32(vmull_s32(*v100.i8, *v97.i8), *v101.i8, *v97.i8);
  v180 = vmlal_high_s32(vmull_high_s32(v100, v97), v101, v97);
  v189 = vmlsl_s32(vmull_s32(*v101.i8, *v97.i8), *v100.i8, *v97.i8);
  v191 = vmlsl_high_s32(vmull_high_s32(v101, v97), v100, v97);
  *v100.i8 = vrshrn_n_s64(vsubq_s64(v251, v254), 0xEuLL);
  *v101.i8 = vrshrn_n_s64(vsubq_s64(v266, v260), 0xEuLL);
  v102 = vmlal_s32(vmull_s32(*v100.i8, *v97.i8), *v101.i8, *v97.i8);
  v184 = vmlsl_s32(vmull_s32(*v101.i8, *v97.i8), *v100.i8, *v97.i8);
  *v100.i8 = vrshrn_n_s64(vsubq_s64(v158, v80), 0xEuLL);
  *v101.i8 = vrshrn_n_s64(vsubq_s64(v152, v141), 0xEuLL);
  v103 = vmlal_s32(vmull_s32(*v100.i8, *v97.i8), *v101.i8, *v97.i8);
  v104 = vmlsl_s32(vmull_s32(*v101.i8, *v97.i8), *v100.i8, *v97.i8);
  *v100.i8 = vrshrn_n_s64(vsubq_s64(v156, v135), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v280, v277), 0xEuLL);
  v105 = vmlal_s32(vmull_s32(*v100.i8, *v97.i8), *v68.i8, *v97.i8);
  v106 = vmlsl_s32(vmull_s32(*v68.i8, *v97.i8), *v100.i8, *v97.i8);
  *v100.i8 = vrshrn_n_s64(vsubq_s64(v154, v138), 0xEuLL);
  *v68.i8 = vrshrn_n_s64(vsubq_s64(v272, v274), 0xEuLL);
  *a1 = vaddq_s32(v93, v91);
  *a2 = vaddq_s32(v94, v92);
  *(a1 + 16) = vnegq_s32(vaddq_s32(vrshrn_high_n_s64(*v60.i8, v88, 0xEuLL), vrshrn_high_n_s64(*v121.i8, v123, 0xEuLL)));
  *(a2 + 16) = vnegq_s32(vaddq_s32(vrshrn_high_n_s64(*v76.i8, v89, 0xEuLL), vrshrn_high_n_s64(*v118.i8, v120, 0xEuLL)));
  *(a1 + 32) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v254, v251), 0xEuLL), vaddq_s64(v80, v158), 0xEuLL);
  *(a2 + 32) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v135, v156), 0xEuLL), vaddq_s64(v138, v154), 0xEuLL);
  *(a1 + 48) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v214, v218), 0xEuLL), vaddq_s64(v227, v264), 0xEuLL));
  *(a2 + 48) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v220, v258), 0xEuLL), vaddq_s64(v230, v270), 0xEuLL));
  *(a1 + 64) = vrshrn_high_n_s64(vrshrn_n_s64(v238, 0xEuLL), v212, 0xEuLL);
  *(a2 + 64) = vrshrn_high_n_s64(vrshrn_n_s64(v210, 0xEuLL), v208, 0xEuLL);
  *(a1 + 80) = vrshrn_high_n_s64(vrshrn_n_s64(v102, 0xEuLL), v103, 0xEuLL);
  *(a2 + 80) = vrshrn_high_n_s64(vrshrn_n_s64(v105, 0xEuLL), vmlal_s32(vmull_s32(*v100.i8, *v97.i8), *v68.i8, *v97.i8), 0xEuLL);
  *(a1 + 96) = vrshrn_high_n_s64(vrshrn_n_s64(v202, 0xEuLL), v134, 0xEuLL);
  *(a2 + 96) = vrshrn_high_n_s64(vrshrn_n_s64(v130, 0xEuLL), v126, 0xEuLL);
  *(a1 + 112) = vrshrn_high_n_s64(vrshrn_n_s64(v98, 0xEuLL), v99, 0xEuLL);
  *(a2 + 112) = vrshrn_high_n_s64(vrshrn_n_s64(v182, 0xEuLL), v180, 0xEuLL);
  *(a1 + 128) = vrshrn_high_n_s64(vrshrn_n_s64(v187, 0xEuLL), v186, 0xEuLL);
  *(a2 + 128) = vrshrn_high_n_s64(vrshrn_n_s64(v189, 0xEuLL), v191, 0xEuLL);
  *(a1 + 144) = vrshrn_high_n_s64(vrshrn_n_s64(v164, 0xEuLL), v160, 0xEuLL);
  *(a2 + 144) = vrshrn_high_n_s64(vrshrn_n_s64(v205, 0xEuLL), v132, 0xEuLL);
  *(a1 + 160) = vrshrn_high_n_s64(vrshrn_n_s64(v184, 0xEuLL), v104, 0xEuLL);
  *(a2 + 160) = vrshrn_high_n_s64(vrshrn_n_s64(v106, 0xEuLL), vmlsl_s32(vmull_s32(*v68.i8, *v97.i8), *v100.i8, *v97.i8), 0xEuLL);
  *(a1 + 176) = vrshrn_high_n_s64(vrshrn_n_s64(v242, 0xEuLL), v236, 0xEuLL);
  *(a2 + 176) = vrshrn_high_n_s64(vrshrn_n_s64(v240, 0xEuLL), v234, 0xEuLL);
  *(a1 + 192) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v216, v225), 0xEuLL), vaddq_s64(v246, v262), 0xEuLL);
  *(a2 + 192) = vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v244, v256), 0xEuLL), vaddq_s64(v248, v268), 0xEuLL);
  *(a1 + 208) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v260, v266), 0xEuLL), vaddq_s64(v141, v152), 0xEuLL));
  *(a2 + 208) = vnegq_s32(vrshrn_high_n_s64(vrshrn_n_s64(vaddq_s64(v277, v280), 0xEuLL), vaddq_s64(v274, v272), 0xEuLL));
  *(a1 + 224) = vaddq_s32(vrshrn_high_n_s64(*v124.i8, v128, 0xEuLL), vrshrn_high_n_s64(*v75.i8, v109, 0xEuLL));
  *(a2 + 224) = vaddq_s32(vrshrn_high_n_s64(*v206.i8, v232, 0xEuLL), vrshrn_high_n_s64(*v53.i8, v108, 0xEuLL));
  *(a1 + 240) = vnegq_s32(vaddq_s32(v200, v223));
  result = vnegq_s32(vaddq_s32(v194, v197));
  *(a2 + 240) = result;
  return result;
}

int32x4_t highbd_fdct16_8col(int32x4_t *a1, int32x4_t *a2)
{
  v243 = a1[1];
  v245 = a1[14];
  v239 = a2[1];
  v241 = a2[14];
  v195 = vaddq_s32(v241, v239);
  v2 = a1[3];
  v225 = a1[2];
  v227 = vaddq_s32(v245, v243);
  v3 = a1[12];
  v221 = a2[13];
  v223 = a1[13];
  v4 = a2[3];
  v219 = a2[2];
  v5 = a2[12];
  v217 = a1[5];
  v6 = a1[10];
  v231 = vaddq_s32(v223, v225);
  v233 = vaddq_s32(v6, v217);
  v7 = a2[5];
  v8 = a2[10];
  v197 = vaddq_s32(v221, v219);
  v199 = vaddq_s32(v8, v7);
  v235 = a1[6];
  v237 = a1[9];
  v208 = a1[7];
  v210 = a1[8];
  v229 = vaddq_s32(v237, v235);
  v9 = vsubq_s32(v231, v233);
  v10 = vsubq_s32(v227, v229);
  v11 = vaddq_s32(v10, v9);
  v12 = vsubq_s32(v10, v9);
  v215 = a2[6];
  v194 = a2[9];
  v201 = a2[7];
  v203 = a2[8];
  v196 = vaddq_s32(v194, v215);
  v13 = vsubq_s32(v197, v199);
  v14 = vsubq_s32(v195, v196);
  v255 = vdupq_n_s32(0x5A820000u);
  v15 = vqrdmulhq_s32(v11, v255);
  v16 = vqrdmulhq_s32(vaddq_s32(v14, v13), v255);
  v17 = vqrdmulhq_s32(v12, v255);
  v18 = vqrdmulhq_s32(vsubq_s32(v14, v13), v255);
  v213 = a1[15];
  v19 = a1[4];
  v20 = a1[11];
  v21 = vaddq_s32(v213, *a1);
  v192 = vaddq_s32(v20, v19);
  v193 = vaddq_s32(v3, v2);
  v22 = vaddq_s32(v210, v208);
  v23 = vsubq_s32(v193, v192);
  v24 = vsubq_s32(v21, v22);
  v25 = vaddq_s32(v17, v23);
  v26 = vdupq_n_s32(0x3EC5u);
  v27 = vaddq_s32(v15, v24);
  v28 = vdupq_n_s32(0xC7Cu);
  v263 = vmlal_s32(vmull_s32(*v25.i8, *v28.i8), *v27.i8, *v26.i8);
  v262 = vmlal_high_s32(vmull_high_s32(v25, v28), v27, v26);
  v29 = vmull_s32(*v27.i8, *v28.i8);
  v30 = vmull_high_s32(v27, v28);
  v206 = a2[15];
  v31 = a2[4];
  v32 = a2[11];
  v33 = vaddq_s32(v206, *a2);
  v190 = vaddq_s32(v32, v31);
  v191 = vaddq_s32(v5, v4);
  v34 = vaddq_s32(v203, v201);
  v35 = vsubq_s32(v191, v190);
  v36 = vsubq_s32(v33, v34);
  v37 = vaddq_s32(v18, v35);
  v38 = vaddq_s32(v16, v36);
  v257 = vmlal_s32(vmull_s32(*v37.i8, *v28.i8), *v38.i8, *v26.i8);
  v256 = vmlal_high_s32(vmull_high_s32(v37, v28), v38, v26);
  v260 = vmlsl_high_s32(v30, v25, v26);
  v261 = vmlsl_s32(v29, *v25.i8, *v26.i8);
  v258 = vmlsl_high_s32(vmull_high_s32(v38, v28), v37, v26);
  v259 = vmlsl_s32(vmull_s32(*v38.i8, *v28.i8), *v37.i8, *v26.i8);
  v39 = vsubq_s32(v23, v17);
  v40 = vsubq_s32(v35, v18);
  v41 = vsubq_s32(v24, v15);
  v42 = vsubq_s32(v36, v16);
  v43 = vdupq_n_s32(0x238Eu);
  v44 = vdupq_n_s32(0x3537u);
  v254 = vmlal_s32(vmull_s32(*v39.i8, *v44.i8), *v41.i8, *v43.i8);
  v253 = vmlal_high_s32(vmull_high_s32(v39, v44), v41, v43);
  v252 = vmlal_s32(vmull_s32(*v40.i8, *v44.i8), *v42.i8, *v43.i8);
  v250 = vmlsl_s32(vmull_s32(*v41.i8, *v44.i8), *v39.i8, *v43.i8);
  v251 = vmlal_high_s32(vmull_high_s32(v40, v44), v42, v43);
  v248 = vmlsl_s32(vmull_s32(*v42.i8, *v44.i8), *v40.i8, *v43.i8);
  v249 = vmlsl_high_s32(vmull_high_s32(v41, v44), v39, v43);
  v247 = vmlsl_high_s32(vmull_high_s32(v42, v44), v40, v43);
  v45 = vsubq_s32(v217, v6);
  v46 = vsubq_s32(v7, v8);
  v47 = vsubq_s32(v19, v20);
  v48 = vsubq_s32(v31, v32);
  v49 = vsubq_s32(v2, v3);
  v50 = vsubq_s32(v4, v5);
  v51 = vsubq_s32(v225, v223);
  v52 = vsubq_s32(v219, v221);
  v53 = vdupq_n_s32(0x2D41u);
  v54 = vmlal_s32(vmull_s32(*v45.i8, *v53.i8), *v51.i8, *v53.i8);
  v55 = vmlal_high_s32(vmull_high_s32(v45, v53), v51, v53);
  v56 = vmlsl_s32(vmull_s32(*v51.i8, *v53.i8), *v45.i8, *v53.i8);
  v57 = vmlsl_high_s32(vmull_high_s32(v51, v53), v45, v53);
  v58 = vmlal_s32(vmull_s32(*v46.i8, *v53.i8), *v52.i8, *v53.i8);
  v59 = vmlal_high_s32(vmull_high_s32(v46, v53), v52, v53);
  v60 = vmlsl_s32(vmull_s32(*v52.i8, *v53.i8), *v46.i8, *v53.i8);
  v61 = vmlsl_high_s32(vmull_high_s32(v52, v53), v46, v53);
  v62 = vmlal_s32(vmull_s32(*v47.i8, *v53.i8), *v49.i8, *v53.i8);
  v63 = vmlal_high_s32(vmull_high_s32(v47, v53), v49, v53);
  v64 = vmlsl_s32(vmull_s32(*v49.i8, *v53.i8), *v47.i8, *v53.i8);
  v65 = vmlsl_high_s32(vmull_high_s32(v49, v53), v47, v53);
  v66 = vmlal_s32(vmull_s32(*v48.i8, *v53.i8), *v50.i8, *v53.i8);
  v67 = vmlal_high_s32(vmull_high_s32(v48, v53), v50, v53);
  v68 = vmlsl_s32(vmull_s32(*v50.i8, *v53.i8), *v48.i8, *v53.i8);
  v69 = vmlsl_high_s32(vmull_high_s32(v50, v53), v48, v53);
  v70 = vsubq_s32(v235, v237);
  v71 = vsubq_s32(v215, v194);
  v72 = vsubq_s32(v243, v245);
  v73 = vsubq_s32(v239, v241);
  v228 = vaddq_s32(v229, v227);
  v230 = vaddq_s32(v233, v231);
  v224 = vaddq_s32(v22, v21);
  v226 = vaddq_s32(v192, v193);
  v220 = vaddq_s32(v196, v195);
  v222 = vaddq_s32(v199, v197);
  v216 = vaddq_s32(v34, v33);
  v218 = vaddq_s32(v190, v191);
  v74 = vsubq_s32(v228, v230);
  v75 = vsubq_s32(v224, v226);
  v76 = vdupq_n_s32(0x3B21u);
  v77 = vdupq_n_s32(0x187Eu);
  v238 = vmlal_s32(vmull_s32(*v74.i8, *v77.i8), *v75.i8, *v76.i8);
  v234 = vmlal_high_s32(vmull_high_s32(v74, v77), v75, v76);
  v244 = vmlsl_high_s32(vmull_high_s32(v75, v77), v74, v76);
  v246 = vmlsl_s32(vmull_s32(*v75.i8, *v77.i8), *v74.i8, *v76.i8);
  v78 = vsubq_s32(v220, v222);
  v79 = vsubq_s32(v216, v218);
  v236 = vmlal_s32(vmull_s32(*v78.i8, *v77.i8), *v79.i8, *v76.i8);
  v232 = vmlal_high_s32(vmull_high_s32(v78, v77), v79, v76);
  v240 = vmlsl_high_s32(vmull_high_s32(v79, v77), v78, v76);
  v242 = vmlsl_s32(vmull_s32(*v79.i8, *v77.i8), *v78.i8, *v76.i8);
  v80 = vrshrn_high_n_s64(vrshrn_n_s64(v54, 0xEuLL), v55, 0xEuLL);
  v81 = vrshrn_high_n_s64(vrshrn_n_s64(v58, 0xEuLL), v59, 0xEuLL);
  v82 = vrshrn_high_n_s64(vrshrn_n_s64(v56, 0xEuLL), v57, 0xEuLL);
  v83 = vrshrn_high_n_s64(vrshrn_n_s64(v60, 0xEuLL), v61, 0xEuLL);
  v84 = vaddq_s32(v82, v70);
  v85 = vsubq_s32(v70, v82);
  v86 = vaddq_s32(v83, v71);
  v87 = vsubq_s32(v71, v83);
  v88 = vsubq_s32(v72, v80);
  v89 = vaddq_s32(v80, v72);
  v90 = vsubq_s32(v73, v81);
  v91 = vaddq_s32(v81, v73);
  v92 = vmlal_s32(vmull_s32(*v84.i8, *v77.i8), *v89.i8, *v76.i8);
  v93 = vmlal_high_s32(vmull_high_s32(v84, v77), v89, v76);
  v94 = vmlsl_s32(vmull_s32(*v89.i8, *v77.i8), *v84.i8, *v76.i8);
  v95 = vmlsl_high_s32(vmull_high_s32(v89, v77), v84, v76);
  v96 = vmlal_s32(vmull_s32(*v86.i8, *v77.i8), *v91.i8, *v76.i8);
  v97 = vmlal_high_s32(vmull_high_s32(v86, v77), v91, v76);
  v98 = vmlsl_s32(vmull_s32(*v91.i8, *v77.i8), *v86.i8, *v76.i8);
  v99 = vmlsl_high_s32(vmull_high_s32(v91, v77), v86, v76);
  v200 = vmlal_s32(vmull_s32(*v88.i8, *v76.i8), *v85.i8, *v77.i8);
  v100 = vmlal_high_s32(vmull_high_s32(v88, v76), v85, v77);
  v101 = vmlal_s32(vmull_s32(*v90.i8, *v76.i8), *v87.i8, *v77.i8);
  v102 = vmlal_high_s32(vmull_high_s32(v90, v76), v87, v77);
  v198 = vmlsl_s32(vmull_s32(*v85.i8, *v76.i8), *v88.i8, *v77.i8);
  v103 = vmlsl_high_s32(vmull_high_s32(v85, v76), v88, v77);
  v104 = vmlsl_s32(vmull_s32(*v87.i8, *v76.i8), *v90.i8, *v77.i8);
  v105 = vmlsl_high_s32(vmull_high_s32(v87, v76), v90, v77);
  v106 = vsubq_s32(v208, v210);
  v107 = vsubq_s32(v201, v203);
  v108 = vsubq_s32(*a1, v213);
  v109 = vsubq_s32(*a2, v206);
  v110 = vrshrn_high_n_s64(vrshrn_n_s64(v62, 0xEuLL), v63, 0xEuLL);
  v111 = vrshrn_high_n_s64(vrshrn_n_s64(v66, 0xEuLL), v67, 0xEuLL);
  v112 = vrshrn_high_n_s64(vrshrn_n_s64(v64, 0xEuLL), v65, 0xEuLL);
  v113 = vrshrn_high_n_s64(vrshrn_n_s64(v68, 0xEuLL), v69, 0xEuLL);
  v114 = vrshrn_high_n_s64(vrshrn_n_s64(v92, 0xEuLL), v93, 0xEuLL);
  v115 = vrshrn_high_n_s64(vrshrn_n_s64(v96, 0xEuLL), v97, 0xEuLL);
  v116 = vrshrn_high_n_s64(vrshrn_n_s64(v94, 0xEuLL), v95, 0xEuLL);
  v117 = vrshrn_high_n_s64(vrshrn_n_s64(v98, 0xEuLL), v99, 0xEuLL);
  v118 = vaddq_s32(v112, v106);
  v119 = vaddq_s32(v110, v108);
  v120 = vaddq_s32(v116, v118);
  v121 = vaddq_s32(v114, v119);
  v122 = vdupq_n_s32(0x3FB1u);
  v123 = vdupq_n_s32(0x646u);
  v214 = vmlal_s32(vmull_s32(*v120.i8, *v123.i8), *v121.i8, *v122.i8);
  v212 = vmlal_high_s32(vmull_high_s32(v120, v123), v121, v122);
  v124 = vmull_s32(*v121.i8, *v123.i8);
  v125 = vmull_high_s32(v121, v123);
  v126 = vaddq_s32(v113, v107);
  v127 = vaddq_s32(v111, v109);
  v128 = v109;
  v129 = vaddq_s32(v117, v126);
  v130 = vaddq_s32(v115, v127);
  v202 = vmlal_s32(vmull_s32(*v129.i8, *v123.i8), *v130.i8, *v122.i8);
  v131 = vmlal_high_s32(vmull_high_s32(v129, v123), v130, v122);
  v209 = vmlsl_high_s32(v125, v120, v122);
  v211 = vmlsl_s32(v124, *v120.i8, *v122.i8);
  v205 = vmlsl_high_s32(vmull_high_s32(v130, v123), v129, v122);
  v207 = vmlsl_s32(vmull_s32(*v130.i8, *v123.i8), *v129.i8, *v122.i8);
  v132 = vsubq_s32(v118, v116);
  v133 = vsubq_s32(v126, v117);
  v134 = vsubq_s32(v119, v114);
  v135 = vsubq_s32(v127, v115);
  v136 = vdupq_n_s32(0x289Au);
  v137 = vdupq_n_s32(0x3179u);
  v138 = vmlal_s32(vmull_s32(*v132.i8, *v137.i8), *v134.i8, *v136.i8);
  v139 = vmlal_high_s32(vmull_high_s32(v132, v137), v134, v136);
  v140 = vmlal_s32(vmull_s32(*v133.i8, *v137.i8), *v135.i8, *v136.i8);
  v141 = vmlal_high_s32(vmull_high_s32(v133, v137), v135, v136);
  v204 = vmlsl_s32(vmull_s32(*v134.i8, *v137.i8), *v132.i8, *v136.i8);
  v142 = vmlsl_high_s32(vmull_high_s32(v134, v137), v132, v136);
  v143 = vmlsl_s32(vmull_s32(*v135.i8, *v137.i8), *v133.i8, *v136.i8);
  v144 = vmlsl_high_s32(vmull_high_s32(v135, v137), v133, v136);
  v145 = vsubq_s32(v106, v112);
  v146 = vsubq_s32(v107, v113);
  v147 = vsubq_s32(v108, v110);
  v148 = vsubq_s32(v128, v111);
  v149 = vrshrn_high_n_s64(vrshrn_n_s64(v200, 0xEuLL), v100, 0xEuLL);
  v150 = vrshrn_high_n_s64(vrshrn_n_s64(v101, 0xEuLL), v102, 0xEuLL);
  v151 = vrshrn_high_n_s64(vrshrn_n_s64(v198, 0xEuLL), v103, 0xEuLL);
  v152 = vrshrn_high_n_s64(vrshrn_n_s64(v104, 0xEuLL), v105, 0xEuLL);
  v153 = vaddq_s32(v149, v145);
  v154 = vaddq_s32(v151, v147);
  v155 = vdupq_n_s32(0x3871u);
  v156 = vdupq_n_s32(0x1E2Bu);
  v157 = vmlal_s32(vmull_s32(*v153.i8, *v156.i8), *v154.i8, *v155.i8);
  v158 = vmlal_high_s32(vmull_high_s32(v153, v156), v154, v155);
  v159 = vmull_s32(*v154.i8, *v156.i8);
  v160 = vmull_high_s32(v154, v156);
  v161 = vaddq_s32(v150, v146);
  v162 = vaddq_s32(v152, v148);
  v163 = vmlal_s32(vmull_s32(*v161.i8, *v156.i8), *v162.i8, *v155.i8);
  v164 = vmull_s32(*v162.i8, *v156.i8);
  v165 = vmull_high_s32(v162, v156);
  v166 = vmlal_high_s32(vmull_high_s32(v161, v156), v162, v155);
  v167 = vmlsl_s32(v159, *v153.i8, *v155.i8);
  v168 = vmlsl_high_s32(v160, v153, v155);
  v169 = vmlsl_s32(v164, *v161.i8, *v155.i8);
  v170 = vmlsl_high_s32(v165, v161, v155);
  v171 = vsubq_s32(v145, v149);
  v172 = vsubq_s32(v146, v150);
  v173 = vsubq_s32(v147, v151);
  v174 = vsubq_s32(v148, v152);
  v175 = vdupq_n_s32(0x1294u);
  v176 = vdupq_n_s32(0x3D3Fu);
  v177 = vmlal_s32(vmull_s32(*v171.i8, *v176.i8), *v173.i8, *v175.i8);
  v178 = vmlal_high_s32(vmull_high_s32(v171, v176), v173, v175);
  v179 = vmlal_s32(vmull_s32(*v172.i8, *v176.i8), *v174.i8, *v175.i8);
  v180 = vmlal_high_s32(vmull_high_s32(v172, v176), v174, v175);
  v181 = vmlsl_s32(vmull_s32(*v173.i8, *v176.i8), *v171.i8, *v175.i8);
  v182 = vmlsl_high_s32(vmull_high_s32(v173, v176), v171, v175);
  v183 = vmlsl_s32(vmull_s32(*v174.i8, *v176.i8), *v172.i8, *v175.i8);
  v184 = vmlsl_high_s32(vmull_high_s32(v174, v176), v172, v175);
  v185 = vaddq_s32(v224, v226);
  v186 = vaddq_s32(v216, v218);
  v187 = vaddq_s32(v228, v230);
  v188 = vaddq_s32(v220, v222);
  a1[1] = vrshrn_high_n_s64(vrshrn_n_s64(v214, 0xEuLL), v212, 0xEuLL);
  a2[1] = vrshrn_high_n_s64(vrshrn_n_s64(v202, 0xEuLL), v131, 0xEuLL);
  a1[15] = vrshrn_high_n_s64(vrshrn_n_s64(v211, 0xEuLL), v209, 0xEuLL);
  a2[15] = vrshrn_high_n_s64(vrshrn_n_s64(v207, 0xEuLL), v205, 0xEuLL);
  a1[9] = vrshrn_high_n_s64(vrshrn_n_s64(v138, 0xEuLL), v139, 0xEuLL);
  a2[9] = vrshrn_high_n_s64(vrshrn_n_s64(v140, 0xEuLL), v141, 0xEuLL);
  a1[7] = vrshrn_high_n_s64(vrshrn_n_s64(v204, 0xEuLL), v142, 0xEuLL);
  a2[7] = vrshrn_high_n_s64(vrshrn_n_s64(v143, 0xEuLL), v144, 0xEuLL);
  a1[5] = vrshrn_high_n_s64(vrshrn_n_s64(v157, 0xEuLL), v158, 0xEuLL);
  a2[5] = vrshrn_high_n_s64(vrshrn_n_s64(v163, 0xEuLL), v166, 0xEuLL);
  a1[11] = vrshrn_high_n_s64(vrshrn_n_s64(v167, 0xEuLL), v168, 0xEuLL);
  a2[11] = vrshrn_high_n_s64(vrshrn_n_s64(v169, 0xEuLL), v170, 0xEuLL);
  a1[13] = vrshrn_high_n_s64(vrshrn_n_s64(v177, 0xEuLL), v178, 0xEuLL);
  a2[13] = vrshrn_high_n_s64(vrshrn_n_s64(v179, 0xEuLL), v180, 0xEuLL);
  a1[3] = vrshrn_high_n_s64(vrshrn_n_s64(v181, 0xEuLL), v182, 0xEuLL);
  a2[3] = vrshrn_high_n_s64(vrshrn_n_s64(v183, 0xEuLL), v184, 0xEuLL);
  *a1 = vqrdmulhq_s32(vaddq_s32(v185, v187), v255);
  *a2 = vqrdmulhq_s32(vaddq_s32(v186, v188), v255);
  a1[2] = vrshrn_high_n_s64(vrshrn_n_s64(v263, 0xEuLL), v262, 0xEuLL);
  a2[2] = vrshrn_high_n_s64(vrshrn_n_s64(v257, 0xEuLL), v256, 0xEuLL);
  a1[4] = vrshrn_high_n_s64(vrshrn_n_s64(v238, 0xEuLL), v234, 0xEuLL);
  a2[4] = vrshrn_high_n_s64(vrshrn_n_s64(v236, 0xEuLL), v232, 0xEuLL);
  a1[6] = vrshrn_high_n_s64(vrshrn_n_s64(v250, 0xEuLL), v249, 0xEuLL);
  a2[6] = vrshrn_high_n_s64(vrshrn_n_s64(v248, 0xEuLL), v247, 0xEuLL);
  a1[8] = vqrdmulhq_s32(vsubq_s32(v185, v187), v255);
  a2[8] = vqrdmulhq_s32(vsubq_s32(v186, v188), v255);
  a1[10] = vrshrn_high_n_s64(vrshrn_n_s64(v254, 0xEuLL), v253, 0xEuLL);
  a2[10] = vrshrn_high_n_s64(vrshrn_n_s64(v252, 0xEuLL), v251, 0xEuLL);
  a1[12] = vrshrn_high_n_s64(vrshrn_n_s64(v246, 0xEuLL), v244, 0xEuLL);
  a2[12] = vrshrn_high_n_s64(vrshrn_n_s64(v242, 0xEuLL), v240, 0xEuLL);
  a1[14] = vrshrn_high_n_s64(vrshrn_n_s64(v261, 0xEuLL), v260, 0xEuLL);
  result = vrshrn_high_n_s64(vrshrn_n_s64(v259, 0xEuLL), v258, 0xEuLL);
  a2[14] = result;
  return result;
}

BOOL vp9_read_sync_code(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = (*a1 + (v2 >> 3));
  if (v5 >= v3)
  {
    v10 = a1[4];
    if (v10)
    {
      v10(a1[3]);
      v7 = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
      v8 = (*a1 + (v2 >> 3));
      if (v8 < v3)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v7 = 0;
      v8 = (v4 + (v2 >> 3));
      if (v8 < v3)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    v6 = *v5 >> (~v2++ & 7);
    a1[2] = v2;
    v7 = (v6 & 1) << 7;
    v8 = (v4 + (v2 >> 3));
    if (v8 < v3)
    {
LABEL_3:
      v9 = *v8 >> (~v2++ & 7);
      a1[2] = v2;
      LODWORD(v8) = (v9 & 1) << 6;
      goto LABEL_8;
    }
  }

  v8 = a1[4];
  if (v8)
  {
    v8(a1[3]);
    LODWORD(v8) = 0;
    v3 = a1[1];
    v2 = a1[2];
    v4 = *a1;
  }

LABEL_8:
  v11 = v8 | v7;
  v12 = (v4 + (v2 >> 3));
  if (v12 >= v3)
  {
    v12 = a1[4];
    if (v12)
    {
      v12(a1[3]);
      LODWORD(v12) = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
    }
  }

  else
  {
    v13 = *v12 >> (~v2++ & 7);
    a1[2] = v2;
    LODWORD(v12) = 32 * (v13 & 1);
  }

  v14 = v12 | v11;
  v15 = (v4 + (v2 >> 3));
  if (v15 >= v3)
  {
    v15 = a1[4];
    if (v15)
    {
      v15(a1[3]);
      LODWORD(v15) = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
    }
  }

  else
  {
    v16 = *v15 >> (~v2++ & 7);
    a1[2] = v2;
    LODWORD(v15) = 16 * (v16 & 1);
  }

  v17 = v15 | v14;
  v18 = (v4 + (v2 >> 3));
  if (v18 >= v3)
  {
    v18 = a1[4];
    if (v18)
    {
      v18(a1[3]);
      LODWORD(v18) = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
    }
  }

  else
  {
    v19 = *v18 >> (~v2++ & 7);
    a1[2] = v2;
    LODWORD(v18) = 8 * (v19 & 1);
  }

  v20 = v18 | v17;
  v21 = (v4 + (v2 >> 3));
  if (v21 >= v3)
  {
    v21 = a1[4];
    if (v21)
    {
      v21(a1[3]);
      LODWORD(v21) = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
    }
  }

  else
  {
    v22 = *v21 >> (~v2++ & 7);
    a1[2] = v2;
    LODWORD(v21) = 4 * (v22 & 1);
  }

  v23 = v21 | v20;
  v24 = (v4 + (v2 >> 3));
  if (v24 >= v3)
  {
    v24 = a1[4];
    if (v24)
    {
      v24(a1[3]);
      LODWORD(v24) = 0;
      v3 = a1[1];
      v2 = a1[2];
      v4 = *a1;
    }
  }

  else
  {
    v25 = *v24 >> (~v2++ & 7);
    a1[2] = v2;
    LODWORD(v24) = 2 * (v25 & 1);
  }

  v26 = v24 | v23;
  v27 = (v4 + (v2 >> 3));
  if (v27 < v3)
  {
    v28 = (*v27 >> (~v2 & 7)) & 1;
    a1[2] = v2 + 1;
    if ((v28 | v26) == 0x49)
    {
      goto LABEL_30;
    }

    return 0;
  }

  v37 = a1[4];
  if (v37)
  {
    v37(a1[3]);
    if (v26 != 73)
    {
      return 0;
    }
  }

  else if (v26 != 73)
  {
    return 0;
  }

LABEL_30:
  v30 = a1[1];
  v29 = a1[2];
  v31 = *a1;
  v32 = (*a1 + (v29 >> 3));
  if (v32 >= v30)
  {
    v39 = a1[4];
    if (v39)
    {
      v39(a1[3]);
      v34 = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
      v35 = (*a1 + (v29 >> 3));
      if (v35 < v30)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v34 = 0;
      v35 = (v31 + (v29 >> 3));
      if (v35 < v30)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v33 = *v32 >> (~v29++ & 7);
    a1[2] = v29;
    v34 = (v33 & 1) << 7;
    v35 = (v31 + (v29 >> 3));
    if (v35 < v30)
    {
LABEL_32:
      v36 = *v35 >> (~v29++ & 7);
      a1[2] = v29;
      LODWORD(v35) = (v36 & 1) << 6;
      goto LABEL_40;
    }
  }

  v35 = a1[4];
  if (v35)
  {
    v35(a1[3]);
    LODWORD(v35) = 0;
    v30 = a1[1];
    v29 = a1[2];
    v31 = *a1;
  }

LABEL_40:
  v40 = v35 | v34;
  v41 = (v31 + (v29 >> 3));
  if (v41 >= v30)
  {
    v41 = a1[4];
    if (v41)
    {
      v41(a1[3]);
      LODWORD(v41) = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
    }
  }

  else
  {
    v42 = *v41 >> (~v29++ & 7);
    a1[2] = v29;
    LODWORD(v41) = 32 * (v42 & 1);
  }

  v43 = v41 | v40;
  v44 = (v31 + (v29 >> 3));
  if (v44 >= v30)
  {
    v44 = a1[4];
    if (v44)
    {
      v44(a1[3]);
      LODWORD(v44) = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
    }
  }

  else
  {
    v45 = *v44 >> (~v29++ & 7);
    a1[2] = v29;
    LODWORD(v44) = 16 * (v45 & 1);
  }

  v46 = v44 | v43;
  v47 = (v31 + (v29 >> 3));
  if (v47 >= v30)
  {
    v47 = a1[4];
    if (v47)
    {
      v47(a1[3]);
      LODWORD(v47) = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
    }
  }

  else
  {
    v48 = *v47 >> (~v29++ & 7);
    a1[2] = v29;
    LODWORD(v47) = 8 * (v48 & 1);
  }

  v49 = v47 | v46;
  v50 = (v31 + (v29 >> 3));
  if (v50 >= v30)
  {
    v50 = a1[4];
    if (v50)
    {
      v50(a1[3]);
      LODWORD(v50) = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
    }
  }

  else
  {
    v51 = *v50 >> (~v29++ & 7);
    a1[2] = v29;
    LODWORD(v50) = 4 * (v51 & 1);
  }

  v52 = v50 | v49;
  v53 = (v31 + (v29 >> 3));
  if (v53 >= v30)
  {
    v53 = a1[4];
    if (v53)
    {
      v53(a1[3]);
      LODWORD(v53) = 0;
      v30 = a1[1];
      v29 = a1[2];
      v31 = *a1;
    }
  }

  else
  {
    v54 = *v53 >> (~v29++ & 7);
    a1[2] = v29;
    LODWORD(v53) = 2 * (v54 & 1);
  }

  v55 = v53 | v52;
  v56 = (v31 + (v29 >> 3));
  if (v56 < v30)
  {
    v57 = (*v56 >> (~v29 & 7)) & 1;
    a1[2] = v29 + 1;
    if ((v57 | v55) == 0x83)
    {
      goto LABEL_62;
    }

    return 0;
  }

  v66 = a1[4];
  if (v66)
  {
    v66(a1[3]);
    if (v55 != 131)
    {
      return 0;
    }
  }

  else if (v55 != 131)
  {
    return 0;
  }

LABEL_62:
  v59 = a1[1];
  v58 = a1[2];
  v60 = *a1;
  v61 = (*a1 + (v58 >> 3));
  if (v61 >= v59)
  {
    v67 = a1[4];
    if (v67)
    {
      v67(a1[3]);
      v63 = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
      v64 = (*a1 + (v58 >> 3));
      if (v64 < v59)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v63 = 0;
      v64 = (v60 + (v58 >> 3));
      if (v64 < v59)
      {
        goto LABEL_64;
      }
    }

LABEL_74:
    v64 = a1[4];
    if (v64)
    {
      v64(a1[3]);
      LODWORD(v64) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }

    goto LABEL_76;
  }

  v62 = *v61 >> (~v58++ & 7);
  a1[2] = v58;
  v63 = (v62 & 1) << 7;
  v64 = (v60 + (v58 >> 3));
  if (v64 >= v59)
  {
    goto LABEL_74;
  }

LABEL_64:
  v65 = *v64 >> (~v58++ & 7);
  a1[2] = v58;
  LODWORD(v64) = (v65 & 1) << 6;
LABEL_76:
  v68 = v64 | v63;
  v69 = (v60 + (v58 >> 3));
  if (v69 >= v59)
  {
    v69 = a1[4];
    if (v69)
    {
      v69(a1[3]);
      LODWORD(v69) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }
  }

  else
  {
    v70 = *v69 >> (~v58++ & 7);
    a1[2] = v58;
    LODWORD(v69) = 32 * (v70 & 1);
  }

  v71 = v69 | v68;
  v72 = (v60 + (v58 >> 3));
  if (v72 >= v59)
  {
    v72 = a1[4];
    if (v72)
    {
      v72(a1[3]);
      LODWORD(v72) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }
  }

  else
  {
    v73 = *v72 >> (~v58++ & 7);
    a1[2] = v58;
    LODWORD(v72) = 16 * (v73 & 1);
  }

  v74 = v72 | v71;
  v75 = (v60 + (v58 >> 3));
  if (v75 >= v59)
  {
    v75 = a1[4];
    if (v75)
    {
      v75(a1[3]);
      LODWORD(v75) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }
  }

  else
  {
    v76 = *v75 >> (~v58++ & 7);
    a1[2] = v58;
    LODWORD(v75) = 8 * (v76 & 1);
  }

  v77 = v75 | v74;
  v78 = (v60 + (v58 >> 3));
  if (v78 >= v59)
  {
    v78 = a1[4];
    if (v78)
    {
      v78(a1[3]);
      LODWORD(v78) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }
  }

  else
  {
    v79 = *v78 >> (~v58++ & 7);
    a1[2] = v58;
    LODWORD(v78) = 4 * (v79 & 1);
  }

  v80 = v78 | v77;
  v81 = (v60 + (v58 >> 3));
  if (v81 >= v59)
  {
    v81 = a1[4];
    if (v81)
    {
      v81(a1[3]);
      LODWORD(v81) = 0;
      v59 = a1[1];
      v58 = a1[2];
      v60 = *a1;
    }
  }

  else
  {
    v82 = *v81 >> (~v58++ & 7);
    a1[2] = v58;
    LODWORD(v81) = 2 * (v82 & 1);
  }

  v83 = v81 | v80;
  v84 = (v60 + (v58 >> 3));
  if (v84 >= v59)
  {
    v86 = a1[4];
    if (v86)
    {
      v86(a1[3]);
    }

    return v83 == 66;
  }

  else
  {
    v85 = (*v84 >> (~v58 & 7)) & 1;
    a1[2] = v58 + 1;
    return (v85 | v83) == 66;
  }
}

uint64_t vp9_read_frame_size(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = 0;
  for (i = 17; i > 1; --i)
  {
    while (1)
    {
      v9 = v5[2];
      v10 = (*v5 + (v9 >> 3));
      if (v10 >= v5[1])
      {
        break;
      }

      v8 = (*v10 >> (~v9 & 7)) & 1;
      v5[2] = v9 + 1;
      v6 |= v8 << (i-- - 2);
      if (i <= 1)
      {
        goto LABEL_7;
      }
    }

    v11 = v5[4];
    if (v11)
    {
      result = v11(v5[3]);
    }
  }

LABEL_7:
  v12 = 0;
  *a2 = v6 + 1;
  for (j = 17; j > 1; --j)
  {
    while (1)
    {
      v15 = v5[2];
      v16 = (*v5 + (v15 >> 3));
      if (v16 >= v5[1])
      {
        break;
      }

      v14 = (*v16 >> (~v15 & 7)) & 1;
      v5[2] = v15 + 1;
      v12 |= v14 << (j-- - 2);
      if (j <= 1)
      {
        goto LABEL_13;
      }
    }

    v17 = v5[4];
    if (v17)
    {
      result = v17(v5[3]);
    }
  }

LABEL_13:
  *a3 = v12 + 1;
  return result;
}

void vp9_decode_frame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v2029 = v6;
  v7 = v5;
  v8 = v4;
  v9 = v3;
  v2084 = *MEMORY[0x277D85DE8];
  v2074 = 0;
  v2075 = 0;
  v2076 = 0;
  v2077 = v3 + 656;
  v2078 = error_handler;
  v2059 = (v3 + 656);
  v10 = *(v3 + 20664);
  if (v10)
  {
    if (v5 - v4 >= 80)
    {
      v11 = 80;
    }

    else
    {
      v11 = v5 - v4;
    }

    v12 = v2079;
    (v10)(*(v3 + 20672), v4, v2079, v11);
    v13 = &v2079[v11];
    v10 = v2076;
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  v2074 = v12;
  v2075 = v13;
  v14 = *(v9 + 18904);
  *(v9 + 1928) = *(v9 + 1932);
  *(v9 + 1949) = *(v9 + 1948);
  v15 = &v12[v10 >> 3];
  if (v15 >= v13)
  {
    if (v2078)
    {
      v2078(v2077);
      v17 = 0;
      v10 = v2076;
      v18 = &v2074[v2076 >> 3];
      if (v18 >= v2075)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = 0;
      v18 = &v12[v10 >> 3];
      if (v18 >= v13)
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    v19 = (*v18 >> (~v10 & 7)) & 1;
    v2076 = v10 + 1;
    if ((v19 | v17) == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v16 = *v15 >> (~v10++ & 7);
  v2076 = v10;
  v17 = 2 * (v16 & 1);
  v18 = &v12[v10 >> 3];
  if (v18 < v13)
  {
    goto LABEL_9;
  }

LABEL_16:
  if (v2078)
  {
    v2078(v2077);
    if (v17 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v17 != 2)
  {
LABEL_10:
    vpx_internal_error(v2059, 5, "Invalid frame marker");
  }

LABEL_11:
  v20 = v2076;
  v21 = &v2074[v2076 >> 3];
  if (v21 >= v2075)
  {
    if (v2078)
    {
      v2078(v2077);
      v22 = 0;
      v20 = v2076;
      v23 = (v9 + 18804);
      v24 = &v2074[v2076 >> 3];
      if (v24 < v2075)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = 0;
      v23 = (v9 + 18804);
      v24 = &v2074[v2076 >> 3];
      if (v24 < v2075)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v22 = (*v21 >> (~v2076 & 7)) & 1;
    v20 = v2076 + 1;
    v2076 = v20;
    v23 = (v9 + 18804);
    v24 = &v2074[v20 >> 3];
    if (v24 < v2075)
    {
LABEL_13:
      v25 = *v24 >> (~v20 & 7);
      v2076 = v20 + 1;
      v26 = 2 * (v25 & 1);
      goto LABEL_23;
    }
  }

  v26 = v2078;
  if (v2078)
  {
    v2078(v2077);
    v26 = 0;
  }

LABEL_23:
  v27 = v14 + 24;
  v28 = v26 | v22;
  if (v28 == 3)
  {
    v29 = &v2074[v2076 >> 3];
    if (v29 >= v2075)
    {
      v31 = v7;
      if (v2078)
      {
        v2078(v2077);
      }

      v23[2] = 3;
      v2060 = v23 + 2;
      v32 = v2075;
      v33 = v2076;
      v34 = v2074;
      v35 = &v2074[v2076 >> 3];
      v2035 = v7;
      if (v35 >= v2075)
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    }

    v30 = *v29 >> (~v2076++ & 7);
    v23[2] = (v30 & 1) + 3;
    v2060 = v23 + 2;
    v31 = v7;
    if (v30)
    {
      vpx_internal_error(v2059, 5, "Unsupported bitstream profile");
      v32 = v2075;
      v33 = v2076;
      v34 = v2074;
      v35 = &v2074[v2076 >> 3];
      v2035 = v7;
      if (v35 >= v2075)
      {
        goto LABEL_37;
      }

LABEL_30:
      v36 = *v35 >> (~v33 & 7);
      v37 = v33 + 1;
      v2076 = v33 + 1;
      *(v9 + 1944) = v36 & 1;
      if ((v36 & 1) == 0)
      {
        goto LABEL_40;
      }

      v38 = (v34 + (v37 >> 3));
      if (v38 >= v32)
      {
        if (v2078)
        {
          v2078(v2077);
          v40 = 0;
          v32 = v2075;
          v37 = v2076;
          v34 = v2074;
          v41 = &v2074[v2076 >> 3];
          if (v41 < v2075)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v40 = 0;
          v41 = (v34 + (v37 >> 3));
          if (v41 < v32)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v39 = *v38 >> (~v37 & 7);
        v37 = v33 + 2;
        v2076 = v33 + 2;
        v40 = 4 * (v39 & 1);
        v41 = (v34 + ((v33 + 2) >> 3));
        if (v41 < v32)
        {
LABEL_33:
          v42 = *v41 >> (~v37++ & 7);
          v2076 = v37;
          v43 = 2 * (v42 & 1);
LABEL_103:
          v93 = v43 | v40;
          v94 = (v34 + (v37 >> 3));
          if (v94 >= v32)
          {
            v95 = v2078;
            if (v2078)
            {
              v2078(v2077);
              v95 = 0;
            }
          }

          else
          {
            v95 = (*v94 >> (~v37 & 7)) & 1;
            v2076 = v37 + 1;
          }

          v96 = *(v9 + 4 * (v95 | v93) + 1008);
          if ((v96 & 0x80000000) != 0 || *(v27 + 224 * v96) <= 0)
          {
            vpx_internal_error(v2059, 5, "Buffer %d does not contain a decoded frame", v96);
          }

          v97 = *(v9 + 1600);
          if ((v97 & 0x80000000) == 0)
          {
            v98 = (v27 + 224 * v97);
            if (*v98 >= 1)
            {
              --*v98;
            }
          }

          v99 = 0;
          *(v9 + 1600) = v96;
          ++*(v27 + 224 * v96);
          v23[36] = 0;
          *(v9 + 5384) = 0;
          *(v9 + 1936) = 1;
          goto LABEL_766;
        }
      }

      v43 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v43 = 0;
        v32 = v2075;
        v37 = v2076;
        v34 = v2074;
      }

      goto LABEL_103;
    }
  }

  else
  {
    v23[2] = v28;
    v2060 = v23 + 2;
    v31 = v7;
  }

  v32 = v2075;
  v33 = v2076;
  v34 = v2074;
  v35 = &v2074[v2076 >> 3];
  v2035 = v31;
  if (v35 < v2075)
  {
    goto LABEL_30;
  }

LABEL_37:
  if (v2078)
  {
    v2078(v2077);
    v32 = v2075;
    v33 = v2076;
    v34 = v2074;
  }

  *(v9 + 1944) = 0;
  v37 = v33;
LABEL_40:
  v44 = (v34 + (v37 >> 3));
  if (v44 >= v32)
  {
    v45 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v45 = 0;
      v32 = v2075;
      v37 = v2076;
      v34 = v2074;
    }
  }

  else
  {
    v45 = (*v44 >> (~v37++ & 7)) & 1;
    v2076 = v37;
  }

  *(v9 + 1932) = v45;
  v46 = (v34 + (v37 >> 3));
  if (v46 >= v32)
  {
    v47 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v47 = 0;
      v32 = v2075;
      v37 = v2076;
      v34 = v2074;
    }
  }

  else
  {
    v47 = (*v46 >> (~v37++ & 7)) & 1;
    v2076 = v37;
  }

  *(v9 + 1936) = v47;
  v48 = (v34 + (v37 >> 3));
  v2067 = v8;
  if (v48 >= v32)
  {
    v49 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v49 = 0;
    }
  }

  else
  {
    v49 = (*v48 >> (~v37 & 7)) & 1;
    v2076 = v37 + 1;
  }

  v23[19] = v49;
  if (!*(v9 + 1932))
  {
    v52 = v2075;
    v51 = v2076;
    v53 = v2074;
    v54 = &v2074[v2076 >> 3];
    if (v54 >= v2075)
    {
      if (v2078)
      {
        v2078(v2077);
        v56 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
        v57 = &v2074[v2076 >> 3];
        if (v57 < v2075)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v56 = 0;
        v57 = &v2074[v2076 >> 3];
        if (v57 < v2075)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      v55 = *v54 >> (~v2076 & 7);
      v51 = v2076 + 1;
      v2076 = v51;
      v56 = (v55 & 1) << 7;
      v57 = &v2074[v51 >> 3];
      if (v57 < v2075)
      {
LABEL_57:
        v58 = *v57 >> (~v51++ & 7);
        v2076 = v51;
        v59 = (v58 & 1) << 6;
        goto LABEL_70;
      }
    }

    v59 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v59 = 0;
      v52 = v2075;
      v51 = v2076;
      v53 = v2074;
    }

LABEL_70:
    v61 = v59 | v56;
    v62 = (v53 + (v51 >> 3));
    if (v62 >= v52)
    {
      v64 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v64 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
      }
    }

    else
    {
      v63 = *v62 >> (~v51++ & 7);
      v2076 = v51;
      v64 = 32 * (v63 & 1);
    }

    v65 = v64 | v61;
    v66 = (v53 + (v51 >> 3));
    if (v66 >= v52)
    {
      v68 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v68 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
      }
    }

    else
    {
      v67 = *v66 >> (~v51++ & 7);
      v2076 = v51;
      v68 = 16 * (v67 & 1);
    }

    v69 = v68 | v65;
    v70 = (v53 + (v51 >> 3));
    if (v70 >= v52)
    {
      v72 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v72 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
      }
    }

    else
    {
      v71 = *v70 >> (~v51++ & 7);
      v2076 = v51;
      v72 = 8 * (v71 & 1);
    }

    v73 = v72 | v69;
    v74 = (v53 + (v51 >> 3));
    if (v74 >= v52)
    {
      v76 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v76 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
      }
    }

    else
    {
      v75 = *v74 >> (~v51++ & 7);
      v2076 = v51;
      v76 = 4 * (v75 & 1);
    }

    v77 = v76 | v73;
    v78 = (v53 + (v51 >> 3));
    if (v78 >= v52)
    {
      v80 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v80 = 0;
        v52 = v2075;
        v51 = v2076;
        v53 = v2074;
      }
    }

    else
    {
      v79 = *v78 >> (~v51++ & 7);
      v2076 = v51;
      v80 = 2 * (v79 & 1);
    }

    v81 = v80 | v77;
    v82 = (v53 + (v51 >> 3));
    if (v82 >= v52)
    {
      if (v2078)
      {
        v2078(v2077);
      }

      if (v81 != 73)
      {
        goto LABEL_429;
      }
    }

    else
    {
      v83 = (*v82 >> (~v51 & 7)) & 1;
      v2076 = v51 + 1;
      if ((v83 | v81) != 0x49)
      {
LABEL_429:
        vpx_internal_error(v2059, 5, "Invalid frame sync code");
LABEL_430:
        read_bitdepth_colorspace_sampling(v2059, &v2074);
        v23[36] = 255;
        *(v9 + 1072) = -1;
        *(v9 + 1080) = 0;
        *(v9 + 1248) = -1;
        *(v9 + 1256) = 0;
        *(v9 + 1424) = -1;
        *(v9 + 1432) = 0;
        setup_frame_size(v2059, &v2074);
        if (!v23[471])
        {
LABEL_433:
          v117 = 1;
          goto LABEL_434;
        }

        *&v380 = -1;
        *(&v380 + 1) = -1;
        *(v9 + 1008) = v380;
        *(v9 + 1024) = v380;
        if (!*(v9 + 1932) && *v23)
        {
          v653 = *(v9 + 18904);
          v654 = *(v9 + 1600);
          if (!v654)
          {
            goto LABEL_796;
          }

          *(v653 + 6) = 0;
          if (!*(v653 + 48))
          {
            (v653[2])(*v653, v653 + 8);
            *(v653 + 48) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 1)
          {
LABEL_796:
            *(v653 + 62) = 0;
            if (!*(v653 + 272))
            {
              (v653[2])(*v653, v653 + 36);
              *(v653 + 272) = 1;
              v654 = *(v9 + 1600);
            }

            if (v654 == 2)
            {
              goto LABEL_802;
            }
          }

          *(v653 + 118) = 0;
          if (!*(v653 + 496))
          {
            (v653[2])(*v653, v653 + 64);
            *(v653 + 496) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 3)
          {
LABEL_802:
            *(v653 + 174) = 0;
            if (!*(v653 + 720))
            {
              (v653[2])(*v653, v653 + 92);
              *(v653 + 720) = 1;
              v654 = *(v9 + 1600);
            }

            if (v654 == 4)
            {
              goto LABEL_808;
            }
          }

          *(v653 + 230) = 0;
          if (!*(v653 + 944))
          {
            (v653[2])(*v653, v653 + 120);
            *(v653 + 944) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 5)
          {
LABEL_808:
            *(v653 + 286) = 0;
            if (!*(v653 + 1168))
            {
              (v653[2])(*v653, v653 + 148);
              *(v653 + 1168) = 1;
              v654 = *(v9 + 1600);
            }

            if (v654 == 6)
            {
              goto LABEL_814;
            }
          }

          *(v653 + 342) = 0;
          if (!*(v653 + 1392))
          {
            (v653[2])(*v653, v653 + 176);
            *(v653 + 1392) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 7)
          {
LABEL_814:
            *(v653 + 398) = 0;
            if (!*(v653 + 1616))
            {
              (v653[2])(*v653, v653 + 204);
              *(v653 + 1616) = 1;
              v654 = *(v9 + 1600);
            }

            if (v654 == 8)
            {
              goto LABEL_820;
            }
          }

          *(v653 + 454) = 0;
          if (!*(v653 + 1840))
          {
            (v653[2])(*v653, v653 + 232);
            *(v653 + 1840) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 9)
          {
LABEL_820:
            *(v653 + 510) = 0;
            if (!*(v653 + 2064))
            {
              (v653[2])(*v653, v653 + 260);
              *(v653 + 2064) = 1;
              v654 = *(v9 + 1600);
            }

            if (v654 == 10)
            {
              goto LABEL_824;
            }
          }

          *(v653 + 566) = 0;
          if (!*(v653 + 2288))
          {
            (v653[2])(*v653, v653 + 288);
            *(v653 + 2288) = 1;
            v654 = *(v9 + 1600);
          }

          if (v654 != 11)
          {
LABEL_824:
            *(v653 + 622) = 0;
            if (!*(v653 + 2512))
            {
              (v653[2])(*v653, v653 + 316);
              *(v653 + 2512) = 1;
            }
          }
        }

LABEL_432:
        v23[471] = 0;
        goto LABEL_433;
      }
    }

    v85 = v2075;
    v84 = v2076;
    v86 = v2074;
    v87 = &v2074[v2076 >> 3];
    if (v87 >= v2075)
    {
      if (v2078)
      {
        v2078(v2077);
        v89 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
        v90 = &v2074[v2076 >> 3];
        if (v90 < v2075)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v89 = 0;
        v90 = &v2074[v2076 >> 3];
        if (v90 < v2075)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      v88 = *v87 >> (~v2076 & 7);
      v84 = v2076 + 1;
      v2076 = v84;
      v89 = (v88 & 1) << 7;
      v90 = &v2074[v84 >> 3];
      if (v90 < v2075)
      {
LABEL_98:
        v91 = *v90 >> (~v84++ & 7);
        v2076 = v84;
        v92 = (v91 & 1) << 6;
        goto LABEL_205;
      }
    }

    v92 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v92 = 0;
      v85 = v2075;
      v84 = v2076;
      v86 = v2074;
    }

LABEL_205:
    v192 = v92 | v89;
    v193 = (v86 + (v84 >> 3));
    if (v193 >= v85)
    {
      v195 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v195 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
      }
    }

    else
    {
      v194 = *v193 >> (~v84++ & 7);
      v2076 = v84;
      v195 = 32 * (v194 & 1);
    }

    v196 = v195 | v192;
    v197 = (v86 + (v84 >> 3));
    if (v197 >= v85)
    {
      v199 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v199 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
      }
    }

    else
    {
      v198 = *v197 >> (~v84++ & 7);
      v2076 = v84;
      v199 = 16 * (v198 & 1);
    }

    v200 = v199 | v196;
    v201 = (v86 + (v84 >> 3));
    if (v201 >= v85)
    {
      v203 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v203 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
      }
    }

    else
    {
      v202 = *v201 >> (~v84++ & 7);
      v2076 = v84;
      v203 = 8 * (v202 & 1);
    }

    v204 = v203 | v200;
    v205 = (v86 + (v84 >> 3));
    if (v205 >= v85)
    {
      v207 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v207 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
      }
    }

    else
    {
      v206 = *v205 >> (~v84++ & 7);
      v2076 = v84;
      v207 = 4 * (v206 & 1);
    }

    v208 = v207 | v204;
    v209 = (v86 + (v84 >> 3));
    if (v209 >= v85)
    {
      v211 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v211 = 0;
        v85 = v2075;
        v84 = v2076;
        v86 = v2074;
      }
    }

    else
    {
      v210 = *v209 >> (~v84++ & 7);
      v2076 = v84;
      v211 = 2 * (v210 & 1);
    }

    v212 = v211 | v208;
    v213 = (v86 + (v84 >> 3));
    if (v213 >= v85)
    {
      if (v2078)
      {
        v2078(v2077);
      }

      if (v212 != 131)
      {
        goto LABEL_429;
      }
    }

    else
    {
      v214 = (*v213 >> (~v84 & 7)) & 1;
      v2076 = v84 + 1;
      if ((v214 | v212) != 0x83)
      {
        goto LABEL_429;
      }
    }

    v216 = v2075;
    v215 = v2076;
    v217 = v2074;
    v218 = &v2074[v2076 >> 3];
    if (v218 >= v2075)
    {
      if (v2078)
      {
        v2078(v2077);
        v220 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
        v221 = &v2074[v2076 >> 3];
        if (v221 < v2075)
        {
          goto LABEL_233;
        }
      }

      else
      {
        v220 = 0;
        v221 = &v2074[v2076 >> 3];
        if (v221 < v2075)
        {
          goto LABEL_233;
        }
      }
    }

    else
    {
      v219 = *v218 >> (~v2076 & 7);
      v215 = v2076 + 1;
      v2076 = v215;
      v220 = (v219 & 1) << 7;
      v221 = &v2074[v215 >> 3];
      if (v221 < v2075)
      {
LABEL_233:
        v222 = *v221 >> (~v215++ & 7);
        v2076 = v215;
        v223 = (v222 & 1) << 6;
        goto LABEL_403;
      }
    }

    v223 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v223 = 0;
      v216 = v2075;
      v215 = v2076;
      v217 = v2074;
    }

LABEL_403:
    v357 = v223 | v220;
    v358 = (v217 + (v215 >> 3));
    if (v358 >= v216)
    {
      v360 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v360 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
      }
    }

    else
    {
      v359 = *v358 >> (~v215++ & 7);
      v2076 = v215;
      v360 = 32 * (v359 & 1);
    }

    v361 = v360 | v357;
    v362 = (v217 + (v215 >> 3));
    if (v362 >= v216)
    {
      v364 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v364 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
      }
    }

    else
    {
      v363 = *v362 >> (~v215++ & 7);
      v2076 = v215;
      v364 = 16 * (v363 & 1);
    }

    v365 = v364 | v361;
    v366 = (v217 + (v215 >> 3));
    if (v366 >= v216)
    {
      v368 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v368 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
      }
    }

    else
    {
      v367 = *v366 >> (~v215++ & 7);
      v2076 = v215;
      v368 = 8 * (v367 & 1);
    }

    v369 = v368 | v365;
    v370 = (v217 + (v215 >> 3));
    if (v370 >= v216)
    {
      v372 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v372 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
      }
    }

    else
    {
      v371 = *v370 >> (~v215++ & 7);
      v2076 = v215;
      v372 = 4 * (v371 & 1);
    }

    v373 = v372 | v369;
    v374 = (v217 + (v215 >> 3));
    if (v374 >= v216)
    {
      v376 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v376 = 0;
        v216 = v2075;
        v215 = v2076;
        v217 = v2074;
      }
    }

    else
    {
      v375 = *v374 >> (~v215++ & 7);
      v2076 = v215;
      v376 = 2 * (v375 & 1);
    }

    v377 = v376 | v373;
    v378 = (v217 + (v215 >> 3));
    if (v378 >= v216)
    {
      if (v2078)
      {
        v2078(v2077);
      }

      v379 = 0;
    }

    else
    {
      v379 = (*v378 >> (~v215 & 7)) & 1;
      v2076 = v215 + 1;
    }

    if ((v379 | v377) == 0x42)
    {
      goto LABEL_430;
    }

    goto LABEL_429;
  }

  if (*(v9 + 1936))
  {
    v50 = 0;
  }

  else
  {
    v60 = &v2074[v2076 >> 3];
    if (v60 >= v2075)
    {
      v50 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v50 = 0;
        v49 = v23[19];
      }
    }

    else
    {
      v50 = (*v60 >> (~v2076++ & 7)) & 1;
    }
  }

  *(v9 + 1948) = v50;
  if (!v49)
  {
    v109 = v2076;
    v110 = &v2074[v2076 >> 3];
    if (v110 < v2075)
    {
      v111 = *v110 >> (~v2076 & 7);
      v109 = v2076 + 1;
      v2076 = v109;
      v112 = 2 * (v111 & 1);
      v113 = &v2074[v109 >> 3];
      if (v113 < v2075)
      {
        goto LABEL_123;
      }

LABEL_161:
      if (v2078)
      {
        v2078(v2077);
      }

      v150 = *(v9 + 1948);
      *(v9 + 1956) = v112;
      if (!v150)
      {
        goto LABEL_124;
      }

LABEL_118:
      v101 = v2075;
      v100 = v2076;
      v102 = v2074;
      v103 = &v2074[v2076 >> 3];
      if (v103 >= v2075)
      {
        if (v2078)
        {
          v2078(v2077);
          v105 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
          v106 = &v2074[v2076 >> 3];
          if (v106 < v2075)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v105 = 0;
          v106 = &v2074[v2076 >> 3];
          if (v106 < v2075)
          {
            goto LABEL_120;
          }
        }
      }

      else
      {
        v104 = *v103 >> (~v2076 & 7);
        v100 = v2076 + 1;
        v2076 = v100;
        v105 = (v104 & 1) << 7;
        v106 = &v2074[v100 >> 3];
        if (v106 < v2075)
        {
LABEL_120:
          v107 = *v106 >> (~v100++ & 7);
          v2076 = v100;
          v108 = (v107 & 1) << 6;
          goto LABEL_130;
        }
      }

      v108 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v108 = 0;
        v101 = v2075;
        v100 = v2076;
        v102 = v2074;
      }

LABEL_130:
      v118 = v108 | v105;
      v119 = (v102 + (v100 >> 3));
      if (v119 >= v101)
      {
        v121 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v121 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
        }
      }

      else
      {
        v120 = *v119 >> (~v100++ & 7);
        v2076 = v100;
        v121 = 32 * (v120 & 1);
      }

      v122 = v121 | v118;
      v123 = (v102 + (v100 >> 3));
      if (v123 >= v101)
      {
        v125 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v125 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
        }
      }

      else
      {
        v124 = *v123 >> (~v100++ & 7);
        v2076 = v100;
        v125 = 16 * (v124 & 1);
      }

      v126 = v125 | v122;
      v127 = (v102 + (v100 >> 3));
      if (v127 >= v101)
      {
        v129 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v129 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
        }
      }

      else
      {
        v128 = *v127 >> (~v100++ & 7);
        v2076 = v100;
        v129 = 8 * (v128 & 1);
      }

      v130 = v129 | v126;
      v131 = (v102 + (v100 >> 3));
      if (v131 >= v101)
      {
        v133 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v133 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
        }
      }

      else
      {
        v132 = *v131 >> (~v100++ & 7);
        v2076 = v100;
        v133 = 4 * (v132 & 1);
      }

      v134 = v133 | v130;
      v135 = (v102 + (v100 >> 3));
      if (v135 >= v101)
      {
        v137 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v137 = 0;
          v101 = v2075;
          v100 = v2076;
          v102 = v2074;
        }
      }

      else
      {
        v136 = *v135 >> (~v100++ & 7);
        v2076 = v100;
        v137 = 2 * (v136 & 1);
      }

      v138 = v137 | v134;
      v139 = (v102 + (v100 >> 3));
      if (v139 >= v101)
      {
        if (v2078)
        {
          v2078(v2077);
        }

        if (v138 != 73)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v140 = (*v139 >> (~v100 & 7)) & 1;
        v2076 = v100 + 1;
        if ((v140 | v138) != 0x49)
        {
          goto LABEL_353;
        }
      }

      v142 = v2075;
      v141 = v2076;
      v143 = v2074;
      v144 = &v2074[v2076 >> 3];
      if (v144 >= v2075)
      {
        if (v2078)
        {
          v2078(v2077);
          v146 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
          v147 = &v2074[v2076 >> 3];
          if (v147 < v2075)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v146 = 0;
          v147 = &v2074[v2076 >> 3];
          if (v147 < v2075)
          {
            goto LABEL_158;
          }
        }
      }

      else
      {
        v145 = *v144 >> (~v2076 & 7);
        v141 = v2076 + 1;
        v2076 = v141;
        v146 = (v145 & 1) << 7;
        v147 = &v2074[v141 >> 3];
        if (v147 < v2075)
        {
LABEL_158:
          v148 = *v147 >> (~v141++ & 7);
          v2076 = v141;
          v149 = (v148 & 1) << 6;
          goto LABEL_172;
        }
      }

      v149 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v149 = 0;
        v142 = v2075;
        v141 = v2076;
        v143 = v2074;
      }

LABEL_172:
      v160 = v149 | v146;
      v161 = (v143 + (v141 >> 3));
      if (v161 >= v142)
      {
        v163 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v163 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
        }
      }

      else
      {
        v162 = *v161 >> (~v141++ & 7);
        v2076 = v141;
        v163 = 32 * (v162 & 1);
      }

      v164 = v163 | v160;
      v165 = (v143 + (v141 >> 3));
      if (v165 >= v142)
      {
        v167 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v167 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
        }
      }

      else
      {
        v166 = *v165 >> (~v141++ & 7);
        v2076 = v141;
        v167 = 16 * (v166 & 1);
      }

      v168 = v167 | v164;
      v169 = (v143 + (v141 >> 3));
      if (v169 >= v142)
      {
        v171 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v171 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
        }
      }

      else
      {
        v170 = *v169 >> (~v141++ & 7);
        v2076 = v141;
        v171 = 8 * (v170 & 1);
      }

      v172 = v171 | v168;
      v173 = (v143 + (v141 >> 3));
      if (v173 >= v142)
      {
        v175 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v175 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
        }
      }

      else
      {
        v174 = *v173 >> (~v141++ & 7);
        v2076 = v141;
        v175 = 4 * (v174 & 1);
      }

      v176 = v175 | v172;
      v177 = (v143 + (v141 >> 3));
      if (v177 >= v142)
      {
        v179 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v179 = 0;
          v142 = v2075;
          v141 = v2076;
          v143 = v2074;
        }
      }

      else
      {
        v178 = *v177 >> (~v141++ & 7);
        v2076 = v141;
        v179 = 2 * (v178 & 1);
      }

      v180 = v179 | v176;
      v181 = (v143 + (v141 >> 3));
      if (v181 >= v142)
      {
        if (v2078)
        {
          v2078(v2077);
        }

        if (v180 != 131)
        {
          goto LABEL_353;
        }
      }

      else
      {
        v182 = (*v181 >> (~v141 & 7)) & 1;
        v2076 = v141 + 1;
        if ((v182 | v180) != 0x83)
        {
          goto LABEL_353;
        }
      }

      v184 = v2075;
      v183 = v2076;
      v185 = v2074;
      v186 = &v2074[v2076 >> 3];
      if (v186 >= v2075)
      {
        if (v2078)
        {
          v2078(v2077);
          v188 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
          v189 = &v2074[v2076 >> 3];
          if (v189 < v2075)
          {
            goto LABEL_200;
          }
        }

        else
        {
          v188 = 0;
          v189 = &v2074[v2076 >> 3];
          if (v189 < v2075)
          {
            goto LABEL_200;
          }
        }
      }

      else
      {
        v187 = *v186 >> (~v2076 & 7);
        v183 = v2076 + 1;
        v2076 = v183;
        v188 = (v187 & 1) << 7;
        v189 = &v2074[v183 >> 3];
        if (v189 < v2075)
        {
LABEL_200:
          v190 = *v189 >> (~v183++ & 7);
          v2076 = v183;
          v191 = (v190 & 1) << 6;
          goto LABEL_327;
        }
      }

      v191 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v191 = 0;
        v184 = v2075;
        v183 = v2076;
        v185 = v2074;
      }

LABEL_327:
      v294 = v191 | v188;
      v295 = (v185 + (v183 >> 3));
      if (v295 >= v184)
      {
        v297 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v297 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
        }
      }

      else
      {
        v296 = *v295 >> (~v183++ & 7);
        v2076 = v183;
        v297 = 32 * (v296 & 1);
      }

      v298 = v297 | v294;
      v299 = (v185 + (v183 >> 3));
      if (v299 >= v184)
      {
        v301 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v301 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
        }
      }

      else
      {
        v300 = *v299 >> (~v183++ & 7);
        v2076 = v183;
        v301 = 16 * (v300 & 1);
      }

      v302 = v301 | v298;
      v303 = (v185 + (v183 >> 3));
      if (v303 >= v184)
      {
        v305 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v305 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
        }
      }

      else
      {
        v304 = *v303 >> (~v183++ & 7);
        v2076 = v183;
        v305 = 8 * (v304 & 1);
      }

      v306 = v305 | v302;
      v307 = (v185 + (v183 >> 3));
      if (v307 >= v184)
      {
        v309 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v309 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
        }
      }

      else
      {
        v308 = *v307 >> (~v183++ & 7);
        v2076 = v183;
        v309 = 4 * (v308 & 1);
      }

      v310 = v309 | v306;
      v311 = (v185 + (v183 >> 3));
      if (v311 >= v184)
      {
        v313 = v2078;
        if (v2078)
        {
          v2078(v2077);
          v313 = 0;
          v184 = v2075;
          v183 = v2076;
          v185 = v2074;
        }
      }

      else
      {
        v312 = *v311 >> (~v183++ & 7);
        v2076 = v183;
        v313 = 2 * (v312 & 1);
      }

      v314 = v313 | v310;
      v315 = (v185 + (v183 >> 3));
      if (v315 >= v184)
      {
        if (v2078)
        {
          v2078(v2077);
        }

        v316 = 0;
      }

      else
      {
        v316 = (*v315 >> (~v183 & 7)) & 1;
        v2076 = v183 + 1;
      }

      if ((v316 | v314) == 0x42)
      {
LABEL_354:
        if (*v2060)
        {
          read_bitdepth_colorspace_sampling(v2059, &v2074);
          v318 = v2075;
          v317 = v2076;
          v319 = v2074;
          v320 = &v2074[v2076 >> 3];
          if (v320 < v2075)
          {
            goto LABEL_356;
          }
        }

        else
        {
          *(v9 + 940) = 1;
          *(v9 + 972) = 1;
          v23[3] = 8;
          *(v9 + 976) = 1;
          v318 = v2075;
          v317 = v2076;
          v319 = v2074;
          v320 = &v2074[v2076 >> 3];
          if (v320 < v2075)
          {
LABEL_356:
            v321 = *v320 >> (~v317++ & 7);
            v2076 = v317;
            v322 = (v321 & 1) << 7;
            v323 = (v319 + (v317 >> 3));
            if (v323 < v318)
            {
LABEL_357:
              v324 = *v323 >> (~v317++ & 7);
              v2076 = v317;
              v325 = (v324 & 1) << 6;
LABEL_363:
              v326 = v325 | v322;
              v327 = (v319 + (v317 >> 3));
              if (v327 >= v318)
              {
                v329 = v2078;
                if (v2078)
                {
                  v2078(v2077);
                  v329 = 0;
                  v318 = v2075;
                  v317 = v2076;
                  v319 = v2074;
                }
              }

              else
              {
                v328 = *v327 >> (~v317++ & 7);
                v2076 = v317;
                v329 = 32 * (v328 & 1);
              }

              v330 = v329 | v326;
              v331 = (v319 + (v317 >> 3));
              if (v331 >= v318)
              {
                v333 = v2078;
                if (v2078)
                {
                  v2078(v2077);
                  v333 = 0;
                  v318 = v2075;
                  v317 = v2076;
                  v319 = v2074;
                }
              }

              else
              {
                v332 = *v331 >> (~v317++ & 7);
                v2076 = v317;
                v333 = 16 * (v332 & 1);
              }

              v334 = v333 | v330;
              v335 = (v319 + (v317 >> 3));
              if (v335 >= v318)
              {
                v337 = v2078;
                if (v2078)
                {
                  v2078(v2077);
                  v337 = 0;
                  v318 = v2075;
                  v317 = v2076;
                  v319 = v2074;
                }
              }

              else
              {
                v336 = *v335 >> (~v317++ & 7);
                v2076 = v317;
                v337 = 8 * (v336 & 1);
              }

              v338 = v337 | v334;
              v339 = (v319 + (v317 >> 3));
              if (v339 >= v318)
              {
                v341 = v2078;
                if (v2078)
                {
                  v2078(v2077);
                  v341 = 0;
                  v318 = v2075;
                  v317 = v2076;
                  v319 = v2074;
                }
              }

              else
              {
                v340 = *v339 >> (~v317++ & 7);
                v2076 = v317;
                v341 = 4 * (v340 & 1);
              }

              v342 = v341 | v338;
              v343 = (v319 + (v317 >> 3));
              if (v343 >= v318)
              {
                v345 = v2078;
                if (v2078)
                {
                  v2078(v2077);
                  v345 = 0;
                  v318 = v2075;
                  v317 = v2076;
                  v319 = v2074;
                }
              }

              else
              {
                v344 = *v343 >> (~v317++ & 7);
                v2076 = v317;
                v345 = 2 * (v344 & 1);
              }

              v346 = v345 | v342;
              v347 = (v319 + (v317 >> 3));
              if (v347 >= v318)
              {
                if (v2078)
                {
                  v2078(v2077);
                }

                v348 = 0;
              }

              else
              {
                v348 = (*v347 >> (~v317 & 7)) & 1;
                v2076 = v317 + 1;
              }

              v23[36] = v348 | v346;
              setup_frame_size(v2059, &v2074);
              if (!v23[471])
              {
                goto LABEL_433;
              }

              *&v349 = -1;
              *(&v349 + 1) = -1;
              *(v9 + 1008) = v349;
              *(v9 + 1024) = v349;
              goto LABEL_432;
            }

LABEL_361:
            v325 = v2078;
            if (v2078)
            {
              v2078(v2077);
              v325 = 0;
              v318 = v2075;
              v317 = v2076;
              v319 = v2074;
            }

            goto LABEL_363;
          }
        }

        if (v2078)
        {
          v2078(v2077);
          v322 = 0;
          v318 = v2075;
          v317 = v2076;
          v319 = v2074;
          v323 = &v2074[v2076 >> 3];
          if (v323 < v2075)
          {
            goto LABEL_357;
          }
        }

        else
        {
          v322 = 0;
          v323 = (v319 + (v317 >> 3));
          if (v323 < v318)
          {
            goto LABEL_357;
          }
        }

        goto LABEL_361;
      }

LABEL_353:
      vpx_internal_error(v2059, 5, "Invalid frame sync code");
      goto LABEL_354;
    }

    if (v2078)
    {
      v2078(v2077);
      v112 = 0;
      v109 = v2076;
      v113 = &v2074[v2076 >> 3];
      if (v113 >= v2075)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v112 = 0;
      v113 = &v2074[v2076 >> 3];
      if (v113 >= v2075)
      {
        goto LABEL_161;
      }
    }

LABEL_123:
    v114 = (*v113 >> (~v109 & 7)) & 1;
    v2076 = v109 + 1;
    v115 = v114 | v112;
    v116 = *(v9 + 1948);
    *(v9 + 1956) = v115;
    if (!v116)
    {
      goto LABEL_124;
    }

    goto LABEL_118;
  }

  *(v9 + 1956) = 0;
  if (v50)
  {
    goto LABEL_118;
  }

LABEL_124:
  if (v23[471] == 1)
  {
    v117 = 0;
    goto LABEL_434;
  }

  v152 = v2075;
  v151 = v2076;
  v153 = v2074;
  v154 = &v2074[v2076 >> 3];
  if (v154 >= v2075)
  {
    if (v2078)
    {
      v2078(v2077);
      v156 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
      v157 = &v2074[v2076 >> 3];
      if (v157 < v2075)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v156 = 0;
      v157 = &v2074[v2076 >> 3];
      if (v157 < v2075)
      {
        goto LABEL_167;
      }
    }
  }

  else
  {
    v155 = *v154 >> (~v2076 & 7);
    v151 = v2076 + 1;
    v2076 = v151;
    v156 = (v155 & 1) << 7;
    v157 = &v2074[v151 >> 3];
    if (v157 < v2075)
    {
LABEL_167:
      v158 = *v157 >> (~v151++ & 7);
      v2076 = v151;
      v159 = (v158 & 1) << 6;
      goto LABEL_244;
    }
  }

  v159 = v2078;
  if (v2078)
  {
    v2078(v2077);
    v159 = 0;
    v152 = v2075;
    v151 = v2076;
    v153 = v2074;
  }

LABEL_244:
  v224 = v159 | v156;
  v225 = (v153 + (v151 >> 3));
  if (v225 >= v152)
  {
    v227 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v227 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v226 = *v225 >> (~v151++ & 7);
    v2076 = v151;
    v227 = 32 * (v226 & 1);
  }

  v228 = v227 | v224;
  v229 = (v153 + (v151 >> 3));
  if (v229 >= v152)
  {
    v231 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v231 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v230 = *v229 >> (~v151++ & 7);
    v2076 = v151;
    v231 = 16 * (v230 & 1);
  }

  v232 = v231 | v228;
  v233 = (v153 + (v151 >> 3));
  if (v233 >= v152)
  {
    v235 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v235 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v234 = *v233 >> (~v151++ & 7);
    v2076 = v151;
    v235 = 8 * (v234 & 1);
  }

  v236 = v235 | v232;
  v237 = (v153 + (v151 >> 3));
  if (v237 >= v152)
  {
    v239 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v239 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v238 = *v237 >> (~v151++ & 7);
    v2076 = v151;
    v239 = 4 * (v238 & 1);
  }

  v240 = v239 | v236;
  v241 = (v153 + (v151 >> 3));
  if (v241 >= v152)
  {
    v243 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v243 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v242 = *v241 >> (~v151++ & 7);
    v2076 = v151;
    v243 = 2 * (v242 & 1);
  }

  v244 = v243 | v240;
  v245 = (v153 + (v151 >> 3));
  if (v245 >= v152)
  {
    v246 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v246 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v246 = (*v245 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  v23[36] = v246 | v244;
  v247 = (v153 + (v151 >> 3));
  if (v247 >= v152)
  {
    if (v2078)
    {
      v2078(v2077);
      v249 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
      v250 = &v2074[v2076 >> 3];
      if (v250 < v2075)
      {
        goto LABEL_270;
      }
    }

    else
    {
      v249 = 0;
      v250 = (v153 + (v151 >> 3));
      if (v250 < v152)
      {
        goto LABEL_270;
      }
    }
  }

  else
  {
    v248 = *v247 >> (~v151++ & 7);
    v2076 = v151;
    v249 = 4 * (v248 & 1);
    v250 = (v153 + (v151 >> 3));
    if (v250 < v152)
    {
LABEL_270:
      v251 = *v250 >> (~v151++ & 7);
      v2076 = v151;
      v252 = 2 * (v251 & 1);
      goto LABEL_275;
    }
  }

  v252 = v2078;
  if (v2078)
  {
    v2078(v2077);
    v252 = 0;
    v152 = v2075;
    v151 = v2076;
    v153 = v2074;
  }

LABEL_275:
  v253 = v9 + 1008;
  v254 = v252 | v249;
  v255 = (v153 + (v151 >> 3));
  if (v255 >= v152)
  {
    v256 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v256 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v256 = (*v255 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  v257 = *(v253 + 4 * (v256 | v254));
  *(v9 + 1072) = v257;
  *(v9 + 1080) = v27 + 224 * v257 + 64;
  v258 = (v153 + (v151 >> 3));
  if (v258 >= v152)
  {
    v259 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v259 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v259 = (*v258 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  *(v9 + 5368) = v259;
  v260 = (v153 + (v151 >> 3));
  if (v260 >= v152)
  {
    if (v2078)
    {
      v2078(v2077);
      v262 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
      v263 = &v2074[v2076 >> 3];
      if (v263 < v2075)
      {
        goto LABEL_285;
      }
    }

    else
    {
      v262 = 0;
      v263 = (v153 + (v151 >> 3));
      if (v263 < v152)
      {
        goto LABEL_285;
      }
    }
  }

  else
  {
    v261 = *v260 >> (~v151++ & 7);
    v2076 = v151;
    v262 = 4 * (v261 & 1);
    v263 = (v153 + (v151 >> 3));
    if (v263 < v152)
    {
LABEL_285:
      v264 = *v263 >> (~v151++ & 7);
      v2076 = v151;
      v265 = 2 * (v264 & 1);
      goto LABEL_290;
    }
  }

  v265 = v2078;
  if (v2078)
  {
    v2078(v2077);
    v265 = 0;
    v152 = v2075;
    v151 = v2076;
    v153 = v2074;
  }

LABEL_290:
  v266 = v265 | v262;
  v267 = (v153 + (v151 >> 3));
  if (v267 >= v152)
  {
    v268 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v268 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v268 = (*v267 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  v269 = *(v253 + 4 * (v268 | v266));
  *(v9 + 1248) = v269;
  *(v9 + 1256) = v27 + 224 * v269 + 64;
  v270 = (v153 + (v151 >> 3));
  if (v270 >= v152)
  {
    v271 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v271 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v271 = (*v270 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  *(v9 + 5372) = v271;
  v272 = (v153 + (v151 >> 3));
  if (v272 >= v152)
  {
    if (v2078)
    {
      v2078(v2077);
      v274 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
      v275 = &v2074[v2076 >> 3];
      if (v275 < v2075)
      {
        goto LABEL_300;
      }
    }

    else
    {
      v274 = 0;
      v275 = (v153 + (v151 >> 3));
      if (v275 < v152)
      {
        goto LABEL_300;
      }
    }
  }

  else
  {
    v273 = *v272 >> (~v151++ & 7);
    v2076 = v151;
    v274 = 4 * (v273 & 1);
    v275 = (v153 + (v151 >> 3));
    if (v275 < v152)
    {
LABEL_300:
      v276 = *v275 >> (~v151++ & 7);
      v2076 = v151;
      v277 = 2 * (v276 & 1);
      goto LABEL_305;
    }
  }

  v277 = v2078;
  if (v2078)
  {
    v2078(v2077);
    v277 = 0;
    v152 = v2075;
    v151 = v2076;
    v153 = v2074;
  }

LABEL_305:
  v278 = v277 | v274;
  v279 = (v153 + (v151 >> 3));
  if (v279 >= v152)
  {
    v280 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v280 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v280 = (*v279 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  v281 = *(v253 + 4 * (v280 | v278));
  *(v9 + 1424) = v281;
  *(v9 + 1432) = v27 + 224 * v281 + 64;
  v282 = (v153 + (v151 >> 3));
  if (v282 >= v152)
  {
    v283 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v283 = 0;
      v152 = v2075;
      v151 = v2076;
      v153 = v2074;
    }
  }

  else
  {
    v283 = (*v282 >> (~v151++ & 7)) & 1;
    v2076 = v151;
  }

  v284 = (v9 + 1072);
  v285 = (v9 + 1248);
  v286 = (v9 + 1424);
  *(v9 + 5376) = v283;
  v287 = *(v9 + 18904);
  v288 = (v153 + (v151 >> 3));
  if (v288 >= v152)
  {
    if (v2078)
    {
      v2078(v2077);
    }
  }

  else
  {
    v289 = *v288;
    v2076 = v151 + 1;
    if ((v289 >> (~v151 & 7)))
    {
      v290 = v9 + 1072;
      if (*v284 != -1)
      {
        goto LABEL_397;
      }

      vpx_internal_error(v2059, 7, "Failed to decode frame size");
    }
  }

  v291 = v2076;
  v292 = &v2074[v2076 >> 3];
  if (v292 >= v2075)
  {
    if (v2078)
    {
      v2078(v2077);
    }
  }

  else
  {
    v293 = *v292;
    ++v2076;
    if ((v293 >> (~v291 & 7)))
    {
      v290 = v9 + 1248;
      if (*v285 != -1)
      {
        goto LABEL_397;
      }

      vpx_internal_error(v2059, 7, "Failed to decode frame size");
    }
  }

  v350 = v23;
  v351 = v2076;
  v352 = &v2074[v2076 >> 3];
  if (v352 >= v2075)
  {
    if (v2078)
    {
      v2078(v2077);
    }
  }

  else
  {
    v353 = *v352;
    ++v2076;
    if ((v353 >> (~v351 & 7)))
    {
      v290 = v9 + 1424;
      if (*v286 != -1)
      {
LABEL_397:
        v350 = v23;
        v354 = *(v290 + 8);
        v355 = *(v354 + 8);
        v356 = *(v354 + 12);
        if (v355 < 1)
        {
          goto LABEL_1321;
        }

LABEL_1320:
        if (v356 > 0)
        {
          goto LABEL_1322;
        }

        goto LABEL_1321;
      }

      vpx_internal_error(v2059, 7, "Failed to decode frame size");
    }
  }

  v355 = vpx_rb_read_literal(&v2074, 16) + 1;
  v356 = vpx_rb_read_literal(&v2074, 16) + 1;
  if (v355 >= 1)
  {
    goto LABEL_1320;
  }

LABEL_1321:
  vpx_internal_error(v2059, 7, "Invalid frame size");
LABEL_1322:
  v1261 = 2 * v355;
  v1262 = 2 * v356;
  v1263 = *v284;
  if (*v284 == -1)
  {
    v1272 = 0;
    if (*v285 != -1)
    {
      goto LABEL_1336;
    }

LABEL_1409:
    if (*v286 != -1)
    {
      goto LABEL_1349;
    }

LABEL_1410:
    if (v1272)
    {
      goto LABEL_1363;
    }

    goto LABEL_1362;
  }

  v1264 = *(v9 + 1080);
  v1266 = *(v1264 + 8);
  v1265 = *(v1264 + 12);
  v1267 = v1261 < v1266 || v1262 < v1265;
  v1268 = 16 * v1266;
  v1269 = !v1267 && v355 <= v1268;
  v1270 = 16 * v1265;
  v1272 = v1269 && v356 <= v1270;
  if (*v285 == -1)
  {
    goto LABEL_1409;
  }

LABEL_1336:
  v1273 = *(v9 + 1256);
  v1275 = *(v1273 + 8);
  v1274 = *(v1273 + 12);
  v1276 = v1261 < v1275 || v1262 < v1274;
  v1277 = 16 * v1275;
  v1278 = !v1276 && v355 <= v1277;
  v1279 = 16 * v1274;
  v1281 = v1278 && v356 <= v1279;
  v1272 |= v1281;
  if (*v286 == -1)
  {
    goto LABEL_1410;
  }

LABEL_1349:
  v1282 = *(v9 + 1432);
  v1284 = *(v1282 + 8);
  v1283 = *(v1282 + 12);
  v1288 = v1261 >= v1284 && v1262 >= v1283 && v355 <= 16 * v1284 && v356 <= 16 * v1283;
  if (!(v1272 | v1288))
  {
LABEL_1362:
    vpx_internal_error(v2059, 7, "Referenced frame has invalid size");
    v1263 = *v284;
  }

LABEL_1363:
  if (v1263 == -1 || (v1289 = *(v9 + 1080), v1289[32] != v350[3]) || v1289[30] != *(v9 + 972) || v1289[31] != *(v9 + 976))
  {
    vpx_internal_error(v2059, 7, "Referenced frame has incompatible color format");
  }

  if (*v285 == -1 || (v1290 = *(v9 + 1256), v1290[32] != v350[3]) || v1290[30] != *(v9 + 972) || v1290[31] != *(v9 + 976))
  {
    vpx_internal_error(v2059, 7, "Referenced frame has incompatible color format");
  }

  v31 = v2035;
  if (*v286 == -1 || (v1291 = *(v9 + 1432), v1291[32] != v350[3]) || v1291[30] != *(v9 + 972) || v1291[31] != *(v9 + 976))
  {
    vpx_internal_error(v2059, 7, "Referenced frame has incompatible color format");
  }

  resize_context_buffers(v2059, v355, v356);
  *(v9 + 956) = *(v9 + 948);
  v1292 = v2076;
  v1293 = &v2074[v2076 >> 3];
  if (v1293 >= v2075)
  {
    v23 = v350;
    if (v2078)
    {
      v2078(v2077);
    }
  }

  else
  {
    v1294 = *v1293;
    ++v2076;
    v23 = v350;
    if ((v1294 >> (~v1292 & 7)))
    {
      v1295 = 0;
      for (i = 17; i > 1; --i)
      {
        while (1)
        {
          v1298 = &v2074[v2076 >> 3];
          if (v1298 >= v2075)
          {
            break;
          }

          v1297 = (*v1298 >> (~v2076++ & 7)) & 1;
          v1295 |= v1297 << (i-- - 2);
          if (i <= 1)
          {
            goto LABEL_1386;
          }
        }

        if (v2078)
        {
          v2078(v2077);
        }
      }

LABEL_1386:
      v1299 = 0;
      *(v9 + 956) = v1295 + 1;
      for (j = 17; j > 1; --j)
      {
        while (1)
        {
          v1302 = &v2074[v2076 >> 3];
          if (v1302 >= v2075)
          {
            break;
          }

          v1301 = (*v1302 >> (~v2076++ & 7)) & 1;
          v1299 |= v1301 << (j-- - 2);
          if (j <= 1)
          {
            goto LABEL_1392;
          }
        }

        if (v2078)
        {
          v2078(v2077);
        }
      }

LABEL_1392:
      *(v9 + 960) = v1299 + 1;
      v31 = v2035;
    }
  }

  if (vpx_realloc_frame_buffer(*(v9 + 18904) + 224 * *(v9 + 1600) + 88, *(v9 + 948), *(v9 + 952), *(v9 + 972), *(v9 + 976), *(v9 + 980), 32, v23[23], (v287 + 24 + 224 * *(v9 + 1600) + 40), *(v287 + 8), *v287))
  {
    vpx_internal_error(v2059, 2, "Failed to allocate frame buffer");
  }

  v1303 = v287 + 24 + 224 * *(v9 + 1600);
  *(v1303 + 24) = 0;
  *&v1304 = *(v9 + 972);
  DWORD2(v1304) = v23[3];
  HIDWORD(v1304) = *(v9 + 940);
  *(v1303 + 184) = v1304;
  *(v1303 + 200) = *(v9 + 944);
  *(v1303 + 204) = *(v9 + 956);
  v1306 = v2075;
  v1305 = v2076;
  v1307 = v2074;
  v1308 = &v2074[v2076 >> 3];
  if (v1308 >= v2075)
  {
    v1309 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v1309 = 0;
      v1306 = v2075;
      v1305 = v2076;
      v1307 = v2074;
    }
  }

  else
  {
    v1309 = (*v1308 >> (~v2076 & 7)) & 1;
    v1305 = ++v2076;
  }

  *(v9 + 1952) = v1309;
  v1310 = (v1307 + (v1305 >> 3));
  if (v1310 >= v1306)
  {
    if (v2078)
    {
      v2078(v2077);
    }

    goto LABEL_1406;
  }

  v1311 = *v1310;
  v2076 = v1305 + 1;
  if (((v1311 >> (~v1305 & 7)) & 1) == 0)
  {
LABEL_1406:
    v1312 = byte_273BCF210[vpx_rb_read_literal(&v2074, 2)];
    goto LABEL_1407;
  }

  v1312 = 4;
LABEL_1407:
  *(v9 + 2212) = v1312;
  vp9_setup_scale_factors_for_frame(v9 + 1088, *(*(v9 + 1080) + 8), *(*(v9 + 1080) + 12), *(v9 + 948), *(v9 + 952), *(v9 + 980));
  vp9_setup_scale_factors_for_frame(v9 + 1264, *(*(v9 + 1256) + 8), *(*(v9 + 1256) + 12), *(v9 + 948), *(v9 + 952), *(v9 + 980));
  vp9_setup_scale_factors_for_frame(v9 + 1440, *(*(v9 + 1432) + 8), *(*(v9 + 1432) + 12), *(v9 + 948), *(v9 + 952), *(v9 + 980));
  v117 = v23[471] == 0;
LABEL_434:
  v381 = *(v9 + 18904) + 224 * *(v9 + 1600);
  *(v381 + 216) = v23[3];
  v382.n128_u64[0] = *(v9 + 940);
  v382.n128_u64[1] = *(v9 + 956);
  *(v381 + 220) = v382;
  if (!v117)
  {
    vpx_internal_error(v2059, 7, "Keyframe / intra-only frame required to reset decoder state");
  }

  v8 = v2067;
  if (!v23[19])
  {
    v392 = v2075;
    v391 = v2076;
    v393 = v2074;
    v394 = &v2074[v2076 >> 3];
    if (v394 >= v2075)
    {
      v395 = v2078;
      if (v2078)
      {
        v2078(v2077);
        v395 = 0;
        v392 = v2075;
        v391 = v2076;
        v393 = v2074;
      }
    }

    else
    {
      v395 = (*v394 >> (~v2076 & 7)) & 1;
      v391 = ++v2076;
    }

    *(v9 + 5360) = v395;
    v396 = (v393 + (v391 >> 3));
    if (v396 >= v392)
    {
      if (v2078)
      {
        v2078(v2077);
      }

      v23[20] = 0;
    }

    else
    {
      v397 = *v396 >> (~v391 & 7);
      v2076 = v391 + 1;
      v23[20] = v397 & 1;
      if (v397)
      {
        v384 = v2075;
        v383 = v2076;
        v385 = v2074;
        v386 = &v2074[v2076 >> 3];
        if (v386 >= v2075)
        {
          goto LABEL_438;
        }

LABEL_454:
        v398 = *v386 >> (~v383++ & 7);
        v2076 = v383;
        v387 = 2 * (v398 & 1);
        v388 = (v385 + (v383 >> 3));
        if (v388 < v384)
        {
          goto LABEL_455;
        }

        goto LABEL_440;
      }
    }

    bzero((v9 + 5580), 0x33A8uLL);
    v384 = v2075;
    v383 = v2076;
    v385 = v2074;
    v386 = &v2074[v2076 >> 3];
    if (v386 >= v2075)
    {
      goto LABEL_438;
    }

    goto LABEL_454;
  }

  *(v9 + 5360) = 0;
  v23[20] = 1;
  v384 = v2075;
  v383 = v2076;
  v385 = v2074;
  v386 = &v2074[v2076 >> 3];
  if (v386 < v2075)
  {
    goto LABEL_454;
  }

LABEL_438:
  if (v2078)
  {
    v2078(v2077);
    v387 = 0;
    v383 = v2076;
    v388 = &v2074[v2076 >> 3];
    if (v388 >= v2075)
    {
      goto LABEL_440;
    }

LABEL_455:
    v399 = (*v388 >> (~v383 & 7)) & 1;
    v2076 = v383 + 1;
    *(v9 + 5576) = v399 | v387;
    v389 = v23[36];
    if (!v389)
    {
      goto LABEL_442;
    }

    goto LABEL_456;
  }

  v387 = 0;
  v388 = (v385 + (v383 >> 3));
  if (v388 < v384)
  {
    goto LABEL_455;
  }

LABEL_440:
  if (v2078)
  {
    v2078(v2077);
    *(v9 + 5576) = v387;
    v389 = v23[36];
    if (!v389)
    {
      goto LABEL_442;
    }

    goto LABEL_456;
  }

  *(v9 + 5576) = v387;
  v389 = v23[36];
  if (!v389)
  {
LABEL_442:
    v390 = 0;
LABEL_466:
    v405 = v390 + 1;
    v406 = (v9 + 4 * v390 + 1040);
    do
    {
      v407 = *(v406 - 8);
      *v406 = v407;
      if ((v407 & 0x80000000) == 0)
      {
        ++*(v27 + 224 * v407);
      }

      ++v406;
      v1074 = v405++ == 8;
    }

    while (!v1074);
    goto LABEL_470;
  }

LABEL_456:
  v400 = (v9 + 1040);
  v401 = -1;
  do
  {
    if (v389)
    {
      v402 = *(v9 + 1600);
      *v400 = v402;
      ++*(v27 + 224 * v402);
      v403 = *(v400 - 8);
      if ((v403 & 0x80000000) != 0)
      {
        goto LABEL_459;
      }

LABEL_458:
      ++*(v27 + 224 * v403);
      goto LABEL_459;
    }

    v403 = *(v400 - 8);
    *v400 = v403;
    if ((v403 & 0x80000000) == 0)
    {
      goto LABEL_458;
    }

LABEL_459:
    ++v401;
    ++v400;
    v404 = v389 >= 2;
    v389 >>= 1;
  }

  while (v404);
  if (v401 <= 6)
  {
    v390 = v401 + 1;
    goto LABEL_466;
  }

LABEL_470:
  v23[472] = 1;
  if (!*(v9 + 1932) || *(v9 + 1948) || v23[19])
  {
    v382.n128_f64[0] = vp9_setup_past_independence(v2059);
  }

  v408 = v2075;
  v409 = v2076;
  v410 = v2074;
  v411 = &v2074[v2076 >> 3];
  if (v411 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v413 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
      v414 = &v2074[v2076 >> 3];
      if (v414 >= v2075)
      {
        goto LABEL_479;
      }
    }

    else
    {
      v413 = 0;
      v414 = &v2074[v2076 >> 3];
      if (v414 >= v2075)
      {
        goto LABEL_479;
      }
    }

LABEL_476:
    v415 = *v414 >> (~v409++ & 7);
    v2076 = v409;
    v416 = 16 * (v415 & 1);
  }

  else
  {
    v412 = *v411 >> (~v2076 & 7);
    v409 = v2076 + 1;
    v2076 = v409;
    v413 = 32 * (v412 & 1);
    v414 = &v2074[v409 >> 3];
    if (v414 < v2075)
    {
      goto LABEL_476;
    }

LABEL_479:
    v416 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v416 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  v417 = v416 | v413;
  v418 = (v410 + (v409 >> 3));
  if (v418 >= v408)
  {
    v420 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v420 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  else
  {
    v419 = *v418 >> (~v409++ & 7);
    v2076 = v409;
    v420 = 8 * (v419 & 1);
  }

  v421 = v420 | v417;
  v422 = (v410 + (v409 >> 3));
  if (v422 >= v408)
  {
    v424 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v424 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  else
  {
    v423 = *v422 >> (~v409++ & 7);
    v2076 = v409;
    v424 = 4 * (v423 & 1);
  }

  v425 = v424 | v421;
  v426 = (v410 + (v409 >> 3));
  if (v426 >= v408)
  {
    v428 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v428 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  else
  {
    v427 = *v426 >> (~v409++ & 7);
    v2076 = v409;
    v428 = 2 * (v427 & 1);
  }

  v429 = v428 | v425;
  v430 = (v410 + (v409 >> 3));
  if (v430 >= v408)
  {
    v431 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v431 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  else
  {
    v431 = (*v430 >> (~v409++ & 7)) & 1;
    v2076 = v409;
  }

  *(v9 + 5384) = v431 | v429;
  v432 = (v410 + (v409 >> 3));
  if (v432 >= v408)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v434 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
      v435 = v9 + 5400;
      v436 = &v2074[v2076 >> 3];
      if (v436 >= v2075)
      {
        goto LABEL_502;
      }
    }

    else
    {
      v434 = 0;
      v435 = v9 + 5400;
      v436 = (v410 + (v409 >> 3));
      if (v436 >= v408)
      {
        goto LABEL_502;
      }
    }

LABEL_499:
    v437 = *v436 >> (~v409++ & 7);
    v2076 = v409;
    v438 = 2 * (v437 & 1);
  }

  else
  {
    v433 = *v432 >> (~v409++ & 7);
    v2076 = v409;
    v434 = 4 * (v433 & 1);
    v435 = v9 + 5400;
    v436 = (v410 + (v409 >> 3));
    if (v436 < v408)
    {
      goto LABEL_499;
    }

LABEL_502:
    v438 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v438 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  v439 = v438 | v434;
  v440 = (v410 + (v409 >> 3));
  if (v440 >= v408)
  {
    v441 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v441 = 0;
      v408 = v2075;
      v409 = v2076;
      v410 = v2074;
    }
  }

  else
  {
    v441 = (*v440 >> (~v409++ & 7)) & 1;
    v2076 = v409;
  }

  *(v9 + 5392) = v441 | v439;
  *(v435 + 1) = 0;
  v442 = (v410 + (v409 >> 3));
  if (v442 >= v408)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    *v435 = 0;
  }

  else
  {
    v443 = *v442 >> (~v409 & 7);
    v444 = v409 + 1;
    v2076 = v409 + 1;
    *v435 = v443 & 1;
    if (v443)
    {
      v445 = (v410 + (v444 >> 3));
      if (v445 >= v408)
      {
        if (v2078)
        {
          (v2078)(v2077, v382);
        }

        *(v435 + 1) = 0;
      }

      else
      {
        v446 = *v445 >> (~v444 & 7);
        v447 = v409 + 2;
        v2076 = v409 + 2;
        *(v435 + 1) = v446 & 1;
        if (v446)
        {
          v448 = (v410 + (v447 >> 3));
          if (v448 >= v408)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v449 = ~v447 & 7;
            v450 = *v448;
            v451 = v409 + 3;
            v2076 = v409 + 3;
            if ((v450 >> v449))
            {
              v452 = (v410 + (v451 >> 3));
              if (v452 >= v408)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v454 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }

                else
                {
                  v454 = 0;
                }
              }

              else
              {
                v453 = *v452 >> (~v451 & 7);
                v451 = v409 + 4;
                v2076 = v409 + 4;
                v454 = 32 * (v453 & 1);
              }

              v1313 = (v410 + (v451 >> 3));
              if (v1313 >= v408)
              {
                v1315 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1315 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }
              }

              else
              {
                v1314 = *v1313 >> (~v451++ & 7);
                v2076 = v451;
                v1315 = 16 * (v1314 & 1);
              }

              v1316 = v1315 | v454;
              v1317 = (v410 + (v451 >> 3));
              if (v1317 >= v408)
              {
                v1319 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1319 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }
              }

              else
              {
                v1318 = *v1317 >> (~v451++ & 7);
                v2076 = v451;
                v1319 = 8 * (v1318 & 1);
              }

              v1320 = v1319 | v1316;
              v1321 = (v410 + (v451 >> 3));
              if (v1321 >= v408)
              {
                v1323 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1323 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }
              }

              else
              {
                v1322 = *v1321 >> (~v451++ & 7);
                v2076 = v451;
                v1323 = 4 * (v1322 & 1);
              }

              v1324 = v1323 | v1320;
              v1325 = (v410 + (v451 >> 3));
              if (v1325 >= v408)
              {
                v1327 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1327 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }
              }

              else
              {
                v1326 = *v1325 >> (~v451++ & 7);
                v2076 = v451;
                v1327 = 2 * (v1326 & 1);
              }

              v1328 = v1327 | v1324;
              v1329 = (v410 + (v451 >> 3));
              if (v1329 >= v408)
              {
                v1330 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1330 = 0;
                  v408 = v2075;
                  v451 = v2076;
                  v410 = v2074;
                }
              }

              else
              {
                v1330 = (*v1329 >> (~v451++ & 7)) & 1;
                v2076 = v451;
              }

              v1331 = v1330 | v1328;
              v1332 = (v410 + (v451 >> 3));
              if (v1332 >= v408)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1333 = *v1332;
                v2076 = v451 + 1;
                if ((v1333 >> (~v451 & 7)))
                {
                  v1331 = -v1331;
                }
              }

              *(v435 + 2) = v1331;
            }
          }

          v1334 = v2075;
          v1335 = v2076;
          v1336 = v2074;
          v1337 = &v2074[v2076 >> 3];
          if (v1337 >= v2075)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v1338 = *v1337;
            v1339 = ++v2076;
            if ((v1338 >> (~v1335 & 7)))
            {
              v1340 = &v2074[v1339 >> 3];
              if (v1340 >= v2075)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1342 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }

                else
                {
                  v1342 = 0;
                }
              }

              else
              {
                v1341 = *v1340 >> (~v1339 & 7);
                v1339 = v1335 + 2;
                v2076 = v1335 + 2;
                v1342 = 32 * (v1341 & 1);
              }

              v1413 = (v1336 + (v1339 >> 3));
              if (v1413 >= v1334)
              {
                v1415 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1415 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }
              }

              else
              {
                v1414 = *v1413 >> (~v1339++ & 7);
                v2076 = v1339;
                v1415 = 16 * (v1414 & 1);
              }

              v1416 = v1415 | v1342;
              v1417 = (v1336 + (v1339 >> 3));
              if (v1417 >= v1334)
              {
                v1419 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1419 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }
              }

              else
              {
                v1418 = *v1417 >> (~v1339++ & 7);
                v2076 = v1339;
                v1419 = 8 * (v1418 & 1);
              }

              v1420 = v1419 | v1416;
              v1421 = (v1336 + (v1339 >> 3));
              if (v1421 >= v1334)
              {
                v1423 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1423 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }
              }

              else
              {
                v1422 = *v1421 >> (~v1339++ & 7);
                v2076 = v1339;
                v1423 = 4 * (v1422 & 1);
              }

              v1424 = v1423 | v1420;
              v1425 = (v1336 + (v1339 >> 3));
              if (v1425 >= v1334)
              {
                v1427 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1427 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }
              }

              else
              {
                v1426 = *v1425 >> (~v1339++ & 7);
                v2076 = v1339;
                v1427 = 2 * (v1426 & 1);
              }

              v1428 = v1427 | v1424;
              v1429 = (v1336 + (v1339 >> 3));
              if (v1429 >= v1334)
              {
                v1430 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1430 = 0;
                  v1334 = v2075;
                  v1339 = v2076;
                  v1336 = v2074;
                }
              }

              else
              {
                v1430 = (*v1429 >> (~v1339++ & 7)) & 1;
                v2076 = v1339;
              }

              v1431 = v1430 | v1428;
              v1432 = (v1336 + (v1339 >> 3));
              if (v1432 >= v1334)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1433 = *v1432;
                v2076 = v1339 + 1;
                if ((v1433 >> (~v1339 & 7)))
                {
                  v1431 = -v1431;
                }
              }

              *(v435 + 3) = v1431;
            }
          }

          v1434 = v2075;
          v1435 = v2076;
          v1436 = v2074;
          v1437 = &v2074[v2076 >> 3];
          if (v1437 >= v2075)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v1438 = *v1437;
            v1439 = ++v2076;
            if ((v1438 >> (~v1435 & 7)))
            {
              v1440 = &v2074[v1439 >> 3];
              if (v1440 >= v2075)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1442 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }

                else
                {
                  v1442 = 0;
                }
              }

              else
              {
                v1441 = *v1440 >> (~v1439 & 7);
                v1439 = v1435 + 2;
                v2076 = v1435 + 2;
                v1442 = 32 * (v1441 & 1);
              }

              v1513 = (v1436 + (v1439 >> 3));
              if (v1513 >= v1434)
              {
                v1515 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1515 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }
              }

              else
              {
                v1514 = *v1513 >> (~v1439++ & 7);
                v2076 = v1439;
                v1515 = 16 * (v1514 & 1);
              }

              v1516 = v1515 | v1442;
              v1517 = (v1436 + (v1439 >> 3));
              if (v1517 >= v1434)
              {
                v1519 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1519 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }
              }

              else
              {
                v1518 = *v1517 >> (~v1439++ & 7);
                v2076 = v1439;
                v1519 = 8 * (v1518 & 1);
              }

              v1520 = v1519 | v1516;
              v1521 = (v1436 + (v1439 >> 3));
              if (v1521 >= v1434)
              {
                v1523 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1523 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }
              }

              else
              {
                v1522 = *v1521 >> (~v1439++ & 7);
                v2076 = v1439;
                v1523 = 4 * (v1522 & 1);
              }

              v1524 = v1523 | v1520;
              v1525 = (v1436 + (v1439 >> 3));
              if (v1525 >= v1434)
              {
                v1527 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1527 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }
              }

              else
              {
                v1526 = *v1525 >> (~v1439++ & 7);
                v2076 = v1439;
                v1527 = 2 * (v1526 & 1);
              }

              v1528 = v1527 | v1524;
              v1529 = (v1436 + (v1439 >> 3));
              if (v1529 >= v1434)
              {
                v1530 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1530 = 0;
                  v1434 = v2075;
                  v1439 = v2076;
                  v1436 = v2074;
                }
              }

              else
              {
                v1530 = (*v1529 >> (~v1439++ & 7)) & 1;
                v2076 = v1439;
              }

              v1531 = v1530 | v1528;
              v1532 = (v1436 + (v1439 >> 3));
              if (v1532 >= v1434)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1533 = *v1532;
                v2076 = v1439 + 1;
                if ((v1533 >> (~v1439 & 7)))
                {
                  v1531 = -v1531;
                }
              }

              *(v435 + 4) = v1531;
            }
          }

          v1534 = v2075;
          v1535 = v2076;
          v1536 = v2074;
          v1537 = &v2074[v2076 >> 3];
          if (v1537 >= v2075)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v1538 = *v1537;
            v1539 = ++v2076;
            if ((v1538 >> (~v1535 & 7)))
            {
              v1540 = &v2074[v1539 >> 3];
              if (v1540 >= v2075)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1542 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }

                else
                {
                  v1542 = 0;
                }
              }

              else
              {
                v1541 = *v1540 >> (~v1539 & 7);
                v1539 = v1535 + 2;
                v2076 = v1535 + 2;
                v1542 = 32 * (v1541 & 1);
              }

              v1619 = (v1536 + (v1539 >> 3));
              if (v1619 >= v1534)
              {
                v1621 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1621 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }
              }

              else
              {
                v1620 = *v1619 >> (~v1539++ & 7);
                v2076 = v1539;
                v1621 = 16 * (v1620 & 1);
              }

              v1622 = v1621 | v1542;
              v1623 = (v1536 + (v1539 >> 3));
              if (v1623 >= v1534)
              {
                v1625 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1625 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }
              }

              else
              {
                v1624 = *v1623 >> (~v1539++ & 7);
                v2076 = v1539;
                v1625 = 8 * (v1624 & 1);
              }

              v1626 = v1625 | v1622;
              v1627 = (v1536 + (v1539 >> 3));
              if (v1627 >= v1534)
              {
                v1629 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1629 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }
              }

              else
              {
                v1628 = *v1627 >> (~v1539++ & 7);
                v2076 = v1539;
                v1629 = 4 * (v1628 & 1);
              }

              v1630 = v1629 | v1626;
              v1631 = (v1536 + (v1539 >> 3));
              if (v1631 >= v1534)
              {
                v1633 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1633 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }
              }

              else
              {
                v1632 = *v1631 >> (~v1539++ & 7);
                v2076 = v1539;
                v1633 = 2 * (v1632 & 1);
              }

              v1634 = v1633 | v1630;
              v1635 = (v1536 + (v1539 >> 3));
              if (v1635 >= v1534)
              {
                v1636 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1636 = 0;
                  v1534 = v2075;
                  v1539 = v2076;
                  v1536 = v2074;
                }
              }

              else
              {
                v1636 = (*v1635 >> (~v1539++ & 7)) & 1;
                v2076 = v1539;
              }

              v1637 = v1636 | v1634;
              v1638 = (v1536 + (v1539 >> 3));
              if (v1638 >= v1534)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1639 = *v1638;
                v2076 = v1539 + 1;
                if ((v1639 >> (~v1539 & 7)))
                {
                  v1637 = -v1637;
                }
              }

              *(v435 + 5) = v1637;
            }
          }

          v1640 = v2075;
          v1641 = v2076;
          v1642 = v2074;
          v1643 = &v2074[v2076 >> 3];
          if (v1643 >= v2075)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v1644 = *v1643;
            v1645 = ++v2076;
            if ((v1644 >> (~v1641 & 7)))
            {
              v1646 = &v2074[v1645 >> 3];
              if (v1646 >= v2075)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1648 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }

                else
                {
                  v1648 = 0;
                }
              }

              else
              {
                v1647 = *v1646 >> (~v1645 & 7);
                v1645 = v1641 + 2;
                v2076 = v1641 + 2;
                v1648 = 32 * (v1647 & 1);
              }

              v1675 = (v1642 + (v1645 >> 3));
              if (v1675 >= v1640)
              {
                v1677 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1677 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }
              }

              else
              {
                v1676 = *v1675 >> (~v1645++ & 7);
                v2076 = v1645;
                v1677 = 16 * (v1676 & 1);
              }

              v1678 = v1677 | v1648;
              v1679 = (v1642 + (v1645 >> 3));
              if (v1679 >= v1640)
              {
                v1681 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1681 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }
              }

              else
              {
                v1680 = *v1679 >> (~v1645++ & 7);
                v2076 = v1645;
                v1681 = 8 * (v1680 & 1);
              }

              v1682 = v1681 | v1678;
              v1683 = (v1642 + (v1645 >> 3));
              if (v1683 >= v1640)
              {
                v1685 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1685 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }
              }

              else
              {
                v1684 = *v1683 >> (~v1645++ & 7);
                v2076 = v1645;
                v1685 = 4 * (v1684 & 1);
              }

              v1686 = v1685 | v1682;
              v1687 = (v1642 + (v1645 >> 3));
              if (v1687 >= v1640)
              {
                v1689 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1689 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }
              }

              else
              {
                v1688 = *v1687 >> (~v1645++ & 7);
                v2076 = v1645;
                v1689 = 2 * (v1688 & 1);
              }

              v1690 = v1689 | v1686;
              v1691 = (v1642 + (v1645 >> 3));
              if (v1691 >= v1640)
              {
                v1692 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1692 = 0;
                  v1640 = v2075;
                  v1645 = v2076;
                  v1642 = v2074;
                }
              }

              else
              {
                v1692 = (*v1691 >> (~v1645++ & 7)) & 1;
                v2076 = v1645;
              }

              v1693 = v1692 | v1690;
              v1694 = (v1642 + (v1645 >> 3));
              if (v1694 >= v1640)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1695 = *v1694;
                v2076 = v1645 + 1;
                if ((v1695 >> (~v1645 & 7)))
                {
                  v1693 = -v1693;
                }
              }

              *(v435 + 10) = v1693;
            }
          }

          v1696 = v2075;
          v1697 = v2076;
          v1698 = v2074;
          v1699 = &v2074[v2076 >> 3];
          if (v1699 >= v2075)
          {
            if (v2078)
            {
              (v2078)(v2077, v382);
            }
          }

          else
          {
            v1700 = *v1699;
            v1701 = ++v2076;
            if ((v1700 >> (~v1697 & 7)))
            {
              v1702 = &v2074[v1701 >> 3];
              if (v1702 >= v2075)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1704 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }

                else
                {
                  v1704 = 0;
                }
              }

              else
              {
                v1703 = *v1702 >> (~v1701 & 7);
                v1701 = v1697 + 2;
                v2076 = v1697 + 2;
                v1704 = 32 * (v1703 & 1);
              }

              v1705 = (v1698 + (v1701 >> 3));
              if (v1705 >= v1696)
              {
                v1707 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1707 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }
              }

              else
              {
                v1706 = *v1705 >> (~v1701++ & 7);
                v2076 = v1701;
                v1707 = 16 * (v1706 & 1);
              }

              v1708 = v1707 | v1704;
              v1709 = (v1698 + (v1701 >> 3));
              if (v1709 >= v1696)
              {
                v1711 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1711 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }
              }

              else
              {
                v1710 = *v1709 >> (~v1701++ & 7);
                v2076 = v1701;
                v1711 = 8 * (v1710 & 1);
              }

              v1712 = v1711 | v1708;
              v1713 = (v1698 + (v1701 >> 3));
              if (v1713 >= v1696)
              {
                v1715 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1715 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }
              }

              else
              {
                v1714 = *v1713 >> (~v1701++ & 7);
                v2076 = v1701;
                v1715 = 4 * (v1714 & 1);
              }

              v1716 = v1715 | v1712;
              v1717 = (v1698 + (v1701 >> 3));
              if (v1717 >= v1696)
              {
                v1719 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1719 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }
              }

              else
              {
                v1718 = *v1717 >> (~v1701++ & 7);
                v2076 = v1701;
                v1719 = 2 * (v1718 & 1);
              }

              v1720 = v1719 | v1716;
              v1721 = (v1698 + (v1701 >> 3));
              if (v1721 >= v1696)
              {
                v1722 = v2078;
                if (v2078)
                {
                  (v2078)(v2077, v382);
                  v1722 = 0;
                  v1696 = v2075;
                  v1701 = v2076;
                  v1698 = v2074;
                }
              }

              else
              {
                v1722 = (*v1721 >> (~v1701++ & 7)) & 1;
                v2076 = v1701;
              }

              v1723 = v1722 | v1720;
              v1724 = (v1698 + (v1701 >> 3));
              if (v1724 >= v1696)
              {
                if (v2078)
                {
                  (v2078)(v2077, v382);
                }
              }

              else
              {
                v1725 = *v1724;
                v2076 = v1701 + 1;
                if ((v1725 >> (~v1701 & 7)))
                {
                  v1723 = -v1723;
                }
              }

              *(v435 + 11) = v1723;
            }
          }
        }
      }
    }
  }

  v455 = v2075;
  v456 = v2076;
  v457 = v2074;
  v458 = &v2074[v2076 >> 3];
  if (v458 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v460 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
      v461 = &v2074[v2076 >> 3];
      if (v461 >= v2075)
      {
        goto LABEL_524;
      }
    }

    else
    {
      v460 = 0;
      v461 = &v2074[v2076 >> 3];
      if (v461 >= v2075)
      {
        goto LABEL_524;
      }
    }

LABEL_521:
    v462 = *v461 >> (~v456++ & 7);
    v2076 = v456;
    v463 = (v462 & 1) << 6;
  }

  else
  {
    v459 = *v458 >> (~v2076 & 7);
    v456 = v2076 + 1;
    v2076 = v456;
    v460 = (v459 & 1) << 7;
    v461 = &v2074[v456 >> 3];
    if (v461 < v2075)
    {
      goto LABEL_521;
    }

LABEL_524:
    v463 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v463 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  v464 = v463 | v460;
  v465 = (v457 + (v456 >> 3));
  if (v465 >= v455)
  {
    v467 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v467 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v466 = *v465 >> (~v456++ & 7);
    v2076 = v456;
    v467 = 32 * (v466 & 1);
  }

  v468 = v467 | v464;
  v469 = (v457 + (v456 >> 3));
  if (v469 >= v455)
  {
    v471 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v471 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v470 = *v469 >> (~v456++ & 7);
    v2076 = v456;
    v471 = 16 * (v470 & 1);
  }

  v472 = v471 | v468;
  v473 = (v457 + (v456 >> 3));
  if (v473 >= v455)
  {
    v475 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v475 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v474 = *v473 >> (~v456++ & 7);
    v2076 = v456;
    v475 = 8 * (v474 & 1);
  }

  v476 = v475 | v472;
  v477 = (v457 + (v456 >> 3));
  if (v477 >= v455)
  {
    v479 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v479 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v478 = *v477 >> (~v456++ & 7);
    v2076 = v456;
    v479 = 4 * (v478 & 1);
  }

  v480 = v479 | v476;
  v481 = (v457 + (v456 >> 3));
  if (v481 >= v455)
  {
    v483 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v483 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v482 = *v481 >> (~v456++ & 7);
    v2076 = v456;
    v483 = 2 * (v482 & 1);
  }

  v484 = v483 | v480;
  v485 = (v457 + (v456 >> 3));
  if (v485 >= v455)
  {
    v486 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v486 = 0;
      v455 = v2075;
      v456 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v486 = (*v485 >> (~v456++ & 7)) & 1;
    v2076 = v456;
  }

  *(v9 + 1988) = v486 | v484;
  v487 = (v457 + (v456 >> 3));
  if (v487 >= v455)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    goto LABEL_557;
  }

  v488 = *v487;
  v489 = v456 + 1;
  v2076 = v456 + 1;
  if (((v488 >> (~v456 & 7)) & 1) == 0)
  {
LABEL_557:
    v496 = 0;
    goto LABEL_558;
  }

  v490 = (v457 + (v489 >> 3));
  if (v490 >= v455)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v492 = 0;
      v455 = v2075;
      v489 = v2076;
      v457 = v2074;
      v493 = &v2074[v2076 >> 3];
      if (v493 >= v2075)
      {
        goto LABEL_685;
      }
    }

    else
    {
      v492 = 0;
      v493 = (v457 + (v489 >> 3));
      if (v493 >= v455)
      {
        goto LABEL_685;
      }
    }

LABEL_554:
    v494 = *v493 >> (~v489++ & 7);
    v2076 = v489;
    v495 = 4 * (v494 & 1);
  }

  else
  {
    v491 = *v490 >> (~v489 & 7);
    v489 = v456 + 2;
    v2076 = v456 + 2;
    v492 = 8 * (v491 & 1);
    v493 = (v457 + ((v456 + 2) >> 3));
    if (v493 < v455)
    {
      goto LABEL_554;
    }

LABEL_685:
    v495 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v495 = 0;
      v455 = v2075;
      v489 = v2076;
      v457 = v2074;
    }
  }

  v594 = v495 | v492;
  v595 = (v457 + (v489 >> 3));
  if (v595 >= v455)
  {
    v597 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v597 = 0;
      v455 = v2075;
      v489 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v596 = *v595 >> (~v489++ & 7);
    v2076 = v489;
    v597 = 2 * (v596 & 1);
  }

  v606 = v597 | v594;
  v607 = (v457 + (v489 >> 3));
  if (v607 >= v455)
  {
    v608 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v608 = 0;
      v455 = v2075;
      v489 = v2076;
      v457 = v2074;
    }
  }

  else
  {
    v608 = (*v607 >> (~v489++ & 7)) & 1;
    v2076 = v489;
  }

  v496 = v608 | v606;
  v615 = (v457 + (v489 >> 3));
  if (v615 >= v455)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }
  }

  else
  {
    v616 = *v615;
    v2076 = v489 + 1;
    if ((v616 >> (~v489 & 7)))
    {
      v496 = -v496;
    }
  }

LABEL_558:
  *(v9 + 1992) = v496;
  v497 = v2075;
  v498 = v2076;
  v499 = v2074;
  v500 = &v2074[v2076 >> 3];
  if (v500 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    goto LABEL_565;
  }

  v501 = *v500;
  v502 = ++v2076;
  if (((v501 >> (~v498 & 7)) & 1) == 0)
  {
LABEL_565:
    v509 = 0;
    goto LABEL_566;
  }

  v503 = &v2074[v502 >> 3];
  if (v503 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v505 = 0;
      v497 = v2075;
      v502 = v2076;
      v499 = v2074;
      v506 = &v2074[v2076 >> 3];
      if (v506 >= v2075)
      {
        goto LABEL_691;
      }
    }

    else
    {
      v505 = 0;
      v506 = &v2074[v502 >> 3];
      if (v506 >= v2075)
      {
        goto LABEL_691;
      }
    }

LABEL_562:
    v507 = *v506 >> (~v502++ & 7);
    v2076 = v502;
    v508 = 4 * (v507 & 1);
  }

  else
  {
    v504 = *v503 >> (~v502 & 7);
    v502 = v498 + 2;
    v2076 = v498 + 2;
    v505 = 8 * (v504 & 1);
    v506 = &v2074[(v498 + 2) >> 3];
    if (v506 < v2075)
    {
      goto LABEL_562;
    }

LABEL_691:
    v508 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v508 = 0;
      v497 = v2075;
      v502 = v2076;
      v499 = v2074;
    }
  }

  v598 = v508 | v505;
  v599 = (v499 + (v502 >> 3));
  if (v599 >= v497)
  {
    v601 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v601 = 0;
      v497 = v2075;
      v502 = v2076;
      v499 = v2074;
    }
  }

  else
  {
    v600 = *v599 >> (~v502++ & 7);
    v2076 = v502;
    v601 = 2 * (v600 & 1);
  }

  v609 = v601 | v598;
  v610 = (v499 + (v502 >> 3));
  if (v610 >= v497)
  {
    v611 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v611 = 0;
      v497 = v2075;
      v502 = v2076;
      v499 = v2074;
    }
  }

  else
  {
    v611 = (*v610 >> (~v502++ & 7)) & 1;
    v2076 = v502;
  }

  v509 = v611 | v609;
  v617 = (v499 + (v502 >> 3));
  if (v617 >= v497)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }
  }

  else
  {
    v618 = *v617;
    v2076 = v502 + 1;
    if ((v618 >> (~v502 & 7)))
    {
      v509 = -v509;
    }
  }

LABEL_566:
  *(v9 + 1996) = v509;
  v510 = v2075;
  v511 = v2076;
  v512 = v2074;
  v513 = &v2074[v2076 >> 3];
  if (v513 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    goto LABEL_573;
  }

  v514 = *v513;
  v515 = ++v2076;
  if (((v514 >> (~v511 & 7)) & 1) == 0)
  {
LABEL_573:
    v522 = 0;
    goto LABEL_574;
  }

  v516 = &v2074[v515 >> 3];
  if (v516 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v518 = 0;
      v510 = v2075;
      v515 = v2076;
      v512 = v2074;
      v519 = &v2074[v2076 >> 3];
      if (v519 >= v2075)
      {
        goto LABEL_697;
      }
    }

    else
    {
      v518 = 0;
      v519 = &v2074[v515 >> 3];
      if (v519 >= v2075)
      {
        goto LABEL_697;
      }
    }

LABEL_570:
    v520 = *v519 >> (~v515++ & 7);
    v2076 = v515;
    v521 = 4 * (v520 & 1);
  }

  else
  {
    v517 = *v516 >> (~v515 & 7);
    v515 = v511 + 2;
    v2076 = v511 + 2;
    v518 = 8 * (v517 & 1);
    v519 = &v2074[(v511 + 2) >> 3];
    if (v519 < v2075)
    {
      goto LABEL_570;
    }

LABEL_697:
    v521 = v2078;
    if (v2078)
    {
      v2078(v2077);
      v521 = 0;
      v510 = v2075;
      v515 = v2076;
      v512 = v2074;
    }
  }

  v602 = v521 | v518;
  v603 = (v512 + (v515 >> 3));
  if (v603 >= v510)
  {
    v605 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v605 = 0;
      v510 = v2075;
      v515 = v2076;
      v512 = v2074;
    }
  }

  else
  {
    v604 = *v603 >> (~v515++ & 7);
    v2076 = v515;
    v605 = 2 * (v604 & 1);
  }

  v612 = v605 | v602;
  v613 = (v512 + (v515 >> 3));
  if (v613 >= v510)
  {
    v614 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v614 = 0;
      v510 = v2075;
      v515 = v2076;
      v512 = v2074;
    }
  }

  else
  {
    v614 = (*v613 >> (~v515++ & 7)) & 1;
    v2076 = v515;
  }

  v522 = v614 | v612;
  v619 = (v512 + (v515 >> 3));
  if (v619 >= v510)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }
  }

  else
  {
    v620 = *v619;
    v2076 = v515 + 1;
    if ((v620 >> (~v515 & 7)))
    {
      v522 = -v522;
    }
  }

LABEL_574:
  *(v9 + 2000) = v522;
  v523 = v23[3];
  v23[4] = v523;
  v524 = *(v9 + 1988);
  v525 = !*(v9 + 1988) && !*(v9 + 1996) && v522 == 0;
  *(v9 + 628) = v525;
  *(v9 + 624) = v523;
  *(v435 + 33) = 0;
  v526 = v2075;
  v527 = v2076;
  v529 = v9 + 18880;
  v528 = v2074;
  v530 = &v2074[v2076 >> 3];
  if (v530 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v524 = *(v9 + 1988);
    }

    *(v435 + 32) = 0;
    goto LABEL_588;
  }

  v531 = *v530 >> (~v2076 & 7);
  v532 = ++v2076;
  *(v435 + 32) = v531 & 1;
  if ((v531 & 1) == 0)
  {
LABEL_588:
    v543 = 1382;
    v544 = 2036;
    v545 = 2006;
    v546 = 2004;
    goto LABEL_589;
  }

  v533 = (v528 + (v532 >> 3));
  if (v533 >= v526)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    *(v435 + 33) = 0;
    goto LABEL_1999;
  }

  v534 = *v533 >> (~v532 & 7);
  v535 = v527 + 2;
  v2076 = v527 + 2;
  *(v435 + 33) = v534 & 1;
  if ((v534 & 1) == 0)
  {
    goto LABEL_1999;
  }

  v536 = (v528 + (v535 >> 3));
  if (v536 >= v526)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

LABEL_864:
    *(v435 + 37) = -1;
    v708 = v2075;
    v709 = v2076;
    v710 = v2074;
    v711 = &v2074[v2076 >> 3];
    if (v711 >= v2075)
    {
      goto LABEL_1478;
    }

    goto LABEL_865;
  }

  v537 = ~v535 & 7;
  v538 = *v536;
  v539 = v527 + 3;
  v2076 = v527 + 3;
  if (((v538 >> v537) & 1) == 0)
  {
    goto LABEL_864;
  }

  v540 = (v528 + (v539 >> 3));
  if (v540 >= v526)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v542 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }

    else
    {
      v542 = 0;
    }
  }

  else
  {
    v541 = *v540 >> (~v539 & 7);
    v539 = v527 + 4;
    v2076 = v527 + 4;
    v542 = v541 << 7;
  }

  v1343 = (v528 + (v539 >> 3));
  if (v1343 >= v526)
  {
    v1345 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1345 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1344 = *v1343 >> (~v539++ & 7);
    v2076 = v539;
    v1345 = (v1344 & 1) << 6;
  }

  v1346 = v1345 | v542;
  v1347 = (v528 + (v539 >> 3));
  if (v1347 >= v526)
  {
    v1349 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1349 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1348 = *v1347 >> (~v539++ & 7);
    v2076 = v539;
    v1349 = 32 * (v1348 & 1);
  }

  v1350 = v1349 | v1346;
  v1351 = (v528 + (v539 >> 3));
  if (v1351 >= v526)
  {
    v1353 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1353 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1352 = *v1351 >> (~v539++ & 7);
    v2076 = v539;
    v1353 = 16 * (v1352 & 1);
  }

  v1354 = v1353 | v1350;
  v1355 = (v528 + (v539 >> 3));
  if (v1355 >= v526)
  {
    v1357 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1357 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1356 = *v1355 >> (~v539++ & 7);
    v2076 = v539;
    v1357 = 8 * (v1356 & 1);
  }

  v1358 = v1357 | v1354;
  v1359 = (v528 + (v539 >> 3));
  if (v1359 >= v526)
  {
    v1361 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1361 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1360 = *v1359 >> (~v539++ & 7);
    v2076 = v539;
    v1361 = 4 * (v1360 & 1);
  }

  v1362 = v1361 | v1358;
  v1363 = (v528 + (v539 >> 3));
  if (v1363 >= v526)
  {
    v1365 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1365 = 0;
      v526 = v2075;
      v539 = v2076;
      v528 = v2074;
    }
  }

  else
  {
    v1364 = *v1363 >> (~v539++ & 7);
    v2076 = v539;
    v1365 = 2 * (v1364 & 1);
  }

  v1366 = v1365 | v1362;
  v1367 = (v528 + (v539 >> 3));
  if (v1367 >= v526)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    LOBYTE(v1368) = 0;
  }

  else
  {
    v1368 = (*v1367 >> (~v539 & 7)) & 1;
    v2076 = v539 + 1;
  }

  *(v435 + 37) = v1368 | v1366;
  v708 = v2075;
  v709 = v2076;
  v710 = v2074;
  v711 = &v2074[v2076 >> 3];
  if (v711 >= v2075)
  {
LABEL_1478:
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

LABEL_1480:
    *(v435 + 38) = -1;
    v1369 = v2075;
    v1370 = v2076;
    v1371 = v2074;
    v1372 = &v2074[v2076 >> 3];
    if (v1372 < v2075)
    {
      goto LABEL_1481;
    }

LABEL_1517:
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    goto LABEL_1519;
  }

LABEL_865:
  v712 = *v711;
  v713 = v709 + 1;
  v2076 = v709 + 1;
  if (((v712 >> (~v709 & 7)) & 1) == 0)
  {
    goto LABEL_1480;
  }

  v714 = (v710 + (v713 >> 3));
  if (v714 >= v708)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v716 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }

    else
    {
      v716 = 0;
    }
  }

  else
  {
    v715 = *v714 >> (~v713 & 7);
    v713 = v709 + 2;
    v2076 = v709 + 2;
    v716 = v715 << 7;
  }

  v1378 = (v710 + (v713 >> 3));
  if (v1378 >= v708)
  {
    v1380 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1380 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1379 = *v1378 >> (~v713++ & 7);
    v2076 = v713;
    v1380 = (v1379 & 1) << 6;
  }

  v1381 = v1380 | v716;
  v1382 = (v710 + (v713 >> 3));
  if (v1382 >= v708)
  {
    v1384 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1384 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1383 = *v1382 >> (~v713++ & 7);
    v2076 = v713;
    v1384 = 32 * (v1383 & 1);
  }

  v1385 = v1384 | v1381;
  v1386 = (v710 + (v713 >> 3));
  if (v1386 >= v708)
  {
    v1388 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1388 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1387 = *v1386 >> (~v713++ & 7);
    v2076 = v713;
    v1388 = 16 * (v1387 & 1);
  }

  v1389 = v1388 | v1385;
  v1390 = (v710 + (v713 >> 3));
  if (v1390 >= v708)
  {
    v1392 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1392 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1391 = *v1390 >> (~v713++ & 7);
    v2076 = v713;
    v1392 = 8 * (v1391 & 1);
  }

  v1393 = v1392 | v1389;
  v1394 = (v710 + (v713 >> 3));
  if (v1394 >= v708)
  {
    v1396 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1396 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1395 = *v1394 >> (~v713++ & 7);
    v2076 = v713;
    v1396 = 4 * (v1395 & 1);
  }

  v1397 = v1396 | v1393;
  v1398 = (v710 + (v713 >> 3));
  if (v1398 >= v708)
  {
    v1400 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1400 = 0;
      v708 = v2075;
      v713 = v2076;
      v710 = v2074;
    }
  }

  else
  {
    v1399 = *v1398 >> (~v713++ & 7);
    v2076 = v713;
    v1400 = 2 * (v1399 & 1);
  }

  v1401 = v1400 | v1397;
  v1402 = (v710 + (v713 >> 3));
  if (v1402 >= v708)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    LOBYTE(v1403) = 0;
  }

  else
  {
    v1403 = (*v1402 >> (~v713 & 7)) & 1;
    v2076 = v713 + 1;
  }

  *(v435 + 38) = v1403 | v1401;
  v1369 = v2075;
  v1370 = v2076;
  v1371 = v2074;
  v1372 = &v2074[v2076 >> 3];
  if (v1372 >= v2075)
  {
    goto LABEL_1517;
  }

LABEL_1481:
  v1373 = *v1372;
  v1374 = v1370 + 1;
  v2076 = v1370 + 1;
  if ((v1373 >> (~v1370 & 7)))
  {
    v1375 = (v1371 + (v1374 >> 3));
    if (v1375 >= v1369)
    {
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1377 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }

      else
      {
        v1377 = 0;
      }
    }

    else
    {
      v1376 = *v1375 >> (~v1374 & 7);
      v1374 = v1370 + 2;
      v2076 = v1370 + 2;
      v1377 = v1376 << 7;
    }

    v1443 = (v1371 + (v1374 >> 3));
    if (v1443 >= v1369)
    {
      v1445 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1445 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1444 = *v1443 >> (~v1374++ & 7);
      v2076 = v1374;
      v1445 = (v1444 & 1) << 6;
    }

    v1446 = v1445 | v1377;
    v1447 = (v1371 + (v1374 >> 3));
    if (v1447 >= v1369)
    {
      v1449 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1449 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1448 = *v1447 >> (~v1374++ & 7);
      v2076 = v1374;
      v1449 = 32 * (v1448 & 1);
    }

    v1450 = v1449 | v1446;
    v1451 = (v1371 + (v1374 >> 3));
    if (v1451 >= v1369)
    {
      v1453 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1453 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1452 = *v1451 >> (~v1374++ & 7);
      v2076 = v1374;
      v1453 = 16 * (v1452 & 1);
    }

    v1454 = v1453 | v1450;
    v1455 = (v1371 + (v1374 >> 3));
    if (v1455 >= v1369)
    {
      v1457 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1457 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1456 = *v1455 >> (~v1374++ & 7);
      v2076 = v1374;
      v1457 = 8 * (v1456 & 1);
    }

    v1458 = v1457 | v1454;
    v1459 = (v1371 + (v1374 >> 3));
    if (v1459 >= v1369)
    {
      v1461 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1461 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1460 = *v1459 >> (~v1374++ & 7);
      v2076 = v1374;
      v1461 = 4 * (v1460 & 1);
    }

    v1462 = v1461 | v1458;
    v1463 = (v1371 + (v1374 >> 3));
    if (v1463 >= v1369)
    {
      v1465 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1465 = 0;
        v1369 = v2075;
        v1374 = v2076;
        v1371 = v2074;
      }
    }

    else
    {
      v1464 = *v1463 >> (~v1374++ & 7);
      v2076 = v1374;
      v1465 = 2 * (v1464 & 1);
    }

    v1466 = v1465 | v1462;
    v1467 = (v1371 + (v1374 >> 3));
    if (v1467 >= v1369)
    {
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

      LOBYTE(v1468) = 0;
    }

    else
    {
      v1468 = (*v1467 >> (~v1374 & 7)) & 1;
      v2076 = v1374 + 1;
    }

    *(v435 + 39) = v1468 | v1466;
    v1404 = v2075;
    v1405 = v2076;
    v1406 = v2074;
    v1407 = &v2074[v2076 >> 3];
    if (v1407 >= v2075)
    {
LABEL_1591:
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

LABEL_1593:
      *(v435 + 40) = -1;
      v1469 = v2075;
      v1470 = v2076;
      v1471 = v2074;
      v1472 = &v2074[v2076 >> 3];
      if (v1472 < v2075)
      {
        goto LABEL_1594;
      }

LABEL_1630:
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

      goto LABEL_1632;
    }
  }

  else
  {
LABEL_1519:
    *(v435 + 39) = -1;
    v1404 = v2075;
    v1405 = v2076;
    v1406 = v2074;
    v1407 = &v2074[v2076 >> 3];
    if (v1407 >= v2075)
    {
      goto LABEL_1591;
    }
  }

  v1408 = *v1407;
  v1409 = v1405 + 1;
  v2076 = v1405 + 1;
  if (((v1408 >> (~v1405 & 7)) & 1) == 0)
  {
    goto LABEL_1593;
  }

  v1410 = (v1406 + (v1409 >> 3));
  if (v1410 >= v1404)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1412 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }

    else
    {
      v1412 = 0;
    }
  }

  else
  {
    v1411 = *v1410 >> (~v1409 & 7);
    v1409 = v1405 + 2;
    v2076 = v1405 + 2;
    v1412 = v1411 << 7;
  }

  v1478 = (v1406 + (v1409 >> 3));
  if (v1478 >= v1404)
  {
    v1480 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1480 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1479 = *v1478 >> (~v1409++ & 7);
    v2076 = v1409;
    v1480 = (v1479 & 1) << 6;
  }

  v1481 = v1480 | v1412;
  v1482 = (v1406 + (v1409 >> 3));
  if (v1482 >= v1404)
  {
    v1484 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1484 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1483 = *v1482 >> (~v1409++ & 7);
    v2076 = v1409;
    v1484 = 32 * (v1483 & 1);
  }

  v1485 = v1484 | v1481;
  v1486 = (v1406 + (v1409 >> 3));
  if (v1486 >= v1404)
  {
    v1488 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1488 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1487 = *v1486 >> (~v1409++ & 7);
    v2076 = v1409;
    v1488 = 16 * (v1487 & 1);
  }

  v1489 = v1488 | v1485;
  v1490 = (v1406 + (v1409 >> 3));
  if (v1490 >= v1404)
  {
    v1492 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1492 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1491 = *v1490 >> (~v1409++ & 7);
    v2076 = v1409;
    v1492 = 8 * (v1491 & 1);
  }

  v1493 = v1492 | v1489;
  v1494 = (v1406 + (v1409 >> 3));
  if (v1494 >= v1404)
  {
    v1496 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1496 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1495 = *v1494 >> (~v1409++ & 7);
    v2076 = v1409;
    v1496 = 4 * (v1495 & 1);
  }

  v1497 = v1496 | v1493;
  v1498 = (v1406 + (v1409 >> 3));
  if (v1498 >= v1404)
  {
    v1500 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1500 = 0;
      v1404 = v2075;
      v1409 = v2076;
      v1406 = v2074;
    }
  }

  else
  {
    v1499 = *v1498 >> (~v1409++ & 7);
    v2076 = v1409;
    v1500 = 2 * (v1499 & 1);
  }

  v1501 = v1500 | v1497;
  v1502 = (v1406 + (v1409 >> 3));
  if (v1502 >= v1404)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    LOBYTE(v1503) = 0;
  }

  else
  {
    v1503 = (*v1502 >> (~v1409 & 7)) & 1;
    v2076 = v1409 + 1;
  }

  *(v435 + 40) = v1503 | v1501;
  v1469 = v2075;
  v1470 = v2076;
  v1471 = v2074;
  v1472 = &v2074[v2076 >> 3];
  if (v1472 >= v2075)
  {
    goto LABEL_1630;
  }

LABEL_1594:
  v1473 = *v1472;
  v1474 = v1470 + 1;
  v2076 = v1470 + 1;
  if ((v1473 >> (~v1470 & 7)))
  {
    v1475 = (v1471 + (v1474 >> 3));
    if (v1475 >= v1469)
    {
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1477 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }

      else
      {
        v1477 = 0;
      }
    }

    else
    {
      v1476 = *v1475 >> (~v1474 & 7);
      v1474 = v1470 + 2;
      v2076 = v1470 + 2;
      v1477 = v1476 << 7;
    }

    v1543 = (v1471 + (v1474 >> 3));
    if (v1543 >= v1469)
    {
      v1545 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1545 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1544 = *v1543 >> (~v1474++ & 7);
      v2076 = v1474;
      v1545 = (v1544 & 1) << 6;
    }

    v1546 = v1545 | v1477;
    v1547 = (v1471 + (v1474 >> 3));
    if (v1547 >= v1469)
    {
      v1549 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1549 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1548 = *v1547 >> (~v1474++ & 7);
      v2076 = v1474;
      v1549 = 32 * (v1548 & 1);
    }

    v1550 = v1549 | v1546;
    v1551 = (v1471 + (v1474 >> 3));
    if (v1551 >= v1469)
    {
      v1553 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1553 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1552 = *v1551 >> (~v1474++ & 7);
      v2076 = v1474;
      v1553 = 16 * (v1552 & 1);
    }

    v1554 = v1553 | v1550;
    v1555 = (v1471 + (v1474 >> 3));
    if (v1555 >= v1469)
    {
      v1557 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1557 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1556 = *v1555 >> (~v1474++ & 7);
      v2076 = v1474;
      v1557 = 8 * (v1556 & 1);
    }

    v1558 = v1557 | v1554;
    v1559 = (v1471 + (v1474 >> 3));
    if (v1559 >= v1469)
    {
      v1561 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1561 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1560 = *v1559 >> (~v1474++ & 7);
      v2076 = v1474;
      v1561 = 4 * (v1560 & 1);
    }

    v1562 = v1561 | v1558;
    v1563 = (v1471 + (v1474 >> 3));
    if (v1563 >= v1469)
    {
      v1565 = v2078;
      if (v2078)
      {
        (v2078)(v2077, v382);
        v1565 = 0;
        v1469 = v2075;
        v1474 = v2076;
        v1471 = v2074;
      }
    }

    else
    {
      v1564 = *v1563 >> (~v1474++ & 7);
      v2076 = v1474;
      v1565 = 2 * (v1564 & 1);
    }

    v1566 = v1565 | v1562;
    v1567 = (v1471 + (v1474 >> 3));
    if (v1567 >= v1469)
    {
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

      LOBYTE(v1568) = 0;
    }

    else
    {
      v1568 = (*v1567 >> (~v1474 & 7)) & 1;
      v2076 = v1474 + 1;
    }

    *(v435 + 41) = v1568 | v1566;
    v1504 = v2075;
    v1505 = v2076;
    v1506 = v2074;
    v1507 = &v2074[v2076 >> 3];
    if (v1507 >= v2075)
    {
LABEL_1704:
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

LABEL_1706:
      *(v435 + 42) = -1;
      v1569 = v2075;
      v1570 = v2076;
      v1571 = v2074;
      v1572 = &v2074[v2076 >> 3];
      if (v1572 < v2075)
      {
        goto LABEL_1707;
      }

LABEL_1743:
      if (v2078)
      {
        (v2078)(v2077, v382);
      }

      goto LABEL_1745;
    }
  }

  else
  {
LABEL_1632:
    *(v435 + 41) = -1;
    v1504 = v2075;
    v1505 = v2076;
    v1506 = v2074;
    v1507 = &v2074[v2076 >> 3];
    if (v1507 >= v2075)
    {
      goto LABEL_1704;
    }
  }

  v1508 = *v1507;
  v1509 = v1505 + 1;
  v2076 = v1505 + 1;
  if (((v1508 >> (~v1505 & 7)) & 1) == 0)
  {
    goto LABEL_1706;
  }

  v1510 = (v1506 + (v1509 >> 3));
  if (v1510 >= v1504)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1512 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }

    else
    {
      v1512 = 0;
    }
  }

  else
  {
    v1511 = *v1510 >> (~v1509 & 7);
    v1509 = v1505 + 2;
    v2076 = v1505 + 2;
    v1512 = v1511 << 7;
  }

  v1578 = (v1506 + (v1509 >> 3));
  if (v1578 >= v1504)
  {
    v1580 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1580 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1579 = *v1578 >> (~v1509++ & 7);
    v2076 = v1509;
    v1580 = (v1579 & 1) << 6;
  }

  v1581 = v1580 | v1512;
  v1582 = (v1506 + (v1509 >> 3));
  if (v1582 >= v1504)
  {
    v1584 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1584 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1583 = *v1582 >> (~v1509++ & 7);
    v2076 = v1509;
    v1584 = 32 * (v1583 & 1);
  }

  v1585 = v1584 | v1581;
  v1586 = (v1506 + (v1509 >> 3));
  if (v1586 >= v1504)
  {
    v1588 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1588 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1587 = *v1586 >> (~v1509++ & 7);
    v2076 = v1509;
    v1588 = 16 * (v1587 & 1);
  }

  v1589 = v1588 | v1585;
  v1590 = (v1506 + (v1509 >> 3));
  if (v1590 >= v1504)
  {
    v1592 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1592 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1591 = *v1590 >> (~v1509++ & 7);
    v2076 = v1509;
    v1592 = 8 * (v1591 & 1);
  }

  v1593 = v1592 | v1589;
  v1594 = (v1506 + (v1509 >> 3));
  if (v1594 >= v1504)
  {
    v1596 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1596 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1595 = *v1594 >> (~v1509++ & 7);
    v2076 = v1509;
    v1596 = 4 * (v1595 & 1);
  }

  v1597 = v1596 | v1593;
  v1598 = (v1506 + (v1509 >> 3));
  if (v1598 >= v1504)
  {
    v1600 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1600 = 0;
      v1504 = v2075;
      v1509 = v2076;
      v1506 = v2074;
    }
  }

  else
  {
    v1599 = *v1598 >> (~v1509++ & 7);
    v2076 = v1509;
    v1600 = 2 * (v1599 & 1);
  }

  v1601 = v1600 | v1597;
  v1602 = (v1506 + (v1509 >> 3));
  if (v1602 >= v1504)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    LOBYTE(v1603) = 0;
  }

  else
  {
    v1603 = (*v1602 >> (~v1509 & 7)) & 1;
    v2076 = v1509 + 1;
  }

  *(v435 + 42) = v1603 | v1601;
  v1569 = v2075;
  v1570 = v2076;
  v1571 = v2074;
  v1572 = &v2074[v2076 >> 3];
  if (v1572 >= v2075)
  {
    goto LABEL_1743;
  }

LABEL_1707:
  v1573 = *v1572;
  v1574 = v1570 + 1;
  v2076 = v1570 + 1;
  if (((v1573 >> (~v1570 & 7)) & 1) == 0)
  {
LABEL_1745:
    *(v435 + 43) = -1;
    v1604 = v2075;
    v1605 = v2076;
    v1606 = v2074;
    v1607 = &v2074[v2076 >> 3];
    if (v1607 >= v2075)
    {
      goto LABEL_1820;
    }

LABEL_1746:
    v1608 = *v1607 >> (~v1605 & 7);
    v1609 = v1605 + 1;
    v2076 = v1605 + 1;
    *(v435 + 36) = v1608 & 1;
    v1610 = (v435 + 44);
    if ((v1608 & 1) == 0)
    {
      goto LABEL_1823;
    }

    v1611 = (v1606 + (v1609 >> 3));
    if (v1611 >= v1604)
    {
      if (v2078)
      {
        (v2078)(v2077, v382);
      }
    }

    else
    {
      v1612 = ~v1609 & 7;
      v1613 = *v1611;
      v1614 = v1605 + 2;
      v2076 = v1605 + 2;
      if ((v1613 >> v1612))
      {
        v1615 = (v1606 + (v1614 >> 3));
        if (v1615 >= v1604)
        {
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1617 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }

          else
          {
            v1617 = 0;
          }
        }

        else
        {
          v1616 = *v1615 >> (~v1614 & 7);
          v1614 = v1605 + 3;
          v2076 = v1605 + 3;
          v1617 = v1616 << 7;
        }

        v1726 = (v1606 + (v1614 >> 3));
        if (v1726 >= v1604)
        {
          v1728 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1728 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1727 = *v1726 >> (~v1614++ & 7);
          v2076 = v1614;
          v1728 = (v1727 & 1) << 6;
        }

        v1729 = v1728 | v1617;
        v1730 = (v1606 + (v1614 >> 3));
        if (v1730 >= v1604)
        {
          v1732 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1732 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1731 = *v1730 >> (~v1614++ & 7);
          v2076 = v1614;
          v1732 = 32 * (v1731 & 1);
        }

        v1733 = v1732 | v1729;
        v1734 = (v1606 + (v1614 >> 3));
        if (v1734 >= v1604)
        {
          v1736 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1736 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1735 = *v1734 >> (~v1614++ & 7);
          v2076 = v1614;
          v1736 = 16 * (v1735 & 1);
        }

        v1737 = v1736 | v1733;
        v1738 = (v1606 + (v1614 >> 3));
        if (v1738 >= v1604)
        {
          v1740 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1740 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1739 = *v1738 >> (~v1614++ & 7);
          v2076 = v1614;
          v1740 = 8 * (v1739 & 1);
        }

        v1741 = v1740 | v1737;
        v1742 = (v1606 + (v1614 >> 3));
        if (v1742 >= v1604)
        {
          v1744 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1744 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1743 = *v1742 >> (~v1614++ & 7);
          v2076 = v1614;
          v1744 = 4 * (v1743 & 1);
        }

        v1745 = v1744 | v1741;
        v1746 = (v1606 + (v1614 >> 3));
        if (v1746 >= v1604)
        {
          v1748 = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            v1748 = 0;
            v1604 = v2075;
            v1614 = v2076;
            v1606 = v2074;
          }
        }

        else
        {
          v1747 = *v1746 >> (~v1614++ & 7);
          v2076 = v1614;
          v1748 = 2 * (v1747 & 1);
        }

        v1749 = v1748 | v1745;
        v1750 = (v1606 + (v1614 >> 3));
        if (v1750 >= v1604)
        {
          LOBYTE(v1751) = v2078;
          if (v2078)
          {
            (v2078)(v2077, v382);
            LOBYTE(v1751) = 0;
          }
        }

        else
        {
          v1751 = (*v1750 >> (~v1614 & 7)) & 1;
          v2076 = v1614 + 1;
        }

        v1618 = v1751 | v1749;
LABEL_1918:
        *v1610 = v1618;
        v1752 = v2075;
        v1753 = v2076;
        v1754 = v2074;
        v1755 = &v2074[v2076 >> 3];
        if (v1755 >= v2075)
        {
          v529 = v9 + 18880;
          if (v2078)
          {
            (v2078)(v2077, v382);
          }
        }

        else
        {
          v1756 = *v1755;
          v1757 = ++v2076;
          v529 = v9 + 18880;
          if ((v1756 >> (~v1753 & 7)))
          {
            v1758 = &v2074[v1757 >> 3];
            if (v1758 >= v2075)
            {
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1760 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }

              else
              {
                v1760 = 0;
              }
            }

            else
            {
              v1759 = *v1758 >> (~v1757 & 7);
              v1757 = v1753 + 2;
              v2076 = v1753 + 2;
              v1760 = v1759 << 7;
            }

            v1762 = (v1754 + (v1757 >> 3));
            if (v1762 >= v1752)
            {
              v1764 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1764 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1763 = *v1762 >> (~v1757++ & 7);
              v2076 = v1757;
              v1764 = (v1763 & 1) << 6;
            }

            v1765 = v1764 | v1760;
            v1766 = (v1754 + (v1757 >> 3));
            if (v1766 >= v1752)
            {
              v1768 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1768 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1767 = *v1766 >> (~v1757++ & 7);
              v2076 = v1757;
              v1768 = 32 * (v1767 & 1);
            }

            v1769 = v1768 | v1765;
            v1770 = (v1754 + (v1757 >> 3));
            if (v1770 >= v1752)
            {
              v1772 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1772 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1771 = *v1770 >> (~v1757++ & 7);
              v2076 = v1757;
              v1772 = 16 * (v1771 & 1);
            }

            v1773 = v1772 | v1769;
            v1774 = (v1754 + (v1757 >> 3));
            if (v1774 >= v1752)
            {
              v1776 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1776 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1775 = *v1774 >> (~v1757++ & 7);
              v2076 = v1757;
              v1776 = 8 * (v1775 & 1);
            }

            v1777 = v1776 | v1773;
            v1778 = (v1754 + (v1757 >> 3));
            if (v1778 >= v1752)
            {
              v1780 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1780 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1779 = *v1778 >> (~v1757++ & 7);
              v2076 = v1757;
              v1780 = 4 * (v1779 & 1);
            }

            v1781 = v1780 | v1777;
            v1782 = (v1754 + (v1757 >> 3));
            if (v1782 >= v1752)
            {
              v1784 = v2078;
              if (v2078)
              {
                (v2078)(v2077, v382);
                v1784 = 0;
                v1752 = v2075;
                v1757 = v2076;
                v1754 = v2074;
              }
            }

            else
            {
              v1783 = *v1782 >> (~v1757++ & 7);
              v2076 = v1757;
              v1784 = 2 * (v1783 & 1);
            }

            v1785 = v1784 | v1781;
            v1786 = (v1754 + (v1757 >> 3));
            if (v1786 >= v1752)
            {
              if (v2078)
              {
                (v2078)(v2077, v382);
              }

              LOBYTE(v1787) = 0;
            }

            else
            {
              v1787 = (*v1786 >> (~v1757 & 7)) & 1;
              v2076 = v1757 + 1;
            }

            v1761 = v1787 | v1785;
            v529 = v9 + 18880;
LABEL_1958:
            *(v435 + 45) = v1761;
            v1788 = v2075;
            v1789 = v2076;
            v1790 = v2074;
            v1791 = &v2074[v2076 >> 3];
            if (v1791 >= v2075)
            {
              if (v2078)
              {
                (v2078)(v2077, v382);
              }
            }

            else
            {
              v1792 = *v1791;
              v1793 = ++v2076;
              if ((v1792 >> (~v1789 & 7)))
              {
                v1794 = &v2074[v1793 >> 3];
                if (v1794 >= v2075)
                {
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1796 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }

                  else
                  {
                    v1796 = 0;
                  }
                }

                else
                {
                  v1795 = *v1794 >> (~v1793 & 7);
                  v1793 = v1789 + 2;
                  v2076 = v1789 + 2;
                  v1796 = v1795 << 7;
                }

                v1798 = (v1790 + (v1793 >> 3));
                if (v1798 >= v1788)
                {
                  v1800 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1800 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1799 = *v1798 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1800 = (v1799 & 1) << 6;
                }

                v1801 = v1800 | v1796;
                v1802 = (v1790 + (v1793 >> 3));
                if (v1802 >= v1788)
                {
                  v1804 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1804 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1803 = *v1802 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1804 = 32 * (v1803 & 1);
                }

                v1805 = v1804 | v1801;
                v1806 = (v1790 + (v1793 >> 3));
                if (v1806 >= v1788)
                {
                  v1808 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1808 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1807 = *v1806 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1808 = 16 * (v1807 & 1);
                }

                v1809 = v1808 | v1805;
                v1810 = (v1790 + (v1793 >> 3));
                if (v1810 >= v1788)
                {
                  v1812 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1812 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1811 = *v1810 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1812 = 8 * (v1811 & 1);
                }

                v1813 = v1812 | v1809;
                v1814 = (v1790 + (v1793 >> 3));
                if (v1814 >= v1788)
                {
                  v1816 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1816 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1815 = *v1814 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1816 = 4 * (v1815 & 1);
                }

                v1817 = v1816 | v1813;
                v1818 = (v1790 + (v1793 >> 3));
                if (v1818 >= v1788)
                {
                  v1820 = v2078;
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                    v1820 = 0;
                    v1788 = v2075;
                    v1793 = v2076;
                    v1790 = v2074;
                  }
                }

                else
                {
                  v1819 = *v1818 >> (~v1793++ & 7);
                  v2076 = v1793;
                  v1820 = 2 * (v1819 & 1);
                }

                v1821 = v1820 | v1817;
                v1822 = (v1790 + (v1793 >> 3));
                if (v1822 >= v1788)
                {
                  if (v2078)
                  {
                    (v2078)(v2077, v382);
                  }

                  LOBYTE(v1823) = 0;
                }

                else
                {
                  v1823 = (*v1822 >> (~v1793 & 7)) & 1;
                  v2076 = v1793 + 1;
                }

                v1797 = v1823 | v1821;
                v529 = v9 + 18880;
                goto LABEL_1998;
              }
            }

            v1797 = -1;
LABEL_1998:
            *(v435 + 46) = v1797;
            goto LABEL_1999;
          }
        }

        v1761 = -1;
        goto LABEL_1958;
      }
    }

    v1618 = -1;
    goto LABEL_1918;
  }

  v1575 = (v1571 + (v1574 >> 3));
  if (v1575 >= v1569)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1577 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }

    else
    {
      v1577 = 0;
    }
  }

  else
  {
    v1576 = *v1575 >> (~v1574 & 7);
    v1574 = v1570 + 2;
    v2076 = v1570 + 2;
    v1577 = v1576 << 7;
  }

  v1649 = (v1571 + (v1574 >> 3));
  if (v1649 >= v1569)
  {
    v1651 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1651 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1650 = *v1649 >> (~v1574++ & 7);
    v2076 = v1574;
    v1651 = (v1650 & 1) << 6;
  }

  v1652 = v1651 | v1577;
  v1653 = (v1571 + (v1574 >> 3));
  if (v1653 >= v1569)
  {
    v1655 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1655 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1654 = *v1653 >> (~v1574++ & 7);
    v2076 = v1574;
    v1655 = 32 * (v1654 & 1);
  }

  v1656 = v1655 | v1652;
  v1657 = (v1571 + (v1574 >> 3));
  if (v1657 >= v1569)
  {
    v1659 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1659 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1658 = *v1657 >> (~v1574++ & 7);
    v2076 = v1574;
    v1659 = 16 * (v1658 & 1);
  }

  v1660 = v1659 | v1656;
  v1661 = (v1571 + (v1574 >> 3));
  if (v1661 >= v1569)
  {
    v1663 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1663 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1662 = *v1661 >> (~v1574++ & 7);
    v2076 = v1574;
    v1663 = 8 * (v1662 & 1);
  }

  v1664 = v1663 | v1660;
  v1665 = (v1571 + (v1574 >> 3));
  if (v1665 >= v1569)
  {
    v1667 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1667 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1666 = *v1665 >> (~v1574++ & 7);
    v2076 = v1574;
    v1667 = 4 * (v1666 & 1);
  }

  v1668 = v1667 | v1664;
  v1669 = (v1571 + (v1574 >> 3));
  if (v1669 >= v1569)
  {
    v1671 = v2078;
    if (v2078)
    {
      (v2078)(v2077, v382);
      v1671 = 0;
      v1569 = v2075;
      v1574 = v2076;
      v1571 = v2074;
    }
  }

  else
  {
    v1670 = *v1669 >> (~v1574++ & 7);
    v2076 = v1574;
    v1671 = 2 * (v1670 & 1);
  }

  v1672 = v1671 | v1668;
  v1673 = (v1571 + (v1574 >> 3));
  if (v1673 >= v1569)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    LOBYTE(v1674) = 0;
  }

  else
  {
    v1674 = (*v1673 >> (~v1574 & 7)) & 1;
    v2076 = v1574 + 1;
  }

  *(v435 + 43) = v1674 | v1672;
  v1604 = v2075;
  v1605 = v2076;
  v1606 = v2074;
  v1607 = &v2074[v2076 >> 3];
  if (v1607 < v2075)
  {
    goto LABEL_1746;
  }

LABEL_1820:
  if (v2078)
  {
    (v2078)(v2077, v382);
  }

  *(v435 + 36) = 0;
  v1610 = (v9 + 5444);
LABEL_1823:
  v1610[2] = -1;
  *v1610 = -1;
  v529 = v9 + 18880;
LABEL_1999:
  v2042 = v23;
  v1825 = v2075;
  v1824 = v2076;
  v1826 = v2074;
  v1827 = &v2074[v2076 >> 3];
  v2046 = v435;
  if (v1827 >= v2075)
  {
    if (v2078)
    {
      (v2078)(v2077, v382);
    }

    *(v435 + 34) = 0;
  }

  else
  {
    v1828 = *v1827 >> (~v2076 & 7);
    v1829 = ++v2076;
    *(v435 + 34) = v1828 & 1;
    if (v1828)
    {
      v1830 = (v1826 + (v1829 >> 3));
      if (v1830 >= v1825)
      {
        v1832 = v435;
        if (v2078)
        {
          (v2078)(v2077, v382);
        }

        LOBYTE(v1831) = 0;
      }

      else
      {
        v1831 = (*v1830 >> (~v1829 & 7)) & 1;
        v2076 = v1824 + 2;
        v1832 = v435;
      }

      *(v1832 + 35) = v1831;
      v382 = 0uLL;
      *(v9 + 5448) = 0u;
      *(v9 + 5464) = 0u;
      *(v9 + 5480) = 0u;
      *(v9 + 5496) = 0u;
      v1952 = (v9 + 5512);
      *(v9 + 5512) = 0u;
      *(v9 + 5528) = 0u;
      v1953 = (v9 + 5454);
      v1954 = 8;
      *(v9 + 5544) = 0;
      do
      {
        v1955 = v2075;
        v1956 = v2076;
        v1957 = v2074;
        v1958 = &v2074[v2076 >> 3];
        if (v1958 >= v2075)
        {
          if (v2078)
          {
            v2078(v2077);
          }

LABEL_2470:
          LOWORD(v1982) = 0;
          goto LABEL_2471;
        }

        v1959 = *v1958;
        v1960 = ++v2076;
        if (((v1959 >> (~v1956 & 7)) & 1) == 0)
        {
          goto LABEL_2470;
        }

        *v1952 |= 1u;
        v1961 = (v1957 + (v1960 >> 3));
        if (v1961 >= v1955)
        {
          if (v2078)
          {
            v2078(v2077);
            v2058 = 0;
            v1955 = v2075;
            v1960 = v2076;
            v1957 = v2074;
            v1963 = &v2074[v2076 >> 3];
            if (v1963 < v2075)
            {
              goto LABEL_2461;
            }
          }

          else
          {
            v2058 = 0;
            v1963 = (v1957 + (v1960 >> 3));
            if (v1963 < v1955)
            {
LABEL_2461:
              v1964 = *v1963 >> (~v1960++ & 7);
              v2076 = v1960;
              v2052 = (v1964 & 1) << 6;
              v1965 = (v1957 + (v1960 >> 3));
              if (v1965 < v1955)
              {
                goto LABEL_2462;
              }

              goto LABEL_2500;
            }
          }
        }

        else
        {
          v1962 = *v1961 >> (~v1960 & 7);
          v1960 = v1956 + 2;
          v2076 = v1956 + 2;
          v2058 = (v1962 & 1) << 7;
          v1963 = (v1957 + ((v1956 + 2) >> 3));
          if (v1963 < v1955)
          {
            goto LABEL_2461;
          }
        }

        if (v2078)
        {
          v2078(v2077);
          v2052 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1965 = &v2074[v2076 >> 3];
          if (v1965 < v2075)
          {
            goto LABEL_2462;
          }
        }

        else
        {
          v2052 = 0;
          v1965 = (v1957 + (v1960 >> 3));
          if (v1965 < v1955)
          {
LABEL_2462:
            v1966 = *v1965 >> (~v1960++ & 7);
            v2076 = v1960;
            v1967 = 32 * (v1966 & 1);
            v1968 = (v1957 + (v1960 >> 3));
            if (v1968 < v1955)
            {
              goto LABEL_2463;
            }

            goto LABEL_2502;
          }
        }

LABEL_2500:
        if (v2078)
        {
          v2078(v2077);
          v1967 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1968 = &v2074[v2076 >> 3];
          if (v1968 < v2075)
          {
            goto LABEL_2463;
          }
        }

        else
        {
          v1967 = 0;
          v1968 = (v1957 + (v1960 >> 3));
          if (v1968 < v1955)
          {
LABEL_2463:
            v1969 = *v1968 >> (~v1960++ & 7);
            v2076 = v1960;
            v1970 = 16 * (v1969 & 1);
            v1971 = (v1957 + (v1960 >> 3));
            if (v1971 < v1955)
            {
              goto LABEL_2464;
            }

            goto LABEL_2504;
          }
        }

LABEL_2502:
        if (v2078)
        {
          v2078(v2077);
          v1970 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1971 = &v2074[v2076 >> 3];
          if (v1971 < v2075)
          {
            goto LABEL_2464;
          }
        }

        else
        {
          v1970 = 0;
          v1971 = (v1957 + (v1960 >> 3));
          if (v1971 < v1955)
          {
LABEL_2464:
            v1972 = *v1971 >> (~v1960++ & 7);
            v2076 = v1960;
            v1973 = 8 * (v1972 & 1);
            v1974 = (v1957 + (v1960 >> 3));
            if (v1974 < v1955)
            {
              goto LABEL_2465;
            }

            goto LABEL_2506;
          }
        }

LABEL_2504:
        if (v2078)
        {
          v2078(v2077);
          v1973 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1974 = &v2074[v2076 >> 3];
          if (v1974 < v2075)
          {
            goto LABEL_2465;
          }
        }

        else
        {
          v1973 = 0;
          v1974 = (v1957 + (v1960 >> 3));
          if (v1974 < v1955)
          {
LABEL_2465:
            v1975 = *v1974 >> (~v1960++ & 7);
            v2076 = v1960;
            v1976 = 4 * (v1975 & 1);
            v1977 = (v1957 + (v1960 >> 3));
            if (v1977 < v1955)
            {
              goto LABEL_2466;
            }

            goto LABEL_2508;
          }
        }

LABEL_2506:
        if (v2078)
        {
          v2078(v2077);
          v1976 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1977 = &v2074[v2076 >> 3];
          if (v1977 < v2075)
          {
            goto LABEL_2466;
          }
        }

        else
        {
          v1976 = 0;
          v1977 = (v1957 + (v1960 >> 3));
          if (v1977 < v1955)
          {
LABEL_2466:
            v1978 = *v1977 >> (~v1960++ & 7);
            v2076 = v1960;
            v1979 = 2 * (v1978 & 1);
            v1980 = (v1957 + (v1960 >> 3));
            if (v1980 >= v1955)
            {
              goto LABEL_2510;
            }

            goto LABEL_2467;
          }
        }

LABEL_2508:
        if (v2078)
        {
          v2078(v2077);
          v1979 = 0;
          v1955 = v2075;
          v1960 = v2076;
          v1957 = v2074;
          v1980 = &v2074[v2076 >> 3];
          if (v1980 >= v2075)
          {
            goto LABEL_2510;
          }
        }

        else
        {
          v1979 = 0;
          v1980 = (v1957 + (v1960 >> 3));
          if (v1980 >= v1955)
          {
LABEL_2510:
            v1981 = v2078;
            if (v2078)
            {
              v2078(v2077);
              v1981 = 0;
              v1955 = v2075;
              v1960 = v2076;
              v1957 = v2074;
            }

            goto LABEL_2512;
          }
        }

LABEL_2467:
        v1981 = (*v1980 >> (~v1960++ & 7)) & 1;
        v2076 = v1960;
LABEL_2512:
        v1982 = v1981 | v1979 | v1976 | v1973 | v1970 | v1967 | v2052 | v2058;
        v2022 = (v1957 + (v1960 >> 3));
        if (v2022 >= v1955)
        {
          v31 = v2035;
          if (v2078)
          {
            v2078(v2077);
          }
        }

        else
        {
          v2023 = *v2022;
          v2076 = v1960 + 1;
          v31 = v2035;
          if ((v2023 >> (~v1960 & 7)))
          {
            v1982 = -v1982;
          }
        }

LABEL_2471:
        *(v1953 - 3) = v1982;
        v1983 = v2075;
        v1984 = v2076;
        v1985 = v2074;
        v1986 = &v2074[v2076 >> 3];
        if (v1986 >= v2075)
        {
          if (v2078)
          {
            v2078(v2077);
          }

LABEL_2482:
          LOWORD(v2006) = 0;
          goto LABEL_2483;
        }

        v1987 = *v1986;
        v1988 = ++v2076;
        if (((v1987 >> (~v1984 & 7)) & 1) == 0)
        {
          goto LABEL_2482;
        }

        *v1952 |= 2u;
        v1989 = (v1985 + (v1988 >> 3));
        if (v1989 >= v1983)
        {
          if (v2078)
          {
            v2078(v2077);
            v1991 = 0;
            v1983 = v2075;
            v1988 = v2076;
            v1985 = v2074;
            v1992 = &v2074[v2076 >> 3];
            if (v1992 < v2075)
            {
              goto LABEL_2475;
            }
          }

          else
          {
            v1991 = 0;
            v1992 = (v1985 + (v1988 >> 3));
            if (v1992 < v1983)
            {
LABEL_2475:
              v1993 = *v1992 >> (~v1988++ & 7);
              v2076 = v1988;
              v1994 = 16 * (v1993 & 1);
              v1995 = (v1985 + (v1988 >> 3));
              if (v1995 < v1983)
              {
                goto LABEL_2476;
              }

              goto LABEL_2519;
            }
          }
        }

        else
        {
          v1990 = *v1989 >> (~v1988 & 7);
          v1988 = v1984 + 2;
          v2076 = v1984 + 2;
          v1991 = 32 * (v1990 & 1);
          v1992 = (v1985 + ((v1984 + 2) >> 3));
          if (v1992 < v1983)
          {
            goto LABEL_2475;
          }
        }

        if (v2078)
        {
          v2078(v2077);
          v1994 = 0;
          v1983 = v2075;
          v1988 = v2076;
          v1985 = v2074;
          v1995 = &v2074[v2076 >> 3];
          if (v1995 < v2075)
          {
            goto LABEL_2476;
          }
        }

        else
        {
          v1994 = 0;
          v1995 = (v1985 + (v1988 >> 3));
          if (v1995 < v1983)
          {
LABEL_2476:
            v1996 = *v1995 >> (~v1988++ & 7);
            v2076 = v1988;
            v1997 = 8 * (v1996 & 1);
            v1998 = (v1985 + (v1988 >> 3));
            if (v1998 < v1983)
            {
              goto LABEL_2477;
            }

            goto LABEL_2521;
          }
        }

LABEL_2519:
        if (v2078)
        {
          v2078(v2077);
          v1997 = 0;
          v1983 = v2075;
          v1988 = v2076;
          v1985 = v2074;
          v1998 = &v2074[v2076 >> 3];
          if (v1998 < v2075)
          {
            goto LABEL_2477;
          }
        }

        else
        {
          v1997 = 0;
          v1998 = (v1985 + (v1988 >> 3));
          if (v1998 < v1983)
          {
LABEL_2477:
            v1999 = *v1998 >> (~v1988++ & 7);
            v2076 = v1988;
            v2000 = 4 * (v1999 & 1);
            v2001 = (v1985 + (v1988 >> 3));
            if (v2001 < v1983)
            {
              goto LABEL_2478;
            }

            goto LABEL_2523;
          }
        }

LABEL_2521:
        if (v2078)
        {
          v2078(v2077);
          v2000 = 0;
          v1983 = v2075;
          v1988 = v2076;
          v1985 = v2074;
          v2001 = &v2074[v2076 >> 3];
          if (v2001 < v2075)
          {
            goto LABEL_2478;
          }
        }

        else
        {
          v2000 = 0;
          v2001 = (v1985 + (v1988 >> 3));
          if (v2001 < v1983)
          {
LABEL_2478:
            v2002 = *v2001 >> (~v1988++ & 7);
            v2076 = v1988;
            v2003 = 2 * (v2002 & 1);
            v2004 = (v1985 + (v1988 >> 3));
            if (v2004 >= v1983)
            {
              goto LABEL_2525;
            }

            goto LABEL_2479;
          }
        }

LABEL_2523:
        if (v2078)
        {
          v2078(v2077);
          v2003 = 0;
          v1983 = v2075;
          v1988 = v2076;
          v1985 = v2074;
          v2004 = &v2074[v2076 >> 3];
          if (v2004 >= v2075)
          {
            goto LABEL_2525;
          }
        }

        else
        {
          v2003 = 0;
          v2004 = (v1985 + (v1988 >> 3));
          if (v2004 >= v1983)
          {
LABEL_2525:
            v2005 = v2078;
            if (v2078)
            {
              v2078(v2077);
              v2005 = 0;
              v1983 = v2075;
              v1988 = v2076;
              v1985 = v2074;
            }

            goto LABEL_2527;
          }
        }

LABEL_2479:
        v2005 = (*v2004 >> (~v1988++ & 7)) & 1;
        v2076 = v1988;
LABEL_2527:
        v2006 = v2005 | v2003 | v2000 | v1997 | v1994 | v1991;
        v2024 = (v1985 + (v1988 >> 3));
        if (v2024 >= v1983)
        {
          v31 = v2035;
          if (v2078)
          {
            v2078(v2077);
          }
        }

        else
        {
          v2025 = *v2024;
          v2076 = v1988 + 1;
          v31 = v2035;
          if ((v2025 >> (~v1988 & 7)))
          {
            v2006 = -v2006;
          }
        }

LABEL_2483:
        *(v1953 - 2) = v2006;
        v2007 = v2075;
        v2008 = v2076;
        v2009 = v2074;
        v2010 = &v2074[v2076 >> 3];
        if (v2010 >= v2075)
        {
          v2018 = v2078;
          v529 = v9 + 18880;
          if (v2078)
          {
            v2078(v2077);
            *(v1953 - 1) = 0;
            v2019 = v2076;
            v2020 = &v2074[v2076 >> 3];
            if (v2020 < v2075)
            {
              goto LABEL_2494;
            }

            goto LABEL_2490;
          }

          goto LABEL_2493;
        }

        v2011 = *v2010;
        v2012 = ++v2076;
        v529 = v9 + 18880;
        if (((v2011 >> (~v2008 & 7)) & 1) == 0)
        {
          v2018 = 0;
LABEL_2493:
          *(v1953 - 1) = v2018;
          v2019 = v2076;
          v2020 = &v2074[v2076 >> 3];
          if (v2020 < v2075)
          {
            goto LABEL_2494;
          }

          goto LABEL_2490;
        }

        *v1952 |= 4u;
        v2013 = (v2009 + (v2012 >> 3));
        if (v2013 >= v2007)
        {
          if (v2078)
          {
            v2078(v2077);
            v2015 = 0;
            v2012 = v2076;
            v2016 = &v2074[v2076 >> 3];
            if (v2016 < v2075)
            {
              goto LABEL_2487;
            }
          }

          else
          {
            v2015 = 0;
            v2016 = (v2009 + (v2012 >> 3));
            if (v2016 < v2007)
            {
LABEL_2487:
              v2017 = (*v2016 >> (~v2012 & 7)) & 1;
              v2076 = v2012 + 1;
              goto LABEL_2534;
            }
          }
        }

        else
        {
          v2014 = *v2013 >> (~v2012 & 7);
          v2012 = v2008 + 2;
          v2076 = v2008 + 2;
          v2015 = 2 * (v2014 & 1);
          v2016 = (v2009 + ((v2008 + 2) >> 3));
          if (v2016 < v2007)
          {
            goto LABEL_2487;
          }
        }

        LOWORD(v2017) = v2078;
        if (v2078)
        {
          v2078(v2077);
          LOWORD(v2017) = 0;
        }

LABEL_2534:
        v2026 = v2017 | v2015;
        v529 = v9 + 18880;
        v2027 = v2074;
        *(v1953 - 1) = v2026;
        v2019 = v2076;
        v2020 = (v2027 + (v2076 >> 3));
        if (v2020 < v2075)
        {
LABEL_2494:
          v2021 = *v2020;
          v2076 = v2019 + 1;
          if ((v2021 >> (~v2019 & 7)))
          {
            *v1952 |= 8u;
          }

          goto LABEL_2456;
        }

LABEL_2490:
        if (v2078)
        {
          v2078(v2077);
        }

LABEL_2456:
        *v1953 = 0;
        v1953 += 4;
        ++v1952;
        --v1954;
      }

      while (v1954);
    }
  }

  v524 = *(v9 + 1988);
  if (!*(v2046 + 32))
  {
    v543 = 1382;
    v544 = 2036;
    v545 = 2006;
    v546 = 2004;
    v8 = v2067;
    v23 = v2042;
    goto LABEL_589;
  }

  v1833 = *(v9 + 1988);
  v8 = v2067;
  v23 = v2042;
  if (*(v9 + 5512))
  {
    if (*(v2046 + 35) == 1)
    {
      v1834 = 0;
    }

    else
    {
      v1834 = *(v9 + 1988);
    }

    v1835 = v1834 + *(v9 + 5448);
    if (v1835 >= 0xFF)
    {
      v1836 = 255;
    }

    else
    {
      v1836 = v1834 + *(v9 + 5448);
    }

    if (v1835 >= 0)
    {
      v1833 = v1836;
    }

    else
    {
      v1833 = 0;
    }
  }

  v1837 = *(v9 + 1992);
  v1838 = v2042[3];
  switch(v1838)
  {
    case 8:
      v1839 = dc_qlookup_0;
      goto LABEL_2024;
    case 12:
      v1839 = &dc_qlookup_12;
LABEL_2024:
      if ((v1837 + v1833) >= 0xFF)
      {
        v1840 = 255;
      }

      else
      {
        v1840 = v1837 + v1833;
      }

      if (v1837 + v1833 >= 0)
      {
        v1841 = v1840;
      }

      else
      {
        v1841 = 0;
      }

      *(v9 + 2004) = v1839[v1841];
      if (v1838 != 8)
      {
        goto LABEL_2031;
      }

      v1842 = ac_qlookup_0;
      goto LABEL_2037;
    case 10:
      v1839 = &dc_qlookup_10;
      goto LABEL_2024;
  }

  *(v9 + 2004) = -1;
LABEL_2031:
  if (v1838 == 12)
  {
    v1842 = ac_qlookup_12;
LABEL_2037:
    if (v1833 >= 0xFF)
    {
      v1843 = 255;
    }

    else
    {
      v1843 = v1833;
    }

    if (v1833 < 0)
    {
      v1843 = 0;
    }

    *(v9 + 2006) = v1842[v1843];
    v1844 = *(v9 + 1996);
    if (v1838 != 8)
    {
      goto LABEL_2043;
    }

    v1845 = dc_qlookup_0;
    goto LABEL_2049;
  }

  if (v1838 == 10)
  {
    v1842 = ac_qlookup_10;
    goto LABEL_2037;
  }

  *(v9 + 2006) = -1;
  v1844 = *(v9 + 1996);
LABEL_2043:
  if (v1838 == 12)
  {
    v1845 = &dc_qlookup_12;
LABEL_2049:
    if ((v1844 + v1833) >= 0xFF)
    {
      v1846 = 255;
    }

    else
    {
      v1846 = v1844 + v1833;
    }

    if (v1844 + v1833 >= 0)
    {
      v1847 = v1846;
    }

    else
    {
      v1847 = 0;
    }

    *(v9 + 2036) = v1845[v1847];
    v1848 = *(v9 + 2000);
    if (v1838 != 8)
    {
      goto LABEL_2056;
    }

    v1849 = ac_qlookup_0;
LABEL_2062:
    v1850 = v1848 + v1833;
    if (v1850 >= 0xFF)
    {
      v1851 = 255;
    }

    else
    {
      v1851 = v1850;
    }

    if (v1850 >= 0)
    {
      v1852 = v1851;
    }

    else
    {
      v1852 = 0;
    }

    *(v9 + 2038) = v1849[v1852];
    v1853 = v524;
    if ((*(v9 + 5516) & 1) == 0)
    {
      goto LABEL_2078;
    }

LABEL_2069:
    if (*(v2046 + 35) == 1)
    {
      v1854 = 0;
    }

    else
    {
      v1854 = v524;
    }

    v1855 = v1854 + *(v9 + 5456);
    if (v1855 >= 0xFF)
    {
      v1856 = 255;
    }

    else
    {
      v1856 = v1854 + *(v9 + 5456);
    }

    if (v1855 >= 0)
    {
      v1853 = v1856;
    }

    else
    {
      v1853 = 0;
    }

    goto LABEL_2078;
  }

  if (v1838 == 10)
  {
    v1845 = &dc_qlookup_10;
    goto LABEL_2049;
  }

  *(v9 + 2036) = -1;
  v1848 = *(v9 + 2000);
LABEL_2056:
  if (v1838 == 12)
  {
    v1849 = ac_qlookup_12;
    goto LABEL_2062;
  }

  if (v1838 == 10)
  {
    v1849 = ac_qlookup_10;
    goto LABEL_2062;
  }

  *(v9 + 2038) = -1;
  v1853 = v524;
  if (*(v9 + 5516))
  {
    goto LABEL_2069;
  }

LABEL_2078:
  switch(v1838)
  {
    case 8:
      v1857 = dc_qlookup_0;
      goto LABEL_2084;
    case 12:
      v1857 = &dc_qlookup_12;
LABEL_2084:
      if ((v1853 + v1837) >= 0xFF)
      {
        v1858 = 255;
      }

      else
      {
        v1858 = v1853 + v1837;
      }

      if (v1853 + v1837 >= 0)
      {
        v1859 = v1858;
      }

      else
      {
        v1859 = 0;
      }

      *(v9 + 2008) = v1857[v1859];
      if (v1838 != 8)
      {
        goto LABEL_2091;
      }

      v1860 = ac_qlookup_0;
      goto LABEL_2099;
    case 10:
      v1857 = &dc_qlookup_10;
      goto LABEL_2084;
  }

  *(v9 + 2008) = -1;
LABEL_2091:
  if (v1838 == 12)
  {
    v1860 = ac_qlookup_12;
LABEL_2099:
    if (v1853 >= 0xFF)
    {
      v1861 = 255;
    }

    else
    {
      v1861 = v1853;
    }

    if (v1853 < 0)
    {
      v1861 = 0;
    }

    *(v9 + 2010) = v1860[v1861];
    if (v1838 != 8)
    {
      goto LABEL_2105;
    }

    v1862 = dc_qlookup_0;
    goto LABEL_2111;
  }

  if (v1838 == 10)
  {
    v1860 = ac_qlookup_10;
    goto LABEL_2099;
  }

  *(v9 + 2010) = -1;
LABEL_2105:
  if (v1838 == 12)
  {
    v1862 = &dc_qlookup_12;
LABEL_2111:
    if ((v1853 + v1844) >= 0xFF)
    {
      v1863 = 255;
    }

    else
    {
      v1863 = v1853 + v1844;
    }

    if (v1853 + v1844 >= 0)
    {
      v1864 = v1863;
    }

    else
    {
      v1864 = 0;
    }

    *(v9 + 2040) = v1862[v1864];
    if (v1838 != 8)
    {
      goto LABEL_2118;
    }

    v1865 = ac_qlookup_0;
LABEL_2124:
    v1866 = v1853 + v1848;
    if (v1866 >= 0xFF)
    {
      v1867 = 255;
    }

    else
    {
      v1867 = v1866;
    }

    if (v1866 >= 0)
    {
      v1868 = v1867;
    }

    else
    {
      v1868 = 0;
    }

    *(v9 + 2042) = v1865[v1868];
    v1869 = v524;
    if ((*(v9 + 5520) & 1) == 0)
    {
      goto LABEL_2140;
    }

LABEL_2131:
    if (*(v2046 + 35) == 1)
    {
      v1870 = 0;
    }

    else
    {
      v1870 = v524;
    }

    v1871 = v1870 + *(v9 + 5464);
    if (v1871 >= 0xFF)
    {
      v1872 = 255;
    }

    else
    {
      v1872 = v1870 + *(v9 + 5464);
    }

    if (v1871 >= 0)
    {
      v1869 = v1872;
    }

    else
    {
      v1869 = 0;
    }

    goto LABEL_2140;
  }

  if (v1838 == 10)
  {
    v1862 = &dc_qlookup_10;
    goto LABEL_2111;
  }

  *(v9 + 2040) = -1;
LABEL_2118:
  if (v1838 == 12)
  {
    v1865 = ac_qlookup_12;
    goto LABEL_2124;
  }

  if (v1838 == 10)
  {
    v1865 = ac_qlookup_10;
    goto LABEL_2124;
  }

  *(v9 + 2042) = -1;
  v1869 = v524;
  if (*(v9 + 5520))
  {
    goto LABEL_2131;
  }

LABEL_2140:
  switch(v1838)
  {
    case 8:
      v1873 = dc_qlookup_0;
      goto LABEL_2146;
    case 12:
      v1873 = &dc_qlookup_12;
LABEL_2146:
      if ((v1869 + v1837) >= 0xFF)
      {
        v1874 = 255;
      }

      else
      {
        v1874 = v1869 + v1837;
      }

      if (v1869 + v1837 >= 0)
      {
        v1875 = v1874;
      }

      else
      {
        v1875 = 0;
      }

      *(v9 + 2012) = v1873[v1875];
      if (v1838 != 8)
      {
        goto LABEL_2153;
      }

      v1876 = ac_qlookup_0;
      goto LABEL_2161;
    case 10:
      v1873 = &dc_qlookup_10;
      goto LABEL_2146;
  }

  *(v9 + 2012) = -1;
LABEL_2153:
  if (v1838 == 12)
  {
    v1876 = ac_qlookup_12;
LABEL_2161:
    if (v1869 >= 0xFF)
    {
      v1877 = 255;
    }

    else
    {
      v1877 = v1869;
    }

    if (v1869 < 0)
    {
      v1877 = 0;
    }

    *(v9 + 2014) = v1876[v1877];
    if (v1838 != 8)
    {
      goto LABEL_2167;
    }

    v1878 = dc_qlookup_0;
    goto LABEL_2173;
  }

  if (v1838 == 10)
  {
    v1876 = ac_qlookup_10;
    goto LABEL_2161;
  }

  *(v9 + 2014) = -1;
LABEL_2167:
  if (v1838 == 12)
  {
    v1878 = &dc_qlookup_12;
LABEL_2173:
    if ((v1869 + v1844) >= 0xFF)
    {
      v1879 = 255;
    }

    else
    {
      v1879 = v1869 + v1844;
    }

    if (v1869 + v1844 >= 0)
    {
      v1880 = v1879;
    }

    else
    {
      v1880 = 0;
    }

    *(v9 + 2044) = v1878[v1880];
    if (v1838 != 8)
    {
      goto LABEL_2180;
    }

    v1881 = ac_qlookup_0;
LABEL_2186:
    v1882 = v1869 + v1848;
    if (v1882 >= 0xFF)
    {
      v1883 = 255;
    }

    else
    {
      v1883 = v1882;
    }

    if (v1882 >= 0)
    {
      v1884 = v1883;
    }

    else
    {
      v1884 = 0;
    }

    *(v9 + 2046) = v1881[v1884];
    v1885 = v524;
    if ((*(v9 + 5524) & 1) == 0)
    {
      goto LABEL_2202;
    }

LABEL_2193:
    if (*(v2046 + 35) == 1)
    {
      v1886 = 0;
    }

    else
    {
      v1886 = v524;
    }

    v1887 = v1886 + *(v9 + 5472);
    if (v1887 >= 0xFF)
    {
      v1888 = 255;
    }

    else
    {
      v1888 = v1886 + *(v9 + 5472);
    }

    if (v1887 >= 0)
    {
      v1885 = v1888;
    }

    else
    {
      v1885 = 0;
    }

    goto LABEL_2202;
  }

  if (v1838 == 10)
  {
    v1878 = &dc_qlookup_10;
    goto LABEL_2173;
  }

  *(v9 + 2044) = -1;
LABEL_2180:
  if (v1838 == 12)
  {
    v1881 = ac_qlookup_12;
    goto LABEL_2186;
  }

  if (v1838 == 10)
  {
    v1881 = ac_qlookup_10;
    goto LABEL_2186;
  }

  *(v9 + 2046) = -1;
  v1885 = v524;
  if (*(v9 + 5524))
  {
    goto LABEL_2193;
  }

LABEL_2202:
  switch(v1838)
  {
    case 8:
      v1889 = dc_qlookup_0;
      goto LABEL_2208;
    case 12:
      v1889 = &dc_qlookup_12;
LABEL_2208:
      if ((v1885 + v1837) >= 0xFF)
      {
        v1890 = 255;
      }

      else
      {
        v1890 = v1885 + v1837;
      }

      if (v1885 + v1837 >= 0)
      {
        v1891 = v1890;
      }

      else
      {
        v1891 = 0;
      }

      *(v9 + 2016) = v1889[v1891];
      if (v1838 != 8)
      {
        goto LABEL_2215;
      }

      v1892 = ac_qlookup_0;
      goto LABEL_2223;
    case 10:
      v1889 = &dc_qlookup_10;
      goto LABEL_2208;
  }

  *(v9 + 2016) = -1;
LABEL_2215:
  if (v1838 == 12)
  {
    v1892 = ac_qlookup_12;
LABEL_2223:
    if (v1885 >= 0xFF)
    {
      v1893 = 255;
    }

    else
    {
      v1893 = v1885;
    }

    if (v1885 < 0)
    {
      v1893 = 0;
    }

    *(v9 + 2018) = v1892[v1893];
    if (v1838 != 8)
    {
      goto LABEL_2229;
    }

    v1894 = dc_qlookup_0;
    goto LABEL_2235;
  }

  if (v1838 == 10)
  {
    v1892 = ac_qlookup_10;
    goto LABEL_2223;
  }

  *(v9 + 2018) = -1;
LABEL_2229:
  if (v1838 == 12)
  {
    v1894 = &dc_qlookup_12;
LABEL_2235:
    if ((v1885 + v1844) >= 0xFF)
    {
      v1895 = 255;
    }

    else
    {
      v1895 = v1885 + v1844;
    }

    if (v1885 + v1844 >= 0)
    {
      v1896 = v1895;
    }

    else
    {
      v1896 = 0;
    }

    *(v9 + 2048) = v1894[v1896];
    if (v1838 != 8)
    {
      goto LABEL_2242;
    }

    v1897 = ac_qlookup_0;
LABEL_2248:
    v1898 = v1885 + v1848;
    if (v1898 >= 0xFF)
    {
      v1899 = 255;
    }

    else
    {
      v1899 = v1898;
    }

    if (v1898 >= 0)
    {
      v1900 = v1899;
    }

    else
    {
      v1900 = 0;
    }

    *(v9 + 2050) = v1897[v1900];
    v1901 = v524;
    if ((*(v9 + 5528) & 1) == 0)
    {
      goto LABEL_2264;
    }

LABEL_2255:
    if (*(v2046 + 35) == 1)
    {
      v1902 = 0;
    }

    else
    {
      v1902 = v524;
    }

    v1903 = v1902 + *(v9 + 5480);
    if (v1903 >= 0xFF)
    {
      v1904 = 255;
    }

    else
    {
      v1904 = v1902 + *(v9 + 5480);
    }

    if (v1903 >= 0)
    {
      v1901 = v1904;
    }

    else
    {
      v1901 = 0;
    }

    goto LABEL_2264;
  }

  if (v1838 == 10)
  {
    v1894 = &dc_qlookup_10;
    goto LABEL_2235;
  }

  *(v9 + 2048) = -1;
LABEL_2242:
  if (v1838 == 12)
  {
    v1897 = ac_qlookup_12;
    goto LABEL_2248;
  }

  if (v1838 == 10)
  {
    v1897 = ac_qlookup_10;
    goto LABEL_2248;
  }

  *(v9 + 2050) = -1;
  v1901 = v524;
  if (*(v9 + 5528))
  {
    goto LABEL_2255;
  }

LABEL_2264:
  switch(v1838)
  {
    case 8:
      v1905 = dc_qlookup_0;
      goto LABEL_2270;
    case 12:
      v1905 = &dc_qlookup_12;
LABEL_2270:
      if ((v1901 + v1837) >= 0xFF)
      {
        v1906 = 255;
      }

      else
      {
        v1906 = v1901 + v1837;
      }

      if (v1901 + v1837 >= 0)
      {
        v1907 = v1906;
      }

      else
      {
        v1907 = 0;
      }

      *(v9 + 2020) = v1905[v1907];
      if (v1838 != 8)
      {
        goto LABEL_2277;
      }

      v1908 = ac_qlookup_0;
      goto LABEL_2285;
    case 10:
      v1905 = &dc_qlookup_10;
      goto LABEL_2270;
  }

  *(v9 + 2020) = -1;
LABEL_2277:
  if (v1838 == 12)
  {
    v1908 = ac_qlookup_12;
LABEL_2285:
    if (v1901 >= 0xFF)
    {
      v1909 = 255;
    }

    else
    {
      v1909 = v1901;
    }

    if (v1901 < 0)
    {
      v1909 = 0;
    }

    *(v9 + 2022) = v1908[v1909];
    if (v1838 != 8)
    {
      goto LABEL_2291;
    }

    v1910 = dc_qlookup_0;
    goto LABEL_2297;
  }

  if (v1838 == 10)
  {
    v1908 = ac_qlookup_10;
    goto LABEL_2285;
  }

  *(v9 + 2022) = -1;
LABEL_2291:
  if (v1838 == 12)
  {
    v1910 = &dc_qlookup_12;
LABEL_2297:
    if ((v1901 + v1844) >= 0xFF)
    {
      v1911 = 255;
    }

    else
    {
      v1911 = v1901 + v1844;
    }

    if (v1901 + v1844 >= 0)
    {
      v1912 = v1911;
    }

    else
    {
      v1912 = 0;
    }

    *(v9 + 2052) = v1910[v1912];
    if (v1838 != 8)
    {
      goto LABEL_2304;
    }

    v1913 = ac_qlookup_0;
LABEL_2310:
    v1914 = v1901 + v1848;
    if (v1914 >= 0xFF)
    {
      v1915 = 255;
    }

    else
    {
      v1915 = v1914;
    }

    if (v1914 >= 0)
    {
      v1916 = v1915;
    }

    else
    {
      v1916 = 0;
    }

    *(v9 + 2054) = v1913[v1916];
    v1917 = v524;
    if ((*(v9 + 5532) & 1) == 0)
    {
      goto LABEL_2326;
    }

LABEL_2317:
    if (*(v2046 + 35) == 1)
    {
      v1918 = 0;
    }

    else
    {
      v1918 = v524;
    }

    v1919 = v1918 + *(v9 + 5488);
    if (v1919 >= 0xFF)
    {
      v1920 = 255;
    }

    else
    {
      v1920 = v1918 + *(v9 + 5488);
    }

    if (v1919 >= 0)
    {
      v1917 = v1920;
    }

    else
    {
      v1917 = 0;
    }

    goto LABEL_2326;
  }

  if (v1838 == 10)
  {
    v1910 = &dc_qlookup_10;
    goto LABEL_2297;
  }

  *(v9 + 2052) = -1;
LABEL_2304:
  if (v1838 == 12)
  {
    v1913 = ac_qlookup_12;
    goto LABEL_2310;
  }

  if (v1838 == 10)
  {
    v1913 = ac_qlookup_10;
    goto LABEL_2310;
  }

  *(v9 + 2054) = -1;
  v1917 = v524;
  if (*(v9 + 5532))
  {
    goto LABEL_2317;
  }

LABEL_2326:
  switch(v1838)
  {
    case 8:
      v1921 = dc_qlookup_0;
      goto LABEL_2332;
    case 12:
      v1921 = &dc_qlookup_12;
LABEL_2332:
      if ((v1917 + v1837) >= 0xFF)
      {
        v1922 = 255;
      }

      else
      {
        v1922 = v1917 + v1837;
      }

      if (v1917 + v1837 >= 0)
      {
        v1923 = v1922;
      }

      else
      {
        v1923 = 0;
      }

      *(v9 + 2024) = v1921[v1923];
      if (v1838 != 8)
      {
        goto LABEL_2339;
      }

      v1924 = ac_qlookup_0;
      goto LABEL_2347;
    case 10:
      v1921 = &dc_qlookup_10;
      goto LABEL_2332;
  }

  *(v9 + 2024) = -1;
LABEL_2339:
  if (v1838 == 12)
  {
    v1924 = ac_qlookup_12;
LABEL_2347:
    if (v1917 >= 0xFF)
    {
      v1925 = 255;
    }

    else
    {
      v1925 = v1917;
    }

    if (v1917 < 0)
    {
      v1925 = 0;
    }

    *(v9 + 2026) = v1924[v1925];
    if (v1838 != 8)
    {
      goto LABEL_2353;
    }

    v1926 = dc_qlookup_0;
    goto LABEL_2359;
  }

  if (v1838 == 10)
  {
    v1924 = ac_qlookup_10;
    goto LABEL_2347;
  }

  *(v9 + 2026) = -1;
LABEL_2353:
  if (v1838 == 12)
  {
    v1926 = &dc_qlookup_12;
LABEL_2359:
    if ((v1917 + v1844) >= 0xFF)
    {
      v1927 = 255;
    }

    else
    {
      v1927 = v1917 + v1844;
    }

    if (v1917 + v1844 >= 0)
    {
      v1928 = v1927;
    }

    else
    {
      v1928 = 0;
    }

    *(v9 + 2056) = v1926[v1928];
    if (v1838 != 8)
    {
      goto LABEL_2366;
    }

    v1929 = ac_qlookup_0;
LABEL_2372:
    v1930 = v1917 + v1848;
    if (v1930 >= 0xFF)
    {
      v1931 = 255;
    }

    else
    {
      v1931 = v1930;
    }

    if (v1930 >= 0)
    {
      v1932 = v1931;
    }

    else
    {
      v1932 = 0;
    }

    *(v9 + 2058) = v1929[v1932];
    v1933 = v524;
    if ((*(v9 + 5536) & 1) == 0)
    {
      goto LABEL_2388;
    }

LABEL_2379:
    if (*(v2046 + 35) == 1)
    {
      v1934 = 0;
    }

    else
    {
      v1934 = v524;
    }

    v1935 = v1934 + *(v9 + 5496);
    if (v1935 >= 0xFF)
    {
      v1936 = 255;
    }

    else
    {
      v1936 = v1934 + *(v9 + 5496);
    }

    if (v1935 >= 0)
    {
      v1933 = v1936;
    }

    else
    {
      v1933 = 0;
    }

    goto LABEL_2388;
  }

  if (v1838 == 10)
  {
    v1926 = &dc_qlookup_10;
    goto LABEL_2359;
  }

  *(v9 + 2056) = -1;
LABEL_2366:
  if (v1838 == 12)
  {
    v1929 = ac_qlookup_12;
    goto LABEL_2372;
  }

  if (v1838 == 10)
  {
    v1929 = ac_qlookup_10;
    goto LABEL_2372;
  }

  *(v9 + 2058) = -1;
  v1933 = v524;
  if (*(v9 + 5536))
  {
    goto LABEL_2379;
  }

LABEL_2388:
  switch(v1838)
  {
    case 8:
      v1937 = dc_qlookup_0;
      goto LABEL_2394;
    case 12:
      v1937 = &dc_qlookup_12;
LABEL_2394:
      v1938 = v1933 + v1837;
      if (v1938 >= 0xFF)
      {
        v1939 = 255;
      }

      else
      {
        v1939 = v1938;
      }

      if (v1938 >= 0)
      {
        v1940 = v1939;
      }

      else
      {
        v1940 = 0;
      }

      *(v9 + 2028) = v1937[v1940];
      if (v1838 != 8)
      {
        goto LABEL_2401;
      }

      v1941 = ac_qlookup_0;
      goto LABEL_2409;
    case 10:
      v1937 = &dc_qlookup_10;
      goto LABEL_2394;
  }

  *(v9 + 2028) = -1;
LABEL_2401:
  if (v1838 == 12)
  {
    v1941 = ac_qlookup_12;
LABEL_2409:
    if (v1933 >= 0xFF)
    {
      v1942 = 255;
    }

    else
    {
      v1942 = v1933;
    }

    if (v1933 < 0)
    {
      v1942 = 0;
    }

    *(v9 + 2030) = v1941[v1942];
    if (v1838 != 8)
    {
      goto LABEL_2415;
    }

    v1943 = dc_qlookup_0;
    goto LABEL_2421;
  }

  if (v1838 == 10)
  {
    v1941 = ac_qlookup_10;
    goto LABEL_2409;
  }

  *(v9 + 2030) = -1;
LABEL_2415:
  if (v1838 == 12)
  {
    v1943 = &dc_qlookup_12;
LABEL_2421:
    v1944 = v1933 + v1844;
    if (v1944 >= 0xFF)
    {
      v1945 = 255;
    }

    else
    {
      v1945 = v1944;
    }

    if (v1944 >= 0)
    {
      v1946 = v1945;
    }

    else
    {
      v1946 = 0;
    }

    *(v9 + 2060) = v1943[v1946];
    if (v1838 != 8)
    {
      goto LABEL_2428;
    }

    v1947 = ac_qlookup_0;
LABEL_2434:
    if ((v1933 + v1848) >= 0xFF)
    {
      v1948 = 255;
    }

    else
    {
      v1948 = v1933 + v1848;
    }

    if (v1933 + v1848 >= 0)
    {
      v1949 = v1948;
    }

    else
    {
      v1949 = 0;
    }

    *(v9 + 2062) = v1947[v1949];
    if ((*(v9 + 5540) & 1) == 0)
    {
      goto LABEL_2449;
    }

    goto LABEL_2441;
  }

  if (v1838 == 10)
  {
    v1943 = &dc_qlookup_10;
    goto LABEL_2421;
  }

  *(v9 + 2060) = -1;
LABEL_2428:
  if (v1838 == 12)
  {
    v1947 = ac_qlookup_12;
    goto LABEL_2434;
  }

  if (v1838 == 10)
  {
    v1947 = ac_qlookup_10;
    goto LABEL_2434;
  }

  *(v9 + 2062) = -1;
  if (*(v9 + 5540))
  {
LABEL_2441:
    if (*(v2046 + 35) == 1)
    {
      v524 = 0;
    }

    v1950 = v524 + *(v9 + 5504);
    if (v1950 >= 0xFF)
    {
      v1951 = 255;
    }

    else
    {
      v1951 = v1950;
    }

    if (v1950 >= 0)
    {
      v524 = v1951;
    }

    else
    {
      v524 = 0;
    }
  }

LABEL_2449:
  v543 = 1410;
  v544 = 2064;
  v545 = 2034;
  v546 = 2032;
LABEL_589:
  v547 = v23[3];
  switch(v547)
  {
    case 8:
      v548 = dc_qlookup_0;
      goto LABEL_595;
    case 12:
      v548 = &dc_qlookup_12;
LABEL_595:
      v549 = *(v9 + 1992) + v524;
      if (v549 >= 0xFF)
      {
        v550 = 255;
      }

      else
      {
        v550 = *(v9 + 1992) + v524;
      }

      if (v549 >= 0)
      {
        v551 = v550;
      }

      else
      {
        v551 = 0;
      }

      *(v9 + v546) = v548[v551];
      if (v547 != 8)
      {
        goto LABEL_602;
      }

      v552 = ac_qlookup_0;
      goto LABEL_608;
    case 10:
      v548 = &dc_qlookup_10;
      goto LABEL_595;
  }

  *(v9 + v546) = -1;
LABEL_602:
  if (v547 == 12)
  {
    v552 = ac_qlookup_12;
LABEL_608:
    if (v524 >= 0xFF)
    {
      v553 = 255;
    }

    else
    {
      v553 = v524;
    }

    if (v524 < 0)
    {
      v553 = 0;
    }

    *(v9 + v545) = v552[v553];
    v554 = *(v9 + 1996);
    if (v547 != 8)
    {
      goto LABEL_614;
    }

    v555 = dc_qlookup_0;
    goto LABEL_620;
  }

  if (v547 == 10)
  {
    v552 = ac_qlookup_10;
    goto LABEL_608;
  }

  *(v9 + v545) = -1;
  v554 = *(v9 + 1996);
LABEL_614:
  if (v547 == 12)
  {
    v555 = &dc_qlookup_12;
LABEL_620:
    v556 = v554 + v524;
    if (v556 >= 0xFF)
    {
      v557 = 255;
    }

    else
    {
      v557 = v556;
    }

    if (v556 >= 0)
    {
      v558 = v557;
    }

    else
    {
      v558 = 0;
    }

    *(v9 + v544) = v555[v558];
    v559 = *(v9 + 2000);
    if (v547 != 8)
    {
      goto LABEL_627;
    }

    v560 = ac_qlookup_0;
    goto LABEL_633;
  }

  if (v547 == 10)
  {
    v555 = &dc_qlookup_10;
    goto LABEL_620;
  }

  *(v9 + v544) = -1;
  v559 = *(v9 + 2000);
LABEL_627:
  if (v547 == 12)
  {
    v560 = ac_qlookup_12;
LABEL_633:
    v561 = v559 + v524;
    if (v561 >= 0xFF)
    {
      v562 = 255;
    }

    else
    {
      v562 = v561;
    }

    if (v561 >= 0)
    {
      v563 = v562;
    }

    else
    {
      v563 = 0;
    }

    v564 = v560[v563];
    goto LABEL_641;
  }

  if (v547 == 10)
  {
    v560 = ac_qlookup_10;
    goto LABEL_633;
  }

  v564 = -1;
LABEL_641:
  v565 = 0;
  *(v2059 + v543) = v564;
  v566 = (*(v9 + 1976) + 7) >> 3;
  do
  {
    v567 = 64 << v565++;
  }

  while (v567 < v566);
  v568 = 0;
  v569 = v565 - 1;
  do
  {
    ++v568;
  }

  while (v566 >> v568 > 3);
  v23[21] = v569;
  v570 = v565 - v568;
  if (v565 != v568)
  {
    v571 = v2074;
    v572 = v2075;
    v573 = v2076;
    while (1)
    {
      v574 = (v571 + (v573 >> 3));
      if (v574 >= v572)
      {
        break;
      }

      v575 = ~v573 & 7;
      v576 = *v574;
      v2076 = ++v573;
      if ((v576 >> v575))
      {
        v23[21] = ++v569;
        v404 = __CFADD__(v570++, 1);
        if (!v404)
        {
          continue;
        }
      }

      goto LABEL_665;
    }

    if (v2078)
    {
      (v2078)(v2077, v382);
      v569 = v23[21];
    }
  }

LABEL_665:
  if (v569 >= 7)
  {
    vpx_internal_error(v2059, 7, "Invalid number of tile columns", v382.n128_f64[0]);
  }

  v578 = v2075;
  v577 = v2076;
  v579 = v2074;
  v580 = &v2074[v2076 >> 3];
  if (v580 >= v2075)
  {
    if (v2078)
    {
      v2078(v2077);
    }

    *(v529 + 12) = 0;
  }

  else
  {
    v581 = *v580 >> (~v2076 & 7);
    v582 = ++v2076;
    *(v529 + 12) = v581 & 1;
    if (v581)
    {
      v583 = (v579 + (v582 >> 3));
      if (v583 >= v578)
      {
        if (v2078)
        {
          v2078(v2077);
          *(v529 + 12) = *(v529 + 12);
          if (*(v529 + 1816) != 1)
          {
            goto LABEL_757;
          }
        }

        else
        {
          *(v529 + 12) = 1;
          if (*(v529 + 1816) != 1)
          {
            goto LABEL_757;
          }
        }
      }

      else
      {
        v584 = (*v583 >> (~v582 & 7)) & 1;
        v2076 = v577 + 2;
        *(v529 + 12) = v584 + 1;
        if (*(v529 + 1816) != 1)
        {
          goto LABEL_757;
        }
      }

LABEL_676:
      v585 = *(v9 + 1968) + 7;
      v586 = v23[21];
      if (*(v9 + 20704))
      {
        v587 = v23;
        v588 = v585 >> 3;
        if (*(v9 + 20680) >= 2)
        {
          goto LABEL_678;
        }

LABEL_745:
        v589 = 1;
        v590 = v588 << v586;
        v591 = *(v9 + 20704);
        if (*v591 >= 1)
        {
          goto LABEL_746;
        }

LABEL_747:
        vp9_dec_free_row_mt_mem(v591);
        vp9_dec_alloc_row_mt_mem(*(v9 + 20704), v2059, v589, *(v9 + 20680), v590);
        v591 = *(v9 + 20704);
      }

      else
      {
        v592 = malloc_type_malloc(0x16FuLL, 0xD93B561uLL);
        if (v592 && (v593 = (v592 + 23) & 0xFFFFFFFFFFFFFFF0, *(v593 - 8) = v592, v593))
        {
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
          *(((v592 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
          *v593 = 0u;
          *(v9 + 20704) = v593;
        }

        else
        {
          *(v9 + 20704) = 0;
          vpx_internal_error(v2059, 2, "Failed to allocate pbi->row_mt_worker_data");
          v593 = *(v9 + 20704);
        }

        pthread_mutex_init((v593 + 256), 0);
        v587 = v23;
        v588 = v585 >> 3;
        if (*(v9 + 20680) < 2)
        {
          goto LABEL_745;
        }

LABEL_678:
        v589 = ((*(v9 + 1976) + 7) >> 3) * v588;
        v590 = v588 << v586;
        v591 = *(v9 + 20704);
        if (v589 > *v591)
        {
          goto LABEL_747;
        }

LABEL_746:
        if (v590 > *(v591 + 252))
        {
          goto LABEL_747;
        }
      }

      v621 = 12 * (((*(v9 + 1968) + 7) >> 3) + 2 * ((*(v9 + 1968) + 7) >> 3 << v587[21]));
      if (v621 > *(v591 + 240))
      {
        v622 = *(v591 + 80);
        if (v622)
        {
          free(*(v622 - 8));
        }

        if (v621 <= 0x10000000000 && (v623 = malloc_type_malloc(v621 + 23, 0xD93B561uLL)) != 0 && (v624 = (v623 + 23) & 0xFFFFFFFFFFFFFFF0, *(v624 - 8) = v623, v624))
        {
          bzero(((v623 + 23) & 0xFFFFFFFFFFFFFFF0), v621);
          *(v591 + 80) = v624;
        }

        else
        {
          *(v591 + 80) = 0;
          vpx_internal_error(v2059, 2, "Failed to allocate row_mt_worker_data->jobq_buf");
          v624 = *(v591 + 80);
        }

        pthread_mutex_init((v591 + 128), 0);
        pthread_cond_init((v591 + 192), 0);
        *(v591 + 88) = v624;
        *(v591 + 96) = v624;
        *(v591 + 104) = v624;
        *(v591 + 112) = v624 + v621;
        *(v591 + 120) = 0;
        *(v591 + 240) = v621;
      }

      goto LABEL_757;
    }
  }

  if (*(v529 + 1816) == 1)
  {
    goto LABEL_676;
  }

LABEL_757:
  v625 = 0;
  for (k = 17; k > 1; --k)
  {
    while (1)
    {
      v628 = &v2074[v2076 >> 3];
      if (v628 >= v2075)
      {
        break;
      }

      v627 = (*v628 >> (~v2076++ & 7)) & 1;
      v625 |= v627 << (k-- - 2);
      if (k <= 1)
      {
        goto LABEL_763;
      }
    }

    if (v2078)
    {
      v2078(v2077);
    }
  }

LABEL_763:
  if (v625)
  {
    v99 = v625;
  }

  else
  {
    vpx_internal_error(v2059, 7, "Invalid header size");
    v99 = 0;
  }

LABEL_766:
  v630 = *(v9 + 18888);
  v629 = *(v9 + 18892);
  v631 = *(v9 + 18904) + 224 * *(v9 + 1600) + 88;
  *(v9 + 528) = v631;
  if (!v99)
  {
    v642 = 1;
    if (*v2060 > 2u)
    {
      v642 = 2;
    }

    *v2029 = &v8[v642];
    return;
  }

  v2037 = v629;
  v632 = &v8[(v2076 + 7) >> 3];
  if (v99 - 1 >= (v31 - v632))
  {
    vpx_internal_error(v2059, 7, "Truncated packet or corrupt header length");
  }

  if (!*(v9 + 18880) && *(v9 + 948) == *(v9 + 964) && *(v9 + 952) == *(v9 + 968) && !*(v9 + 1949))
  {
    v633 = *(v9 + 1940);
    if (v633)
    {
      v633 = *(v9 + 1928) != 0;
    }
  }

  else
  {
    v633 = 0;
  }

  *(v9 + 2160) = v633;
  v634 = *(v9 + 972);
  v635 = *(v9 + 976);
  *(v9 + 8) = 0;
  *(v9 + 144) = v634;
  *(v9 + 148) = v635;
  *(v9 + 280) = v634;
  *(v9 + 284) = v635;
  memcpy(*(v9 + 5560), (*(v9 + 5568) + 2044 * *(v9 + 5576)), 0x7FCuLL);
  v2053 = *(v9 + 5560);
  if (!*(v2053 + 2040))
  {
    vpx_internal_error(v2059, 7, "Uninitialized entropy context.");
    v2053 = *(v9 + 5560);
  }

  *(v9 + 632) = 0;
  v2082 = 0u;
  v2083[0] = 0u;
  v2081 = 0u;
  v2080 = 0u;
  if (vpx_reader_init(&v2080, v632, v99, *(v9 + 20664), *(v9 + 20672), 0.0, v636, v637, v638, v639, v640))
  {
    vpx_internal_error(v2059, 2, "Failed to allocate BOOL decoder 0");
  }

  v2036 = v99;
  v2033 = v632;
  v2039 = v631;
  v2030 = (v9 + 5548);
  if (*(v9 + 628))
  {
    v641 = 0;
    goto LABEL_910;
  }

  v643 = DWORD2(v2080);
  v644 = HIDWORD(v2080);
  v645 = ((DWORD2(v2080) << 7) + 128) >> 8;
  v646 = v2080;
  if ((HIDWORD(v2080) & 0x80000000) != 0)
  {
    v648 = *(&v2081 + 1);
    v649 = 8 * (v2081 - *(&v2081 + 1));
    if (v2082)
    {
      (v2082)(*(&v2082 + 1));
      v648 = v2083;
    }

    v650 = 48 - v644;
    if (v649 < 0x41)
    {
      v655 = 56 - v644 - v649;
      if (v655 < 0)
      {
        v647 = v644;
      }

      else
      {
        v647 = v644 + 0x40000000;
      }

      if (v649)
      {
        v656 = 1;
      }

      else
      {
        v656 = v655 <= -1;
      }

      if (v656 && (v657 = v655 & ~(v655 >> 31), v650 >= v657))
      {
        v658 = v657 - 1;
        if (v657 - 1 >= (40 - v644))
        {
          v658 = 40 - v644;
        }

        v659 = 47 - v644 - v658;
        v652 = v648;
        v660 = 48 - v644;
        if (v659 < 0x78)
        {
          goto LABEL_2568;
        }

        v661 = 0uLL;
        v662 = v646;
        v663 = v647;
        v664 = vdupq_n_s32(v650);
        v665 = vaddq_s32(v664, xmmword_273BC3230);
        v666 = vaddq_s32(v664, xmmword_273BC3240);
        v667 = vaddq_s32(v664, xmmword_273BC3250);
        v668 = vaddq_s32(v664, xmmword_273BC3220);
        v669 = (v659 >> 3) + 1;
        v670.i64[0] = 0x800000008;
        v670.i64[1] = 0x800000008;
        v652 = (v648 + (v669 & 0x3FFFFFF0));
        v671.i64[0] = 0x7F0000007FLL;
        v671.i64[1] = 0x7F0000007FLL;
        v660 = v650 - 8 * (v669 & 0x3FFFFFF0);
        v672 = 0uLL;
        v673 = v669 & 0x3FFFFFF0;
        v674 = 0uLL;
        v675 = v648;
        v676 = 0uLL;
        v677 = 0uLL;
        v678 = 0uLL;
        v679 = 0uLL;
        v680 = 0uLL;
        v681 = 0uLL;
        v682 = 0uLL;
        do
        {
          v683 = *v675++;
          v684 = vmovl_high_u8(v683);
          v685 = vmovl_high_u16(v684);
          v686.i64[0] = v685.u32[0];
          v686.i64[1] = v685.u32[1];
          v687 = v686;
          v688 = vmovl_u16(*v684.i8);
          v686.i64[0] = v688.u32[2];
          v686.i64[1] = v688.u32[3];
          v689 = v686;
          v690 = vmovl_u8(*v683.i8);
          v691 = vmovl_high_u16(v690);
          v686.i64[0] = v691.u32[2];
          v686.i64[1] = v691.u32[3];
          v692 = v686;
          v686.i64[0] = v685.u32[2];
          v686.i64[1] = v685.u32[3];
          v693 = v686;
          v686.i64[0] = v688.u32[0];
          v686.i64[1] = v688.u32[1];
          v694 = v686;
          v686.i64[0] = v691.u32[0];
          v686.i64[1] = v691.u32[1];
          v695 = v686;
          v696 = vmovl_u16(*v690.i8);
          v686.i64[0] = v696.u32[2];
          v686.i64[1] = v696.u32[3];
          v697 = v686;
          v686.i64[0] = v696.u32[0];
          v686.i64[1] = v696.u32[1];
          v698 = v686;
          v686.i64[0] = v668.u32[0];
          v686.i64[1] = v668.u32[1];
          v699 = vshlq_u64(v698, v686);
          v686.i64[0] = v668.u32[2];
          v686.i64[1] = v668.u32[3];
          v700 = vshlq_u64(v697, v686);
          v686.i64[0] = v667.u32[0];
          v686.i64[1] = v667.u32[1];
          v701 = vshlq_u64(v695, v686);
          v686.i64[0] = v666.u32[0];
          v686.i64[1] = v666.u32[1];
          v702 = vshlq_u64(v694, v686);
          v686.i64[0] = v665.u32[2];
          v686.i64[1] = v665.u32[3];
          v703 = vshlq_u64(v693, v686);
          v686.i64[0] = v667.u32[2];
          v686.i64[1] = v667.u32[3];
          v704 = vshlq_u64(v692, v686);
          v686.i64[0] = v666.u32[2];
          v686.i64[1] = v666.u32[3];
          v705 = vshlq_u64(v689, v686);
          v686.i64[0] = v665.u32[0];
          v686.i64[1] = v665.u32[1];
          v678 = vorrq_s8(vshlq_u64(v687, v686), v678);
          v677 = vorrq_s8(v705, v677);
          v674 = vorrq_s8(v704, v674);
          v679 = vorrq_s8(v703, v679);
          v676 = vorrq_s8(v702, v676);
          v672 = vorrq_s8(v701, v672);
          v661 = vorrq_s8(v700, v661);
          v662 = vorrq_s8(v699, v662);
          v663 = vaddq_s32(v663, v670);
          v680 = vaddq_s32(v680, v670);
          v681 = vaddq_s32(v681, v670);
          v682 = vaddq_s32(v682, v670);
          v668 = vaddq_s32(v668, v671);
          v667 = vaddq_s32(v667, v671);
          v666 = vaddq_s32(v666, v671);
          v665 = vaddq_s32(v665, v671);
          v673 -= 16;
        }

        while (v673);
        v706 = vorrq_s8(vorrq_s8(vorrq_s8(v662, v676), vorrq_s8(v672, v678)), vorrq_s8(vorrq_s8(v661, v677), vorrq_s8(v674, v679)));
        v646 = vorr_s8(*v706.i8, *&vextq_s8(v706, v706, 8uLL));
        v647 = vaddvq_s32(vaddq_s32(vaddq_s32(v663, v681), vaddq_s32(v680, v682)));
        if ((v669 & 0x3FFFFFF0) != v669)
        {
LABEL_2568:
          do
          {
            v647 += 8;
            v707 = *v652;
            v652 = (v652 + 1);
            v646 |= v707 << v660;
            v660 -= 8;
          }

          while (v660 >= v657);
        }
      }

      else
      {
        v652 = v648;
      }
    }

    else
    {
      v651 = (v650 & 0x7FFFFFF8) + 8;
      v647 = v651 + v644;
      v652 = (v648 + (v651 >> 3));
      v646 = (bswap64(*v648) >> (56 - (v650 & 0xF8u)) << (v650 & 7)) | v2080;
    }

    *(&v2081 + 1) += v652 - v648;
    v643 = DWORD2(v2080);
  }

  else
  {
    v647 = HIDWORD(v2080);
  }

  v717 = v645 << 56;
  v718 = v643 - v645;
  if (v646 < v645 << 56)
  {
    v718 = v645;
    v717 = 0;
  }

  v719 = v646 >= v645 << 56;
  v720 = 2 * v719;
  v721 = vpx_norm[v718];
  v722 = v718 << v721;
  v723 = (v646 - v717) << v721;
  *&v2080 = v723;
  v724 = ((v722 << 7) + 128) >> 8;
  v725 = v647 - v721;
  HIDWORD(v2080) = v647 - v721;
  DWORD2(v2080) = v722;
  if ((v647 - v721) < 0)
  {
    v2068 = v630;
    v726 = *(&v2081 + 1);
    v727 = 8 * (v2081 - *(&v2081 + 1));
    if (v2082)
    {
      v2047 = ((v722 << 7) + 128) >> 8;
      v2061 = 2 * v719;
      (v2082)(*(&v2082 + 1));
      v724 = v2047;
      v720 = v2061;
      v726 = v2083;
    }

    v728 = 48 - v725;
    if (v727 < 0x41)
    {
      v731 = 56 - v727 - v725;
      if (v731 >= 0)
      {
        v725 += 0x40000000;
      }

      if (v727)
      {
        v732 = 1;
      }

      else
      {
        v732 = v731 <= -1;
      }

      v733 = v731 & ~(v731 >> 31);
      if (!v732 || v728 < v733)
      {
        v730 = v726;
        LOBYTE(v630) = v2068;
      }

      else
      {
        v735 = v721 - v647 + 40;
        if (v735 >= v733 - 1)
        {
          v735 = v733 - 1;
        }

        v736 = v721 - v647 - v735 + 47;
        v730 = v726;
        v737 = v728;
        LOBYTE(v630) = v2068;
        if (v736 < 0x78)
        {
          goto LABEL_2569;
        }

        v738 = 0uLL;
        v739 = v723;
        v740 = v725;
        v741 = vdupq_n_s32(v728);
        v742 = vaddq_s32(v741, xmmword_273BC3230);
        v743 = vaddq_s32(v741, xmmword_273BC3240);
        v744 = vaddq_s32(v741, xmmword_273BC3250);
        v745 = vaddq_s32(v741, xmmword_273BC3220);
        v746 = (v736 >> 3) + 1;
        v747.i64[0] = 0x800000008;
        v747.i64[1] = 0x800000008;
        v730 = (v726 + (v746 & 0x3FFFFFF0));
        v748.i64[0] = 0x7F0000007FLL;
        v748.i64[1] = 0x7F0000007FLL;
        v737 = v728 - 8 * (v746 & 0x3FFFFFF0);
        v749 = 0uLL;
        v750 = v746 & 0x3FFFFFF0;
        v751 = 0uLL;
        v752 = v726;
        v753 = 0uLL;
        v754 = 0uLL;
        v755 = 0uLL;
        v756 = 0uLL;
        v757 = 0uLL;
        v758 = 0uLL;
        v759 = 0uLL;
        do
        {
          v760 = *v752++;
          v761 = vmovl_high_u8(v760);
          v762 = vmovl_high_u16(v761);
          v763.i64[0] = v762.u32[0];
          v763.i64[1] = v762.u32[1];
          v764 = v763;
          v765 = vmovl_u16(*v761.i8);
          v763.i64[0] = v765.u32[2];
          v763.i64[1] = v765.u32[3];
          v766 = v763;
          v767 = vmovl_u8(*v760.i8);
          v768 = vmovl_high_u16(v767);
          v763.i64[0] = v768.u32[2];
          v763.i64[1] = v768.u32[3];
          v769 = v763;
          v763.i64[0] = v762.u32[2];
          v763.i64[1] = v762.u32[3];
          v770 = v763;
          v763.i64[0] = v765.u32[0];
          v763.i64[1] = v765.u32[1];
          v771 = v763;
          v763.i64[0] = v768.u32[0];
          v763.i64[1] = v768.u32[1];
          v772 = v763;
          v773 = vmovl_u16(*v767.i8);
          v763.i64[0] = v773.u32[2];
          v763.i64[1] = v773.u32[3];
          v774 = v763;
          v763.i64[0] = v773.u32[0];
          v763.i64[1] = v773.u32[1];
          v775 = v763;
          v763.i64[0] = v745.u32[0];
          v763.i64[1] = v745.u32[1];
          v776 = vshlq_u64(v775, v763);
          v763.i64[0] = v745.u32[2];
          v763.i64[1] = v745.u32[3];
          v777 = vshlq_u64(v774, v763);
          v763.i64[0] = v744.u32[0];
          v763.i64[1] = v744.u32[1];
          v778 = vshlq_u64(v772, v763);
          v763.i64[0] = v743.u32[0];
          v763.i64[1] = v743.u32[1];
          v779 = vshlq_u64(v771, v763);
          v763.i64[0] = v742.u32[2];
          v763.i64[1] = v742.u32[3];
          v780 = vshlq_u64(v770, v763);
          v763.i64[0] = v744.u32[2];
          v763.i64[1] = v744.u32[3];
          v781 = vshlq_u64(v769, v763);
          v763.i64[0] = v743.u32[2];
          v763.i64[1] = v743.u32[3];
          v782 = vshlq_u64(v766, v763);
          v763.i64[0] = v742.u32[0];
          v763.i64[1] = v742.u32[1];
          v755 = vorrq_s8(vshlq_u64(v764, v763), v755);
          v754 = vorrq_s8(v782, v754);
          v751 = vorrq_s8(v781, v751);
          v756 = vorrq_s8(v780, v756);
          v753 = vorrq_s8(v779, v753);
          v749 = vorrq_s8(v778, v749);
          v738 = vorrq_s8(v777, v738);
          v739 = vorrq_s8(v776, v739);
          v740 = vaddq_s32(v740, v747);
          v757 = vaddq_s32(v757, v747);
          v758 = vaddq_s32(v758, v747);
          v759 = vaddq_s32(v759, v747);
          v745 = vaddq_s32(v745, v748);
          v744 = vaddq_s32(v744, v748);
          v743 = vaddq_s32(v743, v748);
          v742 = vaddq_s32(v742, v748);
          v750 -= 16;
        }

        while (v750);
        v783 = vorrq_s8(vorrq_s8(vorrq_s8(v739, v753), vorrq_s8(v749, v755)), vorrq_s8(vorrq_s8(v738, v754), vorrq_s8(v751, v756)));
        v723 = vorr_s8(*v783.i8, *&vextq_s8(v783, v783, 8uLL));
        v725 = vaddvq_s32(vaddq_s32(vaddq_s32(v740, v758), vaddq_s32(v757, v759)));
        if ((v746 & 0x3FFFFFF0) != v746)
        {
LABEL_2569:
          do
          {
            v725 += 8;
            v784 = *v730;
            v730 = (v730 + 1);
            v723 |= v784 << v737;
            v737 -= 8;
          }

          while (v737 >= v733);
        }
      }
    }

    else
    {
      v729 = (v728 & 0x7FFFFFF8) + 8;
      v725 += v729;
      v730 = (v726 + (v729 >> 3));
      v723 = (bswap64(*v726) >> (56 - (v728 & 0xF8u)) << (v728 & 7)) | v2080;
      LOBYTE(v630) = v2068;
    }

    *(&v2081 + 1) += v730 - v726;
    v722 = DWORD2(v2080);
  }

  v785 = v724 << 56;
  v786 = v722 - v724;
  if (v723 < v724 << 56)
  {
    v787 = v724;
  }

  else
  {
    v787 = v786;
  }

  if (v723 >= v724 << 56)
  {
    v641 = v720 + 1;
  }

  else
  {
    v785 = 0;
    v641 = v720;
  }

  v788 = v723 - v785;
  v789 = vpx_norm[v787];
  v790 = v787 << v789;
  v791 = v788 << v789;
  *&v2080 = v788 << v789;
  v792 = v725 - v789;
  HIDWORD(v2080) = v725 - v789;
  DWORD2(v2080) = v787 << v789;
  if (v641 == 3)
  {
    v793 = ((v790 << 7) + 128) >> 8;
    if ((v792 & 0x80000000) != 0)
    {
      v794 = *(&v2081 + 1);
      v795 = 8 * (v2081 - *(&v2081 + 1));
      if (v2082)
      {
        v2062 = 8 * (v2081 - *(&v2081 + 1));
        v2069 = ((v790 << 7) + 128) >> 8;
        (v2082)(*(&v2082 + 1));
        v795 = v2062;
        v793 = v2069;
        v794 = v2083;
      }

      v796 = 48 - v792;
      if (v795 < 0x41)
      {
        v893 = 56 - v795 - v792;
        if (v893 >= 0)
        {
          v792 += 0x40000000;
        }

        if (v795)
        {
          v894 = 1;
        }

        else
        {
          v894 = v893 <= -1;
        }

        v895 = v893 & ~(v893 >> 31);
        if (!v894 || v796 < v895)
        {
          v798 = v794;
        }

        else
        {
          v950 = v789 - v725 + 40;
          if (v950 >= v895 - 1)
          {
            v950 = v895 - 1;
          }

          v951 = v789 - v725 - v950 + 47;
          v798 = v794;
          v952 = v796;
          if (v951 < 0x78)
          {
            goto LABEL_2570;
          }

          v953 = 0uLL;
          v954 = v791;
          v955 = v792;
          v956 = vdupq_n_s32(v796);
          v957 = vaddq_s32(v956, xmmword_273BC3230);
          v958 = vaddq_s32(v956, xmmword_273BC3240);
          v959 = vaddq_s32(v956, xmmword_273BC3250);
          v960 = vaddq_s32(v956, xmmword_273BC3220);
          v961 = (v951 >> 3) + 1;
          v962.i64[0] = 0x800000008;
          v962.i64[1] = 0x800000008;
          v798 = (v794 + (v961 & 0x3FFFFFF0));
          v963.i64[0] = 0x7F0000007FLL;
          v963.i64[1] = 0x7F0000007FLL;
          v952 = v796 - 8 * (v961 & 0x3FFFFFF0);
          v964 = 0uLL;
          v965 = v961 & 0x3FFFFFF0;
          v966 = 0uLL;
          v967 = v794;
          v968 = 0uLL;
          v969 = 0uLL;
          v970 = 0uLL;
          v971 = 0uLL;
          v972 = 0uLL;
          v973 = 0uLL;
          v974 = 0uLL;
          do
          {
            v975 = *v967++;
            v976 = vmovl_high_u8(v975);
            v977 = vmovl_high_u16(v976);
            v978.i64[0] = v977.u32[0];
            v978.i64[1] = v977.u32[1];
            v979 = v978;
            v980 = vmovl_u16(*v976.i8);
            v978.i64[0] = v980.u32[2];
            v978.i64[1] = v980.u32[3];
            v981 = v978;
            v982 = vmovl_u8(*v975.i8);
            v983 = vmovl_high_u16(v982);
            v978.i64[0] = v983.u32[2];
            v978.i64[1] = v983.u32[3];
            v984 = v978;
            v978.i64[0] = v977.u32[2];
            v978.i64[1] = v977.u32[3];
            v985 = v978;
            v978.i64[0] = v980.u32[0];
            v978.i64[1] = v980.u32[1];
            v986 = v978;
            v978.i64[0] = v983.u32[0];
            v978.i64[1] = v983.u32[1];
            v987 = v978;
            v988 = vmovl_u16(*v982.i8);
            v978.i64[0] = v988.u32[2];
            v978.i64[1] = v988.u32[3];
            v989 = v978;
            v978.i64[0] = v988.u32[0];
            v978.i64[1] = v988.u32[1];
            v990 = v978;
            v978.i64[0] = v960.u32[0];
            v978.i64[1] = v960.u32[1];
            v991 = vshlq_u64(v990, v978);
            v978.i64[0] = v960.u32[2];
            v978.i64[1] = v960.u32[3];
            v992 = vshlq_u64(v989, v978);
            v978.i64[0] = v959.u32[0];
            v978.i64[1] = v959.u32[1];
            v993 = vshlq_u64(v987, v978);
            v978.i64[0] = v958.u32[0];
            v978.i64[1] = v958.u32[1];
            v994 = vshlq_u64(v986, v978);
            v978.i64[0] = v957.u32[2];
            v978.i64[1] = v957.u32[3];
            v995 = vshlq_u64(v985, v978);
            v978.i64[0] = v959.u32[2];
            v978.i64[1] = v959.u32[3];
            v996 = vshlq_u64(v984, v978);
            v978.i64[0] = v958.u32[2];
            v978.i64[1] = v958.u32[3];
            v997 = vshlq_u64(v981, v978);
            v978.i64[0] = v957.u32[0];
            v978.i64[1] = v957.u32[1];
            v970 = vorrq_s8(vshlq_u64(v979, v978), v970);
            v969 = vorrq_s8(v997, v969);
            v966 = vorrq_s8(v996, v966);
            v971 = vorrq_s8(v995, v971);
            v968 = vorrq_s8(v994, v968);
            v964 = vorrq_s8(v993, v964);
            v953 = vorrq_s8(v992, v953);
            v954 = vorrq_s8(v991, v954);
            v955 = vaddq_s32(v955, v962);
            v972 = vaddq_s32(v972, v962);
            v973 = vaddq_s32(v973, v962);
            v974 = vaddq_s32(v974, v962);
            v960 = vaddq_s32(v960, v963);
            v959 = vaddq_s32(v959, v963);
            v958 = vaddq_s32(v958, v963);
            v957 = vaddq_s32(v957, v963);
            v965 -= 16;
          }

          while (v965);
          v998 = vorrq_s8(vorrq_s8(vorrq_s8(v954, v968), vorrq_s8(v964, v970)), vorrq_s8(vorrq_s8(v953, v969), vorrq_s8(v966, v971)));
          v791 = vorr_s8(*v998.i8, *&vextq_s8(v998, v998, 8uLL));
          v792 = vaddvq_s32(vaddq_s32(vaddq_s32(v955, v973), vaddq_s32(v972, v974)));
          if ((v961 & 0x3FFFFFF0) != v961)
          {
LABEL_2570:
            do
            {
              v792 += 8;
              v999 = *v798;
              v798 = (v798 + 1);
              v791 |= v999 << v952;
              v952 -= 8;
            }

            while (v952 >= v895);
          }
        }
      }

      else
      {
        v797 = (v796 & 0x7FFFFFF8) + 8;
        v792 += v797;
        v798 = (v794 + (v797 >> 3));
        v791 = (bswap64(*v794) >> (56 - (v796 & 0xF8u)) << (v796 & 7)) | v2080;
      }

      *(&v2081 + 1) += v798 - v794;
      v790 = DWORD2(v2080);
    }

    v1000 = v793 << 56;
    v1001 = v790 - v793;
    if (v791 >= v793 << 56)
    {
      v1002 = v793 << 56;
    }

    else
    {
      v1001 = v793;
      v1002 = 0;
    }

    v1003 = vpx_norm[v1001];
    v1004 = v1001 << v1003;
    v641 = 3u;
    *&v2080 = (v791 - v1002) << v1003;
    HIDWORD(v2080) = v792 - v1003;
    DWORD2(v2080) = v1004;
    if (v791 < v1000)
    {
      v1005 = 3u;
    }

    else
    {
      v1005 = v641 + 1;
    }

    *(v9 + 1984) = v1005;
    v799 = v2053;
    if (v791 >= v1000)
    {
      vp9_diff_update_prob(&v2080, (v2053 + 1965));
      vp9_diff_update_prob(&v2080, (v2053 + 1966));
      vp9_diff_update_prob(&v2080, (v2053 + 1961));
      vp9_diff_update_prob(&v2080, (v2053 + 1962));
      vp9_diff_update_prob(&v2080, (v2053 + 1963));
      vp9_diff_update_prob(&v2080, (v2053 + 1964));
      vp9_diff_update_prob(&v2080, (v2053 + 1955));
      vp9_diff_update_prob(&v2080, (v2053 + 1956));
      vp9_diff_update_prob(&v2080, (v2053 + 1957));
      vp9_diff_update_prob(&v2080, (v2053 + 1958));
      vp9_diff_update_prob(&v2080, (v2053 + 1959));
      vp9_diff_update_prob(&v2080, (v2053 + 1960));
      v641 = *(v9 + 1984);
    }
  }

  else
  {
LABEL_910:
    *(v9 + 1984) = v641;
    v799 = v2053;
  }

  v800 = 0;
  v2031 = 1 << v630;
  v801 = tx_mode_to_biggest_tx_size[v641];
  v2063 = v2083;
  v2070 = v799 + 174;
  v802.i64[0] = 0x800000008;
  v802.i64[1] = 0x800000008;
  v803.i64[0] = 0x7F0000007FLL;
  v803.i64[1] = 0x7F0000007FLL;
  do
  {
    v804 = DWORD2(v2080);
    v805 = HIDWORD(v2080);
    v806 = v2080;
    if ((HIDWORD(v2080) & 0x80000000) != 0)
    {
      v809 = *(&v2081 + 1);
      v810 = v2081 - *(&v2081 + 1);
      if (v2082)
      {
        if (v810 >= 9)
        {
          v811 = 9;
        }

        else
        {
          v811 = v2081 - *(&v2081 + 1);
        }

        v809 = v2083;
        (v2082)(*(&v2082 + 1), *(&v2081 + 1), v2083, v811);
        v803.i64[0] = 0x7F0000007FLL;
        v803.i64[1] = 0x7F0000007FLL;
        v802.i64[0] = 0x800000008;
        v802.i64[1] = 0x800000008;
      }

      v812 = 8 * v810;
      v813 = 48 - v805;
      if (8 * v810 < 0x41)
      {
        v816 = 56 - v805 - v812;
        if (v816 < 0)
        {
          v808 = v805;
        }

        else
        {
          v808 = v805 + 0x40000000;
        }

        if (v812)
        {
          v817 = 1;
        }

        else
        {
          v817 = v816 <= -1;
        }

        v818 = v816 & ~(v816 >> 31);
        if (!v817 || v813 < v818)
        {
          v815 = v809;
        }

        else
        {
          v820 = v818 - 1;
          if (v818 - 1 >= (40 - v805))
          {
            v820 = 40 - v805;
          }

          v821 = 47 - v805 - v820;
          v815 = v809;
          v822 = 48 - v805;
          if (v821 < 0x78)
          {
            goto LABEL_2571;
          }

          v823 = (v821 >> 3) + 1;
          v824 = v806;
          v825 = 0uLL;
          v826 = v808;
          v827 = vdupq_n_s32(v813);
          v828 = vaddq_s32(v827, xmmword_273BC3230);
          v815 = (v809 + (v823 & 0x3FFFFFF0));
          v829 = vaddq_s32(v827, xmmword_273BC3240);
          v822 = v813 - 8 * (v823 & 0x3FFFFFF0);
          v830 = vaddq_s32(v827, xmmword_273BC3250);
          v831 = vaddq_s32(v827, xmmword_273BC3220);
          v832 = v823 & 0x3FFFFFF0;
          v833 = v809;
          v834 = 0uLL;
          v835 = 0uLL;
          v836 = 0uLL;
          v837 = 0uLL;
          v838 = 0uLL;
          v839 = 0uLL;
          v840 = 0uLL;
          v841 = 0uLL;
          v842 = 0uLL;
          do
          {
            v843 = *v833++;
            v844 = vmovl_high_u8(v843);
            v845 = vmovl_high_u16(v844);
            v846.i64[0] = v845.u32[0];
            v846.i64[1] = v845.u32[1];
            v847 = v846;
            v848 = vmovl_u16(*v844.i8);
            v846.i64[0] = v848.u32[2];
            v846.i64[1] = v848.u32[3];
            v849 = v846;
            v850 = vmovl_u8(*v843.i8);
            v851 = vmovl_high_u16(v850);
            v846.i64[0] = v851.u32[2];
            v846.i64[1] = v851.u32[3];
            v852 = v846;
            v846.i64[0] = v845.u32[2];
            v846.i64[1] = v845.u32[3];
            v853 = v846;
            v846.i64[0] = v848.u32[0];
            v846.i64[1] = v848.u32[1];
            v854 = v846;
            v846.i64[0] = v851.u32[0];
            v846.i64[1] = v851.u32[1];
            v855 = v846;
            v856 = vmovl_u16(*v850.i8);
            v846.i64[0] = v856.u32[2];
            v846.i64[1] = v856.u32[3];
            v857 = v846;
            v846.i64[0] = v856.u32[0];
            v846.i64[1] = v856.u32[1];
            v858 = v846;
            v846.i64[0] = v831.u32[0];
            v846.i64[1] = v831.u32[1];
            v859 = vshlq_u64(v858, v846);
            v846.i64[0] = v831.u32[2];
            v846.i64[1] = v831.u32[3];
            v860 = vshlq_u64(v857, v846);
            v846.i64[0] = v830.u32[0];
            v846.i64[1] = v830.u32[1];
            v861 = vshlq_u64(v855, v846);
            v846.i64[0] = v829.u32[0];
            v846.i64[1] = v829.u32[1];
            v862 = vshlq_u64(v854, v846);
            v846.i64[0] = v828.u32[2];
            v846.i64[1] = v828.u32[3];
            v863 = vshlq_u64(v853, v846);
            v846.i64[0] = v830.u32[2];
            v846.i64[1] = v830.u32[3];
            v864 = vshlq_u64(v852, v846);
            v846.i64[0] = v829.u32[2];
            v846.i64[1] = v829.u32[3];
            v865 = vshlq_u64(v849, v846);
            v846.i64[0] = v828.u32[0];
            v846.i64[1] = v828.u32[1];
            v838 = vorrq_s8(vshlq_u64(v847, v846), v838);
            v837 = vorrq_s8(v865, v837);
            v835 = vorrq_s8(v864, v835);
            v839 = vorrq_s8(v863, v839);
            v836 = vorrq_s8(v862, v836);
            v834 = vorrq_s8(v861, v834);
            v825 = vorrq_s8(v860, v825);
            v824 = vorrq_s8(v859, v824);
            v826 = vaddq_s32(v826, v802);
            v840 = vaddq_s32(v840, v802);
            v841 = vaddq_s32(v841, v802);
            v842 = vaddq_s32(v842, v802);
            v831 = vaddq_s32(v831, v803);
            v830 = vaddq_s32(v830, v803);
            v829 = vaddq_s32(v829, v803);
            v828 = vaddq_s32(v828, v803);
            v832 -= 16;
          }

          while (v832);
          v866 = vorrq_s8(vorrq_s8(vorrq_s8(v824, v836), vorrq_s8(v834, v838)), vorrq_s8(vorrq_s8(v825, v837), vorrq_s8(v835, v839)));
          v806 = vorr_s8(*v866.i8, *&vextq_s8(v866, v866, 8uLL));
          v808 = vaddvq_s32(vaddq_s32(vaddq_s32(v826, v841), vaddq_s32(v840, v842)));
          if ((v823 & 0x3FFFFFF0) != v823)
          {
LABEL_2571:
            do
            {
              v808 += 8;
              v867 = *v815;
              v815 = (v815 + 1);
              v806 |= v867 << v822;
              v822 -= 8;
            }

            while (v822 >= v818);
          }
        }
      }

      else
      {
        v814 = (v813 & 0x7FFFFFF8) + 8;
        v808 = v814 + v805;
        v815 = (v809 + (v814 >> 3));
        v806 = (bswap64(*v809) >> (56 - (v813 & 0xF8u)) << (v813 & 7)) | v2080;
      }

      *(&v2081 + 1) += v815 - v809;
      v807 = DWORD2(v2080);
    }

    else
    {
      v807 = DWORD2(v2080);
      v808 = HIDWORD(v2080);
    }

    v868 = ((v804 << 7) + 128) >> 8;
    v869 = v868 << 56;
    v870 = v807 - v868;
    if (v806 >= v868 << 56)
    {
      v871 = v868 << 56;
    }

    else
    {
      v870 = ((v804 << 7) + 128) >> 8;
      v871 = 0;
    }

    v872 = vpx_norm[v870];
    *&v2080 = (v806 - v871) << v872;
    HIDWORD(v2080) = v808 - v872;
    DWORD2(v2080) = v870 << v872;
    if (v806 >= v869)
    {
      v873 = 0;
      v874 = 1;
      do
      {
        v875 = 0;
        v876 = v874;
        v877 = 1;
        v878 = v2070 + 432 * v800 + 216 * v873;
        do
        {
          v879 = v877;
          v880 = (v878 + 108 * v875);
          vp9_diff_update_prob(&v2080, v880);
          vp9_diff_update_prob(&v2080, v880 + 1);
          vp9_diff_update_prob(&v2080, v880 + 2);
          vp9_diff_update_prob(&v2080, v880 + 3);
          vp9_diff_update_prob(&v2080, v880 + 4);
          vp9_diff_update_prob(&v2080, v880 + 5);
          vp9_diff_update_prob(&v2080, v880 + 6);
          vp9_diff_update_prob(&v2080, v880 + 7);
          vp9_diff_update_prob(&v2080, v880 + 8);
          vp9_diff_update_prob(&v2080, v880 + 18);
          vp9_diff_update_prob(&v2080, v880 + 19);
          vp9_diff_update_prob(&v2080, v880 + 20);
          vp9_diff_update_prob(&v2080, v880 + 21);
          vp9_diff_update_prob(&v2080, v880 + 22);
          vp9_diff_update_prob(&v2080, v880 + 23);
          vp9_diff_update_prob(&v2080, v880 + 24);
          vp9_diff_update_prob(&v2080, v880 + 25);
          vp9_diff_update_prob(&v2080, v880 + 26);
          vp9_diff_update_prob(&v2080, v880 + 27);
          vp9_diff_update_prob(&v2080, v880 + 28);
          vp9_diff_update_prob(&v2080, v880 + 29);
          vp9_diff_update_prob(&v2080, v880 + 30);
          vp9_diff_update_prob(&v2080, v880 + 31);
          vp9_diff_update_prob(&v2080, v880 + 32);
          vp9_diff_update_prob(&v2080, v880 + 33);
          vp9_diff_update_prob(&v2080, v880 + 34);
          vp9_diff_update_prob(&v2080, v880 + 35);
          vp9_diff_update_prob(&v2080, v880 + 36);
          vp9_diff_update_prob(&v2080, v880 + 37);
          vp9_diff_update_prob(&v2080, v880 + 38);
          vp9_diff_update_prob(&v2080, v880 + 39);
          vp9_diff_update_prob(&v2080, v880 + 40);
          vp9_diff_update_prob(&v2080, v880 + 41);
          vp9_diff_update_prob(&v2080, v880 + 42);
          vp9_diff_update_prob(&v2080, v880 + 43);
          vp9_diff_update_prob(&v2080, v880 + 44);
          vp9_diff_update_prob(&v2080, v880 + 45);
          vp9_diff_update_prob(&v2080, v880 + 46);
          vp9_diff_update_prob(&v2080, v880 + 47);
          vp9_diff_update_prob(&v2080, v880 + 48);
          vp9_diff_update_prob(&v2080, v880 + 49);
          vp9_diff_update_prob(&v2080, v880 + 50);
          vp9_diff_update_prob(&v2080, v880 + 51);
          vp9_diff_update_prob(&v2080, v880 + 52);
          vp9_diff_update_prob(&v2080, v880 + 53);
          vp9_diff_update_prob(&v2080, v880 + 54);
          vp9_diff_update_prob(&v2080, v880 + 55);
          vp9_diff_update_prob(&v2080, v880 + 56);
          vp9_diff_update_prob(&v2080, v880 + 57);
          vp9_diff_update_prob(&v2080, v880 + 58);
          vp9_diff_update_prob(&v2080, v880 + 59);
          vp9_diff_update_prob(&v2080, v880 + 60);
          vp9_diff_update_prob(&v2080, v880 + 61);
          vp9_diff_update_prob(&v2080, v880 + 62);
          vp9_diff_update_prob(&v2080, v880 + 63);
          vp9_diff_update_prob(&v2080, v880 + 64);
          vp9_diff_update_prob(&v2080, v880 + 65);
          vp9_diff_update_prob(&v2080, v880 + 66);
          vp9_diff_update_prob(&v2080, v880 + 67);
          vp9_diff_update_prob(&v2080, v880 + 68);
          vp9_diff_update_prob(&v2080, v880 + 69);
          vp9_diff_update_prob(&v2080, v880 + 70);
          vp9_diff_update_prob(&v2080, v880 + 71);
          vp9_diff_update_prob(&v2080, v880 + 72);
          vp9_diff_update_prob(&v2080, v880 + 73);
          vp9_diff_update_prob(&v2080, v880 + 74);
          vp9_diff_update_prob(&v2080, v880 + 75);
          vp9_diff_update_prob(&v2080, v880 + 76);
          vp9_diff_update_prob(&v2080, v880 + 77);
          vp9_diff_update_prob(&v2080, v880 + 78);
          vp9_diff_update_prob(&v2080, v880 + 79);
          vp9_diff_update_prob(&v2080, v880 + 80);
          vp9_diff_update_prob(&v2080, v880 + 81);
          vp9_diff_update_prob(&v2080, v880 + 82);
          vp9_diff_update_prob(&v2080, v880 + 83);
          vp9_diff_update_prob(&v2080, v880 + 84);
          vp9_diff_update_prob(&v2080, v880 + 85);
          vp9_diff_update_prob(&v2080, v880 + 86);
          vp9_diff_update_prob(&v2080, v880 + 87);
          vp9_diff_update_prob(&v2080, v880 + 88);
          vp9_diff_update_prob(&v2080, v880 + 89);
          vp9_diff_update_prob(&v2080, v880 + 90);
          vp9_diff_update_prob(&v2080, v880 + 91);
          vp9_diff_update_prob(&v2080, v880 + 92);
          vp9_diff_update_prob(&v2080, v880 + 93);
          vp9_diff_update_prob(&v2080, v880 + 94);
          vp9_diff_update_prob(&v2080, v880 + 95);
          vp9_diff_update_prob(&v2080, v880 + 96);
          vp9_diff_update_prob(&v2080, v880 + 97);
          vp9_diff_update_prob(&v2080, v880 + 98);
          vp9_diff_update_prob(&v2080, v880 + 99);
          vp9_diff_update_prob(&v2080, v880 + 100);
          vp9_diff_update_prob(&v2080, v880 + 101);
          vp9_diff_update_prob(&v2080, v880 + 102);
          vp9_diff_update_prob(&v2080, v880 + 103);
          vp9_diff_update_prob(&v2080, v880 + 104);
          vp9_diff_update_prob(&v2080, v880 + 105);
          vp9_diff_update_prob(&v2080, v880 + 106);
          vp9_diff_update_prob(&v2080, v880 + 107);
          v877 = 0;
          v875 = 1;
        }

        while ((v879 & 1) != 0);
        v874 = 0;
        v873 = 1;
      }

      while ((v876 & 1) != 0);
    }

    ++v800;
    v802.i64[0] = 0x800000008;
    v802.i64[1] = 0x800000008;
    v803.i64[0] = 0x7F0000007FLL;
    v803.i64[1] = 0x7F0000007FLL;
  }

  while (v801 >= v800);
  v881 = v2053;
  vp9_diff_update_prob(&v2080, (v2053 + 1967));
  vp9_diff_update_prob(&v2080, (v2053 + 1968));
  vp9_diff_update_prob(&v2080, (v2053 + 1969));
  v882 = v2037;
  if (*(v9 + 1932) && !*(v9 + 1948))
  {
    vp9_diff_update_prob(&v2080, (v2053 + 1910));
    vp9_diff_update_prob(&v2080, (v2053 + 1911));
    vp9_diff_update_prob(&v2080, (v2053 + 1912));
    vp9_diff_update_prob(&v2080, (v2053 + 1913));
    vp9_diff_update_prob(&v2080, (v2053 + 1914));
    vp9_diff_update_prob(&v2080, (v2053 + 1915));
    vp9_diff_update_prob(&v2080, (v2053 + 1916));
    vp9_diff_update_prob(&v2080, (v2053 + 1917));
    vp9_diff_update_prob(&v2080, (v2053 + 1918));
    vp9_diff_update_prob(&v2080, (v2053 + 1919));
    vp9_diff_update_prob(&v2080, (v2053 + 1920));
    vp9_diff_update_prob(&v2080, (v2053 + 1921));
    vp9_diff_update_prob(&v2080, (v2053 + 1922));
    vp9_diff_update_prob(&v2080, (v2053 + 1923));
    vp9_diff_update_prob(&v2080, (v2053 + 1924));
    vp9_diff_update_prob(&v2080, (v2053 + 1925));
    vp9_diff_update_prob(&v2080, (v2053 + 1926));
    vp9_diff_update_prob(&v2080, (v2053 + 1927));
    vp9_diff_update_prob(&v2080, (v2053 + 1928));
    vp9_diff_update_prob(&v2080, (v2053 + 1929));
    vp9_diff_update_prob(&v2080, (v2053 + 1930));
    if (*(v9 + 2212) == 4)
    {
      vp9_diff_update_prob(&v2080, (v2053 + 1902));
      vp9_diff_update_prob(&v2080, (v2053 + 1903));
      vp9_diff_update_prob(&v2080, (v2053 + 1904));
      vp9_diff_update_prob(&v2080, (v2053 + 1905));
      vp9_diff_update_prob(&v2080, (v2053 + 1906));
      vp9_diff_update_prob(&v2080, (v2053 + 1907));
      vp9_diff_update_prob(&v2080, (v2053 + 1908));
      vp9_diff_update_prob(&v2080, (v2053 + 1909));
    }

    vp9_diff_update_prob(&v2080, (v2053 + 1931));
    vp9_diff_update_prob(&v2080, (v2053 + 1932));
    vp9_diff_update_prob(&v2080, (v2053 + 1933));
    vp9_diff_update_prob(&v2080, (v2053 + 1934));
    v883 = *(v9 + 5372);
    if (v883 == *(v9 + 5368) && *(v9 + 5376) == v883)
    {
      goto LABEL_1028;
    }

    v884 = DWORD2(v2080);
    v885 = HIDWORD(v2080);
    v886 = ((DWORD2(v2080) << 7) + 128) >> 8;
    v887 = v2080;
    if ((HIDWORD(v2080) & 0x80000000) == 0)
    {
      v888 = HIDWORD(v2080);
      goto LABEL_1021;
    }

    v889 = 8 * (v2081 - *(&v2081 + 1));
    if (v2082)
    {
      (v2082)(*(&v2082 + 1));
      v890 = 48 - v885;
      if (v889 >= 0x41)
      {
        goto LABEL_961;
      }

LABEL_982:
      v897 = 56 - v885 - v889;
      v888 = v897 < 0 ? v885 : v885 + 0x40000000;
      v898 = v889 || v897 <= -1;
      v882 = v2037;
      v881 = v2053;
      if (v898 && (v899 = v897 & ~(v897 >> 31), v890 >= v899))
      {
        v900 = v899 - 1;
        if (v899 - 1 >= 40 - v885)
        {
          v900 = 40 - v885;
        }

        v901 = 47 - v885 - v900;
        v892 = v2063;
        v902 = v890;
        if (v901 < 0x78)
        {
          goto LABEL_2572;
        }

        v903 = (v901 >> 3) + 1;
        v904 = 0uLL;
        v905 = v887;
        v906 = v888;
        v907 = vdupq_n_s32(v890);
        v908 = vaddq_s32(v907, xmmword_273BC3230);
        v892 = (v2063 + (v903 & 0x3FFFFFF0));
        v909 = vaddq_s32(v907, xmmword_273BC3240);
        v902 = v890 - 8 * (v903 & 0x3FFFFFF0);
        v910 = vaddq_s32(v907, xmmword_273BC3250);
        v911 = vaddq_s32(v907, xmmword_273BC3220);
        v912.i64[0] = 0x800000008;
        v912.i64[1] = 0x800000008;
        v913.i64[0] = 0x7F0000007FLL;
        v913.i64[1] = 0x7F0000007FLL;
        v914 = v903 & 0x3FFFFFF0;
        v915 = v2063;
        v916 = 0uLL;
        v917 = 0uLL;
        v918 = 0uLL;
        v919 = 0uLL;
        v920 = 0uLL;
        v921 = 0uLL;
        v922 = 0uLL;
        v923 = 0uLL;
        v924 = 0uLL;
        do
        {
          v925 = *v915++;
          v926 = vmovl_high_u8(v925);
          v927 = vmovl_high_u16(v926);
          v928.i64[0] = v927.u32[0];
          v928.i64[1] = v927.u32[1];
          v929 = v928;
          v930 = vmovl_u16(*v926.i8);
          v928.i64[0] = v930.u32[2];
          v928.i64[1] = v930.u32[3];
          v931 = v928;
          v932 = vmovl_u8(*v925.i8);
          v933 = vmovl_high_u16(v932);
          v928.i64[0] = v933.u32[2];
          v928.i64[1] = v933.u32[3];
          v934 = v928;
          v928.i64[0] = v927.u32[2];
          v928.i64[1] = v927.u32[3];
          v935 = v928;
          v928.i64[0] = v930.u32[0];
          v928.i64[1] = v930.u32[1];
          v936 = v928;
          v928.i64[0] = v933.u32[0];
          v928.i64[1] = v933.u32[1];
          v937 = v928;
          v938 = vmovl_u16(*v932.i8);
          v928.i64[0] = v938.u32[2];
          v928.i64[1] = v938.u32[3];
          v939 = v928;
          v928.i64[0] = v938.u32[0];
          v928.i64[1] = v938.u32[1];
          v940 = v928;
          v928.i64[0] = v911.u32[0];
          v928.i64[1] = v911.u32[1];
          v941 = vshlq_u64(v940, v928);
          v928.i64[0] = v911.u32[2];
          v928.i64[1] = v911.u32[3];
          v942 = vshlq_u64(v939, v928);
          v928.i64[0] = v910.u32[0];
          v928.i64[1] = v910.u32[1];
          v943 = vshlq_u64(v937, v928);
          v928.i64[0] = v909.u32[0];
          v928.i64[1] = v909.u32[1];
          v944 = vshlq_u64(v936, v928);
          v928.i64[0] = v908.u32[2];
          v928.i64[1] = v908.u32[3];
          v945 = vshlq_u64(v935, v928);
          v928.i64[0] = v910.u32[2];
          v928.i64[1] = v910.u32[3];
          v946 = vshlq_u64(v934, v928);
          v928.i64[0] = v909.u32[2];
          v928.i64[1] = v909.u32[3];
          v947 = vshlq_u64(v931, v928);
          v928.i64[0] = v908.u32[0];
          v928.i64[1] = v908.u32[1];
          v920 = vorrq_s8(vshlq_u64(v929, v928), v920);
          v919 = vorrq_s8(v947, v919);
          v917 = vorrq_s8(v946, v917);
          v921 = vorrq_s8(v945, v921);
          v918 = vorrq_s8(v944, v918);
          v916 = vorrq_s8(v943, v916);
          v904 = vorrq_s8(v942, v904);
          v905 = vorrq_s8(v941, v905);
          v906 = vaddq_s32(v906, v912);
          v922 = vaddq_s32(v922, v912);
          v923 = vaddq_s32(v923, v912);
          v924 = vaddq_s32(v924, v912);
          v911 = vaddq_s32(v911, v913);
          v910 = vaddq_s32(v910, v913);
          v909 = vaddq_s32(v909, v913);
          v908 = vaddq_s32(v908, v913);
          v914 -= 16;
        }

        while (v914);
        v948 = vorrq_s8(vorrq_s8(vorrq_s8(v905, v918), vorrq_s8(v916, v920)), vorrq_s8(vorrq_s8(v904, v919), vorrq_s8(v917, v921)));
        v887 = vorr_s8(*v948.i8, *&vextq_s8(v948, v948, 8uLL));
        v888 = vaddvq_s32(vaddq_s32(vaddq_s32(v906, v923), vaddq_s32(v922, v924)));
        if ((v903 & 0x3FFFFFF0) != v903)
        {
LABEL_2572:
          do
          {
            v888 += 8;
            v949 = *v892;
            v892 = (v892 + 1);
            v887 |= v949 << v902;
            v902 -= 8;
          }

          while (v902 >= v899);
        }
      }

      else
      {
        v892 = v2063;
      }
    }

    else
    {
      v2063 = *(&v2081 + 1);
      v890 = 48 - HIDWORD(v2080);
      if (v889 < 0x41)
      {
        goto LABEL_982;
      }

LABEL_961:
      v891 = (v890 & 0x7FFFFFF8) + 8;
      v888 = v891 + v885;
      v892 = (v2063 + (v891 >> 3));
      v887 = (bswap64(*v2063) >> (56 - (v890 & 0xF8u)) << (v890 & 7)) | v2080;
      v882 = v2037;
      v881 = v2053;
    }

    *(&v2081 + 1) += v892 - v2063;
    v884 = DWORD2(v2080);
LABEL_1021:
    v1006 = v884 - v886;
    v1007 = v887 >= v886 << 56 ? v1006 : v886;
    v1008 = v887 >= v886 << 56 ? v886 << 56 : 0;
    v1009 = vpx_norm[v1007];
    v1010 = v888 - v1009;
    v1011 = (v887 - v1008) << v1009;
    *&v2080 = v1011;
    v1012 = v1007 << v1009;
    HIDWORD(v2080) = v888 - v1009;
    DWORD2(v2080) = v1012;
    if (v887 < v886 << 56)
    {
LABEL_1028:
      v1013 = (v9 + 5552);
      *(v9 + 5552) = 0;
      v1014 = *(v9 + 5560);
      goto LABEL_1029;
    }

    v1088 = ((v1012 << 7) + 128) >> 8;
    if (v1010 < 0)
    {
      vpx_reader_fill(&v2080);
      v1011 = v2080;
      v1010 = HIDWORD(v2080);
      v1012 = DWORD2(v2080);
    }

    v1089 = v1088 << 56;
    v1090 = v1012 - v1088;
    if (v1011 < v1088 << 56)
    {
      v1091 = 1;
    }

    else
    {
      v1091 = 2;
    }

    if (v1011 >= v1088 << 56)
    {
      v1092 = v1088 << 56;
    }

    else
    {
      v1090 = v1088;
      v1092 = 0;
    }

    v1093 = vpx_norm[v1090];
    *&v2080 = (v1011 - v1092) << v1093;
    HIDWORD(v2080) = v1010 - v1093;
    DWORD2(v2080) = v1090 << v1093;
    *(v9 + 5552) = v1091;
    v1094 = *(v9 + 5368);
    if (v1094 != *(v9 + 5372))
    {
      if (v1094 == *(v9 + 5376))
      {
        v1112 = 258;
      }

      else
      {
        v1112 = 513;
      }

      *v2030 = v1112;
      *(v9 + 5550) = 3;
      v1014 = *(v9 + 5560);
      if (v1011 >= v1089)
      {
        goto LABEL_1169;
      }

      goto LABEL_1030;
    }

    *v2030 = 259;
    *(v9 + 5550) = 2;
    v1014 = *(v9 + 5560);
    if (v1011 < v1089)
    {
      goto LABEL_1030;
    }

LABEL_1169:
    v1013 = (v9 + 5552);
    vp9_diff_update_prob(&v2080, v1014 + 1935);
    vp9_diff_update_prob(&v2080, v1014 + 1936);
    vp9_diff_update_prob(&v2080, v1014 + 1937);
    vp9_diff_update_prob(&v2080, v1014 + 1938);
    vp9_diff_update_prob(&v2080, v1014 + 1939);
    if (*(v9 + 5552) == 1)
    {
LABEL_1030:
      vp9_diff_update_prob(&v2080, v1014 + 1950);
      vp9_diff_update_prob(&v2080, v1014 + 1951);
      vp9_diff_update_prob(&v2080, v1014 + 1952);
      vp9_diff_update_prob(&v2080, v1014 + 1953);
      vp9_diff_update_prob(&v2080, v1014 + 1954);
    }

    else
    {
LABEL_1029:
      vp9_diff_update_prob(&v2080, v1014 + 1940);
      vp9_diff_update_prob(&v2080, v1014 + 1941);
      vp9_diff_update_prob(&v2080, v1014 + 1942);
      vp9_diff_update_prob(&v2080, v1014 + 1943);
      vp9_diff_update_prob(&v2080, v1014 + 1944);
      vp9_diff_update_prob(&v2080, v1014 + 1945);
      vp9_diff_update_prob(&v2080, v1014 + 1946);
      vp9_diff_update_prob(&v2080, v1014 + 1947);
      vp9_diff_update_prob(&v2080, v1014 + 1948);
      vp9_diff_update_prob(&v2080, v1014 + 1949);
      if (*v1013)
      {
        goto LABEL_1030;
      }
    }

    vp9_diff_update_prob(&v2080, v881);
    vp9_diff_update_prob(&v2080, v881 + 1);
    vp9_diff_update_prob(&v2080, v881 + 2);
    vp9_diff_update_prob(&v2080, v881 + 3);
    vp9_diff_update_prob(&v2080, v881 + 4);
    vp9_diff_update_prob(&v2080, v881 + 5);
    vp9_diff_update_prob(&v2080, v881 + 6);
    vp9_diff_update_prob(&v2080, v881 + 7);
    vp9_diff_update_prob(&v2080, v881 + 8);
    vp9_diff_update_prob(&v2080, v881 + 9);
    vp9_diff_update_prob(&v2080, v881 + 10);
    vp9_diff_update_prob(&v2080, v881 + 11);
    vp9_diff_update_prob(&v2080, v881 + 12);
    vp9_diff_update_prob(&v2080, v881 + 13);
    vp9_diff_update_prob(&v2080, v881 + 14);
    vp9_diff_update_prob(&v2080, v881 + 15);
    vp9_diff_update_prob(&v2080, v881 + 16);
    vp9_diff_update_prob(&v2080, v881 + 17);
    vp9_diff_update_prob(&v2080, v881 + 18);
    vp9_diff_update_prob(&v2080, v881 + 19);
    vp9_diff_update_prob(&v2080, v881 + 20);
    vp9_diff_update_prob(&v2080, v881 + 21);
    vp9_diff_update_prob(&v2080, v881 + 22);
    vp9_diff_update_prob(&v2080, v881 + 23);
    vp9_diff_update_prob(&v2080, v881 + 24);
    vp9_diff_update_prob(&v2080, v881 + 25);
    vp9_diff_update_prob(&v2080, v881 + 26);
    vp9_diff_update_prob(&v2080, v881 + 27);
    vp9_diff_update_prob(&v2080, v881 + 28);
    vp9_diff_update_prob(&v2080, v881 + 29);
    vp9_diff_update_prob(&v2080, v881 + 30);
    vp9_diff_update_prob(&v2080, v881 + 31);
    vp9_diff_update_prob(&v2080, v881 + 32);
    vp9_diff_update_prob(&v2080, v881 + 33);
    vp9_diff_update_prob(&v2080, v881 + 34);
    vp9_diff_update_prob(&v2080, v881 + 35);
    vp9_diff_update_prob(&v2080, v881 + 126);
    vp9_diff_update_prob(&v2080, v881 + 127);
    vp9_diff_update_prob(&v2080, v881 + 128);
    vp9_diff_update_prob(&v2080, v881 + 129);
    vp9_diff_update_prob(&v2080, v881 + 130);
    vp9_diff_update_prob(&v2080, v881 + 131);
    vp9_diff_update_prob(&v2080, v881 + 132);
    vp9_diff_update_prob(&v2080, v881 + 133);
    vp9_diff_update_prob(&v2080, v881 + 134);
    vp9_diff_update_prob(&v2080, v881 + 135);
    vp9_diff_update_prob(&v2080, v881 + 136);
    vp9_diff_update_prob(&v2080, v881 + 137);
    vp9_diff_update_prob(&v2080, v881 + 138);
    vp9_diff_update_prob(&v2080, v881 + 139);
    vp9_diff_update_prob(&v2080, v881 + 140);
    vp9_diff_update_prob(&v2080, v881 + 141);
    vp9_diff_update_prob(&v2080, v881 + 142);
    vp9_diff_update_prob(&v2080, v881 + 143);
    vp9_diff_update_prob(&v2080, v881 + 144);
    vp9_diff_update_prob(&v2080, v881 + 145);
    vp9_diff_update_prob(&v2080, v881 + 146);
    vp9_diff_update_prob(&v2080, v881 + 147);
    vp9_diff_update_prob(&v2080, v881 + 148);
    vp9_diff_update_prob(&v2080, v881 + 149);
    vp9_diff_update_prob(&v2080, v881 + 150);
    vp9_diff_update_prob(&v2080, v881 + 151);
    vp9_diff_update_prob(&v2080, v881 + 152);
    vp9_diff_update_prob(&v2080, v881 + 153);
    vp9_diff_update_prob(&v2080, v881 + 154);
    vp9_diff_update_prob(&v2080, v881 + 155);
    vp9_diff_update_prob(&v2080, v881 + 156);
    vp9_diff_update_prob(&v2080, v881 + 157);
    vp9_diff_update_prob(&v2080, v881 + 158);
    vp9_diff_update_prob(&v2080, v881 + 159);
    vp9_diff_update_prob(&v2080, v881 + 160);
    vp9_diff_update_prob(&v2080, v881 + 161);
    vp9_diff_update_prob(&v2080, v881 + 162);
    vp9_diff_update_prob(&v2080, v881 + 163);
    vp9_diff_update_prob(&v2080, v881 + 164);
    vp9_diff_update_prob(&v2080, v881 + 165);
    vp9_diff_update_prob(&v2080, v881 + 166);
    vp9_diff_update_prob(&v2080, v881 + 167);
    vp9_diff_update_prob(&v2080, v881 + 168);
    vp9_diff_update_prob(&v2080, v881 + 169);
    vp9_diff_update_prob(&v2080, v881 + 170);
    vp9_diff_update_prob(&v2080, v881 + 171);
    vp9_diff_update_prob(&v2080, v881 + 172);
    vp9_diff_update_prob(&v2080, v881 + 173);
    v1015 = *(v9 + 1952);
    update_mv_probs((v881 + 1970), 3u, &v2080);
    update_mv_probs((v881 + 1973), 1u, &v2080);
    update_mv_probs((v881 + 1974), 0xAu, &v2080);
    update_mv_probs((v881 + 1984), 1u, &v2080);
    update_mv_probs((v881 + 1985), 0xAu, &v2080);
    update_mv_probs((v881 + 2006), 1u, &v2080);
    update_mv_probs((v881 + 2007), 0xAu, &v2080);
    update_mv_probs((v881 + 2017), 1u, &v2080);
    update_mv_probs((v881 + 2018), 0xAu, &v2080);
    update_mv_probs((v881 + 1995), 3u, &v2080);
    update_mv_probs((v881 + 1998), 3u, &v2080);
    update_mv_probs((v881 + 2001), 3u, &v2080);
    update_mv_probs((v881 + 2028), 3u, &v2080);
    update_mv_probs((v881 + 2031), 3u, &v2080);
    update_mv_probs((v881 + 2034), 3u, &v2080);
    if (v1015)
    {
      update_mv_probs((v881 + 2004), 1u, &v2080);
      update_mv_probs((v881 + 2005), 1u, &v2080);
      update_mv_probs((v881 + 2037), 1u, &v2080);
      update_mv_probs((v881 + 2038), 1u, &v2080);
    }
  }

  v1016 = HIDWORD(v2080) - 65;
  *(v2039 + 148) = (HIDWORD(v2080) - 65) < 0x3FFFFFBF;
  if (v1016 <= 0x3FFFFFBE)
  {
    vpx_internal_error(v2059, 7, "Decode failed. Frame data header is corrupted.");
  }

  v1017 = *(v9 + 5384);
  v1018 = (v9 + 18880);
  if (!v1017 || *(v9 + 18900))
  {
    v1019 = *(v9 + 19024);
    v1020 = v2031 << v882;
    if (v1019)
    {
      goto LABEL_1038;
    }

LABEL_1042:
    v1022 = *(v9 + 20680);
    if (v1022 <= 1)
    {
      v1022 = 0;
    }

    v1023 = 69568 * (v1022 + v1020);
    if (v1019)
    {
      free(*(v1019 - 8));
    }

    if ((v1023 | 0x27uLL) <= 0x10000000000 && (v1024 = malloc_type_malloc(v1023 | 0x27, 0xD93B561uLL)) != 0)
    {
      v1025 = (v1024 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v1025 - 8) = v1024;
      *(v9 + 19024) = v1025;
      if (v1025)
      {
        v1018 = (v9 + 18880);
        *(v9 + 20572) = v1020;
        v1021 = *(v9 + 20680);
        if (v1021 < 2)
        {
          goto LABEL_1075;
        }

LABEL_1053:
        if (v882)
        {
          goto LABEL_1075;
        }

        v1026 = v1018[454];
        if (v2031 <= 1)
        {
          if (v1026 != 1)
          {
            goto LABEL_1075;
          }
        }

        else if (v1026 != 1)
        {
          v2071 = v9 + 20576;
          v1027 = *(v9 + 1600);
          v1028 = *(v9 + 18904);
          v1029 = v1018[2];
          v2040 = 1 << v1018[3];
          v2048 = v1021;
          v2054 = 1 << v1029;
          if (v1021 >= 1 << v1029)
          {
            v1030 = (1 << v1029);
          }

          else
          {
            v1030 = v1021;
          }

          init_mt(v9);
          v2043 = v1029;
          if (v1029 != 31)
          {
            v1031 = 0;
            v1032 = 0;
            v1033 = 0;
            v2064 = v1028 + 224 * v1027 + 88;
            do
            {
              v1035 = (*(v9 + 19016) + v1031);
              v1036 = (*(v9 + 19024) + 69568 * (v1033 + v1018[423]));
              off_28100B630();
              if (v1018[455] && *(v9 + 5384) && !*(v9 + 18900))
              {
                v1036[1664] = v2071;
                v1037 = *(v9 + 20608) + v1032;
                v1036[1663] = v1037;
                *v1037 = v2064;
                *(v1037 + 8) = v2059;
                *(v1037 + 424) = 0;
                *(v1037 + 432) = 0;
                memcpy((v1037 + 16), v9, 0x198uLL);
                *(v1036[1663] + 432) = 0;
              }

              memcpy(v1036 + 1666, v9, 0x290uLL);
              v1018 = (v9 + 18880);
              if (*(v9 + 18884))
              {
                v1034 = 0;
              }

              else
              {
                v1034 = v1036 + 10;
              }

              v1036[1718] = v1034;
              v1035[3] = tile_worker_hook;
              v1035[4] = v1036;
              v1035[5] = v9;
              ++v1033;
              v1032 += 440;
              v1031 += 56;
            }

            while (v1030 != v1033);
          }

          v1075 = v9 + 19032;
          get_tile_buffers(v9, (v2033 + v2036), v2035, v2054, v2040, v9 + 19032);
          qsort((v9 + 19032), v2054, 0x18uLL, compare_tile_buffers);
          if (v2054 <= v2048)
          {
            v2080 = *v1075;
            *&v2081 = *(v9 + 19048);
            memmove((v9 + 19032), (v9 + 19056), 24 * v2054 - 24);
            v1095 = v1075 + 24 * v2054 - 24;
            *v1095 = v2080;
            *(v1095 + 16) = v2081;
          }

          else
          {
            v1076 = 0;
            v1077 = v2054 - 4;
            v1078 = v9 + 24 * v2054 + 18984;
            do
            {
              v2080 = *v1075;
              v1079 = v2080;
              *&v2081 = *(v1075 + 16);
              v1080 = v2081;
              v1081 = *(v1078 + 16);
              *v1075 = *v1078;
              *(v1075 + 16) = v1081;
              *v1078 = v1079;
              *(v1078 + 16) = v1080;
              v1076 += 2;
              v1075 += 48;
              v1078 -= 48;
              v656 = v1076 < v1077;
              v1077 -= 2;
            }

            while (v656);
          }

          if (v2043 != 31 && !*(v9 + 18884))
          {
            v1096 = 32;
            v1097 = v1030;
            do
            {
              bzero((*(*(v9 + 19016) + v1096) + 80), 0x33A8uLL);
              v1096 += 56;
              --v1097;
            }

            while (v1097);
          }

          if (v2043 == 31)
          {
            v1106 = 0;
          }

          else
          {
            v1098 = 0;
            v1099 = 0;
            v1100 = v2054 % v1030;
            v1101 = (v1030 - 1);
            v1102 = v1030;
            do
            {
              v1103 = *(v9 + 19016) + v1098;
              v1104 = *(v1103 + 32);
              *(v1104 + 8) = v1099;
              v1099 += v2054 / v1030 + v1100 / v1030;
              *(v1104 + 12) = v1099 - 1;
              *v1104 = v2035;
              *(v1103 + 48) = 0;
              v1105 = 3;
              if (!v1101)
              {
                v1105 = 4;
              }

              g_worker_interface[v1105]();
              --v1101;
              v1098 += 56;
              ++v1100;
              --v1102;
            }

            while (v1102);
            v1106 = 0;
            v1107 = v1030 + 1;
            v1108 = 56 * v1030 - 24;
            do
            {
              v1109 = *(*(v9 + 19016) + v1108);
              off_28100B630();
              *(v9 + 632) |= v1110 == 0;
              if (!v1106)
              {
                v1106 = *v1109;
              }

              --v1107;
              v1108 -= 56;
            }

            while (v1107 > 1);
            if (!*(v9 + 18884))
            {
              v1111 = 32;
              do
              {
                vp9_accumulate_frame_counts((v9 + 5580), (*(*(v9 + 19016) + v1111) + 80), 1);
                v1111 += 56;
                --v1030;
              }

              while (v1030);
            }
          }

          *v2029 = v1106;
          v1072 = (v9 + 18880);
          if (!*(v9 + 20700))
          {
            if (*(v9 + 632))
            {
              vpx_internal_error(v2059, 7, "Decode failed. Frame data is corrupted.");
            }

            else if (!*(v9 + 18900))
            {
              vp9_loop_filter_frame_mt(v2039, v2059, v9, *(v9 + 5384), 0, 0, *(v9 + 19016), *(v9 + 20568), v2071);
            }
          }

          goto LABEL_1189;
        }

        v1038 = *(v9 + 20704);
        v2055 = v1018[2];
        v2044 = v1018[3];
        v2065 = *(v9 + 18904) + 224 * *(v9 + 1600) + 88;
        bzero(*(v1038 + 64), ((*(v9 + 1976) + 7) >> 3) * ((*(v9 + 1968) + 7) >> 3));
        init_mt(v9);
        v1039 = 0;
        v1040 = 0;
        v1041 = 0;
        v1042 = (v1038 + 72);
        v2049 = v1021;
        v1043 = v1021;
        do
        {
          v1044 = (*(v9 + 19016) + v1039);
          v1045 = *(*(v9 + 20704) + 336);
          off_28100B630();
          if (*(v9 + 5384) && !*(v9 + 18900))
          {
            v1046 = v1045 + v1040;
            *(v1046 + 16) = v9 + 20576;
            v1047 = *(v9 + 20608) + v1041;
            *(v1046 + 8) = v1047;
            *v1047 = v2065;
            *(v1047 + 8) = v2059;
            *(v1047 + 424) = 0;
            *(v1047 + 432) = 0;
            memcpy((v1047 + 16), v9, 0x198uLL);
          }

          *(v1045 + v1040) = v9;
          v1044[3] = row_decode_worker_hook;
          v1044[4] = v1045 + v1040;
          v1044[5] = v1042;
          v1041 += 440;
          v1040 += 24;
          v1039 += 56;
          --v1043;
        }

        while (v1043);
        v2072 = 1 << v2055;
        if (v2055 != 31)
        {
          v1053 = 0;
          v1054 = 1 << v2055;
          if (v2072 <= 1)
          {
            v1054 = 1;
          }

          v1055 = 69568 * v1054;
          do
          {
            v1056 = *(v9 + 19024) + v1053;
            memcpy((v1056 + 13328), v9, 0x290uLL);
            if (*(v9 + 18884))
            {
              v1057 = 0;
            }

            else
            {
              v1057 = v1056 + 80;
            }

            *(v1056 + 13744) = v1057;
            v1053 += 69568;
          }

          while (v1055 != v1053);
        }

        pthread_mutex_lock((v1038 + 128));
        v1058 = *(v1038 + 88);
        *(v1038 + 96) = v1058;
        *(v1038 + 104) = v1058;
        *(v1038 + 120) = 0;
        pthread_mutex_unlock((v1038 + 128));
        *(v1038 + 248) = 0;
        *(v1038 + 72) = 0;
        get_tile_buffers(v9, (v2033 + v2036), v2035, v2072, 1 << v2044, v9 + 19032);
        if (!*(v9 + 18884) && v2055 != 31)
        {
          if (v2072 <= 1)
          {
            v1059 = 1;
          }

          else
          {
            v1059 = v2072;
          }

          v1060 = 80;
          do
          {
            bzero((*(v9 + 19024) + v1060), 0x33A8uLL);
            v1060 += 69568;
            --v1059;
          }

          while (v1059);
        }

        v1061 = v2049;
        if (v2055 != 31)
        {
          v1082 = 0;
          if (v2072 <= 1)
          {
            v1083 = 1;
          }

          else
          {
            v1083 = 1 << v2055;
          }

          do
          {
            pthread_mutex_lock((v1038 + 128));
            if (*(v1038 + 112) >= (*(v1038 + 96) + 12))
            {
              v1084 = *(v1038 + 96);
              *v1084 = 0;
              v1084[1] = v1082;
              v1084[2] = 0;
              *(v1038 + 96) += 12;
              pthread_cond_signal((v1038 + 192));
            }

            pthread_mutex_unlock((v1038 + 128));
            ++v1082;
          }

          while (v1083 != v1082);
        }

        v1062 = 0;
        v1063 = (v2049 - 1);
        do
        {
          *(*(v9 + 19016) + v1062 + 48) = 0;
          if (v1063)
          {
            v1064 = 3;
          }

          else
          {
            v1064 = 4;
          }

          g_worker_interface[v1064]();
          --v1063;
          v1062 += 56;
          --v1061;
        }

        while (v1061);
        v1065 = 0;
        v1066 = v2049 + 1;
        v1067 = 56 * v2049 - 56;
        do
        {
          off_28100B630();
          v1065 |= v1068 == 0;
          --v1066;
          v1067 -= 56;
        }

        while (v1066 > 1);
        *(v9 + 632) = v1065;
        v1069 = *(v9 + 19024) + 69568 * v2072;
        v1070 = *(v1069 - 69540);
        v1071 = *(v1069 - 69528);
        if ((v1070 - 9) > 0x36)
        {
          v1072 = (v9 + 18880);
          *v1042 = v1071;
          if (*(v9 + 18884))
          {
            v1085 = 1;
          }

          else
          {
            v1085 = v2055 == 31;
          }

          if (v1085)
          {
            goto LABEL_1188;
          }
        }

        else
        {
          v1072 = (v9 + 18880);
          do
          {
            v1073 = v1070 - 17;
            v1070 -= 8;
            --v1071;
          }

          while (v1073 < 0x37);
          *(v1069 - 69540) = v1070;
          *(v1069 - 69528) = v1071;
          *v1042 = v1071;
          if (*(v9 + 18884))
          {
            v1074 = 1;
          }

          else
          {
            v1074 = v2055 == 31;
          }

          if (v1074)
          {
            goto LABEL_1188;
          }
        }

        if (v2072 <= 1)
        {
          v1086 = 1;
        }

        else
        {
          v1086 = v2072;
        }

        v1087 = 80;
        do
        {
          vp9_accumulate_frame_counts((v9 + 5580), (*(v9 + 19024) + v1087), 1);
          v1087 += 69568;
          --v1086;
        }

        while (v1086);
        v1071 = *v1042;
        v1072 = (v9 + 18880);
        goto LABEL_1188;
      }
    }

    else
    {
      *(v9 + 19024) = 0;
    }

    vpx_internal_error(v2059, 2, "Failed to allocate pbi->tile_worker_data");
    v1018 = (v9 + 18880);
    *(v9 + 20572) = v1020;
    v1021 = *(v9 + 20680);
    if (v1021 < 2)
    {
      goto LABEL_1075;
    }

    goto LABEL_1053;
  }

  vp9_loop_filter_frame_init(v2059, v1017);
  v1019 = *(v9 + 19024);
  v1020 = v2031 << v882;
  if (!v1019)
  {
    goto LABEL_1042;
  }

LABEL_1038:
  if (v1020 != *(v9 + 20572))
  {
    goto LABEL_1042;
  }

  v1021 = *(v9 + 20680);
  if (v1021 >= 2)
  {
    goto LABEL_1053;
  }

LABEL_1075:
  v1048 = (*(v9 + 1976) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1049 = v1018[3];
  v2032 = v1018[2];
  v2066 = 1 << v2032;
  v1050 = 1 << v1049;
  if (*(v9 + 5384))
  {
    if (!v1018[5] && !*(v9 + 18992))
    {
      v1051 = malloc_type_malloc(0x1DFuLL, 0xD93B561uLL);
      if (!v1051)
      {
        *(v9 + 18992) = 0;
        goto LABEL_1172;
      }

      v1052 = (v1051 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v1052 - 8) = v1051;
      *(v9 + 18992) = v1052;
      if (!v1052)
      {
LABEL_1172:
        vpx_internal_error(v2059, 2, "Failed to allocate pbi->lf_worker.data1");
      }

      *(v9 + 18984) = vp9_loop_filter_worker;
      if (v1018[450] >= 2 && !off_28100B628((v9 + 18960)))
      {
        vpx_internal_error(v2059, 1, "Loop filter thread creation failed");
      }
    }

    if (*(v9 + 5384) && !v1018[5])
    {
      v1113 = *(v9 + 18992);
      off_28100B630();
      *v1113 = *(v9 + 18904) + 224 * *(v9 + 1600) + 88;
      *(v1113 + 8) = v2059;
      *(v1113 + 424) = 0;
      *(v1113 + 432) = 0;
      memcpy((v1113 + 16), v9, 0x198uLL);
    }
  }

  bzero(*(v9 + 18920), 6 * v1048);
  bzero(*(v9 + 18912), v1048);
  if (*(v9 + 5384))
  {
    bzero(*(v9 + 5416), 160 * *(v9 + 5424) * ((*(v9 + 1968) + 7) >> 3));
  }

  v1114 = v2035;
  get_tile_buffers(v9, (v2033 + v2036), v2035, v2066, 1 << v1049, &v2080);
  v2028 = v1049;
  if (v1049 == 31)
  {
    goto LABEL_1182;
  }

  if (v2032 == 31)
  {
    v1119 = 0;
    if (v1050 <= 1)
    {
      v1120 = 1;
    }

    else
    {
      v1120 = 1 << v1049;
    }

    do
    {
      v1121 = *(v9 + 1968);
      v1122 = *(v9 + 18892);
      v1123 = (v1121 + 7) >> 3;
      v1124 = 8 * ((v1123 * v1119++) >> v1122);
      v1125 = 8 * ((v1123 * v1119) >> v1122);
      if (v1125 >= v1121)
      {
        v1126 = *(v9 + 1968);
      }

      else
      {
        v1126 = v1125;
      }

      if (v1124 < v1126 && *(v9 + 5384))
      {
LABEL_1208:
        if (!*(v9 + 18900) && v1124 >= 8 && v1124 + 8 < *(v9 + 1968))
        {
          v1127 = *(v9 + 18992);
          off_28100B630();
          *(v1127 + 424) = v1124 - 8;
          *(v1127 + 428) = v1124;
          v1128 = 4;
          if (*(v9 + 20680) > 1)
          {
            v1128 = 3;
          }

          (g_worker_interface[v1128])(v9 + 18960);
        }

        while (1)
        {
          v1124 += 8;
          if (v1124 >= v1126)
          {
            break;
          }

          if (*(v9 + 5384))
          {
            goto LABEL_1208;
          }
        }
      }
    }

    while (v1119 != v1120);
    goto LABEL_1182;
  }

  v1129 = 0;
  v2038 = (v9 + 2036);
  if (v2066 <= 1)
  {
    v1130 = 1;
  }

  else
  {
    v1130 = v2066;
  }

  v2073 = v1130;
  if (v1050 <= 1)
  {
    v1131 = 1;
  }

  else
  {
    v1131 = v1050;
  }

  v2034 = v1131;
  while (2)
  {
    v1132 = 0;
    v2050 = v1129 << v2032;
    v2045 = v1129 + 1;
    v2041 = &v2080 + 96 * v1129;
    v2056 = v1129;
    while (2)
    {
      while (2)
      {
        v1133 = v2041 + 24 * v1132;
        v1134 = *(v9 + 19024) + 69568 * v2050 + 69568 * v1132;
        memcpy((v1134 + 13328), v9, 0x290uLL);
        *(v1134 + 13960) = 0;
        v1135 = v9 + 5580;
        if (*(v9 + 18884))
        {
          v1135 = 0;
        }

        *(v1134 + 13744) = v1135;
        v1136 = v1134 + 13984;
        bzero((v1134 + 13984), 0x1000uLL);
        v1137 = *(v9 + 1968);
        v1138 = *(v9 + 18892);
        v1139 = (v1137 + 7) >> 3;
        v1140 = 8 * ((v1139 * v1129) >> v1138);
        if (v1140 >= v1137)
        {
          v1140 = *(v9 + 1968);
        }

        *(v1134 + 13752) = v1140;
        v1141 = 8 * ((v1139 * v2045) >> v1138);
        if (v1141 < v1137)
        {
          v1137 = v1141;
        }

        *(v1134 + 13756) = v1137;
        v1142 = *(v9 + 1976);
        v1143 = *(v9 + 18888);
        v1144 = (v1142 + 7) >> 3;
        v1145 = 8 * ((v1144 * v1132) >> v1143);
        if (v1145 >= v1142)
        {
          v1145 = *(v9 + 1976);
        }

        *(v1134 + 13760) = v1145;
        v1146 = 8 * ((v1144 + v1144 * v1132) >> v1143);
        if (v1146 < v1142)
        {
          v1142 = v1146;
        }

        *(v1134 + 13764) = v1142;
        v1147 = *v1133;
        v1148 = *(v1133 + 1);
        v1149 = *(v9 + 20664);
        v1150 = *(v9 + 20672);
        if (v1148 - 1 >= v1114 - v1147)
        {
          vpx_internal_error(v2059, 7, "Truncated packet or corrupt tile length");
        }

        v1151.i64[0] = 255;
        v1151.i64[1] = 255;
        v1152.i64[0] = 0x1F0000001FLL;
        v1152.i64[1] = 0x1F0000001FLL;
        v1153.i64[0] = 0x7F0000007FLL;
        v1153.i64[1] = 0x7F0000007FLL;
        if (!v1147 && v1148)
        {
          goto LABEL_1271;
        }

        *(v1134 + 32) = v1147 + v1148;
        *(v1134 + 40) = v1147;
        *(v1134 + 16) = 0;
        *(v1134 + 24) = 0xFFFFFFF8000000FFLL;
        *(v1134 + 48) = v1149;
        *(v1134 + 56) = v1150;
        if (v1149)
        {
          if (v1148 >= 9)
          {
            v1154 = 9;
          }

          else
          {
            v1154 = v1148;
          }

          v1149(v1150, v1147, v1134 + 64, v1154);
          v1153.i64[0] = 0x7F0000007FLL;
          v1153.i64[1] = 0x7F0000007FLL;
          v1152.i64[0] = 0x1F0000001FLL;
          v1152.i64[1] = 0x1F0000001FLL;
          v1151.i64[0] = 255;
          v1151.i64[1] = 255;
          v1147 = (v1134 + 64);
          v1114 = v2035;
        }

        v1155 = 8 * v1148;
        if (8 * v1148 >= 0x41)
        {
          v1156 = v1147 + 1;
          v1157 = bswap64(*v1147) | *(v1134 + 16);
          v1158 = 56;
          goto LABEL_1267;
        }

        if (v1155)
        {
          if (64 - v1155 >= 49)
          {
            v1159 = 49;
          }

          else
          {
            v1159 = 64 - v1155;
          }

          v1160 = 56;
          v1161 = 56 - v1159;
          if ((56 - v1159) < 0x18)
          {
            v1157 = 0;
            v1162 = v1147;
            goto LABEL_1265;
          }

          v1163 = (v1161 >> 3) + 1;
          if (v1161 >= 0x78)
          {
            v1164 = v1163 & 0x3FFFFFF0;
            v1165 = 56 - 8 * (v1163 & 0x3FFFFFF0);
            v1166 = 0uLL;
            v1167 = 0uLL;
            v1168 = v1164;
            v1169 = v1147;
            v1170 = 0uLL;
            v1171 = 0uLL;
            v1172 = 0uLL;
            v1173 = 0uLL;
            v1174 = xmmword_273BC3210;
            v1175 = xmmword_273BC3200;
            v1176 = 0uLL;
            v1177 = xmmword_273BC31F0;
            v1178 = xmmword_273BC31E0;
            v1179 = 0uLL;
            do
            {
              v1180 = *v1169++;
              v1181 = vmovl_high_u8(v1180);
              v1182 = vmovl_high_u16(v1181);
              v1183.i64[0] = v1182.u32[0];
              v1183.i64[1] = v1182.u32[1];
              v1184 = v1183;
              v1185 = vmovl_u16(*v1181.i8);
              v1183.i64[0] = v1185.u32[2];
              v1183.i64[1] = v1185.u32[3];
              v1186 = v1183;
              v1187 = vmovl_u8(*v1180.i8);
              v1188 = vmovl_high_u16(v1187);
              v1183.i64[0] = v1188.u32[2];
              v1183.i64[1] = v1188.u32[3];
              v1189 = v1183;
              v1183.i64[0] = v1182.u32[2];
              v1183.i64[1] = v1182.u32[3];
              v1190 = v1183;
              v1183.i64[0] = v1185.u32[0];
              v1183.i64[1] = v1185.u32[1];
              v1191 = v1183;
              v1183.i64[0] = v1188.u32[0];
              v1183.i64[1] = v1188.u32[1];
              v1192 = v1183;
              v1193 = vmovl_u16(*v1187.i8);
              v1183.i64[0] = v1193.u32[2];
              v1183.i64[1] = v1193.u32[3];
              v1194 = v1183;
              v1183.i64[0] = v1193.u32[0];
              v1183.i64[1] = v1193.u32[1];
              v1195 = v1183;
              v1183.i64[0] = v1178.u32[0];
              v1183.i64[1] = v1178.u32[1];
              v1196 = v1183;
              v1183.i64[0] = v1177.u32[2];
              v1183.i64[1] = v1177.u32[3];
              v1197 = v1183;
              v1183.i64[0] = v1175.u32[2];
              v1183.i64[1] = v1175.u32[3];
              v1198 = v1183;
              v1183.i64[0] = v1178.u32[2];
              v1183.i64[1] = v1178.u32[3];
              v1199 = v1183;
              v1183.i64[0] = v1177.u32[0];
              v1183.i64[1] = v1177.u32[1];
              v1200 = v1183;
              v1183.i64[0] = v1175.u32[0];
              v1183.i64[1] = v1175.u32[1];
              v1201 = v1183;
              v1183.i64[0] = v1174.u32[2];
              v1183.i64[1] = v1174.u32[3];
              v1202 = v1183;
              v1183.i64[0] = v1174.u32[0];
              v1183.i64[1] = v1174.u32[1];
              v1176 = vorrq_s8(vshlq_u64(v1184, v1196), v1176);
              v1173 = vorrq_s8(vshlq_u64(v1186, v1197), v1173);
              v1171 = vorrq_s8(vshlq_u64(v1189, v1198), v1171);
              v1179 = vorrq_s8(vshlq_u64(v1190, v1199), v1179);
              v1172 = vorrq_s8(vshlq_u64(v1191, v1200), v1172);
              v1170 = vorrq_s8(vshlq_u64(v1192, v1201), v1170);
              v1167 = vorrq_s8(vshlq_u64(v1194, v1202), v1167);
              v1166 = vorrq_s8(vshlq_u64(v1195, v1183), v1166);
              v1174 = vaddq_s32(v1174, v1153);
              v1175 = vaddq_s32(v1175, v1153);
              v1177 = vaddq_s32(v1177, v1153);
              v1178 = vaddq_s32(v1178, v1153);
              v1168 -= 16;
            }

            while (v1168);
            v1203 = vorrq_s8(vorrq_s8(vorrq_s8(v1166, v1172), vorrq_s8(v1170, v1176)), vorrq_s8(vorrq_s8(v1167, v1173), vorrq_s8(v1171, v1179)));
            v1157 = vorr_s8(*v1203.i8, *&vextq_s8(v1203, v1203, 8uLL));
            if (v1164 != v1163)
            {
              if ((v1163 & 0xC) == 0)
              {
                v1160 = 56 - 8 * v1164;
                v1162 = (v1147 + v1164);
                goto LABEL_1265;
              }

              goto LABEL_1260;
            }
          }

          else
          {
            v1157 = 0;
            v1164 = 0;
            v1165 = 56;
LABEL_1260:
            v1162 = (v1147 + (v1163 & 0x3FFFFFFC));
            v1160 = 56 - 8 * (v1163 & 0x3FFFFFFC);
            v1204 = v1157;
            v1205 = 0uLL;
            v1206.i32[1] = -8;
            v1207 = vaddq_s32(vdupq_n_s32(v1165), xmmword_273BC3220);
            v1208 = (v1147 + v1164);
            v1209 = v1164 - (v1163 & 0x3FFFFFFC);
            do
            {
              v1210 = *v1208++;
              v1206.i32[0] = v1210;
              v1211 = vmovl_u16(*&vmovl_u8(*v1206.i8));
              v1212.i64[0] = v1211.u32[2];
              v1212.i64[1] = v1211.u32[3];
              v1213 = vandq_s8(v1212, v1151);
              v1212.i64[0] = v1211.u32[0];
              v1212.i64[1] = v1211.u32[1];
              v1214 = vandq_s8(v1212, v1151);
              v1212.i64[0] = v1207.u32[2];
              v1212.i64[1] = v1207.u32[3];
              v1215 = v1212;
              v1212.i64[0] = v1207.u32[0];
              v1212.i64[1] = v1207.u32[1];
              v1206 = vshlq_u64(v1214, v1212);
              v1205 = vorrq_s8(vshlq_u64(v1213, v1215), v1205);
              v1204 = vorrq_s8(v1206, v1204);
              v1207 = vaddq_s32(v1207, v1152);
              v1209 += 4;
            }

            while (v1209);
            v1216 = vorrq_s8(v1204, v1205);
            v1157 = vorr_s8(*v1216.i8, *&vextq_s8(v1216, v1216, 8uLL));
            if ((v1163 & 0x3FFFFFFC) != v1163)
            {
              do
              {
LABEL_1265:
                v1217 = *v1162;
                v1162 = (v1162 + 1);
                v1157 |= v1217 << v1160;
                v1160 -= 8;
              }

              while (v1160 >= 64 - v1155);
            }
          }

          v1218 = ((v1155 - 8) >> 3) + 1;
          v1158 = v1155 + 1073741816;
          v1156 = (v1147 + v1218);
        }

        else
        {
          v1157 = 0;
          v1158 = 1073741816;
          v1156 = v1147;
        }

LABEL_1267:
        v1219 = v1156 - v1147;
        v1220 = *(v1134 + 24);
        v1221 = ((v1220 << 7) + 128) >> 8;
        v1222 = v1221 << 56;
        v1223 = v1220 - v1221;
        if (v1157 >= v1221 << 56)
        {
          v1224 = v1221 << 56;
        }

        else
        {
          v1223 = v1221;
          v1224 = 0;
        }

        v1225 = vpx_norm[v1223];
        *(v1134 + 40) += v1219;
        *(v1134 + 16) = (v1157 - v1224) << v1225;
        *(v1134 + 24) = v1223 << v1225;
        *(v1134 + 28) = v1158 - v1225;
        if (v1157 >= v1222)
        {
LABEL_1271:
          vpx_internal_error(v2059, 2, "Failed to allocate BOOL decoder %d", 1);
        }

        *(v1134 + 13328) = v1136;
        *(v1134 + 13864) = *(v9 + 18920);
        v1226 = *(v9 + 2004);
        *(v1134 + 13424) = *(v9 + 2020);
        *(v1134 + 13408) = v1226;
        v1227 = *(v9 + 1976);
        v1228 = *(v9 + 18920);
        *(v1134 + 13832) = *(v9 + 5560);
        *(v1134 + 13464) = v1136;
        *(v1134 + 13872) = v1228 + 2 * ((v1227 + 7) & 0x7FFFFFFFFFFFFFF8);
        v1229 = *(v9 + 2052);
        *(v1134 + 13544) = *v2038;
        *(v1134 + 13560) = v1229;
        v1230 = *(v9 + 1976);
        v1231 = *(v9 + 18920);
        *(v1134 + 13832) = *(v9 + 5560);
        *(v1134 + 13600) = v1136;
        *(v1134 + 13880) = v1231 + 4 * ((v1230 + 7) & 0x3FFFFFFFFFFFFFF8);
        v1232 = *(v9 + 2052);
        *(v1134 + 13680) = *v2038;
        *(v1134 + 13696) = v1232;
        v1233 = *(v9 + 5560);
        LODWORD(v1231) = *(v9 + 1932);
        v1234 = *(v9 + 1980);
        v1235 = *(v9 + 18912);
        *(v1134 + 13832) = v1233;
        *(v1134 + 13936) = v1235;
        *(v1134 + 13768) = v1234;
        *(v1134 + 13968) = v2059;
        if (!v1231)
        {
          v1129 = v2056;
          *(v1134 + 13808) = &vp9_kf_partition_probs;
          if (++v1132 == v2073)
          {
            goto LABEL_1223;
          }

          continue;
        }

        break;
      }

      v1236 = (v1233 + 126);
      if (*(v9 + 1948))
      {
        v1236 = &vp9_kf_partition_probs;
      }

      v1129 = v2056;
      *(v1134 + 13808) = v1236;
      if (++v1132 != v2073)
      {
        continue;
      }

      break;
    }

LABEL_1223:
    if (++v1129 != v2034)
    {
      continue;
    }

    break;
  }

  v1237 = 0;
  do
  {
    v1238 = *(v9 + 1968);
    v1239 = (v9 + 18880);
    v1240 = *(v9 + 18892);
    v1241 = (v1238 + 7) >> 3;
    v1242 = (8 * ((v1241 * v1237) >> v1240));
    v2051 = v1237 + 1;
    v1243 = 8 * ((v1241 * (v1237 + 1)) >> v1240);
    if (v1243 < v1238)
    {
      v1238 = v1243;
    }

    v2057 = v1238;
    if (v1242 < v1238)
    {
      v1244 = v1237 << v2032;
      do
      {
        v1245 = 0;
        do
        {
          v1246 = v2066 + ~v1245;
          if (!v1239[451])
          {
            v1246 = v1245;
          }

          v1247 = *(v9 + 19024) + 69568 * v1244 + 69568 * v1246;
          v1248 = *(v9 + 1976);
          v1249 = v1239[2];
          v1250 = (v1248 + 7) >> 3;
          v1251 = v1250 * v1246;
          v1252 = 8 * ((v1250 * v1246) >> v1249);
          v1253 = 8 * ((v1250 + v1251) >> v1249);
          *(v1247 + 13920) = 0u;
          *(v1247 + 13904) = 0u;
          if (v1253 >= v1248)
          {
            v1254 = v1248;
          }

          else
          {
            v1254 = v1253;
          }

          *(v1247 + 13888) = 0uLL;
          *(v1247 + 13944) = 0;
          if (v1252 < v1254)
          {
            if (v1252 >= v1248)
            {
              v1255 = v1248;
            }

            else
            {
              v1255 = v1252;
            }

            do
            {
              while (v1239[454] == 1)
              {
                v1256 = *(v9 + 20704);
                *(v1247 + 13456) = v1256[1];
                *(v1247 + 13328) = v1256[5];
                *(v1247 + 13592) = v1256[2];
                *(v1247 + 13464) = v1256[6];
                *(v1247 + 13728) = v1256[3];
                *(v1247 + 13600) = v1256[7];
                *(v1247 + 13976) = v1256[4];
                process_partition(v1247, v9, v1242, v1255, 0xCu, 4, 1, parse_block);
                *(v1247 + 13456) = v1256[1];
                *(v1247 + 13328) = v1256[5];
                *(v1247 + 13592) = v1256[2];
                *(v1247 + 13464) = v1256[6];
                *(v1247 + 13728) = v1256[3];
                *(v1247 + 13600) = v1256[7];
                v1257 = v1256[4];
                v1239 = (v9 + 18880);
                *(v1247 + 13976) = v1257;
                process_partition(v1247, v9, v1242, v1255, 0xCu, 4, 2, recon_block);
                v1255 = (v1255 + 8);
                if (v1255 >= v1254)
                {
                  goto LABEL_1298;
                }
              }

              decode_partition(v1247, v9, v1242, v1255, 0xCu, 4);
              v1255 = (v1255 + 8);
            }

            while (v1255 < v1254);
          }

LABEL_1298:
          v1258 = *(v9 + 632) | *(v1247 + 13960);
          *(v9 + 632) = v1258;
          if (v1258)
          {
            vpx_internal_error(v2059, 7, "Failed to decode tile data");
          }

          ++v1245;
        }

        while (v1245 != v2073);
        if (*(v9 + 5384) && !v1239[5] && v1242 >= 8 && v1242 + 8 < *(v9 + 1968))
        {
          v1259 = *(v9 + 18992);
          off_28100B630();
          *(v1259 + 424) = v1242 - 8;
          *(v1259 + 428) = v1242;
          v1260 = 4;
          if (v1239[450] > 1)
          {
            v1260 = 3;
          }

          (g_worker_interface[v1260])(v9 + 18960);
        }

        v1242 = (v1242 + 8);
      }

      while (v1242 < v2057);
    }

    v1237 = v2051;
  }

  while (v2051 != v2034);
LABEL_1182:
  v1072 = (v9 + 18880);
  if (*(v9 + 5384) && !*(v9 + 18900))
  {
    v1115 = *(v9 + 18992);
    off_28100B630();
    *(v1115 + 424) = *(v1115 + 428);
    *(v1115 + 428) = *(v9 + 1968);
    v1072 = (v9 + 18880);
    off_28100B640((v9 + 18960));
  }

  v1116 = *(v9 + 19024) + 69568 * (v2066 << v2028);
  v1117 = *(v1116 - 69540);
  v1071 = *(v1116 - 69528);
  if ((v1117 - 9) <= 0x36)
  {
    do
    {
      v1118 = v1117 - 17;
      v1117 -= 8;
      --v1071;
    }

    while (v1118 < 0x37);
    *(v1116 - 69540) = v1117;
    *(v1116 - 69528) = v1071;
  }

LABEL_1188:
  *v2029 = v1071;
LABEL_1189:
  if (*(v9 + 632))
  {
    vpx_internal_error(v2059, 7, "Decode failed. Frame data is corrupted.");
  }

  else if (!*v1072 && !v1072[1])
  {
    vp9_adapt_coef_probs(v2059);
    if (*(v9 + 1932))
    {
      if (!*(v9 + 1948))
      {
        vp9_adapt_mode_probs(v2059);
        vp9_adapt_mv_probs(v2059, *(v9 + 1952));
      }
    }
  }

  if (*(v9 + 5360))
  {
    memcpy((*(v9 + 5568) + 2044 * *(v9 + 5576)), *(v9 + 5560), 0x7FCuLL);
  }
}