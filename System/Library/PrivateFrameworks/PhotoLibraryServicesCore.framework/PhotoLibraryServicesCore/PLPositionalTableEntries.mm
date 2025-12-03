@interface PLPositionalTableEntries
- (PLPositionalTableEntries)initWithBuffers:(void *)buffers forIndexes:(id)indexes entryLength:(unint64_t)length;
- (void)dealloc;
- (void)enumerateIndexes:(id)indexes;
@end

@implementation PLPositionalTableEntries

- (void)enumerateIndexes:(id)indexes
{
  indexesCopy = indexes;
  if (!indexesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPositionalTable.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  readIndexes = self->_readIndexes;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PLPositionalTableEntries_enumerateIndexes___block_invoke;
  v9[3] = &unk_1E7932400;
  v9[4] = self;
  v11 = v13;
  v7 = indexesCopy;
  v10 = v7;
  v12 = v14;
  [(NSIndexSet *)readIndexes enumerateRangesUsingBlock:v9];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
}

void __45__PLPositionalTableEntries_enumerateIndexes___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v9 = *(*(v8 + 16) + 8 * *(*(*(a1 + 48) + 8) + 24));
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __45__PLPositionalTableEntries_enumerateIndexes___block_invoke_2;
  v15 = &unk_1E79323D8;
  v20 = a3;
  v21 = v9;
  v19 = a2;
  v16 = v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v17 = v10;
  v18 = v11;
  v22 = 0;
  if (v6 < v6 + a3)
  {
    v12 = a3 - 1;
    do
    {
      v14(v13, v6, &v22);
      if (!v12)
      {
        break;
      }

      ++v6;
      --v12;
    }

    while ((v22 & 1) == 0);
    v11 = *(a1 + 56);
  }

  if (*(*(v11 + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __45__PLPositionalTableEntries_enumerateIndexes___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)dealloc
{
  if (self->_buffers)
  {
    rangeCount = [(NSIndexSet *)self->_readIndexes rangeCount];
    if (rangeCount)
    {
      v4 = rangeCount;
      for (i = 0; i != v4; ++i)
      {
        free(self->_buffers[i]);
      }
    }

    free(self->_buffers);
  }

  v6.receiver = self;
  v6.super_class = PLPositionalTableEntries;
  [(PLPositionalTableEntries *)&v6 dealloc];
}

- (PLPositionalTableEntries)initWithBuffers:(void *)buffers forIndexes:(id)indexes entryLength:(unint64_t)length
{
  indexesCopy = indexes;
  v17.receiver = self;
  v17.super_class = PLPositionalTableEntries;
  v11 = [(PLPositionalTableEntries *)&v17 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  if (indexesCopy)
  {
    if (length)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v11 file:@"PLPositionalTable.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"indexes"}];

    if (length)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"PLPositionalTable.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"entryLength > 0"}];

LABEL_4:
  v12 = [indexesCopy count];
  if (!buffers && v12)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v11 file:@"PLPositionalTable.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"indexes.count == 0 || buffers != NULL"}];
  }

  objc_storeStrong(&v11->_readIndexes, indexes);
  v11->_entryLength = length;
  v11->_buffers = buffers;
LABEL_8:

  return v11;
}

@end