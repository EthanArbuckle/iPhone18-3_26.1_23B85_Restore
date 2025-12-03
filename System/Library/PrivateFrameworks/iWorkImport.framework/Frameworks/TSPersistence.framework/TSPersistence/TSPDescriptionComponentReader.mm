@interface TSPDescriptionComponentReader
- (TSPDescriptionComponentReader)initWithComponent:(id)component delegate:(id)delegate readChannel:(id)channel descriptionGenerator:(id)generator;
- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream ignoreMessageData:(BOOL)data hasAlternateMessages:(BOOL)messages;
- (void)read;
@end

@implementation TSPDescriptionComponentReader

- (TSPDescriptionComponentReader)initWithComponent:(id)component delegate:(id)delegate readChannel:(id)channel descriptionGenerator:(id)generator
{
  generatorCopy = generator;
  v15.receiver = self;
  v15.super_class = TSPDescriptionComponentReader;
  v12 = [(TSPComponentReader *)&v15 initWithComponent:component finalizeHandlerQueue:0 delegate:delegate readChannel:channel];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_descriptionGenerator, generator);
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

- (id)unknownObjectUnarchiverWithArchiveInfo:(const void *)info stream:(DispatchDataInputStream *)stream ignoreMessageData:(BOOL)data hasAlternateMessages:(BOOL)messages
{
  if (stream)
  {
    v7 = sub_276A764C4(info);
    (*(stream->var0 + 4))(stream, v7);
  }

  return 0;
}

@end