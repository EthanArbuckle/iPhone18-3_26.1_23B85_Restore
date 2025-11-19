uint64_t sub_298C5D4C0(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((uuid_compare(uu1, v2 + 32) & 0x80000000) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((uuid_compare(v5 + 32, uu1) & 0x80000000) == 0)
    {
      break;
    }

    v3 = v5 + 8;
    v2 = *(v5 + 1);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void sub_298C5D5C4(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = *MEMORY[0x29EDCA608];
  v9 = *a4;
  v10 = *(a4 + 2);
  v5 = a1[2];
  sub_298C40C18(&v15);
  if (v16)
  {
    v6 = v15;
    v15 = 0;
    if (v6)
    {
      v11[0] = v6;
      sub_298B06434(v11, "", 0);
      sub_298AF1D58(v11);
      exit(1);
    }

    v7 = 0;
  }

  else
  {
    v7 = v15;
  }

  v8 = *a1;
  v13 = v9;
  v14 = v10;
  LOBYTE(v11[0]) = 0;
  v12 = 0;
  sub_298C16C08(v8, 5, &v13, (2 * v7) | 1, 2);
}

uint64_t sub_298C5D9EC(uint64_t result, int a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  if (a2 != 1 || **result)
  {
    if (a2 == 1)
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 6;
    }

    v8 = *(result + 8);
    v9 = *a5;
    v10 = *(a5 + 2);
    sub_298C16C08(v8, v7, &v9, (2 * a6) | 1, 7);
  }

  return result;
}

void sub_298C5DA9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = a2 + 8;
  sub_298C16C08(v2, 8, v3, 2 * *(a2 + 24), 6);
}

__n128 sub_298C5DB94(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FFA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5DBC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::attach", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5DCB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1FFE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5DCE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::configure", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5DDCC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F20030;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5DDFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::pause", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5DEE8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F20078;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5DF18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::resume", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5E004(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F200C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5E034(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::stop", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5E120(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F20108;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5E150(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::save", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5E23C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F20150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5E26C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::unconfigure", &unk_298EC00B5, v3, 2u);
    }
  }
}

__n128 sub_298C5E358(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F20198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298C5E388(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *(a1 + 16);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v2, OS_SIGNPOST_INTERVAL_END, v1, "LiveRecording::postprocess", &unk_298EC00B5, v3, 2u);
    }
  }
}

uint64_t sub_298C5E470(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F201E0;
  a2[1] = v2;
  return result;
}

uint64_t sub_298C5E49C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 8);
  v5 = *v4;
  *v4 = 0;
  v8 = v3;
  v9 = v5;
  sub_298ADE6E8(&v9, &v8, &v7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v9;
  if (v9)
  {
    result = (*(*v9 + 8))(v9);
  }

  **(a1 + 8) = v7;
  return result;
}

void sub_298C5E550(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!*a1)
  {
    sub_298C6CD38();
  }

  if (*a1 != 2)
  {
    std::generic_category();
    v9[0] = "LiveSystem.cpp";
    v9[2] = ":";
    v10 = 771;
    v8 = 3;
    LODWORD(v7) = 3223857;
    v11[0] = v9;
    v11[2] = &v7;
    v12 = 1026;
    v13[0] = v11;
    v13[2] = ": ";
    v14 = 770;
    v16[0] = v13;
    v16[2] = "Unsupported";
    v17 = 770;
    sub_298B996A4(v16, &__p);
    operator new();
  }

  sub_298C670B4(a1, v18);
  v3 = v18[0];
  if ((v20 & 1) == 0 || (v18[0] = 0, !v3))
  {
    if (v19 >= 0)
    {
      v4 = v18;
    }

    else
    {
      v4 = v3;
    }

    if (v19 >= 0)
    {
      v5 = v19;
    }

    else
    {
      v5 = v18[1];
    }

    sub_298C68014(v4, v5);
  }

  *(a2 + 8) |= 1u;
  *a2 = v3;
  v6 = *MEMORY[0x29EDCA608];
}

void sub_298C5E870(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_298C5E550(a1, &v24);
  v4 = v24;
  if ((v25 & 1) == 0 || (*a2 = v24, !v4))
  {
    if ((v4[9] & 1) == 0)
    {
      std::generic_category();
      v13[0] = "LiveSystem.cpp";
      v13[2] = ":";
      v14 = 771;
      v12 = 3;
      LODWORD(__p) = 3486257;
      v15[0] = v13;
      v15[2] = &__p;
      v16 = 1026;
      v17[0] = v15;
      v17[2] = ": ";
      v18 = 770;
      v19[0] = v17;
      v19[2] = "ProductionTrace not supported for: ";
      v20 = 770;
      v7 = *(a1 + 8);
      v6 = a1 + 8;
      v5 = v7;
      v8 = *(v6 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v6 + 8);
      }

      if (v9 >= 0)
      {
        v5 = v6;
      }

      v21[0] = v19;
      v21[2] = v5;
      v21[3] = v8;
      v22 = 1282;
      sub_298B996A4(v21, &v23);
      operator new();
    }

    *a2 = 0;
    (*(*v4 + 8))(v4);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_298C5EAE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_298C5E550(a1, &v24);
  v4 = v24;
  if ((v25 & 1) == 0 || (*a2 = v24, !v4))
  {
    if ((v4[10] & 1) == 0)
    {
      std::generic_category();
      v13[0] = "LiveSystem.cpp";
      v13[2] = ":";
      v14 = 771;
      v12 = 3;
      LODWORD(__p) = 3552049;
      v15[0] = v13;
      v15[2] = &__p;
      v16 = 1026;
      v17[0] = v15;
      v17[2] = ": ";
      v18 = 770;
      v19[0] = v17;
      v19[2] = "DevelopmentTrace not supported for: ";
      v20 = 770;
      v7 = *(a1 + 8);
      v6 = a1 + 8;
      v5 = v7;
      v8 = *(v6 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v6 + 8);
      }

      if (v9 >= 0)
      {
        v5 = v6;
      }

      v21[0] = v19;
      v21[2] = v5;
      v21[3] = v8;
      v22 = 1282;
      sub_298B996A4(v21, &v23);
      operator new();
    }

    *a2 = 0;
    (*(*v4 + 8))(v4);
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C5ED60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(**(result + 32) + 56);
  if ((v2 - 11) <= 0xFFFFFFFFFFFFFFF6)
  {
    std::generic_category();
    v8[0] = "LiveSystem.cpp";
    v8[2] = ":";
    v9 = 771;
    v3 = 3;
    v7 = 3;
    LODWORD(__p) = 3355697;
    v10[0] = v8;
    v10[2] = &__p;
    v11 = 1026;
    v12[0] = v10;
    v12[2] = ": ";
    v13 = 770;
    v14[0] = v12;
    v14[2] = "Streaming is unsupported on ";
    v4 = v2 - 1;
    v15 = 770;
    if ((v2 - 1) > 0x11)
    {
      v5 = "H11";
    }

    else
    {
      v3 = qword_298D1CA88[v4];
      v5 = off_29EEB67B0[v4];
    }

    v16[0] = v14;
    v16[2] = v5;
    v16[3] = v3;
    v17 = 1282;
    sub_298B996A4(v16, &v18);
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_298C5EF5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 == v3)
  {
LABEL_4:
    std::generic_category();
    v8[0] = "LiveSystem.cpp";
    v8[2] = ":";
    v9 = 771;
    v7 = 3;
    LODWORD(__p) = 3159345;
    v10[0] = v8;
    v10[2] = &__p;
    v11 = 1026;
    v12[0] = v10;
    v12[2] = ": ";
    v13 = 770;
    v14[0] = v12;
    v14[2] = "cannot use PIO without dev-fused tracing";
    v15 = 770;
    sub_298B996A4(v14, &v16);
    operator new();
  }

  while ((*(*v3 + 96) & 1) == 0)
  {
    v3 += 8;
    if (v3 == v4)
    {
      goto LABEL_4;
    }
  }

  return sub_298C4F48C(a2);
}

uint64_t sub_298C5F144@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 32);
  v4 = *(result + 40);
  if (v4 == v3)
  {
LABEL_5:
    std::generic_category();
    v17[0] = "LiveSystem.cpp";
    v18 = ":";
    v19 = 771;
    HIBYTE(v13) = 3;
    LODWORD(v12[0]) = 3421745;
    v20[0] = v17;
    v21 = v12;
    v22 = 1026;
    v23[0] = v20;
    v24 = ": ";
    v26 = 770;
    v27[0] = v23;
    v28 = "cannot use CPMU Dump without dev-fused tracing";
    v29 = 770;
    sub_298B996A4(v27, __p);
    operator new();
  }

  v5 = *(result + 32);
  while ((*(*v5 + 96) & 1) == 0)
  {
    v5 += 8;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  v6 = *(*v3 + 56);
  if ((v6 - 11) <= 0xFFFFFFFFFFFFFFF6)
  {
    std::generic_category();
    v12[0] = "LiveSystem.cpp";
    v13 = ":";
    v14 = 771;
    v7 = 3;
    v11 = 3;
    LODWORD(v10) = 3618353;
    __p[0] = v12;
    __p[2] = &v10;
    v16 = 1026;
    v17[0] = __p;
    v18 = ": ";
    v19 = 770;
    v20[0] = v17;
    v21 = "CPMU Dump is unsupported on ";
    v8 = v6 - 1;
    v22 = 770;
    if ((v6 - 1) > 0x11)
    {
      v9 = "H11";
    }

    else
    {
      v7 = qword_298D1CA88[v8];
      v9 = off_29EEB67B0[v8];
    }

    v23[0] = v20;
    v24 = v9;
    v25 = v7;
    v26 = 1282;
    v27[0] = v23;
    v28 = " (requires H14+)";
    v29 = 770;
    sub_298B996A4(v27, &v30);
    operator new();
  }

  *a2 = 0;
  return result;
}

void sub_298C5F4DC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  v29[0] = 0;
  v26[0] = v29;
  v38 = sub_298C64AF8;
  v39 = v26;
  sub_298C605B8(v32, a1, sub_298C64AB8, &v38, 1);
  if (!v29[0])
  {
    std::generic_category();
    v20.__r_.__value_.__r.__words[0] = "LiveSystem.cpp";
    v20.__r_.__value_.__r.__words[2] = ":";
    v22 = 771;
    v37 = 3;
    v36[0] = 3618609;
    v23[0] = &v20;
    v24 = v36;
    v25 = 1026;
    v26[0] = v23;
    p_p = ": ";
    v28 = 770;
    v29[0] = v26;
    v30 = "Trace must be enabled on >= 1 cores for ";
    v12 = *(a1 + 8);
    v11 = a1 + 8;
    v10 = v12;
    v31 = 770;
    v13 = *(v11 + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v11 + 8);
    }

    if (v14 >= 0)
    {
      v10 = v11;
    }

    v32[0] = v29;
    v33 = v10;
    v34 = v13;
    v35 = 1282;
    sub_298B996A4(v32, &__p);
    operator new();
  }

  if (v29[0] != 1 && *(**(a1 + 32) + 56) == 0)
  {
    std::generic_category();
    v23[0] = "LiveSystem.cpp";
    v24 = ":";
    v25 = 771;
    v19 = 3;
    LODWORD(__p) = 3160113;
    v26[0] = v23;
    p_p = &__p;
    v28 = 1026;
    v29[0] = v26;
    v30 = ": ";
    v8 = 770;
    v31 = 770;
    v9 = "Cannot enable PCTrace on >1 cores on H11 devices";
    goto LABEL_25;
  }

  if (*(a1 + 356) & 1) != 0 || (*(a1 + 292))
  {
    goto LABEL_9;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    std::generic_category();
    v23[0] = "LiveSystem.cpp";
    v24 = ":";
    v25 = 771;
    v19 = 3;
    LODWORD(__p) = 3487793;
    v26[0] = v23;
    p_p = &__p;
    v28 = 1026;
    v29[0] = v26;
    v30 = ": ";
    v8 = 770;
    v31 = 770;
    v9 = "Background traces not supported without a driver.";
    goto LABEL_25;
  }

  if (!*a1)
  {
    std::generic_category();
    v23[0] = "LiveSystem.cpp";
    v24 = ":";
    v25 = 771;
    v19 = 3;
    LODWORD(__p) = 3750193;
    v26[0] = v23;
    p_p = &__p;
    v28 = 1026;
    v29[0] = v26;
    v30 = ": ";
    v31 = 770;
    v32[0] = v29;
    v33 = "\n         +--------------------------------------------------------------------+\n         | Support for PIO-based configuration of cputrace on XNU is          |\n         | deprecated in favor of a safer, more performant, and feature-rich  |\n         | replacement through a driver. PIO support has now been removed.    |\n         | Please pass -driver=1 or --CPUTrace:driver=1 to migrate now.       |\n         | Reach out on Slack to share feedback or ask questions. See:        |\n         | 'at' dot 'apple.com/ariadne-cputrace' for migration help, some     |\n         | required bootargs have changed and SIP no longer must be disabled. |\n         +--------------------------------------------------------------------+\n    ";
    v34 = 725;
    v8 = 1282;
LABEL_26:
    v35 = v8;
    sub_298B996A4(v32, &v20);
    operator new();
  }

  sub_298C4F48C(a3);
  if (!*a3)
  {
LABEL_9:
    if (*(a1 + 352) == 1 && (*(a1 + 356) & 1) == 0)
    {
      std::generic_category();
      v23[0] = "LiveSystem.cpp";
      v24 = ":";
      v25 = 771;
      v19 = 3;
      LODWORD(__p) = 3616818;
      v26[0] = v23;
      p_p = &__p;
      v28 = 1026;
      v29[0] = v26;
      v30 = ": ";
      v8 = 770;
      v31 = 770;
      v9 = "Address tracing requires a driver";
      goto LABEL_25;
    }

    v7 = *(a1 + 288);
    if (v7 <= 5 && ((1 << v7) & 0x34) != 0 && (*(a1 + 356) & 1) == 0)
    {
      std::generic_category();
      v23[0] = "LiveSystem.cpp";
      v24 = ":";
      v25 = 771;
      v19 = 3;
      LODWORD(__p) = 3158322;
      v26[0] = v23;
      p_p = &__p;
      v28 = 1026;
      v29[0] = v26;
      v30 = ": ";
      v8 = 770;
      v31 = 770;
      v9 = "Streaming to DRAM requires a driver";
      goto LABEL_25;
    }

    if (*(a1 + 384) == 1 && (v7 > 5 || ((1 << v7) & 0x34) == 0))
    {
      std::generic_category();
      v23[0] = "LiveSystem.cpp";
      v24 = ":";
      v25 = 771;
      v19 = 3;
      LODWORD(__p) = 3354930;
      v26[0] = v23;
      p_p = &__p;
      v28 = 1026;
      v29[0] = v26;
      v30 = ": ";
      v8 = 770;
      v31 = 770;
      v9 = "Throttling requires streaming to be enabled";
      goto LABEL_25;
    }

    if (v7 != 2 && (*(a1 + 324) & 1) != 0)
    {
      std::generic_category();
      v23[0] = "LiveSystem.cpp";
      v24 = ":";
      v25 = 771;
      v19 = 3;
      LODWORD(__p) = 3682610;
      v26[0] = v23;
      p_p = &__p;
      v28 = 1026;
      v29[0] = v26;
      v30 = ": ";
      v8 = 770;
      v31 = 770;
      v9 = "Rate limiting only compatible with streaming to DRAM";
LABEL_25:
      v32[0] = v29;
      v33 = v9;
      goto LABEL_26;
    }

    if (*a1 == 1)
    {
      sub_298BC0EB0("/usr/local/bin/ACMTool --info 2> /dev/null", 0, &v20);
      if (v21)
      {
        operator new();
      }

      std::generic_category();
      v23[0] = "LiveSystem.cpp";
      v24 = ":";
      v25 = 771;
      v37 = 3;
      v36[0] = 3617330;
      v26[0] = v23;
      p_p = v36;
      v28 = 1026;
      v29[0] = v26;
      v30 = ": ";
      v31 = 770;
      v32[0] = v29;
      v35 = 770;
      sub_298B996A4(v32, &__p);
      operator new();
    }

    if (*(a1 + 356) != 1)
    {
LABEL_51:
      if (*(a1 + 168) == 1)
      {
        v17 = *(a1 + 184) - *(a1 + 176);
        if (!v17)
        {
          std::generic_category();
          v23[0] = "LiveSystem.cpp";
          v24 = ":";
          v25 = 771;
          v19 = 3;
          LODWORD(__p) = 3487282;
          v26[0] = v23;
          p_p = &__p;
          v28 = 1026;
          v29[0] = v26;
          v30 = ": ";
          v8 = 770;
          v31 = 770;
          v9 = "No process specified to trace.";
          goto LABEL_25;
        }

        if (v17 >= 9)
        {
          std::generic_category();
          v23[0] = "LiveSystem.cpp";
          v24 = ":";
          v25 = 771;
          v19 = 3;
          LODWORD(__p) = 3618354;
          v26[0] = v23;
          p_p = &__p;
          v28 = 1026;
          v29[0] = v26;
          v30 = ": ";
          v8 = 770;
          v31 = 770;
          v9 = "Tracing multiple processes not yet supported.";
          goto LABEL_25;
        }
      }

      if (*(a1 + 357) == 1)
      {
        if (*(a1 + 288) == 3)
        {
          std::generic_category();
          v23[0] = "LiveSystem.cpp";
          v24 = ":";
          v25 = 771;
          v19 = 3;
          LODWORD(__p) = 3225394;
          v26[0] = v23;
          p_p = &__p;
          v28 = 1026;
          v29[0] = v26;
          v30 = ": ";
          v8 = 770;
          v31 = 770;
          v9 = "CIO streaming not supported in Prod";
          goto LABEL_25;
        }

        if ((*(a1 + 356) & 1) == 0)
        {
          std::generic_category();
          v23[0] = "LiveSystem.cpp";
          v24 = ":";
          v25 = 771;
          v19 = 3;
          LODWORD(__p) = 3487538;
          v26[0] = v23;
          p_p = &__p;
          v28 = 1026;
          v29[0] = v26;
          v30 = ": ";
          v8 = 770;
          v31 = 770;
          v9 = "Prod trace is only supported through the Driver";
          goto LABEL_25;
        }
      }

      else if (*(a1 + 298) == 1)
      {
        std::generic_category();
        v23[0] = "LiveSystem.cpp";
        v24 = ":";
        v25 = 771;
        v19 = 3;
        LODWORD(__p) = 3684146;
        v26[0] = v23;
        p_p = &__p;
        v28 = 1026;
        v29[0] = v26;
        v30 = ": ";
        v8 = 770;
        v31 = 770;
        v9 = "trace-to-VA only supported with Production Trace";
        goto LABEL_25;
      }

      v38 = a1;
      sub_298C605B8(a3, a1, sub_298C641E4, &v38, 65537);
      goto LABEL_27;
    }

    sub_298C5E550(a1, &v38);
    if (v39)
    {
      v16 = v38;
      *a3 = v38;
    }

    else
    {
      *a3 = 0;
      if (!v38)
      {
        goto LABEL_47;
      }

      (*(*v38 + 8))(v38);
      v16 = *a3;
    }

    if (v16)
    {
      goto LABEL_27;
    }

LABEL_47:
    if (*(a1 + 357) == 1)
    {
      sub_298C5E870(a1, a3);
    }

    else
    {
      sub_298C5EAE8(a1, a3);
    }

    if (*a3)
    {
      goto LABEL_27;
    }

    goto LABEL_51;
  }

LABEL_27:
  v15 = *MEMORY[0x29EDCA608];
}

void *sub_298C605B8(void *result, int8x8_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unsigned int *, void), uint64_t a4, int a5)
{
  v5 = result;
  v6 = a2[4];
  v49 = a2[5];
  if (v6 == v49)
  {
    *result = 0;
    return result;
  }

  v50 = 0;
  v48 = a5 ^ 1;
  while (2)
  {
    v9 = *v6;
    if (a2[25].i8[0] != 1)
    {
      goto LABEL_27;
    }

    v10 = a2[27];
    if (!*&v10)
    {
      goto LABEL_27;
    }

    v11 = 0x9DDFEA08EB382D69 * (((((v9 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(v9));
    v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v11 >> 47) ^ v11)) >> 47));
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      v14 = v12;
      if (v12 >= *&v10)
      {
        v14 = v12 % *&v10;
      }
    }

    else
    {
      v14 = (*&v10 - 1) & v12;
    }

    v15 = *(*&a2[26] + 8 * v14);
    if (!v15 || (v16 = *v15) == 0)
    {
LABEL_27:
      if (a5)
      {
        goto LABEL_3;
      }

      v20 = 1;
      v21 = *(v9 + 160);
      v22 = *(v9 + 168);
      if (v21 == v22)
      {
        goto LABEL_3;
      }

      break;
    }

    if (v13.u32[0] < 2uLL)
    {
      v17 = *&v10 - 1;
      while (1)
      {
        v19 = v16[1];
        if (v12 == v19)
        {
          if (v16[2] == v9)
          {
            goto LABEL_25;
          }
        }

        else if ((v19 & v17) != v14)
        {
          goto LABEL_27;
        }

        v16 = *v16;
        if (!v16)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v18 = v16[1];
      if (v12 == v18)
      {
        break;
      }

      if (v18 >= *&v10)
      {
        v18 %= *&v10;
      }

      if (v18 != v14)
      {
        goto LABEL_27;
      }

LABEL_15:
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    if (v16[2] != v9)
    {
      goto LABEL_15;
    }

LABEL_25:
    v20 = v48;
    v21 = *(v9 + 160);
    v22 = *(v9 + 168);
    if (v21 == v22)
    {
LABEL_3:
      if (++v6 == v49)
      {
        *v5 = 0;
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v23 = 0x9DDFEA08EB382D69 * (((((v9 >> 3) & 0x3FFFFFF) << 6) | 8) ^ HIDWORD(v9));
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v23 >> 47) ^ v23)) >> 47));
  v25 = 1;
  while (1)
  {
    if (a2[25].i8[0] == 1)
    {
      v26 = a2[27];
      if (v26)
      {
        v27 = vcnt_s8(v26);
        v27.i16[0] = vaddlv_u8(v27);
        if (v27.u32[0] > 1uLL)
        {
          v28 = v24;
          if (v24 >= *&v26)
          {
            v28 = v24 % *&v26;
          }
        }

        else
        {
          v28 = (*&v26 - 1) & v24;
        }

        v29 = *(*&a2[26] + 8 * v28);
        if (v29)
        {
          v30 = *v29;
          if (v30)
          {
            break;
          }
        }
      }
    }

LABEL_55:
    if (v20 & (((*&a5 & 0x10000) == 0) | v25))
    {
      goto LABEL_56;
    }

LABEL_33:
    v21 += 20;
    if (v21 == v22)
    {
      goto LABEL_3;
    }
  }

  if (v27.u32[0] < 2uLL)
  {
    v31 = *&v26 - 1;
    while (1)
    {
      v33 = v30[1];
      if (v24 == v33)
      {
        if (v30[2] == v9)
        {
          goto LABEL_63;
        }
      }

      else if ((v33 & v31) != v28)
      {
        goto LABEL_55;
      }

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_55;
      }
    }
  }

  while (2)
  {
    v32 = v30[1];
    if (v24 != v32)
    {
      if (v32 >= *&v26)
      {
        v32 %= *&v26;
      }

      if (v32 != v28)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

    if (v30[2] != v9)
    {
LABEL_45:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

LABEL_63:
  v37 = a2[32];
  if (v37)
  {
    v38 = *v21;
    v39 = vcnt_s8(v37);
    v39.i16[0] = vaddlv_u8(v39);
    if (v39.u32[0] > 1uLL)
    {
      v40 = *v21;
      if (*&v37 <= v38)
      {
        v40 = v38 % v37.i32[0];
      }
    }

    else
    {
      v40 = (v37.i32[0] - 1) & v38;
    }

    v41 = *(*&a2[31] + 8 * v40);
    if (v41)
    {
      v42 = *v41;
      if (v42)
      {
        if (v39.u32[0] < 2uLL)
        {
          v43 = *&v37 - 1;
          while (1)
          {
            v45 = v42[1];
            if (v45 == v38)
            {
              if (*(v42 + 4) == v38)
              {
                goto LABEL_55;
              }
            }

            else if ((v45 & v43) != v40)
            {
              goto LABEL_83;
            }

            v42 = *v42;
            if (!v42)
            {
              goto LABEL_83;
            }
          }
        }

        do
        {
          v44 = v42[1];
          if (v44 == v38)
          {
            if (*(v42 + 4) == v38)
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v44 >= *&v37)
            {
              v44 %= *&v37;
            }

            if (v44 != v40)
            {
              break;
            }
          }

          v42 = *v42;
        }

        while (v42);
      }
    }
  }

LABEL_83:
  if (!(((*&a5 & 0x10000) == 0) | v25 & 1))
  {
    goto LABEL_32;
  }

LABEL_56:
  if ((a5 & 0x100) != 0)
  {
    v34 = *(v9 + 52);
    if (v34 <= 4 && v34 != 3)
    {
      v36 = a2[7];
      result = sub_298C7A238(*v21, a2[52].u8[0], v5);
      if (*v5)
      {
        goto LABEL_87;
      }

      v50 = 1;
    }
  }

  result = a3(a4, v9, v21, v25 & 1);
  if (!*v5)
  {
LABEL_32:
    v25 = 0;
    goto LABEL_33;
  }

LABEL_87:
  if (v50)
  {
    v46 = a2[7];
    sub_298C7A238(0xFFFFFFFF, a2[52].u8[0], &v53);
    v47 = v53;
    v53 = 0;
    v54 = v47;
    sub_298AE72FC(&v54, &v55);
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    result = v53;
    if (v53)
    {
      return (*(*v53 + 8))(v53);
    }
  }

  return result;
}

void *sub_298C60A9C(void *result, int a2, int a3)
{
  if (a2 != a3)
  {
    std::generic_category();
    v13[0] = "LiveSystem.cpp";
    v13[2] = ":";
    v14 = 771;
    v12 = 3;
    LODWORD(__p) = 3748659;
    v15[0] = v13;
    v15[2] = &__p;
    v16 = 1026;
    v17[0] = v15;
    v17[2] = ": ";
    v18 = 770;
    v19[0] = v17;
    v19[2] = "LiveSystem in state='";
    v5 = a2 - 1;
    v20 = 770;
    if ((a2 - 1) > 5)
    {
      v7 = "Uninitialized";
      v6 = 13;
    }

    else
    {
      v6 = qword_298D1CC38[v5];
      v7 = off_29EEB6960[v5];
    }

    v21[0] = v19;
    v21[2] = v7;
    v21[3] = v6;
    v22 = 1282;
    v23[0] = v21;
    v23[1] = v6;
    v23[2] = "', but expected to be in state='";
    v8 = a3 - 1;
    v24 = 770;
    if ((a3 - 1) > 4)
    {
      v10 = "Uninitialized";
      v9 = 13;
    }

    else
    {
      v9 = qword_298D1CA60[v8];
      v10 = off_29EEB6788[v8];
    }

    v25[0] = v23;
    v25[1] = v6;
    v25[2] = v10;
    v25[3] = v9;
    v26 = 1282;
    v27[0] = v25;
    v27[1] = v6;
    v27[2] = "'";
    v28 = 770;
    sub_298B996A4(v27, &v29);
    operator new();
  }

  *result = 0;
  return result;
}

uint64_t sub_298C60D0C(int8x8_t *a1)
{
  v2 = &v3;
  v3 = 0;
  v4[0] = sub_298C64AE4;
  v4[1] = &v2;
  sub_298C605B8(&v5, a1, sub_298C64AB8, v4, 65537);
  return v3;
}

void *sub_298C60D6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 64);
  if (*(a1 + 417) == 1)
  {
    result = sub_298C60A9C(a5, v10, 4);
    if (*a5)
    {
      return result;
    }
  }

  else
  {
    result = sub_298C60A9C(a5, v10, 0);
    if (*a5)
    {
      return result;
    }
  }

  v12 = a2[1];
  *(a1 + 424) = *a2;
  *(a1 + 440) = v12;
  if (*(a1 + 416) != 1)
  {
LABEL_32:
    if (*(a1 + 298) == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  v13 = sub_298B9CDFC();
  v14 = v13;
  v15 = v13[4];
  if (v13[3] - v15 > 0x14uLL)
  {
    qmemcpy(v15, "LiveSystem::allocate(", 21);
    v16 = (v13[4] + 21);
    *(v14 + 32) = v16;
  }

  else
  {
    sub_298B9BCEC(v13, "LiveSystem::allocate(", 0x15uLL);
    v16 = *(v14 + 32);
  }

  v17 = *(a1 + 31);
  if (v17 >= 0)
  {
    v18 = (a1 + 8);
  }

  else
  {
    v18 = *(a1 + 8);
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 31);
  }

  else
  {
    v19 = *(a1 + 16);
  }

  if (v19 <= *(v14 + 24) - v16)
  {
    if (v19)
    {
      v20 = v19;
      memcpy(v16, v18, v19);
      v16 = (*(v14 + 32) + v20);
      *(v14 + 32) = v16;
    }
  }

  else
  {
    sub_298B9BCEC(v14, v18, v19);
    v16 = *(v14 + 32);
  }

  if (*(v14 + 24) - v16 > 0xCuLL)
  {
    qmemcpy(v16, ", CarveoutPA=", 13);
    *(v14 + 32) += 13;
  }

  else
  {
    sub_298B9BCEC(v14, ", CarveoutPA=", 0xDuLL);
  }

  v39 = *(a1 + 424);
  v40 = 0;
  v41 = 18;
  v42 = 1;
  v43 = 1;
  sub_298B9C414(v14, &v39);
  v21 = *(v14 + 32);
  if (*(v14 + 24) - v21 > 0xCuLL)
  {
    qmemcpy(v21, ", CarveoutVA=", 13);
    *(v14 + 32) += 13;
    if (*(a1 + 448) != 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_298B9BCEC(v14, ", CarveoutVA=", 0xDuLL);
    if (*(a1 + 448) != 1)
    {
LABEL_24:
      v22 = 0;
      goto LABEL_27;
    }
  }

  v22 = *(a1 + 440);
LABEL_27:
  v34 = v22;
  v35 = 0;
  LODWORD(v36) = 18;
  WORD2(v36) = 1;
  BYTE6(v36) = 1;
  sub_298B9C414(v14, &v34);
  v23 = *(v14 + 32);
  if (*(v14 + 24) - v23 > 0xEuLL)
  {
    qmemcpy(v23, ", CarveoutSize=", 15);
    *(v14 + 32) += 15;
  }

  else
  {
    sub_298B9BCEC(v14, ", CarveoutSize=", 0xFuLL);
  }

  v31[0] = *(a1 + 432);
  v31[1] = 0;
  LODWORD(v32) = 18;
  WORD2(v32) = 1;
  BYTE6(v32) = 1;
  sub_298B9C414(v14, v31);
  v24 = *(v14 + 32);
  if (*(v14 + 24) - v24 <= 1uLL)
  {
    sub_298B9BCEC(v14, ")\n", 2uLL);
    goto LABEL_32;
  }

  *v24 = 2601;
  *(v14 + 32) += 2;
  if (*(a1 + 298) == 1)
  {
LABEL_33:
    if ((*(a1 + 448) & 1) == 0)
    {
      std::generic_category();
      v27[0] = "LiveSystem.cpp";
      v27[2] = ":";
      v28 = 771;
      v26 = 3;
      LODWORD(__p) = 3224628;
      v29[0] = v27;
      v29[2] = &__p;
      v30 = 1026;
      v31[0] = v29;
      v32 = ": ";
      v33 = 770;
      v34 = v31;
      v36 = "trace-to-VA requested, but carveout VA not found";
      v37 = 770;
      sub_298B996A4(&v34, &v38);
      operator new();
    }
  }

LABEL_36:
  if ((*(a1 + 356) & 1) == 0)
  {
    *(a1 + 456) = a3;
    *(a1 + 464) = a4;
  }

  v29[0] = 0;
  v34 = a1;
  v35 = v29;
  v39 = sub_298C64B0C;
  v40 = &v34;
  result = sub_298C605B8(v31, a1, sub_298C64AB8, &v39, 65537);
  if ((*(a1 + 417) & 1) == 0)
  {
    *(a1 + 64) = 1;
  }

  *a5 = 0;
  return result;
}

void sub_298C61240(void *a1, uint64_t a2)
{
  v51 = *MEMORY[0x29EDCA608];
  if (*(a2 + 356) != 1)
  {
    goto LABEL_15;
  }

  (*(**(a2 + 536) + 112))(&v49);
  if (v50)
  {
    v4 = v49;
    *&v49 = 0;
    *a1 = v4;
    if (v4)
    {
      v5 = 0;
      if ((v50 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    *a1 = 0;
  }

  *(a2 + 456) = v49;
  if (*(a2 + 384) == 1)
  {
    v6 = *(a2 + 536);
    v47[0] = &unk_2A1F20228;
    v47[1] = a2;
    v48 = v47;
    (*(*v6 + 32))(v6, v47);
    if (v48 == v47)
    {
      (*(*v48 + 32))(v48);
      v5 = 1;
      if ((v50 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    if (v48)
    {
      (*(*v48 + 40))();
    }
  }

  v5 = 1;
  if ((v50 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v7 = v49;
  *&v49 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

LABEL_14:
  if (!v5)
  {
    goto LABEL_66;
  }

LABEL_15:
  v8 = *(a2 + 288);
  if (v8 > 2)
  {
    if (v8 == 5)
    {
      v17 = *(a2 + 376);
      v18 = *(a2 + 358);
      v19 = *(a2 + 456);
      v20 = *(a2 + 464);
      v9 = 1;
      v13 = *(a2 + 368);
      if (!v13)
      {
        v13 = 1;
      }

      goto LABEL_35;
    }

    if (v8 == 4)
    {
      v21 = *(a2 + 376);
      v9 = 4;
      v22 = *(a2 + 358);
      v23 = *(a2 + 456);
      v24 = *(a2 + 464);
      v13 = *(a2 + 368);
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v8 != 3)
    {
      v9 = 0;
      v25 = *(a2 + 358);
      v26 = *(a2 + 456);
      v27 = *(a2 + 464);
      v13 = *(a2 + 368);
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    v9 = 1;
    v14 = *(a2 + 358);
    v15 = *(a2 + 456);
    v16 = *(a2 + 464);
    v13 = *(a2 + 368);
    if (v13)
    {
      goto LABEL_35;
    }

LABEL_34:
    v13 = 2;
    goto LABEL_35;
  }

  if (v8 < 2)
  {
    goto LABEL_25;
  }

  if (v8 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 358);
  v11 = *(a2 + 456);
  v12 = *(a2 + 464);
  v13 = *(a2 + 368);
  if (!v13)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_298C73AE4(v13, 0, v9, &v49, *(a2 + 320));
  v28 = v49;
  if ((BYTE8(v49) & 1) == 0 || (*a1 = v49, !v28))
  {
    *&v49 = 0;
    v29 = *(a2 + 520);
    *(a2 + 520) = v28;
    if (v29)
    {
      v30 = *(v29 + 72);
      if (v30)
      {
        v31 = *(v29 + 80);
        v32 = *(v29 + 72);
        if (v31 != v30)
        {
          do
          {
            v35 = *--v31;
            v34 = v35;
            *v31 = 0;
            if (v35)
            {
              v36 = *(v34 + 48);
              *(v34 + 48) = 0;
              if (v36)
              {
                (*(*v36 + 16))(v36);
              }

              v33 = sub_298AFEDE4(v34);
              MEMORY[0x29C2945F0](v33, 0x10A0C406CD7DBD9);
            }
          }

          while (v31 != v30);
          v32 = *(v29 + 72);
        }

        *(v29 + 80) = v30;
        operator delete(v32);
      }

      MEMORY[0x29C2945F0](v29, 0x1070C40970A9985);
    }

    if (*(a2 + 536))
    {
      v37 = *(a2 + 520);
      operator new();
    }

    *a1 = 0;
    v38 = v49;
    *&v49 = 0;
    if (BYTE8(v49))
    {
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    else if (v38)
    {
      v39 = v38[9];
      if (v39)
      {
        v40 = v38[10];
        v41 = v38[9];
        if (v40 != v39)
        {
          do
          {
            v44 = *--v40;
            v43 = v44;
            *v40 = 0;
            if (v44)
            {
              v45 = *(v43 + 48);
              *(v43 + 48) = 0;
              if (v45)
              {
                (*(*v45 + 16))(v45);
              }

              v42 = sub_298AFEDE4(v43);
              MEMORY[0x29C2945F0](v42, 0x10A0C406CD7DBD9);
            }
          }

          while (v40 != v39);
          v41 = v38[9];
        }

        v38[10] = v39;
        operator delete(v41);
      }

      MEMORY[0x29C2945F0](v38, 0x1070C40970A9985);
    }
  }

LABEL_66:
  v46 = *MEMORY[0x29EDCA608];
}

void sub_298C6171C(int8x8_t *a1@<X0>, void *a2@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  if (a1[52].i8[0] == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 8)
      {
LABEL_4:
        *(v7 + 8) = 101;
        *v7 = *"configure";
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 9);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = a1[3].i8[7];
        if (v12 >= 0)
        {
          v13 = a1 + 1;
        }

        else
        {
          v13 = a1[1];
        }

        if (v12 >= 0)
        {
          v14 = a1[3].i8[7];
        }

        else
        {
          v14 = a1[2];
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 8)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "configure", 9uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  sub_298C60A9C(a2, a1[8].i32[0], 1);
  if (*a2)
  {
    goto LABEL_25;
  }

  if (a1[44].i8[4] == 1)
  {
    sub_298C5E550(a1, &v38);
    v19 = v39;
    v20 = v38;
    if (v39)
    {
      *a2 = v38;
      if (v20)
      {
        goto LABEL_25;
      }
    }

    v38 = 0;
    v21 = a1[67];
    a1[67] = v20;
    if (v21)
    {
      (*(**&v21 + 8))(v21);
      v20 = a1[67];
    }

    v22 = a1[16].u8[0];
    if (a1[39].i8[0] == 1)
    {
      v23 = a1[45];
      if (!v23)
      {
        v23 = 0x1000000;
        if (a1[44].i8[5])
        {
          v23 = 0x800000;
        }
      }

      v24 = (*&a1[38] + v23 - 1) / v23 * v23;
    }

    (*(*v20 + 56))(src);
    if ((v37 & 1) != 0 && (v27 = *src, *src = 0, (*a2 = v27) != 0))
    {
      v28 = 0;
      v29 = v38;
      if ((v19 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      uuid_copy(&a1[8] + 4, src);
      *a2 = 0;
      if (v37)
      {
        v30 = *src;
        *src = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }
      }

      v28 = 1;
      v29 = v38;
      if ((v19 & 1) == 0)
      {
LABEL_45:
        if (v29)
        {
          (*(*v29 + 8))(v29);
          if ((v28 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_55;
        }

LABEL_54:
        if ((v28 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_55:
        if (a1[16].i8[0] != 1 || (sub_298C61240(a2, a1), !*a2))
        {
          a1[8].i32[0] = 2;
          *a2 = 0;
        }

        goto LABEL_25;
      }
    }

    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    goto LABEL_54;
  }

  v25 = *(*&a1[7] + 80);
  if (!a1->i32[0])
  {
    sub_298C404B4(src);
    if (v36)
    {
      v26 = *src;
      *src = 0;
      *a2 = v26;
      if (v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *a2 = 0;
      LODWORD(v26) = *src;
    }

    a1[64].i32[0] = v26;
    sub_298C406A4(1, &v33);
    v31 = v33;
    v33 = 0;
    v34 = v31;
    sub_298AE72FC(&v34, &v38);
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    if (v36)
    {
      v32 = *src;
      *src = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }
    }
  }

  *src = a1;
  v36 = v25;
  sub_298C605B8(a2, a1, sub_298C65628, src, 257);
  if (!*a2)
  {
    goto LABEL_55;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C61C60(uint64_t a1)
{
  if (*(a1 + 416) != 1)
  {
    goto LABEL_24;
  }

  v2 = sub_298B9CDFC();
  v3 = v2;
  v4 = v2[4];
  if (v2[3] - v4 <= 0xCuLL)
  {
    sub_298B9BCEC(v2, "\nLiveSystem::", 0xDuLL);
    v5 = *(v3 + 32);
    if ((*(v3 + 24) - v5) > 0x11)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_298B9BCEC(v3, "pollRawTracedBytes", 0x12uLL);
    v7 = *(v3 + 32);
    if (*(v3 + 24) != v7)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  qmemcpy(v4, "\nLiveSystem::", 13);
  v9 = v2[3];
  v5 = v2[4] + 13;
  v2[4] = v5;
  if ((v9 - v5) <= 0x11)
  {
    goto LABEL_7;
  }

LABEL_4:
  *(v5 + 16) = 29541;
  *v5 = *"pollRawTracedBytes";
  v6 = *(v3 + 24);
  v7 = (*(v3 + 32) + 18);
  *(v3 + 32) = v7;
  if (v6 != v7)
  {
LABEL_5:
    *v7 = 40;
    v8 = (*(v3 + 32) + 1);
    *(v3 + 32) = v8;
    goto LABEL_9;
  }

LABEL_8:
  sub_298B9BCEC(v3, "(", 1uLL);
  v8 = *(v3 + 32);
LABEL_9:
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = (a1 + 8);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (v12 <= *(v3 + 24) - v8)
  {
    if (v12)
    {
      v13 = v12;
      memcpy(v8, v11, v12);
      v8 = (*(v3 + 32) + v13);
      *(v3 + 32) = v8;
    }
  }

  else
  {
    sub_298B9BCEC(v3, v11, v12);
    v8 = *(v3 + 32);
  }

  if (*(v3 + 24) - v8 > 1uLL)
  {
    *v8 = 2601;
    *(v3 + 32) += 2;
    v14 = sub_298B9CDFC();
    v15 = v14[2];
    if (v14[4] == v15)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  sub_298B9BCEC(v3, ")\n", 2uLL);
  v14 = sub_298B9CDFC();
  v15 = v14[2];
  if (v14[4] != v15)
  {
LABEL_23:
    v14[4] = v15;
    sub_298B9BB84(v14);
  }

LABEL_24:
  v16 = *(a1 + 520);
  if (v16)
  {
    return *(v16 + 96);
  }

  else
  {
    return 0;
  }
}

void *sub_298C61E60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 416) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 4)
      {
LABEL_4:
        *(v7 + 4) = 116;
        *v7 = 1918989427;
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 5);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = *(a1 + 31);
        if (v12 >= 0)
        {
          v13 = (a1 + 8);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v12 >= 0)
        {
          v14 = *(a1 + 31);
        }

        else
        {
          v14 = *(a1 + 16);
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 4)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "start", 5uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  result = sub_298C60A9C(a2, *(a1 + 64), 2);
  if (*a2)
  {
    return result;
  }

  if (*(a1 + 356) == 1)
  {
    result = (*(**(a1 + 536) + 72))(*(a1 + 536));
    if (*a2)
    {
      return result;
    }
  }

  else
  {
    v19 = *(*(a1 + 56) + 80);
    v25 = a1;
    v26 = v19;
    sub_298C605B8(&v24, a1, sub_298C6599C, &v25, 1);
    v22 = a1;
    v23 = v19;
    v25 = sub_298C659F4;
    v26 = &v22;
    sub_298C605B8(&v27, a1, sub_298C64AB8, &v25, 65537);
  }

  v20 = *(a1 + 288);
  if (v20 <= 5 && ((1 << v20) & 0x32) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = mach_continuous_time();
  }

  v22 = a1;
  v23 = &v24;
  v24 = v21;
  v25 = sub_298C65580;
  v26 = &v22;
  result = sub_298C605B8(&v27, a1, sub_298C64AB8, &v25, 65537);
  *(a1 + 64) = 3;
  *a2 = 0;
  return result;
}

void sub_298C621A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  if (*(a1 + 416) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 5)
      {
LABEL_4:
        *(v7 + 4) = 26723;
        *v7 = 1635021921;
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 6);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = *(a1 + 31);
        if (v12 >= 0)
        {
          v13 = (a1 + 8);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v12 >= 0)
        {
          v14 = *(a1 + 31);
        }

        else
        {
          v14 = *(a1 + 16);
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 5)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "attach", 6uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  sub_298C60A9C(a2, *(a1 + 64), 3);
  if (!*a2)
  {
    if ((*(a1 + 356) & 1) == 0)
    {
      std::generic_category();
      v26[0] = "LiveSystem.cpp";
      v26[2] = ":";
      v27 = 771;
      v25 = 3;
      LODWORD(__p) = 3552054;
      v28[0] = v26;
      v28[2] = &__p;
      v29 = 1026;
      v30[0] = v28;
      v30[2] = ": ";
      v31 = 770;
      v34 = v30;
      v36 = "Driver support missing, cannot attach";
      v37 = 770;
      sub_298B996A4(&v34, &v32);
      operator new();
    }

    sub_298C5E550(a1, &v34);
    v19 = v35;
    if (v35)
    {
      v20 = v34;
      *a2 = v34;
      if (v20)
      {
        goto LABEL_25;
      }

      v21 = 0;
    }

    else
    {
      *a2 = 0;
      v21 = v34;
    }

    v34 = 0;
    v22 = *(a1 + 536);
    *(a1 + 536) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
      v21 = *(a1 + 536);
    }

    v33[1] = 0;
    v33[2] = 0;
    v33[0] = a1 + 68;
    (*(*v21 + 64))(v21, v33);
    if (*a2)
    {
      v23 = v34;
      if (v19)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(a1 + 417) = 1;
      v23 = v34;
      if (v19)
      {
LABEL_36:
        if (!v23)
        {
          goto LABEL_25;
        }

LABEL_37:
        (*(*v23 + 8))(v23);
        goto LABEL_25;
      }
    }

    if (!v23)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
}

void *sub_298C62648@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 416) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 4)
      {
LABEL_4:
        *(v7 + 4) = 101;
        *v7 = 1937072496;
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 5);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = *(a1 + 31);
        if (v12 >= 0)
        {
          v13 = (a1 + 8);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v12 >= 0)
        {
          v14 = *(a1 + 31);
        }

        else
        {
          v14 = *(a1 + 16);
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 4)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "pause", 5uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  result = sub_298C60A9C(a2, *(a1 + 64), 3);
  if (*a2)
  {
    return result;
  }

  if (*(a1 + 356) != 1)
  {
    v19 = *(*(a1 + 56) + 80);
    result = sub_298C605B8(&v20, a1, sub_298C65A34, &v19, 1);
LABEL_30:
    *(a1 + 64) = 4;
    *a2 = 0;
    return result;
  }

  result = (*(**(a1 + 536) + 80))(*(a1 + 536));
  if (!*a2)
  {
    goto LABEL_30;
  }

  return result;
}

void *sub_298C628DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 416) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 5)
      {
LABEL_4:
        *(v7 + 4) = 25965;
        *v7 = 1970496882;
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 6);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = *(a1 + 31);
        if (v12 >= 0)
        {
          v13 = (a1 + 8);
        }

        else
        {
          v13 = *(a1 + 8);
        }

        if (v12 >= 0)
        {
          v14 = *(a1 + 31);
        }

        else
        {
          v14 = *(a1 + 16);
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 5)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "resume", 6uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  result = sub_298C60A9C(a2, *(a1 + 64), 4);
  if (!*a2)
  {
    if (*(a1 + 356) != 1)
    {
      std::generic_category();
      v21[0] = "LiveSystem.cpp";
      v21[2] = ":";
      v22 = 771;
      v20 = 3;
      LODWORD(__p) = 3291190;
      v23[0] = v21;
      v23[2] = &__p;
      v24 = 1026;
      v25[0] = v23;
      v25[2] = ": ";
      v26 = 770;
      v27[0] = v25;
      v27[2] = "Resume is not supported for non-driver traces";
      v28 = 770;
      sub_298B996A4(v27, &v29);
      operator new();
    }

    result = (*(**(a1 + 536) + 88))(*(a1 + 536));
    if (!*a2)
    {
      *(a1 + 64) = 3;
    }
  }

  return result;
}

void sub_298C62CA8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 416) != 1)
  {
    goto LABEL_24;
  }

  v4 = sub_298B9CDFC();
  v5 = v4;
  v6 = v4[4];
  if (v4[3] - v6 <= 0xCuLL)
  {
    sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
    v7 = *(v5 + 32);
    if (*(v5 + 24) - v7 > 3uLL)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_298B9BCEC(v5, "stop", 4uLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_298B9BCEC(v5, "(", 1uLL);
    v10 = *(v5 + 32);
    goto LABEL_9;
  }

  qmemcpy(v6, "\nLiveSystem::", 13);
  v11 = v4[3];
  v7 = (v4[4] + 13);
  v4[4] = v7;
  if ((v11 - v7) <= 3)
  {
    goto LABEL_7;
  }

LABEL_4:
  *v7 = 1886352499;
  v8 = *(v5 + 24);
  v9 = (*(v5 + 32) + 4);
  *(v5 + 32) = v9;
  if (v8 == v9)
  {
    goto LABEL_8;
  }

LABEL_5:
  *v9 = 40;
  v10 = (*(v5 + 32) + 1);
  *(v5 + 32) = v10;
LABEL_9:
  v12 = *(a1 + 31);
  if (v12 >= 0)
  {
    v13 = (a1 + 8);
  }

  else
  {
    v13 = *(a1 + 8);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 31);
  }

  else
  {
    v14 = *(a1 + 16);
  }

  if (v14 <= *(v5 + 24) - v10)
  {
    if (v14)
    {
      v15 = v14;
      memcpy(v10, v13, v14);
      v10 = (*(v5 + 32) + v15);
      *(v5 + 32) = v10;
    }
  }

  else
  {
    sub_298B9BCEC(v5, v13, v14);
    v10 = *(v5 + 32);
  }

  if (*(v5 + 24) - v10 <= 1uLL)
  {
    sub_298B9BCEC(v5, ")\n", 2uLL);
    v16 = sub_298B9CDFC();
    v17 = v16[2];
    if (v16[4] == v17)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  *v10 = 2601;
  *(v5 + 32) += 2;
  v16 = sub_298B9CDFC();
  v17 = v16[2];
  if (v16[4] != v17)
  {
LABEL_23:
    v16[4] = v17;
    sub_298B9BB84(v16);
  }

LABEL_24:
  sub_298C60A9C(a2, *(a1 + 64), 4);
  if (!*a2)
  {
    if ((*(a1 + 128) & 1) != 0 || (sub_298C61240(a2, a1), !*a2))
    {
      v20 = mach_continuous_time();
      if (*(a1 + 356) == 1)
      {
        (*(**(a1 + 536) + 96))(*(a1 + 536));
        if (!*a2)
        {
          sub_298C63000(a2, a1);
          if (!*a2)
          {
LABEL_35:
            v19[0] = a1;
            v19[1] = &v20;
            v21 = sub_298C655C8;
            v22 = v19;
            sub_298C605B8(&v23, a1, sub_298C64AB8, &v21, 65537);
            *(a1 + 64) = 5;
            *a2 = 0;
          }
        }
      }

      else
      {
        v21 = *(*(a1 + 56) + 80);
        sub_298C605B8(a2, a1, sub_298C65A88, &v21, 65537);
        if (!*a2)
        {
          sub_298C63000(a2, a1);
          if (!*a2)
          {
            v18 = *(*(a1 + 56) + 80);
            v21 = a1;
            v22 = v18;
            sub_298C605B8(a2, a1, sub_298C65B1C, &v21, 65537);
            if (!*a2)
            {
              goto LABEL_35;
            }
          }
        }
      }
    }
  }
}

void sub_298C63000(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 416) == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 9)
      {
LABEL_4:
        *(v7 + 8) = 20297;
        *v7 = *"tearDownIO";
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 10);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = *(a2 + 31);
        if (v12 >= 0)
        {
          v13 = (a2 + 8);
        }

        else
        {
          v13 = *(a2 + 8);
        }

        if (v12 >= 0)
        {
          v14 = *(a2 + 31);
        }

        else
        {
          v14 = *(a2 + 16);
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 9)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "tearDownIO", 0xAuLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  v18 = *(a2 + 528);
  if (v18)
  {

    sub_298C76AA8(v18, a1);
  }

  else
  {
    *a1 = 0;
  }
}

void *sub_298C63214@<X0>(int8x8_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[52].i8[0] == 1)
  {
    v4 = sub_298B9CDFC();
    v5 = v4;
    v6 = v4[4];
    if (v4[3] - v6 > 0xCuLL)
    {
      qmemcpy(v6, "\nLiveSystem::", 13);
      v11 = v4[3];
      v7 = v4[4] + 13;
      v4[4] = v7;
      if ((v11 - v7) > 0xA)
      {
LABEL_4:
        *(v7 + 7) = 1701999975;
        *v7 = *"unconfigure";
        v8 = *(v5 + 24);
        v9 = (*(v5 + 32) + 11);
        *(v5 + 32) = v9;
        if (v8 != v9)
        {
LABEL_5:
          *v9 = 40;
          v10 = (*(v5 + 32) + 1);
          *(v5 + 32) = v10;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v5, "(", 1uLL);
        v10 = *(v5 + 32);
LABEL_9:
        v12 = a1[3].i8[7];
        if (v12 >= 0)
        {
          v13 = a1 + 1;
        }

        else
        {
          v13 = a1[1];
        }

        if (v12 >= 0)
        {
          v14 = a1[3].i8[7];
        }

        else
        {
          v14 = a1[2];
        }

        if (v14 <= *(v5 + 24) - v10)
        {
          if (v14)
          {
            v15 = v14;
            memcpy(v10, v13, v14);
            v10 = (*(v5 + 32) + v15);
            *(v5 + 32) = v10;
          }
        }

        else
        {
          sub_298B9BCEC(v5, v13, v14);
          v10 = *(v5 + 32);
        }

        if (*(v5 + 24) - v10 > 1uLL)
        {
          *v10 = 2601;
          *(v5 + 32) += 2;
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v5, ")\n", 2uLL);
          v16 = sub_298B9CDFC();
          v17 = v16[2];
          if (v16[4] == v17)
          {
            goto LABEL_24;
          }
        }

        v16[4] = v17;
        sub_298B9BB84(v16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v4, "\nLiveSystem::", 0xDuLL);
      v7 = *(v5 + 32);
      if ((*(v5 + 24) - v7) > 0xA)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v5, "unconfigure", 0xBuLL);
    v9 = *(v5 + 32);
    if (*(v5 + 24) != v9)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  if (a1[44].i8[4] != 1)
  {
    if (a1[52].i8[0] != 1)
    {
      goto LABEL_51;
    }

    v20 = sub_298B9CDFC();
    v21 = v20;
    v22 = v20[4];
    if (v20[3] - v22 > 0xCuLL)
    {
      qmemcpy(v22, "\nLiveSystem::", 13);
      v27 = v20[3];
      v23 = (v20[4] + 13);
      v20[4] = v23;
      if ((v27 - v23) > 0xE)
      {
LABEL_31:
        qmemcpy(v23, "enablePowerDown", 15);
        v24 = *(v21 + 24);
        v25 = (*(v21 + 32) + 15);
        *(v21 + 32) = v25;
        if (v24 != v25)
        {
LABEL_32:
          *v25 = 40;
          v26 = (*(v21 + 32) + 1);
          *(v21 + 32) = v26;
LABEL_36:
          v28 = a1[3].i8[7];
          if (v28 >= 0)
          {
            v29 = a1 + 1;
          }

          else
          {
            v29 = a1[1];
          }

          if (v28 >= 0)
          {
            v30 = a1[3].i8[7];
          }

          else
          {
            v30 = a1[2];
          }

          if (v30 <= *(v21 + 24) - v26)
          {
            if (v30)
            {
              v31 = v30;
              memcpy(v26, v29, v30);
              v26 = (*(v21 + 32) + v31);
              *(v21 + 32) = v26;
            }
          }

          else
          {
            sub_298B9BCEC(v21, v29, v30);
            v26 = *(v21 + 32);
          }

          if (*(v21 + 24) - v26 <= 1uLL)
          {
            sub_298B9BCEC(v21, ")\n", 2uLL);
            v32 = sub_298B9CDFC();
            v33 = v32[2];
            if (v32[4] == v33)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          *v26 = 2601;
          *(v21 + 32) += 2;
          v32 = sub_298B9CDFC();
          v33 = v32[2];
          if (v32[4] != v33)
          {
LABEL_50:
            v32[4] = v33;
            sub_298B9BB84(v32);
          }

LABEL_51:
          if (!a1->i32[0])
          {
            sub_298C406A4(0, &v36);
            v34 = v36;
            v36 = 0;
            v38 = v34;
            sub_298AE72FC(&v38, v37);
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }

            if (v36)
            {
              (*(*v36 + 8))(v36);
            }

            IOPMAssertionRelease(a1[64].u32[0]);
          }

          v35 = *(*&a1[7] + 80);
          v37[0] = sub_298C65610;
          v37[1] = &v35;
          result = sub_298C605B8(&v38, a1, sub_298C64AB8, v37, 1);
          goto LABEL_58;
        }

LABEL_35:
        sub_298B9BCEC(v21, "(", 1uLL);
        v26 = *(v21 + 32);
        goto LABEL_36;
      }
    }

    else
    {
      sub_298B9BCEC(v20, "\nLiveSystem::", 0xDuLL);
      v23 = *(v21 + 32);
      if (*(v21 + 24) - v23 > 0xEuLL)
      {
        goto LABEL_31;
      }
    }

    sub_298B9BCEC(v21, "enablePowerDown", 0xFuLL);
    v25 = *(v21 + 32);
    if (*(v21 + 24) != v25)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v18 = a1[67];
  if (v18[8] == 1)
  {
    result = (*(*v18 + 120))(v18);
    if (*a2)
    {
      return result;
    }

    v18 = a1[67];
  }

  result = (*(*v18 + 104))(v18);
  if (!*a2)
  {
    result = a1[67];
    a1[67] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
      *a2 = 0;
      return result;
    }

LABEL_58:
    *a2 = 0;
  }

  return result;
}

double sub_298C63770@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 416) == 1)
  {
    v6 = sub_298B9CDFC();
    v7 = v6;
    v8 = v6[4];
    if (v6[3] - v8 > 0xCuLL)
    {
      qmemcpy(v8, "\nLiveSystem::", 13);
      v13 = v6[3];
      v9 = (v6[4] + 13);
      v6[4] = v9;
      if ((v13 - v9) > 3)
      {
LABEL_4:
        *v9 = 1702257011;
        v10 = *(v7 + 24);
        v11 = (*(v7 + 32) + 4);
        *(v7 + 32) = v11;
        if (v10 != v11)
        {
LABEL_5:
          *v11 = 40;
          v12 = (*(v7 + 32) + 1);
          *(v7 + 32) = v12;
          goto LABEL_9;
        }

LABEL_8:
        sub_298B9BCEC(v7, "(", 1uLL);
        v12 = *(v7 + 32);
LABEL_9:
        v14 = *(a1 + 31);
        if (v14 >= 0)
        {
          v15 = (a1 + 8);
        }

        else
        {
          v15 = *(a1 + 8);
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 31);
        }

        else
        {
          v16 = *(a1 + 16);
        }

        if (v16 <= *(v7 + 24) - v12)
        {
          if (v16)
          {
            v17 = v16;
            memcpy(v12, v15, v16);
            v12 = (*(v7 + 32) + v17);
            *(v7 + 32) = v12;
          }
        }

        else
        {
          sub_298B9BCEC(v7, v15, v16);
          v12 = *(v7 + 32);
        }

        if (*(v7 + 24) - v12 > 1uLL)
        {
          *v12 = 2601;
          *(v7 + 32) += 2;
          v18 = sub_298B9CDFC();
          v19 = v18[2];
          if (v18[4] == v19)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_298B9BCEC(v7, ")\n", 2uLL);
          v18 = sub_298B9CDFC();
          v19 = v18[2];
          if (v18[4] == v19)
          {
            goto LABEL_24;
          }
        }

        v18[4] = v19;
        sub_298B9BB84(v18);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B9BCEC(v6, "\nLiveSystem::", 0xDuLL);
      v9 = *(v7 + 32);
      if (*(v7 + 24) - v9 > 3uLL)
      {
        goto LABEL_4;
      }
    }

    sub_298B9BCEC(v7, "save", 4uLL);
    v11 = *(v7 + 32);
    if (*(v7 + 24) != v11)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_24:
  sub_298C60A9C(&v75, *(a1 + 64), 5);
  v21 = v75;
  if (v75)
  {
LABEL_27:
    *(a3 + 24) |= 1u;
    *a3 = v21;
    return result;
  }

  v22 = *(a1 + 536);
  if (v22)
  {
    (*(*v22 + 40))(*(a1 + 536));
    v23 = (*(*v22 + 48))(v22);
    sub_298C7545C(*(a1 + 520), &v75);
    v21 = v75;
    if (v75)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = 1;
    sub_298C7545C(*(a1 + 520), &v75);
    v21 = v75;
    if (v75)
    {
      goto LABEL_27;
    }
  }

  v79 = 0uLL;
  v80 = 0;
  v24 = (a1 + 472);
  v25 = *(a1 + 480);
  if (!v25)
  {
    if (!*(a1 + 484))
    {
      goto LABEL_69;
    }

    v26 = *(a1 + 488);
    if (v26 > 0x40)
    {
      v28 = 0;
      goto LABEL_44;
    }

LABEL_51:
    if (v26)
    {
      v46 = *v24;
      v47 = (v26 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v47)
      {
        v48 = v47 + 1;
        v49 = (v47 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v50 = &v46[2 * v49];
        v51 = v46 + 2;
        v52 = v49;
        do
        {
          *(v51 - 2) = -4096;
          *v51 = -4096;
          v51 += 4;
          v52 -= 2;
        }

        while (v52);
        if (v48 == v49)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v50 = *v24;
      }

      v53 = &v46[2 * v26];
      do
      {
        *v50 = -4096;
        v50 += 2;
      }

      while (v50 != v53);
    }

LABEL_60:
    *(a1 + 480) = 0;
    goto LABEL_69;
  }

  v26 = *(a1 + 488);
  if (v26 <= 4 * v25 || v26 < 0x41)
  {
    goto LABEL_51;
  }

  v27 = 1 << (33 - __clz(v25 - 1));
  if (v27 <= 64)
  {
    v28 = 64;
  }

  else
  {
    v28 = v27;
  }

  if (v28 == v26)
  {
    *(a1 + 480) = 0;
    v29 = *(a1 + 472);
    v30 = (v26 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = v30 + 1;
      v32 = (v30 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v33 = (v29 + 16 * v32);
      v34 = (v29 + 16);
      v35 = v32;
      do
      {
        *(v34 - 2) = -4096;
        *v34 = -4096;
        v34 += 4;
        v35 -= 2;
      }

      while (v35);
      if (v31 == v32)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v33 = *(a1 + 472);
    }

    v54 = (v29 + 16 * v26);
    do
    {
      *v33 = -4096;
      v33 += 2;
    }

    while (v33 != v54);
    goto LABEL_69;
  }

LABEL_44:
  MEMORY[0x29C2945E0](*v24, 8);
  if (!v28)
  {
    *v24 = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    goto LABEL_69;
  }

  v36 = (4 * v28 / 3u + 1) | ((4 * v28 / 3u + 1) >> 1);
  v37 = v36 | (v36 >> 2) | ((v36 | (v36 >> 2)) >> 4);
  LODWORD(v37) = (((v37 | (v37 >> 8)) >> 16) | v37 | (v37 >> 8)) + 1;
  *(a1 + 488) = v37;
  v38 = operator new(16 * v37, 8uLL);
  *(a1 + 472) = v38;
  *(a1 + 480) = 0;
  v39 = *(a1 + 488);
  if (v39)
  {
    v40 = (v39 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v40)
    {
      v41 = v40 + 1;
      v42 = (v40 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v43 = &v38[2 * v42];
      v44 = v38 + 2;
      v45 = v42;
      do
      {
        *(v44 - 2) = -4096;
        *v44 = -4096;
        v44 += 4;
        v45 -= 2;
      }

      while (v45);
      if (v41 == v42)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v43 = v38;
    }

    v55 = &v38[2 * v39];
    do
    {
      *v43 = -4096;
      v43 += 2;
    }

    while (v43 != v55);
  }

LABEL_69:
  v74 = a3;
  v77 = &v79;
  v78 = 0;
  if (*(a1 + 504))
  {
    sub_298C5BA84(&v77, a1 + 496);
    if (v78)
    {
      if (v23)
      {
        v56 = *(v77 + 3);
      }

      else
      {
        v56 = -1;
      }

      sub_298C75A58(*(a1 + 520), v56, &v75);
    }
  }

  sub_298AFEEB0(&v77);
  sub_298C76148(*(a1 + 520), &v75);
  v58 = v76;
  v57 = v75;
  if (v75 != v76)
  {
    v59 = a2[2];
    v60 = v75;
    do
    {
      v61 = *v60;
      *v60 = 0;
      v62 = a2[3];
      if (v59 < v62)
      {
        *v59 = v61;
        v59 += 8;
      }

      else
      {
        v63 = a2[1];
        v64 = v59 - v63;
        v65 = (v59 - v63) >> 3;
        v66 = v65 + 1;
        if ((v65 + 1) >> 61)
        {
          sub_298ADDDA0();
        }

        v67 = v62 - v63;
        if (v67 >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 61))
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        v69 = v65;
        v70 = (8 * v65);
        v71 = &v70[-v69];
        *v70 = v61;
        v59 = (v70 + 1);
        memcpy(v71, v63, v64);
        a2[1] = v71;
        a2[2] = v59;
        a2[3] = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      a2[2] = v59;
      ++v60;
    }

    while (v60 != v58);
    if (!v57)
    {
      goto LABEL_98;
    }

    do
    {
      v73 = *--v58;
      v72 = v73;
      *v58 = 0;
      if (v73)
      {
        (*(*v72 + 16))(v72);
      }
    }

    while (v58 != v57);
    goto LABEL_97;
  }

  if (v75)
  {
LABEL_97:
    operator delete(v57);
  }

LABEL_98:
  *(v74 + 24) &= ~1u;
  result = *&v79;
  *v74 = v79;
  *(v74 + 16) = v80;
  return result;
}

uint64_t sub_298C63FD4(uint64_t a1, uint64_t a2)
{
  v17 = "Status";
  v18 = 6;
  v19 = 0;
  if (!sub_298B89FD8(a2, &v17, &v19))
  {
    v8 = *a2 + 56 * *(a2 + 16);
    goto LABEL_13;
  }

  if (v19 == *a2 + 56 * *(a2 + 16))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v5 = *(v19 + 24);
  if (v5 != 5)
  {
    if (v5 == 6)
    {
      v7 = *(v19 + 55);
      if (v7 >= 0)
      {
        v6 = (v19 + 32);
      }

      else
      {
        v6 = *(v19 + 32);
      }

      if (v7 >= 0)
      {
        v2 = *(v19 + 55);
      }

      else
      {
        v2 = *(v19 + 40);
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = *(v19 + 32);
  v2 = *(v19 + 40);
LABEL_14:
  for (i = 0; i != 7; ++i)
  {
    v10 = dword_298D1CA40[i];
    v11 = v10 - 1;
    if ((v10 - 1) > 5)
    {
      v12 = "Uninitialized";
      if (v2 != 13)
      {
        continue;
      }
    }

    else
    {
      v12 = off_29EEB6960[v11];
      if (qword_298D1CC38[v11] != v2)
      {
        continue;
      }
    }

    if (!memcmp(v12, v6, v2))
    {
      break;
    }
  }

  *(a1 + 64) = v10;
  v17 = "UUID";
  v18 = 4;
  v19 = 0;
  if (!sub_298B89FD8(a2, &v17, &v19))
  {
    v15 = *a2 + 56 * *(a2 + 16);
    goto LABEL_31;
  }

  if (v19 == *a2 + 56 * *(a2 + 16))
  {
    goto LABEL_31;
  }

  v13 = *(v19 + 24);
  if (v13 == 5)
  {
    v14 = *(v19 + 32);
    return uuid_parse(v14, (a1 + 68));
  }

  if (v13 != 6)
  {
LABEL_31:
    v14 = 0;
    return uuid_parse(v14, (a1 + 68));
  }

  if (*(v19 + 55) >= 0)
  {
    v14 = (v19 + 32);
  }

  else
  {
    v14 = *(v19 + 32);
  }

  return uuid_parse(v14, (a1 + 68));
}

uint64_t *sub_298C641E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = *MEMORY[0x29EDCA608];
  v5 = *result;
  if (*(*result + 357))
  {
    if ((*(a2 + 97) & 1) == 0)
    {
      v33[0] = "LiveSystem.cpp";
      v34 = ":";
      v35 = 771;
      std::generic_category();
      v32 = 3;
      v31[0] = 3356978;
      v36[0] = v33;
      v37 = v31;
      v38 = 1026;
      v39[0] = v36;
      v40 = ": ";
      v41 = 770;
      v43[0] = v39;
      v44 = "Cannot trace cluster ";
      v45 = 770;
      v46[0] = v43;
      v47 = a2;
      v48 = 1026;
      v49[0] = v46;
      v50 = " (ID = ";
      v51 = 770;
      v6 = *(a2 + 48);
      if (v6)
      {
        v7 = 20;
        do
        {
          v59[v7--] = (v6 % 0xA) | 0x30;
          v8 = v6 > 9;
          v6 /= 0xAuLL;
        }

        while (v8);
        v9 = v7 + 1;
        v10 = 20 - v7;
        if ((20 - v7) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v60 = 48;
        v9 = 20;
        v10 = 1;
      }

      if (v10 > 0x16)
      {
        operator new();
      }

      v30 = v10;
      if (v9 != 21)
      {
        memcpy(&__dst, &v59[v9], v10);
      }

      *(&__dst + v10) = 0;
      v52[0] = v49;
      p_dst = &__dst;
      v54 = 1026;
      v26 = "), it doesn't support prod-fused trace";
      goto LABEL_53;
    }
  }

  else if ((*(a2 + 96) & 1) == 0)
  {
    v33[0] = "LiveSystem.cpp";
    v34 = ":";
    v35 = 771;
    std::generic_category();
    v32 = 3;
    v31[0] = 3618866;
    v36[0] = v33;
    v37 = v31;
    v38 = 1026;
    v39[0] = v36;
    v40 = ": ";
    v41 = 770;
    v43[0] = v39;
    v44 = "Cannot trace cluster ";
    v45 = 770;
    v46[0] = v43;
    v47 = a2;
    v48 = 1026;
    v49[0] = v46;
    v50 = " (ID = ";
    v51 = 770;
    v17 = *(a2 + 48);
    if (v17)
    {
      v18 = 20;
      do
      {
        v59[v18--] = (v17 % 0xA) | 0x30;
        v8 = v17 > 9;
        v17 /= 0xAuLL;
      }

      while (v8);
      v19 = v18 + 1;
      v20 = 20 - v18;
      if ((20 - v18) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_59:
        sub_298ADDDA0();
      }
    }

    else
    {
      v60 = 48;
      v19 = 20;
      v20 = 1;
    }

    if (v20 > 0x16)
    {
      operator new();
    }

    v30 = v20;
    if (v19 != 21)
    {
      memcpy(&__dst, &v59[v19], v20);
    }

    *(&__dst + v20) = 0;
    v52[0] = v49;
    p_dst = &__dst;
    v54 = 1026;
    v26 = "), it doesn't support dev-fused trace";
LABEL_53:
    v55[0] = v52;
    v56 = v26;
    v58 = 770;
    sub_298B996A4(v55, &__p);
    operator new();
  }

  if (*(v5 + 352) == 1)
  {
    v11 = *(a2 + 56);
    if ((v11 - 11) <= 0xFFFFFFFFFFFFFFF5)
    {
      v43[0] = "LiveSystem.cpp";
      v44 = ":";
      v45 = 771;
      std::generic_category();
      v12 = 3;
      HIBYTE(v37) = 3;
      LODWORD(v36[0]) = 3684658;
      v46[0] = v43;
      v47 = v36;
      v48 = 1026;
      v49[0] = v46;
      v50 = ": ";
      v51 = 770;
      v52[0] = v49;
      p_dst = "Address tracing is unsupported on ";
      v54 = 770;
      v13 = v11 - 1;
      if ((v11 - 1) <= 0x11)
      {
        v12 = qword_298D1CA88[v13];
        v14 = off_29EEB67B0[v13];
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  v15 = *(v5 + 288);
  if ((v15 - 4) < 2 || v15 == 2)
  {
    result = sub_298C5ED60(*result, a3);
    if (*a3)
    {
      goto LABEL_58;
    }
  }

  else if (v15 == 3)
  {
    v21 = *(**(v5 + 32) + 56);
    if (v21 != 7 && v21 != 9)
    {
      std::generic_category();
      v43[0] = "LiveSystem.cpp";
      v44 = ":";
      v45 = 771;
      v12 = 3;
      HIBYTE(v37) = 3;
      LODWORD(v36[0]) = 3618097;
      v46[0] = v43;
      v47 = v36;
      v48 = 1026;
      v49[0] = v46;
      v50 = ": ";
      v51 = 770;
      v52[0] = v49;
      p_dst = "Streaming to CIO is unsupported on ";
      v27 = v21 - 1;
      v54 = 770;
      if ((v21 - 1) <= 0x11)
      {
        v12 = qword_298D1CB18[v27];
        v14 = off_29EEB6840[v27];
        goto LABEL_57;
      }

LABEL_56:
      v14 = "H11";
LABEL_57:
      v55[0] = v52;
      v56 = v14;
      v57 = v12;
      v58 = 1282;
      sub_298B996A4(v55, v39);
      operator new();
    }

    *a3 = 0;
  }

  if (*(v5 + 298) == 1)
  {
    v23 = *(a2 + 56);
    if ((v23 - 11) <= 0xFFFFFFFD)
    {
      v43[0] = "LiveSystem.cpp";
      v44 = ":";
      v45 = 771;
      std::generic_category();
      v12 = 3;
      HIBYTE(v37) = 3;
      LODWORD(v36[0]) = 3748147;
      v46[0] = v43;
      v47 = v36;
      v48 = 1026;
      v49[0] = v46;
      v50 = ": ";
      v51 = 770;
      v52[0] = v49;
      p_dst = "Trace-to-VA is unsupported on ";
      v54 = 770;
      v24 = v23 - 1;
      if ((v23 - 1) <= 0x11)
      {
        v12 = qword_298D1CBA8[v24];
        v14 = off_29EEB68D0[v24];
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  if (*(v5 + 408) != 1 || (result = sub_298C5F144(v5, a3), !*a3))
  {
    *a3 = 0;
    v25 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_58:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C64AB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*a1)(*(a1 + 8));
  *a2 = 0;
  return result;
}

uint64_t sub_298C64B0C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v25 = a2;
  v5 = sub_298C64EA8(&v4[59], &v25);
  *v5 = *(a2 + 56);
  *(v5 + 4) = *(a2 + 48);
  result = std::string::operator=((v5 + 8), a2);
  *(v5 + 32) = *(a2 + 52);
  *(v5 + 36) = 1;
  *(v5 + 40) = -858993459 * ((*(a2 + 168) - *(a2 + 160)) >> 4);
  if ((v4[36].i32[0] - 2) >= 4 && (v4[44].i8[4] & 1) == 0)
  {
    v7 = v4[54];
    v30 = &v31;
    v31 = 0;
    v25 = sub_298C64AE4;
    v26 = &v30;
    result = sub_298C605B8(&v32, v4, sub_298C64AB8, &v25, 65537);
    v8 = (*&v7 / v31) & -*(a2 + 104);
    if (v4[52].i8[0] == 1)
    {
      v9 = sub_298B9CDFC();
      v10 = v9;
      v11 = v9[4];
      if (v9[3] - v11 > 0x1FuLL)
      {
        qmemcpy(v11, "LiveSystem::allocateSubCarveout(", 32);
        v12 = (v9[4] + 32);
        v10[4] = v12;
      }

      else
      {
        sub_298B9BCEC(v9, "LiveSystem::allocateSubCarveout(", 0x20uLL);
        v12 = v10[4];
      }

      v13 = v4[3].i8[7];
      if (v13 >= 0)
      {
        v14 = v4 + 1;
      }

      else
      {
        v14 = v4[1];
      }

      if (v13 >= 0)
      {
        v15 = v4[3].i8[7];
      }

      else
      {
        v15 = v4[2];
      }

      if (v15 <= v10[3] - v12)
      {
        if (v15)
        {
          v16 = v15;
          memcpy(v12, v14, v15);
          v12 = (v10[4] + v16);
          v10[4] = v12;
        }
      }

      else
      {
        sub_298B9BCEC(v10, v14, v15);
        v12 = v10[4];
      }

      if (v10[3] - v12 > 0xBuLL)
      {
        v12[2] = 1027885426;
        *v12 = *", ClusterID=";
        v10[4] += 12;
      }

      else
      {
        sub_298B9BCEC(v10, ", ClusterID=", 0xCuLL);
      }

      sub_298B8FC48(v10, *(a2 + 48), 0, 0, 0);
      v17 = v10[4];
      if (v10[3] - v17 > 0xDuLL)
      {
        qmemcpy(v17, ", ClusterName=", 14);
        v10[4] += 14;
      }

      else
      {
        sub_298B9BCEC(v10, ", ClusterName=", 0xEuLL);
      }

      v18 = *(a2 + 23);
      if (v18 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      sub_298B9BCEC(v10, v19, v20);
      v21 = v10[4];
      if ((v10[3] - v21) > 0x11)
      {
        *(v21 + 16) = 15717;
        *v21 = *", SubCarveoutSize=";
        v10[4] += 18;
      }

      else
      {
        sub_298B9BCEC(v10, ", SubCarveoutSize=", 0x12uLL);
      }

      v25 = v8;
      v26 = 0;
      v27 = 18;
      v28 = 1;
      v29 = 1;
      result = sub_298B9C414(v10, &v25);
      v22 = v10[4];
      if (v10[3] - v22 > 1uLL)
      {
        *v22 = 2601;
        v10[4] += 2;
      }

      else
      {
        result = sub_298B9BCEC(v10, ")\n", 2uLL);
      }
    }

    v23 = *(a1 + 8);
    *(v5 + 64) = *v23 + *&v4[53];
    if (v4[56].i8[0] == 1)
    {
      v24 = *v23 + *&v4[55];
    }

    else
    {
      v24 = 0;
    }

    *(v5 + 72) = v8;
    *(v5 + 80) = v24;
    *v23 += v8;
  }

  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 97) = v4[44].u8[0];
  return result;
}

uint64_t sub_298C64EA8(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v10 = (4 * *(a1 + 8) + 4);
    goto LABEL_35;
  }

  v5 = *a1;
  v6 = ((v3 >> 4) ^ (v3 >> 9)) & (v4 - 1);
  v7 = (*a1 + 16 * v6);
  v8 = *v7;
  if (v3 != *v7)
  {
    v26 = 0;
    v27 = 1;
    while (v8 != -4096)
    {
      if (v26)
      {
        v28 = 0;
      }

      else
      {
        v28 = v8 == -8192;
      }

      if (v28)
      {
        v26 = v7;
      }

      v29 = v6 + v27++;
      v6 = v29 & (v4 - 1);
      v7 = (v5 + 16 * v6);
      v8 = *v7;
      if (v3 == *v7)
      {
        goto LABEL_3;
      }
    }

    if (v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v7;
    }

    v31 = *(a1 + 8);
    if (4 * v31 + 4 < 3 * v4)
    {
      if (v4 + ~v31 - *(a1 + 12) > v4 >> 3)
      {
        goto LABEL_6;
      }

      v32 = a2;
      sub_298B67F2C(a1, *(a1 + 16));
      v40 = *(a1 + 16) - 1;
      v41 = v40 & ((v3 >> 4) ^ (v3 >> 9));
      v30 = *a1 + 16 * v41;
      v42 = *v30;
      if (v3 != *v30)
      {
        v36 = 0;
        v43 = 1;
        while (v42 != -4096)
        {
          if (v36)
          {
            v44 = 0;
          }

          else
          {
            v44 = v42 == -8192;
          }

          if (v44)
          {
            v36 = v30;
          }

          v45 = v41 + v43++;
          v41 = v45 & v40;
          v30 = *a1 + 16 * v41;
          v42 = *v30;
          if (v3 == *v30)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_60;
      }

LABEL_49:
      a2 = v32;
      ++*(a1 + 8);
      if (v3 == -4096)
      {
LABEL_8:
        *v30 = v3;
        *(v30 + 8) = 0;
        v13 = (a1 + 24);
        v12 = *(a1 + 24);
        v52 = 0u;
        memset(v53, 0, sizeof(v53));
        v50 = 0u;
        v51 = 0u;
        v47 = *a2;
        *v48 = 0u;
        v49 = 0u;
        LOBYTE(v54) = 0;
        v56 = 0;
        v57 = 0u;
        *__p = 0u;
        v59 = 0u;
        v60 = 0;
        v14 = &v47;
        v15 = *(a1 + 32);
        if (v15 >= *(a1 + 36))
        {
          if (v12 <= &v47 && v12 + 200 * v15 > &v47)
          {
            v46 = &v48[-1] - v12;
            sub_298C5BE04(a1 + 24, v15 + 1);
            v12 = *v13;
            v14 = &v46[*v13];
          }

          else
          {
            sub_298C5BE04(a1 + 24, v15 + 1);
            v12 = *v13;
            v14 = &v47;
          }
        }

        v16 = v12 + 200 * *(a1 + 32);
        *v16 = *v14;
        *(v16 + 8) = *(v14 + 1);
        v17 = *(v14 + 1);
        *(v16 + 32) = *(v14 + 4);
        *(v16 + 16) = v17;
        *(v14 + 3) = 0;
        *(v14 + 4) = 0;
        *(v14 + 2) = 0;
        *(v16 + 40) = *(v14 + 40);
        v18 = *(v14 + 56);
        v19 = *(v14 + 72);
        v20 = *(v14 + 88);
        *(v16 + 103) = *(v14 + 103);
        *(v16 + 88) = v20;
        *(v16 + 72) = v19;
        *(v16 + 56) = v18;
        *(v16 + 112) = 0;
        *(v16 + 136) = 0;
        if (v14[136] == 1)
        {
          v21 = *(v14 + 7);
          *(v16 + 128) = *(v14 + 16);
          *(v16 + 112) = v21;
          *(v14 + 15) = 0;
          *(v14 + 16) = 0;
          *(v14 + 14) = 0;
          *(v16 + 136) = 1;
        }

        v22 = *(v14 + 20);
        *(v16 + 144) = *(v14 + 9);
        *(v16 + 160) = v22;
        *(v16 + 168) = 0;
        *(v16 + 176) = 0;
        *(v16 + 184) = 0;
        *(v16 + 168) = *(v14 + 168);
        v23 = *(v14 + 24);
        *(v16 + 184) = *(v14 + 23);
        *(v14 + 21) = 0;
        *(v14 + 22) = 0;
        *(v14 + 23) = 0;
        *(v14 + 24) = 0;
        *(v16 + 192) = v23;
        ++*(a1 + 32);
        v24 = v60;
        v60 = 0;
        if (v24)
        {
          (*(*v24 + 16))(v24);
        }

        if (__p[1])
        {
          *&v59 = __p[1];
          operator delete(__p[1]);
        }

        if (v56 == 1 && v55 < 0)
        {
          operator delete(v54);
          if ((SHIBYTE(v49) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }
        }

        else if ((SHIBYTE(v49) & 0x80000000) == 0)
        {
LABEL_18:
          v9 = *(a1 + 32) - 1;
          *(v30 + 8) = v9;
          return *(a1 + 24) + 200 * v9 + 8;
        }

        operator delete(v48[1]);
        goto LABEL_18;
      }

LABEL_7:
      --*(a1 + 12);
      goto LABEL_8;
    }

LABEL_35:
    v32 = a2;
    sub_298B67F2C(a1, 2 * v4);
    v33 = *(a1 + 16) - 1;
    v34 = v33 & ((v3 >> 4) ^ (v3 >> 9));
    v30 = *a1 + 16 * v34;
    v35 = *v30;
    if (v3 != *v30)
    {
      v36 = 0;
      v37 = 1;
      while (v35 != -4096)
      {
        if (v36)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 == -8192;
        }

        if (v38)
        {
          v36 = v30;
        }

        v39 = v34 + v37++;
        v34 = v39 & v33;
        v30 = *a1 + 16 * v34;
        v35 = *v30;
        if (v3 == *v30)
        {
          goto LABEL_49;
        }
      }

LABEL_60:
      if (v36)
      {
        v30 = v36;
      }

      a2 = v32;
LABEL_6:
      v11 = *v30;
      ++*(a1 + 8);
      if (v11 == -4096)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_3:
  v9 = *(v5 + 16 * v6 + 8);
  return *(a1 + 24) + 200 * v9 + 8;
}

uint64_t sub_298C6536C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F20228;
  a2[1] = v2;
  return result;
}

unint64_t sub_298C65398(unint64_t result, int *a2, mach_error_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(result + 8);
  if (*(v5 + 416) != 1)
  {
    goto LABEL_20;
  }

  v6 = sub_298B9CDFC();
  v7 = v6;
  if (v3 == 1)
  {
    v8 = 22;
  }

  else
  {
    v8 = 21;
  }

  if (v3 == 1)
  {
    v9 = "ThrottleAction::Resume";
  }

  else
  {
    v9 = "ThrottleAction::Pause";
  }

  v11 = v6[3];
  v10 = v6[4];
  if (v8 <= v11 - v10)
  {
    memcpy(v10, v9, v8);
    v14 = *(v7 + 24);
    v12 = (*(v7 + 32) + v8);
    *(v7 + 32) = v12;
    if ((v14 - v12) > 1)
    {
LABEL_10:
      *v12 = 8250;
      *(v7 + 32) += 2;
      result = mach_error_string(v4);
      v13 = *(v7 + 32);
      if (!result)
      {
        goto LABEL_18;
      }

LABEL_14:
      v15 = result;
      result = strlen(result);
      v16 = result;
      if (result <= *(v7 + 24) - v13)
      {
        if (result)
        {
          result = memcpy(v13, v15, result);
          v13 = (*(v7 + 32) + v16);
          *(v7 + 32) = v13;
        }
      }

      else
      {
        result = sub_298B9BCEC(v7, v15, result);
        v13 = *(v7 + 32);
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_298B9BCEC(v7, v9, v8);
    v12 = *(v7 + 32);
    if (*(v7 + 24) - v12 > 1uLL)
    {
      goto LABEL_10;
    }
  }

  sub_298B9BCEC(v7, ": ", 2uLL);
  result = mach_error_string(v4);
  v13 = *(v7 + 32);
  if (result)
  {
    goto LABEL_14;
  }

LABEL_18:
  if (*(v7 + 24) == v13)
  {
    result = sub_298B9BCEC(v7, "\n", 1uLL);
    v17 = *(v5 + 392);
    if (v4)
    {
      v19 = 1;
    }

    else
    {
      v19 = v17 == 0;
    }

    if (!v19)
    {
      goto LABEL_30;
    }

    return result;
  }

  *v13 = 10;
  ++*(v7 + 32);
LABEL_20:
  v17 = *(v5 + 392);
  if (v4)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 == 0;
  }

  if (!v18)
  {
LABEL_30:
    v20 = *(v5 + 400);

    return v17(v3 == 1, v20);
  }

  return result;
}

uint64_t sub_298C65580(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a2;
  result = sub_298C64EA8(v3 + 472, &v5);
  *(result + 48) = *a1[1];
  return result;
}

uint64_t sub_298C655C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a2;
  result = sub_298C64EA8(v3 + 472, &v5);
  *(result + 56) = *a1[1];
  return result;
}

uint64_t *sub_298C65610(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    return sub_298C79530(*result, v3, 0);
  }

  return result;
}

uint64_t sub_298C65628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = *a1;
  v47[0] = a2;
  v11 = sub_298C64EA8(v10 + 472, v47);
  if (a4)
  {
    v12 = v11;
    v13 = a3[3];
    if (v13)
    {
      sub_298C79530(a1[1], v13, 0x2000000uLL);
    }

    sub_298C79530(a1[1], *(a2 + 112), 0x80000000uLL);
    v14 = sub_298C78A28(a1[1], *(a2 + 128));
    v15 = 3;
    if (*(v10 + 294))
    {
      v15 = 259;
    }

    v16 = v15 | v14;
    v17 = *(v10 + 288);
    if (v17 <= 5 && ((1 << v17) & 0x34) != 0)
    {
      v16 |= 0x1000uLL;
    }

    if (v17 == 3)
    {
      v19 = v16 | 0x18000000000004;
    }

    else
    {
      v19 = v16;
    }

    sub_298C79530(a1[1], *(a2 + 128), v19);
    v20 = *(a2 + 136);
    if (v20 && *(a2 + 52) == 3)
    {
      v21 = sub_298C78A28(a1[1], v20);
      sub_298C79530(a1[1], *(a2 + 136), v21 | 0x800);
    }

    v22 = *(v10 + 288);
    if (v22 <= 5 && ((1 << v22) & 0x34) != 0)
    {
      v38[0] = "LiveSystem.cpp";
      v38[2] = ":";
      v39 = 771;
      std::generic_category();
      v37 = 3;
      LODWORD(__p) = 3159353;
      v40[0] = v38;
      v40[2] = &__p;
      v41 = 1026;
      v42[0] = v40;
      v42[2] = ": ";
      v43 = 770;
      v44[0] = v42;
      v44[2] = "Legacy xnu-based streaming-to-DRAM no longer supported (150685905), use --CPUTrace:driver=1";
      v45 = 770;
      sub_298B996A4(v44, &v46);
      operator new();
    }

    sub_298C79530(a1[1], *(a2 + 144), 0);
    v23 = *(v12 + 64);
    v24 = *(a2 + 104);
    v25 = *(v12 + 72) / v24;
    v26 = (v23 / v24) | (v25 << 37);
    v27 = v23 | (v25 << 40);
    if (*(a2 + 56))
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    sub_298C79530(a1[1], *(a2 + 152), v28);
  }

  sub_298C79530(a1[1], a3[4], 1uLL);
  sub_298C79530(a1[1], a3[4], 4uLL);
  if ((*(v10 + 295) & 1) == 0)
  {
    v29 = a3[6];
    if (v29)
    {
      v30 = a1[1];
      v31 = sub_298C78A28(v30, a3[6]);
      sub_298C79530(v30, v29, v31 | 0x1000);
    }
  }

  v32 = a3[5];
  if (v32)
  {
    if (*(v10 + 296))
    {
      v33 = 0;
    }

    else
    {
      v33 = 3;
      if (!*(v10 + 160))
      {
        v33 = 1;
      }
    }

    if (*(v10 + 297))
    {
      v34 = v33 | 0x2000;
    }

    else
    {
      v34 = v33;
    }

    sub_298C79530(a1[1], v32, v34);
  }

  result = sub_298C79530(a1[1], a3[4], 4uLL);
  *a5 = 0;
  return result;
}

uint64_t sub_298C6599C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(v6 + 160) == 0;
  v8 = 19;
  if (v7)
  {
    v8 = 16403;
  }

  if (*(a2 + 52) == 3)
  {
    v8 |= 0x2000000uLL;
  }

  result = sub_298C79530(v5, *(a3 + 32), v8);
  *a4 = 0;
  return result;
}

uint64_t sub_298C659F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v3 + 288);
  v5 = 2684354560;
  if (v4 == 1)
  {
    v5 = 2751463424;
  }

  v6 = v4 > 5;
  v7 = (1 << v4) & 0x34;
  if (v6 || v7 == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 3758096384;
  }

  return sub_298C79530(v2, *(a2 + 112), v9);
}

uint64_t sub_298C65A34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_298C78A28(*a1, *(a2 + 32));
  result = sub_298C79530(*a1, *(a2 + 32), v6 & 0xFFFFFFFFFFFFFFFDLL);
  *a3 = 0;
  return result;
}

uint64_t sub_298C65A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 112);
  v8 = sub_298C78A28(*a1, v7);
  sub_298C79530(v6, v7, v8 | 0x18000000);
  v9 = *a1;
  sub_298C79530(v9, *(a2 + 112), 0);
  v10 = sub_298C78A28(v9, *(a2 + 128));
  result = sub_298C79530(v9, *(a2 + 128), v10 & 0xFFFFFFFFFFFFEFF8);
  *a3 = 0;
  return result;
}

void sub_298C65B1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v13 = a2;
  v7 = sub_298C64EA8(v6 + 472, &v13);
  v8 = v7;
  if (*(v6 + 288) == 3)
  {
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
  }

  else
  {
    v9 = sub_298C78A28(a1[1], *(a2 + 144));
    v10 = *(v8 + 72);
    v11 = *(v8 + 64) - *(v6 + 424);
    v12 = *(a2 + 104) * (v9 & 0x7FFFFFF);
    *(v8 + 88) = v12;
    *(v8 + 96) = (v9 & 0x40000000) != 0;
    sub_298C74050(*(v6 + 520), 0, *(a2 + 48), 0xFFFFFFFFFFFFFFFFLL, v11, v12, v10, 0xDEADBEEFuLL, a3, (v9 & 0x40000000) != 0, 1);
    if (*a3)
    {
      return;
    }
  }

  *a3 = 0;
}

void sub_298C65C0C(uint64_t *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(a1[1] + 64) - 1;
  if (v3 > 5)
  {
    v5 = "Uninitialized";
    v4 = 13;
  }

  else
  {
    v4 = qword_298D1CC38[v3];
    v5 = off_29EEB6960[v3];
  }

  sub_298BBB6E0(&v10, v5, v4);
  sub_298B89CC0(v2, "Status", 6uLL);
  sub_298B891F0(v2, &v10);
  --*(v2 + 8);
  if (v10 == 8)
  {
    sub_298B8A314(__p);
    v6 = *a1;
    v7 = a1[2];
    if (v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v10 == 7)
    {
      sub_298B8A370(__p);
    }

    else if (v10 == 6 && v12 < 0)
    {
      operator delete(__p[0]);
      v6 = *a1;
      v7 = a1[2];
      if (!v7)
      {
        goto LABEL_14;
      }

LABEL_12:
      v8 = strlen(v7);
      goto LABEL_15;
    }

    v6 = *a1;
    v7 = a1[2];
    if (v7)
    {
      goto LABEL_12;
    }
  }

LABEL_14:
  v8 = 0;
LABEL_15:
  sub_298BBB6E0(&v10, v7, v8);
  sub_298B89CC0(v6, "UUID", 4uLL);
  sub_298B891F0(v6, &v10);
  --*(v6 + 8);
  if (v10 == 8)
  {
    sub_298B8A314(__p);
  }

  else if (v10 == 7)
  {
    sub_298B8A370(__p);
  }

  else if (v10 == 6 && v12 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C65DDC@<X0>(void (*a1)(uint64_t, void *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v79 = *MEMORY[0x29EDCA608];
  output = 1024;
  v70 = 1024;
  outputCnt = 1;
  v6 = IOServiceMatching("AppleSEPManager");
  connect = 0;
  if (!v6)
  {
    std::generic_category();
    *&v59 = "SEP.cpp";
    *&v60 = ":";
    LOWORD(v61) = 771;
    HIBYTE(v54) = 2;
    strcpy(v53, "36");
    *&v62 = &v59;
    *&v63 = v53;
    LOWORD(v64) = 1026;
    *&v65 = &v62;
    *&v66 = ": ";
    LOWORD(v67) = 770;
    v76[0] = &v65;
    v77 = "SEP service could not be found";
    v78 = 770;
    sub_298B996A4(v76, __p);
    operator new();
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v6);
  if (!MatchingService)
  {
    std::generic_category();
    *&v59 = "SEP.cpp";
    *&v60 = ":";
    LOWORD(v61) = 771;
    HIBYTE(v54) = 2;
    strcpy(v53, "40");
    *&v62 = &v59;
    *&v63 = v53;
    LOWORD(v64) = 1026;
    *&v65 = &v62;
    *&v66 = ": ";
    LOWORD(v67) = 770;
    v76[0] = &v65;
    v77 = "SEP service object could not be retrieved";
    v78 = 770;
    sub_298B996A4(v76, __p);
    operator new();
  }

  v8 = MatchingService;
  v9 = IOServiceOpen(MatchingService, *MEMORY[0x29EDCA6B0], 0, &connect);
  if (v9)
  {
    v10 = v9;
    std::generic_category();
    v11 = 0;
    v38[0] = "SEP.cpp";
    p_dst = ":";
    v40 = 771;
    v73 = 2;
    strcpy(v72, "44");
    v41[0] = v38;
    v42 = v72;
    v43 = 1026;
    v44[0] = v41;
    v45 = ": ";
    v46 = 770;
    v47[0] = v44;
    v48 = "Error llvm::applehwtrace::visitSEPProcesses(function_ref<void (const SEPProcInfo &)>)";
    v49 = 770;
    v50[0] = v47;
    v51 = ": ";
    v52 = 770;
    v53[0] = v50;
    v54 = "IOServiceOpen for SEP service failed";
    v55 = 770;
    __p[0] = v53;
    v57 = " (err=";
    v12 = v10;
    v58 = 770;
    v13 = v75;
    do
    {
      *--v13 = a0123456789abcd_1[v12 & 0xF];
      ++v11;
      v14 = v12 >= 0x10;
      v12 >>= 4;
    }

    while (v14);
    if (v11 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v11 > 0x16)
      {
        operator new();
      }

      v37 = v11;
      if (v11)
      {
        memcpy(&__dst, v13, v11);
      }

      *(&__dst + v11) = 0;
      *&v59 = __p;
      *&v60 = &__dst;
      LOWORD(v61) = 1026;
      *&v62 = &v59;
      *&v63 = ") ";
      LOWORD(v64) = 770;
      if (mach_error_string(v10))
      {
        v22 = mach_error_string(v10);
        if (*v22)
        {
LABEL_24:
          *&v65 = &v62;
          *&v66 = v22;
          LOWORD(v67) = 770;
          v23 = 2;
          goto LABEL_25;
        }
      }

      else
      {
        v22 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_24;
        }
      }

      v65 = v62;
      v66 = v63;
      v67 = v64;
      v23 = v64;
      if (!v64)
      {
        v25 = 1;
        goto LABEL_30;
      }

      if (v64 == 1)
      {
        v76[0] = "\n";
        v25 = 1;
        v23 = 3;
        goto LABEL_30;
      }

LABEL_25:
      if (BYTE1(v67) != 1)
      {
        v23 = 2;
      }

      v24 = &v65;
      if (BYTE1(v67) == 1)
      {
        v24 = v65;
      }

      v76[0] = v24;
      v76[1] = *(&v65 + 1);
      v77 = "\n";
      v25 = 3;
LABEL_30:
      LOBYTE(v78) = v23;
      HIBYTE(v78) = v25;
      sub_298B996A4(v76, v34);
      operator new();
    }

LABEL_58:
    sub_298ADDDA0();
  }

  v17 = IOConnectCallMethod(connect, 0x41u, &output, 1u, 0, 0, &output, &outputCnt, outputStruct, &v70);
  if (v17)
  {
    v18 = v17;
    std::generic_category();
    v19 = 0;
    v34[0] = "SEP.cpp";
    v34[2] = ":";
    v35 = 771;
    v37 = 2;
    strcpy(&__dst, "50");
    v38[0] = v34;
    p_dst = &__dst;
    v40 = 1026;
    v41[0] = v38;
    v42 = ": ";
    v43 = 770;
    v44[0] = v41;
    v45 = "Error llvm::applehwtrace::visitSEPProcesses(function_ref<void (const SEPProcInfo &)>)";
    v46 = 770;
    v47[0] = v44;
    v48 = ": ";
    v49 = 770;
    v50[0] = v47;
    v51 = "kSEP_ProcInfo call failed";
    v52 = 770;
    v53[0] = v50;
    v54 = " (err=";
    v20 = v18;
    v55 = 770;
    v21 = &v77 + 1;
    do
    {
      *--v21 = a0123456789abcd_1[v20 & 0xF];
      ++v19;
      v14 = v20 >= 0x10;
      v20 >>= 4;
    }

    while (v14);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_58;
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    v33 = v19;
    if (v19)
    {
      memcpy(&v32, v21, v19);
    }

    *(&v32 + v19) = 0;
    __p[0] = v53;
    v57 = &v32;
    v58 = 1026;
    *&v59 = __p;
    *&v60 = ") ";
    LOWORD(v61) = 770;
    if (mach_error_string(v18))
    {
      v28 = mach_error_string(v18);
      if (*v28)
      {
LABEL_45:
        *&v62 = &v59;
        *&v63 = v28;
        LOWORD(v64) = 770;
        v29 = 2;
        goto LABEL_46;
      }
    }

    else
    {
      v28 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_45;
      }
    }

    v62 = v59;
    v63 = v60;
    v64 = v61;
    v29 = v61;
    if (!v61)
    {
      v31 = 1;
      goto LABEL_51;
    }

    if (v61 == 1)
    {
      *&v65 = "\n";
      v31 = 1;
      v29 = 3;
      goto LABEL_51;
    }

LABEL_46:
    if (BYTE1(v64) != 1)
    {
      v29 = 2;
    }

    v30 = &v62;
    if (BYTE1(v64) == 1)
    {
      v30 = v62;
    }

    *&v65 = v30;
    *(&v65 + 1) = *(&v62 + 1);
    *&v66 = "\n";
    v31 = 3;
LABEL_51:
    LOBYTE(v67) = v29;
    BYTE1(v67) = v31;
    sub_298B996A4(&v65, v72);
    operator new();
  }

  if (v70 >= 0x20)
  {
    v26 = 0;
    v27 = outputStruct;
    do
    {
      a1(a2, v27);
      ++v26;
      v27 += 4;
    }

    while (v26 < v70 >> 5);
  }

  *a3 = 0;
  IOObjectRelease(v8);
  result = connect;
  if (connect)
  {
    result = IOServiceClose(connect);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C668C4(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x29EDCA608];
  sub_298C66D3C(&v29, a2, a3);
  v4 = v29.__r_.__value_.__r.__words[0];
  if (v30)
  {
    v29.__r_.__value_.__r.__words[0] = 0;
    if (v4)
    {
      *(a1 + 8) |= 1u;
      *a1 = v4;
      v5 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v29;
  }

  else
  {
    v6 = v4;
  }

  v7 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], v6);
  if (!v7)
  {
    std::generic_category();
    v16[0] = "RTKit.cpp";
    v17 = ":";
    v18 = 771;
    v15 = 2;
    strcpy(__p, "85");
    v19[0] = v16;
    v20 = __p;
    v21 = 1026;
    v22[0] = v19;
    v23 = ": ";
    v24 = 770;
    v25[0] = v22;
    v26 = "Did not find IODeviceTree node";
    v27 = 770;
    sub_298B996A4(v25, v28);
    operator new();
  }

  v8 = v7;
  properties = 0;
  if (IORegistryEntryCreateCFProperties(v7, &properties, *MEMORY[0x29EDB8ED8], 0))
  {
    std::generic_category();
    v16[0] = "RTKit.cpp";
    v17 = ":";
    v18 = 771;
    v15 = 2;
    strcpy(__p, "92");
    v19[0] = v16;
    v20 = __p;
    v21 = 1026;
    v22[0] = v19;
    v23 = ": ";
    v24 = 770;
    v25[0] = v22;
    v26 = "Could not get IODeviceTree properties";
    v27 = 770;
    sub_298B996A4(v25, v28);
    operator new();
  }

  *(a1 + 8) &= ~1u;
  *a1 = properties;
  IOObjectRelease(v8);
  if (v30)
  {
    v9 = v29.__r_.__value_.__r.__words[0];
    v29.__r_.__value_.__r.__words[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v10 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_15;
  }

  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_298C66D3C(std::string *a1, uint64_t a2, int a3)
{
  v26[2] = *MEMORY[0x29EDCA608];
  if ((*(a2 + 40) & 1) == 0)
  {
    std::generic_category();
    v14[0] = "RTKit.cpp";
    v14[2] = ":";
    v15 = 771;
    v13 = 2;
    strcpy(__p, "65");
    v16[0] = v14;
    v16[2] = __p;
    v17 = 1026;
    __dst[0] = v16;
    v19 = ": ";
    v20 = 770;
    v21.__r_.__value_.__r.__words[0] = __dst;
    v21.__r_.__value_.__r.__words[2] = "No DTPath specified";
    v22 = 770;
    sub_298B996A4(&v21, &v23);
    operator new();
  }

  *(&v21.__r_.__value_.__s + 23) = 21;
  strcpy(&v21, "IODeviceTree:/arm-io/");
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  v24 = v26;
  v25 = xmmword_298D1ABD0;
  if (v5 < 0x11)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_298B90C08(&v24, v26, v5, 1);
    v7 = v25;
  }

  memcpy(&v24[v7], v6, v5);
  v7 = v25;
LABEL_7:
  v8 = v7 + v5;
  *&v25 = v8;
  if (a3)
  {
    sub_298BA96BC(&v24, 0);
    v8 = v25;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = v8;
  if (v8)
  {
    memmove(__dst, v24, v8);
  }

  *(__dst + v8) = 0;
  if (SHIBYTE(v19) >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (SHIBYTE(v19) >= 0)
  {
    v10 = HIBYTE(v19);
  }

  else
  {
    v10 = __dst[1];
  }

  std::string::append(&v21, v9, v10);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  a1[1].__r_.__value_.__s.__data_[0] &= ~1u;
  *a1 = v21;
  memset(&v21, 0, sizeof(v21));
  if (v24 != v26)
  {
    free(v24);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_298C670B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  sub_298C668C4(&theDict, **(a1 + 32), 1);
  v3 = v16;
  v4 = theDict;
  if (v16)
  {
    theDict = 0;
    if (v4)
    {
      *(a2 + 24) |= 1u;
      *a2 = v4;
LABEL_18:
      v12 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  Value = CFDictionaryGetValue(v4, @"role");
  BytePtr = CFDataGetBytePtr(Value);
  if (BytePtr)
  {
    v7 = BytePtr;
    v8 = strlen(BytePtr);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v14) = v8;
    if (v8)
    {
      memmove(&v13, v7, v8);
    }

    *(&v13 + v9) = 0;
    v4 = theDict;
    v3 = v16;
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  *(a2 + 24) &= ~1u;
  *a2 = v13;
  *(a2 + 16) = v14;
  CFRelease(v4);
  if (!v4 || (v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(*v4 + 8);
  v11 = *MEMORY[0x29EDCA608];

  v10(v4);
}

uint64_t sub_298C67290(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 < 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2 >= 13)
  {
    v4 = &v3[v2];
    v5 = v3;
    do
    {
      v6 = memchr(v5, 65, v2 - 12);
      if (!v6)
      {
        break;
      }

      if (*v6 == 0x504F545F50455341 && *(v6 + 5) == 0x504553415F504F54)
      {
        if (v6 != v4 && v6 - v3 != -1)
        {
          v8 = 1;
          goto LABEL_27;
        }

        break;
      }

      v5 = v6 + 1;
      v2 = v4 - v5;
    }

    while (v4 - v5 >= 13);
  }

  sub_298C668C4(&theDict, a1, 0);
  v9 = theDict;
  if ((v15 & 1) != 0 && theDict)
  {
    v12 = theDict;
    sub_298AE72FC(&v12, &v13);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v8 = 2;
  }

  else
  {
    if (CFDictionaryGetValue(theDict, @"cputrace-aslr-data-region"))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    CFRelease(v9);
  }

LABEL_27:
  v10 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_298C67420(uint64_t a1@<X0>, uint64_t a2@<X1>, const __CFDictionary **a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_298C668C4(&v13, **(a2 + 32), 0);
  if ((v14 & 1) == 0)
  {
    *a3 = 0;
    v6 = v13;
LABEL_5:
    Value = CFDictionaryGetValue(v6, @"cputrace-aslr-data-region");
    BytePtr = CFDataGetBytePtr(Value);
    v9 = *(a1 + 80);
    v10 = *BytePtr;
    v11 = *(BytePtr + 1);
    sub_298C78EE8();
  }

  v5 = v13;
  *a3 = v13;
  if (!v5)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v12 = *MEMORY[0x29EDCA608];
}

void sub_298C67AE8(uint64_t a1@<X0>, std::string::size_type *a2@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = **(a1 + 32);
  sub_298C668C4(&v33, v3, 0);
  v4 = v34;
  v5 = v33;
  if ((v34 & 1) != 0 && v33)
  {
    *a2 = v33;
  }

  else
  {
    Value = CFDictionaryGetValue(v33, @"uuid");
    sub_298C66D3C(&v31, v3, 0);
    if ((v32 & 1) == 0 || (v7 = v31.__r_.__value_.__r.__words[0], v31.__r_.__value_.__r.__words[0] = 0, !v7))
    {
      if (Value)
      {
        v8 = *MEMORY[0x29EDB8ED8];
        BytePtr = CFDataGetBytePtr(Value);
        Length = CFDataGetLength(Value);
        v11 = CFStringCreateWithBytes(v8, BytePtr, Length, 0x8000100u, 0);
        CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
        v28 = 1;
        v29 = 8;
        v30 = xmmword_298D1B1F0;
        uuid_parse(CStringPtr, uu);
        operator new();
      }

      v16[0] = "RTKit.cpp";
      v16[2] = ":";
      v17 = 771;
      std::generic_category();
      v15 = 3;
      LODWORD(v14) = 3682866;
      v18[0] = v16;
      v18[2] = &v14;
      v19 = 1026;
      v20[0] = v18;
      v20[2] = ": ";
      v21 = 770;
      v22[0] = v20;
      v22[2] = "UUID not found in ";
      v23 = 770;
      v24[0] = v22;
      v24[2] = &v31;
      v25 = 1026;
      sub_298B996A4(v24, &v26);
      operator new();
    }

    CFRelease(v5);
    if (v5 && (v4 & 1) != 0)
    {
      (*(*v5 + 8))(v5);
    }

    *a2 = v7;
  }

  v13 = *MEMORY[0x29EDCA608];
}

void *sub_298C67F4C(void *a1)
{
  *a1 = &unk_2A1F20270;
  v2 = (a1 + 5);
  sub_298C6C5F0((a1 + 13));
  std::mutex::~mutex(v2);
  return a1;
}

void sub_298C67FA0(void *a1)
{
  *a1 = &unk_2A1F20270;
  v1 = (a1 + 5);
  sub_298C6C5F0((a1 + 13));
  std::mutex::~mutex(v1);

  JUMPOUT(0x29C2945F0);
}

void sub_298C68014(const char *a1, uint64_t a2)
{
  v56 = *MEMORY[0x29EDCA608];
  existing = 0;
  v4 = IOServiceMatching("RTBuddy");
  if (!v4)
  {
    std::generic_category();
    v39 = "RTKit.cpp";
    v40 = ":";
    v41 = 771;
    HIBYTE(v34) = 3;
    LODWORD(v33[0]) = 3683890;
    *&v42 = &v39;
    *&v43 = v33;
    LOWORD(v44) = 1026;
    *&v45 = &v42;
    *&v46 = ": ";
    LOWORD(v47) = 770;
    v48[0] = &v45;
    v49 = "Could not create matching dictionary for RTBuddy";
    v51 = 770;
    sub_298B996A4(v48, &v36);
    operator new();
  }

  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], v4, &existing);
  if (!MatchingServices)
  {
    v11 = *MEMORY[0x29EDB8ED8];
    while (IOIteratorIsValid(existing))
    {
      v12 = IOIteratorNext(existing);
      if (!v12)
      {
        break;
      }

      CFProperty = IORegistryEntryCreateCFProperty(v12, @"role", v11, 0);
      if (CFProperty)
      {
        Length = CFStringGetLength(CFProperty);
        CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        operator new[]();
      }
    }

    std::generic_category();
    v36 = "RTKit.cpp";
    v37 = ":";
    v38 = 771;
    HIBYTE(v31) = 3;
    LODWORD(__p[0]) = 3224371;
    v39 = &v36;
    v40 = __p;
    v41 = 1026;
    *&v42 = &v39;
    *&v43 = ": ";
    LOWORD(v44) = 770;
    *&v45 = &v42;
    *&v46 = "No RTBuddy IOService matching role: ";
    LOWORD(v47) = 770;
    v48[0] = &v45;
    v49 = a1;
    v50 = a2;
    v51 = 1282;
    sub_298B996A4(v48, v33);
    operator new();
  }

  v6 = MatchingServices;
  std::generic_category();
  v7 = 0;
  v22[0] = "RTKit.cpp";
  v22[2] = ":";
  v23 = 771;
  v20 = 3;
  LODWORD(v19) = 3225394;
  v24[0] = v22;
  v24[2] = &v19;
  v25 = 1026;
  v26[0] = v24;
  v26[2] = ": ";
  v27 = 770;
  v28[0] = v26;
  v28[2] = "static Expected<std::unique_ptr<RTBuddyDriverInterface>> llvm::applehwtrace::RTBuddyDriverInterface::get(StringRef)";
  v29 = 770;
  __p[0] = v28;
  v31 = ": ";
  v32 = 770;
  v33[0] = __p;
  v34 = "Could not find IOService(s) matching RTBuddy";
  v35 = 770;
  v36 = v33;
  v37 = " (err=";
  v8 = v6;
  v9 = &v55 + 1;
  v38 = 770;
  do
  {
    *--v9 = a0123456789abcd_1[v8 & 0xF];
    ++v7;
    v10 = v8 >= 0x10;
    v8 >>= 4;
  }

  while (v10);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_298ADDDA0();
  }

  if (v7 > 0x16)
  {
    operator new();
  }

  v54 = v7;
  memcpy(&v53, v9, v7);
  *(&v53 + v7) = 0;
  v39 = &v36;
  v40 = &v53;
  v41 = 1026;
  *&v42 = &v39;
  *&v43 = ") ";
  LOWORD(v44) = 770;
  if (mach_error_string(v6))
  {
    v15 = mach_error_string(v6);
    if (*v15)
    {
LABEL_18:
      *&v45 = &v42;
      *&v46 = v15;
      LOWORD(v47) = 770;
      v16 = 2;
      goto LABEL_19;
    }
  }

  else
  {
    v15 = "unknown error";
    if (aUnknownError[0])
    {
      goto LABEL_18;
    }
  }

  v45 = v42;
  v46 = v43;
  v47 = v44;
  v16 = v44;
  if (!v44)
  {
    v18 = 1;
    goto LABEL_24;
  }

  if (v44 == 1)
  {
    v48[0] = "\n";
    v18 = 1;
    v16 = 3;
    goto LABEL_24;
  }

LABEL_19:
  if (BYTE1(v47) != 1)
  {
    v16 = 2;
  }

  v17 = &v45;
  if (BYTE1(v47) == 1)
  {
    v17 = v45;
  }

  v48[0] = v17;
  v48[1] = *(&v45 + 1);
  v49 = "\n";
  v18 = 3;
LABEL_24:
  LOBYTE(v51) = v16;
  HIBYTE(v51) = v18;
  sub_298B996A4(v48, &v21);
  operator new();
}

uint64_t sub_298C693F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v48[23] = *MEMORY[0x29EDCA608];
  if (*a2)
  {
    uuid_copy(dst, *a2);
  }

  else
  {
    uuid_parse(*(a2 + 8), dst);
  }

  result = IOConnectCallStructMethod(*(a1 + 12), 8u, dst, 0x10uLL, 0, 0);
  if (result)
  {
    v6 = result;
    std::generic_category();
    v7 = 0;
    v21[0] = "RTKit.cpp";
    v21[2] = ":";
    v22 = 771;
    v20 = 3;
    v23[0] = v21;
    v23[2] = &__p;
    v24 = 1026;
    v25[0] = v23;
    v25[2] = ": ";
    v26 = 770;
    v27[0] = v25;
    v27[2] = "virtual Error llvm::applehwtrace::RTBuddyDriverInterface::attach(UUIDHandle)";
    v28 = 770;
    v29[0] = v27;
    v29[2] = ": ";
    v30 = 770;
    v31[0] = v29;
    v31[2] = "IOConnectCallMethod Attach failed.";
    v32 = 770;
    v33[0] = v31;
    v33[2] = " (err=";
    v8 = v6;
    v34 = 770;
    v9 = v48;
    LODWORD(__p) = 3224627;
    do
    {
      *--v9 = a0123456789abcd_1[v8 & 0xF];
      ++v7;
      v10 = v8 >= 0x10;
      v8 >>= 4;
    }

    while (v10);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v7 > 0x16)
    {
      operator new();
    }

    v18 = v7;
    if (v7)
    {
      memcpy(&__dst, v9, v7);
    }

    *(&__dst + v7) = 0;
    v35[0] = v33;
    v35[2] = &__dst;
    v36 = 1026;
    *&v37 = v35;
    *&v38 = ") ";
    LOWORD(v39) = 770;
    if (mach_error_string(v6))
    {
      v13 = mach_error_string(v6);
      if (*v13)
      {
LABEL_16:
        *&v40 = &v37;
        *&v41 = v13;
        LOWORD(v42) = 770;
        v14 = 2;
        v15 = &v40;
LABEL_17:
        v43[0] = v15;
        v43[1] = v12;
        v43[2] = "\n";
        v16 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_16;
      }
    }

    v40 = v37;
    v41 = v38;
    v42 = v39;
    v14 = v39;
    if (v39)
    {
      if (v39 != 1)
      {
        v12 = *(&v40 + 1);
        v15 = &v40;
        if (BYTE1(v42) == 1)
        {
          v15 = v40;
        }

        else
        {
          v14 = 2;
        }

        goto LABEL_17;
      }

      v43[0] = "\n";
      v16 = 1;
      v14 = 3;
    }

    else
    {
      v16 = 1;
    }

LABEL_18:
    v44 = v14;
    v45 = v16;
    sub_298B996A4(v43, &v46);
    operator new();
  }

  *a3 = 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C69848(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *&v51[23] = *MEMORY[0x29EDCA608];
  inputStruct = a2;
  v47 = 1;
  outputStructCnt = 16;
  v4 = IOConnectCallStructMethod(*(a1 + 12), 9u, &inputStruct, 8uLL, outputStruct, &outputStructCnt);
  if (v4)
  {
    v5 = v4;
    std::generic_category();
    v6 = 0;
    v20[0] = "RTKit.cpp";
    v20[2] = ":";
    v21 = 771;
    v19 = 3;
    v22[0] = v20;
    v22[2] = &__p;
    v23 = 1026;
    v24[0] = v22;
    v24[2] = ": ";
    v25 = 770;
    v26[0] = v24;
    v26[2] = "virtual Expected<UUIDValue> llvm::applehwtrace::RTBuddyDriverInterface::configure(BOOL, const SystemOptions &, uint64_t, uint64_t)";
    v27 = 770;
    v28[0] = v26;
    v28[2] = ": ";
    v29 = 770;
    v30[0] = v28;
    v30[2] = "IOConnectCallMethod Configure failed.";
    v31 = 770;
    v32[0] = v30;
    v32[2] = " (err=";
    v7 = v5;
    v33 = 770;
    v8 = v51;
    LODWORD(__p) = 3618099;
    do
    {
      *--v8 = a0123456789abcd_1[v7 & 0xF];
      ++v6;
      v9 = v7 >= 0x10;
      v7 >>= 4;
    }

    while (v9);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v17 = v6;
    if (v6)
    {
      memcpy(&__dst, v8, v6);
    }

    *(&__dst + v6) = 0;
    v34[0] = v32;
    v34[2] = &__dst;
    v35 = 1026;
    *&v36 = v34;
    *&v37 = ") ";
    LOWORD(v38) = 770;
    if (mach_error_string(v5))
    {
      v11 = mach_error_string(v5);
      if (*v11)
      {
LABEL_13:
        *&v39 = &v36;
        *&v40 = v11;
        LOWORD(v41) = 770;
        v12 = 2;
        v13 = &v39;
LABEL_14:
        v42[0] = v13;
        v42[1] = v10;
        v42[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v39 = v36;
    v40 = v37;
    v41 = v38;
    v12 = v38;
    if (v38)
    {
      if (v38 != 1)
      {
        v10 = *(&v39 + 1);
        v13 = &v39;
        if (BYTE1(v41) == 1)
        {
          v13 = v39;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v42[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v43 = v12;
    v44 = v14;
    sub_298B996A4(v42, &v48);
    operator new();
  }

  memset(dst, 0, 16);
  uuid_copy(dst, outputStruct);
  *(a3 + 16) &= ~1u;
  *a3 = *dst;
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C69C84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallStructMethod(*(a1 + 12), 0xAu, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "RTKit.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::RTBuddyDriverInterface::start()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Start failed.";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3618355;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C6A0AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v47[23] = *MEMORY[0x29EDCA608];
  if (*(a1 + 152) == 1)
  {
    *a2 = 0;
    v3 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = IOConnectCallStructMethod(*(a1 + 12), 0xBu, 0, 0, 0, 0);
  if (v5)
  {
    v6 = v5;
    std::generic_category();
    v7 = 0;
    v21[0] = "RTKit.cpp";
    v21[2] = ":";
    v22 = 771;
    v20 = 3;
    v23[0] = v21;
    v23[2] = &__p;
    v24 = 1026;
    v25[0] = v23;
    v25[2] = ": ";
    v26 = 770;
    v27[0] = v25;
    v27[2] = "virtual Error llvm::applehwtrace::RTBuddyDriverInterface::stop()";
    v28 = 770;
    v29[0] = v27;
    v29[2] = ": ";
    v30 = 770;
    v31[0] = v29;
    v31[2] = "IOConnectCallMethod Stop failed.";
    v32 = 770;
    v33[0] = v31;
    v33[2] = " (err=";
    v8 = v6;
    v34 = 770;
    v9 = v47;
    LODWORD(__p) = 3684147;
    do
    {
      *--v9 = a0123456789abcd_1[v8 & 0xF];
      ++v7;
      v10 = v8 >= 0x10;
      v8 >>= 4;
    }

    while (v10);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v7 > 0x16)
    {
      operator new();
    }

    v18 = v7;
    if (v7)
    {
      memcpy(&__dst, v9, v7);
    }

    *(&__dst + v7) = 0;
    v35[0] = v33;
    v35[2] = &__dst;
    v36 = 1026;
    *&v37 = v35;
    *&v38 = ") ";
    LOWORD(v39) = 770;
    if (mach_error_string(v6))
    {
      v13 = mach_error_string(v6);
      if (*v13)
      {
LABEL_19:
        *&v40 = &v37;
        *&v41 = v13;
        LOWORD(v42) = 770;
        v14 = 2;
        v15 = &v40;
LABEL_20:
        v43[0] = v15;
        v43[1] = v12;
        v43[2] = "\n";
        v16 = 3;
        goto LABEL_21;
      }
    }

    else
    {
      v13 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_19;
      }
    }

    v40 = v37;
    v41 = v38;
    v42 = v39;
    v14 = v39;
    if (v39)
    {
      if (v39 != 1)
      {
        v12 = *(&v40 + 1);
        v15 = &v40;
        if (BYTE1(v42) == 1)
        {
          v15 = v40;
        }

        else
        {
          v14 = 2;
        }

        goto LABEL_20;
      }

      v43[0] = "\n";
      v16 = 1;
      v14 = 3;
    }

    else
    {
      v16 = 1;
    }

LABEL_21:
    v44 = v14;
    v45 = v16;
    sub_298B996A4(v43, &v46);
    operator new();
  }

  std::mutex::lock((a1 + 40));
  *(a1 + 152) = 1;
  if (*(a1 + 144))
  {
    std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
  }

  *a2 = 0;
  v11 = *MEMORY[0x29EDCA608];

  std::mutex::unlock((a1 + 40));
}

uint64_t sub_298C6A56C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v45[23] = *MEMORY[0x29EDCA608];
  result = IOConnectCallStructMethod(*(a1 + 12), 0xCu, 0, 0, 0, 0);
  if (result)
  {
    v4 = result;
    std::generic_category();
    v5 = 0;
    v19[0] = "RTKit.cpp";
    v19[2] = ":";
    v20 = 771;
    v18 = 3;
    v21[0] = v19;
    v21[2] = &__p;
    v22 = 1026;
    v23[0] = v21;
    v23[2] = ": ";
    v24 = 770;
    v25[0] = v23;
    v25[2] = "virtual Error llvm::applehwtrace::RTBuddyDriverInterface::unconfigure()";
    v26 = 770;
    v27[0] = v25;
    v27[2] = ": ";
    v28 = 770;
    v29[0] = v27;
    v29[2] = "IOConnectCallMethod Unconfigure failed.";
    v30 = 770;
    v31[0] = v29;
    v31[2] = " (err=";
    v6 = v4;
    v32 = 770;
    v7 = v45;
    LODWORD(__p) = 3356979;
    do
    {
      *--v7 = a0123456789abcd_1[v6 & 0xF];
      ++v5;
      v8 = v6 >= 0x10;
      v6 >>= 4;
    }

    while (v8);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v5 > 0x16)
    {
      operator new();
    }

    v16 = v5;
    if (v5)
    {
      memcpy(&__dst, v7, v5);
    }

    *(&__dst + v5) = 0;
    v33[0] = v31;
    v33[2] = &__dst;
    v34 = 1026;
    *&v35 = v33;
    *&v36 = ") ";
    LOWORD(v37) = 770;
    if (mach_error_string(v4))
    {
      v11 = mach_error_string(v4);
      if (*v11)
      {
LABEL_13:
        *&v38 = &v35;
        *&v39 = v11;
        LOWORD(v40) = 770;
        v12 = 2;
        v13 = &v38;
LABEL_14:
        v41[0] = v13;
        v41[1] = v10;
        v41[2] = "\n";
        v14 = 3;
        goto LABEL_15;
      }
    }

    else
    {
      v11 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_13;
      }
    }

    v38 = v35;
    v39 = v36;
    v40 = v37;
    v12 = v37;
    if (v37)
    {
      if (v37 != 1)
      {
        v10 = *(&v38 + 1);
        v13 = &v38;
        if (BYTE1(v40) == 1)
        {
          v13 = v38;
        }

        else
        {
          v12 = 2;
        }

        goto LABEL_14;
      }

      v41[0] = "\n";
      v14 = 1;
      v12 = 3;
    }

    else
    {
      v14 = 1;
    }

LABEL_15:
    v42 = v12;
    v43 = v14;
    sub_298B996A4(v41, &v44);
    operator new();
  }

  *a2 = 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C6A994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91[3] = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 1;
  v48 = 0;
  v49 = 0;
  v4 = MEMORY[0x29EDCA6B0];
  v5 = MEMORY[0x29C294030](*(a1 + 12), 0, *MEMORY[0x29EDCA6B0], &v49, &v48, 4097);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v54[0] = "RTKit.cpp";
    v55 = ":";
    v56 = 771;
    v53 = 3;
    __p[0] = 3422004;
    v57[0] = v54;
    v58 = __p;
    v59 = 1026;
    v60[0] = v57;
    v61 = ": ";
    v62 = 770;
    v63[0] = v60;
    v64 = "Error llvm::applehwtrace::RTBuddyDriverInterface::initCarveout()";
    v65 = 770;
    v66[0] = v63;
    v67 = ": ";
    v68 = 770;
    v69[0] = v66;
    v70 = "IOConnectMapMemory TraceBuffer failed";
    v71 = 770;
    v74 = 770;
    v8 = v5;
    v9 = v91 + 1;
    v72[0] = v69;
    v73 = " (err=";
    do
    {
      *--v9 = a0123456789abcd_1[v8 & 0xF];
      ++v7;
      v10 = v8 >= 0x10;
      v8 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v7 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v7 > 0x16)
      {
        operator new();
      }

      v51 = v7;
      if (v7)
      {
        memcpy(&__dst, v9, v7);
      }

      *(&__dst + v7) = 0;
      v75[0] = v72;
      p_dst = &__dst;
      v77 = 1026;
      *&v78 = v75;
      *&v79 = ") ";
      LOWORD(v80) = 770;
      if (mach_error_string(v6))
      {
        v13 = mach_error_string(v6);
        if (*v13)
        {
LABEL_13:
          *&v81 = &v78;
          *&v82 = v13;
          LOWORD(v83) = 770;
          v14 = 2;
          v15 = &v81;
LABEL_14:
          v84 = v15;
          v85 = v12;
          v86 = "\n";
          v16 = 3;
          goto LABEL_15;
        }
      }

      else
      {
        v13 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_13;
        }
      }

      v81 = v78;
      v82 = v79;
      v83 = v80;
      v14 = v80;
      if (v80)
      {
        if (v80 != 1)
        {
          v12 = *(&v81 + 1);
          v15 = &v81;
          if (BYTE1(v83) == 1)
          {
            v15 = v81;
          }

          else
          {
            v14 = 2;
          }

          goto LABEL_14;
        }

        v84 = "\n";
        v16 = 1;
        v14 = 3;
      }

      else
      {
        v16 = 1;
      }

LABEL_15:
      v87 = v14;
      v88 = v16;
      sub_298B996A4(&v84, v89);
      operator new();
    }

LABEL_88:
    sub_298ADDDA0();
  }

  v11 = v48;
  *(a1 + 16) = v49;
  *(a1 + 24) = v11;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v17 = MEMORY[0x29C294030](*(a1 + 12), 1, *v4, &v49, &v48, 1);
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v54[0] = "RTKit.cpp";
    v55 = ":";
    v56 = 771;
    v53 = 3;
    __p[0] = 3684660;
    v57[0] = v54;
    v58 = __p;
    v59 = 1026;
    v60[0] = v57;
    v61 = ": ";
    v62 = 770;
    v63[0] = v60;
    v64 = "Error llvm::applehwtrace::RTBuddyDriverInterface::initChunkQueue()";
    v65 = 770;
    v66[0] = v63;
    v67 = ": ";
    v68 = 770;
    v69[0] = v66;
    v70 = "IOConnectMapMemory DirtyChunkQueue failed";
    v71 = 770;
    v74 = 770;
    v20 = v17;
    v21 = v91 + 1;
    v72[0] = v69;
    v73 = " (err=";
    do
    {
      *--v21 = a0123456789abcd_1[v20 & 0xF];
      ++v19;
      v10 = v20 >= 0x10;
      v20 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_88;
    }

    if (v19 > 0x16)
    {
      operator new();
    }

    v51 = v19;
    if (v19)
    {
      memcpy(&__dst, v21, v19);
    }

    *(&__dst + v19) = 0;
    v75[0] = v72;
    p_dst = &__dst;
    v77 = 1026;
    *&v78 = v75;
    *&v79 = ") ";
    LOWORD(v80) = 770;
    if (mach_error_string(v18))
    {
      v23 = mach_error_string(v18);
      if (*v23)
      {
LABEL_32:
        *&v81 = &v78;
        *&v82 = v23;
        LOWORD(v83) = 770;
        v24 = 2;
        v25 = &v81;
LABEL_33:
        v84 = v25;
        v85 = v22;
        v86 = "\n";
        v26 = 3;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_32;
      }
    }

    v81 = v78;
    v82 = v79;
    v83 = v80;
    v24 = v80;
    if (v80)
    {
      if (v80 != 1)
      {
        v22 = *(&v81 + 1);
        v25 = &v81;
        if (BYTE1(v83) == 1)
        {
          v25 = v81;
        }

        else
        {
          v24 = 2;
        }

        goto LABEL_33;
      }

      v84 = "\n";
      v26 = 1;
      v24 = 3;
    }

    else
    {
      v26 = 1;
    }

LABEL_34:
    v87 = v24;
    v88 = v26;
    sub_298B996A4(&v84, v89);
    operator new();
  }

  *(a1 + 32) = v49;
  v46 = 0;
  NotificationPort = IODataQueueAllocateNotificationPort();
  *(a1 + 156) = NotificationPort;
  v28 = MEMORY[0x29C294050](*(a1 + 12), 0, NotificationPort, 0);
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v54[0] = "RTKit.cpp";
    v55 = ":";
    v56 = 771;
    v53 = 3;
    __p[0] = 3289653;
    v57[0] = v54;
    v58 = __p;
    v59 = 1026;
    v60[0] = v57;
    v61 = ": ";
    v62 = 770;
    v63[0] = v60;
    v64 = "Error llvm::applehwtrace::RTBuddyDriverInterface::initChunkNotification()";
    v65 = 770;
    v66[0] = v63;
    v67 = ": ";
    v68 = 770;
    v69[0] = v66;
    v70 = "IOConnectSetNotificationPort ChunkAvailable failed";
    v71 = 770;
    v72[0] = v69;
    v73 = " (err=";
    v31 = v28;
    v32 = v91 + 1;
    v74 = 770;
    do
    {
      *--v32 = a0123456789abcd_1[v31 & 0xF];
      ++v30;
      v10 = v31 >= 0x10;
      v31 >>= 4;
    }

    while (v10);
    std::generic_category();
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_88;
    }

    if (v30 > 0x16)
    {
      operator new();
    }

    v51 = v30;
    if (v30)
    {
      memcpy(&__dst, v32, v30);
    }

    *(&__dst + v30) = 0;
    v75[0] = v72;
    p_dst = &__dst;
    v77 = 1026;
    *&v78 = v75;
    *&v79 = ") ";
    LOWORD(v80) = 770;
    if (mach_error_string(v29))
    {
      v36 = mach_error_string(v29);
      if (*v36)
      {
LABEL_51:
        *&v81 = &v78;
        *&v82 = v36;
        LOWORD(v83) = 770;
        v37 = 2;
        v38 = &v81;
LABEL_52:
        v84 = v38;
        v85 = v35;
        v86 = "\n";
        v39 = 3;
        goto LABEL_53;
      }
    }

    else
    {
      v36 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_51;
      }
    }

    v81 = v78;
    v82 = v79;
    v83 = v80;
    v37 = v80;
    if (v80)
    {
      if (v80 != 1)
      {
        v35 = *(&v81 + 1);
        v38 = &v81;
        if (BYTE1(v83) == 1)
        {
          v38 = v81;
        }

        else
        {
          v37 = 2;
        }

        goto LABEL_52;
      }

      v84 = "\n";
      v39 = 1;
      v37 = 3;
    }

    else
    {
      v39 = 1;
    }

LABEL_53:
    v87 = v37;
    v88 = v39;
    sub_298B996A4(&v84, v89);
    operator new();
  }

  v33 = dispatch_queue_create("com.apple.RTBuddy.ChunkDispatchQueue", 0);
  *(a1 + 160) = v33;
  v34 = dispatch_source_create(MEMORY[0x29EDCA5A0], *(a1 + 156), 0, v33);
  *(a1 + 168) = v34;
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  v91[0] = sub_298C6C524;
  v91[1] = &unk_29EEB6990;
  v91[2] = a1;
  dispatch_source_set_event_handler(v34, handler);
  dispatch_activate(*(a1 + 168));
  v49 = 0;
  sub_298ADC6B8(&v47, &v46, &v49, &v81);
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v40 = v81;
  if (!v81)
  {
    *(a2 + 16) &= ~1u;
    *a2 = *(a1 + 16);
    result = v81;
    if (!v81)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  *&v81 = 0;
  (*(*a1 + 120))(&v44, a1);
  handler[0] = v40;
  v84 = v44;
  v44 = 0;
  sub_298ADE6E8(handler, &v84, &v45);
  if (v84)
  {
    (*(*v84 + 8))(v84);
  }

  if (handler[0])
  {
    (*(*handler[0] + 8))(handler[0]);
  }

  *(a2 + 16) |= 1u;
  v41 = v44;
  *a2 = v45;
  v45 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  result = v81;
  if (v81)
  {
LABEL_72:
    result = (*(*result + 8))(result);
  }

LABEL_73:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C6B780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *&v72[23] = *MEMORY[0x29EDCA608];
  *(a1 + 8) = 0;
  if (*(a1 + 160))
  {
    v4 = *(a1 + 168);
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 168));
    dispatch_release(*(a1 + 160));
  }

  v30 = 0;
  v5 = MEMORY[0x29EDCA6B0];
  if (*(a1 + 32))
  {
    v6 = MEMORY[0x29C294060](*(a1 + 12), 1, *MEMORY[0x29EDCA6B0]);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v35[0] = "RTKit.cpp";
      v36 = ":";
      v37 = 771;
      v34 = 3;
      v38[0] = v35;
      v39 = __p;
      v40 = 1026;
      v41[0] = v38;
      v42 = ": ";
      v43 = 770;
      v44[0] = v41;
      v45 = "Error llvm::applehwtrace::RTBuddyDriverInterface::deinitChunkQueue()";
      v46 = 770;
      v47[0] = v44;
      v48 = ": ";
      v49 = 770;
      v50[0] = v47;
      v51 = "IOConnectUnmapMemory DirtyChunkQueue failed";
      v52 = 770;
      v53[0] = v50;
      v54 = " (err=";
      v9 = v6;
      v55 = 770;
      v10 = v72;
      __p[0] = 3289397;
      do
      {
        *--v10 = a0123456789abcd_1[v9 & 0xF];
        ++v8;
        v11 = v9 >= 0x10;
        v9 >>= 4;
      }

      while (v11);
      std::generic_category();
      if (v8 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v8 > 0x16)
        {
          operator new();
        }

        v32 = v8;
        if (v8)
        {
          memcpy(&__dst, v10, v8);
        }

        *(&__dst + v8) = 0;
        v56[0] = v53;
        p_dst = &__dst;
        v58 = 1026;
        *&v59 = v56;
        *&v60 = ") ";
        LOWORD(v61) = 770;
        if (mach_error_string(v7))
        {
          v13 = mach_error_string(v7);
          if (*v13)
          {
LABEL_17:
            *&v62 = &v59;
            *&v63 = v13;
            LOWORD(v64) = 770;
            v14 = 2;
            v15 = &v62;
LABEL_18:
            v65 = v15;
            v66 = v12;
            v67 = "\n";
            v16 = 3;
            goto LABEL_19;
          }
        }

        else
        {
          v13 = "unknown error";
          if (aUnknownError[0])
          {
            goto LABEL_17;
          }
        }

        v62 = v59;
        v63 = v60;
        v64 = v61;
        v14 = v61;
        if (v61)
        {
          if (v61 != 1)
          {
            v12 = *(&v62 + 1);
            v15 = &v62;
            if (BYTE1(v64) == 1)
            {
              v15 = v62;
            }

            else
            {
              v14 = 2;
            }

            goto LABEL_18;
          }

          v65 = "\n";
          v16 = 1;
          v14 = 3;
        }

        else
        {
          v16 = 1;
        }

LABEL_19:
        v68 = v14;
        v69 = v16;
        sub_298B996A4(&v65, v70);
        operator new();
      }

LABEL_57:
      sub_298ADDDA0();
    }
  }

  v29 = 0;
  if (*(a1 + 24))
  {
    v17 = MEMORY[0x29C294060](*(a1 + 12), 0, *v5, *(a1 + 16));
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v35[0] = "RTKit.cpp";
      v36 = ":";
      v37 = 771;
      v34 = 3;
      v38[0] = v35;
      v39 = __p;
      v40 = 1026;
      v41[0] = v38;
      v42 = ": ";
      v43 = 770;
      v44[0] = v41;
      v45 = "Error llvm::applehwtrace::RTBuddyDriverInterface::deinitCarveout()";
      v46 = 770;
      v47[0] = v44;
      v48 = ": ";
      v49 = 770;
      v50[0] = v47;
      v51 = "IOConnectUnmapMemory TraceBuffer failed";
      v52 = 770;
      v53[0] = v50;
      v54 = " (err=";
      v20 = v17;
      v55 = 770;
      v21 = v72;
      __p[0] = 3618868;
      do
      {
        *--v21 = a0123456789abcd_1[v20 & 0xF];
        ++v19;
        v11 = v20 >= 0x10;
        v20 >>= 4;
      }

      while (v11);
      std::generic_category();
      if (v19 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_57;
      }

      if (v19 > 0x16)
      {
        operator new();
      }

      v32 = v19;
      if (v19)
      {
        memcpy(&__dst, v21, v19);
      }

      *(&__dst + v19) = 0;
      v56[0] = v53;
      p_dst = &__dst;
      v58 = 1026;
      *&v59 = v56;
      *&v60 = ") ";
      LOWORD(v61) = 770;
      if (mach_error_string(v18))
      {
        v23 = mach_error_string(v18);
        if (*v23)
        {
LABEL_35:
          *&v62 = &v59;
          *&v63 = v23;
          LOWORD(v64) = 770;
          v24 = 2;
          v25 = &v62;
LABEL_36:
          v65 = v25;
          v66 = v22;
          v67 = "\n";
          v26 = 3;
          goto LABEL_37;
        }
      }

      else
      {
        v23 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_35;
        }
      }

      v62 = v59;
      v63 = v60;
      v64 = v61;
      v24 = v61;
      if (v61)
      {
        if (v61 != 1)
        {
          v22 = *(&v62 + 1);
          v25 = &v62;
          if (BYTE1(v64) == 1)
          {
            v25 = v62;
          }

          else
          {
            v24 = 2;
          }

          goto LABEL_36;
        }

        v65 = "\n";
        v26 = 1;
        v24 = 3;
      }

      else
      {
        v26 = 1;
      }

LABEL_37:
      v68 = v24;
      v69 = v26;
      sub_298B996A4(&v65, v70);
      operator new();
    }
  }

  v71 = 0;
  sub_298ADC6B8(&v30, &v29, &v71, a2);
  if (v71)
  {
    (*(*v71 + 8))(v71);
  }

  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  result = v30;
  if (v30)
  {
    result = (*(*v30 + 8))(v30);
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C6BFD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 40);
  dataSize = 32;
  v5 = *a2;
  v6 = *(a2 + 64);
  do
  {
    __lk.__m_ = v4;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    v7 = IODataQueueDequeue(*(a1 + 32), &data, &dataSize);
    if (v7 == -536870169)
    {
      if (*(a1 + 152))
      {
        goto LABEL_24;
      }

      v9 = *(a1 + 120);
      v10 = *(a1 + 112);
      v37.__cv_.__sig = 1018212795;
      memset(v37.__cv_.__opaque, 0, sizeof(v37.__cv_.__opaque));
      if (v9 == v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = ((v9 - v10) << 6) - 1;
      }

      v12 = *(a1 + 144);
      v13 = v12 + *(a1 + 136);
      if (v11 == v13)
      {
        sub_298C6C6BC((a1 + 104));
        v10 = *(a1 + 112);
        v12 = *(a1 + 144);
        v13 = *(a1 + 136) + v12;
      }

      *(*(v10 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = &v37;
      *(a1 + 144) = v12 + 1;
      while (!IODataQueueDataAvailable(*(a1 + 32)))
      {
        if (*(a1 + 152))
        {
          break;
        }

        std::condition_variable::wait(&v37, &__lk);
      }

      v14 = *(a1 + 112);
      v15 = vaddq_s64(*(a1 + 136), xmmword_298D1ABB0);
      *(a1 + 136) = v15;
      if (v15.i64[0] >= 0x400uLL)
      {
        operator delete(*v14);
        *(a1 + 112) += 8;
        *(a1 + 136) -= 512;
      }

      std::condition_variable::~condition_variable(&v37);
      v8 = 0;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }

    else if (v7)
    {
      if (*(a1 + 152))
      {
LABEL_24:
        if (*(a1 + 144))
        {
          std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
        }

        std::generic_category();
        v23[0] = "RTKit.cpp";
        v23[2] = ":";
        v24 = 771;
        v22 = 3;
        LODWORD(__p) = 3552052;
        v25[0] = v23;
        v25[2] = &__p;
        v26 = 1026;
        v27[0] = v25;
        v27[2] = ": ";
        v28 = 770;
        v29[0] = v27;
        v29[2] = "trace stopped";
        v30 = 770;
        sub_298B996A4(v29, &v36);
        operator new();
      }

      v8 = 0;
      if (__lk.__owns_)
      {
LABEL_2:
        std::mutex::unlock(__lk.__m_);
      }
    }

    else if (IODataQueueDataAvailable(*(a1 + 32)) && *(a1 + 144))
    {
      std::condition_variable::notify_one(*(*(*(a1 + 112) + ((*(a1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 136) & 0x1FFLL)));
      v8 = 3;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v8 = 3;
      if (__lk.__owns_)
      {
        goto LABEL_2;
      }
    }
  }

  while (!v8);
  *a2 = v5;
  v16 = sub_298B227A0(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v37.__cv_.__sig) = 134350080;
    *(&v37.__cv_.__sig + 4) = qword_2A13C3078;
    *&v37.__cv_.__opaque[4] = 2050;
    *&v37.__cv_.__opaque[6] = data;
    *&v37.__cv_.__opaque[14] = 2050;
    *&v37.__cv_.__opaque[16] = *(&data + 1);
    *&v37.__cv_.__opaque[24] = 2050;
    *&v37.__cv_.__opaque[26] = v34;
    *&v37.__cv_.__opaque[34] = 1026;
    *&v37.__cv_.__opaque[36] = v35;
    _os_log_impl(&dword_298AD8000, v16, OS_LOG_TYPE_DEBUG, "chunk{ chunk_id=%{public}llu, offset=%{public}llu, size=%{public}llu, fill_size=%{public}llu, fill_wrap=%{public}u }", &v37, 0x30u);
  }

  v17 = qword_2A13C3078++;
  v18 = v34;
  v19 = v35;
  *(a2 + 64) = v6 & 0xFE;
  *a2 = -1;
  a2[1] = 0;
  a2[2] = v17;
  *(a2 + 3) = data;
  a2[5] = v18;
  a2[6] = 3735928559;
  *(a2 + 56) = v19;
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C6C4C4(uint64_t a1, uint64_t a2)
{
  inputStruct = *(a2 + 24);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = 0;
  return IOConnectCallMethod(*(a1 + 12), 0xDu, 0, 0, &inputStruct, 0x20uLL, 0, 0, 0, 0);
}

void sub_298C6C524(uint64_t a1)
{
  v1 = *(a1 + 32);
  IODataQueueWaitForAvailableData(*(v1 + 32), *(v1 + 156));
  std::mutex::lock((v1 + 40));
  if (*(v1 + 144))
  {
    std::condition_variable::notify_one(*(*(*(v1 + 112) + ((*(v1 + 136) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(v1 + 136) & 0x1FFLL)));
  }

  std::mutex::unlock((v1 + 40));
}

uint64_t sub_298C6C5F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298C6C6BC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_298C6CA04(a1, &v11);
}

void *sub_298C6CA04(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_298C6CB98(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_298C6CD38()
{
  v0 = *MEMORY[0x29EDBB110];
  v1 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    if (IORegistryEntryCreateCFProperty(MatchingService, @"DeviceCapabilities", *MEMORY[0x29EDB8ED8], 0))
    {
      connect = 0;
      if (IOServiceOpen(v3, *MEMORY[0x29EDCA6B0], 0, &connect))
      {
        std::generic_category();
        v7[0] = "AppleProcessorTrace.cpp";
        v8 = ":";
        v9 = 771;
        v6 = 2;
        strcpy(__p, "64");
        v10[0] = v7;
        v11 = __p;
        v12 = 1026;
        v13[0] = v10;
        v14 = ": ";
        v15 = 770;
        v16[0] = v13;
        v17 = "Could not open connection to AppleProcessorTraceNub";
        v18 = 770;
        sub_298B996A4(v16, v19);
        operator new();
      }

      operator new();
    }

    std::generic_category();
    v7[0] = "AppleProcessorTrace.cpp";
    v8 = ":";
    v9 = 771;
    v6 = 2;
    strcpy(__p, "56");
    v10[0] = v7;
    v11 = __p;
    v12 = 1026;
    v13[0] = v10;
    v14 = ": ";
    v15 = 770;
    v16[0] = v13;
    v17 = "Could not find DeviceCapabilities";
    v18 = 770;
    sub_298B996A4(v16, v19);
    operator new();
  }

  std::generic_category();
  v7[0] = "AppleProcessorTrace.cpp";
  v8 = ":";
  v9 = 771;
  v6 = 2;
  strcpy(__p, "49");
  v10[0] = v7;
  v11 = __p;
  v12 = 1026;
  v13[0] = v10;
  v14 = ": ";
  v15 = 770;
  v16[0] = v13;
  v17 = "Could not find IOService matching AppleProcessorTraceNub";
  v18 = 770;
  sub_298B996A4(v16, v19);
  operator new();
}

uint64_t sub_298C6D34C(uint64_t a1)
{
  *a1 = &unk_2A1F20300;
  v2 = *(a1 + 304);
  if (v2 + 1 < 2)
  {
    IOConnectRelease(*(a1 + 12));
    v3 = *(a1 + 272);
    if (v3 != a1 + 248)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(*v3 + 32))(v3);
    goto LABEL_7;
  }

  mach_port_deallocate(*MEMORY[0x29EDCA6B0], v2);
  IOConnectRelease(*(a1 + 12));
  v3 = *(a1 + 272);
  if (v3 == a1 + 248)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

LABEL_7:
  std::mutex::~mutex((a1 + 184));
  sub_298C6C5F0(a1 + 104);
  std::mutex::~mutex((a1 + 40));
  return a1;
}

void sub_298C6D448(uint64_t a1)
{
  sub_298C6D34C(a1);

  JUMPOUT(0x29C2945F0);
}

double sub_298C6D480@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v154 = *MEMORY[0x29EDCA608];
  inputStruct[0] = 327682;
  inputStruct[1] = a2 ^ 1;
  v9 = *(a3 + 128);
  if ((v9 - 1) > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_298D1CDB0[v9 - 1];
  }

  inputStruct[2] = v10;
  v101 = a4;
  v102 = a5;
  v103 = *(a3 + 197);
  v104 = 0x1000000;
  memset(v105, 0, 14);
  memset(&v105[2], 0, 11);
  v11 = *(a3 + 224);
  *(a1 + 176) = v11;
  if (v9 == 5 && !*(a3 + 216))
  {
    BYTE2(v105[3]) = 1;
    if (v11)
    {
      v12 = sub_298B227A0(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_298AD8000, v12, OS_LOG_TYPE_INFO, "warning: Disabling throttling in wrap-no-copy mode", buf, 2u);
      }

      *(a1 + 176) = 0;
    }
  }

  v13 = *(a3 + 200);
  v14 = *(a3 + 197);
  v15 = 0x1000000;
  if (v14)
  {
    v15 = 0x800000;
  }

  if (!v13)
  {
    v13 = v15;
  }

  v104 = v13;
  if (*a3)
  {
    if (*(a3 + 8) == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v25 = *(a3 + 192);
    if (v25 != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  LOBYTE(v105[1]) = 1;
  BYTE3(v105[1]) = 1;
  if (*(a3 + 8) != 1)
  {
    goto LABEL_24;
  }

LABEL_16:
  v16 = *(a3 + 16);
  if (*(a3 + 24) - v16 != 8)
  {
    std::generic_category();
    *&v151 = "AppleProcessorTrace.cpp";
    p_dst = ":";
    v153 = 771;
    HIBYTE(v126) = 3;
    LODWORD(v125[0]) = 3682355;
    *&v132 = &v151;
    *&v133 = v125;
    LOWORD(v134) = 1026;
    *&v135 = &v132;
    *&v136 = ": ";
    LOWORD(v137) = 770;
    *v138 = &v135;
    *&v138[16] = "Expected exactly 1 process ID to trace";
    LOWORD(v139) = 770;
    sub_298B996A4(v138, &__p);
    operator new();
  }

  v17 = *v16;
  v105[0] = *v16;
  name[0] = 0;
  v18 = *MEMORY[0x29EDCA6B0];
  v19 = task_read_for_pid();
  if (v19)
  {
    v20 = v19;
    v110 = "AppleProcessorTrace.cpp";
    v111 = ":";
    v112 = 771;
    std::generic_category();
    v21 = 0;
    v109 = 3;
    v113 = &v110;
    v114 = v108;
    v115 = 1026;
    v116[0] = &v113;
    v117 = ": ";
    v118 = 770;
    v119[0] = v116;
    v120 = "Expected<task_read_t> openReadPortToTargetTask(pid_t, BOOL)";
    v121 = 770;
    v122[0] = v119;
    v123 = ": ";
    v124 = 770;
    v125[0] = v122;
    v126 = "Could not open read port to target task";
    v127 = 770;
    __p = v125;
    v130 = " (err=";
    v22 = v20;
    v131 = 770;
    v23 = &v144 + 1;
    v108[0] = 3223858;
    do
    {
      *--v23 = a0123456789abcd_1[v22 & 0xF];
      ++v21;
      v24 = v22 >= 0x10;
      v22 >>= 4;
    }

    while (v24);
    if (v21 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v21 > 0x16)
      {
        operator new();
      }

      v107 = v21;
      if (v21)
      {
        memcpy(&__dst, v23, v21);
      }

      *(&__dst + v21) = 0;
      *&v151 = &__p;
      p_dst = &__dst;
      v153 = 1026;
      *&v132 = &v151;
      *&v133 = ") ";
      LOWORD(v134) = 770;
      if (mach_error_string(v20))
      {
        v50 = mach_error_string(v20);
        if (*v50)
        {
LABEL_73:
          *&v135 = &v132;
          *&v136 = v50;
          LOWORD(v137) = 770;
          v51 = 2;
          v52 = &v135;
LABEL_74:
          *v138 = v52;
          *&v138[8] = v49;
          *&v138[16] = "\n";
          v53 = 3;
          goto LABEL_75;
        }
      }

      else
      {
        v50 = "unknown error";
        if (aUnknownError[0])
        {
          goto LABEL_73;
        }
      }

      v135 = v132;
      v136 = v133;
      v137 = v134;
      v51 = v134;
      if (v134)
      {
        if (v134 != 1)
        {
          v49 = *(&v135 + 1);
          v52 = &v135;
          if (BYTE1(v137) == 1)
          {
            v52 = v135;
          }

          else
          {
            v51 = 2;
          }

          goto LABEL_74;
        }

        *v138 = "\n";
        v53 = 1;
        v51 = 3;
      }

      else
      {
        v53 = 1;
      }

LABEL_75:
      LOBYTE(v139) = v51;
      BYTE1(v139) = v53;
      sub_298B996A4(v138, &v140);
      operator new();
    }

LABEL_214:
    sub_298ADDDA0();
  }

  v43 = os_variant_allows_internal_security_policies();
  if ((v14 & 1) != 0 || !v43)
  {
    if (os_variant_allows_internal_security_policies())
    {
      *v138 = 0;
      *buf = 4;
      if (sysctlbyname("security.codesigning.config", v138, buf, 0, 0))
      {
        v54 = sub_298B227A0(1);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v135) = 0;
          _os_log_impl(&dword_298AD8000, v54, OS_LOG_TYPE_ERROR, "sysctl security.codesigning.config failed", &v135, 2u);
        }
      }

      else if (v138[0])
      {
        goto LABEL_62;
      }
    }

    LODWORD(v110) = 0;
    if (!csops())
    {
      v132 = 0uLL;
      *&v133 = 0;
      *&buf[8] = 0;
      v147 = 0;
      v148 = 0;
      v149 = 1;
      v145 = 0;
      v146 = 0;
      v144 = 0;
      *buf = &unk_2A1F1E040;
      v150 = &v132;
      sub_298ADDDB0(buf);
      if ((v145 - v146) > 0x15)
      {
        qmemcpy(v146, "Refusing to trace pid ", 22);
        v146 += 22;
      }

      else
      {
        sub_298B9BCEC(buf, "Refusing to trace pid ", 0x16uLL);
      }

      if ((v17 & 0x80000000) != 0)
      {
        v77 = -v17;
        v78 = 1;
      }

      else
      {
        v77 = v17;
        v78 = 0;
      }

      sub_298B8FC48(buf, v77, 0, 0, v78);
      if ((v145 - v146) > 0x1F)
      {
        qmemcpy(v146, " without get-task-allow (csops: ", 32);
        v146 += 32;
      }

      else
      {
        sub_298B9BCEC(buf, " without get-task-allow (csops: ", 0x20uLL);
      }

      v138[23] = 2;
      strcpy(v138, "0x");
      LOBYTE(p_dst) = 48;
      BYTE7(v136) = 1;
      memcpy(&v135, &p_dst, 1uLL);
      BYTE1(v135) = 0;
      if ((SBYTE7(v136) & 0x80u) == 0)
      {
        v89 = &v135;
      }

      else
      {
        v89 = v135;
      }

      if ((SBYTE7(v136) & 0x80u) == 0)
      {
        v90 = BYTE7(v136);
      }

      else
      {
        v90 = *(&v135 + 1);
      }

      v91 = std::string::append(v138, v89, v90);
      v92 = v91->__r_.__value_.__r.__words[2];
      v151 = *&v91->__r_.__value_.__l.__data_;
      p_dst = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      if (SBYTE7(v136) < 0)
      {
        operator delete(v135);
      }

      if ((v138[23] & 0x80000000) != 0)
      {
        operator delete(*v138);
      }

      if (SHIBYTE(p_dst) >= 0)
      {
        v93 = &v151;
      }

      else
      {
        v93 = v151;
      }

      if (SHIBYTE(p_dst) >= 0)
      {
        v94 = HIBYTE(p_dst);
      }

      else
      {
        v94 = *(&v151 + 1);
      }

      v95 = sub_298B9BCEC(buf, v93, v94);
      if (v145 == v146)
      {
        sub_298B9BCEC(v95, ")", 1uLL);
      }

      else
      {
        *v146++ = 41;
      }

      if (SHIBYTE(p_dst) < 0)
      {
        operator delete(v151);
      }

      if (os_variant_allows_internal_security_policies())
      {
        v96 = v145;
        v97 = v146;
        if ((v145 - v146) > 0x4C)
        {
          *(v146 + 2) = *"t_task_for_pid=1 is not present in boot-args.";
          qmemcpy(v97 + 48, " is not present in boot-args.", 29);
          qmemcpy(v97, "... Detected that amfi_unrestric", 32);
          v98 = v97 + 77;
          v146 = v98;
        }

        else
        {
          sub_298B9BCEC(buf, "... Detected that amfi_unrestrict_task_for_pid=1 is not present in boot-args.", 0x4DuLL);
          v96 = v145;
          v98 = v146;
        }

        if ((v96 - v98) > 0x28)
        {
          qmemcpy(v98, " This explains why tracing is restricted.", 41);
          v146 += 41;
        }

        else
        {
          sub_298B9BCEC(buf, " This explains why tracing is restricted.", 0x29uLL);
        }
      }

      sub_298B9AE14(buf);
      operator new();
    }

    v122[0] = "AppleProcessorTrace.cpp";
    v123 = ":";
    v124 = 771;
    std::generic_category();
    HIBYTE(v117) = 3;
    LODWORD(v116[0]) = 3420977;
    v125[0] = v122;
    v126 = v116;
    v127 = 1026;
    __p = v125;
    v130 = ": ";
    v131 = 770;
    *&v151 = &__p;
    p_dst = "csops(";
    v153 = 770;
    if (v17)
    {
      v66 = v17;
      v67 = 20;
      do
      {
        buf[v67--] = (v66 % 0xA) | 0x30;
        v64 = v66 > 9;
        v66 /= 0xAuLL;
      }

      while (v64);
      v68 = v67 + 1;
    }

    else
    {
      BYTE4(v144) = 48;
      v68 = 20;
    }

    v69 = 21 - v68;
    if ((21 - v68) <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v69 <= 0x16)
      {
        HIBYTE(v114) = 21 - v68;
        if (v68 != 21)
        {
          memcpy(&v113, &buf[v68], 21 - v68);
        }

        *(&v113 + v69) = 0;
        *&v132 = &v151;
        *&v133 = &v113;
        LOWORD(v134) = 1026;
        *&v135 = &v132;
        *&v136 = "): ";
        LOWORD(v137) = 770;
        v70 = __error();
        v71 = strerror(*v70);
        if (*v71)
        {
          *v138 = &v135;
          *&v138[16] = v71;
          LOWORD(v139) = 770;
        }

        else
        {
          *v138 = v135;
          *&v138[16] = v136;
          v139 = v137;
        }

        sub_298B996A4(v138, v119);
        operator new();
      }

      operator new();
    }

    goto LABEL_214;
  }

LABEL_62:
  *src = 0;
  v44 = pid_for_task(name[0], src);
  if (v44)
  {
    v45 = v44;
    v46 = 0;
    v110 = "AppleProcessorTrace.cpp";
    v111 = ":";
    v112 = 771;
    v109 = 3;
    v113 = &v110;
    v114 = v108;
    v115 = 1026;
    v116[0] = &v113;
    v117 = ": ";
    v118 = 770;
    v119[0] = v116;
    v120 = "Error verifyPortMatchesTarget(pid_t, task_read_t)";
    v121 = 770;
    v122[0] = v119;
    v123 = ": ";
    v124 = 770;
    v125[0] = v122;
    v126 = "Could not verify read port provenance (is the tracing target process dead?)";
    v127 = 770;
    __p = v125;
    v130 = " (err=";
    v47 = v44;
    v131 = 770;
    v48 = &v144 + 1;
    v108[0] = 3225905;
    do
    {
      *--v48 = a0123456789abcd_1[v47 & 0xF];
      ++v46;
      v24 = v47 >= 0x10;
      v47 >>= 4;
    }

    while (v24);
    std::generic_category();
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_214;
    }

    if (v46 > 0x16)
    {
      operator new();
    }

    v107 = v46;
    if (v46)
    {
      memcpy(&__dst, v48, v46);
    }

    *(&__dst + v46) = 0;
    *&v151 = &__p;
    p_dst = &__dst;
    v153 = 1026;
    *&v132 = &v151;
    *&v133 = ") ";
    LOWORD(v134) = 770;
    if (mach_error_string(v45))
    {
      v59 = mach_error_string(v45);
    }

    else
    {
      v59 = "unknown error";
    }

    if (*v59)
    {
      *&v135 = &v132;
      *&v136 = v59;
      LOWORD(v137) = 770;
      v60 = 2;
      v61 = &v135;
LABEL_108:
      *v138 = v61;
      *&v138[8] = v58;
      *&v138[16] = "\n";
      v62 = 3;
      goto LABEL_109;
    }

    v135 = v132;
    v136 = v133;
    v137 = v134;
    v60 = v134;
    if (v134)
    {
      if (v134 != 1)
      {
        v58 = *(&v135 + 1);
        v61 = &v135;
        if (BYTE1(v137) == 1)
        {
          v61 = v135;
        }

        else
        {
          v60 = 2;
        }

        goto LABEL_108;
      }

      *v138 = "\n";
      v62 = 1;
      v60 = 3;
    }

    else
    {
      v62 = 1;
    }

LABEL_109:
    LOBYTE(v139) = v60;
    BYTE1(v139) = v62;
    sub_298B996A4(v138, &v140);
    operator new();
  }

  v56 = *src;
  if (*src != v17)
  {
    v119[0] = "AppleProcessorTrace.cpp";
    v120 = ":";
    v121 = 771;
    std::generic_category();
    HIBYTE(v114) = 3;
    LODWORD(v113) = 3553585;
    v122[0] = v119;
    v123 = &v113;
    v124 = 1026;
    v125[0] = v122;
    v126 = ": ";
    v127 = 770;
    __p = v125;
    v130 = "Read port pid (";
    v131 = 770;
    if (v56)
    {
      v63 = 20;
      do
      {
        buf[v63--] = (v56 % 0xA) | 0x30;
        v64 = v56 > 9;
        v56 /= 0xAuLL;
      }

      while (v64);
      v65 = v63 + 1;
    }

    else
    {
      BYTE4(v144) = 48;
      v65 = 20;
    }

    v72 = 21 - v65;
    if ((21 - v65) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_214;
    }

    if (v72 > 0x16)
    {
      operator new();
    }

    HIBYTE(v111) = 21 - v65;
    if (v65 != 21)
    {
      memcpy(&v110, &buf[v65], 21 - v65);
    }

    *(&v110 + v72) = 0;
    v73 = v131;
    if (v131 == 1)
    {
      v65 = &v110;
      *&v151 = &v110;
      v79 = 1;
      v73 = 4;
      v74 = 4;
    }

    else
    {
      if (!v131)
      {
        v74 = 0;
        v153 = 256;
        v75 = 1;
        v76 = 1;
        goto LABEL_165;
      }

      v74 = 2;
      if (HIBYTE(v131) != 1)
      {
        v73 = 2;
      }

      p_p = &__p;
      if (HIBYTE(v131) == 1)
      {
        p_p = __p;
      }

      *&v151 = p_p;
      *(&v151 + 1) = v129;
      p_dst = &v110;
      v65 = &v151;
      v79 = 4;
    }

    v76 = 0;
    LOBYTE(v153) = v73;
    HIBYTE(v153) = v79;
    *&v132 = v65;
    *&v133 = ") does not match pid of requested trace target (";
    v75 = 3;
LABEL_165:
    LOBYTE(v134) = v74;
    BYTE1(v134) = v75;
    if (v17)
    {
      v81 = v17;
      v82 = 20;
      do
      {
        buf[v82--] = (v81 % 0xA) | 0x30;
        v64 = v81 > 9;
        v81 /= 0xAuLL;
      }

      while (v64);
      v83 = v82 + 1;
    }

    else
    {
      BYTE4(v144) = 48;
      v83 = 20;
    }

    v84 = 21 - v83;
    if ((21 - v83) <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v84 <= 0x16)
      {
        v141 = 21 - v83;
        if (v83 != 21)
        {
          memcpy(&v140, &buf[v83], 21 - v83);
        }

        *(&v140 + v84) = 0;
        if (v74)
        {
          v85 = 2;
          if (v76)
          {
            v87 = v74;
          }

          else
          {
            v87 = 2;
          }

          v88 = &v132;
          if (v76)
          {
            v88 = v65;
          }

          *&v135 = v88;
          *&v136 = &v140;
          LOBYTE(v137) = v87;
          BYTE1(v137) = 4;
          *v138 = &v135;
          *&v138[16] = ")";
          v86 = 3;
        }

        else
        {
          v85 = 0;
          LOWORD(v137) = 256;
          v86 = 1;
        }

        LOBYTE(v139) = v85;
        BYTE1(v139) = v86;
        sub_298B996A4(v138, v116);
        operator new();
      }

      operator new();
    }

    goto LABEL_214;
  }

  v57 = name[0];
  *(a1 + 304) = name[0];
  LODWORD(v105[2]) = v57;
  v25 = *(a3 + 192);
  if (v25 == 1)
  {
LABEL_25:
    LOBYTE(v105[3]) = v25;
  }

LABEL_26:
  *name = 16;
  v26 = IOConnectCallMethod(*(a1 + 12), 0, 0, 0, inputStruct, 0x50uLL, 0, 0, src, name);
  if (v26)
  {
    v27 = v26;
    std::generic_category();
    v28 = 0;
    v110 = "AppleProcessorTrace.cpp";
    v111 = ":";
    v112 = 771;
    v109 = 3;
    v108[0] = 3224371;
    v113 = &v110;
    v114 = v108;
    v115 = 1026;
    v116[0] = &v113;
    v117 = ": ";
    v118 = 770;
    v119[0] = v116;
    v120 = "virtual Expected<UUIDValue> llvm::applehwtrace::AppleProcessorTraceDriverInterface::configure(BOOL, const SystemOptions &, uint64_t, uint64_t)";
    v121 = 770;
    v124 = 770;
    v125[0] = v122;
    v126 = "IOConnectCallMethod Configure failed.";
    v127 = 770;
    __p = v125;
    v130 = " (err=";
    v131 = 770;
    v29 = v27;
    v30 = &v144 + 1;
    v122[0] = v119;
    v123 = ": ";
    do
    {
      *--v30 = a0123456789abcd_1[v29 & 0xF];
      ++v28;
      v24 = v29 >= 0x10;
      v29 >>= 4;
    }

    while (v24);
    if (v28 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_214;
    }

    if (v28 > 0x16)
    {
      operator new();
    }

    v107 = v28;
    if (v28)
    {
      memcpy(&__dst, v30, v28);
    }

    *(&__dst + v28) = 0;
    v33 = v131;
    if (v131 == 1)
    {
      v37 = &__dst;
      *&v151 = &__dst;
      v153 = 260;
      v38 = 4;
      v39 = *(&v151 + 1);
    }

    else
    {
      if (!v131)
      {
        v153 = 256;
        LOWORD(v134) = 256;
        if (!mach_error_string(v27))
        {
          goto LABEL_40;
        }

        goto LABEL_50;
      }

      v40 = __p;
      v38 = 2;
      if (HIBYTE(v131) != 1)
      {
        v33 = 2;
        v40 = &__p;
      }

      *&v151 = v40;
      *(&v151 + 1) = v129;
      v39 = &__dst;
      p_dst = &__dst;
      LOBYTE(v153) = v33;
      HIBYTE(v153) = 4;
      v37 = &v151;
    }

    *&v132 = v37;
    *(&v132 + 1) = v39;
    *&v133 = ") ";
    LOBYTE(v134) = v38;
    BYTE1(v134) = 3;
    if (!mach_error_string(v27))
    {
LABEL_40:
      v34 = "unknown error";
      v35 = aUnknownError[0];
      v36 = v134;
      if (v134 == 1)
      {
LABEL_41:
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 1;
        }

        *&v135 = v34;
        LOBYTE(v137) = v36;
        BYTE1(v137) = 1;
        goto LABEL_85;
      }

LABEL_51:
      if (v36)
      {
        if (v35)
        {
          if (BYTE1(v134) != 1)
          {
            v36 = 2;
          }

          v42 = &v132;
          if (BYTE1(v134) == 1)
          {
            v42 = v132;
          }

          *&v135 = v42;
          *(&v135 + 1) = *(&v132 + 1);
          *&v136 = v34;
          LOBYTE(v137) = v36;
          BYTE1(v137) = 3;
          goto LABEL_85;
        }

        v135 = v132;
        v136 = v133;
        v137 = v134;
        v36 = v134;
        if (v134)
        {
LABEL_85:
          if (v36 == 1)
          {
            *v138 = "\n";
            v41 = 1;
            LOBYTE(v36) = 3;
          }

          else
          {
            if (BYTE1(v137) != 1)
            {
              LOBYTE(v36) = 2;
            }

            v55 = &v135;
            if (BYTE1(v137) == 1)
            {
              v55 = v135;
            }

            *v138 = v55;
            *&v138[8] = *(&v135 + 1);
            *&v138[16] = "\n";
            v41 = 3;
          }

LABEL_92:
          LOBYTE(v139) = v36;
          BYTE1(v139) = v41;
          sub_298B996A4(v138, &v140);
          operator new();
        }
      }

      else
      {
        LOWORD(v137) = 256;
      }

      v41 = 1;
      goto LABEL_92;
    }

LABEL_50:
    v34 = mach_error_string(v27);
    v35 = *v34;
    v36 = v134;
    if (v134 == 1)
    {
      goto LABEL_41;
    }

    goto LABEL_51;
  }

  memset(buf, 0, sizeof(buf));
  uuid_copy(buf, src);
  *(a6 + 16) &= ~1u;
  result = *buf;
  *a6 = *buf;
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C6F3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v49[23] = *MEMORY[0x29EDCA608];
  inputStruct = 327682;
  if (*a2)
  {
    uuid_copy(v48, *a2);
  }

  else
  {
    uuid_parse(*(a2 + 8), v48);
  }

  result = IOConnectCallStructMethod(*(a1 + 12), 1u, &inputStruct, 0x14uLL, 0, 0);
  if (result)
  {
    v6 = result;
    std::generic_category();
    v7 = 0;
    v21[0] = "AppleProcessorTrace.cpp";
    v21[2] = ":";
    v22 = 771;
    v20 = 3;
    v23[0] = v21;
    v23[2] = &__p;
    v24 = 1026;
    v25[0] = v23;
    v25[2] = ": ";
    v26 = 770;
    v27[0] = v25;
    v27[2] = "virtual Error llvm::applehwtrace::AppleProcessorTraceDriverInterface::attach(UUIDHandle)";
    v28 = 770;
    v29[0] = v27;
    v29[2] = ": ";
    v30 = 770;
    v31[0] = v29;
    v31[2] = "IOConnectCallMethod Attach failed";
    v32 = 770;
    v33[0] = v31;
    v33[2] = " (err=";
    v8 = v6;
    v34 = 770;
    v9 = v49;
    LODWORD(__p) = 3159347;
    do
    {
      *--v9 = a0123456789abcd_1[v8 & 0xF];
      ++v7;
      v10 = v8 >= 0x10;
      v8 >>= 4;
    }

    while (v10);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v7 > 0x16)
    {
      operator new();
    }

    v18 = v7;
    if (v7)
    {
      memcpy(&__dst, v9, v7);
    }

    *(&__dst + v7) = 0;
    v35[0] = v33;
    v35[2] = &__dst;
    v36 = 1026;
    *&v37 = v35;
    *&v38 = ") ";
    LOWORD(v39) = 770;
    if (mach_error_string(v6))
    {
      v13 = mach_error_string(v6);
      if (*v13)
      {
LABEL_16:
        *&v40 = &v37;
        *&v41 = v13;
        LOWORD(v42) = 770;
        v14 = 2;
        v15 = &v40;
LABEL_17:
        v43[0] = v15;
        v43[1] = v12;
        v43[2] = "\n";
        v16 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = "unknown error";
      if (aUnknownError[0])
      {
        goto LABEL_16;
      }
    }

    v40 = v37;
    v41 = v38;
    v42 = v39;
    v14 = v39;
    if (v39)
    {
      if (v39 != 1)
      {
        v12 = *(&v40 + 1);
        v15 = &v40;
        if (BYTE1(v42) == 1)
        {
          v15 = v40;
        }

        else
        {
          v14 = 2;
        }

        goto LABEL_17;
      }

      v43[0] = "\n";
      v16 = 1;
      v14 = 3;
    }

    else
    {
      v16 = 1;
    }

LABEL_18:
    v44 = v14;
    v45 = v16;
    sub_298B996A4(v43, &v46);
    operator new();
  }

  *a3 = 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}