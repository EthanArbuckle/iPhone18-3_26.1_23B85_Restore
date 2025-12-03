@interface AVAudioSession(Private)
- (id)smu_playbackRoutes;
@end

@implementation AVAudioSession(Private)

- (id)smu_playbackRoutes
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8698];
  routingContextUID = [self routingContextUID];
  v3 = [v1 outputContextForID:routingContextUID];
  outputDevices = [v3 outputDevices];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = outputDevices;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MRAVOutputDeviceCreateFromAVOutputDevice();
        v12 = objc_alloc(MEMORY[0x277CD5D30]);
        v20 = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:{1, v16}];
        v14 = [v12 initWithOutputDevices:v13];

        CFRelease(v11);
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

@end