@interface TSTMergeRegionMap
- (id).cxx_construct;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTMergeRegionMap

- (void)loadFromUnarchiver:(id)a3
{
  v24 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v24, v4, off_2812E4498[102], v5, v6);

  if (*(v7 + 24) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_22112397C(*(*(v7 + 32) + 8 * v8 + 8));
      v11 = v10;
      p_mergedRects = &self->_mergedRects;
      end = self->_mergedRects.__end_;
      cap = self->_mergedRects.__cap_;
      if (end >= cap)
      {
        v16 = end - p_mergedRects->__begin_;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          sub_22107C148();
        }

        v18 = cap - p_mergedRects->__begin_;
        if (v18 >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          sub_221086F74(&self->_mergedRects, v19);
        }

        v20 = (16 * v16);
        *v20 = v9;
        v20[1] = v11;
        v15 = (16 * v16 + 16);
        v21 = self->_mergedRects.__end_ - self->_mergedRects.__begin_;
        v22 = (16 * v16 - v21);
        memcpy(v22, p_mergedRects->__begin_, v21);
        begin = p_mergedRects->__begin_;
        p_mergedRects->__begin_ = v22;
        self->_mergedRects.__end_ = v15;
        self->_mergedRects.__cap_ = 0;
        if (begin)
        {
          operator delete(begin);
        }
      }

      else
      {
        end->origin = v9;
        end->size = v10;
        v15 = end + 1;
      }

      self->_mergedRects.__end_ = v15;
      ++v8;
    }

    while (v8 < *(v7 + 24));
  }
}

- (void)saveToArchiver:(id)a3
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTMergeRegionMap saveToArchiver:]", v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTMergeRegionMap.mm", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v10, 38, 0, "this should never be called!");

  v16 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v16, v12, v13, v14, v15);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end