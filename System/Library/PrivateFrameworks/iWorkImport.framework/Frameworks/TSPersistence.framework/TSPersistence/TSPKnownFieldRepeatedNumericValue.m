@interface TSPKnownFieldRepeatedNumericValue
- (TSPKnownFieldRepeatedNumericValue)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6;
- (id)debugDescription;
- (id)initSubclassWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6;
- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4;
@end

@implementation TSPKnownFieldRepeatedNumericValue

- (TSPKnownFieldRepeatedNumericValue)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6
{
  v76.receiver = self;
  v76.super_class = TSPKnownFieldRepeatedNumericValue;
  v9 = [TSPKnownField initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:a3 message:a4 reflection:?];
  if (v9)
  {
    v10 = google::protobuf::Reflection::FieldSize(a6, a5, a3);
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_initWithCapacity_(v11, v12, v10);
    values = v9->_values;
    v9->_values = v13;

    type = v9->super._type;
    if (type > 4)
    {
      if (type > 6)
      {
        if (type == 7)
        {
          if (v10 >= 1)
          {
            for (i = 0; i != v10; ++i)
            {
              v40 = v9->_values;
              v41 = MEMORY[0x277CCABB0];
              RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(a6, a5, a3, i);
              v44 = objc_msgSend_numberWithBool_(v41, v43, RepeatedBool);
              objc_msgSend_addObject_(v40, v45, v44);
            }
          }
        }

        else if ((type - 8) < 3)
        {
          v75 = v9->super._type;
          TSUSetCrashReporterInfo();
          v69 = MEMORY[0x277D81150];
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "[TSPKnownFieldRepeatedNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "[TSPKnownFieldRepeatedNumericValue initWithFieldDescriptor:fieldInfo:message:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 476, v75);
          v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v69, v74, v71, v73, 476, 1, "Unexpected field descriptor type (%d).", v9->super._type);

          TSUCrashBreakpoint();
          abort();
        }
      }

      else if (type == 5)
      {
        if (v10 >= 1)
        {
          for (j = 0; j != v10; ++j)
          {
            v47 = v9->_values;
            v48 = MEMORY[0x277CCABB0];
            RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(a6, a5, a3, j);
            v52 = objc_msgSend_numberWithDouble_(v48, v50, v51, RepeatedDouble);
            objc_msgSend_addObject_(v47, v53, v52);
          }
        }
      }

      else if (v10 >= 1)
      {
        v24 = 0;
        do
        {
          v25 = v9->_values;
          v26 = MEMORY[0x277CCABB0];
          *&v27 = google::protobuf::Reflection::GetRepeatedFloat(a6, a5, a3, v24);
          v30 = objc_msgSend_numberWithFloat_(v26, v28, v29, v27);
          objc_msgSend_addObject_(v25, v31, v30);

          ++v24;
        }

        while (v10 != v24);
      }
    }

    else if (type > 2)
    {
      if (type == 3)
      {
        if (v10 >= 1)
        {
          for (k = 0; k != v10; ++k)
          {
            v62 = v9->_values;
            v63 = MEMORY[0x277CCABB0];
            RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(a6, a5, a3, k);
            v66 = objc_msgSend_numberWithUnsignedInt_(v63, v65, RepeatedUInt32);
            objc_msgSend_addObject_(v62, v67, v66);
          }
        }
      }

      else if (v10 >= 1)
      {
        v32 = 0;
        do
        {
          v33 = v9->_values;
          v34 = MEMORY[0x277CCABB0];
          RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(a6, a5, a3, v32);
          v37 = objc_msgSend_numberWithUnsignedLongLong_(v34, v36, RepeatedUInt64);
          objc_msgSend_addObject_(v33, v38, v37);

          ++v32;
        }

        while (v10 != v32);
      }
    }

    else if (type == 1)
    {
      if (v10 >= 1)
      {
        for (m = 0; m != v10; ++m)
        {
          v55 = v9->_values;
          v56 = MEMORY[0x277CCABB0];
          RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(a6, a5, a3, m);
          v59 = objc_msgSend_numberWithInt_(v56, v58, RepeatedInt32);
          objc_msgSend_addObject_(v55, v60, v59);
        }
      }
    }

    else if (type == 2 && v10 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = v9->_values;
        v19 = MEMORY[0x277CCABB0];
        RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(a6, a5, a3, v17);
        v22 = objc_msgSend_numberWithLongLong_(v19, v21, RepeatedInt64);
        objc_msgSend_addObject_(v18, v23, v22);

        ++v17;
      }

      while (v10 != v17);
    }
  }

  return v9;
}

- (id)initSubclassWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6
{
  v7.receiver = self;
  v7.super_class = TSPKnownFieldRepeatedNumericValue;
  return [(TSPKnownField *)&v7 initWithFieldDescriptor:a3 fieldInfo:a4 message:a5 reflection:a6];
}

- (void)mergeToMessage:(Message *)a3 reflection:(const Reflection *)a4
{
  v120 = *MEMORY[0x277D85DE8];
  if (!self->_values)
  {
LABEL_72:
    v77 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = (*(a3->var0 + 19))(a3, a2);
  FieldByNumber = google::protobuf::Descriptor::FindFieldByNumber(v7, self->super._number);
  if (FieldByNumber || (FieldByNumber = google::protobuf::Reflection::FindKnownExtensionByNumber(a4, self->super._number)) != 0)
  {
    v10 = FieldByNumber;
    google::protobuf::Reflection::ClearField(a4, a3, FieldByNumber);
    type = self->super._type;
    if (type > 4)
    {
      if (type > 6)
      {
        if (type == 7)
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v45 = self->_values;
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v85, v113, 16);
          if (v49)
          {
            v50 = *v86;
            do
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v86 != v50)
                {
                  objc_enumerationMutation(v45);
                }

                v52 = objc_msgSend_BOOLValue(*(*(&v85 + 1) + 8 * i), v47, v48);
                google::protobuf::Reflection::AddBool(a4, a3, v10, v52);
              }

              v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v85, v113, 16);
            }

            while (v49);
          }
        }

        else if ((type - 8) < 3)
        {
          v84 = self->super._type;
          TSUSetCrashReporterInfo();
          v78 = MEMORY[0x277D81150];
          v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]", "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm", 554, v84);
          v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v83, v80, v82, 554, 1, "Unexpected field descriptor type (%d).", self->super._type);

          TSUCrashBreakpoint();
          abort();
        }
      }

      else if (type == 5)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v53 = self->_values;
        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v93, v115, 16);
        if (v57)
        {
          v58 = *v94;
          do
          {
            for (j = 0; j != v57; ++j)
            {
              if (*v94 != v58)
              {
                objc_enumerationMutation(v53);
              }

              objc_msgSend_doubleValue(*(*(&v93 + 1) + 8 * j), v55, v56);
              google::protobuf::Reflection::AddDouble(a4, a3, v10, v60);
            }

            v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v55, &v93, v115, 16);
          }

          while (v57);
        }
      }

      else
      {
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v20 = self->_values;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v89, v114, 16);
        if (v24)
        {
          v25 = *v90;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v90 != v25)
              {
                objc_enumerationMutation(v20);
              }

              objc_msgSend_floatValue(*(*(&v89 + 1) + 8 * k), v22, v23);
              google::protobuf::Reflection::AddFloat(a4, a3, v10, v27);
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v89, v114, 16);
          }

          while (v24);
        }
      }
    }

    else if (type > 2)
    {
      if (type == 3)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v69 = self->_values;
        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v101, v117, 16);
        if (v73)
        {
          v74 = *v102;
          do
          {
            for (m = 0; m != v73; ++m)
            {
              if (*v102 != v74)
              {
                objc_enumerationMutation(v69);
              }

              v76 = objc_msgSend_unsignedIntValue(*(*(&v101 + 1) + 8 * m), v71, v72);
              google::protobuf::Reflection::AddUInt32(a4, a3, v10, v76);
            }

            v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v71, &v101, v117, 16);
          }

          while (v73);
        }
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v28 = self->_values;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v97, v116, 16);
        if (v32)
        {
          v33 = *v98;
          do
          {
            for (n = 0; n != v32; ++n)
            {
              if (*v98 != v33)
              {
                objc_enumerationMutation(v28);
              }

              v35 = objc_msgSend_unsignedLongLongValue(*(*(&v97 + 1) + 8 * n), v30, v31);
              google::protobuf::Reflection::AddUInt64(a4, a3, v10, v35);
            }

            v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v30, &v97, v116, 16);
          }

          while (v32);
        }
      }
    }

    else if (type == 1)
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v61 = self->_values;
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v109, v119, 16);
      if (v65)
      {
        v66 = *v110;
        do
        {
          for (ii = 0; ii != v65; ++ii)
          {
            if (*v110 != v66)
            {
              objc_enumerationMutation(v61);
            }

            v68 = objc_msgSend_intValue(*(*(&v109 + 1) + 8 * ii), v63, v64);
            google::protobuf::Reflection::AddInt32(a4, a3, v10, v68);
          }

          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v63, &v109, v119, 16);
        }

        while (v65);
      }
    }

    else if (type == 2)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v12 = self->_values;
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v105, v118, 16);
      if (v16)
      {
        v17 = *v106;
        do
        {
          for (jj = 0; jj != v16; ++jj)
          {
            if (*v106 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v19 = objc_msgSend_longLongValue(*(*(&v105 + 1) + 8 * jj), v14, v15);
            google::protobuf::Reflection::AddInt64(a4, a3, v10, v19);
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v105, v118, 16);
        }

        while (v16);
      }
    }

    goto LABEL_72;
  }

  v36 = MEMORY[0x277D81150];
  v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPKnownFieldRepeatedNumericValue mergeToMessage:reflection:]");
  v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPKnownField.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v40, v37, v39, 499, 0, "Unexpected unknown field (%d).", self->super._number);

  v43 = MEMORY[0x277D81150];
  v44 = *MEMORY[0x277D85DE8];

  objc_msgSend_logBacktraceThrottled(v43, v41, v42);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSPKnownFieldRepeatedNumericValue;
  v4 = [(TSPKnownField *)&v8 debugDescription];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ values: %@", v4, self->_values);;

  return v6;
}

@end