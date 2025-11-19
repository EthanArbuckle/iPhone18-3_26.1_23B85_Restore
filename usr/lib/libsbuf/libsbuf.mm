uint64_t usbuf_hexdump(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 & 0xFF00) != 0)
  {
    v8 = BYTE1(a5);
  }

  else
  {
    v8 = 32;
  }

  v31 = a3;
  if (a3 >= 1)
  {
    v9 = a5;
    v10 = a4;
    v12 = result;
    v13 = 0;
    if (a5)
    {
      v14 = a5;
    }

    else
    {
      v14 = 16;
    }

    v33 = v14;
    v32 = a5;
    while (1)
    {
      if (v10)
      {
        usbuf_printf(v12, "%s", a3, a4, a5, a6, a7, a8, v10);
      }

      if ((v9 & 0x10000) == 0)
      {
        usbuf_printf(v12, "%04x  ", a3, a4, a5, a6, a7, a8, v13);
      }

      if ((v9 & 0x20000) == 0)
      {
        v15 = v33;
        v16 = v13;
        do
        {
          if (v16 >= v31)
          {
            usbuf_printf(v12, "   ", a3, a4, a5, a6, a7, a8, v27);
          }

          else
          {
            v29 = *(a2 + v16);
            usbuf_printf(v12, "%c%02x", a3, a4, a5, a6, a7, a8, v8);
          }

          ++v16;
          --v15;
        }

        while (v15);
      }

      v9 = v32;
      if ((v32 & 0x40000) == 0)
      {
        break;
      }

LABEL_29:
      result = usbuf_printf(v12, "\n", a3, a4, a5, a6, a7, a8, v27);
      v13 += v33;
      v10 = a4;
      if (v13 >= v31)
      {
        return result;
      }
    }

    usbuf_printf(v12, "  |", a3, a4, a5, a6, a7, a8, v27);
    v23 = v33;
    v24 = v13;
    while (v24 < v31)
    {
      if (*(a2 + v24) - 32 > 0x5E)
      {
        v25 = v12;
        v26 = ".";
        goto LABEL_26;
      }

      usbuf_printf(v12, "%c", v17, v18, v19, v20, v21, v22, *(a2 + v24));
LABEL_27:
      ++v24;
      if (!--v23)
      {
        usbuf_printf(v12, "|", v17, v18, v19, v20, v21, v22, v28);
        v9 = v32;
        goto LABEL_29;
      }
    }

    v25 = v12;
    v26 = " ";
LABEL_26:
    usbuf_printf(v25, v26, v17, v18, v19, v20, v21, v22, v28);
    goto LABEL_27;
  }

  return result;
}

uint64_t usbuf_printf_drain(void *a1, const char *a2, int a3)
{
  result = printf("%.*s", a3, a2);
  if ((result & 0x80000000) != 0)
  {
    return -*__error();
  }

  if (a1)
  {
    *a1 += result;
  }

  return result;
}

void *usbuf_new(_OWORD *a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  if (a1)
  {
    v7 = a1;
    *(a1 + 8) = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v8 = *(a1 + 12);
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x1090040CEDE3635uLL);
    v7 = v9;
    if (!v9)
    {
      return v7;
    }

    v8 = *(v9 + 12) | 0x80000;
    *(v9 + 12) = v8;
  }

  v10 = v8 | a4;
  v11 = a3;
  v7[4] = a3;
  *v7 = a2;
  *(v7 + 12) = v10 | 0x200000;
  if (!a2)
  {
    if (v10)
    {
      if (a3 > 4095)
      {
        v13 = (a3 + 4095) & 0xFFFFF000;
      }

      else
      {
        v12 = 16;
        do
        {
          v13 = v12;
          v12 *= 2;
        }

        while (v13 < a3);
      }

      v11 = v13;
      v7[4] = v13;
    }

    v14 = malloc_type_calloc(1uLL, v11, 0x7FF3EAA2uLL);
    *v7 = v14;
    v15 = *(v7 + 12);
    if (v14)
    {
      *(v7 + 12) = v15 | 0x10000;
    }

    else
    {
      if ((v15 & 0x80000) != 0)
      {
        free(v7);
      }

      return 0;
    }
  }

  return v7;
}

uint64_t usbuf_clear(uint64_t result)
{
  *(result + 48) &= ~0x20000u;
  *(result + 24) = 0;
  *(result + 40) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t usbuf_setpos(uint64_t a1, uint64_t a2)
{
  if (a2 < 0 || *(a1 + 40) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t usbuf_set_drain(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t usbuf_drain(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(a1 + 24);
  if (v2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(a1 + 48) & 0x100004;
    if (v5 == 1048580 && !*(a1 + 64))
    {
      result = 11;
    }

    else
    {
      v6 = 40;
      if (v5 == 1048580)
      {
        v6 = 64;
      }

      v7 = (*(a1 + 8))(*(a1 + 16), *a1, *(a1 + v6));
      if (v7 > 0)
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 64) - v7;
        v10 = v8 - v7;
        *(a1 + 40) = v10;
        *(a1 + 64) = v9;
        v11 = (*a1 + v7);
        if (v8 == v7)
        {
          result = 0;
          *(a1 + 48) = *(a1 + 48) & 0xFFDFFFFF | ((*(v11 - 1) == 10) << 21);
        }

        else
        {
          memmove(*a1, v11, v10);
          return 0;
        }

        return result;
      }

      if (v7)
      {
        result = -v7;
      }

      else
      {
        result = 11;
      }
    }

    *(a1 + 24) = result;
  }

  return result;
}

uint64_t usbuf_bcat(uint64_t a1, char *a2, unint64_t a3)
{
  sbuf_put_bytes(a1, a2, a3);
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sbuf_put_bytes(uint64_t result, char *__src, unint64_t a3)
{
  if (*(result + 24))
  {
    v3 = 1;
  }

  else
  {
    v3 = a3 == 0;
  }

  if (!v3)
  {
    v4 = a3;
    v6 = result;
    v7 = *(result + 40);
    do
    {
      v8 = *(v6 + 32);
      if ((v7 - v8) >= -1)
      {
        if (*(v6 + 8))
        {
          result = usbuf_drain(v6);
        }

        else
        {
          if (v4 >= 0x7FFFFFFF)
          {
            v9 = 0x7FFFFFFF;
          }

          else
          {
            v9 = v4;
          }

          result = sbuf_extend(v6, v9);
          if ((result & 0x80000000) != 0)
          {
            *(v6 + 24) = 12;
            return result;
          }
        }

        if (*(v6 + 24))
        {
          return result;
        }

        v8 = *(v6 + 32);
        v7 = *(v6 + 40);
      }

      v10 = v8 + ~v7;
      if (v4 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v4;
      }

      result = memcpy((*v6 + v7), __src, v11);
      v7 = *(v6 + 40) + v11;
      *(v6 + 40) = v7;
      if ((*(v6 + 50) & 0x10) != 0)
      {
        *(v6 + 56) += v11;
      }

      __src += v11;
      v4 -= v11;
    }

    while (v4);
  }

  return result;
}

uint64_t usbuf_bcpy(uint64_t a1, char *a2, unint64_t a3)
{
  *(a1 + 48) &= ~0x20000u;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sbuf_put_bytes(a1, a2, a3);
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t usbuf_cat(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  sbuf_put_bytes(a1, __s, v4);
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t usbuf_cpy(uint64_t a1, char *__s)
{
  *(a1 + 48) &= ~0x20000u;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = strlen(__s);
  sbuf_put_bytes(a1, __s, v4);
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t usbuf_vprintf(uint64_t a1, char *__format, va_list a3)
{
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v5 = vsnprintf((*a1 + *(a1 + 40)), *(a1 + 32) - *(a1 + 40), __format, a3);
    if ((v5 & 0x80000000) != 0)
    {
      *(a1 + 24) = *__error();
      return 0xFFFFFFFFLL;
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 32) + ~v6;
    v8 = v5;
    if (v7 >= v5)
    {
      break;
    }

    if (v6 < 1 || *(a1 + 8) == 0)
    {
      if (sbuf_extend(a1, v5 - v7))
      {
        *(a1 + 24) = 12;
        break;
      }
    }

    else if (usbuf_drain(a1))
    {
      break;
    }
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 32) + ~v12;
  if (v13 >= v8)
  {
    LODWORD(v13) = v8;
  }

  *(a1 + 40) = v12 + v13;
  if ((*(a1 + 50) & 0x10) != 0)
  {
    *(a1 + 56) += v13;
  }

  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sbuf_extend(uint64_t a1, int a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32) + a2;
  if (v4 > 4095)
  {
    v6 = (v4 + 4095) & 0xFFFFF000;
  }

  else
  {
    v5 = 16;
    do
    {
      v6 = v5;
      v5 *= 2;
    }

    while (v6 < v4);
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, v6, 0xADE5D8A0uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  memcpy(v8, *a1, *(a1 + 32));
  v10 = *(a1 + 48);
  if ((v10 & 0x10000) != 0)
  {
    free(*a1);
  }

  else
  {
    *(a1 + 48) = v10 | 0x10000;
  }

  result = 0;
  *a1 = v9;
  *(a1 + 32) = v7;
  return result;
}

uint64_t usbuf_putc(uint64_t a1, char a2)
{
  sbuf_put_byte(a1, a2);
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sbuf_put_byte(uint64_t result, char a2)
{
  if (!*(result + 24))
  {
    v3 = result;
    v4 = *(result + 40);
    if (v4 - *(result + 32) < -1)
    {
      goto LABEL_8;
    }

    if (*(result + 8))
    {
      result = usbuf_drain(result);
    }

    else
    {
      result = sbuf_extend(result, 1);
      if ((result & 0x80000000) != 0)
      {
        *(v3 + 24) = 12;
        return result;
      }
    }

    if (!*(v3 + 24))
    {
      v4 = *(v3 + 40);
LABEL_8:
      v5 = *v3;
      *(v3 + 40) = v4 + 1;
      *(v5 + v4) = a2;
      if ((*(v3 + 50) & 0x10) != 0)
      {
        ++*(v3 + 56);
      }
    }
  }

  return result;
}

uint64_t usbuf_nl_terminate(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(*a1 + v2 - 1) == 10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ((*(a1 + 50) & 0x20) == 0)
  {
LABEL_3:
    sbuf_put_byte(a1, 10);
  }

LABEL_4:
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t usbuf_trim(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 40);
  v4 = v3 - 1;
  if (v3 >= 1)
  {
    v5 = MEMORY[0x29EDCA600];
    do
    {
      v6 = *(*a1 + v4);
      if ((v6 & 0x80000000) != 0)
      {
        result = __maskrune(v6, 0x4000uLL);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = *(v5 + 4 * v6 + 60) & 0x4000;
        if (!result)
        {
          return result;
        }
      }

      *(a1 + 40) = v4;
      if ((*(a1 + 50) & 0x10) != 0)
      {
        --*(a1 + 56);
      }

      v7 = v4-- + 1;
    }

    while (v7 > 1);
  }

  return 0;
}

uint64_t usbuf_finish(uint64_t a1)
{
  *(*a1 + *(a1 + 40)) = 0;
  v2 = *(a1 + 48);
  if ((v2 & 2) != 0)
  {
    ++*(a1 + 40);
  }

  if (*(a1 + 8) && *(a1 + 40) >= 1)
  {
    v3 = *(a1 + 24);
    do
    {
      if (v3)
      {
        break;
      }

      v3 = usbuf_drain(a1);
      *(a1 + 24) = v3;
    }

    while (*(a1 + 40) > 0);
    v2 = *(a1 + 48);
  }

  *(a1 + 48) = v2 | 0x20000;
  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  *__error() = v4;
  return 0xFFFFFFFFLL;
}

uint64_t usbuf_len(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return -1;
  }

  if ((*(a1 + 48) & 0x20002) == 2)
  {
    return *(a1 + 40) + 1;
  }

  return *(a1 + 40);
}

void usbuf_delete(_DWORD *a1)
{
  v2 = a1[12];
  if ((v2 & 0x10000) != 0)
  {
    free(*a1);
    v2 = a1[12];
  }

  *(a1 + 8) = 0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  if ((v2 & 0x80000) != 0)
  {

    free(a1);
  }
}

uint64_t usbuf_start_section(uint64_t result, void *a2)
{
  v2 = *(result + 48);
  if ((v2 & 0x100000) != 0)
  {
    *a2 = *(result + 56);
    *(result + 56) = 0;
  }

  else
  {
    if (a2)
    {
      *a2 = -1;
    }

    *(result + 64) = *(result + 40);
    *(result + 48) = v2 | 0x100000;
  }

  return result;
}

uint64_t usbuf_end_section(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a3 >= 2 && !*(a1 + 24))
  {
    v6 = *(a1 + 56) % a3;
    v7 = a3 - v6;
    if (v6 && v7 >= 1)
    {
      do
      {
        sbuf_put_byte(a1, a4);
        if (*(a1 + 24))
        {
          v10 = 1;
        }

        else
        {
          v10 = v7 <= 1;
        }

        --v7;
      }

      while (!v10);
    }
  }

  v11 = *(a1 + 56);
  if (a2 == -1)
  {
    v12 = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) &= ~0x100000u;
  }

  else
  {
    v12 = v11 + a2;
  }

  *(a1 + 56) = v12;
  if (*(a1 + 24))
  {
    return -1;
  }

  else
  {
    return v11;
  }
}