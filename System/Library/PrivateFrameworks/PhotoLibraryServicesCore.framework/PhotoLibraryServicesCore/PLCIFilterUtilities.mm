@interface PLCIFilterUtilities
+ (id)filterCopiesFromFilters:(id)filters;
+ (id)outputImageFromFilters:(id)filters inputImage:(id)image orientation:(int)orientation copyFiltersFirst:(BOOL)first;
@end

@implementation PLCIFilterUtilities

+ (id)outputImageFromFilters:(id)filters inputImage:(id)image orientation:(int)orientation copyFiltersFirst:(BOOL)first
{
  firstCopy = first;
  v7 = *&orientation;
  filtersCopy = filters;
  imageCopy = image;
  if (firstCopy)
  {
    v12 = [self filterCopiesFromFilters:filtersCopy];

    filtersCopy = v12;
  }

  if ([filtersCopy count])
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __86__PLCIFilterUtilities_outputImageFromFilters_inputImage_orientation_copyFiltersFirst___block_invoke;
    v21 = &unk_1E792FDC0;
    v22 = imageCopy;
    v13 = filtersCopy;
    v23 = v13;
    [v13 enumerateObjectsUsingBlock:&v18];
    lastObject = [v13 lastObject];
    v15 = [lastObject valueForKey:@"outputImage"];
  }

  else
  {
    v15 = imageCopy;
  }

  if (v7 >= 2)
  {
    v16 = [v15 imageByApplyingOrientation:v7];

    v15 = v16;
  }

  [filtersCopy enumerateObjectsUsingBlock:&__block_literal_global_2041];

  return v15;
}

void __86__PLCIFilterUtilities_outputImageFromFilters_inputImage_orientation_copyFiltersFirst___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 40);
    v4 = a3 - 1;
    v5 = a2;
    v8 = [v3 objectAtIndex:v4];
    v6 = [v8 valueForKey:@"outputImage"];
    [v5 setValue:v6 forKey:@"inputImage"];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = a2;
    [v8 setValue:v7 forKey:@"inputImage"];
  }
}

+ (id)filterCopiesFromFilters:(id)filters
{
  if (filters)
  {
    v3 = MEMORY[0x1E695DF70];
    filtersCopy = filters;
    v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PLCIFilterUtilities_filterCopiesFromFilters___block_invoke;
    v8[3] = &unk_1E792FD98;
    v6 = v5;
    v9 = v6;
    [filtersCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __47__PLCIFilterUtilities_filterCopiesFromFilters___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  [*(a1 + 32) addObject:v3];
}

@end