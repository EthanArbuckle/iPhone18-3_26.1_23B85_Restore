void *CEValidate(void *result, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = 0;
  if (a3 <= a4)
  {
    return CEValidateWithOptions(result, &v4, a2, a3, a4);
  }

  __break(0x5519u);
  return result;
}

void *CEValidateWithOptions(void *result, _DWORD *a2, uint64_t *a3, unint64_t a4, unint64_t a5)
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
    if (a5 - a4 < 5 || (*a4 == 1836597052 ? (v10 = *(a4 + 4) == 108) : (v10 = 0), !v10))
    {
      v17[1] = a5;
      v17[2] = 0;
      v17[0] = a4;
      if (ccder_blob_decode_tl())
      {
        v26 = 0uLL;
        if (ccder_blob_decode_range())
        {
          v19 = 0;
          if (der_decode_number(v5, &v19))
          {
            if (v19 != 1)
            {
              v14 = *(v5 + 24);
              if (!v14)
              {
                return &unk_29EE6D910;
              }

              v15 = "[%s]: entitlements blob has unexpected version %lld\n";
              goto LABEL_28;
            }

            v24 = 0;
            v25 = 0;
            v18 = v26;
            if (ccder_blob_decode_range())
            {
              v23 = 0;
              v20 = v5;
              v21 = 0xA000000000000010;
              v22 = 1;
              LODWORD(v23) = *a2;
              if (recursivelyValidateEntitlements(&v20, &v26))
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
        v26 = 0uLL;
        v24 = a4;
        v25 = a5;
        if (ccder_blob_decode_range())
        {
          v22 = 0;
          v23 = 0;
          v20 = v5;
          v21 = 0x2000000000000011;
          LODWORD(v23) = *a2;
          if (recursivelyValidateEntitlements(&v20, v17))
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

      return &unk_29EE6D910;
    }

    v16 = result[3];
    if (v16)
    {
      v16(result, "[%s]: %s\n", "CEValidateWithOptions", "xml-looking blob was passed in");
    }

    return &unk_29EE6D8E0;
  }

  else
  {
LABEL_17:
    v12 = result[3];
    if (v12)
    {
      v12(result, "[%s]: %s\n", "CEValidateWithOptions", "invalid arguments passed in");
    }

    return &unk_29EE6D8F0;
  }
}

uint64_t recursivelyValidateEntitlements(uint64_t result, uint64_t *a2)
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
    result = ccder_blob_decode_range();
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

        if ((der_decode_numeric_string(v2, &v20) & 1) == 0)
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

        if ((der_decode_utc_time(v2, &v20) & 1) == 0)
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
        if ((der_validate_array(v5) & 1) == 0)
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

        if ((der_decode_entitlements(v2, &v20) & 1) == 0)
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
      if ((der_decode_BOOLean(v2) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    if (v16 == 2)
    {
      if ((der_decode_number(v2, 0) & 1) == 0)
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

    if ((der_decode_data(v2, &v20) & 1) == 0)
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
  result = der_decode_string(v2, &v20);
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

uint64_t der_decode_number(uint64_t a1, void *a2)
{
  if (ccder_blob_decode_range())
  {
    if (a2)
    {
      *a2 = 0;
    }

    return 1;
  }

  else
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v4(a1, "[%s]: %s\n", "der_decode_number", "unknown number encoding");
    }

    return 0;
  }
}

uint64_t der_decode_next(uint64_t a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v11 = *a5;
  v10 = a5[1];
  if ((ccder_blob_decode_tag() & 1) == 0)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = "could not decode tag for next DER sub-sequence";
LABEL_8:
      v13(a1, "[%s]: %s\n", "der_decode_next", v14);
    }

    return 0;
  }

  if ((ccder_blob_decode_len() & 1) == 0)
  {
    v13 = *(a1 + 24);
    if (v13)
    {
      v14 = "could not decode size for next DER sub-sequence";
      goto LABEL_8;
    }

    return 0;
  }

  v12 = *a5;
  a5[1];
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    a3[1] = v12;
  }

  if (a4)
  {
    *a4 = v12;
    a4[1] = v12;
  }

  *a5 = v12;
  a5[1] = v10;
  return 1;
}

uint64_t der_decode_key_value(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  if (ccder_blob_decode_sequence_tl())
  {
    if (der_decode_string(a1, a2) && a2[1])
    {
      if ((ccder_blob_decode_tag() & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value tag for key-value pair";
        goto LABEL_13;
      }

      if ((ccder_blob_decode_len() & 1) == 0)
      {
        v8 = *(a1 + 24);
        if (!v8)
        {
          return 0;
        }

        v9 = "unable to decode value size for key-value pair";
        goto LABEL_13;
      }

      if (!*a4)
      {
        *a3 = 0uLL;
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

uint64_t der_decode_string(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_string", "Unknown string encoding");
    }
  }

  return v4;
}

unint64_t der_vm_execute_nocopy@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v101 = *MEMORY[0x29EDCA608];
  if ((*(result + 33) & 1) == 0)
  {
    goto LABEL_43;
  }

  v6 = *result;
  v7 = *result + 64;
  v8 = *a2;
  v9 = *a2 & 0xBFFFFFFFFFFFFFFFLL;
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 != 2)
          {
            goto LABEL_197;
          }

          if (result + 56 >= result)
          {
            v10 = *(result + 32);
            *(a3 + 16) = *(result + 16);
            *(a3 + 32) = v10;
            *a3 = *result;
            *(a3 + 48) = *(result + 48);
            *(a3 + 33) = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            v11 = *(a2 + 8);
            v97 = 0uLL;
            *v94 = *(result + 40);
            result = der_decode_next(v6, 0, 0, &v97, v94);
            if (result)
            {
              v12 = v97 < *(&v97 + 1);
              if (v97 >= *(&v97 + 1) || v11 < 1)
              {
                v13 = v11;
LABEL_159:
                if (!v12 || v13 != 0)
                {
                  goto LABEL_45;
                }

                if (v6 < v7)
                {
                  result = der_decode_next(v6, 0, (a3 + 40), 0, &v97);
                  *(a3 + 33) = result;
                  goto LABEL_45;
                }
              }

              else
              {
                while (1)
                {
                  result = der_decode_next(v6, 0, 0, 0, &v97);
                  if ((result & 1) == 0)
                  {
                    break;
                  }

                  v13 = v11 - 1;
                  v12 = v97 < *(&v97 + 1);
                  if (v97 >= *(&v97 + 1) || v11-- <= 1)
                  {
                    goto LABEL_159;
                  }
                }

                v51 = *(v6 + 24);
                if (!v51)
                {
                  goto LABEL_45;
                }

                if (v6 < v7)
                {
                  v52 = "encountered invalid element in an array";
                  goto LABEL_177;
                }
              }
            }

            else
            {
              v51 = *(v6 + 24);
              if (!v51)
              {
                goto LABEL_45;
              }

              if (v6 < v7)
              {
                v52 = "array decoding failure";
LABEL_177:
                v65 = "der_vm_execute_select_index";
                goto LABEL_182;
              }
            }
          }

          goto LABEL_196;
        }

        if (result + 56 < result)
        {
          goto LABEL_196;
        }

        v35 = *(result + 16);
        v97 = *result;
        v98 = v35;
        LOBYTE(v99) = *(result + 32);
        *v94 = *(result + 34);
        *&v94[14] = *(result + 48);
        v36 = (a2 + 8);
        *(&v97 + 1) = 0;
        *&v98 = 0;
        if ((v8 & 0x4000000000000000) != 0)
        {
          v36 = *v36;
          v37 = 16;
        }

        else
        {
          v37 = 248;
        }

        *v87 = *(a2 + v37);
        v53 = *(result + 16);
        if (v53)
        {
          v54 = v36;
          v55 = 0;
          v7 = *(result + 40);
          *(a3 + 48) = *(result + 48);
          v56 = *(result + 32);
          *(a3 + 16) = *(result + 16);
          *(a3 + 32) = v56;
          *a3 = *result;
          *(a3 + 33) = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          v57 = v53 - 1;
          v58 = *(result + 8);
          while (1)
          {
            v59 = (v55 + v57) >> 1;
            v60 = *(v58 + 8 * v59);
            v6 = HIDWORD(v60);
            result = CEBuffer_cmp(v54, *v87, (v7 + v60), HIDWORD(v60));
            if (!result)
            {
              break;
            }

            if ((result & 0x80000000) != 0)
            {
              if (v55 + v57 < 2)
              {
                goto LABEL_45;
              }

              v57 = v59 - 1;
            }

            else
            {
              v55 = v59 + 1;
            }

            if (v55 > v57)
            {
              goto LABEL_45;
            }
          }

          *(a3 + 33) = 1;
          v71 = *(a3 + 40);
          v72 = v71 + (HIDWORD(v60) + v60);
          if (v72 <= *(a3 + 48) && v71 <= v72)
          {
            *(a3 + 40) = v72;
            goto LABEL_45;
          }

          goto LABEL_196;
        }

        __s1 = 0;
        v93 = 0;
        v91 = *(result + 40);
        result = der_decode_next(v6, 0, 0, &__s1, &v91);
        if (result)
        {
          if (*v87)
          {
            while (1)
            {
              if (__s1 >= v93)
              {
                goto LABEL_187;
              }

              v89 = 0;
              v90 = 0;
              v88 = 0uLL;
              if (v6 >= v7)
              {
                goto LABEL_196;
              }

              result = der_decode_key_value(v6, &v89, &v88, &__s1);
              if ((result & 1) == 0)
              {
                break;
              }

              result = CEBuffer_cmp(v36, *v87, v89, v90);
              if (!result)
              {
                *&v94[6] = v88;
                LOBYTE(v66) = 1;
LABEL_193:
                v84 = v98;
                *a3 = v97;
                *(a3 + 16) = v84;
                *(a3 + 32) = v99;
                *(a3 + 33) = v66;
                goto LABEL_188;
              }
            }

            v66 = *(v6 + 24);
            if (v66)
            {
              result = v66(v6, "[%s]: %s\n", "der_vm_execute_select_key", "invalid dictionary element");
              LOBYTE(v66) = 0;
            }

            goto LABEL_193;
          }

          v80 = *(v6 + 24);
          if (!v80)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v81 = "key length is invalid";
        }

        else
        {
          v80 = *(v6 + 24);
          if (!v80)
          {
            goto LABEL_187;
          }

          if (v6 >= v7)
          {
            goto LABEL_196;
          }

          v81 = "dictionary decoding failure";
        }

        result = v80(v6, "[%s]: %s\n", "der_vm_execute_select_key", v81);
LABEL_187:
        v82 = v98;
        *a3 = v97;
        *(a3 + 16) = v82;
        *(a3 + 32) = v99;
        *(a3 + 33) = 0;
LABEL_188:
        *(a3 + 34) = *v94;
        v26 = *&v94[14];
        goto LABEL_44;
      }

      v24 = *(v6 + 24);
      if (v24)
      {
        if (v6 >= v7)
        {
          goto LABEL_196;
        }

        result = v24(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "noop");
      }

LABEL_43:
      v25 = *(v3 + 16);
      *a3 = *v3;
      *(a3 + 16) = v25;
      *(a3 + 32) = *(v3 + 32);
      v26 = *(v3 + 48);
LABEL_44:
      *(a3 + 48) = v26;
      goto LABEL_45;
    }

    if (v9 == 3)
    {
      if (result + 56 >= result)
      {
        v31 = *MEMORY[0x29EDCA608];

        return der_vm_execute_match_string(a3, result, a2);
      }

      goto LABEL_196;
    }

    if (v9 == 4)
    {
      if (result + 56 >= result)
      {
        v39 = *MEMORY[0x29EDCA608];

        return der_vm_execute_match_string_prefix(a3, result, a2);
      }

      goto LABEL_196;
    }

    if (result + 56 >= result)
    {
      v18 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v18;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v94[0] = 0;
      v97 = *(result + 40);
      result = der_decode_BOOLean(v6);
      if ((result & 1) == 0)
      {
        v51 = *(v6 + 24);
        if (!v51)
        {
          goto LABEL_45;
        }

        if (v6 < v7)
        {
          v52 = "BOOL decode failure";
          v65 = "der_vm_execute_match_BOOL";
          goto LABEL_182;
        }

        goto LABEL_196;
      }

      v19 = *(a2 + 8) == v94[0];
      goto LABEL_36;
    }

    do
    {
LABEL_196:
      __break(0x5519u);
LABEL_197:
      ;
    }

    while (v6 >= v7);
    v85 = (*(v6 + 32))(v6, "[%s]: %s\n", "der_vm_execute_nocopy", "unhandled opcode");
    return der_vm_iterate_b(v85, v86);
  }

  if (v9 <= 8)
  {
    if (v9 == 6)
    {
      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v28 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v28;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      v29 = (a2 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v29 = *v29;
        v30 = 16;
      }

      else
      {
        v30 = 248;
      }

      v44 = *(a2 + v30);
      v45 = *(result + 16);
      v97 = *result;
      v98 = v45;
      v99 = *(result + 32);
      v100 = *(result + 48);
      result = der_vm_CEType_from_context(&v97, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v51 = *(v6 + 24);
          if (!v51)
          {
            goto LABEL_45;
          }

          if (v6 < v7)
          {
            v52 = "Unexpected type to match against";
            v65 = "der_vm_execute_string_value_allowed";
            goto LABEL_182;
          }

          goto LABEL_196;
        }

        result = der_vm_execute_match_string(&v97, v3, a2);
        v23 = BYTE1(v99);
        if (BYTE1(v99) != 1)
        {
          v46 = *(v3 + 16);
          *v94 = *v3;
          *&v94[16] = v46;
          v95 = *(v3 + 32);
          v96 = *(v3 + 48);
          result = der_vm_string_from_context(v94);
          if (!v47)
          {
            goto LABEL_45;
          }

          v48 = v47 - 1;
          v49 = (result + v47 - 1);
          if (v49 >= result + v47 || v49 < result)
          {
            goto LABEL_196;
          }

          if (*v49 != 42)
          {
            goto LABEL_45;
          }

          if (v48 > v47)
          {
            goto LABEL_196;
          }

          if (v47 != 1)
          {
            if (v48 > v44)
            {
LABEL_107:
              v23 = 0;
              goto LABEL_39;
            }

            v50 = v29;
LABEL_190:
            result = memcmp(result, v50, v48);
            v19 = result == 0;
LABEL_36:
            v23 = v19;
            goto LABEL_39;
          }

LABEL_178:
          v23 = 1;
        }

LABEL_39:
        *(a3 + 33) = v23;
        goto LABEL_45;
      }

      *v94 = a3;
      *&v94[8] = a2;
      v67 = *(v3 + 16);
      v97 = *v3;
      v98 = v67;
      v99 = *(v3 + 32);
      v100 = *(v3 + 48);
      v68 = string_value_allowed_iterate;
    }

    else
    {
      if (v9 == 7)
      {
        if (result + 56 >= result)
        {
          v38 = *MEMORY[0x29EDCA608];

          return der_vm_execute_match_integer(a3, result, a2);
        }

        goto LABEL_196;
      }

      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v15 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v15;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      v16 = (a2 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      if ((v8 & 0x4000000000000000) != 0)
      {
        v16 = *v16;
        v17 = 16;
      }

      else
      {
        v17 = 248;
      }

      v61 = *(a2 + v17);
      v62 = *(result + 16);
      v97 = *result;
      v98 = v62;
      v99 = *(result + 32);
      v100 = *(result + 48);
      result = der_vm_CEType_from_context(&v97, 0);
      if (result != 2)
      {
        if (result != 4)
        {
          v51 = *(v6 + 24);
          if (!v51)
          {
            goto LABEL_45;
          }

          if (v6 < v7)
          {
            v52 = "Unexpected type to match against";
            v65 = "der_vm_execute_string_prefix_value_allowed";
            goto LABEL_182;
          }

          goto LABEL_196;
        }

        result = der_vm_execute_match_string_prefix(&v97, v3, a2);
        v23 = BYTE1(v99);
        if (BYTE1(v99) != 1)
        {
          v63 = *(v3 + 16);
          *v94 = *v3;
          *&v94[16] = v63;
          v95 = *(v3 + 32);
          v96 = *(v3 + 48);
          result = der_vm_string_from_context(v94);
          if (v61)
          {
            if (v61 > v64)
            {
              goto LABEL_107;
            }

            v83 = result;
            result = v16;
            v50 = v83;
            v48 = v61;
            goto LABEL_190;
          }

          goto LABEL_178;
        }

        goto LABEL_39;
      }

      *v94 = a3;
      *&v94[8] = a2;
      v70 = *(v3 + 16);
      v97 = *v3;
      v98 = v70;
      v99 = *(v3 + 32);
      v100 = *(v3 + 48);
      v68 = string_prefix_allowed_iterate;
    }

LABEL_121:
    result = der_vm_iterate(&v97, v94, v68);
    goto LABEL_45;
  }

  if (v9 != 9)
  {
    if (v9 != 10)
    {
      if (v9 != 11)
      {
        goto LABEL_197;
      }

      if (result + 56 < result)
      {
        goto LABEL_196;
      }

      v20 = *(result + 32);
      *(a3 + 16) = *(result + 16);
      *(a3 + 32) = v20;
      *a3 = *result;
      *(a3 + 48) = *(result + 48);
      *(a3 + 33) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v21 = *(a2 + 8);
      if ((v21 - 7) < 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_45;
      }

      v22 = *(result + 16);
      v97 = *result;
      v98 = v22;
      v99 = *(result + 32);
      v100 = *(result + 48);
      result = der_vm_CEType_from_context(&v97, 0);
      if (!result)
      {
        goto LABEL_45;
      }

      v19 = result == v21;
      goto LABEL_36;
    }

    if (result + 56 < result)
    {
      goto LABEL_196;
    }

    v40 = *(result + 16);
    v41 = *(result + 32);
    v42 = *result;
    v43 = *result;
    *(a3 + 16) = v40;
    *(a3 + 32) = v41;
    *a3 = v42;
    *(a3 + 48) = *(result + 48);
    *(a3 + 33) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v97 = v43;
    v98 = v40;
    v99 = *(result + 32);
    v100 = *(result + 48);
    result = der_vm_CEType_from_context(&v97, 0);
    if (result != 2)
    {
      if (result != 3)
      {
        v51 = *(v6 + 24);
        if (!v51)
        {
          goto LABEL_45;
        }

        if (v6 < v7)
        {
          v52 = "Unexpected type to match against";
          v65 = "der_vm_execute_integer_value_allowed";
          goto LABEL_182;
        }

        goto LABEL_196;
      }

      result = der_vm_execute_match_integer(&v97, v3, a2);
      v23 = BYTE1(v99);
      if (BYTE1(v99) != 1)
      {
        goto LABEL_45;
      }

      goto LABEL_39;
    }

    *v94 = a3;
    *&v94[8] = a2;
    v69 = *(v3 + 16);
    v97 = *v3;
    v98 = v69;
    v99 = *(v3 + 32);
    v100 = *(v3 + 48);
    v68 = integer_allowed_iterate;
    goto LABEL_121;
  }

  if (result + 56 < result)
  {
    goto LABEL_196;
  }

  v32 = *(result + 32);
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v32;
  *a3 = *result;
  *(a3 + 48) = *(result + 48);
  *(a3 + 33) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v97 = 0uLL;
  *v94 = *(result + 40);
  result = der_decode_next(v6, 0, 0, &v97, v94);
  if ((result & 1) == 0)
  {
    v51 = *(v6 + 24);
    if (!v51)
    {
      goto LABEL_45;
    }

    if (v6 < v7)
    {
      v52 = "dictionary decoding failure";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  v33 = (a2 + 8);
  if ((*(a2 + 7) & 0x40) != 0)
  {
    v33 = *v33;
    v34 = 16;
  }

  else
  {
    v34 = 248;
  }

  v74 = *(a2 + v34);
  if (!v74)
  {
    v51 = *(v6 + 24);
    if (!v51)
    {
      goto LABEL_45;
    }

    if (v6 < v7)
    {
      v52 = "key length is invalid";
      goto LABEL_181;
    }

    goto LABEL_196;
  }

  if (v97 >= *(&v97 + 1))
  {
    v75 = 0;
LABEL_173:
    *(a3 + 33) = v75;
    goto LABEL_45;
  }

  v75 = 0;
  while (1)
  {
    __s1 = 0;
    v93 = 0;
    v91 = 0uLL;
    if (v6 >= v7)
    {
      v75 = 0;
LABEL_195:
      *(a3 + 33) = v75;
      goto LABEL_196;
    }

    result = der_decode_key_value(v6, &__s1, &v91, &v97);
    if ((result & 1) == 0)
    {
      break;
    }

    if (v93)
    {
      v76 = __s1;
      v77 = __s1 + v93 - 1;
      if (v77 >= __s1 + v93 || v77 < __s1)
      {
        goto LABEL_195;
      }

      if (*v77 == 42)
      {
        if (v93 != 1)
        {
          if (v93 - 1 > v74)
          {
            goto LABEL_156;
          }

          result = memcmp(__s1, v33, v93 - 1);
          if (result)
          {
            goto LABEL_156;
          }
        }

LABEL_155:
        *(a3 + 40) = v91;
        v75 = 1;
        goto LABEL_156;
      }
    }

    else
    {
      v76 = __s1;
    }

    result = CEBuffer_cmp(v33, v74, v76, v93);
    if (!result)
    {
      goto LABEL_155;
    }

LABEL_156:
    if (v97 >= *(&v97 + 1))
    {
      goto LABEL_173;
    }
  }

  *(a3 + 33) = v75;
  v51 = *(v6 + 24);
  if (!v51)
  {
    goto LABEL_45;
  }

  v52 = "invalid dictionary element";
LABEL_181:
  v65 = "der_vm_execute_select_longest_matching_key";
LABEL_182:
  result = v51(v6, "[%s]: %s\n", v65, v52);
LABEL_45:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t der_vm_iterate_b(__int128 *a1, uint64_t a2)
{
  if (!a2 || (*(a1 + 33) & 1) == 0)
  {
    return &unk_29EE6D8F0;
  }

  v4 = *a1;
  v5 = *a1 + 64;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  *v27 = *(a1 + 40);
  result = der_decode_next(v4, &v30, 0, &v28, v27);
  if (result)
  {
    v7 = a1[1];
    v16 = *a1;
    v17 = v7;
    v18 = a1[2];
    v19 = *(a1 + 6);
    result = der_vm_CEType_from_ccder_tag(&v16, v30);
    if ((result - 3) < 0xFFFFFFFE)
    {
      v8 = *(v4 + 24);
      if (!v8)
      {
        return &unk_29EE6D8F0;
      }

      if (v4 < v5)
      {
        v8(v4, "[%s]: %s\n", "der_vm_iterate_b", "iteration over a non-iterable type");
        return &unk_29EE6D8F0;
      }

      goto LABEL_23;
    }

    v11 = result;
    while (1)
    {
      if (v28 >= v29)
      {
        return Errors;
      }

      v12 = a1[1];
      v13 = a1[2];
      v16 = *a1;
      v17 = v12;
      v18 = v13;
      v19 = *(a1 + 6);
      v20 = v16;
      v21 = v12;
      v22 = v13;
      v23 = v19;
      v24 = v11;
      v25 = 0;
      v26 = 0;
      result = der_decode_next(*a1, &v30, &v22 + 1, 0, &v28);
      if ((result & 1) == 0)
      {
        break;
      }

      v14[0] = v20;
      v14[1] = v21;
      v14[2] = v22;
      v15 = v23;
      v25 = der_vm_CEType_from_ccder_tag(v14, v30);
      if (((*(a2 + 16))(a2, &v16) & 1) == 0)
      {
        return Errors;
      }
    }

    v9 = *(v4 + 24);
    if (v9)
    {
      if (v4 < v5)
      {
        v10 = "encountered invalid element in an iterable";
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    return &unk_29EE6D910;
  }

  v9 = *(v4 + 24);
  if (!v9)
  {
    return &unk_29EE6D910;
  }

  if (v4 < v5)
  {
    v10 = "iterable decoding failure";
LABEL_12:
    v9(v4, "[%s]: %s\n", "der_vm_iterate_b", v10);
    return &unk_29EE6D910;
  }

LABEL_23:
  __break(0x5519u);
  return result;
}

uint64_t der_decode_BOOLean(uint64_t a1)
{
  if (ccder_blob_decode_range())
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = "BOOLean should be exactly 1 byte";
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = "Unknown BOOLean encoding";
LABEL_6:
      v2(a1, "[%s]: %s\n", "der_decode_BOOLean", v3);
    }
  }

  return 0;
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
      *(a3 + 24) = xmmword_2977473D0;
      *(a3 + 40) = v5;
      *(a3 + 48) = v4;
      v6 = *(a3 + 16);
      v9[0] = *a3;
      v9[1] = v6;
      v9[2] = *(a3 + 32);
      v10 = *(a3 + 48);
      der_vm_execute_nocopy(v9, CESelectValueOperation, v11);
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
    *(a3 + 24) = xmmword_2977473C0;
    *(a3 + 40) = v5;
    goto LABEL_12;
  }

  __break(0x5519u);
  return result;
}

uint64_t CEQueryContextToCFDictionary(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:0];
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  if (der_vm_iterate(v9, v4, manufacturingCallback) == Errors)
  {
    *a2 = v4;
    v6 = &kCENoError;
  }

  else
  {
    v6 = &kCEMalformedEntitlements;
  }

  v7 = *v6;

  return v7;
}

uint64_t der_validate_array(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v5 = 0;
  v6 = 0;
  result = ccder_blob_decode_sequence_tl();
  if (result)
  {
    return 1;
  }

  v4 = *(v1 + 24);
  if (!v4)
  {
    return 0;
  }

  if (v1 < v2)
  {
    v4(v1, "[%s]: %s\n", "der_validate_array", "array decoding failure");
    return 0;
  }

  __break(0x5519u);
  return result;
}

uint64_t manufacturingCallback(uint64_t *a1)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[15];
  v4 = a1[15];
  v5 = *(a1 + 29);
  if (v5 == 2)
  {
    if (*(a1 + 28) == 1)
    {
      v21 = *(a1 + 7);
      v22 = *(a1 + 9);
      v23 = *(a1 + 11);
      v24 = a1[13];
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(v34 + 8, 0, 248);
      v8 = *(a1 + 9);
      v30 = *(a1 + 7);
      v31 = v8;
      v32 = *(a1 + 11);
      v33 = a1[13];
      *&v34[0] = 2;
      v9 = v3;
      der_vm_execute_nocopy(&v30, v34, &v26);
      v34[0] = v26;
      v34[1] = v27;
      v34[2] = v28;
      *&v34[3] = v29;
      v10 = der_vm_string_from_context(v34);
      v12 = v11;
      v34[0] = xmmword_297747400;
      memset(&v34[1], 0, 240);
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      der_vm_execute_nocopy(&v30, v34, v25);
      v13 = objectForActiveContext(v25);
      v14 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v10 length:v12 encoding:4];
      [v9 setObject:v13 forKey:v14];

      goto LABEL_9;
    }

    v15 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:0];
    v16 = *(a1 + 9);
    v34[0] = *(a1 + 7);
    v34[1] = v16;
    v34[2] = *(a1 + 11);
    *&v34[3] = a1[13];
    if (der_vm_iterate(v34, v15, manufacturingCallback) == Errors)
    {
      [v4 addObject:v15];

      goto LABEL_9;
    }

    v19 = (*(v2 + 32))(v2, "[%s]: %s\n", "manufacturingCallback", "CoreEntitlements: Couldn't iterate over DER entitlements\n");
  }

  else if (v5)
  {
    if (*(a1 + 28) == 2)
    {
      v6 = *(a1 + 9);
      v34[0] = *(a1 + 7);
      v34[1] = v6;
      v34[2] = *(a1 + 11);
      *&v34[3] = a1[13];
      v7 = objectForActiveContext(v34);
      [v4 addObject:v7];

LABEL_9:
      v17 = *MEMORY[0x29EDCA608];
      return 1;
    }

    v19 = (*(v2 + 32))(v2, "[%s]: %s\n", "manufacturingCallback", "CoreEntitlements: not a sequence");
  }

  else
  {
    v19 = (*(v2 + 32))(v2, "[%s]: %s\n", "manufacturingCallback", "CoreEntitlements: unknown DER type");
  }

  return __der_vm_iterate_block_invoke(v19, v20);
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

uint64_t der_vm_BOOL_from_context(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 40);
  result = der_decode_BOOLean(*a1);
  if (result)
  {
    return 0;
  }

  if (v1 < v1 + 64)
  {
    result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_BOOL_from_context", "Attempting to select a BOOLean value from a non-BOOLean DER object");
  }

  __break(0x5519u);
  return result;
}

uint64_t der_vm_CEType_from_context(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  if (*(a1 + 33) != 1)
  {
    return 0;
  }

  v4 = *a1;
  v10 = *(a1 + 40);
  result = der_decode_next(v4, &v11, 0, 0, &v10);
  if (result)
  {
    v6 = v11;
    if (a2)
    {
      *a2 = v11;
    }

    v7 = *(a1 + 16);
    v8[0] = *a1;
    v8[1] = v7;
    v8[2] = *(a1 + 32);
    v9 = *(a1 + 48);
    return der_vm_CEType_from_ccder_tag(v8, v6);
  }

  return result;
}

id objectForActiveContext(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v22 = *a1;
  v23 = v3;
  v24 = *(a1 + 2);
  v25 = a1[6];
  v4 = der_vm_CEType_from_context(&v22, 0);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        v16 = *(a1 + 1);
        v22 = *a1;
        v23 = v16;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v17 = der_vm_string_from_context(&v22);
        v6 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v17 length:v18 encoding:4];
        goto LABEL_17;
      case 5:
        v11 = *(a1 + 1);
        v22 = *a1;
        v23 = v11;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v12 = der_vm_BOOL_from_context(&v22);
        v13 = MEMORY[0x29EDB8EA8];
        if (v12)
        {
          v13 = MEMORY[0x29EDB8EB0];
        }

        v6 = v13;
        goto LABEL_17;
      case 6:
        v7 = *(a1 + 1);
        v22 = *a1;
        v23 = v7;
        v24 = *(a1 + 2);
        v25 = a1[6];
        v8 = der_vm_data_from_context(&v22);
        v6 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v8 length:v9];
        goto LABEL_17;
    }

LABEL_21:
    v20 = (*(v2 + 32))(v2, "[%s]: %s\n", "objectForActiveContext", "CoreEntitlements: unknown DER type");
    return der_vm_CEType_from_ccder_tag(v20, v21);
  }

  switch(v4)
  {
    case 1:
      v10 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:0];
      break;
    case 2:
      v10 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:0];
      break;
    case 3:
      v5 = *(a1 + 1);
      v22 = *a1;
      v23 = v5;
      v24 = *(a1 + 2);
      v25 = a1[6];
      v6 = [MEMORY[0x29EDBA070] numberWithLongLong:der_vm_integer_from_context(&v22)];
LABEL_17:
      v14 = v6;
      goto LABEL_18;
    default:
      goto LABEL_21;
  }

  v14 = v10;
  v15 = *(a1 + 1);
  v22 = *a1;
  v23 = v15;
  v24 = *(a1 + 2);
  v25 = a1[6];
  der_vm_iterate(&v22, v10, manufacturingCallback);
LABEL_18:

  return v14;
}

uint64_t der_vm_CEType_from_ccder_tag(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == a2)
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

__int128 *der_vm_iterate(__int128 *result, uint64_t a2, uint64_t a3)
{
  if ((result + 56) < result)
  {
    __break(0x5519u);
  }

  else
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = __der_vm_iterate_block_invoke;
    v5[3] = &__block_descriptor_tmp_166;
    v5[4] = a2;
    v5[5] = a3;
    return der_vm_iterate_b(result, v5);
  }

  return result;
}

uint64_t der_vm_string_from_context(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = der_decode_string(v1, v4);
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

uint64_t der_vm_integer_from_context(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v3 = *(a1 + 40);
  result = der_decode_number(v1, &v4);
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

void *emitSerializationElement(unint64_t a1, uint64_t a2)
{
  if ((*(a1 + 33) & 1) == 0)
  {
    return &unk_29EE6D8F0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = Errors;
  v4 = *(a1 + 16);
  v22 = *a1;
  v23 = v4;
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v5 = der_vm_CEType_from_context(&v22, 0);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v14 = *(a1 + 16);
        v22 = *a1;
        v23 = v14;
        v24 = *(a1 + 32);
        v25 = *(a1 + 48);
        v15 = der_vm_integer_from_context(&v22);
        v8 = *(a2 + 16);
        *&v22 = 4;
        *(&v22 + 1) = v15;
        goto LABEL_13;
      case 4:
        v16 = *(a1 + 16);
        v22 = *a1;
        v23 = v16;
        v24 = *(a1 + 32);
        v25 = *(a1 + 48);
        v17 = der_vm_string_from_context(&v22);
        v8 = *(a2 + 16);
        *&v22 = 2;
        *(&v22 + 1) = v17;
        *&v23 = v18;
        goto LABEL_15;
      case 5:
        v6 = *(a1 + 16);
        v22 = *a1;
        v23 = v6;
        v24 = *(a1 + 32);
        v25 = *(a1 + 48);
        v7 = der_vm_BOOL_from_context(&v22);
        v8 = *(a2 + 16);
        *&v22 = 1;
        *(&v22 + 1) = v7;
LABEL_13:
        *&v23 = 0;
LABEL_15:
        BYTE8(v23) = 0;
        v8(a2, &v22);
        break;
    }

LABEL_19:
    v9 = v27[3];
    _Block_object_dispose(&v26, 8);
    return v9;
  }

  if (v5 == 1)
  {
    v19 = *(a2 + 16);
    v23 = 0uLL;
    v22 = 7uLL;
    result = v19(a2, &v22);
    if (a1 + 56 >= a1)
    {
      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 0x40000000;
      v21[2] = __emitSerializationElement_block_invoke;
      v21[3] = &unk_29EE6D9B0;
      v21[4] = a2;
      v21[5] = &v26;
      der_vm_iterate_b(a1, v21);
      v23 = 0uLL;
      v12 = *(a2 + 16);
      v13 = 8;
      goto LABEL_18;
    }
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v10 = *(a2 + 16);
    v23 = 0uLL;
    v22 = 5uLL;
    result = v10(a2, &v22);
    if (a1 + 56 >= a1)
    {
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 0x40000000;
      v20[2] = __emitSerializationElement_block_invoke_2;
      v20[3] = &unk_29EE6D9D8;
      v20[4] = a2;
      v20[5] = &v26;
      der_vm_iterate_b(a1, v20);
      v23 = 0uLL;
      v12 = *(a2 + 16);
      v13 = 6;
LABEL_18:
      v22 = v13;
      v12(a2, &v22);
      goto LABEL_19;
    }
  }

  __break(0x5519u);
  return result;
}

void *CESizeDeserialization(uint64_t a1, void *a2)
{
  *a2 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = __CESizeDeserialization_block_invoke;
  v6[3] = &__block_descriptor_tmp_60;
  v6[4] = a2;
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return emitSerializationElement(v4, v6);
}

BOOL __emitSerializationElement_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 16);
  v26 = 5uLL;
  v27 = 0uLL;
  v4();
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v5 = *(a2 + 72);
  v22 = *(a2 + 56);
  v23 = v5;
  v24 = *(a2 + 88);
  v25 = *(a2 + 104);
  der_vm_execute_nocopy(&v22, CESelectKeyOperation, &v26);
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v6 = der_vm_string_from_context(&v22);
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *&v22 = 3;
  *(&v22 + 1) = v6;
  *&v23 = v9;
  BYTE8(v23) = 0;
  v8(v7, &v22);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v10 = *(a2 + 72);
  v18 = *(a2 + 56);
  v19 = v10;
  v20 = *(a2 + 88);
  v21 = *(a2 + 104);
  der_vm_execute_nocopy(&v18, CESelectValueOperation, &v22);
  v11 = *(a1 + 32);
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  *(*(*(a1 + 40) + 8) + 24) = emitSerializationElement(&v18, v11);
  v14 = *(*(*(a1 + 40) + 8) + 24);
  if (v14 == Errors)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 16);
    v18 = 6uLL;
    v19 = 0uLL;
    v16(v15, &v18, v12, v13);
  }

  return v14 == Errors;
}

BOOL __emitSerializationElement_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 72);
  v6[0] = *(a2 + 56);
  v6[1] = v4;
  v6[2] = *(a2 + 88);
  v7 = *(a2 + 104);
  *(*(*(a1 + 40) + 8) + 24) = emitSerializationElement(v6, v3);
  return *(*(*(a1 + 40) + 8) + 24) == Errors;
}

void *CEDeserialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __CEDeserialize_block_invoke;
  v8[3] = &unk_29EE6D988;
  v8[4] = v9;
  v8[5] = a3;
  v8[6] = a1;
  v8[7] = a2;
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v4 = emitSerializationElement(v6, v8);
  _Block_object_dispose(v9, 8);
  return v4;
}

uint64_t __CEDeserialize_block_invoke(uint64_t result, _OWORD *a2)
{
  v2 = *(*(*(result + 32) + 8) + 24);
  if (v2 >= *(result + 40))
  {
    v5 = (*(**(result + 48) + 32))(**(result + 48), "[%s]: %s\n", "CEDeserialize_block_invoke", "CEDeserialization length mismatch");
    return CESizeXMLSerialization(v5);
  }

  else
  {
    v3 = (*(result + 56) + 32 * v2);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

void *CESizeXMLSerialization(void *result, unint64_t a2, void *a3)
{
  *a3 = 0;
  v9 = 0;
  if (a2 <= 1 || *result != 7)
  {
    return &unk_29EE6D8F0;
  }

  v3 = &result[4 * a2];
  v4 = (v3 - 32);
  if (v3 < 0x20 || v4 < result)
  {
    goto LABEL_17;
  }

  if (*v4 != 8)
  {
    return &unk_29EE6D8F0;
  }

  v8 = &result[4 * a2];
  if ((result + 4) > v3 || result + 4 < result)
  {
LABEL_17:
    __break(0x5519u);
    return result;
  }

  v7 = result + 4;
  result = xml_size_dictionary(result, &v7, &v9);
  if (result == Errors)
  {
    if (v7 == v8)
    {
      *a3 = v9 + 171;
      return Errors;
    }

    else
    {
      return &unk_29EE6D910;
    }
  }

  return result;
}

void *xml_size_dictionary(void *result, unint64_t *a2, void *a3)
{
  v5 = result;
  v6 = 0;
  v8 = *a2;
  v7 = a2[1];
  while (1)
  {
    if (v8 >= v7)
    {
      return &unk_29EE6D910;
    }

    v9 = (v8 + 32);
    if (v8 + 32 > v7 || v8 > v9)
    {
      break;
    }

    *a2 = v9;
    if (!v8)
    {
      return &unk_29EE6D910;
    }

    if (*v8 != 5)
    {
      if (*v8 == 8)
      {
        *a3 = v6 + 13;
        v5[2] = v6;
        return Errors;
      }

      return &unk_29EE6D910;
    }

    *(v8 + 24) = 1;
    if (v9 >= v7)
    {
      return &unk_29EE6D910;
    }

    v10 = v8 + 64;
    if (v8 + 64 > v7 || v9 > v10)
    {
      break;
    }

    *a2 = v10;
    if (v8 == -32)
    {
      return &unk_29EE6D910;
    }

    if (*v9 != 3)
    {
      return &unk_29EE6D910;
    }

    v11 = *(v8 + 48);
    if (!v11)
    {
      return &unk_29EE6D910;
    }

    if (v9 >= v10)
    {
      break;
    }

    v12 = xml_size_string(*(v8 + 40), v11);
    result = 0;
    v19 = 0;
    v13 = *a2;
    v14 = a2[1];
    if (*a2 < v14)
    {
      v15 = v13 + 4;
      if ((v13 + 4) > v14 || v13 > v15)
      {
        break;
      }

      *a2 = v15;
      result = v13;
    }

    result = xml_size_element(result, a2, &v19);
    if (result != Errors)
    {
      return result;
    }

    v16 = *a2;
    v7 = a2[1];
    v17 = *a2 + 32;
    if (v17 > v7 || v16 > v17)
    {
      break;
    }

    *a2 = v17;
    if (*v16 != 6)
    {
      return &unk_29EE6D910;
    }

    *(v16 + 24) = 1;
    v18 = v12 + 11 + v19;
    *(v8 + 16) = v18;
    v6 += v18;
    v8 = v17;
  }

  __break(0x5519u);
  return result;
}

void *xml_size_element(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *a1;
  if (*a1 <= 3)
  {
    if (v5 == 1)
    {
      v9 = 7;
      if (!*(a1 + 8))
      {
        v9 = 8;
      }

      *(a1 + 16) = v9;
    }

    else
    {
      if (v5 != 2)
      {
LABEL_27:
        result = &unk_29EE6D8F0;
        goto LABEL_30;
      }

      v9 = xml_size_string(*(a1 + 8), *(a1 + 16)) + 17;
    }

LABEL_26:
    *a3 = v9;
    result = Errors;
LABEL_30:
    v16 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v5 == 4)
  {
    v10 = snprintf(__str, 0x20uLL, "%lld", *(a1 + 8));
    *(a1 + 16) = v10;
    v9 = v10 + 19;
    goto LABEL_26;
  }

  if (v5 == 5)
  {
    for (i = 0; ; i += *__str)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      if (*a2 >= v13)
      {
LABEL_28:
        result = &unk_29EE6D910;
        goto LABEL_30;
      }

      v14 = v12 + 4;
      if ((v12 + 4) > v13 || v12 >= v14)
      {
LABEL_31:
        __break(0x5519u);
      }

      *a2 = v14;
      if (!v12)
      {
        goto LABEL_28;
      }

      if (*v12 == 6)
      {
        break;
      }

      *__str = 0;
      if (v12 >= v14)
      {
        goto LABEL_31;
      }

      result = xml_size_element();
      if (result != Errors)
      {
        goto LABEL_30;
      }
    }

    *a3 = i + 15;
    *(a1 + 16) = i;
    result = Errors;
    goto LABEL_30;
  }

  if (v5 != 7)
  {
    goto LABEL_27;
  }

  v7 = *MEMORY[0x29EDCA608];

  return xml_size_dictionary();
}

uint64_t xml_size_string(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = &a1[a2];
  for (i = a1; i < v4 && i >= a1; ++i)
  {
    v6 = *i;
    if (v6 <= 0x26)
    {
      if (v6 == 34)
      {
LABEL_13:
        v7 = 6;
        goto LABEL_15;
      }

      if (v6 != 38)
      {
        goto LABEL_14;
      }

      v7 = 5;
    }

    else
    {
      if (v6 == 39)
      {
        goto LABEL_13;
      }

      if (v6 != 60 && v6 != 62)
      {
LABEL_14:
        v7 = 1;
        goto LABEL_15;
      }

      v7 = 4;
    }

LABEL_15:
    result += v7;
    if (!--a2)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

unint64_t xml_copy_string_to_buffer(unint64_t result, uint64_t a2, unint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  v4 = a2;
  v5 = result;
  v6 = a2 + result;
  for (i = result; i < v6 && i >= v5; ++i)
  {
    v8 = *i;
    if (v8 <= 0x26)
    {
      if (v8 == 34)
      {
        v9 = a3;
        v10 = "&quot;";
        goto LABEL_18;
      }

      if (v8 == 38)
      {
        result = CEStringBufferAppendN(a3, "&amp;", 5uLL);
        if (!result)
        {
          return result;
        }

        goto LABEL_21;
      }
    }

    else
    {
      switch(v8)
      {
        case '\'':
          v9 = a3;
          v10 = "&apos;";
LABEL_18:
          v11 = 6;
          goto LABEL_20;
        case '<':
          v9 = a3;
          v10 = "&lt;";
          goto LABEL_16;
        case '>':
          v9 = a3;
          v10 = "&gt;";
LABEL_16:
          v11 = 4;
          goto LABEL_20;
      }
    }

    v9 = a3;
    v10 = i;
    v11 = 1;
LABEL_20:
    result = CEStringBufferAppendN(v9, v10, v11);
    if ((result & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    if (!--v4)
    {
      return 1;
    }
  }

  __break(0x5519u);
  return result;
}

void *CESerializeXML(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a4 > a5)
  {
    goto LABEL_102;
  }

  v26 = a4;
  v28 = a5;
  if (a5 - a4 <= 0xA1)
  {
LABEL_100:
    result = &unk_29EE6D8F0;
    goto LABEL_101;
  }

  qmemcpy((a4 + 32), "F-8?><!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN https://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0>", 130);
  v5 = (a4 + 162);
  qmemcpy(a4, "<?xml version=1.0 encoding=UT", 32);
  if (a4 + 162 > a5 || v5 < a4)
  {
    goto LABEL_102;
  }

  v27 = (a4 + 162);
  if (a4 < a5)
  {
    v7 = a3;
    if (a3)
    {
      v8 = a2 + 16;
      do
      {
        v9 = *(v8 - 16);
        if (v9 > 4)
        {
          if (v9 > 6)
          {
            if (v9 == 7)
            {
              if (a5 - v5 < 6)
              {
                goto LABEL_100;
              }

              if (v5 > a5 || a4 > v5)
              {
                goto LABEL_102;
              }

              *(v5 + 2) = 15988;
              *v5 = 1667851324;
              goto LABEL_78;
            }

            if (v9 == 8)
            {
              if (a5 - v5 < 7)
              {
                goto LABEL_100;
              }

              if (v5 > a5 || a4 > v5)
              {
                goto LABEL_102;
              }

              *(v5 + 3) = 1047815017;
              *v5 = 1768173372;
              goto LABEL_63;
            }
          }

          else if (v9 == 5)
          {
            if ((*(v8 + 8) & 1) == 0)
            {
              if (a5 - v5 < 7)
              {
                goto LABEL_100;
              }

              if (v5 > a5 || a4 > v5)
              {
                goto LABEL_102;
              }

              *(v5 + 3) = 1048142194;
              v17 = 1920098620;
LABEL_62:
              *v5 = v17;
LABEL_63:
              v5 += 7;
LABEL_79:
              if (v5 > a5)
              {
                goto LABEL_102;
              }

LABEL_80:
              if (a4 > v5)
              {
                goto LABEL_102;
              }

              v27 = v5;
            }
          }

          else if ((*(v8 + 8) & 1) == 0)
          {
            if (a5 - v5 < 8)
            {
              goto LABEL_100;
            }

            if (v5 > a5 || a4 > v5)
            {
              goto LABEL_102;
            }

            v11 = 0x3E79617272612F3CLL;
LABEL_88:
            *v5 = v11;
            a5 = v28;
            v5 = v27 + 8;
            if ((v27 + 8) > v28)
            {
              goto LABEL_102;
            }

            a4 = v26;
            goto LABEL_80;
          }
        }

        else
        {
          if (v9 > 2)
          {
            if (v9 != 3)
            {
              *__str = 0;
              v30 = 0;
              v31 = 0;
              if (a5 - v5 < 9)
              {
                goto LABEL_100;
              }

              if (v5 > a5)
              {
                goto LABEL_102;
              }

              if (a4 > v5)
              {
                goto LABEL_102;
              }

              v5[8] = 62;
              *v5 = *"<integer>";
              v12 = v5 + 9;
              if (v12 > a5)
              {
                goto LABEL_102;
              }

              if (a4 > v12)
              {
                goto LABEL_102;
              }

              v27 = v12;
              v13 = snprintf(__str, 0x18uLL, "%lld", *(v8 - 8));
              if (v13 > 0x18)
              {
                goto LABEL_102;
              }

              v14 = v13;
              v15 = v27;
              a5 = v28;
              if (v14)
              {
                v16 = v14;
                if (v28 - v27 < v14)
                {
                  goto LABEL_100;
                }

                if (v27 > v28)
                {
                  goto LABEL_102;
                }

                if (v26 > v27)
                {
                  goto LABEL_102;
                }

                memcpy(v27, __str, v14);
                a5 = v28;
                v15 = &v27[v16];
                if (&v27[v16] > v28 || v26 > v15)
                {
                  goto LABEL_102;
                }
              }

              if (a5 - v15 < 0xA)
              {
                goto LABEL_100;
              }

              if (v15 > a5)
              {
                goto LABEL_102;
              }

              a4 = v26;
              if (v26 > v15)
              {
                goto LABEL_102;
              }

              *(v15 + 4) = 15986;
              *v15 = *"</integer>";
              v5 = v15 + 10;
              goto LABEL_79;
            }

            if (a5 - v5 < 5)
            {
              goto LABEL_100;
            }

            if (v5 > a5)
            {
              goto LABEL_102;
            }

            if (a4 > v5)
            {
              goto LABEL_102;
            }

            v5[4] = 62;
            *v5 = 2036689724;
            v18 = v5 + 5;
            if (v18 > a5 || a4 > v18)
            {
              goto LABEL_102;
            }

            v27 = v18;
            if ((xml_copy_string_to_buffer(*(v8 - 8), *v8, &v26) & 1) == 0)
            {
              goto LABEL_100;
            }

            v5 = v27;
            a5 = v28;
            if (v28 - v27 < 6)
            {
              goto LABEL_100;
            }

            if (v27 > v28)
            {
              goto LABEL_102;
            }

            a4 = v26;
            if (v26 > v27)
            {
              goto LABEL_102;
            }

            *(v27 + 2) = 15993;
            *v5 = 1701523260;
LABEL_78:
            v5 += 6;
            goto LABEL_79;
          }

          if (v9 == 1)
          {
            if (*(v8 - 8))
            {
              if (a5 - v5 < 7)
              {
                goto LABEL_100;
              }

              if (v5 > a5 || a4 > v5)
              {
                goto LABEL_102;
              }

              *(v5 + 3) = 1043293557;
              v17 = 1970435132;
              goto LABEL_62;
            }

            if (a5 - v5 < 8)
            {
              goto LABEL_100;
            }

            if (v5 > a5 || a4 > v5)
            {
              goto LABEL_102;
            }

            v11 = 0x3E2F65736C61663CLL;
            goto LABEL_88;
          }

          if (v9 == 2)
          {
            if (a5 - v5 < 8)
            {
              goto LABEL_100;
            }

            if (v5 > a5)
            {
              goto LABEL_102;
            }

            if (a4 > v5)
            {
              goto LABEL_102;
            }

            *v5 = 0x3E676E697274733CLL;
            if ((v27 + 8) > v28 || v26 > (v27 + 8))
            {
              goto LABEL_102;
            }

            v27 += 8;
            if ((xml_copy_string_to_buffer(*(v8 - 8), *v8, &v26) & 1) == 0)
            {
              goto LABEL_100;
            }

            v10 = v27;
            a5 = v28;
            if (v28 - v27 < 9)
            {
              goto LABEL_100;
            }

            if (v27 > v28)
            {
              goto LABEL_102;
            }

            a4 = v26;
            if (v26 > v27)
            {
              goto LABEL_102;
            }

            v27[8] = 62;
            *v10 = *"</string>";
            v5 = v10 + 9;
            goto LABEL_79;
          }
        }

        v8 += 32;
        --v7;
      }

      while (v7);
    }
  }

  if (a5 - v5 < 8)
  {
    goto LABEL_100;
  }

  if (v5 > a5 || a4 > v5 || (*v5 = 0x3E7473696C702F3CLL, v19 = v27 + 8, (v27 + 8) > v28) || v26 > v19)
  {
LABEL_102:
    __break(0x5519u);
  }

  v27 += 8;
  if (v28 == v19)
  {
    goto LABEL_100;
  }

  *v19 = 0;
  v20 = v27 + 1;
  if ((v27 + 1) > v28 || v26 > v20)
  {
    goto LABEL_102;
  }

  if (v20 == v28)
  {
    result = Errors;
LABEL_101:
    v22 = *MEMORY[0x29EDCA608];
    return result;
  }

  v23 = (*(a1 + 32))(a1, "[%s]: %s\n", "CESerializeXML", "critical failure during xml serialization, start != end");
  return CEStringBufferAppendN(v23, v24, v25);
}

unint64_t CEStringBufferAppendN(unint64_t *a1, const void *a2, size_t __n)
{
  if (!__n)
  {
    return 1;
  }

  v7 = a1 + 1;
  result = a1[1];
  v6 = v7[1];
  if (v6 - result < __n)
  {
    return 0;
  }

  if (result <= v6 && *a1 <= result)
  {
    result = memcpy(result, a2, __n);
    v9 = a1[1] + __n;
    if (v9 <= a1[2] && *a1 <= v9)
    {
      a1[1] = v9;
      return 1;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CEIndexSizeForContext(__int128 *a1, void *a2)
{
  v4 = *a1;
  v5 = *a1 + 64;
  v6 = count_keys(a1);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = Errors;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = __CEIndexSizeForContext_block_invoke;
  v9[3] = &unk_29EE6D7E8;
  v9[6] = v5;
  v9[7] = v4;
  v9[4] = &v10;
  v9[5] = v4;
  v9[8] = a1;
  result = der_vm_iterate_b(a1, v9);
  v8 = v11[3];
  if (v8 != Errors)
  {
    goto LABEL_6;
  }

  *a2 = 8 * v6;
  if (!(v6 >> 61))
  {
    if (v6 > 1)
    {
      v8 = Errors;
    }

    else
    {
      v8 = qword_29EE6D930;
    }

LABEL_6:
    _Block_object_dispose(&v10, 8);
    return v8;
  }

  if (v4 < v5)
  {
    result = (*(v4 + 32))(v4, "[%s]: %s\n", "CEIndexSizeForContext", "index size overflow");
  }

  __break(0x5519u);
  return result;
}

uint64_t count_keys(__int128 *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = __count_keys_block_invoke;
  v3[3] = &unk_29EE6D810;
  v3[4] = &v4;
  der_vm_iterate_b(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

unint64_t __CEIndexSizeForContext_block_invoke(void *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  result = a1[5];
  if (result)
  {
    if (result >= a1[6] || result < a1[7])
    {
      __break(0x5519u);
      return result;
    }

    v6 = *(a2 + 96);
    if (!der_decode_key_value(result, &v8, &v7, &v6))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(a2 + 96);
    if ((der_decode_key_value(0, &v8, &v7, &v6) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ((v8 - *(a1[8] + 40)) <= 0xFFFFFFFE && v9 < 0xFFFFFFFF)
  {
    return 1;
  }

LABEL_15:
  result = 0;
  *(*(a1[4] + 8) + 24) = &unk_29EE6D910;
  return result;
}

__int128 *CEBuildIndexForContext(__int128 *result)
{
  v1 = *result;
  v2 = *result + 64;
  if (**result < 2uLL || !v1[6] || !v1[7])
  {
    v20 = v1[3];
    if (v20)
    {
      if (v1 >= v2)
      {
        goto LABEL_32;
      }

      v20(v1, "[%s]: %s\n", "CEBuildIndexForContext", "runtime doesn't support acceleration");
    }

    return &unk_29EE6D8E0;
  }

  v3 = result;
  v23 = 0;
  result = CEIndexSizeForContext(result, &v23);
  if (result != Errors)
  {
    return result;
  }

  result = count_keys(v3);
  if (v1 >= v2)
  {
    goto LABEL_32;
  }

  v4 = result;
  v5 = v23;
  result = (v1[6])(v1, v23);
  if (!result)
  {
    return &unk_29EE6D900;
  }

  if (result > (result + v5) || v4 > v5 >> 3)
  {
LABEL_32:
    __break(0x5519u);
    return result;
  }

  *&v22 = result;
  *(&v22 + 1) = v4;
  v7 = *v3;
  v8 = *v3 + 64;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v25[3] = 0;
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 0x40000000;
  v24[2] = __copy_keys_to_accelerator_block_invoke;
  v24[3] = &unk_29EE6D838;
  v24[6] = v8;
  v24[7] = v7;
  v24[8] = v3;
  v24[9] = &v22;
  v24[4] = v25;
  v24[5] = v7;
  der_vm_iterate_b(v3, v24);
  _Block_object_dispose(v25, 8);
  if (*(&v22 + 1) >= 2uLL)
  {
    v9 = 0;
    v10 = 1;
    v11 = 8;
    do
    {
      v21 = v9;
      v12 = v11;
      while (1)
      {
        v13 = *(&v22 + 1);
        v14 = v22;
        v15 = v22 + v12 - 8;
        v16 = *(v22 + v12);
        v17 = *(v22 + 8 * v9);
        result = CEBuffer_cmp((*(v3 + 5) + v17), HIDWORD(v17), (*(v3 + 5) + v16), HIDWORD(v16));
        if (result < 1)
        {
          break;
        }

        if (v15 >= v14 + 8 * v13 || v15 < v14)
        {
          goto LABEL_32;
        }

        *(v14 + 8 * v9) = v16;
        v19 = (v22 + v12);
        if (v22 + v12 >= (v22 + 8 * *(&v22 + 1)) || v19 < v22)
        {
          goto LABEL_32;
        }

        *v19 = v17;
        v12 -= 8;
        if (--v9 == -1)
        {
          v13 = *(&v22 + 1);
          break;
        }
      }

      ++v10;
      v11 += 8;
      v9 = v21 + 1;
    }

    while (v10 < v13);
  }

  *(v3 + 8) = v22;
  return Errors;
}

char *__copy_keys_to_accelerator_block_invoke(void *a1, uint64_t a2)
{
  v17 = 0;
  v18 = 0;
  v3 = a1[5];
  if (!v3 || (v3 < a1[6] ? (v4 = v3 >= a1[7]) : (v4 = 0), v4))
  {
    v15 = *(a2 + 96);
    v3 = der_decode_key_value(v3, &v17, &v16, &v15);
    if (v3)
    {
      v5 = a1[9];
      v6 = *v5;
      v7 = *v5 + 8 * v5[1];
      v8 = (*v5 + 8 * *(*(a1[4] + 8) + 24));
      if (v8 < v7 && v8 >= v6)
      {
        v10 = v18;
        *v8 = v17 - *(a1[8] + 40);
        v8[1] = v10;
        ++*(*(a1[4] + 8) + 24);
        return 1;
      }
    }

    else
    {
      v3 = a1[5];
      v12 = a1[6];
      v13 = v3 + 64 > v12 || a1[7] > v3;
      if (!v13 && (!v3 || v3 < v12))
      {
        goto LABEL_21;
      }
    }
  }

  __break(0x5519u);
LABEL_21:
  v14 = (*(v3 + 32))(v3, "[%s]: %s\n", "copy_keys_to_accelerator_block_invoke", "fatal error when decoding key/value pair");
  return CEFreeIndexForContext(v14);
}

char *CEFreeIndexForContext(char **a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &Errors;
  }

  result = *a1;
  if (result < result + 64)
  {
    (*(result + 7))(result, a1[1], 8 * v1);
    a1[1] = 0;
    a1[2] = 0;
    return &Errors;
  }

  __break(0x5519u);
  return result;
}

void *CEAcquireManagedContext(uint64_t a1, void *a2, void *a3)
{
  if (!a3 || !*a2 || !a2[1] || !a2[2])
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
      return &unk_29EE6D8E0;
    }

    v11 = "The passed in arguments are invalid";
LABEL_11:
    v10(a1, "[%s]: %s\n", "CEAcquireManagedContext", v11);
    return &unk_29EE6D8E0;
  }

  if (!*(a1 + 8))
  {
    v10 = *(a1 + 24);
    if (!v10)
    {
      return &unk_29EE6D8E0;
    }

    v11 = "This context's runtime does not support allocating";
    goto LABEL_11;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = *a2;
  v13 = a2[2];
  result = CEAcquireUnmanagedContext(a1, &v12, &v14);
  if (result == Errors)
  {
    BYTE8(v17) = 1;
    v6 = (*(a1 + 8))(a1, 64);
    *a3 = v6;
    if (v6)
    {
      v7 = v14;
      v8 = v15;
      v9 = v17;
      v6[2] = v16;
      v6[3] = v9;
      *v6 = v7;
      v6[1] = v8;
      return Errors;
    }

    else
    {
      return &unk_29EE6D900;
    }
  }

  return result;
}

void **CEReleaseManagedContext(void **result)
{
  if (!result)
  {
    goto LABEL_19;
  }

  v1 = result;
  v2 = *result;
  if (!*result)
  {
LABEL_11:
    v6 = &kCENoError;
    return *v6;
  }

  v3 = *v2;
  v4 = *v2 + 64;
  if (!*(*v2 + 16))
  {
    v7 = *(v3 + 24);
    if (v7)
    {
      if (v3 >= v4)
      {
        goto LABEL_21;
      }

      v8 = "This context's runtime does not support freeing";
      goto LABEL_18;
    }

LABEL_19:
    v6 = &kCEAPIMisuse;
    return *v6;
  }

  if ((v2[7] & 1) == 0)
  {
    v7 = *(v3 + 24);
    if (v7)
    {
      if (v3 >= v4)
      {
        goto LABEL_21;
      }

      v8 = "Trying to release an unmanaged context";
LABEL_18:
      v7(v3, "[%s]: %s\n", "CEReleaseManagedContext", v8);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v2 < v2 + 8)
  {
    v5 = v2[2];
    if (v5)
    {
      if (v3 >= v4)
      {
        goto LABEL_21;
      }

      result = (*(v3 + 56))(*v2, v2[1], 8 * v5);
      v2[1] = 0;
      v2[2] = 0;
    }

    if (v3 < v4)
    {
      (*(v3 + 16))(v3, v2);
      *v1 = 0;
      goto LABEL_11;
    }
  }

LABEL_21:
  __break(0x5519u);
  return result;
}

void *CEContextQuery(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return &unk_29EE6D8F0;
  }

  v3 = a3;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  v10 = a1[2];
  for (i = *(a1 + 6); v3; --v3)
  {
    v12[0] = v8;
    v12[1] = v9;
    v12[2] = v10;
    v13 = i;
    der_vm_execute_nocopy(v12, a2, &v8);
    a2 += 256;
  }

  v6 = &kCENoError;
  if ((BYTE1(v10) & 1) == 0)
  {
    v6 = &kCEQueryCannotBeSatisfied;
  }

  return *v6;
}

__n128 CEConjureContextFromDER@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = 0;
  return result;
}

void *CEPrepareQuery(void *result, unint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 1;
    v7 = a3;
    v8 = 1;
    v9 = &kCENoError;
    while (1)
    {
      v10 = *a2;
      if ((*a2 & 0x4000000000000000) != 0)
      {
        v11 = v10 & 0xBFFFFFFFFFFFFFFFLL;
        v12 = (v10 & 0xBFFFFFFFFFFFFFFFLL) > 9;
        v13 = (1 << v10) & 0x35A;
        if (v12 || v13 == 0)
        {
LABEL_17:
          if (!v8)
          {
            break;
          }

          v9 = &kCEInvalidArgument;
          return *v9;
        }

        v15 = a2[2];
        if ((v5 & 0x100) != 0)
        {
          if (v15 >= 0xF0)
          {
            goto LABEL_17;
          }
        }

        else if ((v5 & (v15 > 0xEF)) != 0)
        {
          goto LABEL_17;
        }

        if (v5)
        {
          if (v15 > 0xF0)
          {
            __break(0x5519u);
            return result;
          }

          result = memcpy(a2 + 1, a2[1], a2[2]);
          a2[31] = v15;
          *a2 = v11;
        }
      }

      v8 = v6++ < a3;
      a2 += 32;
      if (!--v7)
      {
        return *v9;
      }
    }
  }

  v9 = &kCENoError;
  return *v9;
}

void *CESizeSerialization(void *result, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  v9 = 0;
  if (a2 <= 1 || *result != 7)
  {
    return &unk_29EE6D8F0;
  }

  v3 = &result[4 * a2];
  v4 = (v3 - 32);
  if (v3 < 0x20 || v4 < result)
  {
    goto LABEL_17;
  }

  if (*v4 != 8)
  {
    return &unk_29EE6D8F0;
  }

  v8 = &result[4 * a2];
  if ((result + 4) > v3 || result + 4 < result)
  {
LABEL_17:
    __break(0x5519u);
    return result;
  }

  v7 = result + 4;
  result = der_size_dictionary(result, &v7, &v9);
  if (result == Errors)
  {
    if (v7 == v8)
    {
      ccder_sizeof();
      *a3 = ccder_sizeof();
      return Errors;
    }

    else
    {
      return &unk_29EE6D910;
    }
  }

  return result;
}

uint64_t CESerializeWithOptions(uint64_t result, _DWORD *a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v25 = 0;
  v26 = 0;
  if (a5 > a6)
  {
    goto LABEL_37;
  }

  v11 = result;
  v25 = a5;
  v26 = a6;
  if (a6 > a5 && ((a4 - 1) & 0x8000000000000000) == 0)
  {
    v12 = a3 + 32 * a4;
    v13 = (v12 - 32);
    v14 = a4;
    do
    {
      if (v13 < a3 || (v13 + 4) > v12)
      {
        goto LABEL_37;
      }

      v15 = *v13;
      if (*v13 > 4)
      {
        switch(v15)
        {
          case 5:
            v16 = v13[2];
            break;
          case 7:
            v18 = v13[2];
            break;
          case 9:
            if (v13 >= v12 || __CFADD__(v13[1], v13[2]))
            {
              goto LABEL_37;
            }

            goto LABEL_21;
          default:
            goto LABEL_27;
        }

        result = ccder_blob_encode_tl();
        if ((result & 1) == 0)
        {
          return &unk_29EE6D8F0;
        }
      }

      else
      {
        if ((v15 - 2) < 2)
        {
          if (v13 >= v12 || __CFADD__(v13[1], v13[2]))
          {
            goto LABEL_37;
          }

LABEL_21:
          result = ccder_blob_encode_body_tl();
          if ((result & 1) == 0)
          {
            return &unk_29EE6D8F0;
          }

          goto LABEL_27;
        }

        if (v15 == 1)
        {
          v22 = 0;
          v23 = 0;
          v17 = v13[2];
          ccder_blob_reserve_tl();
          return &unk_29EE6D8F0;
        }

        if (v15 == 4)
        {
          result = der_encode_number(&v25, v13[1]);
          if ((result & 1) == 0)
          {
            return &unk_29EE6D8F0;
          }
        }
      }

LABEL_27:
      v13 -= 4;
    }

    while (v14-- > 1);
  }

  result = der_encode_number(&v25, 1uLL);
  if ((result & 1) == 0)
  {
    return &unk_29EE6D910;
  }

  if (!a4)
  {
LABEL_37:
    __break(0x5519u);
    return result;
  }

  v20 = *(a3 + 16);
  ccder_sizeof();
  ccder_sizeof();
  if ((ccder_blob_encode_tl() & 1) == 0)
  {
    return &unk_29EE6D910;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = CEValidateWithOptions(v11, a2, &v22, a5, a6);
  result = Errors;
  if (v21 != Errors)
  {
    cc_clear();
    return v21;
  }

  return result;
}

uint64_t CESerialize(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = 0;
  if (a4 <= a5)
  {
    return CESerializeWithOptions(result, &v5, a2, a3, a4, a5);
  }

  __break(0x5519u);
  return result;
}

void *CEContextIsSubset(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    v2 = *(a1 + 32);
    v11[1] = *(a1 + 16);
    v11[2] = v2;
    v11[0] = *a1;
    v12 = *(a1 + 48);
    v3 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v3;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    if (BYTE1(v2) == 1 && (BYTE1(v9) & 1) != 0)
    {
      memset(v13, 0, sizeof(v13));
      v4 = valuesAreAllowed(v11, v8, v13);
      v5 = &kCENoError;
      if (!v4)
      {
        v5 = &kCEQueryCannotBeSatisfied;
      }

      result = *v5;
    }

    else
    {
      result = &unk_29EE6D920;
    }
  }

  else
  {
    result = &unk_29EE6D8F0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t valuesAreAllowed(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 1;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = __valuesAreAllowed_block_invoke;
  v7[3] = &unk_29EE6D860;
  v7[6] = a3;
  v7[7] = a3 + 256;
  v7[8] = a3;
  v7[9] = v3;
  v7[10] = v4;
  v7[11] = v3;
  v7[4] = &v8;
  v7[5] = a2;
  v7[12] = a3;
  if (der_vm_iterate_b(a1, v7) == Errors)
  {
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
    *(v9 + 24) = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

unint64_t __valuesAreAllowed_block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v53 = *(a2 + 56);
  v54 = v4;
  v55 = *(a2 + 88);
  v56 = *(a2 + 104);
  der_vm_execute_nocopy(&v53, CESelectKeyOperation, &v57);
  v5 = der_vm_string_from_context(&v57);
  v7 = v6;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v8 = *(a2 + 72);
  v57 = *(a2 + 56);
  v58 = v8;
  v59 = *(a2 + 88);
  v60 = *(a2 + 104);
  result = der_vm_execute_nocopy(&v57, CESelectValueOperation, &v53);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v10 = a1[6];
  if (v10 >= a1[7] || v10 < a1[8])
  {
    goto LABEL_73;
  }

  v11 = a1[5];
  *v10 = 0x4000000000000009;
  v10[1] = v5;
  v10[2] = v7;
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  v60 = *(v11 + 48);
  v58 = v13;
  v59 = v14;
  v57 = v12;
  der_vm_execute_nocopy(&v57, v10, &v49);
  if ((BYTE1(v51) & 1) == 0)
  {
    result = a1[9];
    v30 = a1[10];
    if (result + 64 > v30 || a1[11] > result)
    {
      goto LABEL_73;
    }

    v31 = *(result + 24);
    if (!v31)
    {
      goto LABEL_28;
    }

    if (result >= v30)
    {
      goto LABEL_73;
    }

    v32 = "[%s]: subset validation failed, key not found in the superset '%.*s'\n";
LABEL_27:
    v31(result, v32, v15, v16, v17);
LABEL_28:
    v21 = 0;
    *(*(a1[4] + 8) + 24) = 0;
    return v21 & 1;
  }

  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  v18 = der_vm_CEType_from_context(&v57, 0);
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  result = der_vm_CEType_from_context(&v57, 0);
  v19 = result;
  if (v18 == 4)
  {
    v20 = a1[6];
    if (v20 >= a1[7] || v20 < a1[8])
    {
      goto LABEL_73;
    }

    *v20 = 3;
    *(v20 + 8) = 42;
    v21 = 1;
    *(v20 + 248) = 1;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    result = der_vm_execute_nocopy(&v45, v20, &v57);
    if (BYTE1(v59))
    {
      return v21 & 1;
    }
  }

  v22 = v18 == 4 || v18 == 2;
  if (!v22 || v19 != 4)
  {
    if (v18 == 5 && v19 == 5)
    {
      v57 = v49;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v33 = der_vm_BOOL_from_context(&v57);
      v57 = v53;
      v58 = v54;
      v59 = v55;
      v60 = v56;
      *(*(a1[4] + 8) + 24) = v33 ^ der_vm_BOOL_from_context(&v57) ^ 1;
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        result = a1[9];
        v35 = a1[10];
        if (result + 64 > v35 || a1[11] > result)
        {
          goto LABEL_73;
        }

        v36 = *(result + 24);
        if (v36)
        {
          if (result >= v35)
          {
            goto LABEL_73;
          }

          v37 = "[%s]: subset validation failed, BOOL value of key '%.*s' not allowed\n";
LABEL_69:
          v36(result, v37, v34);
          goto LABEL_70;
        }

        goto LABEL_72;
      }

      goto LABEL_63;
    }

    if ((v18 & 0xE) == 2 && v19 == 3)
    {
      v38 = a1[6];
      if (v38 && (v38 >= a1[7] || v38 < a1[8]))
      {
        goto LABEL_73;
      }

      v57 = v53;
      v58 = v54;
      v59 = v55;
      v60 = v56;
      v39 = der_vm_integer_from_context(&v57);
      *v38 = 10;
      v38[1] = v39;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      der_vm_execute_nocopy(&v45, v38, &v57);
      *(*(a1[4] + 8) + 24) = BYTE1(v59);
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        result = a1[9];
        v40 = a1[10];
        if (result + 64 > v40 || a1[11] > result)
        {
          goto LABEL_73;
        }

        v36 = *(result + 24);
        if (v36)
        {
          if (result >= v40)
          {
            goto LABEL_73;
          }

          v37 = "[%s]: subset validation failed, integer value of key '%.*s' not allowed\n";
          goto LABEL_69;
        }

LABEL_72:
        v21 = 0;
        return v21 & 1;
      }

      goto LABEL_63;
    }

    if (v18 == 2 && v19 == 2)
    {
      v41 = a1[12];
      *&v45 = 0;
      *(&v45 + 1) = &v45;
      *&v46 = 0x2000000000;
      BYTE8(v46) = 1;
      *&v57 = MEMORY[0x29EDCA5F8];
      *(&v57 + 1) = 0x40000000;
      *&v58 = __valueArrayIsAllowed_block_invoke;
      *(&v58 + 1) = &unk_29EE6D8B0;
      *&v59 = &v45;
      *(&v59 + 1) = &v49;
      v60 = v41;
      if (der_vm_iterate_b(&v53, &v57) == Errors)
      {
        v42 = *(*(&v45 + 1) + 24);
      }

      else
      {
        v42 = 0;
        *(*(&v45 + 1) + 24) = 0;
      }

      _Block_object_dispose(&v45, 8);
      *(*(a1[4] + 8) + 24) = v42 & 1;
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        result = a1[9];
        v44 = a1[10];
        if (result + 64 > v44 || a1[11] > result)
        {
          goto LABEL_73;
        }

        v36 = *(result + 24);
        if (v36)
        {
          if (result >= v44)
          {
            goto LABEL_73;
          }

          v37 = "[%s]: subset validation failed, string array of key '%.*s' not allowed\n";
          goto LABEL_69;
        }

        goto LABEL_72;
      }

LABEL_63:
      v21 = 1;
      return v21 & 1;
    }

    if (v18 == 1 && v19 == 1)
    {
      *(*(a1[4] + 8) + 24) = valuesAreAllowed(&v53, &v49, a1[12]);
      goto LABEL_70;
    }

    if (v18 == v19)
    {
      goto LABEL_28;
    }

    result = a1[9];
    v43 = a1[10];
    if (result + 64 > v43 || a1[11] > result)
    {
      goto LABEL_73;
    }

    v31 = *(result + 24);
    if (!v31)
    {
      goto LABEL_28;
    }

    if (result >= v43)
    {
      goto LABEL_73;
    }

    v32 = "[%s]: subset validation failed, type mismatch for key '%.*s' %lu != %lu \n";
    goto LABEL_27;
  }

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  result = der_vm_string_from_context(&v57);
  v24 = v23;
  v25 = a1[6];
  if (v25 >= a1[7] || v25 < a1[8])
  {
    goto LABEL_73;
  }

  *v25 = 0x4000000000000006;
  v25[1] = result;
  v25[2] = v24;
  v45 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  der_vm_execute_nocopy(&v45, v25, &v57);
  *(*(a1[4] + 8) + 24) = BYTE1(v59);
  if (*(*(a1[4] + 8) + 24))
  {
    goto LABEL_70;
  }

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v27 = der_vm_string_from_context(&v57);
  result = a1[9];
  v28 = a1[10];
  if (result + 64 > v28 || a1[11] > result)
  {
    goto LABEL_73;
  }

  v29 = *(result + 24);
  if (!v29)
  {
LABEL_70:
    v21 = *(*(a1[4] + 8) + 24);
    return v21 & 1;
  }

  if (result < v28)
  {
    v29(result, "[%s]: subset validation failed, key %.*s with value '%.*s' not allowed\n", "valuesAreAllowed_block_invoke", v7, v5, v26, v27);
    goto LABEL_70;
  }

LABEL_73:
  __break(0x5519u);
  return result;
}

uint64_t __valueArrayIsAllowed_block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 116);
  if (v3 == 1)
  {
    *(*(a1[4] + 8) + 24) = 0;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v23[2] = __valueArrayIsAllowed_block_invoke_2;
    v23[3] = &unk_29EE6D888;
    v19 = a1[5];
    v20 = a1[6];
    v23[5] = a2;
    v23[6] = v20;
    v23[4] = a1[4];
    der_vm_iterate_b(v19, v23);
  }

  else
  {
    if (v3 == 3)
    {
      v28 = *(a2 + 56);
      v13 = *(a2 + 88);
      v29 = *(a2 + 72);
      v30 = v13;
      v31 = *(a2 + 104);
      v14 = der_vm_integer_from_context(&v28);
      v15 = a1[5];
      v12 = a1[6];
      *v12 = 10;
      v12[1] = v14;
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v27 = *(v15 + 6);
      v25 = v17;
      v26 = v18;
      v24 = v16;
    }

    else
    {
      if (v3 != 4)
      {
        v21 = 0;
        *(*(a1[4] + 8) + 24) = 0;
        return v21 & 1;
      }

      v28 = *(a2 + 56);
      v4 = *(a2 + 88);
      v29 = *(a2 + 72);
      v30 = v4;
      v31 = *(a2 + 104);
      v5 = der_vm_string_from_context(&v28);
      v6 = a1[5];
      v7 = a1[6];
      *v7 = 0x4000000000000006;
      v7[1] = v5;
      v7[2] = v8;
      v9 = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v27 = *(v6 + 6);
      v25 = v10;
      v26 = v11;
      v24 = v9;
      v12 = v7;
    }

    der_vm_execute_nocopy(&v24, v12, &v28);
    *(*(a1[4] + 8) + 24) = BYTE1(v30);
  }

  v21 = *(*(a1[4] + 8) + 24);
  return v21 & 1;
}

uint64_t __valueArrayIsAllowed_block_invoke_2(void *a1, uint64_t a2)
{
  if (*(a2 + 116) != 1)
  {
    return 1;
  }

  v3 = valuesAreAllowed(a1[5] + 56, a2 + 56, a1[6]);
  result = 1;
  if (v3)
  {
    *(*(a1[4] + 8) + 24) = 1;
    return 0;
  }

  return result;
}

const char *CEGetErrorString(void *a1)
{
  if (a1 >= Errors)
  {
    v1 = a1 >= qword_29EE6D930;
    v2 = a1 == qword_29EE6D930;
  }

  else
  {
    v1 = 1;
    v2 = 0;
  }

  if (!v2 && v1)
  {
    return "Not a CoreEntitlements error!";
  }

  else
  {
    return a1[1];
  }
}

void *CECreateStringOpInplace(void *a1, uint64_t a2, void *__src, size_t __n)
{
  v5 = a1;
  *a1 = a2;
  if ((a2 & 0x4000000000000000) != 0)
  {
    a1[1] = __src;
    v6 = a1 + 2;
  }

  else
  {
    if (__n > 0xEF)
    {
      return 0;
    }

    v6 = a1 + 31;
    memcpy(a1 + 1, __src, __n);
  }

  *v6 = __n;
  return v5;
}

void *CECreateNumericOpInplace(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t der_vm_block_trampoline(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = *(v1 + 16);
  v3 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v3;
  v4 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v4;
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  return v2(v1, v8);
}

uint64_t der_decode_data(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_data", "Unknown data encoding");
    }
  }

  return v4;
}

uint64_t der_decode_numeric_string(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_numeric_string", "Unknown numeric string encoding");
    }
  }

  return v4;
}

uint64_t der_decode_utc_time(uint64_t a1, void *a2)
{
  v4 = ccder_blob_decode_range();
  if (v4)
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_utc_time", "Unknown UTC Time encoding");
    }
  }

  return v4;
}

uint64_t der_decode_entitlements(uint64_t a1, void *a2)
{
  if (ccder_blob_decode_range() & 1) != 0 || (ccder_blob_decode_range())
  {
    if (a2)
    {
      *a2 = 0;
      a2[1] = 0;
    }

    return 1;
  }

  else
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      v5(a1, "[%s]: %s\n", "der_decode_entitlements", "Unknown DER entitlements encoding");
    }

    return 0;
  }
}

void *der_size_element(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return &unk_29EE6D8F0;
  }

  v5 = *a1;
  if (*a1 <= 4)
  {
    switch(v5)
    {
      case 1:
        a1[2] = 1;
        break;
      case 2:
        v18 = a1[2];
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

        *a3 = ccder_sizeof();
        a1[2] = v19;
        return Errors;
      default:
        return &unk_29EE6D8F0;
    }

LABEL_28:
    *a3 = ccder_sizeof();
    return Errors;
  }

  switch(v5)
  {
    case 5:
      while (1)
      {
        result = *a2;
        v15 = *(a2 + 8);
        if (*a2 >= v15)
        {
          return &unk_29EE6D910;
        }

        v16 = result + 4;
        if ((result + 4) > v15 || result >= v16)
        {
          break;
        }

        *a2 = v16;
        if (!result)
        {
          return &unk_29EE6D910;
        }

        if (*result == 6)
        {
          *a3 = ccder_sizeof();
          a1[2] = 0;
          return Errors;
        }

        if (result >= v16)
        {
          break;
        }

        result = der_size_element();
        if (result != Errors)
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
      goto LABEL_28;
    default:
      return &unk_29EE6D8F0;
  }

  return result;
}

uint64_t der_size_dictionary(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = 0;
  v7 = *a2;
  v8 = a2[1];
  while (1)
  {
    if (v7 >= v8)
    {
      return &unk_29EE6D910;
    }

    v9 = (v7 + 32);
    if (v7 + 32 > v8 || v7 > v9)
    {
      break;
    }

    *a2 = v9;
    if (!v7)
    {
      return &unk_29EE6D910;
    }

    if (*v7 != 5)
    {
      if (*v7 == 8)
      {
        *a3 = ccder_sizeof();
        *(v5 + 16) = v6;
        return Errors;
      }

      return &unk_29EE6D910;
    }

    *(v7 + 24) = 1;
    if (v9 >= v8)
    {
      return &unk_29EE6D910;
    }

    v10 = v7 + 64;
    if (v7 + 64 > v8 || v9 > v10)
    {
      break;
    }

    *a2 = v10;
    if (v7 == -32 || *v9 != 3 || !*(v7 + 48))
    {
      return &unk_29EE6D910;
    }

    v11 = ccder_sizeof();
    result = 0;
    v15 = 0;
    if (v10 < v8)
    {
      v12 = v7 + 96;
      if (v7 + 96 > v8 || v10 > v12)
      {
        break;
      }

      *a2 = v12;
      result = v7 + 64;
    }

    result = der_size_element(result, a2, &v15);
    if (result != Errors)
    {
      return result;
    }

    v13 = *a2;
    v8 = a2[1];
    if (*a2 >= v8)
    {
      return &unk_29EE6D910;
    }

    v14 = v13 + 32;
    if (v13 + 32 > v8 || v13 > v14)
    {
      break;
    }

    *a2 = v14;
    if (!v13 || *v13 != 6)
    {
      return &unk_29EE6D910;
    }

    *(v13 + 24) = 1;
    *(v7 + 16) = v15 + v11;
    result = ccder_sizeof();
    v6 += result;
    v7 = v14;
  }

  __break(0x5519u);
  return result;
}

uint64_t der_encode_number(uint64_t a1, unint64_t a2)
{
  if (HIBYTE(a2) - 255 <= 0xFFFFFF01)
  {
    v2 = 9;
    v3 = 48;
    do
    {
      if ((v2 - 2) < 2)
      {
        break;
      }

      v4 = a2 >> v3;
      --v2;
      v3 -= 8;
    }

    while (HIBYTE(a2) == v4);
  }

  return ccder_blob_reserve_tl();
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
  result = der_decode_string(v4, &v15);
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
  result = der_decode_number(v5, &v10);
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
  result = der_decode_string(v4, &__s2);
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

uint64_t der_vm_context_create@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[3] = a2;
  a6[4] = 256;
  *(a6 + 32) = a3;
  if (a4 > a5)
  {
    __break(0x5519u);
  }

  else
  {
    a6[5] = a4;
    a6[6] = a5;
    a6[1] = 0;
    a6[2] = 0;
  }

  return result;
}

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

unint64_t der_vm_execute_seq_nocopy@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(result + 32);
  *(a4 + 48) = *(result + 48);
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = *(a4 + 16);
      v9[0] = *a4;
      v9[1] = v8;
      v9[2] = *(a4 + 32);
      v10 = *(a4 + 48);
      result = der_vm_execute_nocopy(v9, a2, a4);
      a2 += 256;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t der_vm_iterate_nocopy(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  if (!a3 || (*(a1 + 33) & 1) == 0)
  {
    return &unk_29EE6D8F0;
  }

  v6 = *a1;
  v7 = *a1 + 64;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  *v29 = *(a1 + 40);
  result = der_decode_next(v6, &v32, 0, &v30, v29);
  if (result)
  {
    v9 = a1[1];
    v18 = *a1;
    v19 = v9;
    v20 = a1[2];
    v21 = *(a1 + 6);
    result = der_vm_CEType_from_ccder_tag(&v18, v32);
    if ((result - 3) < 0xFFFFFFFE)
    {
      v10 = *(v6 + 24);
      if (!v10)
      {
        return &unk_29EE6D8F0;
      }

      if (v6 < v7)
      {
        v10(v6, "[%s]: %s\n", "der_vm_iterate_nocopy", "iteration over a non-iterable type");
        return &unk_29EE6D8F0;
      }

      goto LABEL_23;
    }

    v13 = result;
    while (1)
    {
      if (v30 >= v31)
      {
        return Errors;
      }

      v14 = a1[1];
      v15 = a1[2];
      v18 = *a1;
      v19 = v14;
      v20 = v15;
      v21 = *(a1 + 6);
      v22 = v18;
      v23 = v14;
      v24 = v15;
      v25 = v21;
      v26 = v13;
      v27 = 0;
      v28 = a2;
      result = der_decode_next(*a1, &v32, &v24 + 1, 0, &v30);
      if ((result & 1) == 0)
      {
        break;
      }

      v16[0] = v22;
      v16[1] = v23;
      v16[2] = v24;
      v17 = v25;
      v27 = der_vm_CEType_from_ccder_tag(v16, v32);
      if ((a3(&v18) & 1) == 0)
      {
        return Errors;
      }
    }

    v11 = *(v6 + 24);
    if (v11)
    {
      if (v6 < v7)
      {
        v12 = "encountered invalid element in an iterable";
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    return &unk_29EE6D910;
  }

  v11 = *(v6 + 24);
  if (!v11)
  {
    return &unk_29EE6D910;
  }

  if (v6 < v7)
  {
    v12 = "iterable decoding failure";
LABEL_12:
    v11(v6, "[%s]: %s\n", "der_vm_iterate_nocopy", v12);
    return &unk_29EE6D910;
  }

LABEL_23:
  __break(0x5519u);
  return result;
}

__int128 *der_vm_iterate_count(__int128 *result, uint64_t a2)
{
  if ((result + 56) < result)
  {
    __break(0x5519u);
  }

  else
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = __der_vm_iterate_count_block_invoke;
    v4[3] = &__block_descriptor_tmp_7;
    v4[4] = a2;
    return der_vm_iterate_b(result, v4);
  }

  return result;
}

uint64_t __der_vm_iterate_count_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    ++*v1;
  }

  return 1;
}

uint64_t der_vm_data_from_context(uint64_t a1)
{
  v1 = *a1;
  v4[0] = 0;
  v4[1] = 0;
  v3 = *(a1 + 40);
  result = der_decode_data(v1, v4);
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

uint64_t der_vm_buffer_from_context(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v5 = 0;
  v3 = *(a1 + 40);
  result = der_decode_next(v1, 0, 0, &v4, &v3);
  if (result)
  {
    if (v5 == v4)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (v1 < v1 + 64)
    {
      result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_buffer_from_context", "Failed during buffer decoding");
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t der_vm_container_from_context(uint64_t a1)
{
  v1 = *a1;
  v4 = 0;
  v5 = 0;
  v3 = *(a1 + 40);
  result = der_decode_next(v1, 0, &v4, 0, &v3);
  if (result)
  {
    if (v5 == v4)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (v1 < v1 + 64)
    {
      result = (*(v1 + 32))(v1, "[%s]: %s\n", "der_vm_container_from_context", "Failed during buffer decoding");
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t der_vm_select_BOOL_for_key(__int128 *a1, char *__s, _BYTE *a3)
{
  v50 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v5 = 0;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18[0] = 0x4000000000000001;
    v18[1] = __s;
    v33 = 0;
    v18[2] = strlen(__s);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = xmmword_2977473E0;
    v35 = 0u;
    v6 = a1[1];
    v10 = *a1;
    v11 = v6;
    v12 = a1[2];
    v13 = *(a1 + 6);
    do
    {
      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      der_vm_execute_nocopy(&v14, &v18[v5], &v10);
      v5 += 32;
    }

    while (v5 != 64);
    v7 = BYTE1(v12);
    if (a3 && (BYTE1(v12) & 1) != 0)
    {
      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      *a3 = der_vm_BOOL_from_context(&v14);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7 & 1;
}

uint64_t der_vm_select_int_for_key(__int128 *a1, char *__s, uint64_t *a3)
{
  v50 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v5 = 0;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18[0] = 0x4000000000000001;
    v18[1] = __s;
    v33 = 0;
    v18[2] = strlen(__s);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v34 = xmmword_2977473F0;
    v35 = 0u;
    v6 = a1[1];
    v10 = *a1;
    v11 = v6;
    v12 = a1[2];
    v13 = *(a1 + 6);
    do
    {
      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      der_vm_execute_nocopy(&v14, &v18[v5], &v10);
      v5 += 32;
    }

    while (v5 != 64);
    v7 = BYTE1(v12);
    if (a3 && (BYTE1(v12) & 1) != 0)
    {
      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      *a3 = der_vm_integer_from_context(&v14);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7 & 1;
}

uint64_t der_vm_string_is_allowed_for_key(__int128 *a1, char *__s, const char *a3)
{
  v3 = 0;
  v50 = *MEMORY[0x29EDCA608];
  if (__s && a3)
  {
    v6 = 0;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16[0] = 0x4000000000000001;
    v16[1] = __s;
    v16[2] = strlen(__s);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v31 = 0;
    v32 = 0x4000000000000006;
    v33 = a3;
    v34 = strlen(a3);
    v49 = 0;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    v12 = a1[2];
    v13 = *(a1 + 6);
    do
    {
      v14[0] = v10;
      v14[1] = v11;
      v14[2] = v12;
      v15 = v13;
      der_vm_execute_nocopy(v14, &v16[v6], &v10);
      v6 += 32;
    }

    while (v6 != 64);
    v3 = BYTE1(v12);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3 & 1;
}

uint64_t der_vm_type_for_key(__int128 *a1, char *__s, _DWORD *a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17[0] = 0x4000000000000001;
    v17[1] = __s;
    v32 = 0;
    v17[2] = strlen(__s);
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v5 = a1[1];
    v9 = *a1;
    v10 = v5;
    v11 = a1[2];
    v12 = *(a1 + 6);
    der_vm_execute_nocopy(&v9, v17, &v13);
    v6 = BYTE1(v15);
    if (a3 && (BYTE1(v15) & 1) != 0)
    {
      v9 = v13;
      v10 = v14;
      v11 = v15;
      v12 = v16;
      *a3 = der_vm_CEType_from_context(&v9, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6 & 1;
}

uint64_t der_vm_key_is_present(uint64_t a1, char *a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return der_vm_type_for_key(v4, a2, 0);
}

void *serializeId(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    *&v24 = 2;
    *(&v24 + 1) = [v4 UTF8String];
    v25 = [v4 lengthOfBytesUsingEncoding:4];
    LOBYTE(v26) = 0;
    std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v24);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v3;
      v9 = CFGetTypeID(v8);
      if (v9 == CFBooleanGetTypeID())
      {
        *&v24 = 1;
        *(&v24 + 1) = [v8 BOOLValue];
        v25 = 0;
        LOBYTE(v26) = 0;
        std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v24);
      }

      else
      {
        *&v24 = 4;
        *(&v24 + 1) = [v8 longLongValue];
        v25 = 0;
        LOBYTE(v26) = 0;
        std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v24);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = serializeDict(v3, a2);
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v3;
        v25 = 0;
        v26 = 0;
        v24 = 5uLL;
        std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v24);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:&v24 count:16];
        if (v12)
        {
          v13 = *v21;
          while (2)
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              if (!v15 || serializeId(v15, a2) != Errors)
              {

                goto LABEL_26;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v20 objects:&v24 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v18 = 0;
        v19 = 0;
        v17 = 6uLL;
        std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v17);
LABEL_26:

        goto LABEL_4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = &unk_29EE6D910;
        goto LABEL_5;
      }

      v16 = v3;
      *&v24 = 9;
      *(&v24 + 1) = [v16 bytes];
      v25 = [v16 length];
      LOBYTE(v26) = 0;
      std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v24);
    }
  }

LABEL_4:
  v5 = Errors;
LABEL_5:

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void std::vector<CESerializedElement>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<CESerializedElement>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void *serializeDict(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = a1;
  v24 = 0;
  v25 = 0;
  v23 = 7uLL;
  std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v23);
  v4 = MEMORY[0x29EDB8DE8];
  v5 = [v3 allKeys];
  v6 = [v4 arrayWithArray:v5];

  [v6 sortUsingSelector:sel_compare_];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v8)
  {
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v24 = 0;
      v25 = 0;
      v23 = 5uLL;
      std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v23);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v12 = v11;
      *&v23 = 3;
      v13 = v12;
      *(&v23 + 1) = [v12 UTF8String];
      v24 = [v12 lengthOfBytesUsingEncoding:4];
      LOBYTE(v25) = 0;
      std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v23);
      v14 = [v3 objectForKeyedSubscript:v12];
      v15 = v14;
      if (!v14)
      {
        v16 = &unk_29EE6D910;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      v16 = serializeId(v14, a2);
      if (v16 != Errors)
      {
        goto LABEL_14;
      }

      v24 = 0;
      v25 = 0;
      v23 = 6uLL;
      std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v23);

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v16 = &unk_29EE6D910;
    goto LABEL_15;
  }

LABEL_11:

  v24 = 0;
  v25 = 0;
  v23 = 8uLL;
  std::vector<CESerializedElement>::push_back[abi:ne200100](a2, &v23);
  v16 = Errors;
LABEL_16:

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE6D7D8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void *CESerializeCFDictionaryWithOptions(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v7 = serializeDict(a3, &__p);
  v8 = __p;
  if (v7 == Errors)
  {
    v13 = 0;
    v9 = (v15 - __p) >> 5;
    v7 = CESizeSerialization(__p, v9, &v13);
    if (v7 == Errors)
    {
      v10 = v13;
      v11 = [MEMORY[0x29EDB8DF8] dataWithLength:v13];
      v7 = CESerializeWithOptions(a1, a2, v8, v9, [v11 bytes], objc_msgSend(v11, "bytes") + v10);
      if (v7 == Errors)
      {
        *a4 = v11;
        v7 = Errors;
      }
    }
  }

  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_297746E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CEManagedContextFromCFData(void *a1, CFDataRef theData, void *a3)
{
  v10 = 0uLL;
  v11 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  result = CFDataGetLength(theData);
  LODWORD(v8) = 0;
  if (result < 0)
  {
    __break(0x5519u);
  }

  else
  {
    result = CEValidateWithOptions(a1, &v8, &v10, BytePtr, &BytePtr[result]);
    if (result == Errors)
    {
      v8 = v10;
      v9 = v11;
      return CEAcquireManagedContext(a1, &v8, a3);
    }
  }

  return result;
}

void *CEManagedContextFromCFDataWithOptions(void *a1, _DWORD *a2, CFDataRef theData, void *a4)
{
  v13 = 0uLL;
  v14 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  result = CEValidateWithOptions(a1, a2, &v13, BytePtr, &BytePtr[Length]);
  if (result == Errors)
  {
    v11 = v13;
    v12 = v14;
    return CEAcquireManagedContext(a1, &v11, a4);
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}