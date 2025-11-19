@interface _LTSpeechDataQueue
- (id)initForSeconds:(double)a3;
- (void)addSpeechAudioData:(id)a3;
- (void)consumeAll:(id)a3;
@end

@implementation _LTSpeechDataQueue

- (id)initForSeconds:(double)a3
{
  v8.receiver = self;
  v8.super_class = _LTSpeechDataQueue;
  v4 = [(_LTSpeechDataQueue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxFrames = (a3 * 16000.0);
    v6 = v4;
  }

  return v5;
}

- (void)addSpeechAudioData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (self->_currentFrames + (v5 >> 1) > self->_maxFrames)
  {
    v6 = self->_head;
    v7 = [(_LTSpeechDataQueueNode *)v6 next];
    head = self->_head;
    self->_head = v7;

    v9 = [(_LTSpeechDataQueueNode *)v6 data];
    v10 = [v9 length];

    self->_currentFrames -= v10 >> 1;
  }

  v11 = v5 >> 1;
  v12 = objc_alloc_init(_LTSpeechDataQueueNode);
  [(_LTSpeechDataQueueNode *)v12 setData:v4];

  if (!self->_head)
  {
    objc_storeStrong(&self->_head, v12);
  }

  [(_LTSpeechDataQueueNode *)self->_tail setNext:v12];
  tail = self->_tail;
  self->_tail = v12;

  self->_currentFrames += v11;
}

- (void)consumeAll:(id)a3
{
  v9 = a3;
  v4 = self->_head;
  head = self->_head;
  self->_head = 0;

  tail = self->_tail;
  self->_tail = 0;

  if (v4)
  {
    do
    {
      v7 = [(_LTSpeechDataQueueNode *)v4 data];
      v9[2](v9, v7);

      v8 = [(_LTSpeechDataQueueNode *)v4 next];

      v4 = v8;
    }

    while (v8);
  }
}

@end