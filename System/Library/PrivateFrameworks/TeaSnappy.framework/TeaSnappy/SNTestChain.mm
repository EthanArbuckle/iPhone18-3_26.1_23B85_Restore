@interface SNTestChain
- (SNTestChain)init;
- (void)addLink:(id)link;
- (void)popAndRunWithCompletion:(id)completion testFailure:(id)failure;
@end

@implementation SNTestChain

- (SNTestChain)init
{
  v6.receiver = self;
  v6.super_class = SNTestChain;
  v2 = [(SNTestChain *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    linkBlocks = v2->_linkBlocks;
    v2->_linkBlocks = v3;
  }

  return v2;
}

- (void)addLink:(id)link
{
  linkCopy = link;
  linkBlocks = [(SNTestChain *)self linkBlocks];
  v5 = _Block_copy(linkCopy);

  [linkBlocks addObject:v5];
}

- (void)popAndRunWithCompletion:(id)completion testFailure:(id)failure
{
  completionCopy = completion;
  failureCopy = failure;
  linkBlocks = [(SNTestChain *)self linkBlocks];
  v9 = [linkBlocks count];

  if (failureCopy || !v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, failureCopy);
    }
  }

  else
  {
    linkBlocks2 = [(SNTestChain *)self linkBlocks];
    v11 = [linkBlocks2 objectAtIndex:0];

    linkBlocks3 = [(SNTestChain *)self linkBlocks];
    [linkBlocks3 removeObjectAtIndex:0];

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __51__SNTestChain_popAndRunWithCompletion_testFailure___block_invoke;
      v17[3] = &unk_279D940C8;
      v17[4] = self;
      v18 = completionCopy;
      (v11)[2](v11, v17);
      v13 = v18;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SNTestChain_popAndRunWithCompletion_testFailure___block_invoke_2;
      block[3] = &unk_279D940F0;
      block[4] = self;
      v15 = v11;
      v16 = completionCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v13 = v15;
    }
  }
}

void __51__SNTestChain_popAndRunWithCompletion_testFailure___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__SNTestChain_popAndRunWithCompletion_testFailure___block_invoke_3;
  v2[3] = &unk_279D940C8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 48);
  (*(v1 + 16))(v1, v2);
}

@end