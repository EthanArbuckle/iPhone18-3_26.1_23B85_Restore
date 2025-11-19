@interface SFPowerSourceMonitor
- (BOOL)powerSourcesListWithOutInfo:(const void *)a3 outSources:(const __CFArray *)a4 outSourcesCount:(int64_t *)a5;
- (SFPowerSourceMonitor)init;
- (void)_cleanup;
- (void)_foundPowerSource:(id)a3 desc:(id)a4 adapterDesc:(id)a5;
- (void)_handlePowerSourcesChanged:(id)a3 changes:(unsigned int)a4;
- (void)_handlePowerSourcesFound:(id)a3;
- (void)_handlePowerSourcesLost:(id)a3;
- (void)_removePowerSources:(id)a3;
- (void)_triggerUpdatePowerSources;
- (void)_update;
- (void)_updatePowerSource:(id)a3 desc:(id)a4 adapterDesc:(id)a5;
- (void)_updatePowerSources;
- (void)_updatePowerSourcesWithInfo:(void *)a3 sources:(__CFArray *)a4 sourcesCount:(int64_t)a5;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setChangeFlags:(unsigned int)a3;
@end

@implementation SFPowerSourceMonitor

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_4(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 8);
  if (v2 <= 10)
  {
    if (v2 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

- (void)_triggerUpdatePowerSources
{
  if (self->_skipCoalescing)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_14:

    [(SFPowerSourceMonitor *)self _updatePowerSources];
    return;
  }

  if (!self->_updateCoalescer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6999478]);
    updateCoalescer = self->_updateCoalescer;
    self->_updateCoalescer = v4;

    [(CUCoalescer *)self->_updateCoalescer setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)self->_updateCoalescer setMaxDelay:0.05];
    [(CUCoalescer *)self->_updateCoalescer setMinDelay:0.03];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__SFPowerSourceMonitor__triggerUpdatePowerSources__block_invoke;
    v11[3] = &unk_1E788B4D0;
    objc_copyWeak(&v12, &location);
    [(CUCoalescer *)self->_updateCoalescer setActionHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  location = 0;
  v9 = 0;
  cf = 0;
  if ([(SFPowerSourceMonitor *)self powerSourcesListWithOutInfo:&location outSources:&cf outSourcesCount:&v9])
  {
    if (v9 == self->_previousSourcesCount)
    {
      [(SFPowerSourceMonitor *)self _updatePowerSourcesWithInfo:location sources:cf sourcesCount:?];
LABEL_19:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (location)
      {
        CFRelease(location);
      }

      return;
    }

    v6 = self->_ucat->var0;
    if (v6 <= 10)
    {
      if (v6 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        v8 = self->_ucat;
      }

      LogPrintF();
    }

LABEL_18:
    [(CUCoalescer *)self->_updateCoalescer trigger];
    goto LABEL_19;
  }
}

- (SFPowerSourceMonitor)init
{
  v8.receiver = self;
  v8.super_class = SFPowerSourceMonitor;
  v2 = [(SFPowerSourceMonitor *)&v8 init];
  if (v2)
  {
    ASPrintF();
    v2->_ucat = LogCategoryCreateEx();
    v2->_changeFlags = 5;
    v3 = SFMainQueue(0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    *&v2->_psNotifyTokenAccessoryAttach = -1;
    *&v2->_psNotifyTokenAccessoryTimeRemaining = -1;
    v5 = objc_opt_new();
    powerSources = v2->_powerSources;
    v2->_powerSources = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(SFPowerSourceMonitor *)self _cleanup];
  v3.receiver = self;
  v3.super_class = SFPowerSourceMonitor;
  [(SFPowerSourceMonitor *)&v3 dealloc];
}

- (void)_cleanup
{
  [(CUCoalescer *)self->_updateCoalescer invalidate];
  updateCoalescer = self->_updateCoalescer;
  self->_updateCoalescer = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  powerSourcesFoundHandler = self->_powerSourcesFoundHandler;
  self->_powerSourcesFoundHandler = 0;

  powerSourcesLostHandler = self->_powerSourcesLostHandler;
  self->_powerSourcesLostHandler = 0;

  powerSourcesChangedHandler = self->_powerSourcesChangedHandler;
  self->_powerSourcesChangedHandler = 0;

  [(NSMutableDictionary *)self->_powerSources removeAllObjects];
  powerSources = self->_powerSources;
  self->_powerSources = 0;

  psNotifyTokenAccessoryAttach = self->_psNotifyTokenAccessoryAttach;
  if (psNotifyTokenAccessoryAttach != -1)
  {
    notify_cancel(psNotifyTokenAccessoryAttach);
    self->_psNotifyTokenAccessoryAttach = -1;
  }

  psNotifyTokenAccessoryPowerSource = self->_psNotifyTokenAccessoryPowerSource;
  if (psNotifyTokenAccessoryPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAccessoryPowerSource);
    self->_psNotifyTokenAccessoryPowerSource = -1;
  }

  psNotifyTokenAccessoryTimeRemaining = self->_psNotifyTokenAccessoryTimeRemaining;
  if (psNotifyTokenAccessoryTimeRemaining != -1)
  {
    notify_cancel(psNotifyTokenAccessoryTimeRemaining);
    self->_psNotifyTokenAccessoryTimeRemaining = -1;
  }

  psNotifyTokenAnyPowerSource = self->_psNotifyTokenAnyPowerSource;
  if (psNotifyTokenAnyPowerSource != -1)
  {
    notify_cancel(psNotifyTokenAnyPowerSource);
    self->_psNotifyTokenAnyPowerSource = -1;
  }

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }
}

- (void)setChangeFlags:(unsigned int)a3
{
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_activateCalled)
  {
    dispatchQueue = v4->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFPowerSourceMonitor_setChangeFlags___block_invoke;
    v6[3] = &unk_1E788D970;
    v7 = a3;
    v6[4] = v4;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    v4->_changeFlags = a3;
  }

  objc_sync_exit(v4);
}

uint64_t __39__SFPowerSourceMonitor_setChangeFlags___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 76))
  {
    *(v2 + 76) = v1;
    return [*(result + 32) _update];
  }

  return result;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_activateCalled = 1;
  dispatchQueue = v5->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SFPowerSourceMonitor_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(v5);
}

uint64_t __47__SFPowerSourceMonitor_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v8 = v2[1];
      goto LABEL_3;
    }
  }

LABEL_5:
  [v2 _update];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *(a1 + 32);

  return [v6 _triggerUpdatePowerSources];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFPowerSourceMonitor_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFPowerSourceMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 8);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = *(v2 + 8);
    v5 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v5)
    {
      v8 = *(v2 + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  v6 = *(v2 + 88);
  if (v6)
  {
    (*(v6 + 16))(*(v2 + 88));
    v2 = *(a1 + 32);
  }

  return [v2 _cleanup];
}

- (void)_update
{
  if (self->_psNotifyTokenAccessoryAttach == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__SFPowerSourceMonitor__update__block_invoke;
    handler[3] = &unk_1E788CB60;
    handler[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.attach", &self->_psNotifyTokenAccessoryAttach, dispatchQueue, handler);
  }

  if (self->_psNotifyTokenAccessoryPowerSource == -1)
  {
    v4 = self->_dispatchQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__SFPowerSourceMonitor__update__block_invoke_2;
    v9[3] = &unk_1E788CB60;
    v9[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.source", &self->_psNotifyTokenAccessoryPowerSource, v4, v9);
  }

  if (self->_psNotifyTokenAccessoryTimeRemaining == -1)
  {
    v5 = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__SFPowerSourceMonitor__update__block_invoke_3;
    v8[3] = &unk_1E788CB60;
    v8[4] = self;
    notify_register_dispatch("com.apple.system.accpowersources.timeremaining", &self->_psNotifyTokenAccessoryTimeRemaining, v5, v8);
  }

  if (self->_psNotifyTokenAnyPowerSource == -1)
  {
    v6 = self->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __31__SFPowerSourceMonitor__update__block_invoke_4;
    v7[3] = &unk_1E788CB60;
    v7[4] = self;
    notify_register_dispatch("com.apple.system.powersources", &self->_psNotifyTokenAnyPowerSource, v6, v7);
  }
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 8);
  if (v2 <= 10)
  {
    if (v2 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_2(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 8);
  if (v2 <= 10)
  {
    if (v2 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

uint64_t __31__SFPowerSourceMonitor__update__block_invoke_3(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 8);
  if (v2 <= 10)
  {
    if (v2 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  kdebug_trace();
  v3 = *(a1 + 32);

  return [v3 _triggerUpdatePowerSources];
}

- (BOOL)powerSourcesListWithOutInfo:(const void *)a3 outSources:(const __CFArray *)a4 outSourcesCount:(int64_t *)a5
{
  cf = 0;
  v9 = IOPSCopyPowerSourcesByTypePrecise();
  if (v9)
  {
    v10 = v9;
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      v21 = v10;
      LogPrintF();
    }

LABEL_7:
    v12 = IOPSCopyPowerSourcesByType();
    cf = v12;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:
  if (v12)
  {
    v13 = IOPSCopyPowerSourcesList(v12);
    if (v13)
    {
      *a3 = cf;
      *a4 = v13;
      v14 = 0;
      *a5 = CFArrayGetCount(v13);
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }
  }

  v14 = NSErrorWithOSStatusF();
  if (!v14)
  {
    goto LABEL_11;
  }

  v17 = self->_ucat->var0;
  if (v17 <= 60)
  {
    if (v17 == -1)
    {
      v18 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v20 = self->_ucat;
    }

    v22 = [v14 localizedDescription];
    LogPrintF();
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

void __50__SFPowerSourceMonitor__triggerUpdatePowerSources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePowerSources];
}

- (void)_updatePowerSources
{
  cf = 0;
  v5 = 0;
  v3 = 0;
  if ([(SFPowerSourceMonitor *)self powerSourcesListWithOutInfo:&v5 outSources:&cf outSourcesCount:&v3])
  {
    [(SFPowerSourceMonitor *)self _updatePowerSourcesWithInfo:v5 sources:cf sourcesCount:v3];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

- (void)_updatePowerSourcesWithInfo:(void *)a3 sources:(__CFArray *)a4 sourcesCount:(int64_t)a5
{
  v86 = *MEMORY[0x1E69E9840];
  powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex + 1;
  self->_powerSourcesUpdateIndex = powerSourcesUpdateIndex;
  var0 = self->_ucat->var0;
  if (var0 > 10)
  {
    goto LABEL_5;
  }

  if (var0 == -1)
  {
    ucat = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    v57 = self->_ucat;
    powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
  }

  v60 = a5;
  v62 = [(NSMutableDictionary *)self->_powerSources count];
  v58 = powerSourcesUpdateIndex;
  LogPrintF();
LABEL_5:
  self->_previousSourcesCount = a5;
  powerSources = self->_powerSources;
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __73__SFPowerSourceMonitor__updatePowerSourcesWithInfo_sources_sourcesCount___block_invoke;
  v82[3] = &unk_1E788D998;
  v69 = self;
  v82[4] = self;
  [(NSMutableDictionary *)powerSources enumerateKeysAndObjectsUsingBlock:v82, v58, v60, v62];
  v66 = IOPSCopyExternalPowerAdapterDetails();
  if (a5 >= 1)
  {
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, v13);
      v15 = IOPSGetPowerSourceDescription(a3, ValueAtIndex);
      v16 = self->_ucat->var0;
      if (v16 > 10)
      {
        goto LABEL_11;
      }

      if (v16 != -1)
      {
        goto LABEL_9;
      }

      if (_LogCategory_Initialize())
      {
        break;
      }

LABEL_11:
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"Power Source ID"];
        if (v17)
        {
          v18 = [(NSMutableDictionary *)self->_powerSources objectForKeyedSubscript:v17];
          if (v18)
          {
            v19 = v18;
            [(SFPowerSourceMonitor *)self _updatePowerSource:v18 desc:v15 adapterDesc:v66];
          }

          else
          {
            [(SFPowerSourceMonitor *)self _foundPowerSource:v17 desc:v15 adapterDesc:v66];
          }

          goto LABEL_25;
        }

        v21 = self->_ucat->var0;
        if (v21 <= 60)
        {
          if (v21 != -1)
          {
            goto LABEL_20;
          }

          if (_LogCategory_Initialize())
          {
            v24 = self->_ucat;
LABEL_20:
            v59 = self->_powerSourcesUpdateIndex;
            v61 = v15;
            LogPrintF();
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      v20 = self->_ucat->var0;
      if (v20 <= 60)
      {
        if (v20 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          v22 = self->_ucat;
        }

        v59 = self->_powerSourcesUpdateIndex;
        v61 = v13;
        LogPrintF();
      }

LABEL_26:

      if (a5 == ++v13)
      {
        goto LABEL_30;
      }
    }

    v23 = self->_ucat;
LABEL_9:
    v59 = self->_powerSourcesUpdateIndex;
    v61 = v15;
    LogPrintF();
    goto LABEL_11;
  }

LABEL_30:
  v25 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v26 = self;
  obj = [(NSMutableDictionary *)self->_powerSources allValues];
  v71 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (!v71)
  {
    goto LABEL_82;
  }

  v70 = *v79;
  v68 = v25;
  do
  {
    v27 = 0;
    do
    {
      if (*v79 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v78 + 1) + 8 * v27);
      v29 = [v28 groupID];
      if ([v29 length])
      {
        if ([v25 containsObject:v29])
        {
          v30 = v26->_ucat->var0;
          if (v30 <= 10)
          {
            if (v30 == -1)
            {
              if (!_LogCategory_Initialize())
              {
                goto LABEL_75;
              }

              v54 = v26->_ucat;
            }

            v59 = v26->_powerSourcesUpdateIndex;
            v61 = v28;
            LogPrintF();
          }

LABEL_75:
          v37 = 0;
          goto LABEL_76;
        }

        v32 = [(NSMutableDictionary *)v26->_powerSources allValues];
        v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupID == %@", v29];
        v31 = [v32 filteredArrayUsingPredicate:v33];

        [v25 addObject:v29];
      }

      else
      {
        v84 = v28;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
      }

      v34 = v26->_ucat->var0;
      if (v34 <= 10)
      {
        if (v34 != -1)
        {
          goto LABEL_44;
        }

        v36 = v26->_ucat;
        if (_LogCategory_Initialize())
        {
          v52 = v26->_ucat;
LABEL_44:
          v35 = v26->_powerSourcesUpdateIndex;
          v63 = [v28 accessoryCategory];
          v64 = [v31 count];
          v59 = v35;
          v61 = v29;
          LogPrintF();
        }
      }

      v72 = v29;
      v73 = v27;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v37 = v31;
      v38 = [v37 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v38)
      {
        v39 = v38;
        LODWORD(v40) = 0;
        v41 = *v75;
        v42 = 1;
        v43 = 1;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v75 != v41)
            {
              objc_enumerationMutation(v37);
            }

            v45 = *(*(&v74 + 1) + 8 * i);
            v46 = [v45 present] ^ 1;
            v47 = [v45 added];
            v43 &= v46;
            v42 &= v47;
            v48 = [v45 changes] | v40;
            if ((v46 | v47))
            {
              v40 = v48 | 0x200;
            }

            else
            {
              v40 = v48;
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v39);
      }

      else
      {
        v40 = 0;
        v42 = 1;
        v43 = 1;
      }

      v26 = v69;
      v49 = v69->_ucat->var0;
      if (v49 > 10)
      {
        goto LABEL_67;
      }

      if (v49 != -1)
      {
        goto LABEL_60;
      }

      if (_LogCategory_Initialize())
      {
        v53 = v69->_ucat;
LABEL_60:
        v50 = "no";
        if (v43)
        {
          v51 = "yes";
        }

        else
        {
          v51 = "no";
        }

        if (v42)
        {
          v50 = "yes";
        }

        v64 = v40;
        v65 = &unk_1A998F040;
        v61 = v51;
        v63 = v50;
        v59 = v69->_powerSourcesUpdateIndex;
        LogPrintF();
      }

LABEL_67:
      if (v43)
      {
        [(SFPowerSourceMonitor *)v69 _handlePowerSourcesLost:v37];
      }

      else if (v42)
      {
        [(SFPowerSourceMonitor *)v69 _handlePowerSourcesFound:v37];
      }

      else if (v40)
      {
        [(SFPowerSourceMonitor *)v69 _handlePowerSourcesChanged:v37 changes:v40];
      }

      v25 = v68;
      v29 = v72;
      v27 = v73;
LABEL_76:

      ++v27;
    }

    while (v27 != v71);
    v55 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
    v71 = v55;
  }

  while (v55);
LABEL_82:

  v56 = *MEMORY[0x1E69E9840];
}

void __73__SFPowerSourceMonitor__updatePowerSourcesWithInfo_sources_sourcesCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = **(v6 + 8);
  if (v7 <= 10)
  {
    if (v7 != -1)
    {
LABEL_3:
      v9 = *(v6 + 32);
      v10 = v5;
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(a1 + 32);
      v8 = *(v6 + 8);
      goto LABEL_3;
    }
  }

LABEL_5:
  [v5 setAdded:{0, v9, v10}];
  [v5 setPresent:0];
  [v5 setChanges:0];
}

- (void)_foundPowerSource:(id)a3 desc:(id)a4 adapterDesc:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(SFPowerSource);
  -[SFPowerSource setSourceID:](v10, "setSourceID:", [v20 integerValue]);
  [(SFPowerSource *)v10 updateWithPowerSourceDescription:v9];

  [(SFPowerSource *)v10 setAdded:1];
  if ([(SFPowerSource *)v10 isInternal])
  {
    [(SFPowerSource *)v10 setGroupID:@"Internal"];
    [(SFPowerSource *)v10 updateWithPowerAdapterDetails:v8];
    goto LABEL_13;
  }

  v11 = [(SFPowerSource *)v10 accessoryCategory];
  v12 = v11;
  if (v11 != @"Battery Case")
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v13 = [(__CFString *)v11 isEqual:@"Battery Case"];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v14 = [(SFPowerSource *)v10 transportType];
  if (v14 == @"AID")
  {

    goto LABEL_12;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_10:

    goto LABEL_13;
  }

  v16 = [(__CFString *)v14 isEqual:@"AID"];

  if (v16)
  {
LABEL_12:
    [(SFPowerSource *)v10 setGroupID:@"Internal"];
  }

LABEL_13:
  [(NSMutableDictionary *)self->_powerSources setObject:v10 forKeyedSubscript:v20];
  var0 = self->_ucat->var0;
  if (var0 > 10)
  {
    goto LABEL_17;
  }

  if (var0 != -1)
  {
    goto LABEL_15;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->_ucat;
LABEL_15:
    powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
    LogPrintF();
  }

LABEL_17:
}

- (void)_updatePowerSource:(id)a3 desc:(id)a4 adapterDesc:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = [v20 updateWithPowerSourceDescription:a4];
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    v11 = v20;
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
      v11 = v20;
    }

    v18 = v9;
    v19 = &unk_1A998F040;
    powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
    v17 = v11;
    LogPrintF();
  }

LABEL_5:
  if (([v20 isInternal] & 1) != 0 || (objc_msgSend(v20, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), v12 == @"Internal") || (v13 = v12) != 0 && (v14 = -[__CFString isEqual:](v12, "isEqual:", @"Internal"), v13, v13, v14))
  {
    v9 = [v20 updateWithPowerAdapterDetails:v8] | v9;
  }

  [v20 setChanges:v9];
}

- (void)_handlePowerSourcesFound:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v10 = v4;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_3:
      powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
      LogPrintF();
      v4 = v10;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v10;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  powerSourcesFoundHandler = self->_powerSourcesFoundHandler;
  if (powerSourcesFoundHandler)
  {
    (powerSourcesFoundHandler)[2](powerSourcesFoundHandler, v10);
    v4 = v10;
  }
}

- (void)_handlePowerSourcesChanged:(id)a3 changes:(unsigned int)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  var0 = self->_ucat->var0;
  if (var0 > 10)
  {
    goto LABEL_5;
  }

  if (var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_5;
    }

    ucat = self->_ucat;
  }

  powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
  v23 = v5;
  LogPrintF();
LABEL_5:
  v7 = [v5 mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v27;
  do
  {
    v12 = 0;
    do
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      if (([v13 present] & 1) == 0)
      {
        v14 = self->_ucat->var0;
        if (v14 <= 10)
        {
          if (v14 != -1)
          {
            goto LABEL_13;
          }

          if (_LogCategory_Initialize())
          {
            v16 = self->_ucat;
LABEL_13:
            v22 = self->_powerSourcesUpdateIndex;
            v24 = v13;
            LogPrintF();
          }
        }

        [v7 removeObject:{v13, v22, v24}];
        v30 = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        [(SFPowerSourceMonitor *)self _removePowerSources:v15];
      }

      ++v12;
    }

    while (v10 != v12);
    v17 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    v10 = v17;
  }

  while (v17);
LABEL_20:

  powerSourcesChangedHandler = self->_powerSourcesChangedHandler;
  if (powerSourcesChangedHandler && (self->_changeFlags & a4) != 0)
  {
    powerSourcesChangedHandler[2](powerSourcesChangedHandler, v7);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_handlePowerSourcesLost:(id)a3
{
  v4 = a3;
  var0 = self->_ucat->var0;
  v11 = v4;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_3:
      powerSourcesUpdateIndex = self->_powerSourcesUpdateIndex;
      v10 = v4;
      LogPrintF();
      v4 = v11;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = v11;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(SFPowerSourceMonitor *)self _removePowerSources:v4, powerSourcesUpdateIndex, v10];
  powerSourcesLostHandler = self->_powerSourcesLostHandler;
  if (powerSourcesLostHandler)
  {
    powerSourcesLostHandler[2](powerSourcesLostHandler, v11);
  }
}

- (void)_removePowerSources:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_powerSources allKeysForObject:*(*(&v11 + 1) + 8 * v8)];
        [(NSMutableDictionary *)self->_powerSources removeObjectsForKeys:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end