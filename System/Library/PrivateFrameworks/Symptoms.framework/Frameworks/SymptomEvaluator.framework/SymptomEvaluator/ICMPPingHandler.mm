@interface ICMPPingHandler
- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error;
- (void)icmpPingProbe:(id)probe echoRequestSent:(id)sent success:(BOOL)success;
@end

@implementation ICMPPingHandler

- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error
{
  errorCopy = error;
  replyBlock = [(ICMPPingHandler *)self replyBlock];

  if (replyBlock)
  {
    replyBlock2 = [(ICMPPingHandler *)self replyBlock];
    (replyBlock2)[2](replyBlock2, iterations, count, errorCopy);
  }
}

- (void)icmpPingProbe:(id)probe echoRequestSent:(id)sent success:(BOOL)success
{
  successCopy = success;
  v16 = *MEMORY[0x277D85DE8];
  probeCopy = probe;
  sentCopy = sent;
  v9 = analyticsLogHandle;
  if (successCopy)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = sentCopy;
      v10 = "ping sent: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_23255B000, v11, v12, v10, &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = sentCopy;
    v10 = "ping failed to send: %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end