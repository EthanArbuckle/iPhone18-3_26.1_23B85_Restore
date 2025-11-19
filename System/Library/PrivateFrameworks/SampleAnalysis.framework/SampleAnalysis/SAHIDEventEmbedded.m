@interface SAHIDEventEmbedded
+ (void)parseKTrace:(ktrace_session *)a3 findingHIDEvents:(id)a4;
- (double)thresholdToGroupSameEventType;
- (id)hidEventTypeString;
@end

@implementation SAHIDEventEmbedded

- (id)hidEventTypeString
{
  v3 = [(SAHIDEvent *)self hidEventType];
  if (v3 > 0x27)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN(%d)", -[SAHIDEvent hidEventType](self, "hidEventType")];
  }

  else
  {
    v4 = *(&off_1E86F8988 + v3);
  }

  return v4;
}

- (double)thresholdToGroupSameEventType
{
  v2 = [(SAHIDEvent *)self hidEventType];
  result = 0.03;
  if (v2 != 11)
  {
    return 0.0;
  }

  return result;
}

+ (void)parseKTrace:(ktrace_session *)a3 findingHIDEvents:(id)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SAHIDEventEmbedded_parseKTrace_findingHIDEvents___block_invoke;
  v5[3] = &unk_1E86F8830;
  v5[4] = a4;
  v5[5] = a3;
  v4 = MEMORY[0x1E12EBE50](v5, a2);
  ktrace_events_range();
}

void __51__SAHIDEventEmbedded_parseKTrace_findingHIDEvents___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = HIDEventTimestampForKTraceEvent(a2);
  if (v4)
  {
    if (*(a2 + 48) == 730267908)
    {
      v5 = *(a2 + 16);
      if (v5)
      {
        v6 = *(a1 + 40);
        v9 = [SATimestamp timestampWithMachAbsTime:v4 fromKtraceSession:?];
        v7 = [SAHIDEventEmbedded hidEventWithHIDEventType:v5 atTimestamp:v9];
        v8 = *(a1 + 40);
        [SAHIDEvent addKTraceEvent:v7 fromSession:a2];
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

@end