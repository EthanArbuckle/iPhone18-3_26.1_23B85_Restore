@interface SKDPipelineTrackingEvent
- (SKDPipelineTrackingEvent)initWithName:(id)a3 event:(id)a4 domain:(id)a5;
- (void)begin;
- (void)end;
@end

@implementation SKDPipelineTrackingEvent

- (SKDPipelineTrackingEvent)initWithName:(id)a3 event:(id)a4 domain:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = SKDPipelineTrackingEvent;
  v9 = [(SKDTrackingEvent *)&v15 initWithName:a3 event:a4 domain:v8];
  if (v9)
  {
    v10 = +[SKDLogManager sharedManager];
    v11 = [v10 logForDomain:v8];
    log = v9->_log;
    v9->_log = v11;

    v13 = [(SKDLog *)v9->_log log];
    v9->_spid = os_signpost_id_generate(v13);

    v9->_startTime = CFAbsoluteTimeGetCurrent();
  }

  return v9;
}

- (void)begin
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SKDTrackingEvent *)self event];
  v4 = [v3 typeMessage];

  v5 = [(SKDTrackingEvent *)self event];
  v6 = [v5 identifier];

  v7 = [(SKDLog *)self->_log log];
  v8 = v7;
  spid = self->_spid;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v8, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Pipeline", "%{public}@ %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SKDTrackingEvent *)self event];
  v4 = [v3 typeMessage];

  v5 = [(SKDTrackingEvent *)self event];
  v6 = [v5 identifier];

  v7 = [(SKDLog *)self->_log log];
  v8 = v7;
  spid = self->_spid;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v8, OS_SIGNPOST_INTERVAL_END, spid, "Pipeline", "%{public}@ %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end