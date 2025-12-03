@interface DDIDSIncomingMessage
- (DDIDSIncomingMessage)initWithIncomingDictionary:(id)dictionary destination:(id)destination;
- (NSString)description;
@end

@implementation DDIDSIncomingMessage

- (DDIDSIncomingMessage)initWithIncomingDictionary:(id)dictionary destination:(id)destination
{
  dictionaryCopy = dictionary;
  destinationCopy = destination;
  v22.receiver = self;
  v22.super_class = DDIDSIncomingMessage;
  v8 = [(DDIDSIncomingMessage *)&v22 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"messageName"];

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"messageName"];
    message = v8->_message;
    v8->_message = v10;

    objc_storeStrong(&v8->_destination, destination);
    v12 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (v12)
    {
      v13 = v12;
      v14 = +[DAIDSMessengerProxy allowedDataClasses];
      v21 = 0;
      v15 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v14 fromData:v13 error:&v21];
      v16 = v21;
      data = v8->_data;
      v8->_data = v15;

      if (v16)
      {
        v18 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10000DA38(dictionaryCopy, v16, v18);
        }
      }

      v19 = v8->_data;

      if (!v19)
      {
LABEL_9:

        v8 = 0;
      }
    }
  }

  return v8;
}

- (NSString)description
{
  message = [(DDIDSIncomingMessage *)self message];
  data = [(DDIDSIncomingMessage *)self data];
  v5 = [NSString stringWithFormat:@"message: %@ data: %@", message, data];;

  return v5;
}

@end