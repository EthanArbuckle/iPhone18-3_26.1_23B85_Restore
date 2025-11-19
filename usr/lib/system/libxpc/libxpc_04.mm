unint64_t der_vm_execute@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 + 256 < a2)
  {
    __break(0x5519u);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v5 = *(result + 16);
    v6[0] = *result;
    v6[1] = v5;
    v6[2] = *(result + 32);
    v7 = *(result + 48);
    return der_vm_execute_nocopy(v6, a2, a3);
  }

  return result;
}

uint64_t der_vm_CEType_from_ccder_tag(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a2 > 17)
  {
    if (a2 <= 0x200000000000000FLL)
    {
      if (a2 == 18)
      {
        return 7;
      }

      if (a2 == 23)
      {
        return 8;
      }

      return 0;
    }

    if (a2 == 0x6000000000000010)
    {
      return 9;
    }

    if (a2 != 0x2000000000000011)
    {
      if (a2 == 0x2000000000000010)
      {
        return 2;
      }

      return 0;
    }

    return 1;
  }

  if (a2 <= 1)
  {
    if (a2 != 0xA000000000000010)
    {
      if (a2 == 1)
      {
        return 5;
      }

      return 0;
    }

    return 1;
  }

  switch(a2)
  {
    case 2:
      return 3;
    case 4:
      return 6;
    case 12:
      return 4;
  }

  return 0;
}

uint64_t der_vm_CEType_from_context(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v4 = *a1;
  v7 = *(a1 + 40);
  result = der_decode_next(v4, &v8, 0, 0, &v7);
  if (result)
  {
    v6 = v8;
    if (a2)
    {
      *a2 = v8;
    }

    return der_vm_CEType_from_ccder_tag(*(a1 + 24), v6);
  }

  return result;
}

unint64_t der_vm_iterate(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result + 56 < result)
  {
    goto LABEL_23;
  }

  v3 = result;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v13 = __der_vm_iterate_block_invoke;
  v14 = &__block_descriptor_tmp_18;
  v15 = a2;
  v16 = a3;
  if ((*(result + 33) & 1) == 0)
  {
    return &unk_1E74AC038;
  }

  v4 = *result;
  v5 = *result + 64;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = *(result + 40);
  result = der_decode_next(v4, &v29, 0, &v27, &v26);
  if (result)
  {
    result = der_vm_CEType_from_ccder_tag(*(v3 + 24), v29);
    if ((result - 3) < 0xFFFFFFFE)
    {
      v6 = *(v4 + 24);
      if (v6)
      {
        if (v4 < v5)
        {
          v6(v4, "[%s]: %s\n", "der_vm_iterate_b", "iteration over a non-iterable type");
          return &unk_1E74AC038;
        }

        goto LABEL_23;
      }

      return &unk_1E74AC038;
    }

    v9 = result;
    while (1)
    {
      if (v27 >= v28)
      {
        return &Errors;
      }

      v10 = *(v3 + 16);
      v11 = *(v3 + 32);
      v17[0] = *v3;
      v17[1] = v10;
      v17[2] = v11;
      v18 = *(v3 + 48);
      v19 = v17[0];
      v20 = v10;
      v21 = v11;
      v22 = v18;
      v23 = v9;
      v24 = 0;
      v25 = 0;
      result = der_decode_next(*v3, &v29, &v21 + 1, 0, &v27);
      if ((result & 1) == 0)
      {
        break;
      }

      v24 = der_vm_CEType_from_ccder_tag(*(&v20 + 1), v29);
      if ((v13(v12, v17) & 1) == 0)
      {
        return &Errors;
      }
    }

    v7 = *(v4 + 24);
    if (v7)
    {
      if (v4 < v5)
      {
        v8 = "encountered invalid element in an iterable";
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    return &unk_1E74AC058;
  }

  v7 = *(v4 + 24);
  if (!v7)
  {
    return &unk_1E74AC058;
  }

  if (v4 < v5)
  {
    v8 = "iterable decoding failure";
LABEL_12:
    v7(v4, "[%s]: %s\n", "der_vm_iterate_b", v8);
    return &unk_1E74AC058;
  }

LABEL_23:
  __break(0x5519u);
  return result;
}

uint64_t __der_vm_iterate_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 120) = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a2 + 80);
  v8[4] = *(a2 + 64);
  v8[5] = v3;
  v4 = *(a2 + 112);
  v8[6] = *(a2 + 96);
  v8[7] = v4;
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  return v2(v8);
}

uint64_t der_vm_integer_from_context(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v3 = *(a1 + 40);
  result = der_decode_number(v1, &v4, &v3);
  if (result)
  {
    return v4;
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_integer_from_context", "Attempting to select an integer value from a non-integer DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t der_vm_string_from_context(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = der_decode_string(v1, v4, &v3);
  if (result)
  {
    return v4[0];
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_string_from_context", "Attempting to select a string value from a non-string DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t der_vm_BOOL_from_context(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v3 = *(a1 + 40);
  result = der_decode_BOOLean(v1, &v4, &v3);
  if (result)
  {
    return v4;
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_BOOL_from_context", "Attempting to select a BOOLean value from a non-BOOLean DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t der_vm_data_from_context(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = der_decode_data(v1, v4, &v3);
  if (result)
  {
    return v4[0];
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_data_from_context", "Attempting to select a data value from a non-data DER object");
  }

  __break(0x5519u);
  return result;
}

void *CEValidate(void *result, uint64_t *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = 0;
  if (a3 <= a4)
  {
    return CEValidateWithOptions(result, &v4, a2, a3, a4);
  }

  __break(0x5519u);
  return result;
}

void *CEValidateWithOptions(void *result, _DWORD *a2, uint64_t *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = result;
  if (!a3)
  {
    goto LABEL_17;
  }

  *a3 = 0;
  if (a4 > a5)
  {
    __break(0x5519u);
    return result;
  }

  a3[1] = a4;
  a3[2] = a5;
  if (a4 && a4 < a5)
  {
    if ((a5 - a4) < 5 || (*a4 == 1836597052 ? (v10 = a4[4] == 108) : (v10 = 0), !v10))
    {
      v18[1] = a5;
      v19 = 0;
      v17[1] = a5;
      v18[0] = a4;
      v17[0] = a4;
      if (ccder_blob_decode_tl(v17, 0x6000000000000010, &v19))
      {
        v28 = 0uLL;
        if (ccder_blob_decode_range(v18, 0x6000000000000010, &v28))
        {
          v21 = 0;
          if (der_decode_number(v5, &v21, &v28))
          {
            if (v21 != 1)
            {
              v14 = *(v5 + 24);
              if (!v14)
              {
                return &unk_1E74AC058;
              }

              v15 = "[%s]: entitlements blob has unexpected version %lld\n";
              goto LABEL_28;
            }

            v26 = 0;
            v27 = 0;
            v20 = v28;
            if (ccder_blob_decode_range(&v20, 0xA000000000000010, &v26))
            {
              v25 = 0;
              v22 = v5;
              v23 = 0xA000000000000010;
              v24 = 1;
              LODWORD(v25) = *a2;
              if (recursivelyValidateEntitlements(&v22, &v28))
              {
                v11 = 2;
LABEL_23:
                *a3 = v11;
                v13 = &kCENoError;
                return *v13;
              }

              goto LABEL_33;
            }

            v14 = *(v5 + 24);
            if (v14)
            {
LABEL_27:
              v15 = "[%s]: %s\n";
LABEL_28:
              v14(v5, v15);
            }
          }
        }

        else
        {
          v14 = *(v5 + 24);
          if (v14)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v28 = 0uLL;
        v26 = a4;
        v27 = a5;
        if (ccder_blob_decode_range(&v26, 0x2000000000000011, &v28))
        {
          v24 = 0;
          v25 = 0;
          v22 = v5;
          v23 = 0x2000000000000011;
          LODWORD(v25) = *a2;
          if (recursivelyValidateEntitlements(&v22, v18))
          {
            v11 = 1;
            goto LABEL_23;
          }

LABEL_33:
          v13 = &kCEMalformedEntitlements;
          return *v13;
        }

        v14 = *(v5 + 24);
        if (v14)
        {
          goto LABEL_27;
        }
      }

      return &unk_1E74AC058;
    }

    v16 = result[3];
    if (v16)
    {
      v16(result, "[%s]: %s\n", "CEValidateWithOptions", "xml-looking blob was passed in");
    }

    return &unk_1E74AC028;
  }

  else
  {
LABEL_17:
    v12 = result[3];
    if (v12)
    {
      v12(result, "[%s]: %s\n", "CEValidateWithOptions", "invalid arguments passed in");
    }

    return &unk_1E74AC038;
  }
}

uint64_t CEAcquireUnmanagedContext(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3 || !*a2 || !a2[1] || !a2[2])
  {
    v8 = &kCEInvalidArgument;
    return *v8;
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = a2[1];
  v4 = a2[2];
  if (*a2 == 2)
  {
    if (v5 <= v4)
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = result;
      *(a3 + 24) = xmmword_1972A8130;
      *(a3 + 40) = v5;
      *(a3 + 48) = v4;
      v6 = *(a3 + 16);
      v9[0] = *a3;
      v9[1] = v6;
      v9[2] = *(a3 + 32);
      v10 = v4;
      der_vm_execute_nocopy(v9, &_CESelectValueOperation, v11);
      v7 = v11[1];
      *a3 = v11[0];
      *(a3 + 16) = v7;
      *(a3 + 32) = v11[2];
      v4 = v12;
LABEL_12:
      *(a3 + 48) = v4;
      v8 = &kCENoError;
      return *v8;
    }
  }

  else if (v5 <= v4)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = result;
    *(a3 + 24) = xmmword_1972A8120;
    *(a3 + 40) = v5;
    goto LABEL_12;
  }

  __break(0x5519u);
  return result;
}

uint64_t der_vm_execute_match_string(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a3 + 8);
  if ((*(a3 + 7) & 0x40) != 0)
  {
    v6 = *v6;
    v7 = 16;
  }

  else
  {
    v7 = 248;
  }

  v8 = *(a3 + v7);
  v15 = 0;
  v16 = 0;
  v14 = *(a2 + 40);
  result = der_decode_string(v4, &v15, &v14);
  if (result)
  {
    v10 = v16;
    result = CEBuffer_cmp(v6, v8, v15, v16);
    if (v8 | v10)
    {
      v11 = result == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v11;
    *(a1 + 33) = v12;
  }

  else
  {
    v13 = *(v4 + 24);
    if (v13)
    {
      if (v4 >= v4 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v13(v4, "[%s]: %s\n", "der_vm_execute_match_string", "string decode failure");
      }
    }
  }

  return result;
}

uint64_t der_vm_execute_match_integer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = 0;
  v9 = *(a2 + 40);
  result = der_decode_number(v5, &v10, &v9);
  if (result)
  {
    *(a1 + 33) = v10 == *(a3 + 8);
  }

  else
  {
    v8 = *(v5 + 24);
    if (v8)
    {
      if (v5 >= v5 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v8(v5, "[%s]: %s\n", "der_vm_execute_match_integer", "BOOL decode failure");
      }
    }
  }

  return result;
}

uint64_t der_vm_execute_match_string_prefix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 33) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a3 + 8);
  if ((*(a3 + 7) & 0x40) != 0)
  {
    v6 = *v6;
    v7 = 16;
  }

  else
  {
    v7 = 248;
  }

  v8 = *(a3 + v7);
  __s2 = 0;
  v14 = 0;
  v12 = *(a2 + 40);
  result = der_decode_string(v4, &__s2, &v12);
  if (result)
  {
    if (v8)
    {
      if (v8 <= v14)
      {
        result = memcmp(v6, __s2, v8);
        v10 = result == 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 33) = v10;
  }

  else
  {
    v11 = *(v4 + 24);
    if (v11)
    {
      if (v4 >= v4 + 64)
      {
        __break(0x5519u);
      }

      else
      {
        return v11(v4, "[%s]: %s\n", "der_vm_execute_match_string_prefix", "string decode failure");
      }
    }
  }

  return result;
}

unint64_t string_value_allowed_iterate(uint64_t *a1)
{
  v2 = a1[15];
  v3 = v2[1];
  v4 = (v3 + 8);
  if ((*(v3 + 7) & 0x40) != 0)
  {
    v4 = *v4;
    v5 = 16;
  }

  else
  {
    v5 = 248;
  }

  if (*(a1 + 29) != 4)
  {
    v8 = *a1;
    v9 = *(*a1 + 24);
    if (v9)
    {
      v9(v8, "[%s]: %s\n", "string_value_allowed_iterate", "Unexpected type to match against during iteration");
    }

    return 1;
  }

  v6 = *(v3 + v5);
  der_vm_execute_match_string(v17, (a1 + 7), v3);
  if (v17[33] == 1)
  {
    result = 0;
    *(*v2 + 33) = 1;
    return result;
  }

  v10 = *(a1 + 9);
  v15[0] = *(a1 + 7);
  v15[1] = v10;
  v15[2] = *(a1 + 11);
  v16 = a1[13];
  result = der_vm_string_from_context(v15);
  if (v11 < 2)
  {
    return 1;
  }

  v12 = v11 - 1;
  v13 = (result + v11 - 1);
  if (v13 >= result + v11 || v13 < result)
  {
    goto LABEL_19;
  }

  if (*v13 != 42)
  {
    return 1;
  }

  if (v12 > v11)
  {
LABEL_19:
    __break(0x5519u);
    return result;
  }

  if (v12 > v6)
  {
    return 1;
  }

  v14 = memcmp(result, v4, v12);
  result = 1;
  if (!v14)
  {
    *(*v2 + 33) = 1;
    return 0;
  }

  return result;
}

uint64_t string_prefix_allowed_iterate(uint64_t *a1)
{
  v2 = a1[15];
  v3 = v2[1];
  v4 = (v3 + 8);
  if ((*(v3 + 7) & 0x40) != 0)
  {
    v4 = *v4;
    v5 = 16;
  }

  else
  {
    v5 = 248;
  }

  if (*(a1 + 29) == 4)
  {
    v6 = *(v3 + v5);
    der_vm_execute_match_string_prefix(v15, (a1 + 7), v3);
    if (v15[33] == 1 || (v7 = *(a1 + 9), v13[0] = *(a1 + 7), v13[1] = v7, v13[2] = *(a1 + 11), v14 = a1[13], v8 = der_vm_string_from_context(v13), !v6) || v6 <= v9 && !memcmp(v4, v8, v6))
    {
      result = 0;
      *(*v2 + 33) = 1;
      return result;
    }
  }

  else
  {
    v11 = *a1;
    v12 = *(*a1 + 24);
    if (v12)
    {
      v12(v11, "[%s]: %s\n", "string_prefix_allowed_iterate", "Unexpected type to match against during iteration");
    }
  }

  return 1;
}

uint64_t integer_allowed_iterate(uint64_t *a1)
{
  if (*(a1 + 29) == 3)
  {
    v2 = a1[15];
    der_vm_execute_match_integer(v6, (a1 + 7), v2[1]);
    result = 1;
    if (v6[33] != 1)
    {
      return result;
    }

    *(*v2 + 33) = 1;
  }

  else
  {
    v4 = *a1;
    v5 = *(*a1 + 24);
    if (v5)
    {
      v5(v4, "[%s]: %s\n", "integer_allowed_iterate", "Unexpected type to match against during iteration");
    }
  }

  return 0;
}

uint64_t recursivelyValidateEntitlements(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *result + 64;
  if (*(result + 20) > 12)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      if (v2 < v3)
      {
        goto LABEL_22;
      }

LABEL_87:
      __break(0x5519u);
      return result;
    }

    return 0;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v2 >= v3)
  {
    goto LABEL_87;
  }

  v5 = result;
  if ((der_decode_next(v2, &v16, &v14, 0, a2) & 1) == 0)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
LABEL_22:
      v13 = v2;
LABEL_23:
      v4(v13, "[%s]: %s\n");
      return 0;
    }

    return 0;
  }

  if (v16 == *(v5 + 8))
  {
    v6 = *v5;
    v7 = *v5 + 64;
    v20 = 0;
    v21 = 0;
    result = ccder_blob_decode_range(&v14, v16, &v20);
    if (!result)
    {
      v4 = *(v6 + 24);
      if (!v4)
      {
        return 0;
      }

      if (v6 < v7)
      {
LABEL_36:
        v13 = v6;
        goto LABEL_23;
      }

      goto LABEL_87;
    }

    if (v20 < v21)
    {
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v18 = 0;
        v19 = 0;
        v17 = 0uLL;
        result = der_decode_key_value(v6, &v18, &v17, &v20);
        if ((result & 1) == 0)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        v10 = v18;
        v11 = v19;
        result = memchr(v18, 0, v19);
        if (result)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        if (*(v5 + 16) == 1 && v8 != 0)
        {
          result = CEBuffer_cmp(v8, v9, v10, v11);
          if ((result & 0x80000000) == 0)
          {
            break;
          }
        }

        ++*(v5 + 20);
        result = recursivelyValidateEntitlements(v5, &v17);
        --*(v5 + 20);
        if ((result & 1) == 0)
        {
          v4 = *(v6 + 24);
          if (!v4)
          {
            return 0;
          }

          if (v6 >= v7)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }

        v8 = v18;
        v9 = v19;
        if (v20 >= v21)
        {
          goto LABEL_62;
        }
      }

      v4 = *(v6 + 24);
      if (!v4)
      {
        return 0;
      }

      if (v6 < v7)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }

LABEL_62:
    if (v14 == v15)
    {
      return 1;
    }

    v4 = *(v2 + 24);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v16 > 17)
  {
    if (v16 <= 0x200000000000000FLL)
    {
      if (v16 == 18)
      {
        if (*(v5 + 25) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((der_decode_numeric_string(v2, &v20, &v14) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v16 == 23)
      {
        if (*(v5 + 26) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((der_decode_utc_time(v2, &v20, &v14) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v16 == 0x2000000000000010)
      {
        if ((der_validate_array(v5, &v14) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }

      if (v16 == 0x2000000000000011 || v16 == 0x6000000000000010)
      {
        if (*(v5 + 27) != 1)
        {
          v4 = *(v2 + 24);
          if (!v4)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if ((der_decode_entitlements(v2, &v20, &v14) & 1) == 0)
        {
          return 0;
        }

        goto LABEL_62;
      }
    }

LABEL_68:
    v4 = *(v2 + 24);
    if (!v4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (v16 <= 3)
  {
    if (v16 == 1)
    {
      if ((der_decode_BOOLean(v2, 0, &v14) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    if (v16 == 2)
    {
      if ((der_decode_number(v2, 0, &v14) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    goto LABEL_68;
  }

  if (v16 == 4)
  {
    if (*(v5 + 24) != 1)
    {
      v4 = *(v2 + 24);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_22;
    }

    if ((der_decode_data(v2, &v20, &v14) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_62;
  }

  if (v16 != 12)
  {
    goto LABEL_68;
  }

  v20 = 0;
  v21 = 0;
  result = der_decode_string(v2, &v20, &v14);
  if (result)
  {
    if (memchr(v20, 0, v21))
    {
      v4 = *(v2 + 24);
      if (!v4)
      {
        return 0;
      }

      goto LABEL_22;
    }

    goto LABEL_62;
  }

  return result;
}

uint64_t der_validate_array(uint64_t a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v8 = 0;
  v9 = 0;
  result = ccder_blob_decode_sequence_tl(a2, &v8);
  if (result)
  {
    do
    {
      if (v8 >= v9)
      {
        return 1;
      }

      ++*(a1 + 20);
      result = recursivelyValidateEntitlements(a1, &v8);
      --*(a1 + 20);
    }

    while ((result & 1) != 0);
    v6 = *(v3 + 24);
    if (!v6)
    {
      return 0;
    }

    if (v3 < v4)
    {
      v7 = "encountered invalid element in an array";
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v6 = *(v3 + 24);
  if (!v6)
  {
    return 0;
  }

  if (v3 < v4)
  {
    v7 = "array decoding failure";
LABEL_10:
    v6(v3, "[%s]: %s\n", "der_validate_array", v7);
    return 0;
  }

LABEL_14:
  __break(0x5519u);
  return result;
}

uint64_t der_decode_next(uint64_t a1, void *a2, unsigned __int8 **a3, unsigned __int8 **a4, uint64_t a5)
{
  v11 = *a5;
  v10 = *(a5 + 8);
  v18 = 0;
  v19 = 0;
  if ((ccder_blob_decode_tag(a5, &v19) & 1) == 0)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = "could not decode tag for next DER sub-sequence";
      goto LABEL_10;
    }

    return 0;
  }

  if ((ccder_blob_decode_len(a5, &v18) & 1) == 0)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = "could not decode size for next DER sub-sequence";
      goto LABEL_10;
    }

    return 0;
  }

  v12 = *a5;
  v13 = v18;
  if (*(a5 + 8) - *a5 < v18)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = "sub-sequence size is larger than sequence size";
LABEL_10:
      v14(a1, "[%s]: %s\n", "der_decode_next", v15);
      return 0;
    }

    return 0;
  }

  if (a2)
  {
    *a2 = v19;
  }

  v17 = &v12[v13];
  if (a3)
  {
    *a3 = v11;
    a3[1] = v17;
  }

  if (a4)
  {
    *a4 = v12;
    a4[1] = v17;
  }

  *a5 = v17;
  *(a5 + 8) = v10;
  return 1;
}

uint64_t der_decode_number(uint64_t a1, uint64_t *a2, unsigned __int8 **a3)
{
  v10 = 0;
  v11 = 0;
  result = ccder_blob_decode_range(a3, 2, &v10);
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = "unknown number encoding";
      goto LABEL_7;
    }

    return 0;
  }

  if ((v11 - v10) >= 9)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = "number too large";
LABEL_7:
      v6(a1, "[%s]: %s\n", "der_decode_number", v7);
      return 0;
    }

    return 0;
  }

  if (v10 >= v11)
  {
    v9 = 0;
    if (!a2)
    {
      return 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (!v8 && *v10 < 0)
      {
        v9 = -1;
      }

      if (&v10[v8] < v10)
      {
        __break(0x5519u);
        return result;
      }

      v9 = v10[v8++] | (v9 << 8);
    }

    while (&v10[v8] != v11);
    if (!a2)
    {
      return 1;
    }
  }

  *a2 = v9;
  return 1;
}

uint64_t der_decode_BOOLean(uint64_t a1, BOOL *a2, unsigned __int8 **a3)
{
  v8 = 0;
  v9 = 0;
  result = ccder_blob_decode_range(a3, 1, &v8);
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = "Unknown BOOLean encoding";
LABEL_11:
      v6(a1, "[%s]: %s\n", "der_decode_BOOLean", v7);
    }

    return 0;
  }

  if (v9 - v8 != 1)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = "BOOLean should be exactly 1 byte";
      goto LABEL_11;
    }

    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  if (v8 < v9)
  {
    *a2 = *v8 != 0;
    return 1;
  }

  __break(0x5519u);
  return result;
}

uint64_t der_decode_string(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v9 = 0;
  v10 = 0;
  v5 = ccder_blob_decode_range(a3, 12, &v9);
  if (v5)
  {
    if (a2)
    {
      v6 = v10 - v9;
      *a2 = v9;
      a2[1] = v6;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v7(a1, "[%s]: %s\n", "der_decode_string", "Unknown string encoding");
    }
  }

  return v5;
}

uint64_t der_decode_data(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v9 = 0;
  v10 = 0;
  v5 = ccder_blob_decode_range(a3, 4, &v9);
  if (v5)
  {
    if (a2)
    {
      v6 = v10 - v9;
      *a2 = v9;
      a2[1] = v6;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v7(a1, "[%s]: %s\n", "der_decode_data", "Unknown data encoding");
    }
  }

  return v5;
}

uint64_t der_decode_numeric_string(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v9 = 0;
  v10 = 0;
  v5 = ccder_blob_decode_range(a3, 18, &v9);
  if (v5)
  {
    if (a2)
    {
      v6 = v10 - v9;
      *a2 = v9;
      a2[1] = v6;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v7(a1, "[%s]: %s\n", "der_decode_numeric_string", "Unknown numeric string encoding");
    }
  }

  return v5;
}

uint64_t der_decode_utc_time(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v9 = 0;
  v10 = 0;
  v5 = ccder_blob_decode_range(a3, 23, &v9);
  if (v5)
  {
    if (a2)
    {
      v6 = v10 - v9;
      *a2 = v9;
      a2[1] = v6;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (v7)
    {
      v7(a1, "[%s]: %s\n", "der_decode_utc_time", "Unknown UTC Time encoding");
    }
  }

  return v5;
}

uint64_t der_decode_entitlements(uint64_t a1, void *a2, unsigned __int8 **a3)
{
  v9 = 0;
  v10 = 0;
  if (ccder_blob_decode_range(a3, 0x6000000000000010, &v9) & 1) != 0 || (ccder_blob_decode_range(a3, 0x2000000000000011, &v9))
  {
    if (a2)
    {
      v6 = v10 - v9;
      *a2 = v9;
      a2[1] = v6;
    }

    return 1;
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v8(a1, "[%s]: %s\n", "der_decode_entitlements", "Unknown DER entitlements encoding");
    }

    return 0;
  }
}

uint64_t CEBuffer_cmp(void *__s1, size_t a2, void *__s2, size_t a4)
{
  result = 0xFFFFFFFFLL;
  if (__s1 && a2)
  {
    if (__s2)
    {
      if (a2 >= a4)
      {
        v8 = a4;
      }

      else
      {
        v8 = a2;
      }

      if (a2 < a4)
      {
        v9 = -1;
      }

      else
      {
        v9 = 1;
      }

      LODWORD(result) = memcmp(__s1, __s2, v8);
      if (a2 != a4 && result == 0)
      {
        return v9;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t der_decode_key_value(uint64_t a1, void *a2, _OWORD *a3, unsigned __int8 **a4)
{
  v14 = 0uLL;
  v11 = 0;
  v12 = 0;
  if (ccder_blob_decode_sequence_tl(a4, &v14))
  {
    if (der_decode_string(a1, a2, &v14) && a2[1])
    {
      v13 = v14;
      if ((ccder_blob_decode_tag(&v13, &v12) & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value tag for key-value pair";
        goto LABEL_13;
      }

      if ((ccder_blob_decode_len(&v13, &v11) & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value size for key-value pair";
        goto LABEL_13;
      }

      if ((v13 + v11) == *a4)
      {
        *a3 = v14;
        return 1;
      }

      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = "key-value pair contains extra elements";
LABEL_13:
        v8(a1, "[%s]: %s\n", "der_decode_key_value", v9);
      }
    }

    else
    {
      v8 = *(a1 + 24);
      if (v8)
      {
        v9 = "dictionary key is not a valid string";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = "key / value decoding failure";
      goto LABEL_13;
    }
  }

  return 0;
}

char *der_size_element(uint64_t *a1, char **a2, uint64_t *a3)
{
  if (!a1)
  {
    return &unk_1E74AC038;
  }

  v5 = *a1;
  if (*a1 <= 4)
  {
    switch(v5)
    {
      case 1:
        a1[2] = 1;
        v14 = 1;
        v13 = 1;
        break;
      case 2:
        v13 = a1[2];
        v14 = 12;
        break;
      case 4:
        v6 = a1[1];
        v7 = HIBYTE(v6);
        if (HIBYTE(v6) - 255 > 0xFFFFFF01)
        {
          v19 = 8;
        }

        else
        {
          v8 = 9;
          v9 = 48;
          v10 = 1;
          while ((v8 - 2) >= 2)
          {
            v11 = v6 >> v9;
            --v8;
            v9 -= 8;
            if (v7 != v11)
            {
              v10 = v8 - 1;
              goto LABEL_35;
            }
          }

          v8 = 2;
LABEL_35:
          if ((((v6 >> (8 * v10 - 8)) ^ v7) & 0x80) != 0)
          {
            v19 = v8;
          }

          else
          {
            v19 = v10;
          }
        }

        *a3 = ccder_sizeof(2, v19);
        a1[2] = v19;
        return &Errors;
      default:
        return &unk_1E74AC038;
    }

LABEL_28:
    *a3 = ccder_sizeof(v14, v13);
    return &Errors;
  }

  switch(v5)
  {
    case 5:
      while (1)
      {
        result = *a2;
        v16 = a2[1];
        if (*a2 >= v16)
        {
          return &unk_1E74AC058;
        }

        v17 = result + 32;
        if ((result + 32) > v16 || result >= v17)
        {
          break;
        }

        *a2 = v17;
        if (!result)
        {
          return &unk_1E74AC058;
        }

        if (*result == 6)
        {
          *a3 = ccder_sizeof(0x2000000000000010, 0);
          a1[2] = 0;
          return &Errors;
        }

        if (result >= v17)
        {
          break;
        }

        result = der_size_element();
        if (result != &Errors)
        {
          return result;
        }
      }

      __break(0x5519u);
      break;
    case 7:

      return der_size_dictionary();
    case 9:
      v13 = a1[2];
      v14 = 4;
      goto LABEL_28;
    default:
      return &unk_1E74AC038;
  }

  return result;
}

uint64_t der_size_dictionary(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = *a2;
  v8 = *(a2 + 8);
  while (1)
  {
    if (v7 >= v8)
    {
      return &unk_1E74AC058;
    }

    v9 = v7 + 32;
    if ((v7 + 32) > v8 || v7 > v9)
    {
      break;
    }

    *a2 = v9;
    if (!v7)
    {
      return &unk_1E74AC058;
    }

    if (*v7 != 5)
    {
      if (*v7 == 8)
      {
        *a3 = ccder_sizeof(0xA000000000000010, v6);
        *(v5 + 16) = v6;
        return &Errors;
      }

      return &unk_1E74AC058;
    }

    v7[24] = 1;
    if (v9 >= v8)
    {
      return &unk_1E74AC058;
    }

    v10 = v7 + 64;
    if ((v7 + 64) > v8 || v9 > v10)
    {
      break;
    }

    *a2 = v10;
    if (v7 == -32)
    {
      return &unk_1E74AC058;
    }

    if (*v9 != 3)
    {
      return &unk_1E74AC058;
    }

    v11 = *(v7 + 6);
    if (!v11)
    {
      return &unk_1E74AC058;
    }

    v12 = ccder_sizeof(12, v11);
    result = 0;
    v17 = 0;
    if (v10 < v8)
    {
      v13 = v7 + 96;
      if ((v7 + 96) > v8 || v10 > v13)
      {
        break;
      }

      *a2 = v13;
      result = (v7 + 64);
    }

    result = der_size_element(result, a2, &v17);
    if (result != &Errors)
    {
      return result;
    }

    v14 = *a2;
    v8 = *(a2 + 8);
    if (*a2 >= v8)
    {
      return &unk_1E74AC058;
    }

    v15 = v14 + 32;
    if ((v14 + 32) > v8 || v14 > v15)
    {
      break;
    }

    *a2 = v15;
    if (!v14 || *v14 != 6)
    {
      return &unk_1E74AC058;
    }

    v14[24] = 1;
    v16 = v17 + v12;
    *(v7 + 2) = v17 + v12;
    result = ccder_sizeof(0x2000000000000010, v16);
    v6 += result;
    v7 = v15;
  }

  __break(0x5519u);
  return result;
}

uint64_t der_encode_number(uint64_t *a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIBYTE(a2);
  if (HIBYTE(a2) - 255 > 0xFFFFFF01)
  {
    v8 = 8;
  }

  else
  {
    v4 = 9;
    v5 = 48;
    v6 = 1;
    while ((v4 - 2) >= 2)
    {
      v7 = a2 >> v5;
      --v4;
      v5 -= 8;
      if (v3 != v7)
      {
        v6 = v4 - 1;
        goto LABEL_8;
      }
    }

    v4 = 2;
LABEL_8:
    if ((((a2 >> (8 * v6 - 8)) ^ v3) & 0x80) != 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }
  }

  v14 = 0;
  v15 = 0;
  result = ccder_blob_reserve_tl(a1, 2uLL, v8, &v14);
  if (result)
  {
    v10 = v14;
    v11 = v15;
    if (v15 != v14)
    {
      v12 = v15 - 1;
      while (v12 < v11 && v12 >= v10)
      {
        *v12 = v2;
        v2 >>= 8;
        if (v12-- == v14)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

void _xpc_mach_message_request_handoff_reply_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_remote_message_request_get_reply_msg_id_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_received_message_set_connection_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_graph_unpack_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_unpack_impl_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_deserializer_init_clone_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_deserializer_set_ool_callback_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_deserializer_set_key_string_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_deserializer_set_value_string_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_graph_deserializer_restore_depth_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_mach_payload_ool_port_count_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_mach_payload_extract_ool_port_cold_1(unsigned int a1)
{
  qword_1EAF1E800 = "Data corruption: Invalid disposition in payload.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_payload_create_from_mach_msg_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_get_extension_vtable_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_rich_error_serialize_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void launch_job_query_get_additional_job_properties_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_strict_close_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_interface_routine_cold_1(int a1)
{
  _xpc_asprintf("bootstrap port must lead to PID 1 [actual pid = %d]", a1);
  _os_crash();
  __break(1u);
}

void _xpc_alloc_typed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_1();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_look_up_endpoint_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _launchd_service_instance_create_request_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void launch_cryptex_terminate_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_deserialize_from_wire_id_cold_1(unsigned int a1)
{
  qword_1EAF1E800 = "Data corruption: Attempted to deserialize an unknown type of object (the caller should have skipped it with _xpc_wire_length_from_wire_id";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_base_desc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_make_serialization_with_ool_impl_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_array_get_data_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_binprefs_cpu_type_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void xpc_binprefs_set_psattr_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __xpc_event_publisher_set_handler_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_event_publisher_dispose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_event_publisher_activate_cold_1(const char *a1)
{
  os_unfair_lock_unlock(&_event_publishers_lock);
  _xpc_asprintf("event stream %s is already monitored", a1);
  _os_crash();
  __break(1u);
}

void _xpc_event_publisher_set_subscriptions_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_event_publisher_set_subscriptions_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_event_publisher_set_subscriptions_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_event_publisher_set_subscriptions_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_event_publisher_set_throttling_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_event_publisher_cancel_complete_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_token_cache_get_at_index_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_event_publisher_fire_impl_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_event_publisher_fire_impl_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_event_publisher_check_and_update_inflight_count_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_dispose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_cancel_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_enqueue_cold_1(uint64_t a1)
{
  qword_1EAF1E800 = "libdispatch bug: Unexpected send result.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_handle_async_reply_cold_1(uint64_t a1)
{
  qword_1EAF1E800 = "libdispatch bug: Unexpected async reply reason.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_release_message_cold_2(unsigned int a1)
{
  qword_1EAF1E800 = "Kernel bug: MACH_SEND_NO_BUFFER returned for reliable message size.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_release_message_cold_3(unsigned int a1)
{
  qword_1EAF1E800 = "Kernel bug: The kernel cannot allocate memory needed for the pseudo-receive.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_release_message_cold_4(int a1)
{
  v1 = a1;
  _os_assumes_log();
  qword_1EAF1E800 = "Data corruption: Malformed Mach message or kernel bug.";
  qword_1EAF1E830 = v1;
  __break(1u);
}

void _xpc_connection_handle_disconnect_event_cold_1(unsigned int *a1, uint64_t a2)
{
  _os_assumes_log();
  v4 = *a1 | (a2 << 32);
  qword_1EAF1E800 = "libdispatch bug: Disconnect with invalid receive port";
  qword_1EAF1E830 = v4;
  __break(1u);
}

void _xpc_connection_unpack_message_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_connection_pass2mig_block_invoke_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_connection_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

uint64_t _xpc_connection_init_cold_4(uint64_t a1, mach_port_name_t *a2)
{
  _os_assumes_log();
  result = _xpc_mach_port_release(*a2);
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

void _xpc_connection_init_send_port_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_init_send_port_cold_3(int a1)
{
  qword_1EAF1E800 = "Kernel bug: Unexpected error from connection mach_port_construct()";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_mach_event_cold_4(unsigned int a1)
{
  qword_1EAF1E800 = "libdispatch bug: _sendp is still valid";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_mach_event_cold_5(unsigned int a1)
{
  qword_1EAF1E800 = "libdispatch bug: _recvp is still valid";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_connection_mach_event_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_handle_sent_event_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_connection_handle_sent_event_cold_3(int a1)
{
  qword_1EAF1E800 = "libdispatch bug: Non-check-in message without context.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void xpc_data_create_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_data_map_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void xpc_install_remote_hooks_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_install_remote_hooks_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_install_remote_hooks_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_install_remote_hooks_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_install_remote_hooks_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_install_remote_hooks_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_get_service_instance_cold_1(void *a1, int a2)
{
  bzero(a1, 0xA0uLL);
  v4 = strerror(a2);
  snprintf(a1, 0xA0uLL, "%s: %d: %s", "_xpc_get_service_instance failed", a2, v4);
  qword_1EAF1E800 = a1;
  __break(1u);
}

void _xpc_deallocate_buffer_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_dictionary_create_from_received_message_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_dictionary_set_remote_connection_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_dictionary_set_remote_connection_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_dictionary_set_remote_connection_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_dictionary_set_reply_msg_id_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _libxpc_initializer_cold_1(int a1)
{
  qword_1EAF1E800 = "Kernel bug: Could not obtain task bootstrap port.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

uint64_t _libxpc_initializer_cold_2()
{
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  result = _os_log_simple();
  qword_1EAF1E800 = "Bug in libxpc: Could not get bootstrap port.";
  __break(1u);
  return result;
}

void _libxpc_initializer_cold_3(int a1)
{
  qword_1EAF1E800 = "Kernel bug: mach_ports_lookup() failed.";
  qword_1EAF1E830 = a1;
  __break(1u);
}

char *_fetch_xpcservice_info_cold_1(int a1)
{
  _os_assumes_log();
  result = xpc_strerror(a1);
  _rdar_128295526_error = result;
  return result;
}

void _xpc_copy_own_bundle_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_init_pid_domain_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_copy_xpcservice_dictionary_cold_1()
{
  fwrite("An XPC Service cannot be run directly.\n", 0x27uLL, 1uLL, *MEMORY[0x1E69E9848]);
  v0 = abort_with_reason();
  _xpc_copy_xpcservice_dictionary_cold_2(v0);
}

void _xpc_copy_xpcservice_dictionary_cold_2()
{
  snprintf(__str, 0xA0uLL, "Couldn't retrieve XPCService dictionary from service bundle. Cause: %s", _rdar_128295526_error);
  qword_1EAF1E800 = __str;
  __break(1u);
}

void _xpc_serializer_pack_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_serializer_pack_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  syslog(3, "Out-of-line descriptor count is out-of-sync. Actual/expected: %lu/%lu", a1, a2);
  v4 = xpc_copy_description(a3);
  syslog(3, "Message:\n%s", v4);
  qword_1EAF1E800 = "Data corruption: Out-of-line descriptor count is out-of-sync.";
  __break(1u);
}

void _xpc_serializer_reap_combined_send_receive_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_serializer_reap_combined_send_receive_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_serializer_reap_combined_send_receive_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_serializer_destroy_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___create_with_format_and_arguments_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___create_with_format_and_arguments_block_invoke_10_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___create_with_format_and_arguments_block_invoke_10_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___create_with_format_and_arguments_block_invoke_2_40_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_session_dispose_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_session_create_with_connection_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_session_message_error_during_cancelation_cold_1(unsigned int a1)
{
  qword_1EAF1E800 = "Bug in libxpc: invalid state passed to _xpc_session_message_error_during_cancelation()";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void __xpc_session_send_message_with_reply_async_block_invoke_2_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_endpoint_create_bs_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_endpoint_create_bs_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_endpoint_get_bs_job_handle_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_endpoint_get_bs_job_handle_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_listener_dispose_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_listener_create_with_connection_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_listener_activate_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_mach_port_construct_cold_1(int a1)
{
  qword_1EAF1E800 = "Bug in libxpc: mach_port_construct() failed";
  qword_1EAF1E830 = a1;
  __break(1u);
}

void _xpc_mach_port_get_context_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _transaction_snapshot_new_locked_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void xpc_track_activity_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_bundle_copy_container_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void string_builder_new_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void string_builder_appendf_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void string_builder_appendf_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void string_builder_appendf_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_spawnattr_binprefs_pack_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_pipe_routine_cold_1(int a1)
{
  _xpc_asprintf("reply must be from PID 1 [actual pid = %d]", a1);
  _os_crash();
  __break(1u);
}

void _xpc_pipe_pack_message_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_mmap_anon_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void xpc_bundle_resolve_sync_cold_1(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  *a2 = 0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v4 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _xpc_token_satisfies_lwcr_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_token_satisfies_lwcr_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_file_transfer_serialize_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_serialize_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_serialize_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_serialize_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_deserialize_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_file_transfer_dispose_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_create_with_fd_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  v2 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_write_to_fd_impl_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_write_to_path_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_set_transport_writing_callbacks_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_set_transport_writing_callbacks_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_write_finished_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_write_finished_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void xpc_file_transfer_write_finished_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_create_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_create_io_for_fd_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_file_transfer_create_io_for_fd_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  v2 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_file_transfer_create_io_for_fd_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  v2 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _launch_service_stats_copy_impl_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void xpc_service_set_attach_handler_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _xpc_activity_dispose_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void _xpc_activity_set_criteria_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_activity_dispatch_block_invoke_115_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_activity_dispatch_block_invoke_115_cold_3(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void ___xpc_activity_dispatch_block_invoke_115_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  __break(1u);
}

void ___xpc_activity_dispatch_block_invoke_115_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_3();
  __break(1u);
  OSAtomicDequeue(v2, v3);
}