@interface PPFileErrorCode
+ (void)handleError:(id)a3;
@end

@implementation PPFileErrorCode

+ (void)handleError:(id)a3
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"e%04td:", objc_msgSend(v5, "code")];
  NSSelectorFromString(v6);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PPPaths.m" lineNumber:74 description:{@"Terminating in PPPaths due to unrecognized error %@", v5}];
  }

  v7 = NSSelectorFromString(v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__PPFileErrorCode_handleError___block_invoke;
  aBlock[3] = &unk_2789790A8;
  v12 = v5;
  v8 = v5;
  v9 = _Block_copy(aBlock);
  [a1 performSelector:v7 withObject:v9];
}

@end