@interface PLPersistentHistoryTransactionModifiers
+ (id)transactionAuthorFromChangeSource:(int)source syncChangeMarker:(BOOL)marker nonCoalescing:(BOOL)coalescing;
+ (id)transactionModifiersFromTransactionAuthor:(id)author;
- (BOOL)updateFromTransactionAuthor:(id)author;
- (PLPersistentHistoryTransactionModifiers)initWithChangeSource:(int)source syncChangeMarker:(BOOL)marker nonCoalescing:(BOOL)coalescing;
- (id)_descriptionWithBuilder:(id)builder;
- (id)_pl_prettyDescriptionWithIndent:(int64_t)indent;
- (id)description;
- (id)encodeAsTransactionAuthor;
@end

@implementation PLPersistentHistoryTransactionModifiers

- (id)_descriptionWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = PLStringFromXPCChangeSource();
  [builderCopy appendName:@"changeSource" object:v5];

  [builderCopy appendName:@"syncChangeMarker" typeCode:"B" value:&self->_syncChangeMarker];
  build = [builderCopy build];

  return build;
}

- (id)_pl_prettyDescriptionWithIndent:(int64_t)indent
{
  v3 = pl_result_with_autoreleasepool();

  return v3;
}

id __75__PLPersistentHistoryTransactionModifiers__pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [PLDescriptionBuilder prettyMultiLineDescriptionBuilderWithObject:*(a1 + 32) indent:*(a1 + 40)];
  v3 = [*(a1 + 32) _descriptionWithBuilder:v2];

  return v3;
}

- (id)description
{
  v2 = pl_result_with_autoreleasepool();

  return v2;
}

id __54__PLPersistentHistoryTransactionModifiers_description__block_invoke(uint64_t a1)
{
  v2 = [PLDescriptionBuilder descriptionBuilderWithObject:*(a1 + 32)];
  v3 = [*(a1 + 32) _descriptionWithBuilder:v2];

  return v3;
}

- (BOOL)updateFromTransactionAuthor:(id)author
{
  authorCopy = author;
  v9 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v11 = authorCopy;
  v5 = authorCopy;
  v6 = pl_result_with_autoreleasepool();
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

uint64_t __71__PLPersistentHistoryTransactionModifiers_updateFromTransactionAuthor___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 12) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isEqualToString:&stru_1F0F06D80];

    if ((v4 & 1) == 0 && ([*(a1 + 40) hasPrefix:@"com.apple.coredata"] & 1) == 0)
    {
      v7 = [*(a1 + 40) dataUsingEncoding:4];
      v24 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v24];
      v9 = v24;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v8;
          if ([v10 count]< 2 || [v10 count]>= 4)
          {
            v11 = PLPersistentHistoryGetLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v10;
              _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Transaction author: Array count out of range: %@", buf, 0xCu);
            }

            v5 = MEMORY[0x1E695E110];
            goto LABEL_41;
          }

          v11 = [v10 objectAtIndexedSubscript:0];
          v16 = [v10 objectAtIndexedSubscript:1];
          v17 = 0;
          if ([v10 count]>= 3)
          {
            v17 = [v10 objectAtIndexedSubscript:2];
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = PLPersistentHistoryGetLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v11;
              _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Transaction author: First object is not a number: %@", buf, 0xCu);
            }

            v5 = MEMORY[0x1E695E110];
            goto LABEL_40;
          }

          v18 = v11;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = PLPersistentHistoryGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v26 = v16;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Transaction author: Second object is not a number: %@", buf, 0xCu);
            }

            v5 = MEMORY[0x1E695E110];
            goto LABEL_39;
          }

          v23 = v16;
          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v21 = PLPersistentHistoryGetLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v26 = v17;
                _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Transaction author: Third object is not a number: %@", buf, 0xCu);
              }

              v5 = MEMORY[0x1E695E110];
              goto LABEL_38;
            }

            v19 = v17;
          }

          v20 = PLPersistentHistoryGetLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v26 = v18;
            v27 = 2112;
            v28 = v23;
            _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Transaction author: JSON change source: %@, JSON sync change marker: %@", buf, 0x16u);
          }

          *(*(a1 + 32) + 12) = [v18 intValue];
          *(*(a1 + 32) + 8) = [v23 intValue]!= 0;
          *(*(a1 + 32) + 9) = [v17 BOOLValue];
          v5 = MEMORY[0x1E695E118];
          v21 = v17;
LABEL_38:

          v22 = v23;
LABEL_39:

LABEL_40:
LABEL_41:

          goto LABEL_42;
        }

        v10 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v8;
          v13 = "Transaction author: JSON object is not an array: %@";
          v14 = v10;
          v15 = 12;
          goto LABEL_17;
        }
      }

      else
      {
        v10 = PLPersistentHistoryGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 40);
          *buf = 138412546;
          v26 = v9;
          v27 = 2112;
          v28 = v12;
          v13 = "Transaction author: Unable to decode transaction author as JSON: %@: %@";
          v14 = v10;
          v15 = 22;
LABEL_17:
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
        }
      }

      v5 = MEMORY[0x1E695E110];
LABEL_42:

      return v5;
    }
  }

  return MEMORY[0x1E695E118];
}

- (id)encodeAsTransactionAuthor
{
  v3 = objc_opt_class();
  changeSource = self->_changeSource;
  syncChangeMarker = self->_syncChangeMarker;

  return [v3 transactionAuthorFromChangeSource:changeSource syncChangeMarker:syncChangeMarker];
}

- (PLPersistentHistoryTransactionModifiers)initWithChangeSource:(int)source syncChangeMarker:(BOOL)marker nonCoalescing:(BOOL)coalescing
{
  v12.receiver = self;
  v12.super_class = PLPersistentHistoryTransactionModifiers;
  v8 = [(PLPersistentHistoryTransactionModifiers *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_changeSource = source;
    v8->_syncChangeMarker = marker;
    v8->_nonCoalescing = coalescing;
    v10 = v8;
  }

  return v9;
}

+ (id)transactionAuthorFromChangeSource:(int)source syncChangeMarker:(BOOL)marker nonCoalescing:(BOOL)coalescing
{
  v5 = pl_result_with_autoreleasepool();

  return v5;
}

id __108__PLPersistentHistoryTransactionModifiers_transactionAuthorFromChangeSource_syncChangeMarker_nonCoalescing___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 36);
  v2 = *(a1 + 37);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 32)];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{v1, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v2];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:0 error:0];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];

  return v8;
}

+ (id)transactionModifiersFromTransactionAuthor:(id)author
{
  authorCopy = author;
  v3 = authorCopy;
  v4 = pl_result_with_autoreleasepool();

  return v4;
}

id __85__PLPersistentHistoryTransactionModifiers_transactionModifiersFromTransactionAuthor___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 40));
  [v2 updateFromTransactionAuthor:*(a1 + 32)];

  return v2;
}

@end