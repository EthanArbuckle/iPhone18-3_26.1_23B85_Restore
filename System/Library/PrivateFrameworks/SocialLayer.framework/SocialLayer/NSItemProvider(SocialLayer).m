@interface NSItemProvider(SocialLayer)
- (id)sl_representations;
- (uint64_t)sl_hasPossibleCollaborationRepresentation;
- (void)sl_loadRepresentationForTypeIdentifier:()SocialLayer completionHandler:;
@end

@implementation NSItemProvider(SocialLayer)

- (uint64_t)sl_hasPossibleCollaborationRepresentation
{
  v2 = 1;
  v3 = [a1 registeredTypeIdentifiersWithFileOptions:1];
  if (![v3 count])
  {
    if ([a1 canLoadObjectOfClass:objc_opt_class()])
    {
      v2 = 1;
    }

    else
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2050000000;
      v4 = getCKContainerSetupInfoClass_softClass_1;
      v11 = getCKContainerSetupInfoClass_softClass_1;
      if (!getCKContainerSetupInfoClass_softClass_1)
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __getCKContainerSetupInfoClass_block_invoke_1;
        v7[3] = &unk_278925B78;
        v7[4] = &v8;
        __getCKContainerSetupInfoClass_block_invoke_1(v7);
        v4 = v9[3];
      }

      v5 = v4;
      _Block_object_dispose(&v8, 8);
      v2 = [a1 canLoadObjectOfClass:v4];
    }
  }

  return v2;
}

- (id)sl_representations
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [a1 registeredTypeIdentifiers];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412546;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [a1 _representationConformingToType:{v10, v15, v16}];
        if (v11)
        {
          v12 = -[SLShareableContentRepresentation initWithTypeIdentifier:preferredRepresentation:]([SLShareableContentRepresentation alloc], "initWithTypeIdentifier:preferredRepresentation:", v10, [v11 preferredRepresentation]);
          [v3 addObject:v12];
        }

        else
        {
          v12 = SLShareableContentLogHandle();
          if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v21 = v10;
            v22 = 2112;
            v23 = a1;
            _os_log_error_impl(&dword_231772000, &v12->super, OS_LOG_TYPE_ERROR, "Unexpectedly got empty representation for registered type identifier: %@ on item provider: %@", buf, 0x16u);
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)sl_loadRepresentationForTypeIdentifier:()SocialLayer completionHandler:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _representationConformingToType:v6];
  v9 = v8;
  if (v8)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __88__NSItemProvider_SocialLayer__sl_loadRepresentationForTypeIdentifier_completionHandler___block_invoke;
    v17[3] = &unk_2789278F8;
    v18 = v8;
    v19 = v7;
    v10 = [v18 loadWithOptions_v2:0 completionHandler:v17];

    v11 = v18;
  }

  else
  {
    v12 = SLShareableContentLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(NSItemProvider(SocialLayer) *)v6 sl_loadRepresentationForTypeIdentifier:a1 completionHandler:v12];
    }

    v13 = MEMORY[0x277CCA9B8];
    v20 = @"typeIdentifier";
    v21[0] = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v13 errorWithDomain:@"com.apple.SocialLayer.SLItemProviderErrorDomain" code:1 userInfo:v14];

    v15 = [SLShareableContentLoadResult resultWithError:v11];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sl_loadRepresentationForTypeIdentifier:()SocialLayer completionHandler:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 sl_representations];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "Failed to find registered representation for requested type identifier: %@ registered representations: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end