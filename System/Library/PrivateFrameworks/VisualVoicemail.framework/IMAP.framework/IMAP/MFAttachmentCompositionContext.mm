@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)a3;
- (NSArray)attachments;
- (void)dealloc;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = +[MFAttachmentManager defaultManager];
        v10 = [v8 url];
        [v9 removeAttachmentForURL:v10];

        v11 = +[MFAttachmentManager defaultManager];
        [v11 clearMetadataForAttachment:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = +[MFAttachmentManager defaultManager];
  v13 = [(MFAttachmentCompositionContext *)self attachmentsBaseURL];
  [v12 removeProviderForBaseURL:v13];

  v15.receiver = self;
  v15.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v15 dealloc];
  v14 = *MEMORY[0x277D85DE8];
}

- (MFAttachmentCompositionContext)init
{
  v3 = [MEMORY[0x277CCACA8] mf_UUID];
  v4 = [(MFAttachmentCompositionContext *)self initWithContextID:v3];

  return v4;
}

- (MFAttachmentCompositionContext)initWithContextID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFAttachmentCompositionContext;
  v6 = [(MFAttachmentCompositionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextID, a3);
  }

  return v7;
}

- (NSArray)attachments
{
  v3 = +[MFAttachmentManager defaultManager];
  v4 = [(MFAttachmentCompositionContext *)self contextID];
  v5 = [v3 attachmentsForContext:v4];

  return v5;
}

@end