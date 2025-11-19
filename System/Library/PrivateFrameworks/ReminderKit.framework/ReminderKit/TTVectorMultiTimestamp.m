@interface TTVectorMultiTimestamp
- (BOOL)isEqual:(id)a3;
- (TTVectorMultiTimestamp)initWithArchive:(const void *)a3 andCapacity:(unint64_t)a4;
- (TTVectorMultiTimestamp)initWithCapacity:(unint64_t)a3;
- (TTVectorMultiTimestamp)initWithData:(id)a3 andCapacity:(unint64_t)a4;
- (TTVectorMultiTimestamp)initWithTimestamps:(id)a3;
- (id)clockElementForUUID:(id)a3 atIndex:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serialize;
- (id)sortedUUIDs;
- (unint64_t)clockForUUID:(id)a3 atIndex:(unint64_t)a4;
- (unint64_t)compareTo:(id)a3;
- (void)mergeWithTimestamp:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)setClock:(unint64_t)a3 forUUID:(id)a4 atIndex:(unint64_t)a5;
- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5 atIndex:(unint64_t)a6;
@end

@implementation TTVectorMultiTimestamp

- (TTVectorMultiTimestamp)initWithCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = TTVectorMultiTimestamp;
  v4 = [(TTVectorMultiTimestamp *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3];
    timestamps = v4->_timestamps;
    v4->_timestamps = v5;

    if (a3)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(TTVectorTimestamp);
        [(NSArray *)v4->_timestamps setObject:v8 atIndexedSubscript:v7];

        ++v7;
      }

      while (a3 != v7);
    }
  }

  return v4;
}

- (TTVectorMultiTimestamp)initWithTimestamps:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TTVectorMultiTimestamp;
  v5 = [(TTVectorMultiTimestamp *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    timestamps = v5->_timestamps;
    v5->_timestamps = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TTVectorMultiTimestamp alloc] initWithCapacity:[(NSArray *)self->_timestamps count]];
  [(TTVectorMultiTimestamp *)v4 mergeWithTimestamp:self];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTVectorMultiTimestamp *)self compareTo:v4]== 0;

  return v5;
}

- (id)clockElementForUUID:(id)a3 atIndex:(unint64_t)a4
{
  timestamps = self->_timestamps;
  v6 = a3;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:a4];
  v8 = [v7 clockElementForUUID:v6];

  return v8;
}

- (unint64_t)clockForUUID:(id)a3 atIndex:(unint64_t)a4
{
  timestamps = self->_timestamps;
  v6 = a3;
  v7 = [(NSArray *)timestamps objectAtIndexedSubscript:a4];
  v8 = [v7 clockForUUID:v6];

  return v8;
}

- (void)setClock:(unint64_t)a3 forUUID:(id)a4 atIndex:(unint64_t)a5
{
  timestamps = self->_timestamps;
  v8 = a4;
  v9 = [(NSArray *)timestamps objectAtIndexedSubscript:a5];
  [v9 setClock:a3 forUUID:v8];
}

- (void)setClock:(unint64_t)a3 subclock:(unint64_t)a4 forUUID:(id)a5 atIndex:(unint64_t)a6
{
  timestamps = self->_timestamps;
  v10 = a5;
  v11 = [(NSArray *)timestamps objectAtIndexedSubscript:a6];
  [v11 setClock:a3 subclock:a4 forUUID:v10];
}

- (id)sortedUUIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v8 = [v7 allUUIDs];
      [v3 addObjectsFromArray:v8];
    }
  }

  v9 = [v3 allObjects];
  v10 = [v9 sortedArrayUsingSelector:sel_TTCompare_];

  return v10;
}

- (unint64_t)compareTo:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_timestamps count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v10 = [v4 timestamps];
      v11 = [v10 objectAtIndexedSubscript:i];
      v7 |= [v9 compareTo:v11];

      if (v7 == 5)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWithTimestamp:(id)a3
{
  v10 = a3;
  v4 = [(NSArray *)self->_timestamps count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NSArray *)self->_timestamps objectAtIndexedSubscript:i];
      v8 = [v10 timestamps];
      v9 = [v8 objectAtIndexedSubscript:i];
      [v7 mergeWithTimestamp:v9];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>(\n%@\n)", v5, self, self->_timestamps];

  return v6;
}

- (TTVectorMultiTimestamp)initWithData:(id)a3 andCapacity:(unint64_t)a4
{
  v6 = a3;
  topotext::VectorTimestamp::VectorTimestamp(v12);
  v7 = [v6 bytes];
  v8 = TTBoundedCheckedCastNSUIntegerToUInt32([v6 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v12, v7, v8))
  {
    self = [(TTVectorMultiTimestamp *)self initWithArchive:v12 andCapacity:a4];
    v9 = self;
  }

  else
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [TTVectorMultiTimestamp(TTVectorTimestampPersistenceAdditions) initWithData:v10 andCapacity:?];
    }

    v9 = 0;
  }

  topotext::VectorTimestamp::~VectorTimestamp(v12);

  return v9;
}

- (TTVectorMultiTimestamp)initWithArchive:(const void *)a3 andCapacity:(unint64_t)a4
{
  v6 = [(TTVectorMultiTimestamp *)self initWithCapacity:a4];
  v7 = v6;
  if (!v6)
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  v8 = *(a3 + 12);
  v9 = v6;
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(a3 + 40, v10);
      v12 = v11;
      if ((*(v11 + 32) & 1) == 0)
      {
        break;
      }

      v13 = *(v11 + 40);
      v14 = *(v13 + 23);
      if (v14 < 0)
      {
        v14 = *(v13 + 8);
      }

      if (v14 != 16)
      {
        break;
      }

      v15 = objc_alloc(MEMORY[0x1E696AFB0]);
      v16 = *(v12 + 40);
      if (*(v16 + 23) < 0)
      {
        v16 = *v16;
      }

      v17 = [v15 initWithUUIDBytes:v16];
      v18 = *(v12 + 56);
      if (v18 != a4)
      {
        v22 = +[REMLog crdt];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(TTVectorMultiTimestamp(TTVectorTimestampPersistenceAdditions) *)v18 initWithArchive:a4 andCapacity:v22];
        }

        goto LABEL_27;
      }

      if (v18)
      {
        v19 = 0;
        do
        {
          if (*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 32))
          {
            v20 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 40);
          }

          else
          {
            v20 = 0;
          }

          if ((*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 32) & 2) != 0)
          {
            v21 = *(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(v12 + 48, v19) + 44);
          }

          else
          {
            v21 = 0;
          }

          [(TTVectorMultiTimestamp *)v7 setClock:v20 subclock:v21 forUUID:v17 atIndex:v19++];
        }

        while (a4 != v19);
      }

      if (++v10 == v8)
      {
        v9 = v7;
        goto LABEL_29;
      }
    }

    v17 = +[REMLog crdt];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [TTVectorMultiTimestamp(TTVectorTimestampPersistenceAdditions) initWithArchive:v17 andCapacity:?];
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_29:
  v23 = v9;

  return v23;
}

- (void)saveToArchive:(void *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(TTVectorMultiTimestamp *)self sortedUUIDs];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v24 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = *(a3 + 13);
        v9 = *(a3 + 12);
        if (v9 >= v8)
        {
          if (v8 == *(a3 + 14))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 5, v8 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock>::New();
        }

        v10 = *(a3 + 5);
        *(a3 + 12) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v29[0] = 0;
        v29[1] = 0;
        [v7 getUUIDBytes:v29];
        *(v11 + 32) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        if (*(v11 + 40) == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        MEMORY[0x19A8FCFF0]();
        v12 = [(TTVectorMultiTimestamp *)self timestamps];
        v13 = [v12 count];

        if (v13)
        {
          for (j = 0; j != v13; ++j)
          {
            v15 = [(TTVectorMultiTimestamp *)self clockElementForUUID:v7 atIndex:j];
            v16 = *(v11 + 60);
            v17 = *(v11 + 56);
            if (v17 >= v16)
            {
              if (v16 == *(v11 + 64))
              {
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 48), v16 + 1);
              }

              google::protobuf::internal::GenericTypeHandler<topotext::VectorTimestamp_Clock_ReplicaClock>::New();
            }

            v18 = *(v11 + 48);
            *(v11 + 56) = v17 + 1;
            v19 = *(v18 + 8 * v17);
            if ([v15 clock])
            {
              v20 = TTBoundedCheckedCastNSUIntegerToUInt32([v15 clock]);
              v19[8] |= 1u;
              v19[10] = v20;
            }

            if ([v15 subclock])
            {
              v21 = TTBoundedCheckedCastNSUIntegerToUInt32([v15 subclock]);
              v19[8] |= 2u;
              v19[11] = v21;
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)serialize
{
  [(TTVectorMultiTimestamp *)self saveToArchive:v6, topotext::VectorTimestamp::VectorTimestamp(v6)];
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::VectorTimestamp::ByteSize(v6)];
  v3 = [v2 mutableBytes];
  v4 = TTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, v3, v4);
  topotext::VectorTimestamp::~VectorTimestamp(v6);

  return v2;
}

@end