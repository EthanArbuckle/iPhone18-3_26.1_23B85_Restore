@interface RMModelManagementTestCommandCommand
- (void)rm_executeRequestOnBehalfOfManagementChannel:(id)channel completionHandler:(id)handler;
@end

@implementation RMModelManagementTestCommandCommand

- (void)rm_executeRequestOnBehalfOfManagementChannel:(id)channel completionHandler:(id)handler
{
  handlerCopy = handler;
  payloadReturnStatus = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
  v7 = [payloadReturnStatus isEqualToString:@"Executed"];

  if (v7)
  {
    v18 = @"Echo";
    payloadEcho = [(RMModelManagementTestCommandCommand *)self payloadEcho];
    v19 = payloadEcho;
    v9 = 1;
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    unknownPayloadKeys = [(RMModelManagementTestCommandCommand *)self unknownPayloadKeys];
    allObjects = [unknownPayloadKeys allObjects];
  }

  else
  {
    payloadReturnStatus2 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
    v14 = [payloadReturnStatus2 isEqualToString:@"Failed"];

    v9 = 2;
    if (v14)
    {
      v10 = 0;
      allObjects = 0;
    }

    else
    {
      payloadReturnStatus3 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
      v16 = [payloadReturnStatus3 isEqualToString:@"Pending"];

      v10 = 0;
      allObjects = 0;
      if (v16)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  commandIdentifier = [(RMModelManagementTestCommandCommand *)self commandIdentifier];
  (*(handlerCopy + 2))(handlerCopy, commandIdentifier, v9, v10, 0, allObjects, 0);
}

@end