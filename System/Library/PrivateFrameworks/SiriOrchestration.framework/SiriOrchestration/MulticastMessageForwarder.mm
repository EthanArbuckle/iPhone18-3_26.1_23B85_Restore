@interface MulticastMessageForwarder
- (BOOL)respondsToSelector:(SEL)selector;
- (MulticastMessageForwarder)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)addReceiver:(id)receiver;
- (void)cleanupNilReceivers;
- (void)forwardInvocation:(id)invocation;
- (void)removeReceiver:(id)receiver;
@end

@implementation MulticastMessageForwarder

- (MulticastMessageForwarder)init
{
  v6.receiver = self;
  v6.super_class = MulticastMessageForwarder;
  v2 = [(MulticastMessageForwarder *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    receivers = v2->_receivers;
    v2->_receivers = array;
  }

  return v2;
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  receivers = [(MulticastMessageForwarder *)self receivers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__MulticastMessageForwarder_addReceiver___block_invoke;
  v10[3] = &unk_279C3EF90;
  v6 = receiverCopy;
  v11 = v6;
  v7 = [receivers indexOfObjectPassingTest:v10];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    receivers2 = [(MulticastMessageForwarder *)self receivers];
    v9 = [[Receiver alloc] initWithWrappedObject:v6];
    [receivers2 addObject:v9];
  }

  [(MulticastMessageForwarder *)self cleanupNilReceivers];
}

BOOL __41__MulticastMessageForwarder_addReceiver___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 wrappedObject];
  *a4 = v6 == *(a1 + 32);

  return *a4;
}

BOOL __44__MulticastMessageForwarder_removeReceiver___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = [a2 wrappedObject];
  *a4 = v6 == *(a1 + 32);

  return *a4;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  receivers = [(MulticastMessageForwarder *)self receivers];
  v4 = [receivers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(receivers);
        }

        wrappedObject = [*(*(&v13 + 1) + 8 * i) wrappedObject];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [receivers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  receivers = [(MulticastMessageForwarder *)self receivers];
  v5 = [receivers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(receivers);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        wrappedObject = [v9 wrappedObject];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          wrappedObject2 = [v9 wrappedObject];
          v12 = [wrappedObject2 methodSignatureForSelector:selector];

          goto LABEL_11;
        }
      }

      v6 = [receivers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __48__MulticastMessageForwarder_cleanupNilReceivers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 wrappedObject];

  if (!v5)
  {
    v6 = *(a1 + 32);

    [v6 addIndex:a3];
  }
}

- (void)cleanupNilReceivers
{
  if (self)
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    receivers = [self receivers];
    OUTLINED_FUNCTION_0();
    v7 = 3221225472;
    v8 = __48__MulticastMessageForwarder_cleanupNilReceivers__block_invoke;
    v9 = &unk_279C3EFB8;
    v4 = indexSet;
    v10 = v4;
    [receivers enumerateObjectsUsingBlock:v6];

    if ([v4 count])
    {
      receivers2 = [self receivers];
      [receivers2 removeObjectsAtIndexes:v4];
    }
  }
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  receivers = [(MulticastMessageForwarder *)self receivers];
  OUTLINED_FUNCTION_0();
  v10 = 3221225472;
  v11 = __44__MulticastMessageForwarder_removeReceiver___block_invoke;
  v12 = &unk_279C3EF90;
  v13 = receiverCopy;
  v6 = receiverCopy;
  v7 = [receivers indexOfObjectPassingTest:v9];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    receivers2 = [(MulticastMessageForwarder *)self receivers];
    [receivers2 removeObjectAtIndex:v7];
  }

  [(MulticastMessageForwarder *)self cleanupNilReceivers];
}

- (void)forwardInvocation:(id)invocation
{
  v31 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  selector = [invocationCopy selector];
  methodSignature = [invocationCopy methodSignature];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  obj = [(MulticastMessageForwarder *)self receivers];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v22 = *v27;
    do
    {
      v10 = 0;
      v23 = v8;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        wrappedObject = [*(*(&v26 + 1) + 8 * v10) wrappedObject];
        if (wrappedObject && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:methodSignature];
          [v12 setSelector:selector];
          if ([methodSignature numberOfArguments] >= 3)
          {
            v13 = 2;
            while (1)
            {
              v14 = [methodSignature getArgumentTypeAtIndex:v13];
              v15 = *v14;
              if (!(!v17 & v16))
              {
                switch(*v14)
                {
                  case '^':
                  case 'd':
                    goto LABEL_19;
                  case '_':
                  case 'a':
                  case 'b':
                  case 'e':
                  case 'g':
                  case 'h':
                    goto LABEL_24;
                  case 'c':
                    LOBYTE(v25) = 0;
                    goto LABEL_21;
                  case 'f':
                  case 'i':
                    LODWORD(v25) = 0;
                    goto LABEL_21;
                  default:
                    JUMPOUT(0);
                }
              }

              if (v15 == 81)
              {
                break;
              }

              if (v15 != 83)
              {
                if (v15 == 113)
                {
                  break;
                }

                if (v15 != 115)
                {
LABEL_24:
                  v18 = MEMORY[0x277CBEAD8];
                  v19 = NSStringFromSelector(selector);
                  [v18 raise:@"UnsupportedArgument" format:{@"Selector %@ has unsupported argument typed %s at index %lu", v19, v14, v13}];

                  goto LABEL_22;
                }
              }

              LOWORD(v25) = 0;
LABEL_21:
              [invocationCopy getArgument:&v25 atIndex:v13];
              [v12 setArgument:&v25 atIndex:v13];
LABEL_22:
              if (++v13 >= [methodSignature numberOfArguments])
              {
                goto LABEL_25;
              }
            }

LABEL_19:
            v25 = 0;
            goto LABEL_21;
          }

LABEL_25:
          [v12 invokeWithTarget:wrappedObject];

          v9 = v22;
          v8 = v23;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  [(MulticastMessageForwarder *)selfCopy cleanupNilReceivers];
  v20 = *MEMORY[0x277D85DE8];
}

@end