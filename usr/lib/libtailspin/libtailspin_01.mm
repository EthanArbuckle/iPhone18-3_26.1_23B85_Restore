BOOL sub_22EE93210(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE93308((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_22EE9328C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_22EE934C0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_22EE93308(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_28;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 5) && v10 - 4 >= a1 + v8[3] - *a2)
        {
          if (v9 < 9)
          {
            goto LABEL_28;
          }

          if (!v8[4] || (result = 0, v11 = *(a2 + 8), v11 >= 5) && v11 - 4 >= a1 + v8[4] - *a2)
          {
            if (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 8), v12 >= 5) && v12 - 4 >= a1 + v8[5] - *a2) && (v9 < 0xD || (!v8[6] || (result = 0, v13 = *(a2 + 8), v13 >= 9) && v13 - 8 >= a1 + v8[6] - *a2) && (v9 < 0xF || (v14 = v8[7]) == 0 || (result = 0, v15 = *(a2 + 8), v15 >= 5) && v15 - 4 >= a1 + v14 - *a2)))
            {
LABEL_28:
              --*(a2 + 16);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE934C0(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 9) && v7 - 8 >= a1 + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 8), v9 >= 9) && v9 - 8 >= a1 + v8 - *a2))
    {
      result = sub_22EE91380(a1, a2, 8u);
      if (result)
      {
        v10 = (a1 - *a1);
        if (*v10 >= 9u && (v11 = v10[4]) != 0)
        {
          v12 = (a1 + v11 + *(a1 + v11));
        }

        else
        {
          v12 = 0;
        }

        result = sub_22EE91B8C(a2, v12);
        if (result)
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = (a1 + v14 + *(a1 + v14));
            }

            else
            {
              v15 = 0;
            }

            result = sub_22EE91B8C(a2, v15);
            if (result)
            {
              result = sub_22EE91380(a1, a2, 0xCu);
              if (result)
              {
                v16 = (a1 - *a1);
                if (*v16 < 0xDu || (v17 = v16[6]) == 0 || (result = sub_22EE93308((a1 + v17 + *(a1 + v17)), a2), result))
                {
                  result = sub_22EE91380(a1, a2, 0xEu);
                  if (result)
                  {
                    v18 = *a1;
                    v19 = -v18;
                    v20 = (a1 - v18);
                    if (*v20 >= 0xFu)
                    {
                      v21 = v20[7];
                      if (v21)
                      {
                        result = sub_22EE9158C(a2, (a1 + v21 + *(a1 + v21)), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v19 = -*a1;
                      }
                    }

                    v22 = (a1 + v19);
                    if (*v22 >= 0xFu && (v23 = v22[7]) != 0)
                    {
                      v24 = a1 + v23 + *(a1 + v23);
                    }

                    else
                    {
                      v24 = 0;
                    }

                    result = sub_22EE9328C(a2, v24);
                    if (result)
                    {
                      v25 = (a1 - *a1);
                      if (*v25 < 0x11u || (v26 = v25[8]) == 0 || (result = 0, v27 = *(a2 + 8), v27 >= 9) && v27 - 8 >= a1 + v26 - *a2)
                      {
                        --*(a2 + 16);
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_22EE93740(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE91380(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        v8 = (a1 - *a1);
        v9 = *v8;
        if (v9 < 7 || (!v8[3] || (result = 0, v10 = *(a2 + 8), v10 >= 9) && v10 - 8 >= a1 + v8[3] - *a2) && (v9 < 9 || (v11 = v8[4]) == 0 || (result = 0, v12 = *(a2 + 8), v12 >= 9) && v12 - 8 >= a1 + v11 - *a2))
        {
          result = sub_22EE91380(a1, a2, 0xAu);
          if (result)
          {
            v13 = (a1 - *a1);
            if (*v13 < 0xBu || (v14 = v13[5]) == 0 || (result = sub_22EE9158C(a2, (a1 + v14 + *(a1 + v14)), 1uLL, 0)))
            {
              --*(a2 + 16);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE938A0(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    result = sub_22EE9397C(a1, a2, 4u);
    if (result)
    {
      v5 = (a1 - *a1);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = (a1 + v6 + *(a1 + v6));
      }

      else
      {
        v7 = 0;
      }

      result = sub_22EE91B8C(a2, v7);
      if (result)
      {
        result = sub_22EE91380(a1, a2, 6u);
        if (result)
        {
          v8 = (a1 - *a1);
          if (*v8 < 7u || (v9 = v8[3]) == 0 || (result = sub_22EE92EF4((a1 + v9 + *(a1 + v9)), a2), result))
          {
            --*(a2 + 16);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_22EE939D8(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 8), v7 >= 2) && v7 - 1 >= a1 + v6 - *a2)
    {
      result = sub_22EE91380(a1, a2, 6u);
      if (result)
      {
        v8 = *a1;
        v9 = -v8;
        v10 = (a1 - v8);
        v11 = *v10;
        if (v11 < 7)
        {
          if (v11 < 5)
          {
LABEL_17:
            v14 = (a1 + v9);
            if (*v14 < 9u || (v15 = v14[4]) == 0 || (result = 0, v16 = *(a2 + 8), v16 >= 9) && v16 - 8 >= a1 + v15 - *a2)
            {
              --*(a2 + 16);
              return 1;
            }

            return result;
          }
        }

        else if (v10[3])
        {
          v12 = (a1 + v10[3] + *(a1 + v10[3]));
LABEL_12:
          v13 = v10[2];
          if (v13 && v12 && *(a1 + v13) == 1)
          {
            result = sub_22EE9230C(v12, a2);
            if (!result)
            {
              return result;
            }

            v9 = -*a1;
          }

          goto LABEL_17;
        }

        v12 = 0;
        goto LABEL_12;
      }
    }
  }

  return result;
}

BOOL sub_22EE93B1C(int *a1, uint64_t a2)
{
  result = sub_22EE914D4(a2, a1);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = 0, v7 = *(a2 + 8), v7 >= 5) && v7 - 4 >= a1 + v6 - *a2)
    {
      result = sub_22EE91380(a1, a2, 6u);
      if (result)
      {
        v8 = (a1 - *a1);
        if (*v8 >= 7u && (v9 = v8[3]) != 0)
        {
          v10 = (a1 + v9 + *(a1 + v9));
        }

        else
        {
          v10 = 0;
        }

        result = sub_22EE91B8C(a2, v10);
        if (result)
        {
          --*(a2 + 16);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22EE93BF4()
{
  qword_27DA9D3C0 = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

void sub_22EE93C34(uint64_t a1)
{
  dispatch_source_get_data(*(a1 + 32));
  os_unfair_lock_lock(&unk_27DA9D3C8);
  v2 = qword_27DA9D3C0;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *__error();
  v6 = sub_22EE82CE0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      sub_22EEA8EF8((a1 + 40));
    }

    *__error() = v5;
    v8 = qword_27DA9D3C0;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [v8 setObject:0 forKeyedSubscript:v9];
  }

  else
  {
    if (v7)
    {
      sub_22EEA8F74((a1 + 40));
    }

    *__error() = v5;
  }

  os_unfair_lock_unlock(&unk_27DA9D3C8);
  dispatch_source_cancel(*(a1 + 32));
}

void sub_22EE93DC4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

id tailspin_config_copy_description(uint64_t *a1, int a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 1024);
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:4000];
  v7 = v6;
  v8 = *(a1 + 2);
  if (v8 == 3)
  {
    v9 = @"tailspin configuration is enforced by profile\n\n";
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    v9 = @"tailspin configuration is enforced by tasking\n\n";
LABEL_5:
    [v6 appendString:v9];
    LOBYTE(v10) = v4[168];
    v11 = @"disabled";
    if (v10)
    {
      v11 = @"enabled";
    }

    [v7 appendFormat:@"tailspin has been %@", v11];
    v12 = @"\n";
LABEL_8:
    [v7 appendString:v12];
    if ((v10 & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_9:
    [v7 appendString:@"tailspin has been enabled with the following configurations:\n"];
    v13 = v7;
    if (!a2)
    {
      goto LABEL_26;
    }

    v63 = -1;
    *__s1 = 0u;
    v65 = 0u;
    __n = 32;
    v61 = 4;
    if (sysctlbyname("ktrace.state", &v63, &v61, 0, 0))
    {
      v14 = *__error();
      v15 = sub_22EE82CE0();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA8FF0();
      }

      *__error() = v14;
      [v13 appendFormat:@"Unable to get current ktrace state: %d\n", *__error(), v60];
      goto LABEL_26;
    }

    if (sysctlbyname("ktrace.configured_by", __s1, &__n, 0, 0))
    {
      v19 = *__error();
      v20 = sub_22EE82CE0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA9074(&v63);
      }

      *__error() = v19;
      [v13 appendFormat:@"Unable to get current ktrace configured_by for state %d: %d\n", v63, *__error()];
      goto LABEL_26;
    }

    [v13 appendString:@"\tkdebug status is: "];
    if (v63 > 0)
    {
      if (v63 != 1)
      {
        if (v63 == 2)
        {
          [v13 appendString:@"background\n"];
          if (__n)
          {
            if (strncmp(__s1, "tailspind", __n))
            {
              [v13 appendFormat:@"\tWARNING: there is another background tracing client: '%s'\n", __s1, v60];
            }
          }
        }

        goto LABEL_26;
      }

      if (__n)
      {
        [v13 appendFormat:@"preempted [%s]\n", __s1, v60];
        goto LABEL_26;
      }

      v59 = @"preempted\n";
    }

    else
    {
      if (v63 != -1)
      {
        if (!v63)
        {
          [v13 appendString:@"uninitialized\n"];
LABEL_33:

          [v13 appendString:@"\n"];
          v25 = v13;
          v26 = *(a1 + 2);
          [v25 appendString:@"\tsampling:\n"];
          v27 = a1[1040];
          v28 = a1[1035];
          if (v27)
          {
            if (v27 >= 0x3B9ACA00)
            {
              v29 = v27 / 1000000000.0;
              v31 = @"s";
            }

            else if (v27 >= 0xF4240)
            {
              v29 = v27 / 1000000.0;
              v31 = @"ms";
            }

            else
            {
              v29 = v27;
              v30 = v27 >= 0x3E8;
              if (v27 >= 0x3E8)
              {
                v29 = v27 / 1000.0;
              }

              v31 = @"µs";
              if (!v30)
              {
                v31 = @"ns";
              }
            }

            [v25 appendFormat:@"\t    on-core sampling period        = %.2f %@", v29, v31];
          }

          else
          {
            v32 = " (full-system includes on-core)";
            if (!v28)
            {
              v32 = "";
            }

            [v25 appendFormat:@"\t    on-core sampling period        = disabled%s", v32, v60];
          }

          if ((v26 | 2) == 3)
          {
            v35 = @"\n";
          }

          else
          {
            if ((*a1 & 0x10) != 0)
            {
              v38 = v4 + 136;
              if (!v4[136])
              {
                v38 = "Unknown Process";
              }

              [v25 appendFormat:@" (overridden by %s)\n", v38];
              if (v28)
              {
                goto LABEL_60;
              }

              goto LABEL_73;
            }

            v35 = @" (default behavior)\n";
          }

          [v25 appendString:v35];
          if (v28)
          {
LABEL_60:
            if (v28 >= 0x3B9ACA00)
            {
              v36 = v28 / 1000000000.0;
              v37 = @"s";
            }

            else if (v28 >= 0xF4240)
            {
              v36 = v28 / 1000000.0;
              v37 = @"ms";
            }

            else
            {
              v36 = v28;
              if (v28 >= 0x3E8)
              {
                v36 = v28 / 1000.0;
              }

              v37 = @"µs";
              if (v28 < 0x3E8)
              {
                v37 = @"ns";
              }
            }

            [v25 appendFormat:@"\t    full-system sampling period    = %.2f %@", v36, v37];
LABEL_76:
            if ((v26 | 2) == 3)
            {
              v39 = @"\n";
            }

            else
            {
              if ((*a1 & 8) != 0)
              {
                v54 = v4 + 96;
                if (!v4[96])
                {
                  v54 = "Unknown Process";
                }

                [v25 appendFormat:@" (overridden by %s)\n", v54];
LABEL_79:

                v40 = v25;
                v41 = *(a1 + 2);
                [v40 appendString:@"\t    sampling options               = "];
                v42 = [MEMORY[0x277CCAB68] string];
                v43 = v42;
                v44 = *(a1 + 2099);
                if (v44)
                {
                  [v42 appendString:@"cswitch-sampling"];
                  v44 = *(a1 + 2099);
                  if ((v44 & 2) == 0)
                  {
LABEL_81:
                    if ((v44 & 4) == 0)
                    {
                      goto LABEL_90;
                    }

                    goto LABEL_87;
                  }
                }

                else if ((v44 & 2) == 0)
                {
                  goto LABEL_81;
                }

                if ([v43 length])
                {
                  [v43 appendString:{@", "}];
                }

                [v43 appendString:@"syscall-sampling"];
                if ((*(a1 + 2099) & 4) == 0)
                {
LABEL_90:
                  if (![v43 length])
                  {
                    [v43 appendString:@"none"];
                  }

                  [v40 appendString:v43];
                  if ((v41 | 2) == 3)
                  {
                    v45 = @"\n";
                  }

                  else
                  {
                    if ((*(a1 + 8396) & 0x20) != 0)
                    {
                      v55 = v4 + 208;
                      if (!v4[208])
                      {
                        v55 = "Unknown Process";
                      }

                      [v40 appendFormat:@" (overridden by %s)\n", v55];
LABEL_95:

                      v46 = v40;
                      v47 = *(a1 + 2);
                      if (v4[240])
                      {
                        v48 = @"enabled";
                      }

                      else
                      {
                        v48 = @"disabled";
                      }

                      v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"\t    CPUTrace                       = %@", v48];
                      [v46 appendString:v49];
                      if ((v47 | 2) == 3)
                      {
                        v50 = @"\n";
                      }

                      else
                      {
                        if ((*a1 & 0x40) != 0)
                        {
                          v57 = *(v4 + 241);
                          v56 = v4 + 241;
                          if (v57)
                          {
                            v58 = v56;
                          }

                          else
                          {
                            v58 = "Unknown Process";
                          }

                          [v46 appendFormat:@" (overridden by %s)\n", v58];
                          goto LABEL_101;
                        }

                        v50 = @" (default behavior)\n";
                      }

                      [v46 appendString:v50];
LABEL_101:

                      goto LABEL_102;
                    }

                    v45 = @" (default behavior)\n";
                  }

                  [v40 appendString:v45];
                  goto LABEL_95;
                }

LABEL_87:
                if ([v43 length])
                {
                  [v43 appendString:{@", "}];
                }

                [v43 appendString:@"vmfault-sampling"];
                goto LABEL_90;
              }

              v39 = @" (default behavior)\n";
            }

            [v25 appendString:v39];
            goto LABEL_79;
          }

LABEL_73:
          [v25 appendString:@"\t    full-system sampling period    = disabled"];
          goto LABEL_76;
        }

LABEL_26:
        v21 = *(a1 + 2);
        [v13 appendFormat:@"\t    buffer size = %zu MB", a1[1030]];
        if ((v21 | 2) == 3)
        {
          v22 = @"\n";
        }

        else
        {
          if ((*a1 & 2) != 0)
          {
            v33 = v4 + 56;
            if (!v4[56])
            {
              v33 = "Unknown Process";
            }

            [v13 appendFormat:@" (overridden by %s)\n", v33];
LABEL_29:
            v23 = MEMORY[0x2318F9C40](a1 + 12);
            [v13 appendFormat:@"\t    filter descriptor: %s", v23];
            if ((v21 | 2) == 3)
            {
              v24 = @"\n";
            }

            else
            {
              if (*a1)
              {
                v34 = v4 + 12;
                if (!v4[12])
                {
                  v34 = "Unknown Process";
                }

                [v13 appendFormat:@" (overridden by %s)\n", v34];
                goto LABEL_32;
              }

              v24 = @" (default behavior)\n";
            }

            [v13 appendString:v24];
LABEL_32:
            free(v23);
            goto LABEL_33;
          }

          v22 = @" (default behavior)\n";
        }

        [v13 appendString:v22];
        goto LABEL_29;
      }

      v59 = @"unknown\n";
    }

    [v13 appendString:v59];
    goto LABEL_26;
  }

  v10 = *(v4 + 168);
  v16 = *a1;
  v17 = @"disabled";
  if (v4[168])
  {
    v17 = @"enabled";
  }

  [v6 appendFormat:@"tailspin has been %@", v17];
  if ((v16 & 0x80) == 0)
  {
    v12 = @" (default behavior)\n";
    goto LABEL_8;
  }

  v18 = v4 + 169;
  if (!v4[169])
  {
    v18 = "Unknown Process";
  }

  [v7 appendFormat:@" (overridden by %s)\n", v18];
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_102:
  v51 = [v7 copy];

  objc_autoreleasePoolPop(v5);
  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

void *tailspin_config_create_with_current_state()
{
  v0 = sub_22EE82668();
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "tailspin_request_type", 1uLL);
  v2 = xpc_connection_send_message_with_reply_sync(v0, v1);

  if (MEMORY[0x2318F9DB0](v2) != MEMORY[0x277D86468])
  {
    if (MEMORY[0x2318F9DB0](v2) == MEMORY[0x277D86480])
    {
      v7 = *__error();
      v8 = sub_22EE82CE0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA910C(v2);
      }

      *__error() = v7;
      v3 = 0;
      *__error() = 61;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_16;
  }

  if (!xpc_dictionary_get_BOOL(v2, "tailspin_succeeded"))
  {
    v9 = *__error();
    v10 = sub_22EE82CE0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA9198();
    }

    goto LABEL_15;
  }

  length = 0;
  data = xpc_dictionary_get_data(v2, "tailspin_config", &length);
  if (length != 8472)
  {
    v9 = *__error();
    v10 = sub_22EE82CE0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA91D4();
    }

LABEL_15:

    v3 = 0;
    *__error() = v9;
    goto LABEL_16;
  }

  v5 = data;
  v6 = malloc_type_calloc(1uLL, 0x2118uLL, 0x10000409BDBFF31uLL);
  if (!v6)
  {
    sub_22EEA659C();
  }

  v3 = v6;
  memcpy(v6, v5, 0x2118uLL);
LABEL_16:

  return v3;
}

void *tailspin_config_create_with_config(const void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x2118uLL, 0x10000409BDBFF31uLL);
  if (!v2)
  {
    sub_22EEA659C();
  }

  return memcpy(v2, a1, 0x2118uLL);
}

char *tailspin_config_create_new()
{
  v0 = malloc_type_calloc(1uLL, 0x2118uLL, 0x10000409BDBFF31uLL);
  if (!v0)
  {
    sub_22EEA659C();
  }

  v1 = v0;
  *v0 = 187;
  sub_22EE949F4(v0 + 8361);
  sub_22EE949F4(v1 + 8248);
  sub_22EE949F4(v1 + 8204);
  sub_22EE949F4(v1 + 8288);
  sub_22EE949F4(v1 + 8328);
  sub_22EE949F4(v1 + 8400);
  return v1;
}

size_t sub_22EE949F4(char *__dst)
{
  if (qword_27DA9CE58 != -1)
  {
    sub_22EEA9210();
  }

  *__dst = 0u;
  *(__dst + 1) = 0u;

  return strlcpy(__dst, byte_27DA9CE60, 0x20uLL);
}

size_t tailspin_buffer_size_set(void *a1, uint64_t a2)
{
  if (!a2)
  {
    sub_22EEA659C();
  }

  a1[1030] = a2;
  *a1 |= 2uLL;
  v3 = (a1 + 1031);

  return sub_22EE949F4(v3);
}

double tailspin_buffer_size_reset(uint64_t a1)
{
  *(a1 + 8240) = tailspin_buffer_size_get_default();
  *a1 &= ~2uLL;
  result = 0.0;
  *(a1 + 8248) = 0u;
  *(a1 + 8264) = 0u;
  return result;
}

size_t tailspin_kdbg_filter_class_set(uint64_t a1, int a2, char a3)
{
  v3 = a2 << 8;
  v4 = a1 + 12;
  v5 = 0;
  if (a3)
  {
    do
    {
      *(v4 + ((v3 + v5) >> 3)) |= 1 << (v5 & 7);
      ++v5;
    }

    while (v5 != 256);
  }

  else
  {
    do
    {
      *(v4 + ((v3 + v5) >> 3)) &= ~(1 << (v5 & 7));
      ++v5;
    }

    while (v5 != 256);
  }

  *a1 |= 1uLL;
  return sub_22EE949F4((a1 + 8204));
}

BOOL tailspin_kdbg_filter_class_get(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 12 + 32 * a2) & 1) == 0)
  {
    return 0;
  }

  v3 = 1;
  do
  {
    v4 = v3;
    if (v3 == 256)
    {
      break;
    }

    ++v3;
  }

  while (((*(a1 + 12 + (((a2 << 8) + v4) >> 3)) >> (v4 & 7)) & 1) != 0);
  return (v4 - 1) > 0xFE;
}

BOOL tailspin_kdbg_filter_class_get_partial(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12 + 32 * a2))
  {
    return 1;
  }

  v2 = 1;
  do
  {
    v3 = v2;
    if (v2 == 256)
    {
      break;
    }

    ++v2;
  }

  while (((*(a1 + 12 + (((a2 << 8) + v3) >> 3)) >> (v3 & 7)) & 1) == 0);
  return (v3 - 1) < 0xFF;
}

size_t tailspin_kdbg_filter_subclass_set(uint64_t a1, int a2, int a3, int a4)
{
  v4 = 1 << (a3 & 7);
  v5 = a1 + ((a3 | (a2 << 8)) >> 3);
  if (a4)
  {
    v6 = *(v5 + 12) | v4;
  }

  else
  {
    v6 = *(v5 + 12) & ~v4;
  }

  *(v5 + 12) = v6;
  *a1 |= 1uLL;
  return sub_22EE949F4((a1 + 8204));
}

size_t tailspin_kdbg_filter_clear(uint64_t a1)
{
  bzero((a1 + 12), 0x2000uLL);
  *a1 |= 1uLL;

  return sub_22EE949F4((a1 + 8204));
}

double tailspin_kdbg_filter_reset(uint64_t a1)
{
  v2 = tailspin_kdbg_filter_get_default();
  memcpy((a1 + 12), v2, 0x2000uLL);
  *a1 &= ~1uLL;
  result = 0.0;
  *(a1 + 8204) = 0u;
  *(a1 + 8220) = 0u;
  return result;
}

size_t tailspin_sampling_option_set(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    v3 = *(a1 + 8396) | a2;
  }

  else
  {
    v3 = *(a1 + 8396) & ~a2;
  }

  *(a1 + 8396) = v3;
  *a1 |= 0x20uLL;
  return sub_22EE949F4((a1 + 8400));
}

size_t tailspin_sampling_options_clear(uint64_t a1)
{
  *(a1 + 8396) = 0;
  *a1 |= 0x20uLL;
  return sub_22EE949F4((a1 + 8400));
}

double tailspin_sampling_options_reset(uint64_t a1)
{
  *(a1 + 8396) = tailspin_sampling_options_get_default();
  *a1 &= ~0x20uLL;
  result = 0.0;
  *(a1 + 8400) = 0u;
  *(a1 + 8416) = 0u;
  return result;
}

size_t tailspin_oncore_sampling_period_set(uint64_t a1, unint64_t a2)
{
  if (a2 && tailspin_min_oncore_sampling_period_allowed() > a2)
  {
    sub_22EEA659C();
  }

  *(a1 + 8320) = a2;
  *a1 |= 0x10uLL;

  return sub_22EE949F4((a1 + 8328));
}

double tailspin_oncore_sampling_period_reset(uint64_t a1)
{
  *(a1 + 8320) = tailspin_oncore_sampling_period_get_default();
  *a1 &= ~0x10uLL;
  result = 0.0;
  *(a1 + 8328) = 0u;
  *(a1 + 8344) = 0u;
  return result;
}

size_t tailspin_full_sampling_period_set(uint64_t a1, unint64_t a2)
{
  if (a2 && tailspin_min_full_sampling_period_allowed() > a2)
  {
    sub_22EEA659C();
  }

  *(a1 + 8280) = a2;
  *a1 |= 8uLL;

  return sub_22EE949F4((a1 + 8288));
}

double tailspin_full_sampling_period_reset(uint64_t a1)
{
  *(a1 + 8280) = tailspin_full_sampling_period_get_default();
  *a1 &= ~8uLL;
  result = 0.0;
  *(a1 + 8288) = 0u;
  *(a1 + 8304) = 0u;
  return result;
}

size_t tailspin_enabled_set(uint64_t a1, char a2)
{
  *(a1 + 8360) = a2;
  *a1 |= 0x80uLL;
  return sub_22EE949F4((a1 + 8361));
}

double tailspin_enabled_reset(uint64_t a1)
{
  *(a1 + 8360) = tailspin_enabled_get_default();
  *a1 &= ~0x80uLL;
  result = 0.0;
  *(a1 + 8361) = 0u;
  *(a1 + 8377) = 0u;
  return result;
}

size_t tailspin_cputrace_enabled_set_with_options(uint64_t a1, char a2)
{
  *(a1 + 8432) = a2;
  *a1 |= 0x40uLL;
  return sub_22EE949F4((a1 + 8433));
}

double tailspin_cputrace_enabled_reset(uint64_t a1)
{
  *(a1 + 8432) = tailspin_cputrace_enabled_get_default();
  *a1 &= ~0x40uLL;
  result = 0.0;
  *(a1 + 8433) = 0u;
  *(a1 + 8449) = 0u;
  return result;
}

uint64_t tailspin_get_cputrace_handle()
{
  if (sub_22EE992A8())
  {
    v0 = sub_22EE82668();
    v1 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v1, "tailspin_request_type", 0xDEADCB01uLL);
    v2 = xpc_connection_send_message_with_reply_sync(v0, v1);
    if (MEMORY[0x2318F9DB0]() == MEMORY[0x277D86468])
    {
      if (xpc_dictionary_get_BOOL(v2, "tailspin_succeeded"))
      {
        length = 0;
        data = xpc_dictionary_get_data(v2, "tailspin_cputrace_session_data", &length);
        if (data)
        {
          v7 = data;
          v23 = 0;
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v8 = off_27DA9D3D8;
          v33 = off_27DA9D3D8;
          if (!off_27DA9D3D8)
          {
            v25 = MEMORY[0x277D85DD0];
            v26 = 3221225472;
            v27 = sub_22EE970E8;
            v28 = &unk_278870EC8;
            v29 = &v30;
            v9 = sub_22EE97138();
            v10 = dlsym(v9, "hwtrace_live_recording_session_init");
            *(v29[1] + 24) = v10;
            off_27DA9D3D8 = *(v29[1] + 24);
            v8 = v31[3];
          }

          _Block_object_dispose(&v30, 8);
          if (!v8)
          {
            sub_22EEA9474();
          }

          v8(v7, &v23);
          v11 = v23;
          if (v23)
          {
            v22 = 0;
            v30 = 0;
            v31 = &v30;
            v32 = 0x2020000000;
            v12 = off_27DA9D3E8;
            v33 = off_27DA9D3E8;
            if (!off_27DA9D3E8)
            {
              v25 = MEMORY[0x277D85DD0];
              v26 = 3221225472;
              v27 = sub_22EE9732C;
              v28 = &unk_278870EC8;
              v29 = &v30;
              v13 = sub_22EE97138();
              v14 = dlsym(v13, "hwtrace_live_recording_init_from_session");
              *(v29[1] + 24) = v14;
              off_27DA9D3E8 = *(v29[1] + 24);
              v12 = v31[3];
            }

            _Block_object_dispose(&v30, 8);
            if (!v12)
            {
              sub_22EEA9388();
            }

            v12(v11, &v22);
            v15 = v23;
            v30 = 0;
            v31 = &v30;
            v32 = 0x2020000000;
            v16 = off_27DA9D3F0;
            v33 = off_27DA9D3F0;
            if (!off_27DA9D3F0)
            {
              v25 = MEMORY[0x277D85DD0];
              v26 = 3221225472;
              v27 = sub_22EE9737C;
              v28 = &unk_278870EC8;
              v29 = &v30;
              v17 = sub_22EE97138();
              v18 = dlsym(v17, "hwtrace_live_recording_session_deinit");
              *(v29[1] + 24) = v18;
              off_27DA9D3F0 = *(v29[1] + 24);
              v16 = v31[3];
            }

            _Block_object_dispose(&v30, 8);
            if (!v16)
            {
              sub_22EEA9310();
            }

            v16(v15);
            v5 = v22;
            if (!v22)
            {
              v19 = *__error();
              v20 = sub_22EE82CE0();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                sub_22EEA929C();
              }

              *__error() = v19;
            }

            goto LABEL_29;
          }

          v3 = *__error();
          v4 = sub_22EE82CE0();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA9400();
          }
        }

        else
        {
          v3 = *__error();
          v4 = sub_22EE82CE0();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_22EEA94EC();
          }
        }
      }

      else
      {
        v3 = *__error();
        v4 = sub_22EE82CE0();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA9260();
        }
      }
    }

    else
    {
      v3 = *__error();
      v4 = sub_22EE82CE0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA9224();
      }
    }

    v5 = 0;
    *__error() = v3;
LABEL_29:

    return v5;
  }

  return 0;
}

void sub_22EE95494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tailspin_cputrace_handle_deinit(uint64_t a1)
{
  result = sub_22EE992A8();
  if (result)
  {
    if (a1)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v3 = off_27DA9D3F8;
      v10 = off_27DA9D3F8;
      if (!off_27DA9D3F8)
      {
        v4 = sub_22EE97138();
        v8[3] = dlsym(v4, "hwtrace_live_recording_deinit");
        off_27DA9D3F8 = v8[3];
        v3 = v8[3];
      }

      _Block_object_dispose(&v7, 8);
      if (!v3)
      {
        sub_22EEA95A8();
      }

      return v3(a1);
    }
  }

  else
  {
    v5 = *__error();
    v6 = sub_22EE82CE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA9528();
    }

    result = __error();
    *result = v5;
  }

  return result;
}

void sub_22EE955E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t tailspin_pause_cputrace(uint64_t a1)
{
  if (sub_22EE992A8())
  {
    if (!a1)
    {
      return 0;
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v2 = off_27DA9D400;
    v15 = off_27DA9D400;
    if (!off_27DA9D400)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_22EE9741C;
      v10[3] = &unk_278870EC8;
      v11 = &v12;
      v3 = sub_22EE97138();
      v13[3] = dlsym(v3, "hwtrace_live_recording_pause");
      off_27DA9D400 = *(v11[1] + 24);
      v2 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v2)
    {
      sub_22EEA9714();
    }

    v4 = v2(a1);
    v5 = *__error();
    v6 = sub_22EE82CE0();
    v7 = v6;
    if (!v4)
    {
      if (os_signpost_enabled(v6))
      {
        LOWORD(v10[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_22EE81000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PauseCPUTrace", &unk_22EEB0741, v10, 2u);
      }

      v8 = 1;
      goto LABEL_12;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA96A0();
    }
  }

  else
  {
    v5 = *__error();
    v7 = sub_22EE82CE0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA9620();
    }
  }

  v8 = 0;
LABEL_12:

  *__error() = v5;
  return v8;
}

void sub_22EE957C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void tailspin_config_apply(_DWORD *a1, void *a2, void *a3)
{
  v5 = a3;
  a1[2] = 2 * (*a1 != 0);
  v6 = a2;
  v7 = sub_22EE82668();
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "tailspin_request_type", 0);
  xpc_dictionary_set_data(v8, "tailspin_config", a1, 0x2118uLL);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22EE95900;
  v10[3] = &unk_278871128;
  v11 = v5;
  v9 = v5;
  sub_22EE82D38(v7, v8, v6, v10);
}

uint64_t sub_22EE95900(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL tailspin_config_apply_sync(_DWORD *a1)
{
  a1[2] = 2 * (*a1 != 0);
  v2 = sub_22EE82668();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "tailspin_request_type", 0);
  xpc_dictionary_set_data(v3, "tailspin_config", a1, 0x2118uLL);
  v4 = xpc_connection_send_message_with_reply_sync(v2, v3);
  v5 = MEMORY[0x2318F9DB0]() == MEMORY[0x277D86468] && xpc_dictionary_get_BOOL(v4, "tailspin_succeeded");

  return v5;
}

uint64_t tailspin_currently_running()
{
  if (!ktrace_config_create_current())
  {
    v2 = *__error();
    v3 = sub_22EE82CE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA9828();
    }

    goto LABEL_13;
  }

  owner_kind = ktrace_config_get_owner_kind();
  state = ktrace_config_kdebug_get_state();
  ktrace_config_destroy();
  if (owner_kind != 2)
  {
    v2 = *__error();
    v3 = sub_22EE82CE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEA978C();
    }

    goto LABEL_13;
  }

  v2 = *__error();
  v3 = sub_22EE82CE0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (state != 3)
  {
    if (v4)
    {
      sub_22EEA97C0();
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    sub_22EEA97F4();
  }

  v5 = 1;
LABEL_14:

  *__error() = v2;
  return v5;
}

BOOL tailspin_dump_output_with_options_sync(int a1, void *a2)
{
  v3 = a2;
  v4 = sub_22EE82668();
  v5 = sub_22EE826AC(a1, v3);

  v6 = getpid();
  v7 = *__error();
  v8 = sub_22EE82CE0();
  v9 = v8;
  if ((v6 - 1) <= 0xFFFFFFFD && os_signpost_enabled(v8))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_22EE81000, v9, OS_SIGNPOST_EVENT, v6, "ClientRequestedDumpSync", &unk_22EEB0741, v13, 2u);
  }

  *__error() = v7;
  v10 = xpc_connection_send_message_with_reply_sync(v4, v5);
  xpc_dictionary_get_BOOL(v10, "tailspin_succeeded");
  v11 = MEMORY[0x2318F9DB0](v10) == MEMORY[0x277D86468] && xpc_dictionary_get_BOOL(v10, "tailspin_succeeded");

  return v11;
}

void tailspin_augment_output_with_request_id(int a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  queue = a3;
  v42 = a4;
  v41 = a5;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 1;
  v44 = a1;
  if (a1 == -1)
  {
    _os_assert_log();
    v36 = _os_crash();
    sub_22EEA88BC(v36);
  }

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_min_timestamp"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v40 = [v10 unsignedLongLongValue];
    }

    else
    {
      v40 = 0;
    }

    v19 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_no_symbolicate"];

    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = [v19 BOOLValue] ^ 1;
    }

    else
    {
      v45 = 0;
    }

    v20 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_symbolicate"];

    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [v20 BOOLValue];
      }
    }

    v21 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_use_dsymforuuid"];

    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v39 = [v21 BOOLValue];
    }

    else
    {
      v39 = 0;
    }

    v22 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_collect_os_logs"];

    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v38 = [v22 BOOLValue];
    }

    else
    {
      v38 = 0;
    }

    v23 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_collect_os_signposts"];

    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v23 BOOLValue];
    }

    else
    {
      v16 = 0;
    }

    v24 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_os_log_archive"];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v37 = [v24 UTF8String];
    }

    else
    {
      v37 = 0;
    }

    v25 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_scrub_output"];

    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [v25 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    v26 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_collect_ariadne_plists"];

    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v26 BOOLValue];
    }

    else
    {
      v13 = 0;
    }

    v27 = [v9 objectForKeyedSubscript:@"tailspin_dump_option_collect_trials"];

    if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v27 BOOLValue];
    }

    else
    {
      v14 = 0;
    }

    v28 = [v9 objectForKeyedSubscript:@"cache_symbols"];

    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v28 BOOLValue];
    }

    else
    {
      v15 = 0;
    }

    v17 = v38;
    v18 = v39;
    v12 = v37;
    if (v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v40 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v45 = 0;
  }

  if (v17 & 1) != 0 || (v45 & 1) != 0 || (v13 & 1) != 0 || (v14)
  {
LABEL_53:
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_22EE96274;
    v46[3] = &unk_278871248;
    v51 = v44;
    v29 = v50;
    v52 = v13;
    v30 = v41;
    v50[0] = v41;
    v50[1] = v62;
    v53 = v14;
    v54 = v17;
    v55 = v16;
    v50[2] = v64;
    v50[3] = v40;
    v34 = v42;
    v56 = v11;
    v47 = v34;
    v50[4] = v12;
    v48 = v9;
    v57 = v45;
    v58 = v18;
    v59 = v15;
    v32 = queue;
    v49 = queue;
    v35 = v41;
    v33 = v42;
    dispatch_async(v49, v46);

    goto LABEL_54;
  }

  close(v44);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22EE96260;
  block[3] = &unk_2788711F8;
  v29 = &v61;
  v30 = v41;
  v61 = v41;
  v31 = v41;
  v32 = queue;
  dispatch_async(queue, block);
  v33 = v42;
LABEL_54:

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);
}

void sub_22EE96234(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 152), 8);
  _Block_object_dispose((v1 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE96274(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 96);
  v3 = ktrace_file_open_fd();
  if (v3)
  {
    v4 = v3;
    if (*(a1 + 100) == 1 && !MEMORY[0x2318F9520](v3))
    {
      v5 = *__error();
      v6 = sub_22EE82CE0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA9940();
      }

      *__error() = v5;
      *(*(*(a1 + 64) + 8) + 24) = 20;
    }

    if (*(a1 + 101) == 1)
    {
      v7 = objc_autoreleasePoolPush();
      if (!sub_22EE978B4())
      {
        goto LABEL_18;
      }

      v81 = 0;
      v82 = &v81;
      v83 = 0x2050000000;
      v8 = qword_27DA9D420;
      v84 = qword_27DA9D420;
      if (!qword_27DA9D420)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_22EE979F8;
        v86 = &unk_278870EC8;
        v87 = &v81;
        sub_22EE979F8(buf);
        v8 = v82[3];
      }

      v9 = v8;
      _Block_object_dispose(&v81, 8);
      if (objc_opt_class())
      {
        v10 = [v8 defaultProvider];
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v80 = 0;
        v75 = MEMORY[0x277D85DD0];
        v76 = 3221225472;
        v77 = sub_22EE97478;
        v78 = &unk_278871368;
        v12 = v11;
        v79 = v12;
        v13 = [v10 enumerateActiveExperimentsForEnvironment:0 error:&v80 block:&v75];
        v14 = v80;
        v15 = *__error();
        v16 = sub_22EE82CE0();
        v17 = v16;
        if (v13)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_22EEA9A34(v12);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA99C4();
        }

        *__error() = v15;
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);

        v74 = 0;
        v69 = MEMORY[0x277D85DD0];
        v70 = 3221225472;
        v71 = sub_22EE976DC;
        v72 = &unk_2788713B8;
        v24 = v23;
        v73 = v24;
        v25 = [v10 enumerateActiveRolloutsWithError:&v74 block:&v69];
        v26 = v74;
        v27 = *__error();
        v28 = sub_22EE82CE0();
        v29 = v28;
        if (v25)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_22EEA9B20(v24);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_22EEA9AB0();
        }

        *__error() = v27;
        v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        [v30 setObject:v12 forKeyedSubscript:@"experiments"];
        [v30 setObject:v24 forKeyedSubscript:@"rollouts"];
        v31 = [v30 copy];

        objc_autoreleasePoolPop(v7);
        if (v31)
        {
          v68 = 0;
          v32 = [MEMORY[0x277CCAC58] dataWithPropertyList:v31 format:200 options:0 error:&v68];
          v33 = v68;
          if (v32)
          {
            v34 = v32;
            [v32 bytes];
            [v32 length];
            if (ktrace_file_append_chunk())
            {
LABEL_37:

              goto LABEL_38;
            }

            v35 = *__error();
            v36 = sub_22EE82CE0();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA9B9C();
            }
          }

          else
          {
            v35 = *__error();
            v36 = sub_22EE82CE0();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_22EEA9C24();
            }
          }

          *__error() = v35;
          *(*(*(a1 + 64) + 8) + 24) = 24;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_18:
        objc_autoreleasePoolPop(v7);
      }

      v21 = *__error();
      v22 = sub_22EE82CE0();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA9C94();
      }

      *__error() = v21;
      *(*(*(a1 + 64) + 8) + 24) = 24;
    }

LABEL_38:
    if ((*(a1 + 102) & 1) == 0 && *(a1 + 103) != 1)
    {
      goto LABEL_70;
    }

    v75 = 0;
    v76 = 0;
    v69 = 0;
    v70 = 0;
    v37 = a1 + 72;
    *(*(*(a1 + 72) + 8) + 24) = ktrace_file_earliest_walltime();
    v38 = *(*(a1 + 72) + 8);
    v39 = *(v38 + 24);
    if (!v39)
    {
      v39 = ktrace_file_latest_walltime();
      v38 = *(*v37 + 8);
    }

    *(v38 + 24) = v39;
    if (*(*(*v37 + 8) + 24))
    {
      *(*(*(a1 + 64) + 8) + 24) = 23;
      v40 = *__error();
      v41 = sub_22EE82CE0();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_22EEA9CD0(a1 + 72);
      }

      *__error() = v40;
      goto LABEL_70;
    }

    if (*(a1 + 80))
    {
      v81 = 0;
      *(*(*v37 + 8) + 24) = ktrace_file_earliest_timestamp();
      v42 = 0.0;
      if (!*(*(*v37 + 8) + 24))
      {
        v43 = *(a1 + 80);
        v44 = v81 - v43;
        if (v81 > v43)
        {
          if (qword_27DA9D408 != -1)
          {
            sub_22EEA9D4C();
          }

          v45 = 0;
          if (HIDWORD(qword_27DA9D410))
          {
            if (qword_27DA9D410)
            {
              v45 = v44;
              if (qword_27DA9D410 != HIDWORD(qword_27DA9D410))
              {
                v45 = __udivti3();
              }
            }
          }

          v42 = v45 / 1000000000.0;
          if (v42 > 60.0)
          {
            v46 = *__error();
            v47 = sub_22EE82CE0();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v42;
              _os_log_impl(&dword_22EE81000, v47, OS_LOG_TYPE_INFO, "Min timestamp %.0fs before start of ktrace data, capping signpost/logs to 60s before", buf, 0xCu);
            }

            *__error() = v46;
            v42 = 60.0;
          }

          v48 = *__error();
          v49 = sub_22EE82CE0();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            *&buf[4] = v42;
            _os_log_impl(&dword_22EE81000, v49, OS_LOG_TYPE_INFO, "Min timestamp %.0fs before start of ktrace data, including signpost/logs from then", buf, 0xCu);
          }

          *__error() = v48;
        }
      }
    }

    else
    {
      v42 = 0.0;
    }

    v50 = objc_alloc(MEMORY[0x277CBEAA8]);
    v51 = [v50 initWithTimeIntervalSince1970:v75 - v42];
    v52 = objc_alloc(MEMORY[0x277CBEAA8]);
    v53 = [v52 initWithTimeIntervalSince1970:(v69 + 1)];
    v54 = v53;
    if (v51 && v53 && [v51 compare:v53] == -1)
    {
      [v54 timeIntervalSinceDate:v51];
      if (v62 <= 3600.0)
      {
        [*(a1 + 32) startRecordingTimeForAugmentLoggingPhase:*(a1 + 103) collectOSLog:*(a1 + 102) scrubData:*(a1 + 104)];
        *(*(*(a1 + 72) + 8) + 24) = tailspin_write_os_signpost_support_chunks(v4, *(a1 + 88), v51, v54, *(a1 + 103), *(a1 + 102), *(a1 + 104));
        [*(a1 + 32) stopRecordingTimeForAugmentLoggingPhase:*(*(*(a1 + 72) + 8) + 24) == 0];
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          *(*(*(a1 + 64) + 8) + 24) = 22;
        }

        goto LABEL_69;
      }

      v55 = *__error();
      v56 = sub_22EE82CE0();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        v64 = *(a1 + 40);
        *buf = 138543874;
        *&buf[4] = v51;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        *&buf[22] = 2114;
        v86 = v64;
        _os_log_fault_impl(&dword_22EE81000, v56, OS_LOG_TYPE_FAULT, "start (%{public}@) + 1h < end (%{public}@). Saved with %{public}@ options", buf, 0x20u);
      }
    }

    else
    {
      v55 = *__error();
      v56 = sub_22EE82CE0();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
      {
        v63 = *(a1 + 40);
        *buf = 138543874;
        *&buf[4] = v51;
        *&buf[12] = 2114;
        *&buf[14] = v54;
        *&buf[22] = 2114;
        v86 = v63;
        _os_log_fault_impl(&dword_22EE81000, v56, OS_LOG_TYPE_FAULT, "start (%{public}@) >= end (%{public}@). Saved with %{public}@ options", buf, 0x20u);
      }
    }

    *__error() = v55;
LABEL_69:

LABEL_70:
    if (*(a1 + 105) == 1)
    {
      [*(a1 + 32) startRecordingTimeForAugmentSymbolicatePhase];
      v57 = *(a1 + 106);
      v58 = *(a1 + 107);
      v59 = *(a1 + 48);
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = sub_22EE96D38;
      v65[3] = &unk_278871220;
      v66 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
      v67 = v4;
      v65[4] = *(a1 + 32);
      v65[5] = *(a1 + 56);
      tailspin_symbolicate_file_async(v4, v57, v58, v59, v65);
    }

    ktrace_file_close();
    v60 = *(*(*(a1 + 64) + 8) + 24);
    result = (*(*(a1 + 56) + 16))();
    goto LABEL_73;
  }

  v18 = *__error();
  v19 = sub_22EE82CE0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_22EEA9D74();
  }

  *__error() = v18;
  close(*(a1 + 96));
  result = (*(*(a1 + 56) + 16))();
LABEL_73:
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE96D38(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x25 && ((1 << a2) & 0x2000000011) != 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v3 = *(*(a1 + 48) + 8);
  if (!*(v3 + 24))
  {
    *(v3 + 24) = a2;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v4 = 21;
    }

    else
    {
      v4 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = v4;
  }

  v5 = *(a1 + 64);
  ktrace_file_close();
  [*(a1 + 32) stopRecordingTimeForAugmentSymbolicatePhase];
  v6 = *(*(*(a1 + 56) + 8) + 24);
  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void tailspin_augment_output(int a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22EE96EA4;
  v9[3] = &unk_278871270;
  v10 = v7;
  v8 = v7;
  tailspin_augment_output_with_request_id(a1, a2, a3, 0, v9);
}

void tailspin_poke()
{
  connection = sub_22EE82668();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "tailspin_request_type", 0xDEADCAFFuLL);
  xpc_connection_send_message(connection, v0);
}

void tailspin_resolve_configs()
{
  connection = sub_22EE82668();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "tailspin_request_type", 0xDEADCB00uLL);
  xpc_connection_send_message(connection, v0);
}

void sub_22EE96FB4()
{
  mach_service = xpc_connection_create_mach_service("com.apple.tailspind", 0, 2uLL);
  v1 = qword_280B25FB0;
  qword_280B25FB0 = mach_service;

  if (qword_280B25FB0)
  {
    xpc_connection_set_event_handler(qword_280B25FB0, &unk_2843A9648);
    v2 = qword_280B25FB0;

    xpc_connection_resume(v2);
  }

  else
  {
    v3 = *__error();
    v4 = sub_22EE82CE0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_22EEA9DF8();
    }

    *__error() = v3;
  }
}

uint64_t sub_22EE97064()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = getpid();
  responsible_pid_and_name = get_responsible_pid_and_name(v0, v4, 0x20u);
  result = snprintf(byte_27DA9CE60, 0x20uLL, "%s [%d]", v4, responsible_pid_and_name);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22EE970E8(uint64_t a1)
{
  v2 = sub_22EE97138();
  result = dlsym(v2, "hwtrace_live_recording_session_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE97138()
{
  v12 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_27DA9D3E0;
  v9 = qword_27DA9D3E0;
  if (!qword_27DA9D3E0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = sub_22EE97294;
    v3[4] = &unk_278871318;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_2788712F8;
    v11 = 0;
    v7[3] = _sl_dlopen();
    qword_27DA9D3E0 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    sub_22EEA9E34(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_22EE97274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE97294(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D3E0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22EE9732C(uint64_t a1)
{
  v2 = sub_22EE97138();
  result = dlsym(v2, "hwtrace_live_recording_init_from_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE9737C(uint64_t a1)
{
  v2 = sub_22EE97138();
  result = dlsym(v2, "hwtrace_live_recording_session_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE973CC(uint64_t a1)
{
  v2 = sub_22EE97138();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D3F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE9741C(uint64_t a1)
{
  v2 = sub_22EE97138();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27DA9D400 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22EE97478(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v2 experimentId];
  v5 = [v4 copy];
  [v3 setObject:v5 forKeyedSubscript:@"experiment_id"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v2, "deploymentId")}];
  [v3 setObject:v6 forKeyedSubscript:@"deployment_id"];

  v7 = [v2 treatmentId];
  v8 = [v7 copy];
  [v3 setObject:v8 forKeyedSubscript:@"treatment_id"];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v2 namespaces];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v15, "compatibilityVersion")}];
        v17 = [v15 name];
        [v9 setObject:v16 forKeyedSubscript:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v18 = [v9 copy];
  [v3 setObject:v18 forKeyedSubscript:@"namespace_ids"];

  v19 = *(a1 + 32);
  v20 = [v3 copy];
  [v19 addObject:v20];

  v21 = *MEMORY[0x277D85DE8];
}

void sub_22EE976DC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 rolloutId];
  v7 = [v6 copy];
  [v5 setObject:v7 forKeyedSubscript:@"rollout_id"];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
  [v5 setObject:v8 forKeyedSubscript:@"deployment_id"];

  v9 = [v4 rampId];
  v10 = [v9 copy];
  [v5 setObject:v10 forKeyedSubscript:@"ramp_id"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v4 factorPackIds];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22EE978A8;
  v17[3] = &unk_278871390;
  v18 = v11;
  v13 = v11;
  [v12 enumerateKeysAndObjectsUsingBlock:v17];

  v14 = [v13 copy];
  [v5 setObject:v14 forKeyedSubscript:@"factor_pack_ids"];

  v15 = *(a1 + 32);
  v16 = [v5 copy];
  [v15 addObject:v16];
}

uint64_t sub_22EE978B4()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_27DA9D418)
  {
    qword_27DA9D418 = _sl_dlopen();
  }

  result = qword_27DA9D418;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE97984(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DA9D418 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class sub_22EE979F8(uint64_t a1)
{
  v3 = 0;
  if (!sub_22EE978B4())
  {
    sub_22EEA9F30(&v3);
  }

  result = objc_getClass("TRIAllocationStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_22EEA9EB4();
  }

  qword_27DA9D420 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22EE97A7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

double sub_22EE97A9C(unint64_t a1)
{
  if (qword_27DA9D430 != -1)
  {
    sub_22EEA9FB0();
  }

  return *&qword_27DA9D428 * a1 * 0.000000001;
}

double sub_22EE97AF0()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1;
  qword_27DA9D428 = *&result;
  return result;
}

void add_binary_info_to_binary_dictionary(void *a1, void *a2)
{
  v21 = a1;
  v3 = a2;
  if (v21 && v3)
  {
    v4 = [v3 uuid];
    v20 = [v3 name];
    v19 = [v3 path];
    v5 = [v3 bundleIdentifier];
    v6 = [v3 bundleVersion];
    v7 = [v3 bundleShortVersion];
    v8 = [v3 binaryVersion];
    v9 = [v3 segmentWithName:@"__TEXT_EXEC"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 length];
    }

    else
    {
      v12 = [v3 segmentWithName:@"__TEXT"];
      v13 = v12;
      if (!v12)
      {
        v12 = v3;
      }

      v11 = [v12 length];
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
    if (!v14)
    {
      sub_22EEA659C();
    }

    v15 = v14;
    [v4 UUIDString];
    v16 = v18 = v4;
    [v21 setObject:v16 forKeyedSubscript:@"UUID_String"];

    [v21 setObject:v15 forKeyedSubscript:@"Size"];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v10 != 0];
    [v21 setObject:v17 forKeyedSubscript:@"TEXT_EXEC"];

    [v21 setObject:v20 forKeyedSubscript:@"Name"];
    [v21 setObject:v19 forKeyedSubscript:@"Path"];
    [v21 setObject:v5 forKeyedSubscript:@"BundleID"];
    [v21 setObject:v6 forKeyedSubscript:@"BundleVersion"];
    [v21 setObject:v7 forKeyedSubscript:@"BundleShortVersion"];
    [v21 setObject:v8 forKeyedSubscript:@"BinaryVersion"];
  }
}

id tailspin_symbolicator_copy_symbol_data_using_uuid_pid_path(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v29[3] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3];
  if (a5)
  {
    v16 = MEMORY[0x277CBEBC0];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    a5 = [v16 fileURLWithPath:v17];
  }

  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a8];
  {
    v19 = *a7++;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
    [i addObject:v20];
  }

  v28[0] = *MEMORY[0x277D6C5E0];
  v21 = [MEMORY[0x277CCABB0] numberWithBool:a6];
  v29[0] = v21;
  v28[1] = *MEMORY[0x277D6C5F0];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v28[2] = *MEMORY[0x277D6C5E8];
  v29[1] = v22;
  v29[2] = MEMORY[0x277CBEC28];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  v24 = [v14 symbolicateUUID:v15 pid:a4 path:a5 offsets:i options:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t sub_22EE992A8()
{
  result = sub_22EE99844();
  if (result)
  {
    result = sub_22EE99844();
    if (result)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v1 = qword_27DA9D440;
      v14 = qword_27DA9D440;
      if (!qword_27DA9D440)
      {
        v2 = sub_22EE99A58();
        v12[3] = dlsym(v2, "hwtrace_live_recording_options_init");
        qword_27DA9D440 = v12[3];
        v1 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v1)
      {
        return 0;
      }

      result = sub_22EE99844();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v3 = qword_27DA9D448;
      v14 = qword_27DA9D448;
      if (!qword_27DA9D448)
      {
        v4 = sub_22EE99A58();
        v12[3] = dlsym(v4, "hwtrace_live_recording_options_deinit");
        qword_27DA9D448 = v12[3];
        v3 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v3)
      {
        return 0;
      }

      result = sub_22EE99844();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v5 = qword_27DA9D450;
      v14 = qword_27DA9D450;
      if (!qword_27DA9D450)
      {
        v6 = sub_22EE99A58();
        v12[3] = dlsym(v6, "hwtrace_live_recording_options_set_session_policy");
        qword_27DA9D450 = v12[3];
        v5 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v5)
      {
        return 0;
      }

      result = sub_22EE99844();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v7 = qword_27DA9D458;
      v14 = qword_27DA9D458;
      if (!qword_27DA9D458)
      {
        v8 = sub_22EE99A58();
        v12[3] = dlsym(v8, "hwtrace_live_recording_options_set_background");
        qword_27DA9D458 = v12[3];
        v7 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (!v7)
      {
        return 0;
      }

      result = sub_22EE99844();
      if (!result)
      {
        return result;
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v9 = qword_27DA9D460;
      v14 = qword_27DA9D460;
      if (!qword_27DA9D460)
      {
        v10 = sub_22EE99A58();
        v12[3] = dlsym(v10, "hwtrace_live_recording_options_add_system");
        qword_27DA9D460 = v12[3];
        v9 = v12[3];
      }

      _Block_object_dispose(&v11, 8);
      if (v9)
      {
        result = sub_22EE99844();
        if (result)
        {
          result = sub_22EE99BEC();
          if (result)
          {
            result = sub_22EE99844();
            if (result)
            {
              result = sub_22EE99D28();
              if (result)
              {
                result = sub_22EE99844();
                if (result)
                {
                  result = sub_22EE99E64();
                  if (result)
                  {
                    result = sub_22EE99844();
                    if (result)
                    {
                      result = sub_22EE99FA0();
                      if (result)
                      {
                        result = sub_22EE99844();
                        if (result)
                        {
                          result = sub_22EE9A0DC();
                          if (result)
                          {
                            result = sub_22EE99844();
                            if (result)
                            {
                              result = sub_22EE9A218();
                              if (result)
                              {
                                result = sub_22EE99844();
                                if (result)
                                {
                                  result = sub_22EE9A354();
                                  if (result)
                                  {
                                    result = sub_22EE99844();
                                    if (result)
                                    {
                                      result = sub_22EE9A490();
                                      if (result)
                                      {
                                        result = sub_22EE99844();
                                        if (result)
                                        {
                                          result = sub_22EE9A5CC();
                                          if (result)
                                          {
                                            result = sub_22EE99844();
                                            if (result)
                                            {
                                              result = sub_22EE9A708();
                                              if (result)
                                              {
                                                result = sub_22EE99844();
                                                if (result)
                                                {
                                                  result = sub_22EE9A844();
                                                  if (result)
                                                  {
                                                    result = sub_22EE99844();
                                                    if (result)
                                                    {
                                                      result = sub_22EE9A980();
                                                      if (result)
                                                      {
                                                        result = sub_22EE99844();
                                                        if (result)
                                                        {
                                                          result = sub_22EE9AABC();
                                                          if (result)
                                                          {
                                                            result = sub_22EE99844();
                                                            if (result)
                                                            {
                                                              result = sub_22EE9ABF8();
                                                              if (result)
                                                              {
                                                                result = sub_22EE99844();
                                                                if (result)
                                                                {
                                                                  result = sub_22EE9AD34();
                                                                  if (result)
                                                                  {
                                                                    result = sub_22EE99844();
                                                                    if (result)
                                                                    {
                                                                      result = sub_22EE9AE70();
                                                                      if (result)
                                                                      {
                                                                        result = sub_22EE99844();
                                                                        if (result)
                                                                        {
                                                                          result = sub_22EE9AFAC();
                                                                          if (result)
                                                                          {
                                                                            result = sub_22EE99844();
                                                                            if (result)
                                                                            {
                                                                              result = sub_22EE9B0E8();
                                                                              if (result)
                                                                              {
                                                                                result = sub_22EE99844();
                                                                                if (result)
                                                                                {
                                                                                  result = sub_22EE9B224();
                                                                                  if (result)
                                                                                  {
                                                                                    result = sub_22EE99844();
                                                                                    if (result)
                                                                                    {
                                                                                      result = sub_22EE9B360();
                                                                                      if (result)
                                                                                      {
                                                                                        result = sub_22EE99844();
                                                                                        if (result)
                                                                                        {
                                                                                          return sub_22EE9B49C() != 0;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_22EE9981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE99844()
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D438;
  v6 = qword_27DA9D438;
  if (!qword_27DA9D438)
  {
    v7 = xmmword_2788713F0;
    v8 = 0;
    v4[3] = _sl_dlopen();
    qword_27DA9D438 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_22EE99958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE99970(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D438 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22EE99A08(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_options_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D440 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE99A58()
{
  v1 = 0;
  result = sub_22EE99844();
  if (!result)
  {
    sub_22EEA9E34(&v1);
  }

  return result;
}

void *sub_22EE99AAC(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_options_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D448 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE99AFC(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_options_set_session_policy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D450 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE99B4C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_options_set_background");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D458 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_22EE99B9C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_options_add_system");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE99BEC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D468;
  v6 = qword_27DA9D468;
  if (!qword_27DA9D468)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_trace_mode");
    qword_27DA9D468 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE99CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE99CD8(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_trace_mode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D468 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE99D28()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D470;
  v6 = qword_27DA9D470;
  if (!qword_27DA9D470)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_driver");
    qword_27DA9D470 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE99DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE99E14(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_driver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D470 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE99E64()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D478;
  v6 = qword_27DA9D478;
  if (!qword_27DA9D478)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_production");
    qword_27DA9D478 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE99F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE99F50(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_production");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D478 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE99FA0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D480;
  v6 = qword_27DA9D480;
  if (!qword_27DA9D480)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_context_target");
    qword_27DA9D480 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A08C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_context_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D480 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A0DC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D488;
  v6 = qword_27DA9D488;
  if (!qword_27DA9D488)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_system_options_set_exception_level_target");
    qword_27DA9D488 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A1C8(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_system_options_set_exception_level_target");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D488 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A218()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D490;
  v6 = qword_27DA9D490;
  if (!qword_27DA9D490)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_init");
    qword_27DA9D490 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A304(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_session_init");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D490 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A354()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D498;
  v6 = qword_27DA9D498;
  if (!qword_27DA9D498)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_init_from_session");
    qword_27DA9D498 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A440(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_init_from_session");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D498 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A490()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4A0;
  v6 = qword_27DA9D4A0;
  if (!qword_27DA9D4A0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_deinit");
    qword_27DA9D4A0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A57C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_session_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A5CC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4A8;
  v6 = qword_27DA9D4A8;
  if (!qword_27DA9D4A8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_uuid");
    qword_27DA9D4A8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A6B8(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_session_uuid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A708()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4B0;
  v6 = qword_27DA9D4B0;
  if (!qword_27DA9D4B0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_session_serialize");
    qword_27DA9D4B0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A7F4(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_session_serialize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A844()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4B8;
  v6 = qword_27DA9D4B8;
  if (!qword_27DA9D4B8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_init_with_options");
    qword_27DA9D4B8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9A918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9A930(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_init_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9A980()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4C0;
  v6 = qword_27DA9D4C0;
  if (!qword_27DA9D4C0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_deinit");
    qword_27DA9D4C0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9AA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9AA6C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9AABC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4C8;
  v6 = qword_27DA9D4C8;
  if (!qword_27DA9D4C8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_start");
    qword_27DA9D4C8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9AB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9ABA8(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_start");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9ABF8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4D0;
  v6 = qword_27DA9D4D0;
  if (!qword_27DA9D4D0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_pause");
    qword_27DA9D4D0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9ACCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9ACE4(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_pause");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9AD34()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4D8;
  v6 = qword_27DA9D4D8;
  if (!qword_27DA9D4D8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_recording_stop");
    qword_27DA9D4D8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9AE20(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_recording_stop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9AE70()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4E0;
  v6 = qword_27DA9D4E0;
  if (!qword_27DA9D4E0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_recording_save_to_ktrace");
    qword_27DA9D4E0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9AF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9AF5C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_recording_save_to_ktrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9AFAC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4E8;
  v6 = qword_27DA9D4E8;
  if (!qword_27DA9D4E8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_recording_init_from_live_recording");
    qword_27DA9D4E8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9B080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9B098(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_recording_init_from_live_recording");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9B0E8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4F0;
  v6 = qword_27DA9D4F0;
  if (!qword_27DA9D4F0)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_recording_deinit");
    qword_27DA9D4F0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9B1D4(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_recording_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9B224()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D4F8;
  v6 = qword_27DA9D4F8;
  if (!qword_27DA9D4F8)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_topology");
    qword_27DA9D4F8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9B2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9B310(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_topology");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D4F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9B360()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D500;
  v6 = qword_27DA9D500;
  if (!qword_27DA9D500)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_topology_systems");
    qword_27DA9D500 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9B434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9B44C(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_topology_systems");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_22EE9B49C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DA9D508;
  v6 = qword_27DA9D508;
  if (!qword_27DA9D508)
  {
    v1 = sub_22EE99A58();
    v4[3] = dlsym(v1, "hwtrace_live_system_name");
    qword_27DA9D508 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_22EE9B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_22EE9B588(uint64_t a1)
{
  v2 = sub_22EE99A58();
  result = dlsym(v2, "hwtrace_live_system_name");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DA9D508 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22EE9B6A0(_Unwind_Exception *a1)
{
  sub_22EE9EB68(v7);
  sub_22EE9EBC8(v6);
  sub_22EE9EC8C(v5);
  sub_22EE9ED1C(v4);
  sub_22EE9EDCC(v3);
  v9 = sub_22EE9EB68(v2);
  MEMORY[0x2318F8FC0](v9, v1);
  _Unwind_Resume(a1);
}

void sub_22EE9B6E4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 256))
    {
      MEMORY[0x2318F9400]();
      *(a1 + 256) = 0;
    }

    sub_22EE9EB68(a1 + 200);
    sub_22EE9EBC8(a1 + 160);
    sub_22EE9EC8C(a1 + 120);
    sub_22EE9ED1C(a1 + 80);
    sub_22EE9EDCC(a1 + 40);
    sub_22EE9EB68(a1);

    JUMPOUT(0x2318F8FC0);
  }

  sub_22EEA659C();
}

uint64_t sub_22EE9B76C(uint64_t result)
{
  if (!result)
  {
    sub_22EEA659C();
  }

  *(result + 264) = 1;
  return result;
}

void sub_22EE9B78C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  v3 = a2;
  if (!a2)
  {
    sub_22EEA659C();
  }

  if (a3 <= 0xF)
  {
    sub_22EEA659C();
  }

  if (*(a1 + 264) != 1)
  {
    *buf = 0;
    v8 = sub_22EEA2204((a1 + 80), buf);
    if (v8)
    {
      v77 = (v8 + 3);
    }

    else
    {
      *dst = 0;
      *buf = dst;
      v9 = sub_22EEA22B8((a1 + 80), dst);
      *(v9 + 12) = 0;
      v77 = (v9 + 3);
      MEMORY[0x2318F8F80](v9 + 3, "kernel_task");
    }

    v10 = v3 + a3;
    v11 = v3 + 16;
    if (v3 + 16 > v3 + a3)
    {
      goto LABEL_12;
    }

    v13 = 0;
    v78 = 0;
    v79 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = *(v3 + 4);
      v19 = v11 + v18;
      if (v11 + v18 > v10)
      {
        goto LABEL_12;
      }

      v20 = *v3;
      if (*v3 == -242132755)
      {
        goto LABEL_12;
      }

      if ((v20 & 0xFFFFFFF0) == 0x20)
      {
        v21 = 17;
      }

      else
      {
        v21 = *v3;
      }

      if (v13)
      {
        if (v21 != 20)
        {
          goto LABEL_36;
        }

        v13 = v79 != *(v3 + 8);
      }

      else
      {
        v13 = 0;
        if (v21 <= 19)
        {
          if (v21 == 17)
          {
            if (v20 != 17 && (v20 & 0xFFFFFFF0) != 0x20)
            {
              goto LABEL_12;
            }

            v32 = *(v3 + 8);
            if (!v32)
            {
              if (v18)
              {
                goto LABEL_12;
              }

              goto LABEL_170;
            }

            if (v20 == 17)
            {
              if (SHIDWORD(v32) <= 2313)
              {
                if (SHIDWORD(v32) <= 2073)
                {
                  if (HIDWORD(v32) == 48)
                  {
                    v33 = 20;
                  }

                  else
                  {
                    if (HIDWORD(v32) != 49)
                    {
                      goto LABEL_12;
                    }

                    v33 = 24;
                  }

                  goto LABEL_168;
                }

                if (HIDWORD(v32) != 2074)
                {
                  if (HIDWORD(v32) != 2311)
                  {
                    goto LABEL_12;
                  }

                  v33 = 4;
                  goto LABEL_168;
                }
              }

              else if (SHIDWORD(v32) <= 2315)
              {
                if (HIDWORD(v32) != 2314)
                {
                  goto LABEL_165;
                }
              }

              else if (HIDWORD(v32) != 2316)
              {
                if (HIDWORD(v32) != 2317)
                {
                  if (HIDWORD(v32) != 2369)
                  {
                    goto LABEL_12;
                  }

                  v33 = 48;
                  goto LABEL_168;
                }

LABEL_165:
                v33 = 16;
LABEL_168:
                if (v18 / v33 < v32 || v18 % v32 >= 0x10)
                {
                  goto LABEL_12;
                }

LABEL_170:
                v13 = 0;
                if (SHIDWORD(v32) > 2324)
                {
                  if (HIDWORD(v32) == 2325)
                  {
                    if ((v17 & (v16 != 0)) == 1)
                    {
                      sub_22EE9C434((v3 + 16), v32, v16);
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    if (HIDWORD(v32) != 2326)
                    {
                      goto LABEL_184;
                    }

                    if ((v17 & (v16 != 0)) == 1)
                    {
                      sub_22EE9C518((v3 + 16), v32, 1, v16);
                      goto LABEL_183;
                    }
                  }
                }

                else if (HIDWORD(v32) == 2323)
                {
                  if ((v17 & (v16 != 0)) == 1)
                  {
                    sub_22EE9C434((v3 + 16), v32, v77);
                    goto LABEL_183;
                  }
                }

                else
                {
                  if (HIDWORD(v32) != 2324)
                  {
                    goto LABEL_184;
                  }

                  if ((v17 & (v16 != 0)) == 1)
                  {
                    sub_22EE9C518((v3 + 16), v32, 1, v77);
LABEL_183:
                    v13 = 0;
                    v17 = 1;
                    goto LABEL_184;
                  }
                }

                goto LABEL_156;
              }

              v33 = 8;
              goto LABEL_168;
            }

            v40 = v18 - (*v3 & 0xF);
            if (v18 < (*v3 & 0xFu) || v40 < v32 || v40 % v32)
            {
              goto LABEL_12;
            }

            goto LABEL_170;
          }

          if (v21 == 19)
          {
            if (v18 < 4 || v20 != 19)
            {
              goto LABEL_12;
            }

            v22 = *(v3 + 16);
            v23 = *(v3 + 8);
            if (v22 == 2308)
            {
              v36 = v79;
              if (v17)
              {
                v37 = v78;
              }

              else
              {
                v37 = *(v3 + 8);
              }

              if (v17)
              {
                v36 = *(v3 + 8);
              }

              v38 = (v14 & 1) == 0;
              if (v14)
              {
                v39 = v37;
              }

              else
              {
                v39 = v78;
              }

              if (v14)
              {
                v13 = v17;
              }

              else
              {
                v13 = 1;
              }

              if (v14)
              {
                v17 = 1;
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              if (v38)
              {
                v36 = *(v3 + 8);
              }

              v78 = v39;
              v79 = v36;
              goto LABEL_184;
            }

            if (v22 != 2307)
            {
              v13 = 1;
              v79 = *(v3 + 8);
              goto LABEL_184;
            }

            if (v14)
            {
              v14 = 1;
              v79 = *(v3 + 8);
LABEL_36:
              v13 = 1;
              goto LABEL_184;
            }

            v41 = v19 + 16;
            if (v19 + 16 > v10)
            {
LABEL_154:
              v16 = 0;
              v15 = 0;
              goto LABEL_155;
            }

            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 0;
            while (2)
            {
              v50 = *(v19 + 4);
              v51 = v41 + v50;
              if (v41 + v50 > v10)
              {
                goto LABEL_154;
              }

              v52 = *v19;
              if (*v19 == -242132755)
              {
                goto LABEL_154;
              }

              if ((v52 & 0xFFFFFFF0) == 0x20)
              {
                v53 = 17;
              }

              else
              {
                v53 = *v19;
              }

              if (v48)
              {
                if (v53 == 20)
                {
                  v48 = *(v19 + 8) != v49;
                  goto LABEL_153;
                }

LABEL_105:
                v48 = 1;
LABEL_153:
                v41 = v51 + 16;
                v19 = v51;
                if (v51 + 16 > v10)
                {
                  goto LABEL_154;
                }

                continue;
              }

              break;
            }

            v48 = 0;
            if (v53 > 2308)
            {
              switch(v53)
              {
                case 2309:
                  v48 = 0;
                  v42 = v19 + 16;
                  break;
                case 2312:
                  v48 = 0;
                  v47 = v19 + 16;
                  break;
                case 2368:
                  sub_22EEAA018();
              }

              goto LABEL_153;
            }

            if (v53 != 17)
            {
              if (v53 != 19)
              {
                if (v53 == 20)
                {
                  v73 = v47;
                  v14 = 0;
                  v16 = 0;
                  if (*(v19 + 8) == v23 && (v75 = v44, v71 = v45, v72 = v43, v42))
                  {
                    v61 = v42;
                    v62 = *(v42 + 84);
                    *buf = v62;
                    v63 = sub_22EEA2204((a1 + 80), buf);
                    if (!v63)
                    {
                      *dst = v62;
                      *buf = dst;
                      v63 = sub_22EEA22B8((a1 + 80), dst);
                    }

                    v74 = v63;
                    *(v63 + 12) = v62;
                    v64 = strnlen((v61 + 88), 0x20uLL);
                    sub_22EE9C1B0(buf, (v61 + 88), v64);
                    v16 = (v74 + 3);
                    if (*(v74 + 47) < 0)
                    {
                      operator delete(*v16);
                    }

                    *v16 = *buf;
                    v74[5] = v82[0];
                    v65 = v75 == 1 && v62 == 0;
                    if (v65 || !v75)
                    {
                      if (v46)
                      {
                        sub_22EE9C260(a1, v46, v71, v16);
                      }
                    }

                    else
                    {
                      if (!v72)
                      {
                        sub_22EEA659C();
                      }

                      v66 = v75;
                      v67 = (v72 + 8);
                      do
                      {
                        v76 = v66;
                        uuid_clear(buf);
                        memset(v82, 0, sizeof(v82));
                        v83 = 1065353216;
                        v84 = 0;
                        v85 = -1;
                        v86 = 0;
                        v87 = 0u;
                        v88 = 0u;
                        v68 = *(v67 - 1);
                        uuid_copy(dst, v67);
                        if (v68)
                        {
                          v85 = *(v74 + 12);
                          *buf = *dst;
                          v82[0] = v68;
                          v86 = sub_22EEA1FC8((a1 + 200), buf) != 0;
                          sub_22EE9CAEC(v74 + 9, buf);
                        }

                        if (SHIBYTE(v88) < 0)
                        {
                          operator delete(*(&v87 + 1));
                        }

                        sub_22EE9EB68(&v82[1]);
                        v67 += 24;
                        v66 = v76 - 1;
                      }

                      while (v76 != 1);
                    }

                    v13 = v73;
                    if (v73)
                    {
                      uuid_copy(dst, (v73 + 8));
                      v69 = *dst;
                      *(v74 + 52) = *dst;
                      *buf = v69;
                      if (!sub_22EEA1FC8((a1 + 120), buf))
                      {
                        v70 = sub_22EE9C3C4((a1 + 120), *dst, *&dst[8]);
                        *(v70 + 24) = *dst;
                        *(v70 + 5) = *v73;
                      }

                      v13 = 0;
                    }

                    v14 = 1;
                    v15 = v23;
                  }

                  else
                  {
                    v15 = 0;
                    v13 = 0;
                  }

                  goto LABEL_184;
                }

                goto LABEL_153;
              }

              if (v50 < 4 || v52 != 19)
              {
                goto LABEL_154;
              }

              v49 = *(v19 + 8);
              goto LABEL_105;
            }

            if (v52 != 17 && (v52 & 0xFFFFFFF0) != 0x20)
            {
              goto LABEL_154;
            }

            v54 = *(v19 + 8);
            if (v54)
            {
              if (v52 == 17)
              {
                if (SHIDWORD(v54) <= 2313)
                {
                  if (SHIDWORD(v54) <= 2073)
                  {
                    if (HIDWORD(v54) == 48)
                    {
                      v55 = 20;
                    }

                    else
                    {
                      if (HIDWORD(v54) != 49)
                      {
                        goto LABEL_154;
                      }

                      v55 = 24;
                    }

                    goto LABEL_141;
                  }

                  if (HIDWORD(v54) != 2074)
                  {
                    if (HIDWORD(v54) != 2311)
                    {
                      goto LABEL_154;
                    }

                    v55 = 4;
                    goto LABEL_141;
                  }
                }

                else if (SHIDWORD(v54) <= 2315)
                {
                  if (HIDWORD(v54) != 2314)
                  {
                    goto LABEL_138;
                  }
                }

                else if (HIDWORD(v54) != 2316)
                {
                  if (HIDWORD(v54) != 2317)
                  {
                    if (HIDWORD(v54) != 2369)
                    {
                      goto LABEL_154;
                    }

                    v55 = 48;
                    goto LABEL_141;
                  }

LABEL_138:
                  v55 = 16;
LABEL_141:
                  if (v50 / v55 < v54 || v50 % v54 >= 0x10)
                  {
                    goto LABEL_154;
                  }

LABEL_143:
                  if (HIDWORD(v54) == 48)
                  {
                    v59 = v19 + 16;
                  }

                  else
                  {
                    v59 = v45;
                  }

                  if (HIDWORD(v54) == 48)
                  {
                    v60 = *(v19 + 8);
                  }

                  else
                  {
                    v60 = v46;
                  }

                  if (HIDWORD(v54) == 49)
                  {
                    v43 = v19 + 16;
                    v44 = *(v19 + 8);
                  }

                  else
                  {
                    v45 = v59;
                    v46 = v60;
                  }

                  v48 = 0;
                  goto LABEL_153;
                }

                v55 = 8;
                goto LABEL_141;
              }

              v56 = *v19 & 0xF;
              v57 = v50 >= v56;
              v58 = v50 - v56;
              if (!v57 || v58 < v54)
              {
                goto LABEL_154;
              }

              LODWORD(v50) = v58 % v54;
            }

            if (v50)
            {
              goto LABEL_154;
            }

            goto LABEL_143;
          }
        }

        else
        {
          switch(v21)
          {
            case 20:
              v24 = *(v3 + 8);
              v25 = v14 & (v24 == v15);
              v26 = v78;
              v27 = v17 & (v24 == v78);
              if (v27)
              {
                v28 = 0;
              }

              else
              {
                v28 = v78;
              }

              v29 = v17 ^ v27;
              if ((v25 & 1) == 0)
              {
                v26 = v28;
              }

              v78 = v26;
              if (v25)
              {
                v16 = 0;
                v15 = 0;
              }

              else
              {
                v17 = v29;
              }

              if (v25)
              {
                v14 = 0;
              }

              v13 = 0;
              break;
            case 2310:
              if ((v14 & (v16 != 0)) != 1)
              {
                goto LABEL_156;
              }

              sub_22EEA2A94((v16 + 72), (v3 + 16));
              v30 = *(v16 + 24);
              *buf = v3 + 16;
              v31 = sub_22EEA2CC0(a1, (v3 + 16));
              v13 = 0;
              *(v31 + 6) = v30;
              goto LABEL_50;
            case 2312:
              if (v14)
              {
                v13 = 0;
LABEL_50:
                v14 = 1;
                break;
              }

              if (!uuid_is_null((v3 + 24)))
              {
                uuid_copy(dst, (v3 + 24));
                v34 = *dst;
                *(a1 + 240) = *dst;
                *buf = v34;
                v35 = sub_22EEA1FC8((a1 + 120), buf);
                if (!v35)
                {
                  *buf = *dst;
                  v35 = sub_22EEA266C((a1 + 120), buf);
                }

                v14 = 0;
                v13 = 0;
                *(v35 + 56) = *dst;
                *(v35 + 9) = *(v3 + 16);
                break;
              }

LABEL_155:
              v14 = 0;
LABEL_156:
              v13 = 0;
              break;
          }
        }
      }

LABEL_184:
      v3 = v11 + *(v3 + 4);
      v11 = v3 + 16;
      if (v3 + 16 > v10)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = *__error();
  v7 = sub_22EE82CE0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22EE81000, v7, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_parse_kcdata_stackshot] Shortcircuit due to signal received", buf, 2u);
  }

  *__error() = v6;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

void sub_22EE9C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22EE9CB2C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_22EE9C1B0(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22EEA215C();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_22EE9C260(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    sub_22EEA659C();
  }

  v4 = result;
  if (!result)
  {
    sub_22EEA659C();
  }

  if (!a3)
  {
    sub_22EEA659C();
  }

  if (a2)
  {
    v6 = (a3 + 4);
    v7 = a2;
    do
    {
      uuid_clear(uu);
      memset(v12, 0, sizeof(v12));
      v13 = 1065353216;
      v14 = 0;
      v15 = -1;
      v16 = 0;
      v17 = 0u;
      v18 = 0u;
      v8 = *(v6 - 1);
      uuid_copy(&v10, v6);
      if (v8)
      {
        v15 = *(a4 + 24);
        *uu = v10;
        v12[0] = v8;
        v16 = sub_22EEA1FC8((v4 + 200), uu) != 0;
        sub_22EE9CAEC((a4 + 48), uu);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(*(&v17 + 1));
      }

      result = sub_22EE9EB68(&v12[1]);
      v6 += 20;
      --v7;
    }

    while (v7);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EE9C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22EE9CB2C(va);
  _Unwind_Resume(a1);
}

const unsigned __int8 *sub_22EE9C3C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v3 = sub_22EEA266C(a1, v6);
  v4 = *MEMORY[0x277D85DE8];
  return v3 + 32;
}

void *sub_22EE9C434(void *result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  v10 = *result;
  if (v10 > 0x1000)
  {
    v11 = &v10;
    result = sub_22EE9EF78((a3 + 112), &v10);
    ++result[3];
  }

  if (a2 >= 2)
  {
    v6 = a2;
    v7 = v5 + 1;
    v8 = v6 - 1;
    do
    {
      v9 = *v7++;
      v10 = (v9 - 1);
      if (v10 > 0x1000)
      {
        v11 = &v10;
        result = sub_22EE9EF78((a3 + 112), &v10);
        ++result[3];
      }

      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t *sub_22EE9C518(unint64_t *result, unsigned int a2, int a3, uint64_t a4)
{
  v6 = result;
  v7 = *result;
  v13 = *result;
  if (a3)
  {
    v8 = 0x100000000;
  }

  else
  {
    v8 = 4096;
  }

  if (v8 < v7)
  {
    v14 = &v13;
    result = sub_22EE9EF78((a4 + 112), &v13);
    ++result[3];
  }

  if (a2 >= 2)
  {
    v9 = a2;
    v10 = (v6 + 1);
    v11 = v9 - 1;
    do
    {
      v12 = *v10++;
      v13 = v12 - 1;
      if (v8 < v12 - 1)
      {
        v14 = &v13;
        result = sub_22EE9EF78((a4 + 112), &v13);
        ++result[3];
      }

      --v11;
    }

    while (v11);
  }

  return result;
}

void sub_22EE9C60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  if (a2 && a3)
  {
    if (*(a1 + 264) == 1)
    {
      v4 = *__error();
      v5 = sub_22EE82CE0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22EE81000, v5, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_parse_dscsym_data] Shortcircuit due to signal received", buf, 2u);
      }

      *__error() = v4;
    }

    else
    {
      *buf = 0;
      v18 = buf;
      v19 = 0x7012000000;
      v20 = sub_22EE9C914;
      v21 = sub_22EE9C950;
      v22 = "";
      memset(v23, 0, sizeof(v23));
      uuid_clear(v24);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *uu = 0;
      v16 = 0;
      v6 = dscsym_iterate_buffer();
      if (v6)
      {
        memset(out, 0, sizeof(out));
        uuid_unparse(uu, out);
        v7 = *__error();
        v8 = sub_22EE82CE0();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_22EEAA034(out, v6, v8);
        }

        *__error() = v7;
      }

      else
      {
        uuid_copy(dst, uu);
        v9 = *dst;
        *(v18 + 72) = *dst;
        *out = v9;
        v10 = sub_22EEA1FC8((a1 + 120), out);
        if (!v10)
        {
          *out = *dst;
          v10 = sub_22EEA266C((a1 + 120), out);
        }

        v11 = (v10 + 32);
        if (v11 != v18 + 48)
        {
          sub_22EEA35A0(v11, *(v18 + 6), *(v18 + 7), 0x6DB6DB6DB6DB6DB7 * ((*(v18 + 7) - *(v18 + 6)) >> 4));
        }
      }

      _Block_object_dispose(buf, 8);
      *out = v23;
      sub_22EEA2EF4(out);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_22EE9C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  sub_22EEA2EF4(&a25);
  _Unwind_Resume(a1);
}

__n128 sub_22EE9C914(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  result = *(a2 + 72);
  v3 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v3;
  *(a1 + 72) = result;
  return result;
}

uint64_t sub_22EE9C97C(uint64_t a1, const unsigned __int8 *a2, char *a3, char *__s1, uint64_t a5, void *a6)
{
  __p[5] = *MEMORY[0x277D85DE8];
  if (!strcmp(__s1, "__TEXT"))
  {
    uuid_clear(uu);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v20 = 1065353216;
    v21 = 0;
    v22 = -1;
    v23 = 0;
    memset(__p, 0, 32);
    uuid_copy(dst, a2);
    *uu = *dst;
    *&v18[0] = a5;
    v23 = 0;
    if (a3)
    {
      v11 = strlen(a3);
      sub_22EE9C1B0(&__dst, a3, v11);
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      *&__p[1] = __dst;
      __p[3] = v15;
    }

    if (a6)
    {
      __p[0] = a6;
    }

    sub_22EE9CAEC((*(*(a1 + 32) + 8) + 48), uu);
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    sub_22EE9EB68(v18 + 8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_22EE9CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22EE9CB2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22EE9CAEC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_22EEA3028(a1, a2);
  }

  else
  {
    sub_22EEA2F7C(a1, a2);
    result = v3 + 112;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_22EE9CB2C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_22EE9EB68(a1 + 24);
  return a1;
}

void sub_22EE9CB68(uint64_t a1, _OWORD *a2, unint64_t a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  v4 = a2;
  if (!a2)
  {
    sub_22EEA659C();
  }

  if (!a3)
  {
    sub_22EEA659C();
  }

  if (*(a1 + 264) == 1)
  {
    v6 = *__error();
    v7 = sub_22EE82CE0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22EE81000, v7, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_parse_threadmap_data] Shortcircuit due to signal received", buf, 2u);
    }

    *__error() = v6;
  }

  else if (a4 == 64)
  {
    if (a3 >= 0x20)
    {
      v14 = a3 >> 5;
      do
      {
        v15 = v4[1];
        *buf = *v4;
        *&buf[16] = v15;
        v22 = *buf;
        v16 = *&buf[8];
        if ((*&buf[8] & 0x80000000) == 0)
        {
          *&v20 = &v22;
          *(sub_22EEA2CC0(a1, &v22) + 6) = v16;
          *&v20 = v22;
          if (!sub_22EE9EEC4((a1 + 40), &v20))
          {
            v23 = v22;
            *&v20 = &v23;
            v17 = sub_22EEA398C((a1 + 40), &v23);
            v17[3] = v22;
            *(v17 + 8) = *&buf[8];
          }

          LODWORD(v20) = v16;
          if (!sub_22EEA2204((a1 + 80), &v20))
          {
            LODWORD(v23) = v16;
            *&v20 = &v23;
            v18 = sub_22EEA22B8((a1 + 80), &v23);
            *(v18 + 12) = v16;
            v19 = strnlen(&buf[12], 0x14uLL);
            sub_22EE9C1B0(&v20, &buf[12], v19);
            if (*(v18 + 47) < 0)
            {
              operator delete(v18[3]);
            }

            *(v18 + 3) = v20;
            v18[5] = v21;
          }
        }

        v4 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    if (a4 != 32)
    {
      sub_22EEAA0BC();
    }

    if (a3 >= 0x1C)
    {
      v9 = a3 / 0x1C;
      do
      {
        *buf = *v4;
        *&buf[12] = *(v4 + 12);
        v10 = *&buf[4];
        v22 = *buf;
        if ((*&buf[4] & 0x80000000) == 0)
        {
          *&v20 = &v22;
          *(sub_22EEA2CC0(a1, &v22) + 6) = v10;
          *&v20 = v22;
          if (!sub_22EE9EEC4((a1 + 40), &v20))
          {
            v23 = v22;
            *&v20 = &v23;
            v11 = sub_22EEA398C((a1 + 40), &v23);
            v11[3] = v22;
            *(v11 + 8) = *&buf[4];
          }

          LODWORD(v20) = v10;
          if (!sub_22EEA2204((a1 + 80), &v20))
          {
            LODWORD(v23) = v10;
            *&v20 = &v23;
            v12 = sub_22EEA22B8((a1 + 80), &v23);
            *(v12 + 12) = v10;
            v13 = strnlen(&buf[8], 0x14uLL);
            sub_22EE9C1B0(&v20, &buf[8], v13);
            if (*(v12 + 47) < 0)
            {
              operator delete(v12[3]);
            }

            *(v12 + 3) = v20;
            v12[5] = v21;
          }
        }

        v4 = (v4 + 28);
        --v9;
      }

      while (v9);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *sub_22EE9CEE0(uint64_t a1, uint64_t *a2)
{
  LODWORD(v19) = 0;
  result = sub_22EEA2204((a1 + 80), &v19);
  if (result)
  {
    v5 = (result + 3);
  }

  else
  {
    LODWORD(v18) = 0;
    v19 = &v18;
    v6 = sub_22EEA22B8((a1 + 80), &v18);
    v5 = (v6 + 3);
    *(v6 + 12) = 0;
    result = MEMORY[0x2318F8F80](v6 + 3, "kernel_task");
  }

  v7 = *a2;
  if ((*a2 & 0x40) != 0)
  {
    v8 = *(a2 + 541);
    if (v8)
    {
      result = sub_22EE9C518(a2 + 271, v8, (*(a2 + 540) >> 2) & 1, v5);
      v7 = *a2;
    }
  }

  if ((v7 & 0x80) != 0 && *(a2 + 27))
  {
    if ((v7 & 4) == 0)
    {
      sub_22EEA659C();
    }

    v9 = *(a2 + 26);
    v10 = a2[2];
    v19 = v10;
    result = sub_22EE9EEC4((a1 + 40), &v19);
    if (!result)
    {
      v18 = v10;
      v19 = &v18;
      result = sub_22EEA398C((a1 + 40), &v18);
      result[3] = v10;
    }

    v11 = (result + 3);
    v12 = *(a2 + 27);
    v13 = a2[14];
    v18 = v13;
    if ((v9 & 4) != 0)
    {
      v14 = 0x100000000;
    }

    else
    {
      v14 = 4096;
    }

    if (v14 < v13)
    {
      v19 = &v18;
      result = sub_22EE9EF78(result + 5, &v18);
      ++result[3];
    }

    if (v12 >= 2)
    {
      v15 = v12 - 1;
      v16 = a2 + 15;
      do
      {
        v17 = *v16++;
        v18 = v17 - 1;
        if (v14 < v17 - 1)
        {
          v19 = &v18;
          result = sub_22EE9EF78(v11 + 2, &v18);
          ++result[3];
        }

        --v15;
      }

      while (v15);
    }
  }

  return result;
}

double sub_22EE9D0BC(void *a1, unint64_t a2, char *a3, int a4)
{
  v13 = a2;
  if (a4 != -1)
  {
    *(sub_22EEA2CC0(a1, &v13) + 6) = a4;
    *&v11 = v13;
    v7 = sub_22EE9EEC4(a1 + 5, &v11);
    if (!v7)
    {
      v14 = v13;
      *&v11 = &v14;
      v7 = sub_22EEA398C(a1 + 5, &v14);
    }

    v7[3] = v13;
    *(v7 + 8) = a4;
    LODWORD(v11) = a4;
    v8 = sub_22EEA2204(a1 + 10, &v11);
    if (!v8)
    {
      LODWORD(v14) = a4;
      *&v11 = &v14;
      v8 = sub_22EEA22B8(a1 + 10, &v14);
    }

    *(v8 + 12) = a4;
    if (a3)
    {
      v10 = strnlen(a3, 0x20uLL);
      sub_22EE9C1B0(&v11, a3, v10);
      if (*(v8 + 47) < 0)
      {
        operator delete(v8[3]);
      }

      result = *&v11;
      *(v8 + 3) = v11;
      v8[5] = v12;
    }
  }

  return result;
}

void sub_22EE9D1FC(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 264) == 1)
  {
    v5 = *__error();
    v6 = sub_22EE82CE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22EE81000, v6, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_parse_process_info] Shortcircuit due to signal received", buf, 2u);
    }

    *__error() = v5;
  }

  else
  {
    v19 = v3;
    v7 = [v3 objectForKeyedSubscript:@"Pid"];
    v8 = [v7 intValue];

    v9 = [v4 objectForKeyedSubscript:@"LoadInfos"];
    if (v9)
    {
      *buf = v8;
      v18 = v9;
      v10 = sub_22EEA2204((a1 + 80), buf);
      if (!v10)
      {
        LODWORD(v24) = v8;
        *buf = &v24;
        v10 = sub_22EEA22B8((a1 + 80), &v24);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v12)
      {
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v16 = [v11 objectForKey:{v15, v18}];
            uuid_clear(buf);
            memset(v26, 0, sizeof(v26));
            v27 = 1065353216;
            v28 = 0;
            v29 = -1;
            v30 = 0;
            v31 = 0u;
            v32 = 0u;
            sub_22EE9EE4C(&v24, v15);
            *buf = v24;
            v26[0] = [v16 unsignedLongLongValue];
            v29 = v8;
            v30 = sub_22EEA1FC8((a1 + 200), buf) != 0;
            sub_22EE9CAEC(v10 + 9, buf);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(*(&v31 + 1));
            }

            sub_22EE9EB68(&v26[1]);
          }

          v12 = [v11 countByEnumeratingWithState:&v20 objects:v33 count:16];
        }

        while (v12);
      }

      v9 = v18;
    }

    v4 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_22EE9D534(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 264) == 1)
  {
    v5 = *__error();
    v6 = sub_22EE82CE0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22EE81000, v6, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_parse_process_info] Shortcircuit due to signal received", buf, 2u);
    }

    *__error() = v5;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"TEXT_EXEC"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"UUID_String"];
      v10 = v9;
      if (!v9)
      {
        _os_assert_log();
        v18 = _os_crash();
        sub_22EEA88BC(v18);
      }

      sub_22EE9EE4C(buf, v10);
      if (!sub_22EEA1FC8((a1 + 200), buf))
      {
        sub_22EEA3C58((a1 + 200), buf);
        for (i = *(a1 + 96); i; i = *i)
        {
          v12 = i[9];
          v13 = i[10];
          while (v12 != v13)
          {
            v19 = *v12;
            if (!uuid_compare(&v19, buf))
            {
              *(v12 + 76) = 1;
              break;
            }

            v12 += 7;
          }
        }

        for (j = *(a1 + 136); j; j = *j)
        {
          v15 = j[4];
          v16 = j[5];
          while (v15 != v16)
          {
            v19 = *v15;
            if (!uuid_compare(&v19, buf))
            {
              *(v15 + 76) = 1;
              break;
            }

            v15 += 7;
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void *sub_22EE9D778(void *result, uint64_t a2, void *a3, void *a4)
{
  if (!result)
  {
    sub_22EEA659C();
  }

  if (!a3)
  {
    sub_22EEA659C();
  }

  if (!a4)
  {
    sub_22EEA659C();
  }

  *a3 = 0;
  *a4 = 0;
  v7 = *(a2 + 48);
  if (v7)
  {
    result = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
    if (!result)
    {
      sub_22EEA659C();
    }

    v8 = *(a2 + 40);
    if (v8)
    {
      v9 = 0;
      do
      {
        result[v9++] = v8[2];
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if (v9 != v7)
    {
      sub_22EEA659C();
    }

    *a4 = result;
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22EE9D840(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v141 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  if (!a4)
  {
    sub_22EEA659C();
  }

  v130 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  if (*(a1 + 264) == 1)
  {
    v4 = *__error();
    v5 = sub_22EE82CE0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22EE81000, v5, OS_LOG_TYPE_INFO, "[tailspin_symbol_factory_write_to_file] Shortcircuit due to signal received", buf, 2u);
    }

    *__error() = v4;
    v6 = 4;
    goto LABEL_166;
  }

  for (i = *(a1 + 56); i; i = *i)
  {
    if (i[8])
    {
      *buf = i[2];
      v8 = sub_22EE9EEC4(a1, buf);
      if (v8)
      {
        *buf = *(v8 + 6);
        v9 = sub_22EEA2204((a1 + 80), buf);
        if (!v9)
        {
          _os_assert_log();
          v121 = _os_crash();
          sub_22EEA88BC(v121);
        }

        for (j = i[7]; j; j = *j)
        {
          v11 = j[3];
          *uu = j[2];
          *buf = uu;
          v12 = sub_22EE9EF78(v9 + 17, uu);
          v12[3] += v11;
        }
      }

      sub_22EE9F430(i + 5);
    }
  }

  v13 = a1;
  sub_22EE9F49C(a1 + 40);
  for (k = *(a1 + 136); k; k = *k)
  {
    v15 = k[4];
    v16 = k[5];
    if (v15 != v16)
    {
      v17 = k[9];
      v18 = k[4];
      do
      {
        *(v18 + 16) += v17;
        v18 += 112;
      }

      while (v18 != v16);
      sub_22EE9F4F8(v15, v16, buf, 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v16 - v15) >> 4)), 1);
      v19 = k[5];
      k[10] = *(k[4] + 16);
      k[11] = *(v19 - 32) + *(v19 - 96);
    }
  }

  v20 = *(a1 + 96);
  if (!v20)
  {
    goto LABEL_45;
  }

  do
  {
    *uu = *(v20 + 52);
    if (uuid_is_null(uu))
    {
      *uu = *(a1 + 240);
      *(v20 + 52) = *uu;
    }

    if (!uuid_is_null(uu))
    {
      *buf = *uu;
      v21 = sub_22EEA1FC8((a1 + 120), buf);
      if (!v21)
      {
        _os_assert_log();
        v122 = _os_crash();
        sub_22EEA88BC(v122);
      }

      uuid_clear(buf);
      memset(v133, 0, sizeof(v133));
      v134 = 1065353216;
      v135 = 0;
      v136 = -1;
      v137 = 0;
      v138 = 0u;
      v139 = 0u;
      *buf = *uu;
      v22 = *(v21 + 11);
      *&buf[16] = *(v21 + 10);
      *&v138 = v22 - *&buf[16];
      MEMORY[0x2318F8F80](&v138 + 8, "shared_cache");
      sub_22EE9CAEC(v20 + 9, buf);
      v23 = v20[9];
      v24 = v20[10];
      v25 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v24 - v23) >> 4));
      if (v24 == v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }

      sub_22EE9F4F8(v23, v24, &v126, v26, 1);
      if (SHIBYTE(v139) < 0)
      {
        operator delete(*(&v138 + 1));
      }

      sub_22EE9EB68(v133);
    }

    v20 = *v20;
  }

  while (v20);
  v13 = a1;
  v20 = *(a1 + 96);
  if (v20)
  {
    v27 = *(a1 + 96);
    do
    {
      v29 = v27[9];
      v28 = v27[10];
      if (v28 != v29)
      {
        v30 = 0x6DB6DB6DB6DB6DB7 * ((v28 - v29) >> 4);
        if (v30 >= 2)
        {
          v31 = *(v29 + 16);
          v32 = (v29 + 80);
          v33 = 2;
          v34 = 1;
          do
          {
            v35 = *(v29 + 112 * v34 + 16);
            if (!*v32)
            {
              *v32 = v35 - v31;
            }

            v34 = v33;
            v36 = v30 > v33++;
            v32 += 14;
            v31 = v35;
          }

          while (v36);
        }

        if (!*(v28 - 32))
        {
          *(v28 - 32) = 0x10000000;
        }
      }

      v27 = *v27;
    }

    while (v27);
    v37 = 0;
  }

  else
  {
LABEL_45:
    v37 = 1;
  }

  for (m = *(v13 + 136); m; m = *m)
  {
    v40 = m[4];
    v39 = m[5];
    if (v39 != v40 && !*(v40 + 80))
    {
      v41 = 0x6DB6DB6DB6DB6DB7 * ((v39 - v40) >> 4);
      if (v41 >= 2)
      {
        v42 = *(v40 + 16);
        v43 = (v40 + 80);
        v44 = 2;
        v45 = 1;
        do
        {
          v46 = *(v40 + 112 * v45 + 16);
          *v43 = v46 - v42;
          v43 += 14;
          v45 = v44;
          v36 = v41 > v44++;
          v42 = v46;
        }

        while (v36);
      }

      *(v39 - 32) = 0x4000000;
    }
  }

  if ((v37 & 1) == 0)
  {
    while (1)
    {
      v47 = v20[19];
      if (v47)
      {
        break;
      }

LABEL_94:
      sub_22EE9F430(v20 + 17);
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v49 = v47[2];
      v48 = v47[3];
      if (v49)
      {
        v50 = v48 == 0;
      }

      else
      {
        v50 = 1;
      }

      if (v50)
      {
        goto LABEL_73;
      }

      v52 = v20[9];
      v51 = v20[10];
      if (v51 == v52)
      {
        break;
      }

      v53 = 0x6DB6DB6DB6DB6DB7 * ((v51 - v52) >> 4);
      do
      {
        v54 = v53 >> 1;
        v55 = &v52[112 * (v53 >> 1)];
        v56 = *(v55 + 10) + *(v55 + 2);
        v57 = v55 + 112;
        v53 += ~(v53 >> 1);
        if (v56 < v49)
        {
          v52 = v57;
        }

        else
        {
          v53 = v54;
        }
      }

      while (v53);
      if (v52 == v51)
      {
        break;
      }

      v58 = uuid_compare(v52, v20 + 52);
      v59 = *__error();
      v60 = sub_22EE82CE0();
      v61 = os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG);
      if (v58)
      {
        if (v61)
        {
          *buf = 134217984;
          *&buf[4] = v49;
          _os_log_debug_impl(&dword_22EE81000, v60, OS_LOG_TYPE_DEBUG, "Address %#llx is in non-shared-cache binary", buf, 0xCu);
        }
      }

      else
      {
        if (v61)
        {
          *buf = 134217984;
          *&buf[4] = v49;
          _os_log_debug_impl(&dword_22EE81000, v60, OS_LOG_TYPE_DEBUG, "Address %#llx is in shared cache", buf, 0xCu);
        }

        *__error() = v59;
        *buf = *(v20 + 52);
        v64 = sub_22EEA1FC8((a1 + 120), buf);
        if (!v64)
        {
          _os_assert_log();
          v120 = _os_crash();
          sub_22EEA88BC(v120);
        }

        v52 = *(v64 + 4);
        v65 = *(v64 + 5);
        if (v65 == v52)
        {
          goto LABEL_88;
        }

        v66 = 0x6DB6DB6DB6DB6DB7 * ((v65 - v52) >> 4);
        do
        {
          v67 = v66 >> 1;
          v68 = &v52[112 * (v66 >> 1)];
          v69 = *(v68 + 10) + *(v68 + 2);
          v70 = v68 + 112;
          v66 += ~(v66 >> 1);
          if (v69 < v49)
          {
            v52 = v70;
          }

          else
          {
            v66 = v67;
          }
        }

        while (v66);
        if (v52 == v65)
        {
LABEL_88:
          v62 = *__error();
          v63 = sub_22EE82CE0();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v49;
            _os_log_debug_impl(&dword_22EE81000, v63, OS_LOG_TYPE_DEBUG, "Couldn't find a shared cache binary that %#llx falls into", buf, 0xCu);
          }

LABEL_72:

          *__error() = v62;
          goto LABEL_73;
        }

        v59 = *__error();
        v60 = sub_22EE82CE0();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *&buf[4] = v49;
          _os_log_debug_impl(&dword_22EE81000, v60, OS_LOG_TYPE_DEBUG, "Found a shared cache binary for %#llx", buf, 0xCu);
        }
      }

      *__error() = v59;
      sub_22EEA1390(v52, v49, v48);
LABEL_73:
      v47 = *v47;
      if (!v47)
      {
        goto LABEL_94;
      }
    }

    v62 = *__error();
    v63 = sub_22EE82CE0();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      v71 = v20 + 3;
      if (*(v20 + 47) < 0)
      {
        v71 = v20[3];
      }

      *buf = 134218242;
      *&buf[4] = v49;
      *&buf[12] = 2080;
      *&buf[14] = v71;
      _os_log_debug_impl(&dword_22EE81000, v63, OS_LOG_TYPE_DEBUG, "Address %#llx is out of range of all binaries in proc %s", buf, 0x16u);
    }

    goto LABEL_72;
  }

LABEL_95:
  sub_22EEA14FC(a1 + 160);
  for (n = *(a1 + 136); n; n = *n)
  {
    v74 = n[4];
    v73 = n[5];
    while (v74 != v73)
    {
      *buf = v74;
      v75 = sub_22EEA1558((a1 + 160), v74);
      v76 = v75;
      v77 = *&v74->__r_.__value_.__l.__data_;
      *(v75 + 6) = *(&v74->__r_.__value_.__l + 2);
      *(v75 + 2) = v77;
      if (v75 + 32 != v74)
      {
        *(v75 + 22) = v74[2].__r_.__value_.__r.__words[1];
        sub_22EEA1924(v75 + 7, v74[1].__r_.__value_.__r.__words[2], 0);
      }

      v78 = *&v74[2].__r_.__value_.__r.__words[2];
      *(v76 + 14) = v74[3].__r_.__value_.__l.__size_;
      *(v76 + 6) = v78;
      v79 = (v74 + 88);
      std::string::operator=(v76 + 5, v79);
      v74 = v79 + 1;
    }
  }

  sub_22EEA1F6C(a1 + 120);
  for (ii = *(a1 + 96); ii; ii = *ii)
  {
    v81 = *(ii + 9);
    v82 = *(ii + 10);
    while (v81 != v82)
    {
      *uu = *v81;
      if (uuid_compare(uu, ii + 52))
      {
        *buf = *uu;
        v83 = sub_22EEA1FC8((a1 + 160), buf);
        v84 = v83;
        if (v83)
        {
          v85 = v83 + 32;
        }

        else
        {
          v85 = 0;
        }

        if (v83)
        {
          for (jj = *(v81 + 5); jj; jj = *jj)
          {
            *buf = jj[2];
            sub_22EEA2A94(v84 + 7, buf);
          }

          *(v85 + 8) += *(v81 + 8);
          if (*(v85 + 18) == 1)
          {
            v87 = *(v81 + 18);
            if (v87 != 1)
            {
              *(v85 + 18) = v87;
            }
          }
        }

        else
        {
          *buf = uu;
          v88 = sub_22EEA1558((a1 + 160), uu);
          v89 = v88;
          v90 = *v81;
          *(v88 + 6) = *(v81 + 2);
          *(v88 + 2) = v90;
          if (v88 + 32 != v81)
          {
            *(v88 + 22) = *(v81 + 14);
            sub_22EEA1924(v88 + 7, *(v81 + 5), 0);
          }

          v91 = *(v81 + 4);
          *(v89 + 14) = *(v81 + 10);
          *(v89 + 6) = v91;
          std::string::operator=(v89 + 5, (v81 + 88));
        }

        sub_22EE9F430(v81 + 3);
        *(v81 + 8) = 0;
      }

      v81 += 112;
    }
  }

  sub_22EEA2100(a1 + 80);
  for (kk = (a1 + 176); ; sub_22EE9CAEC(&v127, kk + 2))
  {
    kk = *kk;
    if (!kk)
    {
      break;
    }
  }

  v93 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v128 - v127));
  *buf = sub_22EE9D82C;
  if (v128 == v127)
  {
    v94 = 0;
  }

  else
  {
    v94 = v93;
  }

  sub_22EEA3EF4(v127, v128, buf, v94, 1);
  v95 = objc_alloc_init(MEMORY[0x277D6C5D8]);
  v96 = v128;
  if (v127 != v128)
  {
    v97 = 0;
    v98 = v127 + 6;
    while (1)
    {
      *uu = *(v98 - 6);
      if (*(v98 + 15) < 0)
      {
        v99 = *v98 ? *(v98 - 1) : 0;
      }

      else
      {
        v99 = *(v98 + 15) ? v98 - 8 : 0;
      }

      v100 = v98 - 6;
      v101 = *(v98 - 6);
      v102 = *(v98 - 20);
      v131 = 0;
      v126 = 0;
      if (*(a1 + 264) == 1)
      {
        break;
      }

      sub_22EE9D778(a1, (v98 - 6), &v126, &v131);
      v103 = *__error();
      v104 = sub_22EE82CE0();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        v109 = *(v98 - 4);
        *buf = 136315394;
        *&buf[4] = v99;
        *&buf[12] = 2048;
        *&buf[14] = v109;
        _os_log_debug_impl(&dword_22EE81000, v104, OS_LOG_TYPE_DEBUG, "Frequency of offsets in binary %s: %llu", buf, 0x16u);
      }

      *__error() = v103;
      v105 = *__error();
      v106 = sub_22EE82CE0();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = v99;
        *&buf[12] = 2048;
        *&buf[14] = v126;
        _os_log_debug_impl(&dword_22EE81000, v106, OS_LOG_TYPE_DEBUG, "Number of offsets in binary %s: %lu", buf, 0x16u);
      }

      v107 = 0;
      *__error() = v105;
      if (v126 && *(v98 - 4))
      {
        v123 = &v130;
        v107 = tailspin_symbolicator_copy_symbol_data_using_uuid_pid_path(v95, a2, uu, v101, v99, v102, v131, v126);
        free(v131);
        if (v107)
        {
          v108 = v107;
          [v107 bytes];
          [v107 length];
          if (!ktrace_file_append_chunk())
          {
            v112 = *__error();
            v113 = sub_22EE82CE0();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              v114 = __error();
              sub_22EEAA0D8(v99, v114, buf, v113);
            }

            *__error() = v112;
            v115 = *__error();
            if (!v115)
            {
              v115 = -1;
            }

            v130 = v115;

            goto LABEL_162;
          }

          v97 = 1;
        }

        else
        {
          if (v130)
          {
            goto LABEL_162;
          }

          v107 = 0;
        }
      }

      v98 += 7;
      if (v100 + 7 == v96)
      {
        goto LABEL_162;
      }
    }

    if (v97)
    {
      v110 = *__error();
      v111 = sub_22EE82CE0();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22EE81000, v111, OS_LOG_TYPE_INFO, "Signal received, skipping further symbolication", buf, 2u);
      }
    }

    else
    {
      v110 = *__error();
      v111 = sub_22EE82CE0();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22EE81000, v111, OS_LOG_TYPE_INFO, "Signal received, skipping symbolication", buf, 2u);
      }
    }

    *__error() = v110;
  }

LABEL_162:
  [v95 invalidateConnection];
  v117 = v127;
  for (mm = v128; mm != v117; sub_22EEA3454(&v127, mm))
  {
    mm -= 7;
  }

  v128 = v117;
  v6 = v130;

LABEL_166:
  *uu = &v127;
  sub_22EEA2EF4(uu);
  v118 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_22EE9E650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  a26 = &a22;
  sub_22EEA2EF4(&a26);
  _Unwind_Resume(a1);
}

void sub_22EE9E720(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_22EEA659C();
  }

  puts("\nProcesses List");
  for (i = *(a1 + 96); i; i = *i)
  {
    uuid_unparse(i + 52, out);
    v3 = (i + 3);
    if (*(i + 47) < 0)
    {
      v3 = *v3;
    }

    printf("\t%s (%d) | Libs: %ld Addresses: %ld, shared_cache_uuid: %s\n", v3, *(i + 12), 0x6DB6DB6DB6DB6DB7 * ((i[10] - i[9]) >> 4), i[20], out);
    puts("\t\tLibraries:");
    v4 = i[9];
    v5 = i[10];
    if (v4 != v5)
    {
      v6 = v4 + 88;
      do
      {
        v7 = v6 - 88;
        uuid_unparse((v6 - 88), out);
        if (*(v6 + 23) < 0)
        {
          v8 = *(v6 + 8);
          if (v8)
          {
            v8 = *v6;
          }
        }

        else if (*(v6 + 23))
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        printf("\t\t\t%s - %llx - %s\n", out, *(v6 - 72), v8);
        v6 += 112;
      }

      while (v7 + 112 != v5);
    }
  }

  puts("\nShared Caches");
  for (j = *(a1 + 136); j; j = *j)
  {
    uuid_unparse(j + 16, out);
    sub_22EE9EAB0(__p, out);
    if (v24 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    printf("\tSharedCache: %s | Libraries: %ld\n", v10, 0x6DB6DB6DB6DB6DB7 * ((*(j + 5) - *(j + 4)) >> 4));
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(j + 4);
    v12 = *(j + 5);
    if (v11 != v12)
    {
      v13 = v11 + 88;
      do
      {
        v14 = v13 - 88;
        uuid_unparse((v13 - 88), out);
        sub_22EE9EAB0(__p, out);
        if (v24 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = v13;
        if (*(v13 + 23) < 0)
        {
          v16 = *v13;
        }

        printf("\t\t%s - %llx - %s\n", v15, *(v13 - 72), v16);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v13 += 112;
      }

      while (v14 + 112 != v12);
    }
  }

  puts("\nDefault Shared Cache");
  *uu = *(a1 + 240);
  uuid_unparse(uu, out);
  sub_22EE9EAB0(__p, out);
  if (v24 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  printf("\t%s\n", v17);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  puts("\nSymbol Owners");
  for (k = *(a1 + 176); k; k = *k)
  {
    *uu = *(k + 1);
    uuid_unparse(uu, out);
    v19 = k[10];
    if (v19)
    {
      putchar(9);
      sub_22EE9EAB0(__p, out);
      if (v24 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = (k + 15);
      if (*(k + 143) < 0)
      {
        v21 = *v21;
      }

      printf(" %s | Size: %#-15llx - Offsets: %#-5lx | %s \n", v20, k[14], v19, v21);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_22EE9EAB0(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22EEA215C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_22EE9EB68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_22EE9EBC8(uint64_t a1)
{
  sub_22EE9EC04(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22EE9EC04(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22EE9EC48((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22EE9EC48(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_22EE9EB68(a1 + 40);
}

uint64_t sub_22EE9EC8C(uint64_t a1)
{
  sub_22EE9ECC8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22EE9ECC8(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 32);
      sub_22EEA2EF4(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22EE9ED1C(uint64_t a1)
{
  sub_22EE9ED58(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22EE9ED58(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22EE9EB68((v2 + 17));
      sub_22EE9EB68((v2 + 12));
      v4 = v2 + 9;
      sub_22EEA2EF4(&v4);
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22EE9EDCC(uint64_t a1)
{
  sub_22EE9EE08(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22EE9EE08(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22EE9EB68((v2 + 5));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_22EE9EE4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
  [v4 getUUIDBytes:a1];

  return a1;
}

void *sub_22EE9EEC4(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_22EE9EF78(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_22EE9F1A8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_22EE9F1DC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_22EE9F2CC(a1, prime);
    }
  }
}

void sub_22EE9F2CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22EE9F1A8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_22EE9F430(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void sub_22EE9F49C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22EE9EE08(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_22EE9F4F8(uint64_t result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = result;
  v44 = a2;
  v45 = result;
  while (1)
  {
    --a4;
    v10 = v8 - v9;
    v11 = 0x6DB6DB6DB6DB6DB7 * (v8 - v9);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v44 = v8 - 7;
        if (*(v8 - 12) >= *(v9 + 2))
        {
          return result;
        }

        v42 = &v45;
        v43 = &v44;
        return sub_22EE9FB18(v42, v43);
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v49 = v9 + 7;
      v50 = v9;
      v48 = v8 - 7;
      v40 = *(v9 + 16);
      v41 = *(v8 - 12);
      if (v40 >= *(v9 + 2))
      {
        if (v41 >= v40)
        {
          return result;
        }

        result = sub_22EE9FB18(&v49, &v48);
        v38 = *(v49 + 2);
        v39 = *(v50 + 2);
LABEL_86:
        if (v38 >= v39)
        {
          return result;
        }

        v42 = &v50;
        v43 = &v49;
      }

      else
      {
        v42 = &v50;
        if (v41 >= v40)
        {
          result = sub_22EE9FB18(&v50, &v49);
          if (*(v48 + 2) >= *(v49 + 2))
          {
            return result;
          }

          v42 = &v49;
        }

        v43 = &v48;
      }

      return sub_22EE9FB18(v42, v43);
    }

    if (v11 == 4)
    {
      v44 = v8 - 7;
      return sub_22EE9FC70(v9, (v9 + 7), (v9 + 14), (v8 - 7));
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 2687)
    {
      if (a5)
      {
        return sub_22EE9FD98(v9, v8);
      }

      else
      {
        return sub_22EE9FF80(v9, v8);
      }
    }

    if (a4 == -1)
    {
      if (v9 != v8)
      {
        return sub_22EEA0AE8(v9, v8, v8, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v9[7 * (v11 >> 1)];
    if (v10 >= 0x3801)
    {
      v49 = v13;
      v50 = v9;
      v48 = v8 - 7;
      v14 = *(v13 + 2);
      v15 = *(v8 - 12);
      if (v14 >= *(v9 + 2))
      {
        if (v15 >= v14 || (sub_22EE9FB18(&v49, &v48), *(v49 + 2) >= *(v50 + 2)))
        {
LABEL_26:
          v49 = &v45[7 * v12 - 7];
          v50 = v45 + 7;
          v48 = v8 - 14;
          v23 = *(v49 + 2);
          v24 = *(v8 - 26);
          if (v23 >= *(v45 + 16))
          {
            if (v24 >= v23 || (sub_22EE9FB18(&v49, &v48), *(v49 + 2) >= *(v50 + 2)))
            {
LABEL_39:
              v49 = &v45[7 * v12 + 7];
              v50 = v45 + 14;
              v48 = v8 - 21;
              v27 = *(v49 + 2);
              v28 = *(v8 - 40);
              if (v27 >= *(v45 + 30))
              {
                if (v28 >= v27 || (sub_22EE9FB18(&v49, &v48), *(v49 + 2) >= *(v50 + 2)))
                {
LABEL_48:
                  v49 = &v45[7 * v12];
                  v50 = &v45[7 * v12 - 7];
                  v48 = &v45[7 * v12 + 7];
                  v31 = *(v49 + 2);
                  v32 = *(v48 + 2);
                  if (v31 >= *(v50 + 2))
                  {
                    if (v32 >= v31)
                    {
                      goto LABEL_57;
                    }

                    sub_22EE9FB18(&v49, &v48);
                    if (*(v49 + 2) >= *(v50 + 2))
                    {
                      goto LABEL_57;
                    }

                    v33 = &v50;
                    v34 = &v49;
                  }

                  else
                  {
                    v33 = &v50;
                    if (v32 >= v31)
                    {
                      sub_22EE9FB18(&v50, &v49);
                      if (*(v48 + 2) >= *(v49 + 2))
                      {
LABEL_57:
                        v50 = &v45[7 * v12];
                        sub_22EE9FB18(&v45, &v50);
                        goto LABEL_58;
                      }

                      v33 = &v49;
                    }

                    v34 = &v48;
                  }

                  sub_22EE9FB18(v33, v34);
                  goto LABEL_57;
                }

                v29 = &v50;
                v30 = &v49;
              }

              else
              {
                v29 = &v50;
                if (v28 >= v27)
                {
                  sub_22EE9FB18(&v50, &v49);
                  if (*(v48 + 2) >= *(v49 + 2))
                  {
                    goto LABEL_48;
                  }

                  v29 = &v49;
                }

                v30 = &v48;
              }

              sub_22EE9FB18(v29, v30);
              goto LABEL_48;
            }

            v25 = &v50;
            v26 = &v49;
          }

          else
          {
            v25 = &v50;
            if (v24 >= v23)
            {
              sub_22EE9FB18(&v50, &v49);
              if (*(v48 + 2) >= *(v49 + 2))
              {
                goto LABEL_39;
              }

              v25 = &v49;
            }

            v26 = &v48;
          }

          sub_22EE9FB18(v25, v26);
          goto LABEL_39;
        }

        v16 = &v50;
        v17 = &v49;
      }

      else
      {
        v16 = &v50;
        if (v15 >= v14)
        {
          sub_22EE9FB18(&v50, &v49);
          if (*(v48 + 2) >= *(v49 + 2))
          {
            goto LABEL_26;
          }

          v16 = &v49;
        }

        v17 = &v48;
      }

      sub_22EE9FB18(v16, v17);
      goto LABEL_26;
    }

    v49 = v9;
    v50 = v13;
    v48 = v8 - 7;
    v18 = *(v9 + 2);
    v19 = *(v13 + 2);
    v20 = *(v8 - 12);
    if (v18 >= v19)
    {
      if (v20 >= v18)
      {
        goto LABEL_58;
      }

      sub_22EE9FB18(&v49, &v48);
      if (*(v49 + 2) >= *(v50 + 2))
      {
        goto LABEL_58;
      }

      v21 = &v50;
      v22 = &v49;
    }

    else
    {
      v21 = &v50;
      if (v20 >= v18)
      {
        sub_22EE9FB18(&v50, &v49);
        if (*(v48 + 2) >= *(v49 + 2))
        {
          goto LABEL_58;
        }

        v21 = &v49;
      }

      v22 = &v48;
    }

    sub_22EE9FB18(v21, v22);
LABEL_58:
    if ((a5 & 1) != 0 || *(v45 - 12) < *(v45 + 2))
    {
      v35 = sub_22EEA036C(v45, v8);
      if (v36)
      {
        v37 = sub_22EEA05B0(v45, v35);
        v9 = v35 + 7;
        result = sub_22EEA05B0((v35 + 7), v8);
        if (!result)
        {
          if (v37)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        if (v37)
        {
          return result;
        }

        v44 = v35;
        v9 = v45;
        v8 = v35;
      }

      else
      {
LABEL_63:
        result = sub_22EE9F4F8(v45, v35, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v35 + 7;
LABEL_64:
        v45 = v9;
      }
    }

    else
    {
      result = sub_22EEA013C(v45, v8);
      v9 = result;
      a5 = 0;
      v45 = result;
    }
  }

  v44 = v8 - 7;
  v49 = v9 + 7;
  v50 = v9;
  v47 = v9 + 21;
  v48 = v9 + 14;
  v46 = v8 - 7;
  result = sub_22EE9FC70(v9, (v9 + 7), (v9 + 14), (v9 + 21));
  if (*(v8 - 12) < *(v9 + 44))
  {
    result = sub_22EE9FB18(&v47, &v46);
    if (*(v47 + 2) < *(v9 + 30))
    {
      result = sub_22EE9FB18(&v48, &v47);
      if (*(v48 + 2) < *(v9 + 16))
      {
        result = sub_22EE9FB18(&v49, &v48);
        v38 = *(v49 + 2);
        v39 = *(v9 + 2);
        goto LABEL_86;
      }
    }
  }

  return result;
}

uint64_t sub_22EE9FB18(__int128 **a1, __int128 **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v14 = *(*a1 + 2);
  v13 = **a1;
  sub_22EEA09D4(v15, *a1 + 3);
  v4 = v2[4];
  v17 = *(v2 + 10);
  v16 = v4;
  v5 = *(v2 + 13);
  v18 = *(v2 + 88);
  v19 = v5;
  *(v2 + 12) = 0;
  *(v2 + 13) = 0;
  *(v2 + 11) = 0;
  v6 = *v3;
  *(v2 + 2) = *(v3 + 2);
  *v2 = v6;
  sub_22EEA0A44(v2 + 24, v3 + 3);
  v7 = v3[4];
  *(v2 + 10) = *(v3 + 10);
  v2[4] = v7;
  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 11));
  }

  v8 = *(v3 + 88);
  *(v2 + 13) = *(v3 + 13);
  *(v2 + 88) = v8;
  *(v3 + 111) = 0;
  *(v3 + 88) = 0;
  *v3 = v13;
  *(v3 + 2) = v14;
  sub_22EEA0A44(v3 + 24, v15);
  v9 = v16;
  *(v3 + 10) = v17;
  v3[4] = v9;
  if (*(v3 + 111) < 0)
  {
    operator delete(*(v3 + 11));
  }

  v10 = v18;
  *(v3 + 13) = v19;
  *(v3 + 88) = v10;
  HIBYTE(v19) = 0;
  LOBYTE(v18) = 0;
  result = sub_22EE9EB68(v15);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE9FC70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  if (v8 >= *(result + 16))
  {
    if (v9 < v8)
    {
      result = sub_22EE9FB18(&v17, &v16);
      if (*(v17 + 2) < *(v18 + 2))
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = sub_22EE9FB18(v10, v11);
      goto LABEL_10;
    }

    result = sub_22EE9FB18(&v18, &v17);
    if (*(v16 + 2) < *(v17 + 2))
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 16) < *(a3 + 16))
  {
    result = sub_22EE9FB18(&v13, &v12);
    if (*(v13 + 2) < *(a2 + 16))
    {
      result = sub_22EE9FB18(&v14, &v13);
      if (*(v14 + 2) < *(v7 + 16))
      {
        return sub_22EE9FB18(&v15, &v14);
      }
    }
  }

  return result;
}

uint64_t sub_22EE9FD98(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 112;
    if (result + 112 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        if (*(v6 + 128) < *(v6 + 16))
        {
          v14 = *v4;
          v15 = *(v4 + 16);
          sub_22EEA09D4(v16, (v6 + 136));
          v17 = *(v6 + 176);
          v18 = *(v6 + 192);
          v19 = *(v6 + 200);
          v20 = *(v6 + 216);
          *(v6 + 200) = 0;
          *(v6 + 208) = 0;
          v8 = v5;
          *(v6 + 216) = 0;
          while (1)
          {
            v9 = v8;
            v10 = v3 + v8;
            *(v10 + 112) = *(v3 + v8);
            *(v10 + 128) = *(v3 + v8 + 16);
            sub_22EEA0A44(v3 + v8 + 136, (v3 + v8 + 24));
            *(v10 + 176) = *(v10 + 64);
            *(v10 + 192) = *(v10 + 80);
            if (*(v10 + 223) < 0)
            {
              operator delete(*(v10 + 200));
            }

            *(v10 + 200) = *(v10 + 88);
            *(v10 + 216) = *(v10 + 104);
            *(v10 + 111) = 0;
            *(v10 + 88) = 0;
            if (!v9)
            {
              break;
            }

            v8 = v9 - 112;
            if (v15 >= *(v3 + v9 - 96))
            {
              v11 = v3 + v9;
              goto LABEL_12;
            }
          }

          v11 = v3;
LABEL_12:
          *v11 = v14;
          *(v11 + 16) = v15;
          v12 = v3 + v9;
          sub_22EEA0A44(v12 + 24, v16);
          *(v12 + 80) = v18;
          *(v12 + 64) = v17;
          if (*(v11 + 111) < 0)
          {
            operator delete(*(v12 + 88));
          }

          *(v12 + 88) = v19;
          *(v12 + 104) = v20;
          HIBYTE(v20) = 0;
          LOBYTE(v19) = 0;
          result = sub_22EE9EB68(v16);
        }

        v4 = v7 + 112;
        v5 += 112;
        v6 = v7;
      }

      while (v7 + 112 != a2);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE9FF80(uint64_t result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 112;
    if (result + 112 != a2)
    {
      v5 = (result + 223);
      do
      {
        v6 = v4;
        if (*(v3 + 128) < *(v3 + 16))
        {
          v11 = *v4;
          v12 = *(v4 + 16);
          sub_22EEA09D4(v13, (v3 + 136));
          v14 = *(v3 + 176);
          v15 = *(v3 + 192);
          v16 = *(v3 + 200);
          v17 = *(v3 + 216);
          *(v3 + 200) = 0;
          *(v3 + 208) = 0;
          v7 = v5;
          *(v3 + 216) = 0;
          do
          {
            *(v7 - 111) = *(v7 - 223);
            *(v7 - 95) = *(v7 - 207);
            sub_22EEA0A44((v7 - 87), (v7 - 199));
            *(v7 - 47) = *(v7 - 159);
            *(v7 - 31) = *(v7 - 143);
            v8 = (v7 - 23);
            if (*v7 < 0)
            {
              operator delete(*v8);
            }

            *(v7 - 7) = *(v7 - 119);
            *(v7 - 112) = 0;
            v7 -= 112;
            *v8 = *(v7 - 23);
            *(v7 - 23) = 0;
          }

          while (v12 < *(v7 - 207));
          *(v7 - 111) = v11;
          *(v7 - 95) = v12;
          sub_22EEA0A44((v7 - 87), v13);
          *(v7 - 47) = v14;
          *(v7 - 31) = v15;
          v9 = (v7 - 23);
          if (*v7 < 0)
          {
            operator delete(*v9);
          }

          *v9 = v16;
          *(v7 - 7) = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
          result = sub_22EE9EB68(v13);
        }

        v4 = v6 + 112;
        v5 += 112;
        v3 = v6;
      }

      while (v6 + 112 != a2);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *sub_22EEA013C(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v24 = a2;
  v26 = *a1;
  v27 = *(a1 + 16);
  sub_22EEA09D4(v28, (a1 + 24));
  v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 104);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v27 >= *(v2 - 12))
  {
    v7 = a1 + 112;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v8 = *(v7 + 16);
      v7 += 112;
    }

    while (v27 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 112);
      v6 = *(v4 + 128);
      v4 += 112;
    }

    while (v27 >= v6);
  }

  v25 = v5;
  if (v5 < v2)
  {
    do
    {
      v9 = *(v2 - 12);
      v2 -= 7;
    }

    while (v27 < v9);
    v24 = v2;
  }

  if (v5 < v2)
  {
    do
    {
      sub_22EE9FB18(&v25, &v24);
      v5 = v25;
      do
      {
        v10 = *(v5 + 16);
        v5 += 7;
      }

      while (v27 >= v10);
      v25 = v5;
      v11 = v24;
      do
      {
        v12 = *(v11 - 12);
        v11 -= 7;
      }

      while (v27 < v12);
      v24 = v11;
    }

    while (v5 < v11);
  }

  v13 = v5 - 7;
  if (v5 - 7 != a1)
  {
    v14 = *v13;
    *(a1 + 16) = *(v5 - 12);
    *a1 = v14;
    sub_22EEA0A44(a1 + 24, v5 - 11);
    v15 = *(v5 - 3);
    *(a1 + 80) = *(v5 - 4);
    *(a1 + 64) = v15;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    v16 = *(v5 - 24);
    *(a1 + 104) = *(v5 - 1);
    *(a1 + 88) = v16;
    *(v5 - 1) = 0;
    *(v5 - 24) = 0;
  }

  v17 = v26;
  *(v5 - 12) = v27;
  *v13 = v17;
  sub_22EEA0A44(v5 - 88, v28);
  v18 = v29;
  *(v5 - 4) = v30;
  *(v5 - 3) = v18;
  v19 = v5 - 3;
  if (*(v5 - 1) < 0)
  {
    operator delete(*v19);
  }

  v20 = v31;
  *(v5 - 1) = v32;
  *v19 = v20;
  HIBYTE(v32) = 0;
  LOBYTE(v31) = 0;
  v21 = v25;
  sub_22EE9EB68(v28);
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

__int128 *sub_22EEA036C(uint64_t a1, __int128 *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v26 = *a1;
  v27 = *(a1 + 16);
  sub_22EEA09D4(v28, (a1 + 24));
  v4 = 0;
  v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  v31 = *(a1 + 88);
  v32 = *(a1 + 104);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  do
  {
    v5 = *(a1 + v4 + 128);
    v4 += 112;
  }

  while (v5 < v27);
  v6 = (a1 + v4);
  v25 = (a1 + v4);
  if (v4 == 112)
  {
    while (v6 < a2)
    {
      v7 = a2 - 7;
      v9 = *(a2 - 12);
      a2 -= 7;
      if (v9 < v27)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 7;
      v8 = *(a2 - 12);
      a2 -= 7;
    }

    while (v8 >= v27);
  }

LABEL_9:
  v24 = v7;
  v10 = v6;
  if (v6 < v7)
  {
    do
    {
      sub_22EE9FB18(&v25, &v24);
      v10 = v25;
      do
      {
        v11 = *(v10 + 16);
        v10 += 7;
      }

      while (v11 < v27);
      v25 = v10;
      v12 = v24;
      do
      {
        v13 = *(v12 - 12);
        v12 -= 7;
      }

      while (v13 >= v27);
      v24 = v12;
    }

    while (v10 < v12);
  }

  v14 = v10 - 7;
  if (v10 - 7 != a1)
  {
    v15 = *v14;
    *(a1 + 16) = *(v10 - 12);
    *a1 = v15;
    sub_22EEA0A44(a1 + 24, v10 - 11);
    v16 = *(v10 - 3);
    *(a1 + 80) = *(v10 - 4);
    *(a1 + 64) = v16;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    v17 = *(v10 - 24);
    *(a1 + 104) = *(v10 - 1);
    *(a1 + 88) = v17;
    *(v10 - 1) = 0;
    *(v10 - 24) = 0;
  }

  v18 = v26;
  *(v10 - 12) = v27;
  *v14 = v18;
  sub_22EEA0A44(v10 - 88, v28);
  v19 = v29;
  *(v10 - 4) = v30;
  *(v10 - 3) = v19;
  v20 = v10 - 3;
  if (*(v10 - 1) < 0)
  {
    operator delete(*v20);
  }

  v21 = v31;
  *(v10 - 1) = v32;
  *v20 = v21;
  HIBYTE(v32) = 0;
  LOBYTE(v31) = 0;
  sub_22EE9EB68(v28);
  v22 = *MEMORY[0x277D85DE8];
  return v10 - 7;
}

BOOL sub_22EEA05B0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v25 = a2;
  v26 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v30 = (a1 + 112);
        *&v31 = a1;
        v29 = (a2 - 112);
        v9 = *(a1 + 128);
        v10 = *(a2 - 96);
        if (v9 < *(a1 + 16))
        {
          v5 = &v31;
          if (v10 >= v9)
          {
            sub_22EE9FB18(&v31, &v30);
            if (*(v29 + 2) >= *(v30 + 2))
            {
              goto LABEL_46;
            }

            v5 = &v30;
          }

          v6 = &v29;
          goto LABEL_28;
        }

        if (v10 >= v9)
        {
          goto LABEL_46;
        }

        sub_22EE9FB18(&v30, &v29);
        v7 = *(v30 + 2);
        v8 = *(v31 + 16);
        break;
      case 4:
        sub_22EE9FC70(a1, a1 + 112, a1 + 224, a2 - 112);
        goto LABEL_46;
      case 5:
        v30 = (a1 + 112);
        *&v31 = a1;
        v28 = (a1 + 336);
        v29 = (a1 + 224);
        v27 = (a2 - 112);
        sub_22EE9FC70(a1, a1 + 112, a1 + 224, a1 + 336);
        if (*(v2 - 96) >= *(a1 + 352))
        {
          goto LABEL_46;
        }

        sub_22EE9FB18(&v28, &v27);
        if (*(v28 + 2) >= *(a1 + 240))
        {
          goto LABEL_46;
        }

        sub_22EE9FB18(&v29, &v28);
        if (*(v29 + 2) >= *(a1 + 128))
        {
          goto LABEL_46;
        }

        sub_22EE9FB18(&v30, &v29);
        v7 = *(v30 + 2);
        v8 = *(a1 + 16);
        break;
      default:
        goto LABEL_18;
    }

    if (v7 < v8)
    {
      v5 = &v31;
      v6 = &v30;
      goto LABEL_28;
    }

    goto LABEL_46;
  }

  if (v4 < 2)
  {
    goto LABEL_46;
  }

  if (v4 != 2)
  {
LABEL_18:
    v11 = a1 + 224;
    v30 = (a1 + 112);
    *&v31 = a1;
    v29 = (a1 + 224);
    v12 = *(a1 + 128);
    v13 = *(a1 + 240);
    if (v12 >= *(a1 + 16))
    {
      if (v13 >= v12 || (sub_22EE9FB18(&v30, &v29), *(v30 + 2) >= *(v31 + 16)))
      {
LABEL_33:
        v16 = a1 + 336;
        if (v16 != v2)
        {
          v17 = 0;
          while (1)
          {
            if (*(v16 + 16) < *(v11 + 16))
            {
              v31 = *v16;
              v32 = *(v16 + 16);
              sub_22EEA09D4(v33, (v16 + 24));
              v34 = *(v16 + 64);
              v35 = *(v16 + 80);
              v36 = *(v16 + 88);
              v37 = *(v16 + 104);
              *(v16 + 88) = 0;
              *(v16 + 96) = 0;
              *(v16 + 104) = 0;
              do
              {
                v18 = v11;
                *(v11 + 112) = *v11;
                *(v11 + 128) = *(v11 + 16);
                sub_22EEA0A44(v11 + 136, (v11 + 24));
                *(v11 + 176) = *(v11 + 64);
                *(v11 + 192) = *(v11 + 80);
                if (*(v11 + 223) < 0)
                {
                  operator delete(*(v11 + 200));
                }

                *(v11 + 200) = *(v11 + 88);
                *(v11 + 216) = *(v11 + 104);
                *(v11 + 111) = 0;
                *(v11 + 88) = 0;
                if (v11 == v26)
                {
                  break;
                }

                v11 -= 112;
              }

              while (v32 < *(v18 - 96));
              v19 = v31;
              *(v18 + 16) = v32;
              *v18 = v19;
              sub_22EEA0A44(v18 + 24, v33);
              v20 = v34;
              *(v18 + 80) = v35;
              *(v18 + 64) = v20;
              if (*(v18 + 111) < 0)
              {
                operator delete(*(v18 + 88));
              }

              v21 = v36;
              *(v18 + 104) = v37;
              *(v18 + 88) = v21;
              HIBYTE(v37) = 0;
              LOBYTE(v36) = 0;
              if (++v17 == 8)
              {
                v22 = v16 + 112 == v25;
                sub_22EE9EB68(v33);
                goto LABEL_47;
              }

              sub_22EE9EB68(v33);
              v2 = v25;
            }

            v11 = v16;
            v16 += 112;
            if (v16 == v2)
            {
              goto LABEL_46;
            }
          }
        }

        goto LABEL_46;
      }

      v14 = &v31;
      v15 = &v30;
    }

    else
    {
      v14 = &v31;
      if (v13 >= v12)
      {
        sub_22EE9FB18(&v31, &v30);
        if (*(v29 + 2) >= *(v30 + 2))
        {
          goto LABEL_33;
        }

        v14 = &v30;
      }

      v15 = &v29;
    }

    sub_22EE9FB18(v14, v15);
    goto LABEL_33;
  }

  v25 = a2 - 112;
  if (*(a2 - 96) < *(a1 + 16))
  {
    v5 = &v26;
    v6 = &v25;
LABEL_28:
    sub_22EE9FB18(v5, v6);
  }

LABEL_46:
  v22 = 1;
LABEL_47:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_22EEA09D4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void sub_22EEA0A44(uint64_t a1, uint64_t *a2)
{
  sub_22EE9F430(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

__int128 *sub_22EEA0AE8(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v19 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * (a2 - a1);
    if (a2 - a1 >= 113)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[7 * v10];
      do
      {
        sub_22EEA0C44(v7, a4, v9, v12);
        v12 -= 7;
        --v11;
      }

      while (v11);
    }

    v18 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v13 + 2) < *(v19 + 2))
        {
          sub_22EE9FB18(&v18, &v19);
          sub_22EEA0C44(v19, a4, v9, v19);
          v13 = v18;
        }

        v13 += 7;
        v18 = v13;
      }

      while (v13 != a3);
      v7 = v19;
      v8 = v6 - v19;
    }

    if (v8 >= 113)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
      do
      {
        sub_22EEA0E90(v7, v6, a4, v14);
        v6 -= 7;
        v15 = v14 >= 2;
        v16 = v14-- == 2;
      }

      while (!v16 && v15);
      return v18;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_22EEA0C44(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * ((a4 - result) >> 4))
    {
      v9 = (0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 4)) | 1;
      v10 = result + 112 * v9;
      if ((0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 4) + 2) < a3)
      {
        v11 = *(v10 + 16) >= *(v10 + 128);
        v12 = 112;
        if (*(v10 + 16) >= *(v10 + 128))
        {
          v12 = 0;
        }

        v10 += v12;
        if (!v11)
        {
          v9 = 0xDB6DB6DB6DB6DB6ELL * ((a4 - result) >> 4) + 2;
        }
      }

      if (*(v10 + 16) >= *(a4 + 2))
      {
        v25 = *a4;
        v26 = *(a4 + 2);
        sub_22EEA09D4(v27, a4 + 3);
        v28 = *(v5 + 64);
        v29 = *(v5 + 80);
        v30 = *(v5 + 88);
        v31 = *(v5 + 104);
        *(v5 + 88) = 0;
        *(v5 + 96) = 0;
        *(v5 + 104) = 0;
        do
        {
          v13 = v10;
          v14 = *v10;
          *(v5 + 16) = *(v10 + 16);
          *v5 = v14;
          sub_22EEA0A44(v5 + 24, (v10 + 24));
          v15 = *(v10 + 64);
          *(v5 + 80) = *(v10 + 80);
          *(v5 + 64) = v15;
          if (*(v5 + 111) < 0)
          {
            operator delete(*(v5 + 88));
          }

          v16 = *(v10 + 88);
          *(v5 + 104) = *(v10 + 104);
          *(v5 + 88) = v16;
          *(v10 + 111) = 0;
          *(v10 + 88) = 0;
          if (v7 < v9)
          {
            break;
          }

          v17 = (2 * v9) | 1;
          v10 = v6 + 112 * v17;
          if (2 * v9 + 2 < a3)
          {
            v18 = *(v10 + 16);
            v19 = *(v10 + 128);
            v20 = v18 >= v19;
            v21 = v18 >= v19 ? 0 : 112;
            v10 += v21;
            if (!v20)
            {
              v17 = 2 * v9 + 2;
            }
          }

          v5 = v13;
          v9 = v17;
        }

        while (*(v10 + 16) >= v26);
        *(v13 + 16) = v26;
        *v13 = v25;
        sub_22EEA0A44(v13 + 24, v27);
        v22 = v28;
        *(v13 + 80) = v29;
        *(v13 + 64) = v22;
        if (*(v13 + 111) < 0)
        {
          operator delete(*(v13 + 88));
        }

        v23 = v30;
        *(v13 + 104) = v31;
        *(v13 + 88) = v23;
        HIBYTE(v31) = 0;
        LOBYTE(v30) = 0;
        result = sub_22EE9EB68(v27);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EEA0E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v7 = result;
    v19 = *result;
    v20 = *(result + 16);
    sub_22EEA09D4(v21, (result + 24));
    v22 = *(v7 + 64);
    v23 = *(v7 + 80);
    *__p = *(v7 + 88);
    v25 = *(v7 + 104);
    *(v7 + 88) = 0;
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    v8 = sub_22EEA10E8(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 112);
    if (v8 == (a2 - 112))
    {
      *(v8 + 2) = v20;
      *v8 = v19;
      sub_22EEA0A44(v8 + 24, v21);
      v16 = v22;
      *(v9 + 10) = v23;
      v9[4] = v16;
      if (*(v9 + 111) < 0)
      {
        operator delete(*(v9 + 11));
      }

      v17 = *__p;
      *(v9 + 13) = v25;
      *(v9 + 88) = v17;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
    }

    else
    {
      v11 = *v10;
      *(v8 + 2) = *(a2 - 96);
      *v8 = v11;
      sub_22EEA0A44(v8 + 24, (a2 - 88));
      v12 = *(a2 - 48);
      *(v9 + 10) = *(a2 - 32);
      v9[4] = v12;
      if (*(v9 + 111) < 0)
      {
        operator delete(*(v9 + 11));
      }

      v13 = (a2 - 24);
      v14 = *(a2 - 24);
      *(v9 + 13) = *(a2 - 8);
      *(v9 + 88) = v14;
      *(a2 - 1) = 0;
      *(a2 - 24) = 0;
      v15 = (v9 + 7);
      *v10 = v19;
      *(a2 - 96) = v20;
      sub_22EEA0A44(a2 - 88, v21);
      *(a2 - 48) = v22;
      *(a2 - 32) = v23;
      if (*(a2 - 1) < 0)
      {
        operator delete(*v13);
      }

      *v13 = *__p;
      *(a2 - 8) = v25;
      HIBYTE(v25) = 0;
      LOBYTE(__p[0]) = 0;
      sub_22EEA11D4(v7, v15, a3, 0x6DB6DB6DB6DB6DB7 * ((v15 - v7) >> 4));
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }
    }

    result = sub_22EE9EB68(v21);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *sub_22EEA10E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[7 * v5];
    v8 = v7 + 7;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = *(v7 + 16);
      v10 = *(v7 + 30);
      v11 = v7 + 14;
      if (v9 >= v10)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v11;
        v5 = 2 * v5 + 2;
      }
    }

    v12 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v12;
    sub_22EEA0A44(a1 + 24, v8 + 3);
    v13 = v8[4];
    *(a1 + 10) = *(v8 + 10);
    a1[4] = v13;
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 11));
    }

    v14 = *(v8 + 88);
    *(a1 + 13) = *(v8 + 13);
    *(a1 + 88) = v14;
    *(v8 + 111) = 0;
    *(v8 + 88) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t sub_22EEA11D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = result + 112 * (v4 >> 1);
    if (*(v8 + 16) < *(a2 - 96))
    {
      v9 = a2 - 112;
      v15 = *(a2 - 112);
      v16 = *(a2 - 96);
      sub_22EEA09D4(v17, (a2 - 88));
      v18 = *(a2 - 48);
      v19 = *(a2 - 32);
      v20 = *(a2 - 24);
      v21 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v10 = v8;
        v11 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v11;
        sub_22EEA0A44(v9 + 24, (v8 + 24));
        v12 = *(v8 + 64);
        *(v9 + 80) = *(v8 + 80);
        *(v9 + 64) = v12;
        if (*(v9 + 111) < 0)
        {
          operator delete(*(v9 + 88));
        }

        v13 = *(v8 + 88);
        *(v9 + 104) = *(v8 + 104);
        *(v9 + 88) = v13;
        *(v8 + 111) = 0;
        *(v8 + 88) = 0;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = v6 + 112 * v7;
        v9 = v10;
      }

      while (*(v8 + 16) < v16);
      *v10 = v15;
      *(v10 + 16) = v16;
      sub_22EEA0A44(v10 + 24, v17);
      *(v10 + 64) = v18;
      *(v10 + 80) = v19;
      if (*(v10 + 111) < 0)
      {
        operator delete(*(v10 + 88));
      }

      *(v10 + 88) = v20;
      *(v10 + 104) = v21;
      HIBYTE(v21) = 0;
      LOBYTE(v20) = 0;
      result = sub_22EE9EB68(v17);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_22EEA1390(void *a1, unint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  v6 = a1[10] + v5;
  if (a2 >= v5 && v6 > a2)
  {
    *v16 = a2 - v5;
    sub_22EEA2A94(a1 + 3, v16);
    a1[8] += a3;
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22EEAA134(a1, a2, v9);
    }
  }

  else
  {
    v8 = *__error();
    v9 = sub_22EE82CE0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[11];
      v11 = a1 + 11;
      v10 = v12;
      if (*(v11 + 23) >= 0)
      {
        v10 = v11;
      }

      *v16 = 134218754;
      *&v16[4] = a2;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      v21 = 2080;
      v22 = v10;
      _os_log_debug_impl(&dword_22EE81000, v9, OS_LOG_TYPE_DEBUG, "Address %#llx doesn't fall into binary range [%#llx, %#llx) in %s", v16, 0x2Au);
    }
  }

  result = __error();
  *result = v8;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EEA14FC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22EE9EC04(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const unsigned __int8 *sub_22EEA1558(void *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  uuid_copy(dst, a2);
  v4 = (*dst + 8) ^ *dst;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*dst + 8) ^ *dst;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_22EEA180C();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (uuid_compare(v10 + 16, a2))
  {
    goto LABEL_17;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_22EEA17F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22EEA18D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA18D8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22EE9EC48(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_22EEA1924(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_22EEA1A30(a1, v9, v8 + 2);
        sub_22EEA1B90(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22EEA1EE4();
  }
}

void sub_22EEA19FC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_22EEA1A30(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_22EEA1C78(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *sub_22EEA1B90(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_22EEA1C78(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_22EEA1D68(a1, prime);
    }
  }
}

void sub_22EEA1D68(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22EE9F1A8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_22EEA1F6C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22EE9ECC8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const unsigned __int8 *sub_22EEA1FC8(void *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  uuid_copy(dst, a2);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = (*dst + 8) ^ *dst;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*dst + 8) ^ *dst;
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (v9)
  {
    for (i = *v9; i; i = *i)
    {
      v11 = *(i + 1);
      if (v11 == v5)
      {
        if (!uuid_compare(i + 16, a2))
        {
          break;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= *&v4)
          {
            v11 %= *&v4;
          }
        }

        else
        {
          v11 &= *&v4 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
LABEL_18:
    i = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return i;
}

void sub_22EEA2100(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22EE9ED58(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_22EEA2174(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_22EEA21D0(exception, a1);
  __cxa_throw(exception, off_2788709B8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_22EEA21D0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t *sub_22EEA2204(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_22EEA22B8(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    sub_22EEA24E4();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22EEA24C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_22EEA25F8(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EEA25CC(_Unwind_Exception *a1)
{
  if (*(v2 + 47) < 0)
  {
    operator delete(*v4);
  }

  *v1 = 0;
  sub_22EEA25F8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_22EEA25F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22EE9EB68(a2 + 136);
    sub_22EE9EB68(a2 + 96);
    v3 = (a2 + 72);
    sub_22EEA2EF4(&v3);
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

const unsigned __int8 *sub_22EEA266C(void *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  uuid_copy(dst, a2);
  v4 = (*dst + 8) ^ *dst;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*dst + 8) ^ *dst;
    if (v4 >= *&v5)
    {
      v8 = v4 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    sub_22EEA2924();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (uuid_compare(v10 + 16, a2))
  {
    goto LABEL_17;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_22EEA28F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **__p, uint64_t a12)
{
  if (__p)
  {
    sub_22EEA2A44(&a12, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22EEA29B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22EEA2A44(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_22EEA29D0(uint64_t a1, _OWORD **a2)
{
  *a1 = **a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  uuid_clear((a1 + 40));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_22EEA2A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22EEA2EF4(va);
  _Unwind_Resume(a1);
}

void sub_22EEA2A44(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 4;
    sub_22EEA2EF4(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void *sub_22EEA2A94(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}