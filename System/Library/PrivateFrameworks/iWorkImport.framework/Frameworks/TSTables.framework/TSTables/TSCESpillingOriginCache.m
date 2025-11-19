@interface TSCESpillingOriginCache
- (TSCECalculationEngine)calcEngine;
- (TSCESpillingOriginCache)initWithCalcEngine:(id)a3;
- (TSUCellRect)spillRangeForSpillingOriginCellRef:(const TSCECellRef *)a3 outError:(id *)a4;
- (id).cxx_construct;
- (void)clearCache;
- (void)replaceSpillError:(id)a3 forSpillingOriginCellRef:(const TSCECellRef *)a4;
@end

@implementation TSCESpillingOriginCache

- (TSCESpillingOriginCache)initWithCalcEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSCESpillingOriginCache;
  v5 = [(TSCESpillingOriginCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    pthread_rwlock_init(&v5->_rwLock, 0);
    objc_storeWeak(&v6->_calcEngine, v4);
  }

  return v6;
}

- (void)clearCache
{
  pthread_rwlock_wrlock(&self->_rwLock);
  sub_221159728(&self->_cache);

  pthread_rwlock_unlock(&self->_rwLock);
}

- (TSUCellRect)spillRangeForSpillingOriginCellRef:(const TSCECellRef *)a3 outError:(id *)a4
{
  pthread_rwlock_rdlock(&self->_rwLock);
  v7 = sub_221244B44(&self->_cache.__table_.__bucket_list_.__ptr_, a3);
  if (v7)
  {
    v8 = v7[5];
    coordinate = objc_msgSend_spillRange(v8, v9, v10, v11, v12);
    v15 = v14;
    v19 = objc_msgSend_error(v8, v14, v16, v17, v18);
  }

  else
  {
    pthread_rwlock_unlock(&self->_rwLock);
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v19 = objc_msgSend_errorForCell_(WeakRetained, v21, a3, v22, v23);

    v24 = objc_loadWeakRetained(&self->_calcEngine);
    v15 = objc_msgSend_spillSizeForCell_(v24, v25, a3, v26, v27);

    coordinate = a3->coordinate;
    v8 = objc_alloc_init(TSCESpillingOriginCacheEntry);
    objc_msgSend_setSpillRange_(v8, v28, coordinate, v15, v29);
    objc_msgSend_setError_(v8, v30, v19, v31, v32);
    pthread_rwlock_wrlock(&self->_rwLock);
    v33 = sub_2215A80D4(&self->_cache.__table_.__bucket_list_.__ptr_, a3);
    objc_storeStrong(v33 + 5, v8);
  }

  pthread_rwlock_unlock(&self->_rwLock);
  v34 = v19;
  *a4 = v19;

  v35 = coordinate;
  v36 = v15;
  result.size = v36;
  result.origin = v35;
  return result;
}

- (void)replaceSpillError:(id)a3 forSpillingOriginCellRef:(const TSCECellRef *)a4
{
  v10 = a3;
  pthread_rwlock_wrlock(&self->_rwLock);
  v6 = sub_221244B44(&self->_cache.__table_.__bucket_list_.__ptr_, a4);
  if (v6)
  {
    objc_msgSend_setError_(v6[5], v7, v10, v8, v9);
  }

  pthread_rwlock_unlock(&self->_rwLock);
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 60) = 1065353216;
  return self;
}

@end