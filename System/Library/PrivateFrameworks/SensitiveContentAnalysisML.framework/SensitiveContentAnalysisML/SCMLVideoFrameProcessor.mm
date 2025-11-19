@interface SCMLVideoFrameProcessor
- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)a3;
- (SCMLVideoFrameProcessor)initWithImageAnalyzer:(id)a3;
- (id)analyze:(id *)a3;
- (id)finalizeAnalysis:(id *)a3;
- (id)popFrame;
- (void)dealloc;
- (void)outputDebugInfoForFrame:(id)a3 isSensitive:(BOOL)a4 sensitivityScore:(id)a5;
- (void)pushFrame:(id)a3;
- (void)reset;
- (void)startAnalysisWithConfig:(id)a3;
@end

@implementation SCMLVideoFrameProcessor

- (SCMLVideoFrameProcessor)initWithImageAnalyzer:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SCMLVideoFrameProcessor;
  v6 = [(SCMLVideoFrameProcessor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageAnalyzer, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    frameQueue = v7->_frameQueue;
    v7->_frameQueue = v8;

    v10 = +[SCMLVideoAnalysisConfiguration defaultConfig];
    config = v7->_config;
    v7->_config = v10;

    v12 = v7->_result;
    v7->_result = 0;

    v7->_frameCount = 0;
    v7->_sensitiveFrameCount = 0;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(SCMLVideoFrameProcessor *)self frameQueue];
  [v3 removeAllObjects];

  v4.receiver = self;
  v4.super_class = SCMLVideoFrameProcessor;
  [(SCMLVideoFrameProcessor *)&v4 dealloc];
}

- (void)reset
{
  v3 = [(SCMLVideoFrameProcessor *)self frameQueue];
  [v3 removeAllObjects];

  [(SCMLVideoFrameProcessor *)self setFrameCount:0];
  [(SCMLVideoFrameProcessor *)self setSensitiveFrameCount:0];

  [(SCMLVideoFrameProcessor *)self setResult:0];
}

- (id)popFrame
{
  v3 = [(SCMLVideoFrameProcessor *)self frameQueue];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SCMLVideoFrameProcessor *)self frameQueue];
    v4 = [v5 objectAtIndexedSubscript:0];

    v6 = [(SCMLVideoFrameProcessor *)self frameQueue];
    [v6 removeObjectAtIndex:0];
  }

  return v4;
}

- (void)pushFrame:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_frameQueue addObject:?];
  [(SCMLVideoFrameProcessor *)self setFrameCount:[(SCMLVideoFrameProcessor *)self frameCount]+ 1];
}

- (void)startAnalysisWithConfig:(id)a3
{
  v5 = a3;
  [(SCMLVideoFrameProcessor *)self reset];
  v4 = v5;
  if (!v5)
  {
    v4 = +[SCMLVideoAnalysisConfiguration defaultConfig];
  }

  v6 = v4;
  [(SCMLVideoFrameProcessor *)self setConfig:?];
}

- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)a3
{
  if (a3)
  {
    v5 = [[SCMLVideoFrame alloc] initWithFrameBuffer:a3 frameIndex:[(SCMLVideoFrameProcessor *)self frameCount]];
    [(SCMLVideoFrameProcessor *)self pushFrame:v5];
  }

  return a3 != 0;
}

- (void)outputDebugInfoForFrame:(id)a3 isSensitive:(BOOL)a4 sensitivityScore:(id)a5
{
  v6 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v8 = a5;
  v9 = +[SCMLLog videoAnalyzer];
  v10 = [(SCMLVideoFrameProcessor *)self config];
  v11 = [v10 debugFramesOutputPathPrefix];

  if (v11)
  {
    v12 = [v28 metaDataInfo];
    v13 = v9;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      [v8 doubleValue];
      if (v6)
      {
        v15 = "Y";
      }

      else
      {
        v15 = "N";
      }

      *buf = 138412802;
      v30 = v12;
      v31 = 2080;
      v32 = v15;
      v33 = 2048;
      v34 = v14;
      _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_INFO, "Frame %@ sensitive=%s score=%.4f", buf, 0x20u);
    }

    v16 = v8;
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(SCMLVideoFrameProcessor *)self config];
    v19 = [v18 debugFramesOutputPathPrefix];
    [v16 doubleValue];
    if (v6)
    {
      v21 = "Y";
    }

    else
    {
      v21 = "N";
    }

    v22 = [v17 stringWithFormat:@"%@%@-%s-%.4f.png", v19, v12, v21, v20];

    v8 = v16;
    v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v22 isDirectory:0];
    [v28 saveToPngWithUrl:v23];

LABEL_13:
    goto LABEL_14;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = v9;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v28 metaDataInfo];
      [v8 doubleValue];
      v27 = "N";
      *buf = 138412802;
      v30 = v25;
      if (v6)
      {
        v27 = "Y";
      }

      v31 = 2080;
      v32 = v27;
      v33 = 2048;
      v34 = v26;
      _os_log_debug_impl(&dword_1B8A3C000, v12, OS_LOG_TYPE_DEBUG, "Frame %@ sensitive=%s score=%.4f", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:

  v24 = *MEMORY[0x1E69E9840];
}

- (id)analyze:(id *)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(SCMLVideoFrameProcessor *)self result];
  v4 = [v3 sensitiveExplicit];

  v5 = [(SCMLVideoFrameProcessor *)self result];
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v38 = [v5 sensitivityScoreExplicit];

    v7 = self;
    v8 = [(SCMLVideoFrameProcessor *)self result];
    v9 = [v8 scoresForLabels];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = 0;
    while (1)
    {
      v12 = [(SCMLVideoFrameProcessor *)v7 sensitiveFrameCount];
      v13 = [(SCMLVideoFrameProcessor *)v7 config];
      if (v12 >= [v13 sensitiveFrameCountThreshold])
      {

        v40 = v11;
        goto LABEL_25;
      }

      v39 = [(SCMLVideoFrameProcessor *)v7 popFrame];

      if (!v39)
      {
        break;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer([v39 frameBuffer]);
      v15 = [(SCMLVideoFrameProcessor *)self imageAnalyzer];
      v16 = [v15 generateClassificationScoresForPixelBuffer:ImageBuffer error:a3];

      v17 = [(SCMLVideoFrameProcessor *)self imageAnalyzer];
      v46 = &unk_1F37519D8;
      v18 = [v17 isSensitive:v16 sensitivityScore:&v46 classificationMode:0];
      v19 = v46;

      [(SCMLVideoFrameProcessor *)self outputDebugInfoForFrame:v39 isSensitive:v18 sensitivityScore:v19];
      if (v18)
      {
        [(SCMLVideoFrameProcessor *)self setSensitiveFrameCount:[(SCMLVideoFrameProcessor *)self sensitiveFrameCount]+ 1];
      }

      v20 = v38;
      if (!v38 || (v20 = v38, [v19 compare:v38] == 1))
      {
        v21 = v19;

        v38 = v21;
      }

      v22 = [v16 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
      v23 = [SCMLAnalysisResult obfuscateLabels:v22];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v25)
      {
        v26 = *v43;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v42 + 1) + 8 * i);
            v29 = [v24 objectForKeyedSubscript:v28];
            v30 = [v10 objectForKeyedSubscript:v28];
            if (!v30 || [v29 compare:v30] == 1)
            {
              [v10 setObject:v29 forKeyedSubscript:v28];
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v25);
      }

      v11 = v39;
      v7 = self;
    }

    v40 = 0;
LABEL_25:
    v31 = [SCMLVideoAnalysisResult alloc];
    v32 = [(SCMLVideoFrameProcessor *)self sensitiveFrameCount];
    v33 = [(SCMLVideoFrameProcessor *)self config];
    v34 = -[SCMLAnalysisResult initWithSensitive:sensitivityScore:scoresForLabels:](v31, "initWithSensitive:sensitivityScore:scoresForLabels:", v32 >= [v33 sensitiveFrameCountThreshold], v38, v10);
    [(SCMLVideoFrameProcessor *)self setResult:v34];

    v6 = [(SCMLVideoFrameProcessor *)self result];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)finalizeAnalysis:(id *)a3
{
  v4 = [(SCMLVideoFrameProcessor *)self result];

  if (v4)
  {
    v5 = [(SCMLVideoFrameProcessor *)self result];
    v6 = [v5 sensitiveExplicit];

    v7 = [(SCMLVideoFrameProcessor *)self frameCount];
    v8 = [(SCMLVideoFrameProcessor *)self config];
    v9 = [v8 sensitiveFrameCountThreshold];

    if (v7 < v9)
    {
      v10 = [(SCMLVideoFrameProcessor *)self frameCount];
      v6 = v10 == [(SCMLVideoFrameProcessor *)self sensitiveFrameCount];
    }

    v11 = [SCMLVideoAnalysisResult alloc];
    v12 = [(SCMLVideoFrameProcessor *)self result];
    v13 = [v12 sensitivityScoreExplicit];
    v14 = [(SCMLVideoFrameProcessor *)self result];
    v15 = [v14 scoresForLabels];
    v16 = [(SCMLAnalysisResult *)v11 initWithSensitive:v6 sensitivityScore:v13 scoresForLabels:v15];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(SCMLVideoFrameProcessor *)self reset];

  return v17;
}

@end