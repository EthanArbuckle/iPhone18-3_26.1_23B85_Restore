@interface CNContactStore(TUConversation)
- (id)tu_contactsByConversationMemberForConversationMembers:()TUConversation keyDescriptors:error:;
- (id)tu_contactsByRemoteConversationMemberForConversations:()TUConversation keyDescriptors:error:;
@end

@implementation CNContactStore(TUConversation)

- (id)tu_contactsByConversationMemberForConversationMembers:()TUConversation keyDescriptors:error:
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v37 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v6;
  v45 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v45)
  {
    v43 = *v60;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v60 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v59 + 1) + 8 * i);
        v10 = MEMORY[0x1E695CD58];
        v11 = [v9 handle];
        v12 = [v10 tu_contactHandlesForHandle:v11];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v56;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v56 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v55 + 1) + 8 * j);
              v19 = [v7 objectForKeyedSubscript:v18];
              if (v19)
              {
                v20 = v19;
                [v19 addObject:v9];
              }

              else
              {
                v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
                [v7 setObject:v20 forKeyedSubscript:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v15);
        }
      }

      v45 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v45);
  }

  v21 = [v7 allKeys];
  v22 = [a1 tu_contactsByContactHandleForContactHandles:v21 keyDescriptors:v37 error:a5];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = [v22 allKeys];
    v44 = [v39 countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v44)
    {
      v42 = *v52;
      do
      {
        v24 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v46 = v24;
          v25 = *(*(&v51 + 1) + 8 * v24);
          v26 = [v7 objectForKeyedSubscript:v25];
          v27 = v26;
          if (v26)
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v28 = [v26 countByEnumeratingWithState:&v47 objects:v63 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v48;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v48 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v47 + 1) + 8 * k);
                  v33 = [v22 objectForKeyedSubscript:v25];
                  [v23 setObject:v33 forKeyedSubscript:v32];
                }

                v29 = [v27 countByEnumeratingWithState:&v47 objects:v63 count:16];
              }

              while (v29);
            }
          }

          v24 = v46 + 1;
        }

        while (v46 + 1 != v44);
        v44 = [v39 countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v44);
    }
  }

  else
  {
    v23 = 0;
  }

  v34 = [v23 copy];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)tu_contactsByRemoteConversationMemberForConversations:()TUConversation keyDescriptors:error:
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v22 + 1) + 8 * i) remoteMembers];
        v17 = [v16 allObjects];
        [v10 addObjectsFromArray:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = [v10 allObjects];
  v19 = [a1 tu_contactsByConversationMemberForConversationMembers:v18 keyDescriptors:v9 error:a5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end