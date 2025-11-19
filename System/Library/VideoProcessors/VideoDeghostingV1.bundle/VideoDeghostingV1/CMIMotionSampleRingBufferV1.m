@interface CMIMotionSampleRingBufferV1
- ($01BB1521EC52D44A8E7628F5261DCEC8)computeQuaternionForTimeStamp:(double)a3;
- (CMIMotionSampleRingBufferV1)initWithMaxCount:(double)a3;
- (void)addMotionDataToRingBuffer:(id *)a3 withSampleCount:(int)a4;
- (void)dealloc;
@end

@implementation CMIMotionSampleRingBufferV1

- (CMIMotionSampleRingBufferV1)initWithMaxCount:(double)a3
{
  v10.receiver = self;
  v10.super_class = CMIMotionSampleRingBufferV1;
  v4 = [(CMIMotionSampleRingBufferV1 *)&v10 init];
  v5 = v4;
  if (v4 && (v4->_maxCount = a3, v6 = [[RingBuffer alloc] initWithLength:v4->_maxCount dataTypeSize:48], ringBuffer = v5->_ringBuffer, v5->_ringBuffer = v6, ringBuffer, !v5->_ringBuffer))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CMIMotionSampleRingBufferV1;
  [(CMIMotionSampleRingBufferV1 *)&v2 dealloc];
}

- (void)addMotionDataToRingBuffer:(id *)a3 withSampleCount:(int)a4
{
  if (a4 >= 1)
  {
    v18 = v11;
    v19 = v10;
    v20 = v7;
    v21 = v6;
    v22 = v5;
    v23 = v4;
    v24 = v8;
    v25 = v9;
    v14 = a4;
    while (1)
    {
      var1 = a3->var1;
      v16 = [(RingBuffer *)self->_ringBuffer count:v18];
      ringBuffer = self->_ringBuffer;
      if (!v16)
      {
        goto LABEL_6;
      }

      if (var1 > *([(RingBuffer *)ringBuffer lastElement]+ 1))
      {
        break;
      }

LABEL_7:
      ++a3;
      if (!--v14)
      {
        return;
      }
    }

    ringBuffer = self->_ringBuffer;
LABEL_6:
    [(RingBuffer *)ringBuffer appendElement:a3];
    goto LABEL_7;
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)computeQuaternionForTimeStamp:(double)a3
{
  v32 = 0u;
  v33 = 0u;
  sub_A090(&v32);
  if ([(RingBuffer *)self->_ringBuffer count]>= 1)
  {
    v5 = *([(RingBuffer *)self->_ringBuffer lastElement]+ 1);
    ringBuffer = self->_ringBuffer;
    if (v5 < a3)
    {
      v7 = [(RingBuffer *)ringBuffer lastElement];
LABEL_6:
      v10 = *(v7 + 2);
      v32 = *(v7 + 1);
      v33 = v10;
      goto LABEL_7;
    }

    v8 = *([(RingBuffer *)ringBuffer firstElement]+ 1);
    v9 = self->_ringBuffer;
    if (v8 > a3)
    {
      v7 = [(RingBuffer *)v9 firstElement];
      goto LABEL_6;
    }

    v15 = [(RingBuffer *)v9 lastElementIndex];
    v16 = [(RingBuffer *)self->_ringBuffer firstElementIndex];
    v17 = [(RingBuffer *)self->_ringBuffer maxSize];
    if (v15 >= v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    v19 = v18 + v15;
    if (v18 + v15 >= v16)
    {
      v20 = v17;
      v21 = (v19 % v17);
      if (*([(RingBuffer *)self->_ringBuffer elementAtIndex:v21]+ 1) <= a3)
      {
        v22 = 0xFFFFFFFFLL;
LABEL_17:
        if (v22 != -1 && v21 != -1)
        {
          v24 = [(RingBuffer *)self->_ringBuffer elementAtIndex:v22];
          v7 = [(RingBuffer *)self->_ringBuffer elementAtIndex:v21];
          v25 = *(v7 + 1);
          v26 = v24[1] - v25;
          if (v26 > 0.000001)
          {
            v27 = (a3 - v25) / v26;
            sub_A110(v7 + 16, v24 + 2, v27);
            *&v32 = v28;
            *(&v32 + 1) = v29;
            *&v33 = v30;
            *(&v33 + 1) = v31;
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }

      else
      {
        while (v19 > v16)
        {
          v22 = v21;
          v21 = (--v19 % v20);
          if (*([(RingBuffer *)self->_ringBuffer elementAtIndex:v21]+ 1) <= a3)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_7:
  v12 = *(&v32 + 1);
  v11 = *&v32;
  v14 = *(&v33 + 1);
  v13 = *&v33;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

@end