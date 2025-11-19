@interface TSPDescriptionComponentReader
- (TSPDescriptionComponentReader)initWithComponent:(id)a3 delegate:(id)a4 readChannel:(id)a5 descriptionGenerator:(id)a6;
- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)a3 stream:(DispatchDataInputStream *)a4 ignoreMessageData:(BOOL)a5 hasAlternateMessages:(BOOL)a6;
- (void)read;
@end

@implementation TSPDescriptionComponentReader

- (TSPDescriptionComponentReader)initWithComponent:(id)a3 delegate:(id)a4 readChannel:(id)a5 descriptionGenerator:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = TSPDescriptionComponentReader;
  v12 = [(TSPComponentReader *)&v15 initWithComponent:a3 finalizeHandlerQueue:0 delegate:a4 readChannel:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_descriptionGenerator, a6);
  }

  return v13;
}

- (void)read
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A50EA8;
  v7[3] = &unk_27A6E4DE8;
  v5 = v4;
  v8 = v5;
  objc_msgSend_readWithIOCompletionQueue_ioCompletion_completionQueue_completion_(self, v6, v3, 0, v3, v7);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)a3 stream:(DispatchDataInputStream *)a4 ignoreMessageData:(BOOL)a5 hasAlternateMessages:(BOOL)a6
{
  if (a4)
  {
    v7 = sub_276A764C4(a3);
    (*(a4->var0 + 4))(a4, v7);
  }

  return 0;
}

@end