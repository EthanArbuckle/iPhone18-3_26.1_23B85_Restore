@interface UpdateAndReportServices
- (UpdateAndReportServices)initWithServices:(BOOL)services needToReport:(BOOL)report service:(id)service;
- (void)dealloc;
@end

@implementation UpdateAndReportServices

- (UpdateAndReportServices)initWithServices:(BOOL)services needToReport:(BOOL)report service:(id)service
{
  v11.receiver = self;
  v11.super_class = UpdateAndReportServices;
  v8 = [(UpdateAndReportServices *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_update = services;
    v8->_report = report;
    v8->_block = _Block_copy(service);
  }

  return v9;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
  }

  v4.receiver = self;
  v4.super_class = UpdateAndReportServices;
  [(UpdateAndReportServices *)&v4 dealloc];
}

@end