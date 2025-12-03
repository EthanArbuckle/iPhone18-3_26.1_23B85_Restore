@interface TSPRegistry
+ (id)sharedRegistry;
+ (void)setInitializationHandler:(id)handler;
- (Class)unarchiveClassForMessageType:(unsigned int)type;
- (TSPRegistry)init;
- (const)messagePrototypeForMessageType:(unsigned int)type;
- (id).cxx_construct;
- (id)description;
- (unsigned)messageTypeForDescriptor:(const void *)descriptor;
- (unsigned)messageTypeForUnarchiveClassname:(const char *)classname;
- (void)dealloc;
- (void)registerPersistenceMessages;
- (void)resetForMessageType:(unsigned int)type descriptor:(const void *)descriptor;
- (void)setMessageType:(unsigned int)type forUnarchiveClassname:(const char *)classname;
- (void)setOverrideMessageType:(unsigned int)type messagePrototype:(const Message *)prototype descriptor:(const void *)descriptor;
- (void)setUpgradeMessageType:(unsigned int)type messagePrototype:(const Message *)prototype unarchiveClass:(Class)class unarchiveClassname:(const char *)classname;
- (void)setUpgradeMessageType:(unsigned int)type messagePrototype:(const Message *)prototype unarchiveClassname:(const char *)classname;
@end

@implementation TSPRegistry

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A1DA18;
  block[3] = &unk_27A6E4768;
  block[4] = self;
  if (qword_280A526B0 != -1)
  {
    dispatch_once(&qword_280A526B0, block);
  }

  v2 = qword_280A526B8;

  return v2;
}

+ (void)setInitializationHandler:(id)handler
{
  __dmb(0xBu);
  handlerCopy = handler;
  os_unfair_lock_lock(&unk_280A526C0);
  v4 = _Block_copy(handlerCopy);

  v5 = qword_280A526A8;
  qword_280A526A8 = v4;

  os_unfair_lock_unlock(&unk_280A526C0);
  v6 = MEMORY[0x277D85CD0];

  dispatch_async(v6, &unk_2885C1B70);
}

- (TSPRegistry)init
{
  v8.receiver = self;
  v8.super_class = TSPRegistry;
  v2 = [(TSPRegistry *)&v8 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_registerPersistenceMessages(v2, v3, v4);
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  for (i = self->_classnameToMessageTypeMap.__table_.__first_node_.__next_; i; i = *i)
  {
    free(i[2]);
  }

  v4.receiver = self;
  v4.super_class = TSPRegistry;
  [(TSPRegistry *)&v4 dealloc];
}

- (void)registerPersistenceMessages
{
  v3 = sub_2769E7918();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v4, 11006, v3, off_2812FBC48[20], "TSPPackageMetadata");
  v6 = TSP::ObjectContainer::default_instance(v5);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v7, 11008, v6, off_2812FC248[60], "TSPObjectContainer");
  v8 = sub_2769EF068();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v10 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v9, 11009, v8, off_2812FBC48[38], "TSPViewStateMetadata");
  v11 = TSP::ObjectCollection::default_instance(v10);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v12, 11010, v11, off_2812FC248[58], "TSPObjectCollection");
  v13 = sub_2769F335C();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v14, 11011, v13, off_2812FBC48[50], "TSPDocumentMetadata");
  v15 = sub_2769F46E4();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v16, 11012, v15, off_2812FBC48[54], "TSPSupportMetadata");
  v17 = sub_2769EFF20();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v18, 11013, v17, off_2812FBC48[40], "TSPObjectSerializationMetadata");
  v19 = sub_2769ED9C0();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v20, 11014, v19, off_2812FBC48[32], "TSPDataMetadata");
  v21 = sub_2769ED210();
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v23 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v22, 11015, v21, off_2812FBC48[30], "TSPDataMetadataMap");
  v24 = TSP::LargeNumberArraySegment::default_instance(v23);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v26 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v25, 11016, v24, off_2812FC248[66], "TSPMutableLargeNumberArraySegment");
  v27 = TSP::LargeStringArraySegment::default_instance(v26);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v29 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v28, 11017, v27, off_2812FC248[70], "TSPMutableLargeStringArraySegment");
  v30 = TSP::LargeLazyObjectArraySegment::default_instance(v29);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v32 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v31, 11018, v30, off_2812FC248[74], "TSPMutableLargeLazyReferenceArraySegment");
  v33 = TSP::LargeNumberArray::default_instance(v32);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v35 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v34, 11019, v33, off_2812FC248[80], "TSPMutableLargeNumberArray");
  v36 = TSP::LargeStringArray::default_instance(v35);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v38 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v37, 11020, v36, off_2812FC248[82], "TSPMutableLargeStringArray");
  v39 = TSP::LargeLazyObjectArray::default_instance(v38);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v40, 11021, v39, off_2812FC248[84], "TSPMutableLargeLazyObjectArray");
  objc_msgSend_setDeprecatedMessageType_(self, v41, 11022);
  v43 = objc_msgSend_setDeprecatedMessageType_(self, v42, 11023);
  v44 = TSP::LargeUUIDArraySegment::default_instance(v43);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v46 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v45, 11024, v44, off_2812FC248[72], "TSPMutableLargeUUIDArraySegment");
  v47 = TSP::LargeUUIDArray::default_instance(v46);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v49 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v48, 11025, v47, off_2812FC248[88], "TSPMutableLargeUUIDArray");
  v50 = TSP::LargeObjectArraySegment::default_instance(v49);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v52 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v51, 11026, v50, off_2812FC248[76], "TSPMutableLargeObjectArraySegment");
  v53 = TSP::LargeObjectArray::default_instance(v52);
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(self, v54, 11027, v53, off_2812FC248[86], "TSPMutableLargeObjectArray");
  v55 = objc_opt_class();
  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClass_unarchiveClassname_(self, v56, 11001, 0, v55, "TSPDatabaseDataObject");
  v57 = objc_opt_class();
  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClass_unarchiveClassname_(self, v58, 11002, 0, v57, "TSPDatabaseDataObject");
  v59 = objc_opt_class();
  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClass_unarchiveClassname_(self, v60, 11005, 0, v59, "TSPDatabaseDataObject");
  v62 = objc_opt_class();

  objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClass_unarchiveClassname_(self, v61, 11199, 0, v62, "TSPUnknownObject");
}

- (const)messagePrototypeForMessageType:(unsigned int)type
{
  typeCopy = type;
  result = sub_276A1F0D4(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (result)
  {
    return result[1].var1.ptr_;
  }

  return result;
}

- (unsigned)messageTypeForDescriptor:(const void *)descriptor
{
  descriptorCopy = descriptor;
  v3 = sub_276A1F188(&self->_descriptorToMessageTypeMap.__table_.__bucket_list_.__ptr_, &descriptorCopy);
  if (!v3)
  {
    v5 = descriptorCopy[1];
    if (*(v5 + 23) < 0)
    {
      v5 = *v5;
    }

    v13 = v5;
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPRegistry messageTypeForDescriptor:]", "[TSPRegistry messageTypeForDescriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm", 206, v13);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
    v12 = descriptorCopy[1];
    if (*(v12 + 23) < 0)
    {
      v12 = *v12;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v8, v11, 206, 1, "Descriptor %{public}s isn't registered", v12);

    TSUCrashBreakpoint();
    abort();
  }

  return *(v3 + 6);
}

- (Class)unarchiveClassForMessageType:(unsigned int)type
{
  typeCopy = type;
  Class = sub_276A1F0D4(&self->_messageTypeToClassMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (Class)
  {
    v5 = Class;
    Class = Class[3];
    if (!Class)
    {
      v6 = sub_276A1F0D4(&self->_messageTypeToClassnameMap.__table_.__bucket_list_.__ptr_, &typeCopy);
      if (v6)
      {
        v8 = v6[3];
        Class = objc_getClass(v8);
        if (!Class)
        {
          v23 = v8;
          TSUSetCrashReporterInfo();
          v17 = MEMORY[0x277D81150];
          v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPRegistry unarchiveClassForMessageType:]", "[TSPRegistry unarchiveClassForMessageType:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm", 227, v8);
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v19, v21, 227, 1, "No class for name %{public}s", v23);

          TSUCrashBreakpoint();
          abort();
        }

        v5[3] = Class;
      }

      else
      {
        v9 = MEMORY[0x277D81150];
        v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPRegistry unarchiveClassForMessageType:]");
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 230, 0, "Message type %u isn't registered", typeCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
        Class = 0;
      }
    }
  }

  return Class;
}

- (unsigned)messageTypeForUnarchiveClassname:(const char *)classname
{
  classnameCopy = classname;
  if (classname)
  {
    v3 = sub_276A1F240(&self->_classnameToMessageTypeMap.__table_.__bucket_list_.__ptr_, &classnameCopy);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 6);
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (void)setMessageType:(unsigned int)type forUnarchiveClassname:(const char *)classname
{
  typeCopy = type;
  __s = classname;
  if (!sub_276A1F240(&self->_classnameToMessageTypeMap.__table_.__bucket_list_.__ptr_, &__s))
  {
    v4 = strlen(__s);
    v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    strcpy(v5, __s);
    sub_276A1F354();
  }
}

- (void)resetForMessageType:(unsigned int)type descriptor:(const void *)descriptor
{
  typeCopy = type;
  descriptorCopy = descriptor;
  v5 = sub_276A1F0D4(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (v5)
  {
    sub_276A1F638(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, v5);
  }

  v6 = sub_276A1F188(&self->_descriptorToMessageTypeMap.__table_.__bucket_list_.__ptr_, &descriptorCopy);
  if (v6)
  {
    sub_276A1F638(&self->_descriptorToMessageTypeMap.__table_.__bucket_list_.__ptr_, v6);
  }

  v7 = sub_276A1F0D4(&self->_messageTypeToClassMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (v7)
  {
    sub_276A1F638(&self->_messageTypeToClassMap.__table_.__bucket_list_.__ptr_, v7);
  }

  v8 = sub_276A1F0D4(&self->_messageTypeToClassnameMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (v8)
  {
    sub_276A1F638(&self->_messageTypeToClassnameMap.__table_.__bucket_list_.__ptr_, v8);
  }
}

- (void)setUpgradeMessageType:(unsigned int)type messagePrototype:(const Message *)prototype unarchiveClassname:(const char *)classname
{
  typeCopy = type;
  sub_276A1F67C(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  sub_276A1FB00(&self->_messageTypeToClassnameMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  sub_276A1FD44(&self->_messageTypeToClassMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  objc_msgSend_setMessageType_forUnarchiveClassname_(self, v6, typeCopy, classname, 0);
}

- (void)setUpgradeMessageType:(unsigned int)type messagePrototype:(const Message *)prototype unarchiveClass:(Class)class unarchiveClassname:(const char *)classname
{
  typeCopy = type;
  if (!type)
  {
    if (classname)
    {
      classnameCopy = classname;
    }

    else
    {
      classnameCopy = "Nil";
    }

    TSUSetCrashReporterInfo();
    v13 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPRegistry setUpgradeMessageType:messagePrototype:unarchiveClass:unarchiveClassname:]", "[TSPRegistry setUpgradeMessageType:messagePrototype:unarchiveClass:unarchiveClassname:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm", 374, classnameCopy);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 374, 1, "Don't use a message type of 0 for class %{public}s", classnameCopy);
LABEL_12:

    TSUCrashBreakpoint();
    abort();
  }

  v9 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(class, v10, v9) & 1) == 0)
  {
    if (classname)
    {
      classnameCopy2 = classname;
    }

    else
    {
      classnameCopy2 = "Nil";
    }

    TSUSetCrashReporterInfo();
    v20 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSPRegistry setUpgradeMessageType:messagePrototype:unarchiveClass:unarchiveClassname:]", "[TSPRegistry setUpgradeMessageType:messagePrototype:unarchiveClass:unarchiveClassname:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm", 375, classnameCopy2);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v23, v15, v17, 375, 1, "Putting a non-TSPObject class in TSPRegistry: %{public}s", classnameCopy2);
    goto LABEL_12;
  }

  sub_276A1F67C(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  sub_276A1FF78(&self->_messageTypeToClassMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  objc_msgSend_setMessageType_forUnarchiveClassname_(self, v11, typeCopy, classname);
}

- (void)setOverrideMessageType:(unsigned int)type messagePrototype:(const Message *)prototype descriptor:(const void *)descriptor
{
  typeCopy = type;
  descriptorCopy = descriptor;
  v7 = sub_276A1F0D4(&self->_messageTypeToPrototypeMap.__table_.__bucket_list_.__ptr_, &typeCopy);
  if (!v7)
  {
    v14 = typeCopy;
    TSUSetCrashReporterInfo();
    v8 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPRegistry setOverrideMessageType:messagePrototype:descriptor:]", "[TSPRegistry setOverrideMessageType:messagePrototype:descriptor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm", 392, v14, descriptorCopy);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRegistry.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 392, 1, "No class to override for message type %u", typeCopy);

    TSUCrashBreakpoint();
    abort();
  }

  v7[3] = prototype;
  sub_276A1F8C0(&self->_descriptorToMessageTypeMap.__table_.__bucket_list_.__ptr_, &descriptorCopy);
}

- (id)description
{
  v3 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], a2, 1024);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p \n", v5, self);

  objc_msgSend_appendString_(v3, v7, @" _messageTypeToPrototypeMap = {\n");
  p_first_node = &self->_messageTypeToPrototypeMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next_low = LODWORD(p_first_node[2].__next_);
    next = p_first_node[3].__next_;
    if (next)
    {
      v12 = *((*(*next + 152))(p_first_node[3].__next_) + 8);
      if ((v12[23] & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      objc_msgSend_appendFormat_(v3, v8, @"\t%d -> %p %s\n", next_low, next, *v12);
    }

    else
    {
      v12 = "null";
LABEL_7:
      objc_msgSend_appendFormat_(v3, v8, @"\t%d -> %p %s\n", next_low, next, v12);
    }
  }

  objc_msgSend_appendString_(v3, v8, @" }\n");
  objc_msgSend_appendString_(v3, v13, @" _descriptorToMessageTypeMap = {\n");
  v15 = &self->_descriptorToMessageTypeMap.__table_.__first_node_;
  while (1)
  {
    v15 = v15->__next_;
    if (!v15)
    {
      break;
    }

    v16 = v15[2].__next_;
    if (v16)
    {
      v17 = *(v16 + 1);
      if ((v17[23] & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      objc_msgSend_appendFormat_(v3, v14, @"\t%p %s -> %d\n", v16, *v17, LODWORD(v15[3].__next_));
    }

    else
    {
      v17 = "null";
LABEL_15:
      objc_msgSend_appendFormat_(v3, v14, @"\t%p %s -> %d\n", v16, v17, LODWORD(v15[3].__next_));
    }
  }

  objc_msgSend_appendString_(v3, v14, @" }\n");
  objc_msgSend_appendString_(v3, v18, @" _messageTypeToClassnameMap = {\n");
  for (i = &self->_messageTypeToClassnameMap.__table_.__first_node_; ; objc_msgSend_appendFormat_(v3, v19, @"\t%d -> %s\n", LODWORD(i[2].__next_), i[3].__next_))
  {
    i = i->__next_;
    if (!i)
    {
      break;
    }
  }

  objc_msgSend_appendString_(v3, v19, @" }\n");
  objc_msgSend_appendString_(v3, v21, @" _messageTypeToClassMap = {\n");
  for (j = self->_messageTypeToClassMap.__table_.__first_node_.__next_; j; j = *j)
  {
    v24 = j[4];
    v25 = *(j + 3);
    if (v25)
    {
      self = NSStringFromClass(*(j + 3));
      objc_msgSend_appendFormat_(v3, v26, @"\t%d -> %@\n", v24, self);
    }

    else
    {
      objc_msgSend_appendFormat_(v3, v22, @"\t%d -> %@\n", v24, @"null");
    }

    if (v25)
    {
    }
  }

  objc_msgSend_appendString_(v3, v22, @" }\n");
  objc_msgSend_appendFormat_(v3, v27, @">");

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 40) = 1065353216;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 50) = 1065353216;
  return self;
}

@end