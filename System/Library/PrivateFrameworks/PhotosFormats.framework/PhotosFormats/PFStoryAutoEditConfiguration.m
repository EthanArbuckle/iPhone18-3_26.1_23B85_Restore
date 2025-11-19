@interface PFStoryAutoEditConfiguration
+ (id)standardConfiguration;
- ($BFB0C6F6478568252C8128E2BF722AD2)_overallDurationInfoForDurationKind:(SEL)a3;
- ($BFB0C6F6478568252C8128E2BF722AD2)durationInfoForPlaybackStyle:(SEL)a3 songPace:(int64_t)a4;
- ($BFB0C6F6478568252C8128E2BF722AD2)maximumDurations;
- ($BFB0C6F6478568252C8128E2BF722AD2)minimumDurations;
- (PFStoryAutoEditConfiguration)init;
- (PFStoryAutoEditConfiguration)initWithConfigurationData:(id)a3;
- (PFStoryAutoEditConfiguration)initWithConfigurationDictionary:(id)a3;
- (PFStoryAutoEditConfiguration)initWithConfigurationFileAtURL:(id)a3;
- (double)durationForTransitionKind:(int64_t)a3 songPace:(int64_t)a4;
- (double)outroDurationForSongPace:(int64_t)a3;
- (id)_arrayFromTable:(id)a3 count:(unint64_t)a4 nameToValueMap:(id)a5;
- (id)_loadData:(id)a3;
- (id)clusteringPropertiesForMemoryCategoryName:(id)a3;
- (void)_loadClusteringPropertiesFromMemoryCategories:(id)a3;
@end

@implementation PFStoryAutoEditConfiguration

- ($BFB0C6F6478568252C8128E2BF722AD2)_overallDurationInfoForDurationKind:(SEL)a3
{
  overallDurationTable = self->_overallDurationTable;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [(NSDictionary *)overallDurationTable objectForKeyedSubscript:v6];

  v8 = [v7 objectAtIndexedSubscript:0];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v7 objectAtIndexedSubscript:1];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v7 objectAtIndexedSubscript:2];
  [v14 doubleValue];
  v16 = v15;

  CMTimeMakeWithSeconds(&v19, v10, 600);
  CMTimeMakeWithSeconds(&v18, v13, 600);
  CMTimeMakeWithSeconds(&retstr->var2, v16, 600);
  retstr->var0 = v19;
  retstr->var1 = v18;

  return result;
}

- (id)clusteringPropertiesForMemoryCategoryName:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSDictionary *)self->_clusteringPropertiesByCategory objectForKeyedSubscript:v4];
  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Falling back to default clustering for '%@'", &v8, 0xCu);
    }

    v5 = [(NSDictionary *)self->_clusteringPropertiesByCategory objectForKeyedSubscript:@"default"];
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Configuration file missing default clustering properties", &v8, 2u);
      }

      v5 = [[PFStoryClusteringProperties alloc] initWithAlgorithmName:@"PLDBSCANClustering" algorithmProperties:&unk_1F2AABC80 distanceWeights:&unk_1F2AABCA8];
    }
  }

  v6 = v5;

  return v6;
}

- ($BFB0C6F6478568252C8128E2BF722AD2)maximumDurations
{
  v30 = *MEMORY[0x1E69E9840];
  retstr->var2.var3 = 0;
  *&retstr->var1.var1 = 0u;
  *&retstr->var2.var0 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [&unk_1F2AAB818 countByEnumeratingWithState:&v24 objects:v29 count:16];
  v14 = result;
  if (result)
  {
    v13 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(&unk_1F2AAB818);
        }

        v15 = v6;
        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [&unk_1F2AAB830 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            v11 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(&unk_1F2AAB830);
              }

              v12 = *(*(&v20 + 1) + 8 * v11);
              v18 = 0u;
              memset(v19, 0, 56);
              -[PFStoryAutoEditConfiguration durationInfoForPlaybackStyle:songPace:](self, "durationInfoForPlaybackStyle:songPace:", [v7 integerValue], objc_msgSend(v12, "integerValue"));
              if ((retstr->var0.var2 & 1) == 0 || (*&time1.value = v18, time1.epoch = *v19, time2 = retstr->var0, CMTimeCompare(&time1, &time2) >= 1))
              {
                *&retstr->var0.var0 = v18;
                retstr->var0.var3 = *v19;
              }

              if ((retstr->var1.var2 & 1) == 0 || (time1 = *&v19[8], time2 = retstr->var1, CMTimeCompare(&time1, &time2) >= 1))
              {
                *&retstr->var1.var0 = *&v19[8];
                retstr->var1.var3 = *&v19[24];
              }

              if ((retstr->var2.var2 & 1) == 0 || (time1 = *&v19[32], time2 = retstr->var2, CMTimeCompare(&time1, &time2) >= 1))
              {
                retstr->var2 = *&v19[32];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [&unk_1F2AAB830 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }

        v6 = v15 + 1;
      }

      while ((v15 + 1) != v14);
      result = [&unk_1F2AAB818 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v14 = result;
    }

    while (result);
  }

  return result;
}

- ($BFB0C6F6478568252C8128E2BF722AD2)minimumDurations
{
  v30 = *MEMORY[0x1E69E9840];
  retstr->var2.var3 = 0;
  *&retstr->var1.var1 = 0u;
  *&retstr->var2.var0 = 0u;
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var3 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [&unk_1F2AAB7E8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  v14 = result;
  if (result)
  {
    v13 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(&unk_1F2AAB7E8);
        }

        v15 = v6;
        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [&unk_1F2AAB800 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            v11 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(&unk_1F2AAB800);
              }

              v12 = *(*(&v20 + 1) + 8 * v11);
              v18 = 0u;
              memset(v19, 0, 56);
              -[PFStoryAutoEditConfiguration durationInfoForPlaybackStyle:songPace:](self, "durationInfoForPlaybackStyle:songPace:", [v7 integerValue], objc_msgSend(v12, "integerValue"));
              if ((retstr->var0.var2 & 1) == 0 || (*&time1.value = v18, time1.epoch = *v19, time2 = retstr->var0, CMTimeCompare(&time1, &time2) < 0))
              {
                *&retstr->var0.var0 = v18;
                retstr->var0.var3 = *v19;
              }

              if ((retstr->var1.var2 & 1) == 0 || (time1 = *&v19[8], time2 = retstr->var1, CMTimeCompare(&time1, &time2) < 0))
              {
                *&retstr->var1.var0 = *&v19[8];
                retstr->var1.var3 = *&v19[24];
              }

              if ((retstr->var2.var2 & 1) == 0 || (time1 = *&v19[32], time2 = retstr->var2, CMTimeCompare(&time1, &time2) < 0))
              {
                retstr->var2 = *&v19[32];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [&unk_1F2AAB800 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }

        v6 = v15 + 1;
      }

      while ((v15 + 1) != v14);
      result = [&unk_1F2AAB7E8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v14 = result;
    }

    while (result);
  }

  return result;
}

- (double)outroDurationForSongPace:(int64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      v3 = 2;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Unknown song pace, falling back to medium", v11, 2u);
    }

    else
    {
      v3 = 2;
    }
  }

  outroDurations = self->_outroDurations;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v7 = [(NSDictionary *)outroDurations objectForKeyedSubscript:v6];

  [v7 doubleValue];
  v9 = v8;

  return v9;
}

- (double)durationForTransitionKind:(int64_t)a3 songPace:(int64_t)a4
{
  transitionDurationsByKind = self->_transitionDurationsByKind;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSDictionary *)transitionDurationsByKind objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- ($BFB0C6F6478568252C8128E2BF722AD2)durationInfoForPlaybackStyle:(SEL)a3 songPace:(int64_t)a4
{
  v8 = 0;
  if (a4 > 6)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x2C) != 0)
  {
    v8 = 2;
LABEL_7:
    durationTablesByPlaybackStyle = self->_durationTablesByPlaybackStyle;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v11 = [(NSDictionary *)durationTablesByPlaybackStyle objectForKeyedSubscript:v10];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v13 = [v11 objectForKeyedSubscript:v12];

    v14 = [v13 objectAtIndexedSubscript:0];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v13 objectAtIndexedSubscript:1];
    [v17 doubleValue];
    v19 = v18;

    v20 = [v13 objectAtIndexedSubscript:2];
    [v20 doubleValue];
    v22 = v21;

    CMTimeMakeWithSeconds(&v29, v16, 600);
    CMTimeMakeWithSeconds(&v28, v19, 600);
    CMTimeMakeWithSeconds(&retstr->var2, v22, 600);
    retstr->var0 = v29;
    retstr->var1 = v28;

    return result;
  }

  if (a4 == 4)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (((1 << a4) & 0x41) == 0)
  {
    goto LABEL_7;
  }

  if ((a4 - 1) > 5)
  {
    v24 = @"unsupported";
  }

  else
  {
    v24 = off_1E7B64A58[a4 - 1];
  }

  v24;
  v25 = _PFAssertFailHandler();
  [(PFStoryAutoEditConfiguration *)v25 _loadClusteringPropertiesFromMemoryCategories:v26, v27];
  return result;
}

- (void)_loadClusteringPropertiesFromMemoryCategories:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PFStoryAutoEditConfiguration__loadClusteringPropertiesFromMemoryCategories___block_invoke;
  v10[3] = &unk_1E7B64528;
  v11 = v6;
  v7 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [v7 copy];
  clusteringPropertiesByCategory = self->_clusteringPropertiesByCategory;
  self->_clusteringPropertiesByCategory = v8;
}

void __78__PFStoryAutoEditConfiguration__loadClusteringPropertiesFromMemoryCategories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"clustering"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"algorithm"];
    v9 = [v7 objectForKeyedSubscript:@"algorithmProperties"];
    v10 = [v7 objectForKeyedSubscript:@"distanceWeights"];
    v11 = [[PFStoryClusteringProperties alloc] initWithAlgorithmName:v8 algorithmProperties:v9 distanceWeights:v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Memory category '%@' does not contain clustering properties.", &v12, 0xCu);
  }
}

- (id)_arrayFromTable:(id)a3 count:(unint64_t)a4 nameToValueMap:(id)a5
{
  v7 = a3;
  v8 = a5;
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4]; a4; --a4)
  {
    [i addObject:&unk_1F2AAADF8];
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__PFStoryAutoEditConfiguration__arrayFromTable_count_nameToValueMap___block_invoke;
  v17 = &unk_1E7B64500;
  v18 = v7;
  v19 = i;
  v10 = i;
  v11 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v14];
  v12 = [v10 copy];

  return v12;
}

void __69__PFStoryAutoEditConfiguration__arrayFromTable_count_nameToValueMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [*(a1 + 40) setObject:v7 atIndexedSubscript:{objc_msgSend(v5, "integerValue")}];
  }
}

- (id)_loadData:(id)a3
{
  v190 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"version"];
  v6 = [v5 intValue];

  if (v6 > 4)
  {
    v8 = [v4 objectForKeyedSubscript:@"colorGradeCategories"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F8];
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F8];
    }

    v148 = v11;

    v12 = [v4 objectForKeyedSubscript:@"memoryCategories"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    v127 = v14;

    if (_loadData__onceToken != -1)
    {
      dispatch_once(&_loadData__onceToken, &__block_literal_global_123);
    }

    context = objc_autoreleasePoolPush();
    v15 = PFStoryColorGradeSupportedCategories();
    v144 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v143 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v142 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v141 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v140 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v139 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v138 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v159 = v15;
    v137 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v16 = [v148 objectForKeyedSubscript:@"default"];
    v17 = [v16 objectForKeyedSubscript:@"transitions"];
    if (!v17)
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default transition table", buf, 2u);
      }
    }

    v135 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v17 count:9 nameToValueMap:_loadData__transitionsByName];
    v20 = [v16 objectForKeyedSubscript:@"interMomentTransitions"];
    if (!v20)
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default inter-moment transition table", buf, 2u);
      }
    }

    v155 = v17;
    v134 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v20 count:9 nameToValueMap:_loadData__transitionsByName];
    v23 = [v16 objectForKeyedSubscript:@"portraitTransitions"];
    if (!v23)
    {
      v24 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default portrait transition table", buf, 2u);
      }
    }

    v133 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v23 count:9 nameToValueMap:_loadData__transitionsByName];
    v26 = [v16 objectForKeyedSubscript:@"nUpTransitions"];
    if (!v26)
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default N-up transition table", buf, 2u);
      }
    }

    v136 = v4;
    v132 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v26 count:9 nameToValueMap:_loadData__transitionsByName];
    v29 = [v16 objectForKeyedSubscript:@"interModuleTransitions"];
    v146 = self;
    if (!v29)
    {
      v30 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default inter-module transition table", buf, 2u);
      }
    }

    v131 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v29 count:9 nameToValueMap:_loadData__transitionsByName];
    v32 = [v16 objectForKeyedSubscript:@"motionStyles"];
    if (!v32)
    {
      v33 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default motion style table", buf, 2u);
      }
    }

    v130 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v32 count:4 nameToValueMap:_loadData__motionStylesByName];
    v35 = [v16 objectForKeyedSubscript:@"diptychMotionStyles"];
    if (!v35)
    {
      v36 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default diptych motion style table", buf, 2u);
      }
    }

    v129 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v35 count:4 nameToValueMap:_loadData__motionStylesByName];
    v38 = [v16 objectForKeyedSubscript:@"triptychMotionStyles"];
    if (!v38)
    {
      v39 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit configuration is missing default triptych motion style table", buf, 2u);
      }

      self = v146;
    }

    v128 = [(PFStoryAutoEditConfiguration *)self _arrayFromTable:v38 count:4 nameToValueMap:_loadData__motionStylesByName];

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    obj = v159;
    v149 = [obj countByEnumeratingWithState:&v183 objects:v187 count:16];
    if (v149)
    {
      v147 = *v184;
      do
      {
        for (i = 0; i != v149; ++i)
        {
          if (*v184 != v147)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v183 + 1) + 8 * i);
          v43 = [v148 objectForKeyedSubscript:v42];
          if (v43)
          {
            v44 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v46 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v156 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v151 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v150 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v47 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
            v49 = _loadData__songPacesByName;
            v171[0] = MEMORY[0x1E69E9820];
            v171[1] = 3221225472;
            v171[2] = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_231;
            v171[3] = &unk_1E7B644B0;
            v160 = v43;
            v172 = v43;
            v173 = v146;
            v50 = v44;
            v174 = v50;
            v175 = v42;
            v51 = v45;
            v176 = v51;
            v153 = v46;
            v177 = v153;
            v157 = v156;
            v178 = v157;
            v52 = v151;
            v179 = v52;
            v53 = v150;
            v180 = v53;
            v54 = v47;
            v181 = v54;
            v55 = v48;
            v182 = v55;
            [v49 enumerateKeysAndObjectsUsingBlock:v171];
            if ([v50 count])
            {
              [v144 setObject:v50 forKeyedSubscript:v42];
            }

            if ([v51 count])
            {
              [v143 setObject:v51 forKeyedSubscript:v42];
            }

            if ([v153 count])
            {
              [v142 setObject:v153 forKeyedSubscript:v42];
            }

            if ([v157 count])
            {
              [v141 setObject:v157 forKeyedSubscript:v42];
            }

            if ([v52 count])
            {
              [v140 setObject:v52 forKeyedSubscript:v42];
            }

            if ([v53 count])
            {
              [v139 setObject:v53 forKeyedSubscript:v42];
            }

            if ([v54 count])
            {
              [v138 setObject:v54 forKeyedSubscript:v42];
            }

            if ([v55 count])
            {
              [v137 setObject:v55 forKeyedSubscript:v42];
            }

            v43 = v160;
          }

          else
          {
            v50 = MEMORY[0x1E69E9C10];
            v56 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v189 = v42;
              _os_log_impl(&dword_1B35C1000, v50, OS_LOG_TYPE_INFO, "AutoEdit configuration missing color grade (%@)", buf, 0xCu);
            }
          }
        }

        v149 = [obj countByEnumeratingWithState:&v183 objects:v187 count:16];
      }

      while (v149);
    }

    v57 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v144 defaultFrequencies:v135];
    v58 = v146;
    defaultTransitionTable = v146->_defaultTransitionTable;
    v146->_defaultTransitionTable = v57;

    v60 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v143 defaultFrequencies:v134];
    interMomentTransitionTable = v146->_interMomentTransitionTable;
    v146->_interMomentTransitionTable = v60;

    v62 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v142 defaultFrequencies:v133];
    portraitTransitionTable = v146->_portraitTransitionTable;
    v146->_portraitTransitionTable = v62;

    v64 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v141 defaultFrequencies:v132];
    nUpTransitionTable = v146->_nUpTransitionTable;
    v146->_nUpTransitionTable = v64;

    v66 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v140 defaultFrequencies:v131];
    interModuleTransitionTable = v146->_interModuleTransitionTable;
    v146->_interModuleTransitionTable = v66;

    v68 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v139 defaultFrequencies:v130];
    motionStyleTable = v146->_motionStyleTable;
    v146->_motionStyleTable = v68;

    v70 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v138 defaultFrequencies:v129];
    diptychMotionStyleTable = v146->_diptychMotionStyleTable;
    v146->_diptychMotionStyleTable = v70;

    v72 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v137 defaultFrequencies:v128];
    triptychMotionStyleTable = v146->_triptychMotionStyleTable;
    v146->_triptychMotionStyleTable = v72;

    v4 = v136;
    v74 = [v136 objectForKeyedSubscript:@"durations"];
    v75 = _loadData__playbackStyleMap;
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_236;
    v168[3] = &unk_1E7B64500;
    v76 = v74;
    v169 = v76;
    v170 = v146;
    [v75 enumerateKeysAndObjectsUsingBlock:v168];
    v77 = [v76 objectForKeyedSubscript:@"multipliers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = [v77 objectForKeyedSubscript:@"diptych"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v78 doubleValue];
        v146->_diptychDurationMultiplier = v79;
      }

      v80 = [v77 objectForKeyedSubscript:@"triptych"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v80 doubleValue];
        v146->_triptychDurationMultiplier = v81;
      }

      v82 = [v77 objectForKeyedSubscript:@"initial"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v82 doubleValue];
        v146->_initialDurationMultiplier = v83;
      }

      v84 = [v77 objectForKeyedSubscript:@"chapterBegin"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v84 doubleValue];
        v146->_chapterBeginDurationMultiplier = v85;
      }

      v86 = [v77 objectForKeyedSubscript:@"final"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v86 doubleValue];
        v146->_finalDurationMultiplier = v87;
      }

      v4 = v136;
      v58 = v146;
    }

    v88 = _loadData__overallDurationKindMap;
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_3;
    v165[3] = &unk_1E7B64500;
    v89 = v76;
    v166 = v89;
    v167 = v58;
    [v88 enumerateKeysAndObjectsUsingBlock:v165];
    v90 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v91 = [v89 objectForKeyedSubscript:@"transitions"];
    v92 = _loadData__transitionsByName;
    v162[0] = MEMORY[0x1E69E9820];
    v162[1] = 3221225472;
    v162[2] = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_4;
    v162[3] = &unk_1E7B64500;
    v93 = v91;
    v163 = v93;
    v94 = v90;
    v164 = v94;
    [v92 enumerateKeysAndObjectsUsingBlock:v162];
    v161 = v94;
    v95 = [v94 copy];
    transitionDurationsByKind = v58->_transitionDurationsByKind;
    v58->_transitionDurationsByKind = v95;

    v97 = [v4 objectForKeyedSubscript:@"songPaceTargets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v98 = [v97 objectForKeyedSubscript:@"slowVisualTempo"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v98 doubleValue];
        v146->_slowVisualTempoTarget = v99;
      }

      v100 = [v97 objectForKeyedSubscript:@"mediumVisualTempo"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v100 doubleValue];
        v146->_mediumVisualTempoTarget = v101;
      }

      v102 = [v97 objectForKeyedSubscript:@"fastVisualTempo"];
      objc_opt_class();
      v58 = v146;
      if (objc_opt_isKindOfClass())
      {
        [v102 doubleValue];
        v146->_fastVisualTempoTarget = v103;
      }

      v4 = v136;
    }

    v158 = v97;
    v104 = [v89 objectForKeyedSubscript:@"composability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v105 = [v104 objectForKeyedSubscript:@"duration"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v105 doubleValue];
        v58->_composabilityTargetDurationMultiplier = v106;
      }

      v107 = [v104 objectForKeyedSubscript:@"minimumNUpCount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58->_composabilityMinimumNUpCount = [v107 integerValue];
      }

      v108 = [v104 objectForKeyedSubscript:@"minimum1UpRunCount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58->_composabilityMinimum1UpRunCount = [v108 integerValue];
      }

      v109 = [v104 objectForKeyedSubscript:@"maximumNUpRunCount"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v146->_composabilityMaximumNUpRunCount = [v109 integerValue];
      }

      v110 = [v104 objectForKeyedSubscript:@"threshold"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v110 doubleValue];
        v146->_composabilityScoreThreshold = v111;
      }

      v4 = v136;
      v58 = v146;
    }

    v112 = [v89 objectForKeyedSubscript:@"outro"];
    v113 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v114 = [v112 objectForKeyedSubscript:@"slow"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v113 setObject:v114 forKeyedSubscript:&unk_1F2AAADE0];
      }

      else
      {
        v115 = [(NSDictionary *)v58->_outroDurations objectForKeyedSubscript:&unk_1F2AAADE0];
        [v113 setObject:v115 forKeyedSubscript:&unk_1F2AAADE0];
      }

      v152 = v114;
      v116 = [v112 objectForKeyedSubscript:@"medium"];
      objc_opt_class();
      v154 = v77;
      v117 = v93;
      if (objc_opt_isKindOfClass())
      {
        [v113 setObject:v116 forKeyedSubscript:&unk_1F2AAAE10];
      }

      else
      {
        v118 = [(NSDictionary *)v146->_outroDurations objectForKeyedSubscript:&unk_1F2AAAE10];
        [v113 setObject:v118 forKeyedSubscript:&unk_1F2AAAE10];
      }

      v119 = v89;
      v120 = [v112 objectForKeyedSubscript:@"fast"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v113 setObject:v120 forKeyedSubscript:&unk_1F2AAAE28];
        v121 = v146;
      }

      else
      {
        v121 = v146;
        v122 = [(NSDictionary *)v146->_outroDurations objectForKeyedSubscript:&unk_1F2AAAE28];
        [v113 setObject:v122 forKeyedSubscript:&unk_1F2AAAE28];
      }

      v93 = v117;
      v123 = [v113 copy];
      outroDurations = v121->_outroDurations;
      v121->_outroDurations = v123;

      v4 = v136;
      v58 = v121;
      v89 = v119;
      v77 = v154;
    }

    [(PFStoryAutoEditConfiguration *)v58 _loadClusteringPropertiesFromMemoryCategories:v127];

    objc_autoreleasePoolPop(context);
    v7 = v58;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v189 = v6;
      *&v189[4] = 1024;
      *&v189[6] = 5;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Configuration data version (%d) is below the minimum version (%d)", buf, 0xEu);
    }

    v7 = 0;
  }

  return v7;
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_231(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 objectForKeyedSubscript:@"transitions"];
  v34 = v8;
  if (v8)
  {
    v9 = [*(a1 + 40) _arrayFromTable:v8 count:9 nameToValueMap:_loadData__transitionsByName];
    if ([v9 count])
    {
      [*(a1 + 48) setObject:v9 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 56);
    *buf = 138412546;
    v36 = v10;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit transitions missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v11 = [v7 objectForKeyedSubscript:@"interMomentTransitions"];
  v33 = v11;
  if (v11)
  {
    v12 = [*(a1 + 40) _arrayFromTable:v11 count:9 nameToValueMap:_loadData__transitionsByName];
    if ([v12 count])
    {
      [*(a1 + 64) setObject:v12 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 56);
    *buf = 138412546;
    v36 = v13;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit inter-moment transitions missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v14 = [v7 objectForKeyedSubscript:@"portraitTransitions"];
  v32 = v14;
  if (v14)
  {
    v15 = [*(a1 + 40) _arrayFromTable:v14 count:9 nameToValueMap:_loadData__transitionsByName];
    if ([v15 count])
    {
      [*(a1 + 72) setObject:v15 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 56);
    *buf = 138412546;
    v36 = v16;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit portrait transitions missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v17 = [v7 objectForKeyedSubscript:@"nUpTransitions"];
  if (v17)
  {
    v18 = [*(a1 + 40) _arrayFromTable:v17 count:9 nameToValueMap:_loadData__transitionsByName];
    if ([v18 count])
    {
      [*(a1 + 80) setObject:v18 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 56);
    *buf = 138412546;
    v36 = v19;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit N-up transitions missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v20 = [v7 objectForKeyedSubscript:@"interModuleTransitions"];
  if (v20)
  {
    v21 = [*(a1 + 40) _arrayFromTable:v20 count:9 nameToValueMap:_loadData__transitionsByName];
    if ([v21 count])
    {
      [*(a1 + 88) setObject:v21 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 56);
    *buf = 138412546;
    v36 = v22;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit inter-module transitions missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v23 = [v7 objectForKeyedSubscript:@"motionStyles"];
  if (v23)
  {
    v24 = [*(a1 + 40) _arrayFromTable:v23 count:4 nameToValueMap:_loadData__motionStylesByName];
    if ([v24 count])
    {
      [*(a1 + 96) setObject:v24 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v25 = *(a1 + 56);
    *buf = 138412546;
    v36 = v25;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit motionStyles missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v26 = [v7 objectForKeyedSubscript:@"diptychMotionStyles"];
  if (v26)
  {
    v27 = [*(a1 + 40) _arrayFromTable:v26 count:4 nameToValueMap:_loadData__motionStylesByName];
    if ([v27 count])
    {
      [*(a1 + 104) setObject:v27 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v28 = *(a1 + 56);
    *buf = 138412546;
    v36 = v28;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit diptych motionStyles missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }

  v29 = [v7 objectForKeyedSubscript:@"triptychMotionStyles"];
  if (v29)
  {
    v30 = [*(a1 + 40) _arrayFromTable:v29 count:4 nameToValueMap:_loadData__motionStylesByName];
    if ([v30 count])
    {
      [*(a1 + 112) setObject:v30 forKeyedSubscript:v6];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 56);
    *buf = 138412546;
    v36 = v31;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AutoEdit triptych motionStyles missing for color grade (%@) song pace (%@)", buf, 0x16u);
  }
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_236(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _loadData__paceMap;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_2;
  v10[3] = &unk_1E7B644D8;
  v11 = *(a1 + 32);
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [&unk_1F2AAB7D0 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      LODWORD(v8) = 0;
      v9 = *v18;
      do
      {
        v10 = 0;
        v8 = v8;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(&unk_1F2AAB7D0);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          v12 = [v5 objectForKeyedSubscript:v11];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v14 = [v5 objectForKeyedSubscript:v11];
            v15 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v16];
            [v15 setObject:v14 atIndexedSubscript:v8];
          }

          ++v8;
          ++v10;
        }

        while (v7 != v10);
        v7 = [&unk_1F2AAB7D0 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = _loadData__paceMap;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __42__PFStoryAutoEditConfiguration__loadData___block_invoke_5;
    v14 = &unk_1E7B64500;
    v15 = v6;
    v9 = v7;
    v16 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:&v11];
    if ([v9 count])
    {
      v10 = [v9 copy];
      [*(a1 + 40) setObject:v10 forKeyedSubscript:v5];
    }
  }
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v19 = v5;
  v8 = [v7 objectForKeyedSubscript:v5];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [&unk_1F2AAB7B8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      v11 = v11;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(&unk_1F2AAB7B8);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [v8 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [v8 objectForKeyedSubscript:v14];
          v17 = [*(*(a1 + 48) + 8) objectForKeyedSubscript:*(a1 + 56)];
          v18 = [v17 objectForKeyedSubscript:v6];
          [v18 setObject:v16 atIndexedSubscript:v11];
        }

        ++v11;
        ++v13;
      }

      while (v10 != v13);
      v10 = [&unk_1F2AAB7B8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

void __42__PFStoryAutoEditConfiguration__loadData___block_invoke()
{
  v0 = _loadData__songPacesByName;
  _loadData__songPacesByName = &unk_1F2AABB90;

  v1 = _loadData__transitionsByName;
  _loadData__transitionsByName = &unk_1F2AABBB8;

  v2 = _loadData__motionStylesByName;
  _loadData__motionStylesByName = &unk_1F2AABBE0;

  v3 = _loadData__playbackStyleMap;
  _loadData__playbackStyleMap = &unk_1F2AABC08;

  v4 = _loadData__paceMap;
  _loadData__paceMap = &unk_1F2AABC30;

  v5 = _loadData__overallDurationKindMap;
  _loadData__overallDurationKindMap = &unk_1F2AABC58;
}

- (PFStoryAutoEditConfiguration)initWithConfigurationDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PFStoryAutoEditConfiguration *)self init];
  v6 = [(PFStoryAutoEditConfiguration *)v5 _loadData:v4];

  return v6;
}

- (PFStoryAutoEditConfiguration)initWithConfigurationData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v9 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v9];
    v6 = v9;
    if (v5)
    {
      self = [(PFStoryAutoEditConfiguration *)self initWithConfigurationDictionary:v5];
      v7 = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFStoryAutoEditConfiguration failed to load property list from data: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "PFStoryAutoEditConfiguration cannot load nil data.", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (PFStoryAutoEditConfiguration)initWithConfigurationFileAtURL:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5];
  v7 = [(PFStoryAutoEditConfiguration *)self initWithConfigurationData:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_url, a3);
  }

  return v8;
}

- (PFStoryAutoEditConfiguration)init
{
  v61[3] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PFStoryAutoEditConfiguration;
  v2 = [(PFStoryAutoEditConfiguration *)&v49 init];
  if (v2)
  {
    v3 = [PFStoryConcreteTransitionTable alloc];
    v4 = MEMORY[0x1E695E0F8];
    v5 = [(PFStoryConcreteTransitionTable *)v3 initWithTransitionsByColorGrade:MEMORY[0x1E695E0F8] defaultFrequencies:0];
    v6 = *(v2 + 7);
    *(v2 + 7) = v5;

    v7 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v4 defaultFrequencies:0];
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    v9 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v4 defaultFrequencies:0];
    v10 = *(v2 + 9);
    *(v2 + 9) = v9;

    v11 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v4 defaultFrequencies:0];
    v12 = *(v2 + 10);
    *(v2 + 10) = v11;

    v13 = [[PFStoryConcreteTransitionTable alloc] initWithTransitionsByColorGrade:v4 defaultFrequencies:0];
    v14 = *(v2 + 11);
    *(v2 + 11) = v13;

    v15 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v4 defaultFrequencies:0];
    v16 = *(v2 + 12);
    *(v2 + 12) = v15;

    v17 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v4 defaultFrequencies:0];
    v18 = *(v2 + 13);
    *(v2 + 13) = v17;

    v19 = [[PFStoryConcreteMotionStyleTable alloc] initWithMotionStylesByColorGrade:v4 defaultFrequencies:0];
    v20 = *(v2 + 14);
    *(v2 + 14) = v19;

    v60[0] = &unk_1F2AAADC8;
    v58[0] = &unk_1F2AAADE0;
    v48 = [&unk_1F2AAB698 mutableCopy];
    v59[0] = v48;
    v58[1] = &unk_1F2AAAE10;
    v47 = [&unk_1F2AAB6B0 mutableCopy];
    v59[1] = v47;
    v58[2] = &unk_1F2AAAE28;
    v46 = [&unk_1F2AAB6C8 mutableCopy];
    v59[2] = v46;
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
    v61[0] = v45;
    v60[1] = &unk_1F2AAAE10;
    v56[0] = &unk_1F2AAADE0;
    v21 = [&unk_1F2AAB6E0 mutableCopy];
    v57[0] = v21;
    v56[1] = &unk_1F2AAAE10;
    v22 = [&unk_1F2AAB6F8 mutableCopy];
    v57[1] = v22;
    v56[2] = &unk_1F2AAAE28;
    v23 = [&unk_1F2AAB710 mutableCopy];
    v57[2] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
    v61[1] = v24;
    v60[2] = &unk_1F2AAADE0;
    v54[0] = &unk_1F2AAADE0;
    v25 = [&unk_1F2AAB728 mutableCopy];
    v55[0] = v25;
    v54[1] = &unk_1F2AAAE10;
    v26 = [&unk_1F2AAB740 mutableCopy];
    v55[1] = v26;
    v54[2] = &unk_1F2AAAE28;
    v27 = [&unk_1F2AAB758 mutableCopy];
    v55[2] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v61[2] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    v30 = *(v2 + 1);
    *(v2 + 1) = v29;

    v31 = *(v2 + 3);
    *(v2 + 3) = MEMORY[0x1E695E0F8];

    *(v2 + 120) = xmmword_1B36A1D20;
    __asm { FMOV            V0.2D, #1.5 }

    *(v2 + 136) = _Q0;
    *(v2 + 19) = 0x4000000000000000;
    v52[0] = &unk_1F2AAAE28;
    v37 = [&unk_1F2AAB770 mutableCopy];
    v53[0] = v37;
    v52[1] = &unk_1F2AAAE40;
    v38 = [&unk_1F2AAB788 mutableCopy];
    v53[1] = v38;
    v52[2] = &unk_1F2AAAE58;
    v39 = [&unk_1F2AAB7A0 mutableCopy];
    v53[2] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
    v41 = *(v2 + 4);
    *(v2 + 4) = v40;

    v50[0] = &unk_1F2AAADE0;
    v50[1] = &unk_1F2AAAE10;
    v51[0] = &unk_1F2AABA50;
    v51[1] = &unk_1F2AABA60;
    v50[2] = &unk_1F2AAAE28;
    v51[2] = &unk_1F2AABA70;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v43 = *(v2 + 5);
    *(v2 + 5) = v42;

    *(v2 + 10) = xmmword_1B36A1D30;
    *(v2 + 11) = xmmword_1B36A1D40;
    *(v2 + 12) = vdupq_n_s64(2uLL);
    *(v2 + 26) = 2;
    *(v2 + 27) = 0;
  }

  return v2;
}

+ (id)standardConfiguration
{
  if (standardConfiguration_onceToken != -1)
  {
    dispatch_once(&standardConfiguration_onceToken, &__block_literal_global_154);
  }

  v3 = standardConfiguration_instance;

  return v3;
}

void __53__PFStoryAutoEditConfiguration_standardConfiguration__block_invoke()
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v5 URLForResource:@"PFStoryAutoEditDefaultConfig" withExtension:@"plist"];
  v1 = [[PFStoryAutoEditConfiguration alloc] initWithConfigurationFileAtURL:v0];
  v2 = standardConfiguration_instance;
  standardConfiguration_instance = v1;

  if (standardConfiguration_instance)
  {
  }

  else
  {
    v3 = _PFAssertFailHandler();
    +[(PFStoryAutoEditConfiguration *)v3];
  }
}

@end