@interface TSPFieldTreeNodeWithChildren
- (BOOL)addChildNode:(id)a3 forFieldNumber:(int)a4;
- (id).cxx_construct;
- (id)childNodeForFieldNumber:(int)a3;
- (void)saveToArchiver:(id)a3 message:(Message *)a4;
@end

@implementation TSPFieldTreeNodeWithChildren

- (id)childNodeForFieldNumber:(int)a3
{
  left = self->_children.__tree_.__end_node_.__left_;
  if (!left)
  {
    return 0;
  }

  p_end_node = &self->_children.__tree_.__end_node_;
  do
  {
    if (SLODWORD(left[4].__left_) >= a3)
    {
      p_end_node = left;
    }

    left = left[SLODWORD(left[4].__left_) < a3].__left_;
  }

  while (left);
  if (p_end_node != &self->_children.__tree_.__end_node_ && SLODWORD(p_end_node[4].__left_) <= a3)
  {
    return p_end_node[5].__left_;
  }

  else
  {
    return 0;
  }
}

- (BOOL)addChildNode:(id)a3 forFieldNumber:(int)a4
{
  v8 = a4;
  v9 = a3;
  v5 = v9;
  sub_276AD5504(&self->_children, &v8);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)saveToArchiver:(id)a3 message:(Message *)a4
{
  v7 = a3;
  if (a4)
  {
    (*(a4->var0 + 19))(a4);
    p_end_node = &self->_children.__tree_.__end_node_;
    begin_node = self->_children.__tree_.__begin_node_;
    if (begin_node != p_end_node)
    {
      v11 = v8;
      v54 = p_end_node;
      v55 = 0;
      v12 = 0;
      do
      {
        objc_opt_class();
        left = begin_node[5].__left_;
        v14 = TSUDynamicCast();
        v17 = v14;
        if (v14)
        {
          v18 = objc_msgSend_field(v14, v15, v16);
          v21 = v18;
          if (v7)
          {
            objc_msgSend_saveToArchiver_(v18, v19, v7);
          }

          if (objc_msgSend_hasKnownValues(v21, v19, v20))
          {
            objc_msgSend_mergeToMessage_reflection_(v21, v22, a4, v11);
          }

          if (objc_msgSend_hasUnknownValues(v21, v22, v23))
          {
            if (!v12)
            {
              v12 = google::protobuf::Reflection::MutableUnknownFields(v11, a4);
            }

            objc_msgSend_mergeToUnknownFieldSet_(v21, v24, v12);
          }
        }

        else
        {
          objc_opt_class();
          v25 = begin_node[5].__left_;
          v21 = TSUDynamicCast();
          if (v21)
          {
            v26 = v55;
            if (!v55)
            {
              v26 = (*(a4->var0 + 19))(a4);
            }

            v55 = v26;
            FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v26, begin_node[4].__left_);
            if (!FieldByNumber)
            {
              FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(v11, LODWORD(begin_node[4].__left_));
            }

            v29 = *(FieldByNumber + 48);
            if (v29)
            {
              v56 = FieldByNumber;
              v57 = google::protobuf::FieldDescriptor::TypeOnceInit;
              if (atomic_load_explicit(v29, memory_order_acquire) != -1)
              {
                v59[0] = &v57;
                v59[1] = &v56;
                v58 = v59;
                std::__call_once(v29, &v58, sub_2769C149C);
              }
            }

            if (google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(FieldByNumber + 56)] == 10)
            {
              if (*(FieldByNumber + 60) == 3)
              {
                HasField = google::protobuf::Reflection::FieldSize(v11, a4, FieldByNumber);
              }

              else
              {
                HasField = google::protobuf::Reflection::HasField(v11, a4, FieldByNumber);
              }

              v39 = HasField;
              v40 = v12;
              if (HasField >= 1)
              {
                v41 = 0;
                do
                {
                  if (*(FieldByNumber + 60) == 3)
                  {
                    v42 = google::protobuf::Reflection::MutableRepeatedMessage(v11, a4, FieldByNumber, v41);
                  }

                  else
                  {
                    v42 = google::protobuf::Reflection::MutableMessage(v11, a4, FieldByNumber, 0);
                  }

                  objc_msgSend_saveToArchiver_message_(v21, v43, v7, v42);
                  ++v41;
                }

                while (v39 != v41);
              }

              v12 = v40;
              p_end_node = v54;
            }

            else
            {
              v31 = MEMORY[0x277D81150];
              v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSPFieldTreeNodeWithChildren saveToArchiver:message:]");
              v33 = v12;
              v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldTree.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 169, 0, "Message was expeced for a multi-level field path.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
              v12 = v33;
              p_end_node = v54;
            }
          }
        }

        v44 = begin_node[1].__left_;
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = v44->__left_;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = begin_node[2].__left_;
            v46 = v45->__left_ == begin_node;
            begin_node = v45;
          }

          while (!v46);
        }

        begin_node = v45;
      }

      while (v45 != p_end_node);
    }
  }

  else
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPFieldTreeNodeWithChildren saveToArchiver:message:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPFieldTree.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 119, 0, "Message should have been defined.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end