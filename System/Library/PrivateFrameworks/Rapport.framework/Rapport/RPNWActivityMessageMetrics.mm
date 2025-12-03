@interface RPNWActivityMessageMetrics
- (NSString)peerDeviceModel;
- (NSString)peerOSVersion;
- (id)_metricsDictionary;
- (int)linkType;
- (int)messageType;
- (unint64_t)messageSize;
- (void)setLinkType:(int)type;
- (void)setMessageSize:(unint64_t)size;
- (void)setMessageType:(int)type;
- (void)setPeerDeviceModel:(id)model;
- (void)setPeerOSVersion:(id *)version;
@end

@implementation RPNWActivityMessageMetrics

- (unint64_t)messageSize
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__RPNWActivityMessageMetrics_messageSize__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)peerOSVersion
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = __Block_byref_object_copy__4;
  v6[3] = __Block_byref_object_dispose__4;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__RPNWActivityMessageMetrics_peerOSVersion__block_invoke;
  v3[3] = &unk_1E7C93BE8;
  v4[0] = self;
  v4[1] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v3];
  [(RPNWActivityEventMetrics *)v6 destination:v4];
  return v8;
}

- (id)_metricsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  messageType = [(RPNWActivityMessageMetrics *)self messageType];
  if (messageType > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1E7C94B40[messageType];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  [v3 setObject:v6 forKeyedSubscript:@"messageType"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[RPNWActivityMessageMetrics messageSize](self, "messageSize")}];
  [v3 setObject:v7 forKeyedSubscript:@"bytesOut"];

  linkType = [(RPNWActivityMessageMetrics *)self linkType];
  if (linkType > 0xB)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1E7C94B60[linkType];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  [v3 setObject:v10 forKeyedSubscript:@"linkType"];

  peerDeviceModel = [(RPNWActivityMessageMetrics *)self peerDeviceModel];
  if (peerDeviceModel)
  {
    [v3 setObject:peerDeviceModel forKeyedSubscript:@"peerModel"];
  }

  peerOSVersion = [(RPNWActivityMessageMetrics *)self peerOSVersion];
  if (peerOSVersion)
  {
    [v3 setObject:peerOSVersion forKeyedSubscript:@"peerOSVersion"];
  }

  return v3;
}

- (int)messageType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__RPNWActivityMessageMetrics_messageType__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (int)linkType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__RPNWActivityMessageMetrics_linkType__block_invoke;
  v4[3] = &unk_1E7C93BE8;
  v4[4] = self;
  v4[5] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSString)peerDeviceModel
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = 0x3032000000;
  v6[2] = __Block_byref_object_copy__4;
  v6[3] = __Block_byref_object_dispose__4;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__RPNWActivityMessageMetrics_peerDeviceModel__block_invoke;
  v3[3] = &unk_1E7C93BE8;
  v4[0] = self;
  v4[1] = &v5;
  [(RPNWActivityMetrics *)self _withLock:v3];
  [(RPNWActivityEventMetrics *)v6 destination:v4];
  return v8;
}

void __47__RPNWActivityMessageMetrics_setPeerOSVersion___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v2 = RPNSOperatingSystemVersionToString(&v5);
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

- (void)setMessageType:(int)type
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setMessageSize:(unint64_t)size
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_2(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setLinkType:(int)type
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_0(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16);
}

- (void)setPeerDeviceModel:(id)model
{
  modelCopy = model;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  v15 = v5;
  v6 = v5;
  OUTLINED_FUNCTION_5_0(v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

- (void)setPeerOSVersion:(id *)version
{
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2();
  v5[2] = __47__RPNWActivityMessageMetrics_setPeerOSVersion___block_invoke;
  v5[3] = &unk_1E7C94B20;
  v5[4] = v3;
  v6 = *v4;
  v7 = *(v4 + 2);
  [(RPNWActivityMetrics *)v3 _withLock:v5];
}

@end