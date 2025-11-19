@interface SMConversation
@end

@implementation SMConversation

void __70__SMConversation_RTCoreDataTransformable__createWithSMConversationMO___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) receiverHandles];
  v4 = [v2 initWithCapacity:{objc_msgSend(v3, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [*(a1 + 32) receiverHandles];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277D4AAE8] createWithManagedObject:*(*(&v18 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc(MEMORY[0x277D4AA98]);
  v12 = [v4 copy];
  v13 = [*(a1 + 32) identifier];
  v14 = [*(a1 + 32) displayName];
  v15 = [v11 initWithReceiverHandles:v12 identifier:v13 displayName:v14];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

@end