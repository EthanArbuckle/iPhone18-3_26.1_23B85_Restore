@interface MDAudioAccessoryHeuristic
- (MDAudioAccessoryHeuristic)init;
- (id)determineCurrentMode;
- (void)_connectedOutputDevicesDidChange:(id)a3;
- (void)_fetchConnectedAudioAccessoryState;
@end

@implementation MDAudioAccessoryHeuristic

- (MDAudioAccessoryHeuristic)init
{
  v8.receiver = self;
  v8.super_class = MDAudioAccessoryHeuristic;
  v2 = [(MDAudioAccessoryHeuristic *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    sharedSystemAudioContext = v2->_sharedSystemAudioContext;
    v2->_sharedSystemAudioContext = v3;

    [(MDAudioAccessoryHeuristic *)v2 _fetchConnectedAudioAccessoryState];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__connectedOutputDevicesDidChange_ name:*MEMORY[0x277CB8628] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__connectedOutputDevicesDidChange_ name:*MEMORY[0x277CB8630] object:0];
  }

  return v2;
}

- (id)determineCurrentMode
{
  if ([(MDAudioAccessoryHeuristic *)self isConnectedToAudioAccessory])
  {
    v2 = [[MDModeDecision alloc] initWithMode:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_fetchConnectedAudioAccessoryState
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(AVOutputContext *)self->_sharedSystemAudioContext outputDevices];
  self->_connectedToAudioAccessory = 0;
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) deviceType];
        if (v9 <= 4 && ((1 << v9) & 0x13) != 0)
        {
          self->_connectedToAudioAccessory = 1;
          if (v9 <= 4 && ((1 << v9) & 0x13) != 0)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_connectedOutputDevicesDidChange:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__MDAudioAccessoryHeuristic__connectedOutputDevicesDidChange___block_invoke;
  v3[3] = &unk_279C32378;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __62__MDAudioAccessoryHeuristic__connectedOutputDevicesDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MDAudioAccessoryHeuristic _connectedOutputDevicesDidChange:]_block_invoke";
    _os_log_impl(&dword_26807E000, v2, OS_LOG_TYPE_DEFAULT, "%s #modes: output devices changed, re-fetching connected audio accessory state", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchConnectedAudioAccessoryState];

  v4 = *MEMORY[0x277D85DE8];
}

@end