uint64_t sub_100000CC0(int a1, char *const *a2, void *a3)
{
  v5 = a3;
  v6 = malloc_type_malloc(0x40uLL, 0x4FD83123uLL);
  if (v6)
  {
    v7 = v6;
    for (i = 0; ; i = 3)
    {
      do
      {
        while (1)
        {
          v91[0] = 0;
          v9 = getopt_long(a1, a2, "VUPS", &off_100025988, v91);
          if (v9 <= 82)
          {
            break;
          }

          switch(v9)
          {
            case 'S':
              i = 4;
              break;
            case 'U':
              i = 2;
              break;
            case 'V':
              i = 1;
              break;
            default:
              goto LABEL_82;
          }
        }
      }

      while (!v9);
      if (v9 != 80)
      {
        break;
      }
    }

    if (v9 != -1)
    {
LABEL_82:
      exit(1);
    }

    v10 = 0;
    if (i <= 2)
    {
      if (i == 1)
      {
        v67 = v7;
        v68 = v5;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v46 = v5;
        v47 = [v46 countByEnumeratingWithState:&v85 objects:v94 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v86;
          do
          {
            for (j = 0; j != v48; j = j + 1)
            {
              if (*v86 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v85 + 1) + 8 * j);
              v52 = [v51 userClient];
              v53 = [v52 routeString];

              if (!v53)
              {
                v54 = [v51 address];
                v55 = [v51 userClient];
                v56 = [v55 routerID];
                v57 = [v51 address];
                v58 = [v51 readFullVersionWithConfig];
                v59 = [v58 UTF8String];
                v60 = "R/D %d/0x%x = %s\n";
                if (v54 < 0xA)
                {
                  v60 = "R/D %d/%d = %s\n";
                }

                printf(v60, v56, v57, v59);
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v85 objects:v94 count:16];
          }

          while (v48);
        }

LABEL_67:
        v10 = 0;
        v7 = v67;
        v5 = v68;
      }

      else if (i == 2)
      {
        v67 = v7;
        v68 = v5;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v11 = v5;
        v12 = [v11 countByEnumeratingWithState:&v81 objects:v93 count:16];
        if (!v12)
        {
          goto LABEL_30;
        }

        v13 = v12;
        v14 = *v82;
        while (1)
        {
          for (k = 0; k != v13; k = k + 1)
          {
            if (*v82 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v81 + 1) + 8 * k);
            v17 = [v16 userClient];
            if (![v17 routeString])
            {
              v18 = [v16 isSPIMaster];

              if (!v18)
              {
                continue;
              }

              v19 = [v16 address];
              v17 = [v16 userClient];
              v20 = [v17 routerID];
              v21 = [v16 address];
              v22 = [v16 readFullVersionWithConfig];
              v23 = [v22 UTF8String];
              v24 = "R/D %d/0x%x = %s\n";
              if (v19 < 0xA)
              {
                v24 = "R/D %d/%d = %s\n";
              }

              printf(v24, v20, v21, v23);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v81 objects:v93 count:16];
          if (!v13)
          {
LABEL_30:

            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v25 = v11;
            v26 = [v25 countByEnumeratingWithState:&v77 objects:v92 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v78;
              do
              {
                for (m = 0; m != v27; m = m + 1)
                {
                  if (*v78 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v77 + 1) + 8 * m);
                  v31 = [v30 userClient];
                  if ([v31 routeString])
                  {
                  }

                  else
                  {
                    v32 = [v30 isSPIMaster];

                    if (v32)
                    {
                      v33 = [v30 readUUIDIntoBuffer:v91 ofLength:64];
                      if (v33)
                      {
                        v34 = v33;
                        v35 = [v30 userClient];
                        printf("UUID%d=", [v35 routerID]);

                        v36 = v34;
                        v37 = v91;
                        do
                        {
                          v38 = *v37;
                          v37 = (v37 + 1);
                          printf("%02x", v38);
                          --v36;
                        }

                        while (v36);
                        putchar(32);
                      }
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v77 objects:v92 count:16];
              }

              while (v27);
            }

            putchar(10);
            goto LABEL_67;
          }
        }
      }

      goto LABEL_80;
    }

    if (i == 3)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v39 = v5;
      v61 = [v39 countByEnumeratingWithState:&v73 objects:v90 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v74;
        do
        {
          for (n = 0; n != v62; n = n + 1)
          {
            if (*v74 != v63)
            {
              objc_enumerationMutation(v39);
            }

            v65 = *(*(&v73 + 1) + 8 * n);
            putchar(10);
            v10 = [v65 printAll];
            if (!v10)
            {
              v10 = [v65 printStateHistory];
            }
          }

          v62 = [v39 countByEnumeratingWithState:&v73 objects:v90 count:16];
        }

        while (v62);
        goto LABEL_79;
      }
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v39 = v5;
      v40 = [v39 countByEnumeratingWithState:&v69 objects:v89 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v70;
        do
        {
          for (ii = 0; ii != v41; ii = ii + 1)
          {
            if (*v70 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v69 + 1) + 8 * ii);
            putchar(10);
            v45 = [v44 printAll];
          }

          v10 = v45;
          v41 = [v39 countByEnumeratingWithState:&v69 objects:v89 count:16];
        }

        while (v41);
        goto LABEL_79;
      }
    }

    v10 = 0;
LABEL_79:

LABEL_80:
    free(v7);
    goto LABEL_81;
  }

  v10 = 3758097085;
LABEL_81:

  return v10;
}

uint64_t start(int a1, char *const *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [PDController knownPDControllers:-1];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 address];
  }

  if (a1 < 2)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          putchar(10);
          [v12 printAll];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    sub_100000CC0(a1, a2, v5);
  }

  objc_autoreleasePoolPop(v4);
  return 0;
}

id sub_100004F44(uint64_t a1, unsigned __int16 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained decodeGeneralPolicyConfigWithData:*a2];

  return v4;
}

NSString *__cdecl sub_100004F98(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = [(NSArray *)v2 objectAtIndexedSubscript:0];
  v4 = [v3 unsignedShortValue];

  v5 = [(NSArray *)v2 objectAtIndexedSubscript:1];

  LODWORD(v2) = [v5 unsignedCharValue];
  return [NSString stringWithFormat:@"%0.3f %@", ((v4 * v2) * 1500.0) / 1000.0 / 4095.0, @"V"];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}