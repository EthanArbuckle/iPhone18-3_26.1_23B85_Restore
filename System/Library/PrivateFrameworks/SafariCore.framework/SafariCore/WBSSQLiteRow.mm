@interface WBSSQLiteRow
- (RawData)uncopiedRawDataAtIndex:(SEL)index;
- (WBSSQLiteRow)initWithCurrentRowOfEnumerator:(id)enumerator;
- (WBSSQLiteRow)initWithStatement:(id)statement;
- (id)dataAtIndex:(unint64_t)index;
- (id)debugDictionaryRepresentationWithStatement:(id)statement;
- (id)objectAtIndex:(unint64_t)index;
- (id)stringAtIndex:(unint64_t)index;
- (id)uncopiedDataAtIndex:(unint64_t)index;
@end

@implementation WBSSQLiteRow

- (WBSSQLiteRow)initWithStatement:(id)statement
{
  statementCopy = statement;
  v8.receiver = self;
  v8.super_class = WBSSQLiteRow;
  v5 = [(WBSSQLiteRow *)&v8 init];
  if (v5)
  {
    v5->_handle = [statementCopy handle];
    v6 = v5;
  }

  return v5;
}

- (WBSSQLiteRow)initWithCurrentRowOfEnumerator:(id)enumerator
{
  statement = [enumerator statement];
  v5 = [(WBSSQLiteRow *)self initWithStatement:statement];

  return v5;
}

- (id)stringAtIndex:(unint64_t)index
{
  indexCopy = index;
  if ([(WBSSQLiteRow *)self _isNullAtIndex:?])
  {
    v5 = 0;
  }

  else
  {
    handle = self->_handle;
    v7 = sqlite3_column_text(handle, indexCopy);
    v8 = sqlite3_column_bytes(handle, indexCopy);
    v5 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v7, v8, 0x8000100u, 0);
  }

  return v5;
}

- (id)dataAtIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  [(WBSSQLiteRow *)self uncopiedRawDataAtIndex:index];
  v3 = 0;
  if ((v5 & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:v7];
  }

  return v3;
}

- (id)uncopiedDataAtIndex:(unint64_t)index
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  [(WBSSQLiteRow *)self uncopiedRawDataAtIndex:index];
  v3 = 0;
  if ((v5 & 1) == 0)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v6 length:v7 freeWhenDone:0];
  }

  return v3;
}

- (RawData)uncopiedRawDataAtIndex:(SEL)index
{
  v4 = a4;
  result = [(WBSSQLiteRow *)self _isNullAtIndex:?];
  if (result)
  {
    *&retstr->var0 = 0;
    retstr->var1 = 0;
    *&retstr->var2 = 0;
    retstr->var0 = 1;
  }

  else
  {
    handle = self->_handle;
    result = sqlite3_column_blob(handle, v4);
    if (result)
    {
      v9 = result;
      result = sqlite3_column_bytes(handle, v4);
      retstr->var0 = 0;
      retstr->var1 = v9;
      retstr->var2 = result;
    }

    else
    {
      *&retstr->var0 = 0;
      retstr->var1 = 0;
      *&retstr->var2 = 0;
    }
  }

  return result;
}

- (id)objectAtIndex:(unint64_t)index
{
  v5 = sqlite3_column_type(self->_handle, index);
  null = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      null = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_handle, index)}];
    }

    else if (v5 == 2)
    {
      null = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_handle, index)}];
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        null = [(WBSSQLiteRow *)self stringAtIndex:index];
        break;
      case 4:
        null = [(WBSSQLiteRow *)self dataAtIndex:index];
        break;
      case 5:
        null = [MEMORY[0x1E695DFB0] null];
        break;
    }
  }

  return null;
}

- (id)debugDictionaryRepresentationWithStatement:(id)statement
{
  columnNames = [statement columnNames];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WBSSQLiteRow_debugDictionaryRepresentationWithStatement___block_invoke;
  v8[3] = &unk_1E7CF0D00;
  v8[4] = self;
  v6 = dictionary;
  v9 = v6;
  [columnNames enumerateObjectsUsingBlock:v8];

  return v6;
}

void __59__WBSSQLiteRow_debugDictionaryRepresentationWithStatement___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = sqlite3_column_type(*(*(a1 + 32) + 8), a3);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        v7 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v7 = [*(a1 + 32) stringAtIndex:a3];
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = MEMORY[0x1E696AD98];
        [*(a1 + 32) doubleAtIndex:a3];
        v7 = [v6 numberWithDouble:?];
        goto LABEL_11;
      }

LABEL_8:
      v7 = [*(a1 + 32) dataAtIndex:a3];
      goto LABEL_11;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "int64AtIndex:", a3)}];
  }

LABEL_11:
  v8 = v7;
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];
}

@end