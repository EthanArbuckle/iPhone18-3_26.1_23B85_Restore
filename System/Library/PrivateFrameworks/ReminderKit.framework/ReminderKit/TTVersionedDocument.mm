@interface TTVersionedDocument
- (TTVersionedDocument)initWithArchive:(const void *)a3;
- (TTVersionedDocument)initWithData:(id)a3;
- (id)serialize;
- (unint64_t)mergeWithVersionedDocument:(id)a3;
- (unsigned)maxDocumentVersion;
- (void)dealloc;
- (void)loadData:(id)a3;
- (void)loadDocumentArchive:(void *)a3;
- (void)saveCurrentVersion:(void *)a3;
- (void)saveToArchive:(void *)a3;
- (void)serialize;
@end

@implementation TTVersionedDocument

- (TTVersionedDocument)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TTVersionedDocument;
  v5 = [(TTVersionedDocument *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TTVersionedDocument *)v5 loadData:v4];
  }

  return v6;
}

- (TTVersionedDocument)initWithArchive:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = TTVersionedDocument;
  v4 = [(TTVersionedDocument *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TTVersionedDocument *)v4 loadArchive:a3];
  }

  return v5;
}

- (void)loadData:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a3;
  operator new();
}

- (void)loadDocumentArchive:(void *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() serializationVersion];
  v6 = *(a3 + 12);
  if (!v6)
  {
    v10 = -1;
    goto LABEL_34;
  }

  v7 = v5;
  v8 = 0;
  v9 = -1;
  v10 = -1;
  do
  {
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a3 + 40, v8);
    versioned_document::Version::Version(v40, v11);
    if (v10 < 0 && v41 <= v7)
    {
      v10 = v8;
    }

    if (v41 < v7)
    {
      if (v9 < 0)
      {
        v9 = v8;
      }

      versioned_document::Version::~Version(v40);
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_34:
      v22 = +[REMLog crdt];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(TTVersionedDocument *)v22 loadDocumentArchive:v23, v24, v25, v26, v27, v28, v29];
      }

      goto LABEL_37;
    }

    if (v42 <= v7)
    {
      v9 = v8;
    }

    versioned_document::Version::~Version(v40);
    ++v8;
  }

  while (v6 != v8);
  if (v9 < 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v9 >= v6)
  {
LABEL_37:
    if (v10 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  *&v13 = 67109632;
  v39 = v13;
  while (1)
  {
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a3 + 40, v9);
    versioned_document::Version::Version(v40, v14);
    v15 = v43;
    v16 = *(v43 + 23);
    if (v16 < 0)
    {
      v15 = *v43;
      v16 = v43[1];
    }

    v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:v16 freeWhenDone:{0, v39}];
    if (v41 < v7)
    {
      v18 = +[REMLog crdt];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v45 = v41;
        v46 = 1024;
        v47 = v7;
        v19 = v18;
        v20 = "Loading old version %d < %d";
        v21 = 14;
LABEL_31:
        _os_log_debug_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_DEBUG, v20, buf, v21);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    if (v41 != v7)
    {
      break;
    }

    v18 = +[REMLog crdt];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v45 = v7;
      v19 = v18;
      v20 = "Loading current version %d";
      v21 = 8;
      goto LABEL_31;
    }

LABEL_32:

    [(TTVersionedDocument *)self mergeVersion:v41 fromData:v17];
    versioned_document::Version::~Version(v40);
    if (v6 == ++v9)
    {
      goto LABEL_37;
    }
  }

  if (v42 <= v7)
  {
    v18 = +[REMLog crdt];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = v39;
      v45 = v41;
      v46 = 1024;
      v47 = v7;
      v48 = 1024;
      v49 = v42;
      v19 = v18;
      v20 = "Loading future version %d > %d where min-supported %d";
      v21 = 20;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v31 = +[REMLog crdt];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [(TTVersionedDocument *)v31 loadDocumentArchive:v32, v33, v34, v35, v36, v37, v38];
  }

  versioned_document::Version::~Version(v40);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_38:
    google::protobuf::RepeatedPtrField<versioned_document::Version>::DeleteSubrange((a3 + 40), v10, *(a3 + 12) - v10);
  }

LABEL_39:
  v30 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  documentArchive = self->_documentArchive;
  if (documentArchive)
  {
    (*(*documentArchive + 8))(documentArchive, a2);
  }

  v4.receiver = self;
  v4.super_class = TTVersionedDocument;
  [(TTVersionedDocument *)&v4 dealloc];
}

- (void)saveCurrentVersion:(void *)a3
{
  v5 = [objc_opt_class() minimumSupportedVersion];
  v8 = 0;
  v6 = [(TTVersionedDocument *)self serializeCurrentVersion:&v8];
  v7 = v8;
  *(a3 + 8) |= 3u;
  *(a3 + 10) = v7;
  *(a3 + 11) = v5;
  [v6 bytes];
  [v6 length];
  *(a3 + 8) |= 4u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  if (*(a3 + 6) == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  MEMORY[0x19A8FCFF0]();
}

- (unint64_t)mergeWithVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(TTVersionedDocument *)self documentArchive];
  v6 = [v4 documentArchive];
  if (v6 != v5)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((v5 + 40));
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((v5 + 40), (v6 + 40));
  }

  return 1;
}

- (unsigned)maxDocumentVersion
{
  if (*([(TTVersionedDocument *)self documentArchive]+ 48) < 1)
  {
    v6 = objc_opt_class();

    return [v6 serializationVersion];
  }

  else
  {
    v3 = [(TTVersionedDocument *)self documentArchive];
    if (v3[12] <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 886);
      v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
      google::protobuf::internal::LogFinisher::operator=(&v7, v4);
      google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
    }

    return *(**(v3 + 5) + 40);
  }
}

- (id)serialize
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = +[REMLog crdt];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [objc_opt_class() serializationVersion];
    [[(TTVersionedDocument *)self documentArchive] serialize];
  }

  v5 = [(TTVersionedDocument *)self documentArchive];
  v6 = +[TTVersionedDocument versionedDocumentSerializationVersion];
  v5[8] |= 1u;
  v5[16] = v6;
  v7 = [(TTVersionedDocument *)self documentArchive];
  v8 = *(v7 + 13);
  v9 = *(v7 + 12);
  if (v9 >= v8)
  {
    if (v8 == *(v7 + 14))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v7 + 5, v8 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v10 = v7[5];
  *(v7 + 12) = v9 + 1;
  [(TTVersionedDocument *)self saveCurrentVersion:*(v10 + 8 * v9)];
  v11 = objc_alloc(MEMORY[0x1E695DF88]);
  v12 = [(TTVersionedDocument *)self documentArchive];
  v13 = [v11 initWithLength:(*(*v12 + 72))(v12)];
  v14 = [(TTVersionedDocument *)self documentArchive];
  v15 = v13;
  google::protobuf::MessageLite::SerializeToArray(v14, [v13 mutableBytes], objc_msgSend(v13, "length"));
  v16 = [(TTVersionedDocument *)self documentArchive];
  v17 = v16;
  v18 = v16[12];
  if (v18 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/ReminderKit/CRProtobuf/protobuf-lite/google/protobuf/repeated_field.h", 913);
    v19 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (current_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v25, v19);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
    v18 = v17[12];
  }

  v20 = *(v17 + 5);
  v21 = v18 - 1;
  v17[12] = v21;
  (*(**(v20 + 8 * v21) + 32))(*(v20 + 8 * v21));
  v22 = [v13 TT_gzipDeflate];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)saveToArchive:(void *)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v5 = +[REMLog crdt];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [objc_opt_class() serializationVersion];
    [[(TTVersionedDocument *)self documentArchive] serialize];
  }

  v7 = +[TTVersionedDocument versionedDocumentSerializationVersion];
  *(a3 + 8) |= 1u;
  *(a3 + 16) = v7;
  v8 = [(TTVersionedDocument *)self documentArchive];
  if (v8 != a3)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(a3 + 40);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>((a3 + 40), (v8 + 40));
  }

  v9 = *(a3 + 13);
  v10 = *(a3 + 12);
  if (v10 >= v9)
  {
    if (v9 == *(a3 + 14))
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 5, v9 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<versioned_document::Version>::New();
  }

  v11 = *(a3 + 5);
  *(a3 + 12) = v10 + 1;
  [(TTVersionedDocument *)self saveCurrentVersion:*(v11 + 8 * v10)];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)loadData:(int)a3 .cold.1(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_error_impl(&dword_19A0DB000, log, OS_LOG_TYPE_ERROR, "TTVersionedDocument is wrong versionedDocumentSerializationVersion %d != %d.", buf, 0xEu);
}

- (void)serialize
{
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0_14(1.5047e-36, a1, a2, a3);
  _os_log_debug_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEBUG, "Saving versioned document %d with %d future versions.", v4, 0xEu);
}

@end