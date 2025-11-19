@interface STReportStatusAndEventOperation
- (STReportStatusAndEventOperation)initWithEvents:(id)a3;
- (STReportStatusAndEventOperation)initWithStatus:(id)a3;
- (void)main;
@end

@implementation STReportStatusAndEventOperation

- (STReportStatusAndEventOperation)initWithStatus:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STReportStatusAndEventOperation;
  v5 = [(STOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    statusDict = v5->_statusDict;
    v5->_statusDict = v6;
  }

  return v5;
}

- (STReportStatusAndEventOperation)initWithEvents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STReportStatusAndEventOperation;
  v5 = [(STOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    eventsDict = v5->_eventsDict;
    v5->_eventsDict = v6;
  }

  return v5;
}

- (void)main
{
  v3 = [(STReportStatusAndEventOperation *)self statusDict];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(STReportStatusAndEventOperation *)self statusDict];
    v6 = [v5 objectForKeyedSubscript:DMFDeclarationStatusMessagesKey];

    v15 = 0;
    v7 = &v15;
    v8 = [STTransportRequestPayload statusPayloadWithMessages:v6 error:&v15];
  }

  else
  {
    v9 = [(STReportStatusAndEventOperation *)self eventsDict];
    v6 = [v9 objectForKeyedSubscript:DMFDeclarationStatusMessagesKey];

    v14 = 0;
    v7 = &v14;
    v8 = [STTransportRequestPayload eventsPayloadWithMessages:v6 error:&v14];
  }

  v10 = v8;
  v11 = *v7;

  if (v10)
  {
    v12 = [(STReportStatusAndEventOperation *)self payloadHandler];
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v10);
    }

    [(STReportStatusAndEventOperation *)self endOperationWithResultObject:0];
  }

  else
  {
    [(STReportStatusAndEventOperation *)self endOperationWithError:v11];
  }
}

@end