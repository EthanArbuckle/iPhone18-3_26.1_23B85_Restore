@interface HVFileErrorCode
+ (void)handleError:(id)error;
@end

@implementation HVFileErrorCode

+ (void)handleError:(id)error
{
  errorCopy = error;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"e%04td:", objc_msgSend(errorCopy, "code")];
  NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVPaths.m" lineNumber:71 description:{@"Terminating in HVPaths due to unrecognized error %@", errorCopy}];
  }

  v7 = NSSelectorFromString(v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __31__HVFileErrorCode_handleError___block_invoke;
  v11[3] = &unk_278969C20;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = MEMORY[0x238381E60](v11);
  [self performSelector:v7 withObject:v9];
}

@end