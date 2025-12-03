@interface STReportStatusAndEventOperation
- (STReportStatusAndEventOperation)initWithEvents:(id)events;
- (STReportStatusAndEventOperation)initWithStatus:(id)status;
- (void)main;
@end

@implementation STReportStatusAndEventOperation

- (STReportStatusAndEventOperation)initWithStatus:(id)status
{
  statusCopy = status;
  v9.receiver = self;
  v9.super_class = STReportStatusAndEventOperation;
  v5 = [(STOperation *)&v9 init];
  if (v5)
  {
    v6 = [statusCopy copy];
    statusDict = v5->_statusDict;
    v5->_statusDict = v6;
  }

  return v5;
}

- (STReportStatusAndEventOperation)initWithEvents:(id)events
{
  eventsCopy = events;
  v9.receiver = self;
  v9.super_class = STReportStatusAndEventOperation;
  v5 = [(STOperation *)&v9 init];
  if (v5)
  {
    v6 = [eventsCopy copy];
    eventsDict = v5->_eventsDict;
    v5->_eventsDict = v6;
  }

  return v5;
}

- (void)main
{
  statusDict = [(STReportStatusAndEventOperation *)self statusDict];
  v4 = [statusDict count];

  if (v4)
  {
    statusDict2 = [(STReportStatusAndEventOperation *)self statusDict];
    v6 = [statusDict2 objectForKeyedSubscript:DMFDeclarationStatusMessagesKey];

    v15 = 0;
    v7 = &v15;
    v8 = [STTransportRequestPayload statusPayloadWithMessages:v6 error:&v15];
  }

  else
  {
    eventsDict = [(STReportStatusAndEventOperation *)self eventsDict];
    v6 = [eventsDict objectForKeyedSubscript:DMFDeclarationStatusMessagesKey];

    v14 = 0;
    v7 = &v14;
    v8 = [STTransportRequestPayload eventsPayloadWithMessages:v6 error:&v14];
  }

  v10 = v8;
  v11 = *v7;

  if (v10)
  {
    payloadHandler = [(STReportStatusAndEventOperation *)self payloadHandler];
    v13 = payloadHandler;
    if (payloadHandler)
    {
      (*(payloadHandler + 16))(payloadHandler, v10);
    }

    [(STReportStatusAndEventOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(STReportStatusAndEventOperation *)self endOperationWithError:v11];
  }
}

@end