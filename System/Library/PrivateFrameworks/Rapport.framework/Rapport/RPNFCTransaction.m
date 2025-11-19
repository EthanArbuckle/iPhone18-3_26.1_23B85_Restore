@interface RPNFCTransaction
- (NSString)description;
- (RPNFCTransaction)initWithCoder:(id)a3;
- (RPNFCTransaction)initWithRole:(int64_t)a3;
- (RPNFCTransactionDelegate)delegate;
- (void)encodeWithCoder:(id)a3;
- (void)setError:(id)a3;
- (void)setRemoteAuthenticationMessage:(id)a3;
- (void)setRemoteIdentity:(id)a3;
- (void)setRemoteValidationMessage:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setTapEvent:(id)a3;
@end

@implementation RPNFCTransaction

- (RPNFCTransaction)initWithRole:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = RPNFCTransaction;
  v4 = [(RPNFCTransaction *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v4->_identifier;
    v4->_identifier = v5;

    v4->_role = a3;
    v7 = [MEMORY[0x1E695DF00] now];
    connectionDate = v4->_connectionDate;
    v4->_connectionDate = v7;

    v4->_state = 0;
  }

  return v4;
}

- (void)setError:(id)a3
{
  v12 = a3;
  v5 = [(RPNFCTransaction *)self state]== 2;
  v6 = v12;
  if (!v5)
  {
    error = self->_error;
    v8 = v12;
    v9 = error;
    v10 = v9;
    if (v9 == v8)
    {
    }

    else
    {
      if ((v8 != 0) != (v9 == 0))
      {
        v11 = [(NSError *)v8 isEqual:v9];

        v6 = v12;
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_error, a3);
      [(RPNFCTransaction *)self setState:1];
    }

    v6 = v12;
  }

LABEL_10:
}

- (void)setTapEvent:(id)a3
{
  v5 = a3;
  tapEvent = self->_tapEvent;
  v10 = v5;
  v7 = tapEvent;
  if (v7 == v10)
  {

LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if ((v10 != 0) == (v7 == 0))
  {

    v9 = v10;
    goto LABEL_7;
  }

  v8 = [(RPNearFieldTapEvent *)v10 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    if (!v9)
    {
      [RPNFCTransaction setTapEvent:];
    }

    if (self->_tapEvent)
    {
      [RPNFCTransaction setTapEvent:];
    }

    objc_storeStrong(&self->_tapEvent, a3);
    [(RPNFCTransaction *)self setState:2];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setRemoteAuthenticationMessage:(id)a3
{
  v4 = a3;
  p_remoteAuthenticationMessage = &self->_remoteAuthenticationMessage;
  remoteAuthenticationMessage = self->_remoteAuthenticationMessage;
  v12 = v4;
  v7 = remoteAuthenticationMessage;
  if (v7 == v12)
  {

    v10 = v12;
LABEL_12:

    v9 = v12;
    goto LABEL_13;
  }

  if ((v12 != 0) == (v7 == 0))
  {

    v9 = v12;
    goto LABEL_7;
  }

  v8 = [(RPTransportServiceHandoverMessage *)v12 isEqual:v7];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    if (!v9)
    {
      [RPNFCTransaction setRemoteAuthenticationMessage:];
      v9 = v12;
    }

    if (*p_remoteAuthenticationMessage)
    {
      [RPNFCTransaction setRemoteAuthenticationMessage:];
      v9 = v12;
    }

    v11 = v9;
    v10 = *p_remoteAuthenticationMessage;
    *p_remoteAuthenticationMessage = v11;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setRemoteValidationMessage:(id)a3
{
  v4 = a3;
  p_remoteValidationMessage = &self->_remoteValidationMessage;
  remoteValidationMessage = self->_remoteValidationMessage;
  v12 = v4;
  v7 = remoteValidationMessage;
  if (v7 == v12)
  {

    v10 = v12;
LABEL_12:

    v9 = v12;
    goto LABEL_13;
  }

  if ((v12 != 0) == (v7 == 0))
  {

    v9 = v12;
    goto LABEL_7;
  }

  v8 = [(RPTransportServiceHandoverMessage *)v12 isEqual:v7];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    if (!v9)
    {
      [RPNFCTransaction setRemoteValidationMessage:];
      v9 = v12;
    }

    if (*p_remoteValidationMessage)
    {
      [RPNFCTransaction setRemoteValidationMessage:];
      v9 = v12;
    }

    v11 = v9;
    v10 = *p_remoteValidationMessage;
    *p_remoteValidationMessage = v11;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(RPNFCTransaction *)self delegate];
    [v5 didChangeStateForTransaction:self];
  }
}

- (void)setRemoteIdentity:(id)a3
{
  v4 = a3;
  p_remoteIdentity = &self->_remoteIdentity;
  remoteIdentity = self->_remoteIdentity;
  v12 = v4;
  v7 = remoteIdentity;
  if (v7 == v12)
  {

    v10 = v12;
LABEL_12:

    v9 = v12;
    goto LABEL_13;
  }

  if ((v12 != 0) == (v7 == 0))
  {

    v9 = v12;
    goto LABEL_7;
  }

  v8 = [(RPIdentity *)v12 isEqual:v7];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    if (!v9)
    {
      [RPNFCTransaction setRemoteIdentity:];
      v9 = v12;
    }

    if (*p_remoteIdentity)
    {
      [RPNFCTransaction setRemoteIdentity:];
      v9 = v12;
    }

    v11 = v9;
    v10 = *p_remoteIdentity;
    *p_remoteIdentity = v11;
    goto LABEL_12;
  }

LABEL_13:
}

- (RPNFCTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RPNFCTransaction *)self init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
    if ([v6 containsValueForKey:@"state"])
    {
      v5->_state = [v6 decodeIntegerForKey:@"state"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = v6;
    if ([v7 containsValueForKey:@"role"])
    {
      v5->_role = [v7 decodeIntegerForKey:@"role"];
    }

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v11 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
    v4 = v11;
  }

  state = self->_state;
  if (state)
  {
    [v11 encodeInteger:state forKey:@"state"];
    v4 = v11;
  }

  connectionDate = self->_connectionDate;
  if (connectionDate)
  {
    [v11 encodeObject:connectionDate forKey:@"connectionDate"];
    v4 = v11;
  }

  tapEvent = self->_tapEvent;
  if (tapEvent)
  {
    [v11 encodeObject:tapEvent forKey:@"tapEvent"];
    v4 = v11;
  }

  error = self->_error;
  if (error)
  {
    [v11 encodeObject:error forKey:@"error"];
    v4 = v11;
  }

  role = self->_role;
  if (role)
  {
    [v11 encodeInteger:role forKey:@"role"];
    v4 = v11;
  }
}

- (NSString)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    v30 = v3;
    v22 = identifier;
    NSAppendPrintF();
    v6 = v30;

    v4 = v6;
  }

  v23 = RPNearFieldTransactionStateDescription(self->_state);
  NSAppendPrintF();
  v7 = v4;

  connectionDate = self->_connectionDate;
  if (connectionDate)
  {
    v24 = connectionDate;
    NSAppendPrintF();
    v9 = v7;

    v7 = v9;
  }

  tapEvent = self->_tapEvent;
  if (tapEvent)
  {
    v25 = tapEvent;
    NSAppendPrintF();
    v11 = v7;

    v7 = v11;
  }

  remoteIdentity = self->_remoteIdentity;
  if (remoteIdentity)
  {
    v26 = remoteIdentity;
    NSAppendPrintF();
    v13 = v7;

    v7 = v13;
  }

  remoteAuthenticationMessage = self->_remoteAuthenticationMessage;
  if (remoteAuthenticationMessage)
  {
    v27 = remoteAuthenticationMessage;
    NSAppendPrintF();
    v15 = v7;

    v7 = v15;
  }

  remoteValidationMessage = self->_remoteValidationMessage;
  if (remoteValidationMessage)
  {
    v28 = remoteValidationMessage;
    NSAppendPrintF();
    v17 = v7;

    v7 = v17;
  }

  error = self->_error;
  if (error)
  {
    v29 = error;
    NSAppendPrintF();
    v19 = v7;

    v7 = v19;
  }

  self->_role;
  NSAppendPrintF();
  v20 = v7;

  return v7;
}

- (RPNFCTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setTapEvent:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)setTapEvent:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setRemoteAuthenticationMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)setRemoteAuthenticationMessage:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setRemoteValidationMessage:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)setRemoteValidationMessage:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setRemoteIdentity:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:0 object:? file:? lineNumber:? description:?];
}

- (void)setRemoteIdentity:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x1E696AAA8] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end