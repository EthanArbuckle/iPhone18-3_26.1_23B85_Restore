@interface REMClockElementList
+ (BOOL)list:(id)a3 isCompatibleToList:(id)a4;
+ (int64_t)compareList:(id)a3 toList:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REMClockElementList)initWithCRVectorTimestampElements:(id)a3;
- (REMClockElementList)initWithEntryArchive:(const void *)a3;
- (REMClockElementList)initWithTTVectorTimestampElements:(id)a3;
- (id)description;
- (void)encodeIntoEntryArchive:(void *)a3;
@end

@implementation REMClockElementList

- (REMClockElementList)initWithCRVectorTimestampElements:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMClockElementList;
  v5 = [(REMClockElementList *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    elements = v5->_elements;
    v5->_elements = v6;
  }

  return v5;
}

- (REMClockElementList)initWithTTVectorTimestampElements:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_alloc_init(CRVectorTimestampElement);
        -[CRVectorTimestampElement setClock:](v11, "setClock:", [v10 clock]);
        -[CRVectorTimestampElement setSubclock:](v11, "setSubclock:", [v10 subclock]);
        [v5 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [(REMClockElementList *)self initWithCRVectorTimestampElements:v5];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (BOOL)list:(id)a3 isCompatibleToList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 1;
  if (v5 && v6)
  {
    v9 = [v5 elements];
    v10 = [v9 count];
    v11 = [v7 elements];
    v8 = v10 == [v11 count];
  }

  return v8;
}

+ (int64_t)compareList:(id)a3 toList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    if (v5 || !v6)
    {
      if (!v5 || v6)
      {
        v10 = [v5 elements];
        v8 = [v10 count];

        v11 = [v7 elements];
        v12 = [v11 count];

        if (v8 == v12)
        {
          if (!v8)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v19 = +[REMLog crdt];
          [(REMClockElementList *)v19 compareList:v8 toList:v12];
          if (!v8)
          {
            goto LABEL_6;
          }
        }

        for (i = 0; i != v8; ++i)
        {
          v14 = [v5 elements];
          v15 = [v14 objectAtIndexedSubscript:i];

          v16 = [v7 elements];
          v17 = [v16 objectAtIndexedSubscript:i];

          v18 = [v15 rem_compareToVectorTimestampElement:v17];
        }

        if (v18 == -1)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2 * (v18 == 1);
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [REMClockElementList list:self isCompatibleToList:v6]&& [REMClockElementList compareList:self toList:v6]== 0;
  }

  return v7;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(REMClockElementList *)self elements];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(REMClockElementList *)self elements];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu.%llu", objc_msgSend(*(*(&v16 + 1) + 8 * i), "clock"), objc_msgSend(*(*(&v16 + 1) + 8 * i), "subclock")];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v5 count] == 1)
  {
    v11 = [v5 firstObject];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 componentsJoinedByString:{@", "}];
    v11 = [v12 stringWithFormat:@"[%@]", v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)encodeIntoEntryArchive:(void *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(REMClockElementList *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = *(a3 + 15);
        v10 = *(a3 + 14);
        if (v10 >= v9)
        {
          if (v9 == *(a3 + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 6, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<replica_manager::VectorTimestampElement>::New();
        }

        v11 = *(a3 + 6);
        *(a3 + 14) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        v13 = [v8 clock];
        *(v12 + 32) |= 1u;
        *(v12 + 40) = v13;
        v14 = [v8 subclock];
        *(v12 + 32) |= 2u;
        *(v12 + 48) = v14;
        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (REMClockElementList)initWithEntryArchive:(const void *)a3
{
  v4 = *(a3 + 14);
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a3 + 14)];
    for (i = 0; i != v4; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(a3 + 48, i);
      replica_manager::VectorTimestampElement::VectorTimestampElement(v12, v8);
      v9 = objc_alloc_init(CRVectorTimestampElement);
      [(CRVectorTimestampElement *)v9 setClock:v13];
      [(CRVectorTimestampElement *)v9 setSubclock:v14];
      [v6 addObject:v9];

      replica_manager::VectorTimestampElement::~VectorTimestampElement(v12);
    }

    self = [(REMClockElementList *)self initWithCRVectorTimestampElements:v6];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)compareList:(uint64_t)a3 toList:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v7 = 134218240;
    v8 = a2;
    v9 = 2048;
    v10 = a3;
    _os_log_fault_impl(&dword_19A0DB000, a1, OS_LOG_TYPE_FAULT, "rem_log_fault_if (aCount != bCount) -- clock elements should have the same count {aCount: %ld, bCount: %ld}", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end