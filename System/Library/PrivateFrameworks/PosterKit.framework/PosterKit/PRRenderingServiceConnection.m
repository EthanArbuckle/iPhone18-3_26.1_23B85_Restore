@interface PRRenderingServiceConnection
- (BOOL)isEqual:(id)a3;
- (PRRenderingServiceConnection)initWithConnection:(id)a3 pid:(int)a4;
- (PRRenderingServiceServerToClientInterface)remoteTarget;
- (unint64_t)hash;
- (void)_updateSendingStateBasedOnAcks;
- (void)acknowledgeMotionEvents;
- (void)deviceMotionEventGenerationDidStop;
- (void)deviceMotionEventGenerationWillStart;
- (void)sendMotionEvent:(id)a3;
- (void)updateMotionWithRotation:(_OWORD *)a3;
@end

@implementation PRRenderingServiceConnection

- (PRRenderingServiceConnection)initWithConnection:(id)a3 pid:(int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PRRenderingServiceConnection;
  v8 = [(PRRenderingServiceConnection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_pid = a4;
    v10 = [MEMORY[0x1E695DF00] date];
    lastAckTime = v9->_lastAckTime;
    v9->_lastAckTime = v10;

    v9->_shouldStopSending = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRRenderingServiceConnection *)self connection];
      v9 = [(PRRenderingServiceConnection *)v7 connection];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v11 = [(PRRenderingServiceConnection *)self pid];
        v12 = v11 == [(PRRenderingServiceConnection *)v7 pid];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_connection];
  v5 = [v3 appendInteger:self->_pid];
  v6 = [v3 hash];

  return v6;
}

- (PRRenderingServiceServerToClientInterface)remoteTarget
{
  remoteTarget = self->_remoteTarget;
  if (!remoteTarget)
  {
    v4 = [(BSServiceConnection *)self->_connection remoteTarget];
    v5 = self->_remoteTarget;
    self->_remoteTarget = v4;

    remoteTarget = self->_remoteTarget;
  }

  return remoteTarget;
}

- (void)deviceMotionEventGenerationWillStart
{
  if ([(BSServiceConnection *)self->_connection isValid])
  {
    self->_motionEventsSentSinceLastAck = 0;
    v3 = [MEMORY[0x1E695DF00] date];
    lastAckTime = self->_lastAckTime;
    self->_lastAckTime = v3;

    self->_shouldStopSending = 0;
    v5 = [(PRRenderingServiceConnection *)self remoteTarget];
    [v5 deviceMotionEventGenerationWillStart];
  }
}

- (void)deviceMotionEventGenerationDidStop
{
  if ([(BSServiceConnection *)self->_connection isValid])
  {
    v3 = [(PRRenderingServiceConnection *)self remoteTarget];
    [v3 deviceMotionEventGenerationDidStop];

    self->_motionEventsSentSinceLastAck = 0;
    self->_shouldStopSending = 0;
  }
}

- (void)updateMotionWithRotation:(_OWORD *)a3
{
  v5 = objc_opt_new();
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  [v5 setRotation:v7];
  [a1 sendMotionEvent:v5];
}

- (void)sendMotionEvent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(BSServiceConnection *)self->_connection isValid])
  {
    [(PRRenderingServiceConnection *)self _updateSendingStateBasedOnAcks];
    if (self->_shouldStopSending)
    {
      v5 = PRLogRenderingService();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [PRRenderingServiceConnection sendMotionEvent:];
      }
    }

    else
    {
      v6 = [(PRRenderingServiceConnection *)self remoteTarget];
      [v6 sendMotionEvent:v4];

      ++self->_motionEventsSentSinceLastAck;
      v5 = PRLogRenderingService();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        connection = self->_connection;
        pid = self->_pid;
        motionEventsSentSinceLastAck = self->_motionEventsSentSinceLastAck;
        v10 = 134218496;
        v11 = connection;
        v12 = 1024;
        v13 = pid;
        v14 = 2048;
        v15 = motionEventsSentSinceLastAck;
        _os_log_debug_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEBUG, "PRRenderingServiceConnection: connection <%p> pid: %i sent motion event (since last ack: %lu)", &v10, 0x1Cu);
      }
    }
  }
}

- (void)acknowledgeMotionEvents
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&dword_1A8AA7000, v0, OS_LOG_TYPE_DEBUG, "PRRenderingServiceConnection: connection <%p> pid: %i received ack", v1, 0x12u);
}

- (void)_updateSendingStateBasedOnAcks
{
  if (self->_motionEventsSentSinceLastAck > 0x32 || ([MEMORY[0x1E695DF00] date], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", self->_lastAckTime), v5 = v4, v3, v5 > 3.0) && self->_motionEventsSentSinceLastAck >= 0xB)
  {
    self->_shouldStopSending = 1;
  }
}

- (void)sendMotionEvent:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&dword_1A8AA7000, v0, OS_LOG_TYPE_DEBUG, "PRRenderingServiceConnection: connection <%p> pid: %i dropping motion event - no acks received", v1, 0x12u);
}

@end