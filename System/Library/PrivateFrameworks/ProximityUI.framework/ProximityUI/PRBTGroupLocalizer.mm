@interface PRBTGroupLocalizer
- (BOOL)startRangingOn:(id)a3 withError:(id *)a4;
- (BOOL)stopRangingOn:(id)a3 withError:(id *)a4;
- (PRBTGroupLocalizer)initWithDelegate:(id)a3 queue:(id)a4 id:(id)a5 isUT:(BOOL)a6 withAnalytics:(BOOL)a7;
- (PRBTGroupLocalizer)initWithDelegate:(id)a3 queue:(id)a4 id:(id)a5 withAnalytics:(BOOL)a6;
- (PRBTGroupLocalizerDelegate)delegate;
- (void)btLocalizerChangedState:(unint64_t)a3 onItem:(id)a4;
- (void)dealloc;
- (void)didFailWithError:(id)a3 onItem:(id)a4;
- (void)informDelegateRangingStarted:(id)a3 withError:(id)a4;
- (void)informDelegateRangingStopped:(id)a3 withError:(id)a4;
- (void)updateDelegateWithSelector:(SEL)a3 object:(id)a4;
@end

@implementation PRBTGroupLocalizer

- (PRBTGroupLocalizer)initWithDelegate:(id)a3 queue:(id)a4 id:(id)a5 isUT:(BOOL)a6 withAnalytics:(BOOL)a7
{
  v51 = a6;
  v52 = a7;
  v61 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v47 = v12;
  v48 = a5;
  v46 = v11;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"PRBTGroupLocalizer.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v45 = [MEMORY[0x277CCA890] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"PRBTGroupLocalizer.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v57.receiver = self;
  v57.super_class = PRBTGroupLocalizer;
  v13 = [(PRBTGroupLocalizer *)&v57 init];
  v14 = v13;
  if (v13)
  {
    [(PRBTGroupLocalizer *)v13 setDelegate:v11];
    [(PRBTGroupLocalizer *)v14 setDelegateQueue:v47];
    v15 = dispatch_queue_create("com.apple.findmy.btgroupranging", 0);
    [(PRBTGroupLocalizer *)v14 setProximityQueue:v15];

    v16 = os_log_create("com.apple.proximity", "btgrouplocalizer");
    logger = v14->_logger;
    v14->_logger = v16;

    v49 = [v48 count];
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v49];
    [(PRBTGroupLocalizer *)v14 setLocalizerArray:v18];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v49];
    [(PRBTGroupLocalizer *)v14 setLocalizerShouldRangeArray:v19];

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v49];
    [(PRBTGroupLocalizer *)v14 setLocalizerStateArray:v20];

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v49];
    [(PRBTGroupLocalizer *)v14 setUuidIndexMap:v21];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v48;
    v22 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v54;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v53 + 1) + 8 * i);
          v27 = v14->_logger;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v26 UUIDString];
            *buf = 138412290;
            v59 = v28;
            _os_log_impl(&dword_2613DF000, v27, OS_LOG_TYPE_DEFAULT, "BTGroupLocalizer adding item %@ to the map", buf, 0xCu);
          }

          v29 = [(PRBTGroupLocalizer *)v14 localizerArray];
          v30 = [PRBTLocalizer alloc];
          v31 = [(PRBTGroupLocalizer *)v14 proximityQueue];
          v32 = [(PRBTLocalizer *)v30 initWithDelegate:v14 queue:v31 id:v26 isUT:v51 productUUID:0 withAnalytics:v52];
          [v29 addObject:v32];

          v33 = [(PRBTGroupLocalizer *)v14 localizerShouldRangeArray];
          v34 = [MEMORY[0x277CCABB0] numberWithBool:0];
          [v33 addObject:v34];

          v35 = [(PRBTGroupLocalizer *)v14 localizerStateArray];
          v36 = [MEMORY[0x277CCABB0] numberWithInt:0];
          [v35 addObject:v36];

          v37 = [(PRBTGroupLocalizer *)v14 uuidIndexMap];
          v38 = [MEMORY[0x277CCABB0] numberWithInt:v23];
          [v37 setObject:v38 forKey:v26];

          v23 = (v23 + 1);
        }

        v22 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v22);
    }

    if (v49)
    {
      for (j = 0; j != v49; ++j)
      {
        v40 = [(PRBTGroupLocalizer *)v14 localizerArray];
        v41 = [v40 objectAtIndexedSubscript:j];
        [v41 configure];
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PRBTGroupLocalizer)initWithDelegate:(id)a3 queue:(id)a4 id:(id)a5 withAnalytics:(BOOL)a6
{
  v60 = a6;
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v55 = v11;
  v56 = a5;
  v54 = v10;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"PRBTGroupLocalizer.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v55)
    {
      goto LABEL_3;
    }
  }

  v53 = [MEMORY[0x277CCA890] currentHandler];
  [v53 handleFailureInMethod:a2 object:self file:@"PRBTGroupLocalizer.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v66.receiver = self;
  v66.super_class = PRBTGroupLocalizer;
  v12 = [(PRBTGroupLocalizer *)&v66 init];
  v13 = v12;
  if (v12)
  {
    [(PRBTGroupLocalizer *)v12 setDelegate:v10];
    [(PRBTGroupLocalizer *)v13 setDelegateQueue:v55];
    v14 = dispatch_queue_create("com.apple.findmy.btgroupranging", 0);
    [(PRBTGroupLocalizer *)v13 setProximityQueue:v14];

    v15 = os_log_create("com.apple.proximity", "btgrouplocalizer");
    logger = v13->_logger;
    v13->_logger = v15;

    v57 = [v56 count];
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v57];
    [(PRBTGroupLocalizer *)v13 setLocalizerArray:v17];

    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v57];
    [(PRBTGroupLocalizer *)v13 setLocalizerShouldRangeArray:v18];

    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v57];
    [(PRBTGroupLocalizer *)v13 setLocalizerStateArray:v19];

    v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v57];
    [(PRBTGroupLocalizer *)v13 setUuidIndexMap:v20];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v56;
    v21 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    if (v21)
    {
      v22 = 0;
      v59 = *v63;
      do
      {
        v61 = v21;
        for (i = 0; i != v61; ++i)
        {
          if (*v63 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v62 + 1) + 8 * i);
          v25 = [v24 uuid];
          v26 = [v24 productUUID];
          v27 = [v24 isOwned];
          v28 = v13->_logger;
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            if (v29)
            {
              v30 = [v25 UUIDString];
              v31 = [v26 UUIDString];
              v32 = v31;
              *buf = 138412802;
              v33 = "true";
              if (v27)
              {
                v33 = "false";
              }

              v68 = v30;
              v69 = 2112;
              v70 = v31;
              v71 = 2080;
              v72 = v33;
              _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "BTGroupLocalizer adding item %@ to the map with productUUID %@, isUT: %s", buf, 0x20u);
            }
          }

          else if (v29)
          {
            v34 = [v25 UUIDString];
            v35 = v34;
            *buf = 138412546;
            v36 = "true";
            if (v27)
            {
              v36 = "false";
            }

            v68 = v34;
            v69 = 2080;
            v70 = v36;
            _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "BTGroupLocalizer adding item %@ to the map with no productUUID, isUT: %s", buf, 0x16u);
          }

          v37 = [(PRBTGroupLocalizer *)v13 localizerArray];
          v38 = [PRBTLocalizer alloc];
          v39 = [(PRBTGroupLocalizer *)v13 proximityQueue];
          v40 = [(PRBTLocalizer *)v38 initWithDelegate:v13 queue:v39 id:v25 isUT:v27 ^ 1u productUUID:v26 withAnalytics:v60];
          [v37 addObject:v40];

          v41 = [(PRBTGroupLocalizer *)v13 localizerShouldRangeArray];
          v42 = [MEMORY[0x277CCABB0] numberWithBool:0];
          [v41 addObject:v42];

          v43 = [(PRBTGroupLocalizer *)v13 localizerStateArray];
          v44 = [MEMORY[0x277CCABB0] numberWithInt:0];
          [v43 addObject:v44];

          v45 = [(PRBTGroupLocalizer *)v13 uuidIndexMap];
          v46 = [MEMORY[0x277CCABB0] numberWithInt:v22];
          [v45 setObject:v46 forKey:v25];

          v22 = (v22 + 1);
        }

        v21 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
      }

      while (v21);
    }

    if (v57)
    {
      for (j = 0; j != v57; ++j)
      {
        v48 = [(PRBTGroupLocalizer *)v13 localizerArray];
        v49 = [v48 objectAtIndexedSubscript:j];
        [v49 configure];
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)didFailWithError:(id)a3 onItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRBTGroupLocalizer *)self delegateQueue];
  if (v8)
  {
    v9 = [(PRBTGroupLocalizer *)self delegateQueue];
  }

  else
  {
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PRBTGroupLocalizer_didFailWithError_onItem___block_invoke;
    block[3] = &unk_279AD6280;
    v13 = WeakRetained;
    v14 = v6;
    v15 = v7;
    dispatch_async(v9, block);
  }
}

- (void)updateDelegateWithSelector:(SEL)a3 object:(id)a4
{
  v6 = a4;
  v7 = [(PRBTGroupLocalizer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [(PRBTGroupLocalizer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PRBTGroupLocalizer_updateDelegateWithSelector_object___block_invoke;
    block[3] = &unk_279AD6128;
    v10 = v7;
    v12 = a3;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)btLocalizerChangedState:(unint64_t)a3 onItem:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(PRBTGroupLocalizer *)self proximityQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__PRBTGroupLocalizer_btLocalizerChangedState_onItem___block_invoke;
  v9[3] = &unk_279AD6100;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a3;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __53__PRBTGroupLocalizer_btLocalizerChangedState_onItem___block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained uuidIndexMap];
    v5 = [v4 objectForKey:*(a1 + 32)];
    v6 = [v5 intValue];

    v7 = [v3 localizerStateArray];
    v8 = [v7 objectAtIndexedSubscript:v6];
    v9 = [v8 intValue];

    v10 = [v3 localizerShouldRangeArray];
    v11 = [v10 objectAtIndexedSubscript:v6];
    v12 = [v11 BOOLValue];

    v13 = [v3 localizerArray];
    v14 = [v13 objectAtIndexedSubscript:v6];

    v15 = *(a1 + 48);
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
LABEL_45:
          v65 = [v3 localizerStateArray];
          v66 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
          [v65 replaceObjectAtIndex:v6 withObject:v66];

          goto LABEL_46;
        }

        v22 = v3[1];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [*(a1 + 32) UUIDString];
          *buf = 136315138;
          v72 = [v23 UTF8String];
          _os_log_impl(&dword_2613DF000, v22, OS_LOG_TYPE_DEFAULT, "%s: Localizer is configured and ready to start ranging", buf, 0xCu);
        }

        if (!v12)
        {
          if ((v9 - 3) <= 1)
          {
            [v3 informDelegateRangingStopped:*(a1 + 32) withError:0];
          }

          goto LABEL_45;
        }

        v24 = v3[1];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*(a1 + 32) UUIDString];
          v26 = v25;
          v27 = [v25 UTF8String];
          *buf = 136315138;
          v72 = v27;
          _os_log_impl(&dword_2613DF000, v24, OS_LOG_TYPE_DEFAULT, "%s: Device asked to start ranging", buf, 0xCu);
        }

        v70 = 0;
        v28 = [v14 start:&v70];
        v18 = v70;
        if ((v28 & 1) == 0)
        {
          v29 = v3[1];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [*(a1 + 32) UUIDString];
            v31 = v30;
            v32 = [v30 UTF8String];
            v33 = [v18 localizedDescription];
            v34 = v33;
            v35 = [v33 UTF8String];
            *buf = 136315394;
            v72 = v32;
            v73 = 2080;
            v74 = v35;
            _os_log_impl(&dword_2613DF000, v29, OS_LOG_TYPE_DEFAULT, "%s: Failed to start ranging with error: %s", buf, 0x16u);
          }
        }
      }

      else
      {
        v18 = v3[1];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [*(a1 + 32) UUIDString];
          *buf = 136315138;
          v72 = [v52 UTF8String];
          _os_log_impl(&dword_2613DF000, v18, OS_LOG_TYPE_DEFAULT, "%s: Localizer is connecting", buf, 0xCu);
        }
      }
    }

    else
    {
      switch(v15)
      {
        case 2:
          v36 = v3[1];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [*(a1 + 32) UUIDString];
            *buf = 136315138;
            v72 = [v37 UTF8String];
            _os_log_impl(&dword_2613DF000, v36, OS_LOG_TYPE_DEFAULT, "%s: Localizer is attempting to start ranging", buf, 0xCu);
          }

          if (v12)
          {
            goto LABEL_45;
          }

          v38 = v3[1];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [*(a1 + 32) UUIDString];
            v40 = v39;
            v41 = [v39 UTF8String];
            *buf = 136315138;
            v72 = v41;
            _os_log_impl(&dword_2613DF000, v38, OS_LOG_TYPE_DEFAULT, "%s: Localizer should not be attempting to range - asked to stop ranging", buf, 0xCu);
          }

          v69 = 0;
          v42 = [v14 stop:&v69];
          v18 = v69;
          if ((v42 & 1) == 0)
          {
            v43 = v3[1];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [*(a1 + 32) UUIDString];
              v45 = v44;
              v46 = [v44 UTF8String];
              v47 = [v18 localizedDescription];
              v48 = v47;
              v49 = [v47 UTF8String];
              *buf = 136315394;
              v72 = v46;
              v73 = 2080;
              v74 = v49;
              _os_log_impl(&dword_2613DF000, v43, OS_LOG_TYPE_DEFAULT, "%s: Failed to stop ranging with error: %s", buf, 0x16u);
            }
          }

          break;
        case 3:
          v50 = v3[1];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = [*(a1 + 32) UUIDString];
            *buf = 136315138;
            v72 = [v51 UTF8String];
            _os_log_impl(&dword_2613DF000, v50, OS_LOG_TYPE_DEFAULT, "%s: Localizer is ranging", buf, 0xCu);
          }

          if (v12)
          {
            if ((v9 - 1) <= 1)
            {
              [v3 informDelegateRangingStarted:*(a1 + 32) withError:0];
            }

            goto LABEL_45;
          }

          v53 = v3[1];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [*(a1 + 32) UUIDString];
            v55 = v54;
            v56 = [v54 UTF8String];
            *buf = 136315138;
            v72 = v56;
            _os_log_impl(&dword_2613DF000, v53, OS_LOG_TYPE_DEFAULT, "%s: Localizer should not be ranging - asked to stop ranging", buf, 0xCu);
          }

          v68 = 0;
          v57 = [v14 stop:&v68];
          v18 = v68;
          if ((v57 & 1) == 0)
          {
            v58 = v3[1];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [*(a1 + 32) UUIDString];
              v60 = v59;
              v61 = [v59 UTF8String];
              v62 = [v18 localizedDescription];
              v63 = v62;
              v64 = [v62 UTF8String];
              *buf = 136315394;
              v72 = v61;
              v73 = 2080;
              v74 = v64;
              _os_log_impl(&dword_2613DF000, v58, OS_LOG_TYPE_DEFAULT, "%s: Failed to stop ranging with error: %s", buf, 0x16u);
            }
          }

          break;
        case 4:
          v16 = v3[1];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [*(a1 + 32) UUIDString];
            *buf = 136315138;
            v72 = [v17 UTF8String];
            _os_log_impl(&dword_2613DF000, v16, OS_LOG_TYPE_DEFAULT, "%s: Localizer is attempting to stop ranging", buf, 0xCu);
          }

          if (!v12)
          {
            goto LABEL_45;
          }

          v18 = v3[1];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 32) UUIDString];
            v20 = v19;
            v21 = [v19 UTF8String];
            *buf = 136315138;
            v72 = v21;
            _os_log_impl(&dword_2613DF000, v18, OS_LOG_TYPE_DEFAULT, "%s: Localizer should not be attempting to stop - wait until stop is complete and localizer is back to configured to ask to start again", buf, 0xCu);
          }

          break;
        default:
          goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

LABEL_46:

  v67 = *MEMORY[0x277D85DE8];
}

- (void)informDelegateRangingStarted:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRBTGroupLocalizer *)self delegateQueue];
  if (v8)
  {
    v9 = [(PRBTGroupLocalizer *)self delegateQueue];
  }

  else
  {
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PRBTGroupLocalizer_informDelegateRangingStarted_withError___block_invoke;
    block[3] = &unk_279AD6280;
    v13 = WeakRetained;
    v14 = v6;
    v15 = v7;
    dispatch_async(v9, block);
  }
}

- (void)informDelegateRangingStopped:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PRBTGroupLocalizer *)self delegateQueue];
  if (v8)
  {
    v9 = [(PRBTGroupLocalizer *)self delegateQueue];
  }

  else
  {
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PRBTGroupLocalizer_informDelegateRangingStopped_withError___block_invoke;
    block[3] = &unk_279AD6280;
    v13 = WeakRetained;
    v14 = v6;
    v15 = v7;
    dispatch_async(v9, block);
  }
}

- (BOOL)startRangingOn:(id)a3 withError:(id *)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = [(PRBTGroupLocalizer *)self proximityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PRBTGroupLocalizer_startRangingOn_withError___block_invoke;
  block[3] = &unk_279AD6150;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
}

void __47__PRBTGroupLocalizer_startRangingOn_withError___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v3)
    {
      v5 = *v41;
      *&v4 = 136315394;
      v37 = v4;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v41 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v40 + 1) + 8 * i);
          v8 = [WeakRetained uuidIndexMap];
          v9 = [v8 objectForKey:v7];
          v10 = [v9 intValue];

          v11 = [WeakRetained localizerShouldRangeArray];
          v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v13 = v10;
          [v11 replaceObjectAtIndex:v10 withObject:v12];

          v14 = WeakRetained[1];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v7 UUIDString];
            v16 = v15;
            v17 = [v15 UTF8String];
            *buf = 136315138;
            v45 = v17;
            _os_log_impl(&dword_2613DF000, v14, OS_LOG_TYPE_DEFAULT, "%s: Device should range updated to YES", buf, 0xCu);
          }

          v18 = [WeakRetained localizerStateArray];
          v19 = [v18 objectAtIndexedSubscript:v13];
          v20 = [v19 intValue] == 1;

          if (v20)
          {
            v21 = WeakRetained[1];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v7 UUIDString];
              v23 = v22;
              v24 = [v22 UTF8String];
              *buf = 136315138;
              v45 = v24;
              _os_log_impl(&dword_2613DF000, v21, OS_LOG_TYPE_DEFAULT, "%s: Device asked to start ranging", buf, 0xCu);
            }

            v25 = [WeakRetained localizerArray];
            v26 = [v25 objectAtIndexedSubscript:v13];
            v39 = 0;
            v27 = [v26 start:&v39];
            v28 = v39;

            if ((v27 & 1) == 0)
            {
              v29 = WeakRetained[1];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [v7 UUIDString];
                v31 = v30;
                v32 = [v30 UTF8String];
                v33 = [v28 localizedDescription];
                v34 = v33;
                v35 = [v33 UTF8String];
                *buf = v37;
                v45 = v32;
                v46 = 2080;
                v47 = v35;
                _os_log_impl(&dword_2613DF000, v29, OS_LOG_TYPE_DEFAULT, "%s: Failed to start ranging with error: %s", buf, 0x16u);
              }
            }
          }
        }

        v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v3);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)stopRangingOn:(id)a3 withError:(id *)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v6 = [(PRBTGroupLocalizer *)self proximityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PRBTGroupLocalizer_stopRangingOn_withError___block_invoke;
  block[3] = &unk_279AD6150;
  objc_copyWeak(&v11, &location);
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
}

void __46__PRBTGroupLocalizer_stopRangingOn_withError___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v3)
    {
      v5 = *v41;
      *&v4 = 136315394;
      v37 = v4;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v41 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v40 + 1) + 8 * i);
          v8 = [WeakRetained uuidIndexMap];
          v9 = [v8 objectForKey:v7];
          v10 = [v9 intValue];

          v11 = [WeakRetained localizerShouldRangeArray];
          v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
          v13 = v10;
          [v11 replaceObjectAtIndex:v10 withObject:v12];

          v14 = WeakRetained[1];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v7 UUIDString];
            v16 = v15;
            v17 = [v15 UTF8String];
            *buf = 136315138;
            v45 = v17;
            _os_log_impl(&dword_2613DF000, v14, OS_LOG_TYPE_DEFAULT, "%s: Device should range updated to NO", buf, 0xCu);
          }

          v18 = [WeakRetained localizerStateArray];
          v19 = [v18 objectAtIndexedSubscript:v13];
          v20 = [v19 intValue];

          if ((v20 & 0xFFFFFFFE) == 2)
          {
            v21 = WeakRetained[1];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [v7 UUIDString];
              v23 = v22;
              v24 = [v22 UTF8String];
              *buf = 136315138;
              v45 = v24;
              _os_log_impl(&dword_2613DF000, v21, OS_LOG_TYPE_DEFAULT, "%s: Device asked to stop ranging", buf, 0xCu);
            }

            v25 = [WeakRetained localizerArray];
            v26 = [v25 objectAtIndexedSubscript:v13];
            v39 = 0;
            v27 = [v26 stop:&v39];
            v28 = v39;

            if ((v27 & 1) == 0)
            {
              v29 = WeakRetained[1];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [v7 UUIDString];
                v31 = v30;
                v32 = [v30 UTF8String];
                v33 = [v28 localizedDescription];
                v34 = v33;
                v35 = [v33 UTF8String];
                *buf = v37;
                v45 = v32;
                v46 = 2080;
                v47 = v35;
                _os_log_impl(&dword_2613DF000, v29, OS_LOG_TYPE_DEFAULT, "%s: Failed to stop ranging with error: %s", buf, 0x16u);
              }
            }
          }
        }

        v3 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v3);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v52 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Destructing PRBTGroupLocalizer", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(PRBTGroupLocalizer *)self uuidIndexMap];
  v4 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v4)
  {
    v6 = *v44;
    *&v5 = 136315394;
    v39 = v5;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v9 = [(PRBTGroupLocalizer *)self uuidIndexMap];
        v10 = [v9 objectForKey:v8];
        v11 = [v10 intValue];

        v12 = [(PRBTGroupLocalizer *)self localizerShouldRangeArray];
        v13 = v11;
        v14 = [v12 objectAtIndexedSubscript:v11];
        v15 = [v14 BOOLValue];

        v16 = [(PRBTGroupLocalizer *)self localizerStateArray];
        v17 = [v16 objectAtIndexedSubscript:v13];
        v18 = [v17 intValue];

        if ((v18 & 0xFFFFFFFE) == 2)
        {
          v19 = v15;
        }

        else
        {
          v19 = 0;
        }

        v20 = self->_logger;
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19 == 1)
        {
          if (v21)
          {
            v22 = [v8 UUIDString];
            v23 = v22;
            v24 = [v22 UTF8String];
            *buf = 136315138;
            v48 = v24;
            _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "%s: Device is still ranging - Stop is sent", buf, 0xCu);
          }

          v25 = [(PRBTGroupLocalizer *)self localizerArray];
          v26 = [v25 objectAtIndexedSubscript:v13];
          v42 = 0;
          v27 = [v26 stop:&v42];
          v20 = v42;

          if ((v27 & 1) == 0)
          {
            v28 = self->_logger;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v8 UUIDString];
              v30 = v29;
              v31 = [v29 UTF8String];
              v32 = [(OS_os_log *)v20 localizedDescription];
              v33 = v32;
              v34 = [v32 UTF8String];
              *buf = v39;
              v48 = v31;
              v49 = 2080;
              v50 = v34;
              _os_log_impl(&dword_2613DF000, v28, OS_LOG_TYPE_DEFAULT, "%s: Failed to stop ranging with error: %s", buf, 0x16u);
            }
          }
        }

        else if (v21)
        {
          v35 = [v8 UUIDString];
          v36 = v35;
          v37 = [v35 UTF8String];
          *buf = 136315138;
          v48 = v37;
          _os_log_impl(&dword_2613DF000, v20, OS_LOG_TYPE_DEFAULT, "%s: Device is not ranging", buf, 0xCu);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v4);
  }

  v41.receiver = self;
  v41.super_class = PRBTGroupLocalizer;
  [(PRBTGroupLocalizer *)&v41 dealloc];
  v38 = *MEMORY[0x277D85DE8];
}

- (PRBTGroupLocalizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end