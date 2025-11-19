@interface MulticastMessageForwarder
- (BOOL)respondsToSelector:(SEL)a3;
- (MulticastMessageForwarder)init;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addReceiver:(id)a3;
- (void)cleanupNilReceivers;
- (void)forwardInvocation:(id)a3;
- (void)removeReceiver:(id)a3;
@end

@implementation MulticastMessageForwarder

- (MulticastMessageForwarder)init
{
  v6.receiver = self;
  v6.super_class = MulticastMessageForwarder;
  v2 = [(MulticastMessageForwarder *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    receivers = v2->_receivers;
    v2->_receivers = v3;
  }

  return v2;
}

- (void)addReceiver:(id)a3
{
  v4 = a3;
  v5 = [(MulticastMessageForwarder *)self receivers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__MulticastMessageForwarder_addReceiver___block_invoke;
  v10[3] = &unk_279C3EF90;
  v6 = v4;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MulticastMessageForwarder *)self receivers];
    v9 = [[Receiver alloc] initWithWrappedObject:v6];
    [v8 addObject:v9];
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

- (BOOL)respondsToSelector:(SEL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(MulticastMessageForwarder *)self receivers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) wrappedObject];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)methodSignatureForSelector:(SEL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(MulticastMessageForwarder *)self receivers];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 wrappedObject];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v13 = [v9 wrappedObject];
          v12 = [v13 methodSignatureForSelector:a3];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB58] indexSet];
    v3 = [a1 receivers];
    OUTLINED_FUNCTION_0();
    v7 = 3221225472;
    v8 = __48__MulticastMessageForwarder_cleanupNilReceivers__block_invoke;
    v9 = &unk_279C3EFB8;
    v4 = v2;
    v10 = v4;
    [v3 enumerateObjectsUsingBlock:v6];

    if ([v4 count])
    {
      v5 = [a1 receivers];
      [v5 removeObjectsAtIndexes:v4];
    }
  }
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  v5 = [(MulticastMessageForwarder *)self receivers];
  OUTLINED_FUNCTION_0();
  v10 = 3221225472;
  v11 = __44__MulticastMessageForwarder_removeReceiver___block_invoke;
  v12 = &unk_279C3EF90;
  v13 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MulticastMessageForwarder *)self receivers];
    [v8 removeObjectAtIndex:v7];
  }

  [(MulticastMessageForwarder *)self cleanupNilReceivers];
}

- (void)forwardInvocation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 selector];
  v6 = [v4 methodSignature];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self;
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

        v11 = [*(*(&v26 + 1) + 8 * v10) wrappedObject];
        if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v12 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
          [v12 setSelector:v5];
          if ([v6 numberOfArguments] >= 3)
          {
            v13 = 2;
            while (1)
            {
              v14 = [v6 getArgumentTypeAtIndex:v13];
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
                  v19 = NSStringFromSelector(v5);
                  [v18 raise:@"UnsupportedArgument" format:{@"Selector %@ has unsupported argument typed %s at index %lu", v19, v14, v13}];

                  goto LABEL_22;
                }
              }

              LOWORD(v25) = 0;
LABEL_21:
              [v4 getArgument:&v25 atIndex:v13];
              [v12 setArgument:&v25 atIndex:v13];
LABEL_22:
              if (++v13 >= [v6 numberOfArguments])
              {
                goto LABEL_25;
              }
            }

LABEL_19:
            v25 = 0;
            goto LABEL_21;
          }

LABEL_25:
          [v12 invokeWithTarget:v11];

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

  [(MulticastMessageForwarder *)v21 cleanupNilReceivers];
  v20 = *MEMORY[0x277D85DE8];
}

@end