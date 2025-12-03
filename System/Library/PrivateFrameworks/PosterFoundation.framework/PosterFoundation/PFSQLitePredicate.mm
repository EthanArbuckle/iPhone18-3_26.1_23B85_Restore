@interface PFSQLitePredicate
+ (id)andPredicateWithPredicates:(id)predicates;
+ (id)orPredicateWithPredicates:(id)predicates;
+ (id)predicateForDescriptor:(id)descriptor coder:(id)coder;
+ (id)predicateWithColumn:(id)column operatorType:(unint64_t)type value:(id)value;
- (BOOL)pf_bindToStatement:(sqlite3_stmt *)statement index:(unint64_t)index offset:(unint64_t)offset;
- (NSString)description;
- (PFSQLitePredicate)init;
- (PFSQLitePredicate)initWithFormat:(id)format arguments:(id)arguments columns:(id)columns;
- (id)andPredicate:(id)predicate;
- (id)notPredicate;
- (id)orPredicate:(id)predicate;
- (id)pf_toSQLWithBindings:(unint64_t *)bindings;
- (unint64_t)hash;
@end

@implementation PFSQLitePredicate

- (PFSQLitePredicate)initWithFormat:(id)format arguments:(id)arguments columns:(id)columns
{
  formatCopy = format;
  argumentsCopy = arguments;
  columnsCopy = columns;
  v19.receiver = self;
  v19.super_class = PFSQLitePredicate;
  v11 = [(PFSQLitePredicate *)&v19 init];
  if (v11)
  {
    v12 = [formatCopy copy];
    formatString = v11->_formatString;
    v11->_formatString = v12;

    v14 = [argumentsCopy copy];
    arguments = v11->_arguments;
    v11->_arguments = v14;

    v16 = [columnsCopy copy];
    columns = v11->_columns;
    v11->_columns = v16;
  }

  return v11;
}

+ (id)predicateForDescriptor:(id)descriptor coder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  coderCopy = coder;
  columns = [descriptorCopy columns];
  v7 = [columns bs_firstObjectPassingTest:&__block_literal_global_4];

  v8 = +[PFSQLitePredicateBuilder builder];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = descriptorCopy;
  columns2 = [descriptorCopy columns];
  v10 = [columns2 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(columns2);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (!v7 || [*(*(&v24 + 1) + 8 * i) isPrimaryKey])
        {
          dictionary = [coderCopy dictionary];
          name = [v14 name];
          v17 = [dictionary objectForKey:name];

          v18 = [v8 whereColumn:v14 equalTo:v17];
        }
      }

      v11 = [columns2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  buildAndPredicate = [v8 buildAndPredicate];

  v20 = *MEMORY[0x1E69E9840];

  return buildAndPredicate;
}

+ (id)predicateWithColumn:(id)column operatorType:(unint64_t)type value:(id)value
{
  v40[1] = *MEMORY[0x1E69E9840];
  columnCopy = column;
  valueCopy = value;
  v10 = NSStringForPFSQLPredicateOperator(type);
  if (type > 8)
  {
    v16 = 0;
    v15 = 0;
    v13 = 0;
  }

  else if (((1 << type) & 0x13F) != 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    name = [columnCopy name];
    v13 = [v11 stringWithFormat:@"%@ %@ ?", name, v10];

    v14 = [_PFSQLitePredicateArgumentContainer arg:valueCopy column:columnCopy operator:type];
    v40[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];

    v39 = columnCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  }

  else
  {
    v16 = objc_opt_new();
    if ([valueCopy conformsToProtocol:&unk_1F426A9C8])
    {
      v17 = objc_opt_new();
      v18 = MEMORY[0x1E696AEC0];
      name2 = [columnCopy name];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __60__PFSQLitePredicate_predicateWithColumn_operatorType_value___block_invoke;
      v32 = &unk_1E8189510;
      v33 = valueCopy;
      v34 = v16;
      v35 = columnCopy;
      v20 = v17;
      v36 = v20;
      typeCopy = type;
      v21 = __60__PFSQLitePredicate_predicateWithColumn_operatorType_value___block_invoke(&v29);
      v13 = [v18 stringWithFormat:@"%@ %@ (%@)", name2, v10, v21, v29, v30];

      v22 = v36;
      v23 = v20;

      v15 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E696AEC0];
      name3 = [columnCopy name];
      v13 = [v24 stringWithFormat:@"%@ %@ (?)", name3, v10];

      v23 = [_PFSQLitePredicateArgumentContainer arg:valueCopy column:columnCopy operator:type];
      v38 = v23;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    }
  }

  v26 = [[self alloc] initWithFormat:v13 arguments:v15 columns:v16];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

id __60__PFSQLitePredicate_predicateWithColumn_operatorType_value___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v2 addObject:{@"?", v14}];
        [*(a1 + 40) addObject:*(a1 + 48)];
        v9 = *(a1 + 56);
        v10 = [_PFSQLitePredicateArgumentContainer arg:v8 column:*(a1 + 48) operator:*(a1 + 64)];
        [v9 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 componentsJoinedByString:{@", "}];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (PFSQLitePredicate)init
{
  [(PFSQLitePredicate *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_formatString hash];
  v4 = [(NSArray *)self->_arguments hash]^ v3;
  return v4 ^ [(NSArray *)self->_columns hash];
}

- (id)andPredicate:(id)predicate
{
  v4 = MEMORY[0x1E696AEC0];
  formatString = self->_formatString;
  v6 = *(predicate + 1);
  predicateCopy = predicate;
  v8 = [v4 stringWithFormat:@"(%@) AND (%@)", formatString, v6];
  v9 = MEMORY[0x1E695E0F0];
  if (self->_arguments)
  {
    arguments = self->_arguments;
  }

  else
  {
    arguments = MEMORY[0x1E695E0F0];
  }

  v11 = [(NSArray *)arguments arrayByAddingObjectsFromArray:predicateCopy[2]];
  if (self->_columns)
  {
    columns = self->_columns;
  }

  else
  {
    columns = v9;
  }

  columns = [predicateCopy columns];

  v14 = [(NSArray *)columns arrayByAddingObjectsFromArray:columns];

  v15 = [[PFSQLitePredicate alloc] initWithFormat:v8 arguments:v11 columns:v14];

  return v15;
}

- (id)orPredicate:(id)predicate
{
  v4 = MEMORY[0x1E696AEC0];
  formatString = self->_formatString;
  v6 = *(predicate + 1);
  predicateCopy = predicate;
  v8 = [v4 stringWithFormat:@"(%@) OR (%@)", formatString, v6];
  v9 = MEMORY[0x1E695E0F0];
  if (self->_arguments)
  {
    arguments = self->_arguments;
  }

  else
  {
    arguments = MEMORY[0x1E695E0F0];
  }

  v11 = [(NSArray *)arguments arrayByAddingObjectsFromArray:predicateCopy[2]];
  if (self->_columns)
  {
    columns = self->_columns;
  }

  else
  {
    columns = v9;
  }

  columns = [predicateCopy columns];

  v14 = [(NSArray *)columns arrayByAddingObjectsFromArray:columns];

  v15 = [[PFSQLitePredicate alloc] initWithFormat:v8 arguments:v11 columns:v14];

  return v15;
}

- (id)notPredicate
{
  v3 = [PFSQLitePredicate alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NOT (%@)", self->_formatString];
  v5 = [(PFSQLitePredicate *)v3 initWithFormat:v4 arguments:self->_arguments columns:self->_columns];

  return v5;
}

+ (id)andPredicateWithPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if ([predicatesCopy count] == 1)
  {
    firstObject = [predicatesCopy firstObject];
  }

  else
  {
    v5 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_59];
    v6 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_61];
    bs_flatten = [v6 bs_flatten];

    v8 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_63];
    bs_flatten2 = [v8 bs_flatten];

    v10 = [v5 componentsJoinedByString:@") AND ("];
    v11 = objc_msgSend(@"("), "stringByAppendingString:", v10;

    v12 = [v11 stringByAppendingString:@""]);

    firstObject = [[PFSQLitePredicate alloc] initWithFormat:v12 arguments:bs_flatten columns:bs_flatten2];
  }

  return firstObject;
}

+ (id)orPredicateWithPredicates:(id)predicates
{
  predicatesCopy = predicates;
  if ([predicatesCopy count] == 1)
  {
    firstObject = [predicatesCopy firstObject];
  }

  else
  {
    v5 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_74];
    v6 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_76];
    bs_flatten = [v6 bs_flatten];

    v8 = [predicatesCopy bs_mapNoNulls:&__block_literal_global_78];
    bs_flatten2 = [v8 bs_flatten];

    v10 = [v5 componentsJoinedByString:@") OR ("];
    v11 = objc_msgSend(@"("), "stringByAppendingString:", v10;

    v12 = [v11 stringByAppendingString:@""]);

    firstObject = [[PFSQLitePredicate alloc] initWithFormat:v12 arguments:bs_flatten columns:bs_flatten2];
  }

  return firstObject;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = self->_formatString;
  arguments = self->_arguments;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__PFSQLitePredicate_description__block_invoke;
  v7[3] = &unk_1E8189558;
  v7[4] = &v8;
  [(NSArray *)arguments enumerateObjectsUsingBlock:v7];
  [v3 appendString:v9[5] withName:@"_formatString"];
  build = [v3 build];
  _Block_object_dispose(&v8, 8);

  return build;
}

void __32__PFSQLitePredicate_description__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [MEMORY[0x1E696AE88] scannerWithString:*(*(*(a1 + 32) + 8) + 40)];
  if ([v3 scanUpToString:@"?" intoString:0])
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v3 scanLocation];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v12 arg];
    v8 = [v6 stringWithFormat:@"'%@'", v7];
    v9 = [v4 stringByReplacingCharactersInRange:v5 withString:{1, v8}];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (id)pf_toSQLWithBindings:(unint64_t *)bindings
{
  if (bindings)
  {
    *bindings = [(NSArray *)self->_arguments count];
  }

  formatString = self->_formatString;

  return [@" WHERE " stringByAppendingString:formatString];
}

- (BOOL)pf_bindToStatement:(sqlite3_stmt *)statement index:(unint64_t)index offset:(unint64_t)offset
{
  offsetCopy = offset;
  v9 = index + offset + 1;
  v10 = [(NSArray *)self->_arguments objectAtIndex:index];
  column = [v10 column];
  type = [column type];
  v13 = [(NSArray *)self->_arguments objectAtIndex:index];
  v14 = [v13 arg];

  if ([v10 operator] == 8)
  {
    v15 = [v10 arg];
LABEL_3:
    v16 = sqlite3_bind_text(statement, v9, [v15 UTF8String], -1, 0);
    goto LABEL_4;
  }

  valueTransformer = [column valueTransformer];
  v15 = [valueTransformer transformedValue:v14];

  v17 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      goto LABEL_3;
    }

    if (type == 4)
    {
      v16 = sqlite3_bind_blob(statement, v9 + offsetCopy, [v15 bytes], objc_msgSend(v15, "length"), 0);
      goto LABEL_4;
    }

    if (type != 5)
    {
      goto LABEL_5;
    }

LABEL_14:
    v16 = sqlite3_bind_null(statement, v9);
    goto LABEL_4;
  }

  switch(type)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v16 = sqlite3_bind_int(statement, v9, [v15 intValue]);
      break;
    case 2:
      [v15 doubleValue];
      v16 = sqlite3_bind_double(statement, v9, v20);
      break;
    default:
      goto LABEL_5;
  }

LABEL_4:
  v17 = v16 == 0;
LABEL_5:

  return v17;
}

@end