@interface PRRenderingServiceConnection
- (BOOL)isEqual:(id)equal;
- (PRRenderingServiceConnection)initWithConnection:(id)connection pid:(int)pid;
- (PRRenderingServiceServerToClientInterface)remoteTarget;
- (unint64_t)hash;
- (void)_updateSendingStateBasedOnAcks;
- (void)acknowledgeMotionEvents;
- (void)deviceMotionEventGenerationDidStop;
- (void)deviceMotionEventGenerationWillStart;
- (void)sendMotionEvent:(id)event;
- (void)updateMotionWithRotation:(_OWORD *)rotation;
@end

@implementation PRRenderingServiceConnection

- (PRRenderingServiceConnection)initWithConnection:(id)connection pid:(int)pid
{
  connectionCopy = connection;
  v13.receiver = self;
  v13.super_class = PRRenderingServiceConnection;
  v8 = [(PRRenderingServiceConnection *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_pid = pid;
    date = [MEMORY[0x1E695DF00] date];
    lastAckTime = v9->_lastAckTime;
    v9->_lastAckTime = date;

    v9->_shouldStopSending = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      connection = [(PRRenderingServiceConnection *)self connection];
      connection2 = [(PRRenderingServiceConnection *)v7 connection];
      v10 = [connection isEqual:connection2];

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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_connection];
  v5 = [builder appendInteger:self->_pid];
  v6 = [builder hash];

  return v6;
}

- (PRRenderingServiceServerToClientInterface)remoteTarget
{
  remoteTarget = self->_remoteTarget;
  if (!remoteTarget)
  {
    remoteTarget = [(BSServiceConnection *)self->_connection remoteTarget];
    v5 = self->_remoteTarget;
    self->_remoteTarget = remoteTarget;

    remoteTarget = self->_remoteTarget;
  }

  return remoteTarget;
}

- (void)deviceMotionEventGenerationWillStart
{
  if ([(BSServiceConnection *)self->_connection isValid])
  {
    self->_motionEventsSentSinceLastAck = 0;
    date = [MEMORY[0x1E695DF00] date];
    lastAckTime = self->_lastAckTime;
    self->_lastAckTime = date;

    self->_shouldStopSending = 0;
    remoteTarget = [(PRRenderingServiceConnection *)self remoteTarget];
    [remoteTarget deviceMotionEventGenerationWillStart];
  }
}

- (void)deviceMotionEventGenerationDidStop
{
  if ([(BSServiceConnection *)self->_connection isValid])
  {
    remoteTarget = [(PRRenderingServiceConnection *)self remoteTarget];
    [remoteTarget deviceMotionEventGenerationDidStop];

    self->_motionEventsSentSinceLastAck = 0;
    self->_shouldStopSending = 0;
  }
}

- (void)updateMotionWithRotation:(_OWORD *)rotation
{
  v5 = objc_opt_new();
  v6 = rotation[1];
  v7[0] = *rotation;
  v7[1] = v6;
  [v5 setRotation:v7];
  [self sendMotionEvent:v5];
}

- (void)sendMotionEvent:(id)event
{
  v16 = *MEMORY[0x1E69E9840];
  eventCopy = event;
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
      remoteTarget = [(PRRenderingServiceConnection *)self remoteTarget];
      [remoteTarget sendMotionEvent:eventCopy];

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