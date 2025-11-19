@interface PXGTungstenRecordingJSONSerializer
- (unint64_t)options;
- (void)recordingSessionWillEndToStream:(id)a3;
- (void)recordingSessionWillStartToStream:(id)a3;
- (void)serializeEvent:(id)a3 toStream:(id)a4;
@end

@implementation PXGTungstenRecordingJSONSerializer

- (unint64_t)options
{
  v3 = [(PXGTungstenRecordingJSONSerializer *)self prettyPrint];
  if ([(PXGTungstenRecordingJSONSerializer *)self sortKeys])
  {
    return v3 | 2;
  }

  else
  {
    return v3;
  }
}

- (void)serializeEvent:(id)a3 toStream:(id)a4
{
  v22[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_eventCount)
  {
    v8 = [@" "];
    [v7 write:objc_msgSend(v8 maxLength:{"bytes"), objc_msgSend(v8, "length")}];

    v9 = self->_eventCount + 1;
  }

  else
  {
    v9 = 1;
  }

  self->_eventCount = v9;
  v10 = [v6 serializable];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(v10)];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "component")}];
  v22[0] = v12;
  v13 = [v6 eventName];
  v22[1] = v13;
  v22[2] = v11;
  v14 = MEMORY[0x277CCABB0];
  [v6 timestamp];
  v15 = [v14 numberWithDouble:?];
  v22[3] = v15;
  v16 = [v6 threadDescription];
  v22[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

  v18 = [v10 createSerializableObject];
  v20[0] = @"info";
  v20[1] = @"event";
  v21[0] = v17;
  v21[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [MEMORY[0x277CCAAA0] writeJSONObject:v19 toStream:v7 options:-[PXGTungstenRecordingJSONSerializer options](self error:{"options"), 0}];
}

- (void)recordingSessionWillEndToStream:(id)a3
{
  v3 = a3;
  v5 = [@"]}" dataUsingEncoding:4];
  v4 = v5;
  [v3 write:objc_msgSend(v5 maxLength:{"bytes"), objc_msgSend(v5, "length")}];
}

- (void)recordingSessionWillStartToStream:(id)a3
{
  v3 = a3;
  v5 = [@"{events : [" dataUsingEncoding:4];
  v4 = v5;
  [v3 write:objc_msgSend(v5 maxLength:{"bytes"), objc_msgSend(v5, "length")}];
}

@end