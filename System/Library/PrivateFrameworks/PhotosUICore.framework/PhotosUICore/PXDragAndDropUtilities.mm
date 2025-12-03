@interface PXDragAndDropUtilities
+ (id)fileTypeForPhotosContainer:(id)container;
+ (id)sanitizedFileNameForString:(id)string;
+ (unint64_t)adjustedTargetIndexForCollection:(id)collection movedObjects:(id)objects targetIndex:(unint64_t)index;
@end

@implementation PXDragAndDropUtilities

+ (id)sanitizedFileNameForString:(id)string
{
  v3 = sanitizedFileNameForString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&sanitizedFileNameForString__onceToken, &__block_literal_global_82712);
  }

  v5 = [stringCopy stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  v7 = v6;

  v8 = [(__CFString *)v7 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

  v9 = [sanitizedFileNameForString__regex stringByReplacingMatchesInString:v8 options:4 range:0 withTemplate:{objc_msgSend(v8, "length"), &stru_1F1741150}];

  return v9;
}

void __53__PXDragAndDropUtilities_sanitizedFileNameForString___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(^\\.+)" options:16 error:0];
  v1 = sanitizedFileNameForString__regex;
  sanitizedFileNameForString__regex = v0;
}

+ (id)fileTypeForPhotosContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E6982DC8];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = MEMORY[0x1E6982DC8];
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v4 = MEMORY[0x1E6982E48];
      }
    }
  }

  v6 = *v4;
  v7 = v6;

  return v6;
}

+ (unint64_t)adjustedTargetIndexForCollection:(id)collection movedObjects:(id)objects targetIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  objectsCopy = objects;
  v9 = [collectionCopy count];
  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = objectsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    if (index + 1 < v9)
    {
      v9 = index + 1;
    }

    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [collectionCopy indexOfObject:*(*(&v19 + 1) + 8 * v15) inRange:{0, v9, v19}];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 addIndex:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v10 countOfIndexesInRange:{0, index}];
  return index - v17;
}

@end