@interface PXStoryTransitionProducerSegment
- ($26774211E5BDBF3D92665BB0B9FD0ED0)segmentInfo;
- (NSArray)clipLayouts;
- (PXStoryTransitionProducerSegment)initWithSegmentInfo:(id *)a3;
- (void)addClipWithIdentifier:(int64_t)a3 layout:(id)a4 info:(id *)a5;
- (void)dealloc;
- (void)enumerateClipsUsingBlock:(id)a3;
@end

@implementation PXStoryTransitionProducerSegment

- ($26774211E5BDBF3D92665BB0B9FD0ED0)segmentInfo
{
  v3 = *&self->var3.var3.var0.var3;
  v4 = *&self[1].var1.var0;
  *&retstr->var3.var2.var3 = *&self->var3.var4;
  *&retstr->var3.var3.var0.var1 = v4;
  retstr->var3.var3.var1 = self[1].var1.var2;
  v5 = *&self->var3.var1.var0;
  v6 = *&self->var3.var2.var1;
  *&retstr->var3.var0.var0 = *&self->var3.var1.var3;
  *&retstr->var3.var0.var3 = v6;
  *&retstr->var3.var1.var1 = *&self->var3.var3.var0.var0;
  *&retstr->var3.var2.var0 = v3;
  v7 = *&self->var2.var2.var0;
  v8 = *&self->var2.var5.var0;
  *&retstr->var1.var3 = *&self->var2.var2.var3;
  *&retstr->var2.var0 = v8;
  *&retstr->var2.var2.var1 = *&self->var3.var0.var1;
  *&retstr->var2.var3 = v5;
  *&retstr->var0 = *&self->var1.var4;
  *&retstr->var1.var1 = v7;
  return self;
}

- (void)enumerateClipsUsingBlock:(id)a3
{
  v13 = a3;
  v16[0] = 0;
  count = self->_count;
  if (count >= 1)
  {
    v5 = 0;
    v6 = 0;
    for (i = 0; i < count; ++i)
    {
      v8 = (&self->_infos->var0 + v5);
      v9 = v8[1];
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      if (v9 == 1)
      {
        v10 = v6;
      }

      v14 = v10;
      v11 = [(NSMutableArray *)self->_clipLayouts objectAtIndexedSubscript:i];
      v12 = v13[2];
      memcpy(__dst, v8, 0x300uLL);
      v12(v13, count, i, v14, __dst, v11, v16);

      if (v16[0])
      {
        break;
      }

      if (v9 == 1)
      {
        ++v6;
      }

      count = self->_count;
      v5 += 768;
    }
  }
}

- (void)addClipWithIdentifier:(int64_t)a3 layout:(id)a4 info:(id *)a5
{
  [(NSMutableArray *)self->_clipLayouts addObject:a4];
  ++self->_count;
  _PXGArrayCapacityResizeToCount();
}

- (NSArray)clipLayouts
{
  v2 = [(NSMutableArray *)self->_clipLayouts copy];

  return v2;
}

- (void)dealloc
{
  free(self->_infos);
  v3.receiver = self;
  v3.super_class = PXStoryTransitionProducerSegment;
  [(PXStoryTransitionProducerSegment *)&v3 dealloc];
}

- (PXStoryTransitionProducerSegment)initWithSegmentInfo:(id *)a3
{
  v18.receiver = self;
  v18.super_class = PXStoryTransitionProducerSegment;
  v4 = [(PXStoryTransitionProducerSegment *)&v18 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) = *&a3->var0;
    v6 = *&a3->var1.var1;
    v7 = *&a3->var1.var3;
    v8 = *&a3->var2.var0;
    *(v4 + 104) = *&a3->var2.var2.var1;
    *(v4 + 88) = v8;
    *(v4 + 72) = v7;
    *(v4 + 56) = v6;
    v9 = *&a3->var2.var3;
    v10 = *&a3->var3.var0.var0;
    v11 = *&a3->var3.var0.var3;
    *(v4 + 168) = *&a3->var3.var1.var1;
    *(v4 + 152) = v11;
    *(v4 + 136) = v10;
    *(v4 + 120) = v9;
    v12 = *&a3->var3.var2.var0;
    v13 = *&a3->var3.var2.var3;
    v14 = *&a3->var3.var3.var0.var1;
    *(v4 + 29) = a3->var3.var3.var1;
    *(v4 + 216) = v14;
    *(v4 + 200) = v13;
    *(v4 + 184) = v12;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clipLayouts = v5->_clipLayouts;
    v5->_clipLayouts = v15;
  }

  return v5;
}

@end