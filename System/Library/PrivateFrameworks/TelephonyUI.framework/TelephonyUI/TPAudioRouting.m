@interface TPAudioRouting
+ (id)eligibleLagunaDevices:(id)a3;
@end

@implementation TPAudioRouting

+ (id)eligibleLagunaDevices:(id)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69D8BE8]);
  if ([v4 lagunaEnabled] && +[TPAudioRouting deviceSupportsContinuityCamera](TPAudioRouting, "deviceSupportsContinuityCamera"))
  {
    v5 = [v3 frontmostAudioOrVideoCall];
    if (v5)
    {
      v6 = [v3 activeConversationForCall:v5];
      v7 = [v5 service];
      v8 = [v4 lagunaAudioCallsEnabled];
      if (v7 == 3)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      if (v8 && v7 != 3)
      {
        v9 = [v5 service] == 2;
      }

      v10 = 0;
      if (v6 && v9)
      {
        v11 = [v3 neighborhoodActivityConduit];
        v12 = [v11 activeSplitSessionTV];

        if (v12)
        {
          v10 = 0;
        }

        else
        {
          v34 = v6;
          v36 = v4;
          v10 = [MEMORY[0x1E695DF70] array];
          v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_8];
          v37 = v3;
          v14 = [v3 neighborhoodActivityConduit];
          v15 = [v14 nearbyTVDeviceHandles];
          v33 = v13;
          v43[0] = v13;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
          v17 = [v15 sortedArrayUsingDescriptors:v16];

          v35 = v5;
          v18 = [v5 service];
          v19 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.cameracapture"];
          v20 = [v19 BOOLForKey:@"ContinuityCaptureDisabled"];

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v21 = v17;
          v22 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v38 + 1) + 8 * i);
                v27 = [v26 capabilities];
                v28 = [v27 isLagunaCapable];

                if (v28)
                {
                  if (v18 != 2 || ([v26 capabilities], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isAudioCallCapable"), v29, v30))
                  {
                    if ((([v26 deviceModel] == 3) & v20) == 0)
                    {
                      [v10 addObject:v26];
                    }
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v23);
          }

          v4 = v36;
          v3 = v37;
          v6 = v34;
          v5 = v35;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v10;
}

uint64_t __40__TPAudioRouting_eligibleLagunaDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

@end