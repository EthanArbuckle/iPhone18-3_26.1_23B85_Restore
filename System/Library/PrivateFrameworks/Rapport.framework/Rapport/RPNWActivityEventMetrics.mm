@interface RPNWActivityEventMetrics
- (NSString)destination;
- (id)_metricsDictionary;
- (id)destination;
- (unint64_t)eventSize;
- (void)setDestination:(id)a3;
- (void)setEventSize:(unint64_t)a3;
@end

@implementation RPNWActivityEventMetrics

- (id)destination
{
  OUTLINED_FUNCTION_1_3(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_4_0();

  return v6;
}

- (NSString)destination
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = __Block_byref_object_copy__4;
  v6[3] = __Block_byref_object_dispose__4;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__RPNWActivityEventMetrics_destination__block_invoke;
  v3[3] = &unk_1E7C93BE8;
  v4[0] = self;
  v4[1] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v3];
  [(RPNWActivityEventMetrics *)v6 destination:v4];
  return v8;
}

- (unint64_t)eventSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__RPNWActivityEventMetrics_eventSize__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)_metricsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(RPNWActivityEventMetrics *)self destination];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"destination"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[RPNWActivityEventMetrics eventSize](self, "eventSize")}];
  [v3 setObject:v5 forKeyedSubscript:@"bytesOut"];

  return v3;
}

- (void)setDestination:(id)a3
{
  v4 = a3;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  v15 = v5;
  v6 = v5;
  OUTLINED_FUNCTION_5_0(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)setEventSize:(unint64_t)a3
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

@end