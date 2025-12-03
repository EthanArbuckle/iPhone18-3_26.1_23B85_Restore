@interface SBBiometricMonitorTestRecipeDummyDataSource
- (void)addObserver:(id)observer;
- (void)cycleState;
@end

@implementation SBBiometricMonitorTestRecipeDummyDataSource

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSMutableSet *)observers addObject:observerCopy];
}

- (void)cycleState
{
  v85 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state > 3)
  {
    if (state > 5)
    {
      if (state == 6)
      {
        self->_state = 7;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v4 = [(NSMutableSet *)self->_observers copy];
        v40 = [v4 countByEnumeratingWithState:&v49 objects:v78 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v50;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v50 != v42)
              {
                objc_enumerationMutation(v4);
              }

              v44 = *(*(&v49 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v44 biometricMonitorDataSourceMatchingEnded:self];
              }
            }

            v41 = [v4 countByEnumeratingWithState:&v49 objects:v78 count:16];
          }

          while (v41);
        }
      }

      else
      {
        if (state != 7)
        {
          return;
        }

        self->_state = 0;
        self->_poseIsMarginal ^= 1u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v4 = [(NSMutableSet *)self->_observers copy];
        v20 = [v4 countByEnumeratingWithState:&v45 objects:v77 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v46;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(v4);
              }

              v24 = *(*(&v45 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v24 biometricMonitorDataSourcePoseUpdated:self];
              }
            }

            v21 = [v4 countByEnumeratingWithState:&v45 objects:v77 count:16];
          }

          while (v21);
        }
      }
    }

    else if (state == 4)
    {
      self->_state = 5;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v4 = [(NSMutableSet *)self->_observers copy];
      v30 = [v4 countByEnumeratingWithState:&v57 objects:v80 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v58;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v58 != v32)
            {
              objc_enumerationMutation(v4);
            }

            v34 = *(*(&v57 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v34 biometricMonitorDataSourceMatchingFailed:self];
            }
          }

          v31 = [v4 countByEnumeratingWithState:&v57 objects:v80 count:16];
        }

        while (v31);
      }
    }

    else
    {
      self->_state = 6;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v4 = [(NSMutableSet *)self->_observers copy];
      v10 = [v4 countByEnumeratingWithState:&v53 objects:v79 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v54;
        do
        {
          for (m = 0; m != v11; ++m)
          {
            if (*v54 != v12)
            {
              objc_enumerationMutation(v4);
            }

            v14 = *(*(&v53 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              [v14 biometricMonitorDataSourceMatchingFailed:self];
            }
          }

          v11 = [v4 countByEnumeratingWithState:&v53 objects:v79 count:16];
        }

        while (v11);
      }
    }
  }

  else if (state > 1)
  {
    if (state == 2)
    {
      self->_state = 3;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v4 = [(NSMutableSet *)self->_observers copy];
      v35 = [v4 countByEnumeratingWithState:&v65 objects:v82 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v66;
        do
        {
          for (n = 0; n != v36; ++n)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(v4);
            }

            v39 = *(*(&v65 + 1) + 8 * n);
            if (objc_opt_respondsToSelector())
            {
              [v39 biometricMonitorDataSourceMatchingStarted:self];
            }
          }

          v36 = [v4 countByEnumeratingWithState:&v65 objects:v82 count:16];
        }

        while (v36);
      }
    }

    else
    {
      self->_state = 4;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v4 = [(NSMutableSet *)self->_observers copy];
      v15 = [v4 countByEnumeratingWithState:&v61 objects:v81 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v62;
        do
        {
          for (ii = 0; ii != v16; ++ii)
          {
            if (*v62 != v17)
            {
              objc_enumerationMutation(v4);
            }

            v19 = *(*(&v61 + 1) + 8 * ii);
            if (objc_opt_respondsToSelector())
            {
              [v19 biometricMonitorDataSourceMatchingSucceeded:self];
            }
          }

          v16 = [v4 countByEnumeratingWithState:&v61 objects:v81 count:16];
        }

        while (v16);
      }
    }
  }

  else if (state)
  {
    if (state != 1)
    {
      return;
    }

    self->_state = 2;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v4 = [(NSMutableSet *)self->_observers copy];
    v5 = [v4 countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v70;
      do
      {
        for (jj = 0; jj != v6; ++jj)
        {
          if (*v70 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v69 + 1) + 8 * jj);
          if (objc_opt_respondsToSelector())
          {
            [v9 biometricMonitorDataSourcePresenceDetectionSucceeded:self];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v69 objects:v83 count:16];
      }

      while (v6);
    }
  }

  else
  {
    self->_state = 1;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v4 = [(NSMutableSet *)self->_observers copy];
    v25 = [v4 countByEnumeratingWithState:&v73 objects:v84 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v74;
      do
      {
        for (kk = 0; kk != v26; ++kk)
        {
          if (*v74 != v27)
          {
            objc_enumerationMutation(v4);
          }

          v29 = *(*(&v73 + 1) + 8 * kk);
          if (objc_opt_respondsToSelector())
          {
            [v29 biometricMonitorDataSourcePresenceDetectionStarted:self];
          }
        }

        v26 = [v4 countByEnumeratingWithState:&v73 objects:v84 count:16];
      }

      while (v26);
    }
  }
}

@end