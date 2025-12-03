@interface PPFileErrorCode
+ (void)handleError:(id)error;
@end

@implementation PPFileErrorCode

+ (void)handleError:(id)error
{
  errorCopy = error;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"e%04td:", objc_msgSend(errorCopy, "code")];
  NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPPaths.m" lineNumber:74 description:{@"Terminating in PPPaths due to unrecognized error %@", errorCopy}];
  }

  v7 = NSSelectorFromString(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__PPFileErrorCode_handleError___block_invoke;
  aBlock[3] = &unk_2789790A8;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = _Block_copy(aBlock);
  [self performSelector:v7 withObject:v9];
}

@end