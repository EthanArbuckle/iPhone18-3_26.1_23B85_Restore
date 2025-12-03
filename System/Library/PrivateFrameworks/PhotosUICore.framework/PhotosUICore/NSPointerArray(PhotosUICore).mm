@interface NSPointerArray(PhotosUICore)
- (void)px_enumeratePointersWithOptions:()PhotosUICore usingBlock:;
@end

@implementation NSPointerArray(PhotosUICore)

- (void)px_enumeratePointersWithOptions:()PhotosUICore usingBlock:
{
  v7 = a4;
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSPointerArray+PhotosUICore.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSPointerArray+PhotosUICore.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"((options & NSEnumerationConcurrent) == 0)"}];

LABEL_3:
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__NSPointerArray_PhotosUICore__px_enumeratePointersWithOptions_usingBlock___block_invoke;
  aBlock[3] = &unk_1E773F260;
  aBlock[4] = self;
  v8 = v7;
  v19 = v8;
  v20 = &v21;
  v9 = _Block_copy(aBlock);
  v10 = [self count];
  v11 = v10;
  if ((a3 & 2) != 0)
  {
    for (i = v10 - 1; (v22[3] & 1) == 0 && (i & 0x8000000000000000) == 0; i = v15)
    {
      v15 = i - 1;
      v9[2](v9);
    }
  }

  else if ((v22[3] & 1) == 0 && v10)
  {
    v12 = 1;
    do
    {
      (v9[2])(v9, v12 - 1);
      if (v22[3])
      {
        break;
      }
    }

    while (v12++ < v11);
  }

  _Block_object_dispose(&v21, 8);
}

@end