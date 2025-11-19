@interface WFControlCenterStateMonitor
- (BOOL)_airplaneModeEnabled;
- (BOOL)_isCellularOutrankingWiFi;
- (void)_airplaneModeEnabled;
- (void)_performAction:(int64_t)a3;
- (void)_promptCarPlayDisable;
- (void)_promptCellularOutankDisable;
- (void)_promptMISDisable;
- (void)performAction:(id)a3;
- (void)performActionFrom:(id)a3 withCompletion:(id)a4;
@end

@implementation WFControlCenterStateMonitor

- (void)performActionFrom:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = WFLogForCategory(7uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
  {
    *v10 = 0;
    _os_log_impl(&dword_273ECD000, v8, v9, "initializing WFControlCenterStateMonitor with presenter for alerts", v10, 2u);
  }

  [(WFControlCenterStateMonitor *)self setPresenter:v7];
  [(WFControlCenterStateMonitor *)self performAction:v6];
}

- (void)performAction:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFWiFiStateMonitor *)self client];
  v6 = [v5 isPowerModificationDisabled];

  if (!v6)
  {
    v9 = [(WFControlCenterStateMonitor *)self _airplaneModeEnabled];
    v10 = [(WFWiFiStateMonitor *)self state];
    v11 = v10 - 2;
    v12 = WFLogForCategory(7uLL);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = WFWiFiStateMonitorStringForState(v10);
        v46 = 138543874;
        v47 = v15;
        v48 = 1024;
        v49 = v11 < 3;
        v50 = 1024;
        v51 = v9;
        _os_log_impl(&dword_273ECD000, v14, v13, "{ACTION+} current state='%{public}@' poweredOn=%d airplaneMode=%d", &v46, 0x18u);
      }
    }

    if (v10 == 1)
    {
      v16 = WFLogForCategory(7uLL);
      v17 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v17))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_273ECD000, v16, v17, "{ACTION*} set powered to ON", &v46, 2u);
      }

      if (v4)
      {
        v4[2](v4, 3);
      }

      v18 = self;
      v19 = 3;
    }

    else
    {
      v20 = !v9;
      if (v11 > 2)
      {
        v20 = 1;
      }

      if (v20)
      {
        if (v10 == 2)
        {
          if (![(WFWiFiStateMonitor *)self associatedToCarPlayOnly])
          {
            if ([(WFControlCenterStateMonitor *)self _isCellularOutrankingWiFi])
            {
              v33 = [(WFWiFiStateMonitor *)self client];
              v34 = [v33 interface];
              v35 = [v34 currentNetwork];

              v36 = WFLogForCategory(7uLL);
              v37 = OSLogForWFLogLevel(1uLL);
              if (WFCurrentLogLevel())
              {
                v38 = v36 == 0;
              }

              else
              {
                v38 = 1;
              }

              v39 = !v38;
              if (v35)
              {
                if (v39 && os_log_type_enabled(v36, v37))
                {
                  LOWORD(v46) = 0;
                  _os_log_impl(&dword_273ECD000, v36, v37, "{ACTION*} cellular is outranking WiFi, promping user", &v46, 2u);
                }

                v18 = self;
                v19 = 8;
                goto LABEL_38;
              }

              if (v39 && os_log_type_enabled(v36, v37))
              {
                LOWORD(v46) = 0;
                _os_log_impl(&dword_273ECD000, v36, v37, "Cellular outrank is in progress with no current network", &v46, 2u);
              }
            }

            v44 = WFLogForCategory(7uLL);
            v45 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v44 && os_log_type_enabled(v44, v45))
            {
              LOWORD(v46) = 0;
              _os_log_impl(&dword_273ECD000, v44, v45, "{ACTION*} setting userAutoJoin=1", &v46, 2u);
            }

            if (v4)
            {
              v4[2](v4, 3);
            }

            [(WFControlCenterStateMonitor *)self _performAction:1];
            [(WFWiFiStateMonitor *)self _updateState];
            goto LABEL_39;
          }

          v29 = WFLogForCategory(7uLL);
          v30 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v29 && os_log_type_enabled(v29, v30))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_273ECD000, v29, v30, "{ACTION*} associated to CarPlay Only network, prompting user", &v46, 2u);
          }

          v18 = self;
          v19 = 6;
        }

        else if (v10 - 3 > 1)
        {
          if (v10 != 5)
          {
            if (!v4)
            {
              goto LABEL_39;
            }

            v42 = WFLogForCategory(7uLL);
            v43 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v42 && os_log_type_enabled(v42, v43))
            {
              LOWORD(v46) = 0;
              _os_log_impl(&dword_273ECD000, v42, v43, "{ACTION*} no action performed, returning current state", &v46, 2u);
            }

            goto LABEL_7;
          }

          v40 = WFLogForCategory(7uLL);
          v41 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v40 && os_log_type_enabled(v40, v41))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_273ECD000, v40, v41, "{ACTION*} MIS active, prompting user", &v46, 2u);
          }

          if (v4)
          {
            v4[2](v4, 5);
          }

          v18 = self;
          v19 = 4;
        }

        else
        {
          v31 = WFLogForCategory(7uLL);
          v32 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v31 && os_log_type_enabled(v31, v32))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_273ECD000, v31, v32, "{ACTION*} diassociate and set userAutoJoin=0", &v46, 2u);
          }

          if (v4)
          {
            v4[2](v4, 2);
          }

          v18 = self;
          v19 = 0;
        }
      }

      else
      {
        v21 = v10 == 2;
        if (v10 == 2)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21)
        {
          v23 = 3;
        }

        else
        {
          v23 = 1;
        }

        v24 = WFLogForCategory(7uLL);
        v25 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v24)
        {
          v26 = v24;
          if (os_log_type_enabled(v26, v25))
          {
            v27 = _WFControlCenterActionStringForAction(v22);
            v46 = 138543362;
            v47 = v27;
            _os_log_impl(&dword_273ECD000, v26, v25, "{ACTION*} airplane mode is ON, next action is %{public}@", &v46, 0xCu);
          }
        }

        if (v4)
        {
          v4[2](v4, v23);
        }

        v18 = self;
        v19 = v22;
      }
    }

LABEL_38:
    [(WFControlCenterStateMonitor *)v18 _performAction:v19];
    goto LABEL_39;
  }

  v7 = WFLogForCategory(7uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v7 && os_log_type_enabled(v7, v8))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&dword_273ECD000, v7, v8, "{ACTION*} power modification is disabled", &v46, 2u);
  }

  if (v4)
  {
LABEL_7:
    v4[2](v4, [(WFWiFiStateMonitor *)self state]);
  }

LABEL_39:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_performAction:(int64_t)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(7uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = _WFControlCenterActionStringForAction(a3);
      *buf = 138543362;
      v49 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "{ACTION-} performing action='%{public}@'", buf, 0xCu);
    }
  }

  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v25 = WFLogForCategory(7uLL);
        v26 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v25 && os_log_type_enabled(v25, v26))
        {
          *buf = 136315138;
          v49 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v25, v26, "%s: disable MIS", buf, 0xCu);
        }

        v27 = [(WFWiFiStateMonitor *)self client];
        [v27 setMISDiscoveryState:0 immediateDisable:1];

        v28 = [(WFWiFiStateMonitor *)self client];
        [v28 setMISState:0];

        [(WFWiFiStateMonitor *)self _updateState];
      }

      else
      {
        v18 = WFLogForCategory(7uLL);
        v19 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
        {
          *buf = 136315138;
          v49 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v18, v19, "%s: prompting to disable CarPlay", buf, 0xCu);
        }

        [(WFControlCenterStateMonitor *)self _promptCarPlayDisable];
      }
    }

    else
    {
      switch(a3)
      {
        case 7:
          v29 = WFLogForCategory(7uLL);
          v30 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v29 && os_log_type_enabled(v29, v30))
          {
            *buf = 136315138;
            v49 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v29, v30, "%s: disable CarPlay", buf, 0xCu);
          }

          v31 = [(WFWiFiStateMonitor *)self client];
          v32 = [v31 interface];

          if (v32)
          {
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_5;
            v41[3] = &unk_279EBCFE0;
            v41[4] = self;
            [v32 disassociateFromCurrentNetworkWithCompletion:v41];
          }

          else
          {
            v35 = WFLogForCategory(7uLL);
            v36 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v35 && os_log_type_enabled(v35, v36))
            {
              *buf = 136315138;
              v49 = "[WFControlCenterStateMonitor _performAction:]";
              _os_log_impl(&dword_273ECD000, v35, v36, "%s: failed to get WFInterface", buf, 0xCu);
            }
          }

          break;
        case 8:
          v33 = WFLogForCategory(7uLL);
          v34 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v33 && os_log_type_enabled(v33, v34))
          {
            *buf = 136315138;
            v49 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v33, v34, "%s: prompting to disable cellular outrank", buf, 0xCu);
          }

          [(WFControlCenterStateMonitor *)self _promptCellularOutankDisable];
          break;
        case 9:
          v10 = WFLogForCategory(7uLL);
          v11 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
          {
            *buf = 136315138;
            v49 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v10, v11, "%s: disabling cellular outrank", buf, 0xCu);
          }

          v12 = [(WFWiFiStateMonitor *)self client];
          v13 = [v12 interface];

          if (v13)
          {
            v14 = [v13 currentNetwork];
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_6;
            v40[3] = &unk_279EBDC90;
            v40[4] = self;
            [v13 asyncAssociateToNetwork:v14 profile:0 reply:v40];
          }

          else
          {
            v37 = WFLogForCategory(7uLL);
            v38 = OSLogForWFLogLevel(1uLL);
            if (WFCurrentLogLevel() && v37 && os_log_type_enabled(v37, v38))
            {
              *buf = 136315138;
              v49 = "[WFControlCenterStateMonitor _performAction:]";
              _os_log_impl(&dword_273ECD000, v37, v38, "%s: failed to get WFInterface", buf, 0xCu);
            }
          }

          break;
      }
    }
  }

  else if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v15 = WFLogForCategory(7uLL);
        v16 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v15 && os_log_type_enabled(v15, v16))
        {
          *buf = 136315138;
          v49 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v15, v16, "%s: enabling user autojoin", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        v17 = [(WFWiFiStateMonitor *)self client];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_1;
        v44[3] = &unk_279EBCEA0;
        objc_copyWeak(&v45, buf);
        [v17 setUserAutoJoinState:1 completion:v44];

        objc_destroyWeak(&v45);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v22 = WFLogForCategory(7uLL);
      v23 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v22 && os_log_type_enabled(v22, v23))
      {
        *buf = 136315138;
        v49 = "[WFControlCenterStateMonitor _performAction:]";
        _os_log_impl(&dword_273ECD000, v22, v23, "%s: disabling user autojoin", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v24 = [(WFWiFiStateMonitor *)self client];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_3;
      v42[3] = &unk_279EBCEA0;
      objc_copyWeak(&v43, buf);
      [v24 setUserAutoJoinState:0 completion:v42];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }
  }

  else if ((a3 - 2) >= 2)
  {
    if (a3 == 4)
    {
      v20 = WFLogForCategory(7uLL);
      v21 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v20 && os_log_type_enabled(v20, v21))
      {
        *buf = 136315138;
        v49 = "[WFControlCenterStateMonitor _performAction:]";
        _os_log_impl(&dword_273ECD000, v20, v21, "%s: prompting to disable MIS", buf, 0xCu);
      }

      [(WFControlCenterStateMonitor *)self _promptMISDisable];
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v9 = [(WFWiFiStateMonitor *)self client];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke;
    v46[3] = &unk_279EBD698;
    objc_copyWeak(&v47, buf);
    [v9 setPoweredToggle:a3 == 3 handler:v46];

    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(7uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v8 = 136315394;
    v9 = "[WFControlCenterStateMonitor _performAction:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: power toggle handler called, powered=%d", &v8, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateState];

  v7 = *MEMORY[0x277D85DE8];
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_2;
  block[3] = &unk_279EBCFE0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_2_4;
  block[3] = &unk_279EBCFE0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(7uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    v9[0] = 67109378;
    v9[1] = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_273ECD000, v6, v7, "cellular outrank association success=%d error='%@'", v9, 0x12u);
  }

  [*(a1 + 32) _updateState];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_airplaneModeEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SCPreferencesCreate(*MEMORY[0x277CBECE8], @"com.apple.wifikit", @"com.apple.radios.plist");
  if (v2)
  {
    v3 = v2;
    v4 = SCPreferencesGetValue(v2, @"AirplaneMode") == *MEMORY[0x277CBED28];
    CFRelease(v3);
  }

  else
  {
    [WFControlCenterStateMonitor _airplaneModeEnabled];
    v4 = 0;
  }

  v5 = WFLogForCategory(7uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315394;
    v10 = "[WFControlCenterStateMonitor _airplaneModeEnabled]";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: airplaneModeEnabled set to %i", &v9, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_isCellularOutrankingWiFi
{
  v2 = [(WFWiFiStateMonitor *)self client];
  v3 = [v2 isCellularOutrankingWiFi];

  return v3;
}

- (void)_promptMISDisable
{
  v3 = +[WFMISDisablePromptOperation misDisablePromptOperation];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  [v4 addOperation:v3];

  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke;
  v5[3] = &unk_279EBD448;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v3 setCompletionBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v2 == 2)
  {
    if (v6)
    {
      if (os_log_type_enabled(v3, v4))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v4, "User accepted prompt to disable MIS", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:5];
  }

  else
  {
    if (v6 && os_log_type_enabled(v3, v4))
    {
      *v7 = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "User did not accept prompt to disable MIS", v7, 2u);
    }
  }
}

- (void)_promptCarPlayDisable
{
  v3 = +[WFCarPlayDisablePromptOperation carPlayDisablePromptOperation];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  [v4 addOperation:v3];

  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke;
  v5[3] = &unk_279EBD448;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v3 setCompletionBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v2 == 2)
  {
    if (v6)
    {
      if (os_log_type_enabled(v3, v4))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v4, "User accepted prompt to disable CarPlay", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:7];
  }

  else
  {
    if (v6 && os_log_type_enabled(v3, v4))
    {
      *v7 = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "User did not accept prompt to disable CarPlay", v7, 2u);
    }
  }
}

- (void)_promptCellularOutankDisable
{
  v3 = [(WFWiFiStateMonitor *)self client];
  v4 = [v3 interface];
  v5 = [v4 currentNetwork];
  v6 = [v5 ssid];

  if (v6)
  {
    v7 = [(WFWiFiStateMonitor *)self client];
    v8 = +[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:](WFCellularOutrankPromptOperation, "cellularOutrankPromptOperationWithNetworkName:privateCellular:", v6, [v7 cellularOutrankState] == 5);

    v9 = [MEMORY[0x277CCABD8] mainQueue];
    [v9 addOperation:v8];

    objc_initWeak(location, v8);
    objc_initWeak(&from, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke;
    v11[3] = &unk_279EBD448;
    objc_copyWeak(&v12, location);
    objc_copyWeak(&v13, &from);
    [v8 setCompletionBlock:v11];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = WFLogForCategory(7uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v10))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_273ECD000, v8, v10, "nil network name, unable to prompt for cellular outrank", location, 2u);
    }
  }
}

void __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel())
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v2 == 2)
  {
    if (v6)
    {
      if (os_log_type_enabled(v3, v4))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v4, "User accepted prompt to disable cellular outrank", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:9];
  }

  else
  {
    if (v6 && os_log_type_enabled(v3, v4))
    {
      *v7 = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "User did not accept prompt to disable cellular outrank", v7, 2u);
    }
  }
}

- (void)_airplaneModeEnabled
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(7uLL);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFControlCenterStateMonitor _airplaneModeEnabled]";
    _os_log_impl(&dword_273ECD000, v0, v1, "%s: failed to create preferences ref", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end