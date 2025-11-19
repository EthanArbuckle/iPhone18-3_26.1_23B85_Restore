@interface RingBuffer
- (RingBuffer)initWithLength:(int)a3 dataTypeSize:(unint64_t)a4;
- (void)appendElement:(void *)a3;
- (void)dealloc;
- (void)firstElement;
- (void)lastElement;
@end

@implementation RingBuffer

- (RingBuffer)initWithLength:(int)a3 dataTypeSize:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = RingBuffer;
  v6 = [(RingBuffer *)&v11 init];
  v7 = v6;
  if (v6 && (v6->_length = a3 + 1, v6->_typeSize = a4, *&v6->_outputIndex = 0, v8 = malloc_type_malloc((a3 + 1) * a4, 0x25B5EE84uLL), (v7->_ringBuffer = v8) == 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_ringBuffer);
  v3.receiver = self;
  v3.super_class = RingBuffer;
  [(RingBuffer *)&v3 dealloc];
}

- (void)appendElement:(void *)a3
{
  v5 = [(RingBuffer *)self count];
  length = self->_length;
  if (v5 >= length - 1)
  {
    [(RingBuffer *)self removeFirstElements:(v5 - length + 2)];
  }

  if ([(RingBuffer *)self count]< self->_length - 1)
  {
    memcpy(self->_ringBuffer + self->_typeSize * self->_inputIndex, a3, self->_typeSize);

    [(RingBuffer *)self incrementRingIndex:&self->_inputIndex];
  }
}

- (void)firstElement
{
  if ([(RingBuffer *)self count]< 1)
  {
    return 0;
  }

  outputIndex = self->_outputIndex;

  return [(RingBuffer *)self elementAtIndex:outputIndex];
}

- (void)lastElement
{
  if ([(RingBuffer *)self count]< 1)
  {
    return 0;
  }

  v3 = [(RingBuffer *)self lastElementIndex];

  return [(RingBuffer *)self elementAtIndex:v3];
}

@end