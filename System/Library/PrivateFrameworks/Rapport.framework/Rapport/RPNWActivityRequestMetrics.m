@interface RPNWActivityRequestMetrics
- (NSString)destination;
- (id)_metricsDictionary;
- (unint64_t)replyTime;
- (unint64_t)requestSize;
- (unint64_t)responseSize;
- (void)setDestination:(id)a3;
- (void)setReplyTime:(unint64_t)a3;
- (void)setRequestSize:(unint64_t)a3;
- (void)setResponseSize:(unint64_t)a3;
@end

@implementation RPNWActivityRequestMetrics

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
  v3[2] = __41__RPNWActivityRequestMetrics_destination__block_invoke;
  v3[3] = &unk_1E7C93BE8;
  v4[0] = self;
  v4[1] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v3];
  [(RPNWActivityEventMetrics *)v6 destination:v4];
  return v8;
}

- (unint64_t)requestSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__RPNWActivityRequestMetrics_requestSize__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)responseSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__RPNWActivityRequestMetrics_responseSize__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)replyTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__RPNWActivityRequestMetrics_replyTime__block_invoke;
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
  v4 = [(RPNWActivityRequestMetrics *)self destination];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"destination"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[RPNWActivityRequestMetrics requestSize](self, "requestSize")}];
  [v3 setObject:v5 forKeyedSubscript:@"bytesOut"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[RPNWActivityRequestMetrics responseSize](self, "responseSize")}];
  [v3 setObject:v6 forKeyedSubscript:@"bytesIn"];

  if ([(RPNWActivityRequestMetrics *)self replyTime])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RPNWActivityRequestMetrics replyTime](self, "replyTime")}];
    [v3 setObject:v7 forKeyedSubscript:@"replyTime"];
  }

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

- (void)setRequestSize:(unint64_t)a3
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setResponseSize:(unint64_t)a3
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setReplyTime:(unint64_t)a3
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

@end