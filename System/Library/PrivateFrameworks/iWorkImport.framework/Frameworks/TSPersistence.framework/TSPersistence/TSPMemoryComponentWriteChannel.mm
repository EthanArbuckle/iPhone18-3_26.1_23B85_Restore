@interface TSPMemoryComponentWriteChannel
- (TSPMemoryComponentWriteChannel)init;
- (id)serializedData;
- (void)close;
- (void)writeData:(id)a3;
@end

@implementation TSPMemoryComponentWriteChannel

- (TSPMemoryComponentWriteChannel)init
{
  v7.receiver = self;
  v7.super_class = TSPMemoryComponentWriteChannel;
  v2 = [(TSPMemoryComponentWriteChannel *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("TSPMemoryComponentWriteChannel.Stream", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    dispatch_queue_set_specific(*(v2 + 1), qword_280A51288, qword_280A51288, 0);
  }

  return v2;
}

- (void)writeData:(id)a3
{
  v4 = a3;
  streamQueue = self->_streamQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A66020;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(streamQueue, v7);
}

- (void)close
{
  v3 = qword_280A51288;
  if (dispatch_get_specific(qword_280A51288) == v3)
  {

    MEMORY[0x2821F9670](self, sel__close, v4);
  }

  else
  {
    streamQueue = self->_streamQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_276A661F8;
    block[3] = &unk_27A6E27F8;
    block[4] = self;
    dispatch_sync(streamQueue, block);
  }
}

- (id)serializedData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_276A66320;
  v10 = sub_276A66330;
  v11 = 0;
  streamQueue = self->_streamQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276A66338;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(streamQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end