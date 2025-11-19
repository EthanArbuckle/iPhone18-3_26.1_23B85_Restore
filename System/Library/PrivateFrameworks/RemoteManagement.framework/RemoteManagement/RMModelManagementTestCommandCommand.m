@interface RMModelManagementTestCommandCommand
- (void)rm_executeRequestOnBehalfOfManagementChannel:(id)a3 completionHandler:(id)a4;
@end

@implementation RMModelManagementTestCommandCommand

- (void)rm_executeRequestOnBehalfOfManagementChannel:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
  v7 = [v6 isEqualToString:@"Executed"];

  if (v7)
  {
    v18 = @"Echo";
    v8 = [(RMModelManagementTestCommandCommand *)self payloadEcho];
    v19 = v8;
    v9 = 1;
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v11 = [(RMModelManagementTestCommandCommand *)self unknownPayloadKeys];
    v12 = [v11 allObjects];
  }

  else
  {
    v13 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
    v14 = [v13 isEqualToString:@"Failed"];

    v9 = 2;
    if (v14)
    {
      v10 = 0;
      v12 = 0;
    }

    else
    {
      v15 = [(RMModelManagementTestCommandCommand *)self payloadReturnStatus];
      v16 = [v15 isEqualToString:@"Pending"];

      v10 = 0;
      v12 = 0;
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

  v17 = [(RMModelManagementTestCommandCommand *)self commandIdentifier];
  (*(v5 + 2))(v5, v17, v9, v10, 0, v12, 0);
}

@end