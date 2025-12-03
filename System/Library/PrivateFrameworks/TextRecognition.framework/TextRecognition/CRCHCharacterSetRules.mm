@interface CRCHCharacterSetRules
+ (id)sharedCharacterSetRules;
+ (unint64_t)characterType:(unsigned int)type;
- (CRCHCharacterSetRules)init;
- (id).cxx_construct;
- (map<unsigned)signatureUniChar;
- (unint64_t)_characterType:(unsigned int)type;
- (void)dealloc;
- (void)setSignatureUniChar:(map<unsigned)int;
@end

@implementation CRCHCharacterSetRules

+ (id)sharedCharacterSetRules
{
  if (qword_1ED95FED8 != -1)
  {
    dispatch_once(&qword_1ED95FED8, &__block_literal_global_9);
  }

  return _MergedGlobals_16;
}

CRCHCharacterSetRules *__48__CRCHCharacterSetRules_sharedCharacterSetRules__block_invoke()
{
  result = objc_alloc_init(CRCHCharacterSetRules);
  _MergedGlobals_16 = result;
  return result;
}

+ (unint64_t)characterType:(unsigned int)type
{
  v4 = +[CRCHCharacterSetRules sharedCharacterSetRules];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  _charSetRulesQueue = [v4 _charSetRulesQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CRCHCharacterSetRules_characterType___block_invoke;
  block[3] = &unk_1E7BC2878;
  block[4] = v4;
  block[5] = &v10;
  typeCopy = type;
  dispatch_sync(_charSetRulesQueue, block);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __39__CRCHCharacterSetRules_characterType___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterType:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CRCHCharacterSetRules)init
{
  v4.receiver = self;
  v4.super_class = CRCHCharacterSetRules;
  v2 = [(CRCHCharacterSetRules *)&v4 init];
  if (v2)
  {
    v2->__charSetRulesQueue = dispatch_queue_create("com.apple.CoreHandwriting.CHCharacterSetsRules", 0);
    v2->_lowercaseCharSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzàáâäçèéêëìíîïñòóôöùúûü\xFFœæß"];
    v2->_uppercaseCharSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÄÇÈÉÊËÌÍÎÏÑÒÓÔÖÙÚÛÜŸŒÆ"];
    v2->_middlePunctuationCharSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-'_"];
    v2->_endPunctuationCharSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"., ;:!?“»"}]);
    v2->_lexiconSkipCharSet = [objc_msgSend(MEMORY[0x1E696AB08] "alphanumericCharacterSet")];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CRCHCharacterSetRules;
  [(CRCHCharacterSetRules *)&v3 dealloc];
}

- (unint64_t)_characterType:(unsigned int)type
{
  typeCopy = type;
  typeCopy2 = type;
  left = self->_signatureUniChar.__tree_.__end_node_.__left_;
  p_signatureUniChar = &self->_signatureUniChar;
  if (!left)
  {
    goto LABEL_9;
  }

  p_end_node = &self->_signatureUniChar.__tree_.__end_node_;
  do
  {
    left_high = HIDWORD(left[3].__left_);
    v9 = left_high >= type;
    v10 = left_high < type;
    if (v9)
    {
      p_end_node = left;
    }

    left = left[v10].__left_;
  }

  while (left);
  if (p_end_node == &self->_signatureUniChar.__tree_.__end_node_ || HIDWORD(p_end_node[3].__left_) > type)
  {
LABEL_9:
    v11 = [(NSCharacterSet *)self->_lowercaseCharSet characterIsMember:type];
    if ([(NSCharacterSet *)self->_uppercaseCharSet characterIsMember:typeCopy])
    {
      v11 |= 2u;
    }

    if ([(NSCharacterSet *)self->_middlePunctuationCharSet characterIsMember:typeCopy])
    {
      v12 = v11 | 4;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(NSCharacterSet *)self->_endPunctuationCharSet characterIsMember:typeCopy];
    if ([(NSCharacterSet *)self->_lexiconSkipCharSet characterIsMember:typeCopy]|| v13)
    {
      v14 = v12 | 8;
    }

    else
    {
      v14 = v12;
    }

    v17 = &typeCopy2;
    *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(p_signatureUniChar, typeCopy) + 8) = v14;
    typeCopy = typeCopy2;
  }

  v17 = &typeCopy2;
  return *(std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(p_signatureUniChar, typeCopy) + 8);
}

- (map<unsigned)signatureUniChar
{
  retstr->__tree_.__end_node_.__left_ = 0;
  p_end_node = &retstr->__tree_.__end_node_;
  retstr->__tree_.__size_ = 0;
  retstr->__tree_.__begin_node_ = &retstr->__tree_.__end_node_;
  left = self[2].__tree_.__end_node_.__left_;
  if (left != &self[2].__tree_.__size_)
  {
    v5 = 0;
    v6 = &retstr->__tree_.__end_node_;
    while (1)
    {
      v7 = p_end_node;
      if (v6 == p_end_node)
      {
        goto LABEL_9;
      }

      v8 = v5;
      v9 = p_end_node;
      if (v5)
      {
        do
        {
          v7 = v8;
          v8 = v8[1].__left_;
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2].__left_;
          v10 = v7->__left_ == v9;
          v9 = v7;
        }

        while (v10);
      }

      v11 = *(left + 7);
      if (HIDWORD(v7[3].__left_) < v11)
      {
LABEL_9:
        if (v5)
        {
          v12 = v7 + 1;
        }

        else
        {
          v12 = p_end_node;
        }

        if (!v12->__left_)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v5)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v13 = v5;
            v14 = *(v5 + 7);
            if (v14 <= v11)
            {
              break;
            }

            v5 = *v13;
            if (!*v13)
            {
              goto LABEL_20;
            }
          }

          if (v14 >= v11)
          {
            break;
          }

          v5 = v13[1];
          if (!v5)
          {
            goto LABEL_20;
          }
        }
      }

      begin_node = left[1];
      if (begin_node)
      {
        do
        {
          v16 = begin_node;
          begin_node = begin_node->__tree_.__begin_node_;
        }

        while (begin_node);
      }

      else
      {
        do
        {
          v16 = left[2];
          v10 = v16->__tree_.__begin_node_ == left;
          left = v16;
        }

        while (!v10);
      }

      if (v16 == &self[2].__tree_.__size_)
      {
        break;
      }

      v5 = p_end_node->__left_;
      left = v16;
    }
  }

  return self;
}

- (void)setSignatureUniChar:(map<unsigned)int
{
  p_signatureUniChar = &self->_signatureUniChar;
  if (&self->_signatureUniChar != a3)
  {
    p_end_node = &a3->__tree_.__end_node_;
    begin_node = a3->__tree_.__begin_node_;
    if (self->_signatureUniChar.__tree_.__size_)
    {
      v8 = &self->_signatureUniChar.__tree_.__end_node_;
      left = self->_signatureUniChar.__tree_.__end_node_.__left_;
      v9 = self->_signatureUniChar.__tree_.__begin_node_;
      self->_signatureUniChar.__tree_.__begin_node_ = &self->_signatureUniChar.__tree_.__end_node_;
      left[2] = 0;
      self->_signatureUniChar.__tree_.__end_node_.__left_ = 0;
      self->_signatureUniChar.__tree_.__size_ = 0;
      if (v9[1])
      {
        v10 = v9[1];
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        v11 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::_DetachedTreeCache::__detach_next(v10);
        if (begin_node == p_end_node)
        {
          v13 = v10;
        }

        else
        {
          v12 = begin_node;
          do
          {
            v13 = v11;
            left_high = HIDWORD(v12[3].__left_);
            *(v10 + 28) = left_high;
            *(v10 + 32) = v12[4].__left_;
            v15 = v8->__left_;
            v16 = &self->_signatureUniChar.__tree_.__end_node_;
            v17 = &self->_signatureUniChar.__tree_.__end_node_;
            if (v8->__left_)
            {
              do
              {
                while (1)
                {
                  v16 = v15;
                  if (left_high >= HIDWORD(v15[3].__left_))
                  {
                    break;
                  }

                  v15 = v15->__left_;
                  v17 = v16;
                  if (!v16->__left_)
                  {
                    goto LABEL_15;
                  }
                }

                v15 = v15[1].__left_;
              }

              while (v15);
              v17 = &v16[1];
            }

LABEL_15:
            std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__insert_node_at(p_signatureUniChar, v16, v17, v10);
            if (v11)
            {
              v11 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::_DetachedTreeCache::__detach_next(v11);
            }

            else
            {
              v11 = 0;
            }

            v18 = v12[1].__left_;
            if (v18)
            {
              do
              {
                begin_node = v18;
                v18 = v18->__left_;
              }

              while (v18);
            }

            else
            {
              do
              {
                begin_node = v12[2].__left_;
                v19 = begin_node->__left_ == v12;
                v12 = begin_node;
              }

              while (!v19);
            }

            if (!v13)
            {
              break;
            }

            v10 = v13;
            v12 = begin_node;
          }

          while (begin_node != p_end_node);
        }

        std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v13);
        if (!v11)
        {
          goto LABEL_33;
        }

        for (i = v11[2]; i; i = i[2])
        {
          v11 = i;
        }

        v20 = v11;
      }

      else
      {
        v20 = 0;
      }

      std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v20);
    }

LABEL_33:
    if (begin_node != p_end_node)
    {
      operator new();
    }
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 8) = 0;
  *(self + 7) = self + 64;
  return self;
}

@end