@interface TUCaptionsClient
- (TUCaptionsClient)initWithDelegate:(id)a3 call:(id)a4;
- (void)callCenter:(id)a3 receivedCaptions:(id)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
- (void)configureCaptions:(id)a3;
@end

@implementation TUCaptionsClient

- (TUCaptionsClient)initWithDelegate:(id)a3 call:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = TUCaptionsClient;
  v9 = [(TUCaptionsClient *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a3);
  }

  if ([v8 answeringMachineStreamToken])
  {
    v11 = [objc_alloc(CUTWeakLinkClass()) initWithDelegate:v10 streamToken:{objc_msgSend(v8, "answeringMachineStreamToken")}];
    avcCaptionsClient = v10->_avcCaptionsClient;
    v10->_avcCaptionsClient = v11;
  }

  else
  {
    avcCaptionsClient = +[TUCallCenter sharedInstance];
    v13 = +[TUCallCenter sharedInstance];
    v14 = [v13 queue];
    [avcCaptionsClient addDelegate:v10 queue:v14];
  }

  return v10;
}

- (void)configureCaptions:(id)a3
{
  v4 = a3;
  v5 = [(TUCaptionsClient *)self avcCaptionsClient];
  [v5 configureCaptions:v4];
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v10 = a4;
  v6 = [(TUCaptionsClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [[TUCaptionsResult alloc] initWithAVCCaptionsResult:v10];
    v9 = [(TUCaptionsClient *)self delegate];
    [v9 captionsClient:self didUpdateCaptions:v8];
  }
}

- (void)callCenter:(id)a3 receivedCaptions:(id)a4
{
  v8 = a4;
  v5 = [(TUCaptionsClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TUCaptionsClient *)self delegate];
    [v7 captionsClient:self didUpdateCaptions:v8];
  }
}

- (void)captionsServerDidDie:(id)a3
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [TUCaptionsClient captionsServerDidDie:v3];
  }
}

@end