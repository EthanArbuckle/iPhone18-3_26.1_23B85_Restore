@interface UPPreprocessorOutput
- (UPPreprocessorOutput)initWithEmbeddingsTensor:(UPGenericTensor *)tensor spanLabelsTensor:(UPGenericTensor *)labelsTensor outputTokens:()vector<nl_featurization:(std::allocator<nl_featurization::Token>> *)nl_featurization :Token;
- (id).cxx_construct;
@end

@implementation UPPreprocessorOutput

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (UPPreprocessorOutput)initWithEmbeddingsTensor:(UPGenericTensor *)tensor spanLabelsTensor:(UPGenericTensor *)labelsTensor outputTokens:()vector<nl_featurization:(std::allocator<nl_featurization::Token>> *)nl_featurization :Token
{
  v33.receiver = self;
  v33.super_class = UPPreprocessorOutput;
  v8 = [(UPPreprocessorOutput *)&v33 init];
  v9 = v8;
  if (v8)
  {
    p_embeddingsTensor = &v8->_embeddingsTensor;
    begin = v8->_embeddingsTensor.shape.__begin_;
    if (begin)
    {
      v9->_embeddingsTensor.shape.__end_ = begin;
      operator delete(begin);
      p_embeddingsTensor->shape.__begin_ = 0;
      v9->_embeddingsTensor.shape.__end_ = 0;
      v9->_embeddingsTensor.shape.__cap_ = 0;
    }

    *&v9->_embeddingsTensor.shape.__begin_ = *&tensor->shape.__begin_;
    v9->_embeddingsTensor.shape.__cap_ = tensor->shape.__cap_;
    tensor->shape.__begin_ = 0;
    tensor->shape.__end_ = 0;
    tensor->shape.__cap_ = 0;
    v12 = v9->_embeddingsTensor.data.__begin_;
    if (v12)
    {
      v9->_embeddingsTensor.data.__end_ = v12;
      operator delete(v12);
      v9->_embeddingsTensor.data.__begin_ = 0;
      v9->_embeddingsTensor.data.__end_ = 0;
      v9->_embeddingsTensor.data.__cap_ = 0;
    }

    *&v9->_embeddingsTensor.data.__begin_ = *&tensor->data.__begin_;
    v9->_embeddingsTensor.data.__cap_ = tensor->data.__cap_;
    tensor->data.__begin_ = 0;
    tensor->data.__end_ = 0;
    tensor->data.__cap_ = 0;
    v13 = v9->_spanLabelsTensor.shape.__begin_;
    if (v13)
    {
      v9->_spanLabelsTensor.shape.__end_ = v13;
      operator delete(v13);
      v9->_spanLabelsTensor.shape.__begin_ = 0;
      v9->_spanLabelsTensor.shape.__end_ = 0;
      v9->_spanLabelsTensor.shape.__cap_ = 0;
    }

    *&v9->_spanLabelsTensor.shape.__begin_ = *&labelsTensor->shape.__begin_;
    v9->_spanLabelsTensor.shape.__cap_ = labelsTensor->shape.__cap_;
    labelsTensor->shape.__begin_ = 0;
    labelsTensor->shape.__end_ = 0;
    labelsTensor->shape.__cap_ = 0;
    v14 = v9->_spanLabelsTensor.data.__begin_;
    if (v14)
    {
      v9->_spanLabelsTensor.data.__end_ = v14;
      operator delete(v14);
      v9->_spanLabelsTensor.data.__begin_ = 0;
      v9->_spanLabelsTensor.data.__end_ = 0;
      v9->_spanLabelsTensor.data.__cap_ = 0;
    }

    *&v9->_spanLabelsTensor.data.__begin_ = *&labelsTensor->data.__begin_;
    v9->_spanLabelsTensor.data.__cap_ = labelsTensor->data.__cap_;
    labelsTensor->data.__begin_ = 0;
    labelsTensor->data.__end_ = 0;
    labelsTensor->data.__cap_ = 0;
    p_begin = &v9->_outputTokens.__begin_;
    if (&v9->_outputTokens != nl_featurization)
    {
      v17 = nl_featurization->__begin_;
      end = nl_featurization->__end_;
      v18 = end - v17;
      cap = v9->_outputTokens.__cap_;
      v20 = v9->_outputTokens.__begin_;
      if (cap - v20 < (end - v17))
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 4);
        if (v20)
        {
          std::vector<nl_featurization::Token>::clear[abi:ne200100](&v9->_outputTokens);
          operator delete(*p_begin);
          cap = 0;
          *p_begin = 0;
          v9->_outputTokens.__end_ = 0;
          v9->_outputTokens.__cap_ = 0;
        }

        if (v21 <= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * (cap >> 4);
          v23 = 2 * v22;
          if (2 * v22 <= v21)
          {
            v23 = v21;
          }

          if (v22 >= 0x2AAAAAAAAAAAAAALL)
          {
            v24 = 0x555555555555555;
          }

          else
          {
            v24 = v23;
          }

          std::vector<nl_featurization::Token>::__vallocate[abi:ne200100](&v9->_outputTokens, v24);
        }

        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v25 = v9->_outputTokens.__end_;
      if (v25 - v20 >= v18)
      {
        if (v17 != end)
        {
          do
          {
            v29 = v20;
            v31 = *v17;
            v30 = v17 + 16;
            *v20 = v31;
            std::basic_string<char16_t>::operator=((v20 + 16), v30);
            *(v20 + 40) = v30[24];
            v17 = (v30 + 32);
            v20 = (v20 + 48);
          }

          while (v17 != end);
          v20 = (v29 + 48);
          v25 = v9->_outputTokens.__end_;
        }

        while (v25 != v20)
        {
          if (*(v25 - 9) < 0)
          {
            operator delete(*(v25 - 32));
          }

          v25 -= 48;
        }

        v9->_outputTokens.__end_ = v20;
      }

      else
      {
        v26 = (v17 + v25 - v20);
        if (v25 != v20)
        {
          do
          {
            v28 = *v17;
            v27 = v17 + 16;
            *v20 = v28;
            std::basic_string<char16_t>::operator=((v20 + 16), v27);
            *(v20 + 40) = v27[24];
            v17 = (v27 + 32);
            v20 = (v20 + 48);
          }

          while (v17 != v26);
          v25 = v9->_outputTokens.__end_;
        }

        v9->_outputTokens.__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nl_featurization::Token>,nl_featurization::Token*,nl_featurization::Token*,nl_featurization::Token*>(&v9->_outputTokens, v26, end, v25);
      }
    }
  }

  return v9;
}

@end