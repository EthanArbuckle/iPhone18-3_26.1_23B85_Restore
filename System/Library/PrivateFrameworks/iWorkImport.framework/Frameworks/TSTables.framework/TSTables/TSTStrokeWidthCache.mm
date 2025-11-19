@interface TSTStrokeWidthCache
- (TSTStrokeWidthCache)init;
- (_opaque_pthread_rwlock_t)rwlock;
- (double)strokeWidthForGridIndex:(unsigned int)a3 inRange:(TSTSimpleRange)a4;
- (id).cxx_construct;
- (void)dealloc;
- (void)setCount:(unsigned int)a3;
- (void)setRwlock:(_opaque_pthread_rwlock_t *)a3;
- (void)strokeWidthForGridIndex:(unsigned int)a3 outWidth:(double *)a4 outNextWidth:(double *)a5;
- (void)updateCacheForGridIndex:(unsigned int)a3 withMajorStrokes:(id)a4 andMinorStrokes:(id)a5;
@end

@implementation TSTStrokeWidthCache

- (TSTStrokeWidthCache)init
{
  v5.receiver = self;
  v5.super_class = TSTStrokeWidthCache;
  v2 = [(TSTStrokeWidthCache *)&v5 init];
  v3 = v2;
  if (v2)
  {
    pthread_rwlock_init(&v2->_rwlock, 0);
  }

  return v3;
}

- (void)dealloc
{
  pthread_rwlock_destroy(&self->_rwlock);
  v3.receiver = self;
  v3.super_class = TSTStrokeWidthCache;
  [(TSTStrokeWidthCache *)&v3 dealloc];
}

- (void)setCount:(unsigned int)a3
{
  pthread_rwlock_wrlock(&self->_rwlock);
  sub_221280CE8(&self->_indexToCacheEntriesMap.__begin_, a3);

  pthread_rwlock_unlock(&self->_rwlock);
}

- (double)strokeWidthForGridIndex:(unsigned int)a3 inRange:(TSTSimpleRange)a4
{
  length = a4.length;
  origin = a4.origin;
  pthread_rwlock_rdlock(&self->_rwlock);
  begin = self->_indexToCacheEntriesMap.__begin_;
  v9 = -1.0;
  if (a3 < ((self->_indexToCacheEntriesMap.__end_ - begin) >> 5))
  {
    v10 = begin + 32 * a3;
    v12 = *(v10 + 1);
    v11 = *(v10 + 2);
    if (v12 != v11)
    {
      if (origin || length != 2147483646)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v11 - v12);
        do
        {
          v14 = v13 >> 1;
          v15 = &v12[3 * (v13 >> 1)];
          v17 = *v15;
          v18 = v15[1];
          v16 = (v15 + 3);
          v13 += ~(v13 >> 1);
          if (v18 + v17 <= origin)
          {
            v12 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
        if (v12 != v11)
        {
          v19 = v12 + 3;
          v9 = -1.0;
          do
          {
            if (v9 < *(v19 - 1))
            {
              v9 = *(v19 - 1);
            }

            v20 = *(v19 - 2) + *(v19 - 3) >= (origin + length) || v19 == v11;
            v19 += 3;
          }

          while (!v20);
        }
      }

      else
      {
        v9 = *v10;
      }
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  return v9;
}

- (void)strokeWidthForGridIndex:(unsigned int)a3 outWidth:(double *)a4 outNextWidth:(double *)a5
{
  pthread_rwlock_rdlock(&self->_rwlock);
  begin = self->_indexToCacheEntriesMap.__begin_;
  v10 = (self->_indexToCacheEntriesMap.__end_ - begin) >> 5;
  v11 = -1.0;
  v12 = -1.0;
  if (v10 > a3)
  {
    v13 = begin + 32 * a3;
    if (*(v13 + 1) == *(v13 + 2))
    {
      v12 = -1.0;
    }

    else
    {
      v12 = *v13;
    }
  }

  v14 = a3 + 1;
  if (v10 > v14)
  {
    v15 = begin + 32 * v14;
    if (*(v15 + 1) == *(v15 + 2))
    {
      v11 = -1.0;
    }

    else
    {
      v11 = *v15;
    }
  }

  pthread_rwlock_unlock(&self->_rwlock);
  if (a4)
  {
    *a4 = v12;
  }

  if (a5)
  {
    *a5 = v11;
  }
}

- (void)updateCacheForGridIndex:(unsigned int)a3 withMajorStrokes:(id)a4 andMinorStrokes:(id)a5
{
  v5 = a3;
  begin = self->_indexToCacheEntriesMap.__begin_;
  if (a3 < ((self->_indexToCacheEntriesMap.__end_ - begin) >> 5))
  {
    v46 = 0;
    v8 = 0uLL;
    v44 = 0u;
    v45 = 0u;
    if (a4)
    {
      objc_msgSend_stackReferences(a4, a2, *&a3, a4, a5);
      v8 = 0uLL;
    }

    v43 = 0;
    v41 = v8;
    v42 = v8;
    if (a5)
    {
      objc_msgSend_stackReferences(a5, a2, *&a3, a4, a5);
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    if (v44)
    {
      v9 = &v44;
    }

    else
    {
      v9 = &v41;
    }

    sub_221281314(&v38, v9);
    if (*(&v44 + 1) && *(&v41 + 1))
    {
      v12 = [TSTStrokeOrderedLayer alloc];
      v14 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v12, v13, 0, *(&v44 + 1), *(&v41 + 1));
      v29 = v14;
      sub_221281314(&v38, &v29);
      v15 = v14;
    }

    else if (*(&v44 + 1) | *(&v41 + 1))
    {
      if (*(&v44 + 1))
      {
        v16 = &v44 + 8;
      }

      else
      {
        v16 = &v41 + 8;
      }

      v15 = 0;
      sub_221281314(&v38, v16);
    }

    else
    {
      v15 = 0;
    }

    if (v42)
    {
      sub_221281314(&v38, &v42);
    }

    if (v45)
    {
      sub_221281314(&v38, &v45);
    }

    if (*(&v45 + 1) && *(&v42 + 1))
    {
      v17 = [TSTStrokeOrderedLayer alloc];
      v19 = objc_msgSend_initWithContext_majorStrokeLayer_minorStrokeLayer_(v17, v18, 0, *(&v45 + 1), *(&v42 + 1));
      v29 = v19;
      sub_221281314(&v38, &v29);
      v20 = v19;
    }

    else if (*(&v45 + 1) | *(&v42 + 1))
    {
      if (*(&v45 + 1))
      {
        v21 = &v45 + 8;
      }

      else
      {
        v21 = &v42 + 8;
      }

      v20 = 0;
      sub_221281314(&v38, v21);
    }

    else
    {
      v20 = 0;
    }

    if (v43)
    {
      sub_221281314(&v38, &v43);
    }

    if (v46)
    {
      sub_221281314(&v38, &v46);
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x4812000000;
    v32 = sub_2212813E8;
    v33 = sub_22128140C;
    v34 = &unk_22188E88F;
    v36 = 0;
    v37 = 0;
    __p = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_221281424;
    v24[3] = &unk_2784623B8;
    v24[4] = &v29;
    v24[5] = &v25;
    objc_msgSend_enumerateWidthsInLayers_usingBlock_(TSTStrokeLayerMergedStack, v10, &v38, v24, v11);
    v22 = (begin + 32 * v5);
    *v22 = v26[3];
    v23 = v22 + 1;
    if (v23 != v30 + 6)
    {
      sub_2212819E0(v23, v30[6], v30[7], 0xAAAAAAAAAAAAAAABLL * ((v30[7] - v30[6]) >> 3));
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
    if (__p)
    {
      v36 = __p;
      operator delete(__p);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }
  }
}

- (_opaque_pthread_rwlock_t)rwlock
{
  v3 = *self[1].__opaque;
  *&retstr->__opaque[152] = *&self->__opaque[184];
  *&retstr->__opaque[168] = v3;
  *&retstr->__opaque[184] = *&self[1].__opaque[16];
  v4 = *&self->__opaque[136];
  *&retstr->__opaque[88] = *&self->__opaque[120];
  *&retstr->__opaque[104] = v4;
  v5 = *&self->__opaque[168];
  *&retstr->__opaque[120] = *&self->__opaque[152];
  *&retstr->__opaque[136] = v5;
  v6 = *&self->__opaque[72];
  *&retstr->__opaque[24] = *&self->__opaque[56];
  *&retstr->__opaque[40] = v6;
  v7 = *&self->__opaque[104];
  *&retstr->__opaque[56] = *&self->__opaque[88];
  *&retstr->__opaque[72] = v7;
  v8 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v8;
  return self;
}

- (void)setRwlock:(_opaque_pthread_rwlock_t *)a3
{
  *&self->_rwlock.__sig = *&a3->__sig;
  v3 = *&a3->__opaque[8];
  v4 = *&a3->__opaque[24];
  v5 = *&a3->__opaque[56];
  *&self->_rwlock.__opaque[40] = *&a3->__opaque[40];
  *&self->_rwlock.__opaque[56] = v5;
  *&self->_rwlock.__opaque[8] = v3;
  *&self->_rwlock.__opaque[24] = v4;
  v6 = *&a3->__opaque[72];
  v7 = *&a3->__opaque[88];
  v8 = *&a3->__opaque[120];
  *&self->_rwlock.__opaque[104] = *&a3->__opaque[104];
  *&self->_rwlock.__opaque[120] = v8;
  *&self->_rwlock.__opaque[72] = v6;
  *&self->_rwlock.__opaque[88] = v7;
  v9 = *&a3->__opaque[136];
  v10 = *&a3->__opaque[152];
  v11 = *&a3->__opaque[168];
  *&self->_rwlock.__opaque[184] = *&a3->__opaque[184];
  *&self->_rwlock.__opaque[152] = v10;
  *&self->_rwlock.__opaque[168] = v11;
  *&self->_rwlock.__opaque[136] = v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end