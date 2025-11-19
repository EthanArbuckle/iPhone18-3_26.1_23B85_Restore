@interface SBAssessmentModeMonitor
+ (id)sharedInstance;
- (id)_init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation SBAssessmentModeMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SBAssessmentModeMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_2, block);
  }

  v2 = sharedInstance_sharedInstance_1;

  return v2;
}

uint64_t __41__SBAssessmentModeMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance_sharedInstance_1;
  sharedInstance_sharedInstance_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = SBAssessmentModeMonitor;
  v2 = [(SBAssessmentModeMonitor *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6985E90]);
    v4 = [v3 initWithQueue:MEMORY[0x1E69E96A0]];
    assessmentModeGestalt = v2->_assessmentModeGestalt;
    v2->_assessmentModeGestalt = v4;

    v6 = v2->_assessmentModeGestalt;
    v7 = SBLogAssessmentMode();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Initalized AssessmentModeGestalt", v10, 2u);
      }

      v2->_active = [(AEAssessmentModeGestalt *)v2->_assessmentModeGestalt isActive];
      [(AEAssessmentModeGestalt *)v2->_assessmentModeGestalt addObserver:v2 forKeyPath:@"active" options:3 context:0];
    }

    else
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Failed to initalize AssessmentModeGestalt", v10, 2u);
      }

      v2->_active = 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  assessmentModeGestalt = self->_assessmentModeGestalt;
  if (assessmentModeGestalt)
  {
    [(AEAssessmentModeGestalt *)assessmentModeGestalt removeObserver:self forKeyPath:@"active" context:0];
  }

  v4.receiver = self;
  v4.super_class = SBAssessmentModeMonitor;
  [(SBAssessmentModeMonitor *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"active"] && self->_assessmentModeGestalt == v11)
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v14 = v13;
    if (v13)
    {
      active = self->_active;
      v16 = [v13 BOOLValue];
      if (active != v16)
      {
        v17 = v16;
        v18 = SBLogAssessmentMode();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v21 = active;
          v22 = 1024;
          v23 = v17;
          _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "AssessmentMode %{BOOL}d -> %{BOOL}d", buf, 0xEu);
        }

        [(SBAssessmentModeMonitor *)self setActive:v17];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBAssessmentModeMonitor;
    [(SBAssessmentModeMonitor *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

@end