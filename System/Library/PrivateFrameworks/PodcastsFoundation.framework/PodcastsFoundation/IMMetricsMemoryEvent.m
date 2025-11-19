@interface IMMetricsMemoryEvent
- (IMMetricsMemoryEvent)init;
- (id)shortDescription;
- (unint64_t)totalBytes;
- (unint64_t)usedBytes;
- (void)setTotalBytes:(unint64_t)a3;
- (void)setUsedBytes:(unint64_t)a3;
@end

@implementation IMMetricsMemoryEvent

- (IMMetricsMemoryEvent)init
{
  v8.receiver = self;
  v8.super_class = IMMetricsMemoryEvent;
  v2 = [(IMAMSMetricsEvent *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(IMAMSMetricsEvent *)v2 setEventType:@"memory"];
    v7 = 0;
    memset(task_info_out, 0, sizeof(task_info_out));
    task_info_outCnt = 40;
    if (!task_info(*MEMORY[0x1E69E9A60], 0x12u, task_info_out, &task_info_outCnt))
    {
      [(IMMetricsMemoryEvent *)v3 setUsedBytes:*&task_info_out[3]];
      [(IMMetricsMemoryEvent *)v3 setTotalBytes:*&task_info_out[1]];
    }
  }

  return v3;
}

- (void)setUsedBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  [(AMSMetricsEvent *)self im_setProperty:v4 forBodyKey:@"usedBytes"];
}

- (unint64_t)usedBytes
{
  v2 = [(IMMetricsMemoryEvent *)self propertyForBodyKey:@"usedBytes"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setTotalBytes:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a3];
  [(AMSMetricsEvent *)self im_setProperty:v4 forBodyKey:@"totalBytes"];
}

- (unint64_t)totalBytes
{
  v2 = [(IMMetricsMemoryEvent *)self propertyForBodyKey:@"totalBytes"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMMetricsMemoryEvent;
  v4 = [(AMSMetricsEvent *)&v7 shortDescription];
  v5 = [v3 stringWithFormat:@"%@, %lu, %lu", v4, -[IMMetricsMemoryEvent usedBytes](self, "usedBytes"), -[IMMetricsMemoryEvent totalBytes](self, "totalBytes")];

  return v5;
}

@end