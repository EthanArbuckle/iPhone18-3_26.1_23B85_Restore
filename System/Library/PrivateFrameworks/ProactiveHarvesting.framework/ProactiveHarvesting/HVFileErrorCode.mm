@interface HVFileErrorCode
+ (void)handleError:(id)a3;
@end

@implementation HVFileErrorCode

+ (void)handleError:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"e%04td:", objc_msgSend(v5, "code")];
  NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"HVPaths.m" lineNumber:71 description:{@"Terminating in HVPaths due to unrecognized error %@", v5}];
  }

  v7 = NSSelectorFromString(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__HVFileErrorCode_handleError___block_invoke;
  v11[3] = &unk_278969C20;
  v12 = v5;
  v8 = v5;
  v9 = MEMORY[0x238381E60](v11);
  [a1 performSelector:v7 withObject:v9];
}

@end