@interface _LTSpeechDataQueue
- (id)initForSeconds:(double)seconds;
- (void)addSpeechAudioData:(id)data;
- (void)consumeAll:(id)all;
@end

@implementation _LTSpeechDataQueue

- (id)initForSeconds:(double)seconds
{
  v8.receiver = self;
  v8.super_class = _LTSpeechDataQueue;
  v4 = [(_LTSpeechDataQueue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxFrames = (seconds * 16000.0);
    v6 = v4;
  }

  return v5;
}

- (void)addSpeechAudioData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  if (self->_currentFrames + (v5 >> 1) > self->_maxFrames)
  {
    v6 = self->_head;
    next = [(_LTSpeechDataQueueNode *)v6 next];
    head = self->_head;
    self->_head = next;

    data = [(_LTSpeechDataQueueNode *)v6 data];
    v10 = [data length];

    self->_currentFrames -= v10 >> 1;
  }

  v11 = v5 >> 1;
  v12 = objc_alloc_init(_LTSpeechDataQueueNode);
  [(_LTSpeechDataQueueNode *)v12 setData:dataCopy];

  if (!self->_head)
  {
    objc_storeStrong(&self->_head, v12);
  }

  [(_LTSpeechDataQueueNode *)self->_tail setNext:v12];
  tail = self->_tail;
  self->_tail = v12;

  self->_currentFrames += v11;
}

- (void)consumeAll:(id)all
{
  allCopy = all;
  v4 = self->_head;
  head = self->_head;
  self->_head = 0;

  tail = self->_tail;
  self->_tail = 0;

  if (v4)
  {
    do
    {
      data = [(_LTSpeechDataQueueNode *)v4 data];
      allCopy[2](allCopy, data);

      next = [(_LTSpeechDataQueueNode *)v4 next];

      v4 = next;
    }

    while (next);
  }
}

@end