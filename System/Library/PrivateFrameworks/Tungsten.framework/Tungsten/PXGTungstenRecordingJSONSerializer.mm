@interface PXGTungstenRecordingJSONSerializer
- (unint64_t)options;
- (void)recordingSessionWillEndToStream:(id)stream;
- (void)recordingSessionWillStartToStream:(id)stream;
- (void)serializeEvent:(id)event toStream:(id)stream;
@end

@implementation PXGTungstenRecordingJSONSerializer

- (unint64_t)options
{
  prettyPrint = [(PXGTungstenRecordingJSONSerializer *)self prettyPrint];
  if ([(PXGTungstenRecordingJSONSerializer *)self sortKeys])
  {
    return prettyPrint | 2;
  }

  else
  {
    return prettyPrint;
  }
}

- (void)serializeEvent:(id)event toStream:(id)stream
{
  v22[5] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  streamCopy = stream;
  if (self->_eventCount)
  {
    v8 = [@" "];
    [streamCopy write:objc_msgSend(v8 maxLength:{"bytes"), objc_msgSend(v8, "length")}];

    v9 = self->_eventCount + 1;
  }

  else
  {
    v9 = 1;
  }

  self->_eventCount = v9;
  serializable = [eventCopy serializable];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:object_getClassName(serializable)];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(eventCopy, "component")}];
  v22[0] = v12;
  eventName = [eventCopy eventName];
  v22[1] = eventName;
  v22[2] = v11;
  v14 = MEMORY[0x277CCABB0];
  [eventCopy timestamp];
  v15 = [v14 numberWithDouble:?];
  v22[3] = v15;
  threadDescription = [eventCopy threadDescription];
  v22[4] = threadDescription;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

  createSerializableObject = [serializable createSerializableObject];
  v20[0] = @"info";
  v20[1] = @"event";
  v21[0] = v17;
  v21[1] = createSerializableObject;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [MEMORY[0x277CCAAA0] writeJSONObject:v19 toStream:streamCopy options:-[PXGTungstenRecordingJSONSerializer options](self error:{"options"), 0}];
}

- (void)recordingSessionWillEndToStream:(id)stream
{
  streamCopy = stream;
  v5 = [@"]}" dataUsingEncoding:4];
  v4 = v5;
  [streamCopy write:objc_msgSend(v5 maxLength:{"bytes"), objc_msgSend(v5, "length")}];
}

- (void)recordingSessionWillStartToStream:(id)stream
{
  streamCopy = stream;
  v5 = [@"{events : [" dataUsingEncoding:4];
  v4 = v5;
  [streamCopy write:objc_msgSend(v5 maxLength:{"bytes"), objc_msgSend(v5, "length")}];
}

@end