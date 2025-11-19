void sub_100000DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  fputs([v10 cStringUsingEncoding:4], __stdoutp);
}

void sub_100000E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100000DF0(@"XPC connection interrupted\n", a2, a3, a4, a5, a6, a7, a8, v9);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

void sub_100000EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100000DF0(@"XPC connection invalidated\n", a2, a3, a4, a5, a6, a7, a8, v9);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

void sub_100000FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100000DF0(@"XPC error: %@\n", a2, a3, a4, a5, a6, a7, a8, a2);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = [v4 proxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000012AC;
  v8[3] = &unk_100004190;
  v9 = &off_1000044E8;
  v10 = v4;
  v6 = v4;
  [v5 retrieveMoreDebugInformationWithCompletion:v8];

  CFRunLoopRun();
  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000012AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (v4)
  {
    v5 = v4;
    v61 = *v67;
    v59 = v3;
    do
    {
      v6 = 0;
      v60 = v5;
      do
      {
        if (*v67 != v61)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v66 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"Message"];

        if (v8)
        {
          v9 = [v7 objectForKeyedSubscript:@"Timestamp"];
          v10 = [v7 objectForKeyedSubscript:@"Type"];
          v58 = [v7 objectForKeyedSubscript:@"Message"];
          sub_100000DF0(@"%@: %@: %@\n", v11, v12, v13, v14, v15, v16, v17, v9);
        }

        else
        {
          v18 = [v7 objectForKeyedSubscript:@"Description"];

          if (v18)
          {
            v19 = [v7 objectForKeyedSubscript:@"Description"];
            sub_100000DF0(@"\t%@:\n", v20, v21, v22, v23, v24, v25, v26, v19);

            v27 = @"Active";
            v28 = [v7 objectForKeyedSubscript:@"Active"];
            if (![v28 BOOLValue])
            {
              v27 = @"Inactive";
            }

            v29 = [v7 objectForKeyedSubscript:@"KeyboardFocus"];
            [v29 BOOLValue];
            v30 = [v7 objectForKeyedSubscript:@"CommandFocus"];
            [v30 BOOLValue];
            sub_100000DF0(@"\t -> State: %@ %@ %@\n", v31, v32, v33, v34, v35, v36, v37, v27);

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v9 = v7;
            v38 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v63;
              v5 = v60;
              do
              {
                for (i = 0; i != v39; i = i + 1)
                {
                  if (*v63 != v40)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v42 = *(*(&v62 + 1) + 8 * i);
                  if (([*(a1 + 32) containsObject:v42] & 1) == 0)
                  {
                    v57 = [v9 objectForKeyedSubscript:v42];
                    sub_100000DF0(@"\t\t %@: %@\n", v43, v44, v45, v46, v47, v48, v49, v42);
                  }
                }

                v39 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
              }

              while (v39);
              v3 = v59;
            }

            else
            {
              v3 = v59;
              v5 = v60;
            }
          }

          else
          {
            v9 = [v7 objectForKeyedSubscript:@"Timestamp"];
            sub_100000DF0(@"%@:\n", v50, v51, v52, v53, v54, v55, v56, v9);
          }
        }

        v6 = v6 + 1;
      }

      while (v6 != v5);
      v5 = [v3 countByEnumeratingWithState:&v66 objects:v71 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) stop];
}