@interface SPXPCMessage
- (SPXPCMessage)init;
- (SPXPCMessage)initWithName:(id)name;
- (SPXPCMessage)initWithName:(id)name batchSize:(unint64_t)size;
- (SPXPCMessage)initWithName:(id)name connection:(id)connection;
- (id)_createXPCMessage;
- (id)_initWithXPCMessage:(id)message onConnection:(id)connection;
- (id)objectsOfClasses:(id)classes atIndex:(unint64_t)index;
- (id)rootObjectOfClasses:(id)classes;
- (id)rootObjectOfClassesForFeedback:(id)feedback;
- (void)sendReply:(id)reply;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)setRootObject:(id)object;
- (void)setRootObjectForFeedback:(id)feedback;
@end

@implementation SPXPCMessage

- (SPXPCMessage)init
{
  v3.receiver = self;
  v3.super_class = SPXPCMessage;
  result = [(SPXPCMessage *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)_createXPCMessage
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = xpc_string_create([(NSString *)self->_name UTF8String]);
  info = self->_info;
  if (info)
  {
    v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:info format:200 options:0 error:0];
    v6 = v5;
    if (v5)
    {
      v7 = xpc_data_create([v5 bytes], objc_msgSend(v5, "length"));
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *keys = xmmword_1E82F9668;
  v16 = *off_1E82F9678;
  v17 = "kDKMessageFeedbackDataKey";
  v8 = v3;
  values[0] = v8;
  v9 = v7;
  values[1] = v9;
  values[2] = self->_x_Objects;
  values[3] = self->_x_rootObject;
  values[4] = self->_x_feedbackData;
  v10 = xpc_dictionary_create(keys, values, 5uLL);
  for (i = 4; i != -1; --i)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (SPXPCMessage)initWithName:(id)name
{
  nameCopy = name;
  v5 = [(SPXPCMessage *)self init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

- (SPXPCMessage)initWithName:(id)name batchSize:(unint64_t)size
{
  v5 = [(SPXPCMessage *)self initWithName:name];
  if (v5)
  {
    v6 = xpc_array_create(0, 0);
    x_Objects = v5->_x_Objects;
    v5->_x_Objects = v6;

    for (; size; --size)
    {
      v8 = v5->_x_Objects;
      v9 = xpc_null_create();
      xpc_array_append_value(v8, v9);
    }
  }

  return v5;
}

- (SPXPCMessage)initWithName:(id)name connection:(id)connection
{
  v12[1] = *MEMORY[0x1E69E9840];
  connection = [(SPXPCMessage *)self initWithName:name, connection];
  v5 = connection;
  if (connection)
  {
    name = connection->_name;
    if (name)
    {
      v12[0] = connection->_name;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = SPTransactionCreate(v7);
    replyTransaction = v5->_replyTransaction;
    v5->_replyTransaction = v8;

    if (name)
    {
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)_initWithXPCMessage:(id)message onConnection:(id)connection
{
  v35[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  connectionCopy = connection;
  v9 = [(SPXPCMessage *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_receivingConnection, connectionCopy);
    string = xpc_dictionary_get_string(messageCopy, "kDKMessageNameKey");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }

    name = v10->_name;
    v10->_name = string;

    v33 = 0;
    data = xpc_dictionary_get_data(messageCopy, "kDKMessageInfoKey", &v33);
    v14 = 0;
    if (data && v33)
    {
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:data length:v33 freeWhenDone:0];
      if (v15)
      {
        v34 = 0;
        v14 = [MEMORY[0x1E696AE40] propertyListWithData:v15 options:0 format:0 error:&v34];
        v16 = v34;
        if (v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [SPXPCMessage _initWithXPCMessage:onConnection:];
        }
      }

      else
      {
        v16 = 0;
        v14 = 0;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v10->_info, v14);
    }

    v17 = xpc_dictionary_get_value(messageCopy, "kDKMessageObjectGraphKey");
    x_Objects = v10->_x_Objects;
    v10->_x_Objects = v17;

    v19 = xpc_dictionary_get_value(messageCopy, "kDKMessageObjectRootGraphKey");
    x_rootObject = v10->_x_rootObject;
    v10->_x_rootObject = v19;

    v21 = xpc_dictionary_get_value(messageCopy, "kDKMessageFeedbackDataKey");
    x_feedbackData = v10->_x_feedbackData;
    v10->_x_feedbackData = v21;

    objc_storeStrong(&v10->_x_message, message);
    reply = xpc_dictionary_create_reply(messageCopy);
    x_reply = v10->_x_reply;
    v10->_x_reply = reply;

    if (v10->_x_reply)
    {
      v25 = xpc_dictionary_get_remote_connection(messageCopy);
      x_reply_connection = v10->_x_reply_connection;
      v10->_x_reply_connection = v25;

      v27 = v10->_name;
      if (v27)
      {
        v35[0] = v10->_name;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      }

      else
      {
        v28 = 0;
      }

      v29 = SPTransactionCreate(v28);
      replyTransaction = v10->_replyTransaction;
      v10->_replyTransaction = v29;

      if (v27)
      {
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)rootObjectOfClasses:(id)classes
{
  classesCopy = classes;
  x_rootObject = self->_x_rootObject;
  if (!x_rootObject)
  {
    goto LABEL_5;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(x_rootObject);
  if (!bytes_ptr)
  {
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(self->_x_rootObject) freeWhenDone:0];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    bytes_ptr = [v9 decodeObjectOfClasses:classesCopy forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
LABEL_5:
    bytes_ptr = 0;
  }

LABEL_6:

  return bytes_ptr;
}

- (id)objectsOfClasses:(id)classes atIndex:(unint64_t)index
{
  classesCopy = classes;
  length = 0;
  x_Objects = self->_x_Objects;
  if (x_Objects && xpc_array_get_count(x_Objects) > index && (data = xpc_array_get_data(self->_x_Objects, index, &length)) != 0 && (v9 = data, v10 = objc_alloc(MEMORY[0x1E695DEF0]), (v11 = [v10 initWithBytesNoCopy:v9 length:length freeWhenDone:0]) != 0))
  {
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v11 error:0];
    index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%lu", @"kMessageResultSetDataKey", index];
    v15 = [v13 decodeObjectOfClasses:classesCopy forKey:index];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  v6 = MEMORY[0x1E696ACC8];
  objectCopy = object;
  v12 = [[v6 alloc] initRequiringSecureCoding:1];
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%lu", @"kMessageResultSetDataKey", index];
  [v12 encodeObject:objectCopy forKey:index];

  [v12 finishEncoding];
  encodedData = [v12 encodedData];
  os_unfair_lock_lock(&self->_lock);
  x_Objects = self->_x_Objects;
  v11 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  xpc_array_set_value(x_Objects, index, v11);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setRootObject:(id)object
{
  v4 = MEMORY[0x1E696ACC8];
  objectCopy = object;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  [v9 encodeObject:objectCopy forKey:*MEMORY[0x1E696A508]];

  [v9 finishEncoding];
  encodedData = [v9 encodedData];
  v7 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  x_rootObject = self->_x_rootObject;
  self->_x_rootObject = v7;
}

- (id)rootObjectOfClassesForFeedback:(id)feedback
{
  feedbackCopy = feedback;
  x_feedbackData = self->_x_feedbackData;
  if (!x_feedbackData)
  {
    goto LABEL_5;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(x_feedbackData);
  if (!bytes_ptr)
  {
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(self->_x_feedbackData) freeWhenDone:0];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v7 error:0];
    bytes_ptr = [v9 decodeObjectOfClasses:feedbackCopy forKey:*MEMORY[0x1E696A508]];
  }

  else
  {
LABEL_5:
    bytes_ptr = 0;
  }

LABEL_6:

  return bytes_ptr;
}

- (void)setRootObjectForFeedback:(id)feedback
{
  v4 = MEMORY[0x1E696ACC8];
  feedbackCopy = feedback;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  [v9 encodeObject:feedbackCopy forKey:*MEMORY[0x1E696A508]];

  [v9 finishEncoding];
  encodedData = [v9 encodedData];
  v7 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  x_feedbackData = self->_x_feedbackData;
  self->_x_feedbackData = v7;
}

- (void)sendReply:(id)reply
{
  replyCopy = reply;
  v9 = replyCopy;
  if (self->_x_reply && self->_x_reply_connection)
  {
    if (replyCopy)
    {
      currentHandler = [MEMORY[0x1E696AE40] dataWithPropertyList:replyCopy format:200 options:0 error:0];
    }

    else
    {
      currentHandler = 0;
    }

    if ([currentHandler length])
    {
      xpc_dictionary_set_data(self->_x_reply, "kDKMessageInfoKey", [currentHandler bytes], objc_msgSend(currentHandler, "length"));
    }

    xpc_connection_send_message(self->_x_reply_connection, self->_x_reply);
    SPTransactionDone(self->_replyTransaction);
    replyTransaction = self->_replyTransaction;
    self->_replyTransaction = 0;
  }

  else
  {
    v7 = self->_replyTransaction;
    if (v7)
    {
      SPTransactionDone(v7);
      currentHandler = self->_replyTransaction;
      self->_replyTransaction = 0;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SPXPCConnection.m" lineNumber:650 description:@"Trying to send reply where one isn't expected"];
    }
  }
}

- (void)_initWithXPCMessage:onConnection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end