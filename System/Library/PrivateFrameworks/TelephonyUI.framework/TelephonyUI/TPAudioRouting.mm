@interface TPAudioRouting
+ (id)eligibleLagunaDevices:(id)devices;
@end

@implementation TPAudioRouting

+ (id)eligibleLagunaDevices:(id)devices
{
  v43[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v4 = objc_alloc_init(MEMORY[0x1E69D8BE8]);
  if ([v4 lagunaEnabled] && +[TPAudioRouting deviceSupportsContinuityCamera](TPAudioRouting, "deviceSupportsContinuityCamera"))
  {
    frontmostAudioOrVideoCall = [devicesCopy frontmostAudioOrVideoCall];
    if (frontmostAudioOrVideoCall)
    {
      v6 = [devicesCopy activeConversationForCall:frontmostAudioOrVideoCall];
      service = [frontmostAudioOrVideoCall service];
      lagunaAudioCallsEnabled = [v4 lagunaAudioCallsEnabled];
      if (service == 3)
      {
        v9 = 1;
      }

      else
      {
        v9 = lagunaAudioCallsEnabled;
      }

      if (lagunaAudioCallsEnabled && service != 3)
      {
        v9 = [frontmostAudioOrVideoCall service] == 2;
      }

      array = 0;
      if (v6 && v9)
      {
        neighborhoodActivityConduit = [devicesCopy neighborhoodActivityConduit];
        activeSplitSessionTV = [neighborhoodActivityConduit activeSplitSessionTV];

        if (activeSplitSessionTV)
        {
          array = 0;
        }

        else
        {
          v34 = v6;
          v36 = v4;
          array = [MEMORY[0x1E695DF70] array];
          v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&__block_literal_global_8];
          v37 = devicesCopy;
          neighborhoodActivityConduit2 = [devicesCopy neighborhoodActivityConduit];
          nearbyTVDeviceHandles = [neighborhoodActivityConduit2 nearbyTVDeviceHandles];
          v33 = v13;
          v43[0] = v13;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
          v17 = [nearbyTVDeviceHandles sortedArrayUsingDescriptors:v16];

          v35 = frontmostAudioOrVideoCall;
          service2 = [frontmostAudioOrVideoCall service];
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
                capabilities = [v26 capabilities];
                isLagunaCapable = [capabilities isLagunaCapable];

                if (isLagunaCapable)
                {
                  if (service2 != 2 || ([v26 capabilities], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isAudioCallCapable"), v29, v30))
                  {
                    if ((([v26 deviceModel] == 3) & v20) == 0)
                    {
                      [array addObject:v26];
                    }
                  }
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v23);
          }

          v4 = v36;
          devicesCopy = v37;
          v6 = v34;
          frontmostAudioOrVideoCall = v35;
        }
      }
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return array;
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