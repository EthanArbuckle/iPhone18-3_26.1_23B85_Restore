@interface REMClockElementList
+ (BOOL)list:(id)list isCompatibleToList:(id)toList;
+ (int64_t)compareList:(id)list toList:(id)toList;
- (BOOL)isEqual:(id)equal;
- (REMClockElementList)initWithCRVectorTimestampElements:(id)elements;
- (REMClockElementList)initWithEntryArchive:(const void *)archive;
- (REMClockElementList)initWithTTVectorTimestampElements:(id)elements;
- (id)description;
- (void)encodeIntoEntryArchive:(void *)archive;
@end

@implementation REMClockElementList

- (REMClockElementList)initWithCRVectorTimestampElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = REMClockElementList;
  v5 = [(REMClockElementList *)&v9 init];
  if (v5)
  {
    v6 = [elementsCopy copy];
    elements = v5->_elements;
    v5->_elements = v6;
  }

  return v5;
}

- (REMClockElementList)initWithTTVectorTimestampElements:(id)elements
{
  v20 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = elementsCopy;
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

+ (BOOL)list:(id)list isCompatibleToList:(id)toList
{
  listCopy = list;
  toListCopy = toList;
  v7 = toListCopy;
  v8 = 1;
  if (listCopy && toListCopy)
  {
    elements = [listCopy elements];
    v10 = [elements count];
    elements2 = [v7 elements];
    v8 = v10 == [elements2 count];
  }

  return v8;
}

+ (int64_t)compareList:(id)list toList:(id)toList
{
  listCopy = list;
  toListCopy = toList;
  v7 = toListCopy;
  if (listCopy | toListCopy)
  {
    if (listCopy || !toListCopy)
    {
      if (!listCopy || toListCopy)
      {
        elements = [listCopy elements];
        v8 = [elements count];

        elements2 = [v7 elements];
        v12 = [elements2 count];

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
          elements3 = [listCopy elements];
          v15 = [elements3 objectAtIndexedSubscript:i];

          elements4 = [v7 elements];
          v17 = [elements4 objectAtIndexedSubscript:i];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && [REMClockElementList list:self isCompatibleToList:v6]&& [REMClockElementList compareList:self toList:v6]== 0;
  }

  return v7;
}

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  elements = [(REMClockElementList *)self elements];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(elements, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements2 = [(REMClockElementList *)self elements];
  v7 = [elements2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(elements2);
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu.%llu", objc_msgSend(*(*(&v16 + 1) + 8 * i), "clock"), objc_msgSend(*(*(&v16 + 1) + 8 * i), "subclock")];
        [v5 addObject:v10];
      }

      v7 = [elements2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 componentsJoinedByString:{@", "}];
    firstObject = [v12 stringWithFormat:@"[%@]", v13];
  }

  v14 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)encodeIntoEntryArchive:(void *)archive
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  elements = [(REMClockElementList *)self elements];
  v5 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(elements);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = *(archive + 15);
        v10 = *(archive + 14);
        if (v10 >= v9)
        {
          if (v9 == *(archive + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 6, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<replica_manager::VectorTimestampElement>::New();
        }

        v11 = *(archive + 6);
        *(archive + 14) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        clock = [v8 clock];
        *(v12 + 32) |= 1u;
        *(v12 + 40) = clock;
        subclock = [v8 subclock];
        *(v12 + 32) |= 2u;
        *(v12 + 48) = subclock;
        ++v7;
      }

      while (v5 != v7);
      v5 = [elements countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (REMClockElementList)initWithEntryArchive:(const void *)archive
{
  v4 = *(archive + 14);
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(archive + 14)];
    for (i = 0; i != v4; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<replica_manager::VectorTimestampElement>::TypeHandler>(archive + 48, i);
      replica_manager::VectorTimestampElement::VectorTimestampElement(v12, v8);
      v9 = objc_alloc_init(CRVectorTimestampElement);
      [(CRVectorTimestampElement *)v9 setClock:v13];
      [(CRVectorTimestampElement *)v9 setSubclock:v14];
      [v6 addObject:v9];

      replica_manager::VectorTimestampElement::~VectorTimestampElement(v12);
    }

    self = [(REMClockElementList *)self initWithCRVectorTimestampElements:v6];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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