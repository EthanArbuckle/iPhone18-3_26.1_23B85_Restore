@interface PCRingBuffer
+ (id)sharedInstance;
- (PCRingBuffer)init;
- (void)cappedRingBufferTo:(unint64_t)a3;
@end

@implementation PCRingBuffer

+ (id)sharedInstance
{
  if (qword_280C4F9B8 != -1)
  {
    sub_260F21A58();
  }

  v3 = qword_280C4F9B0;

  return v3;
}

- (PCRingBuffer)init
{
  v8.receiver = self;
  v8.super_class = PCRingBuffer;
  v2 = [(PCRingBuffer *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE4AD8]) initWithOptions:1];
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    ringBuffer = v2->_ringBuffer;
    v2->_ringBuffer = v5;
  }

  return v2;
}

- (void)cappedRingBufferTo:(unint64_t)a3
{
  v5 = [(PCRingBuffer *)self ringBuffer];
  v6 = [v5 count];

  v7 = v6 - a3;
  if (v6 > a3)
  {
    v8 = [(PCRingBuffer *)self ringBuffer];
    v10 = [v8 subarrayWithRange:{v7, a3}];

    v9 = [v10 mutableCopy];
    [(PCRingBuffer *)self setRingBuffer:v9];
  }
}

@end