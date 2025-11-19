@interface ICMPPingHandler
- (void)icmpPingProbe:(id)a3 completedIterations:(unint64_t)a4 successfulCount:(unint64_t)a5 withError:(id)a6;
- (void)icmpPingProbe:(id)a3 echoRequestSent:(id)a4 success:(BOOL)a5;
@end

@implementation ICMPPingHandler

- (void)icmpPingProbe:(id)a3 completedIterations:(unint64_t)a4 successfulCount:(unint64_t)a5 withError:(id)a6
{
  v11 = a6;
  v9 = [(ICMPPingHandler *)self replyBlock];

  if (v9)
  {
    v10 = [(ICMPPingHandler *)self replyBlock];
    (v10)[2](v10, a4, a5, v11);
  }
}

- (void)icmpPingProbe:(id)a3 echoRequestSent:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = analyticsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v8;
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
    v15 = v8;
    v10 = "ping failed to send: %@";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end