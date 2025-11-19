@interface NSFileCoordinator(TSPersistence)
+ (uint64_t)tsp_coordinateReadingItemAtURL:()TSPersistence options:filePresenter:error:byAccessor:;
+ (uint64_t)tsp_coordinateReadingItemAtURL:()TSPersistence options:writingItemAtURL:options:filePresenter:error:byAccessor:;
+ (uint64_t)tsp_coordinateWritingItemAtURL:()TSPersistence options:filePresenter:error:byAccessor:;
+ (uint64_t)tsp_coordinateWritingItemAtURL:()TSPersistence options:writingItemAtURL:options:filePresenter:error:byAccessor:;
@end

@implementation NSFileCoordinator(TSPersistence)

+ (uint64_t)tsp_coordinateReadingItemAtURL:()TSPersistence options:filePresenter:error:byAccessor:
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v15 = [[a1 alloc] initWithFilePresenter:v13];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__NSFileCoordinator_TSPersistence__tsp_coordinateReadingItemAtURL_options_filePresenter_error_byAccessor___block_invoke;
  v19[3] = &unk_279D472C0;
  v16 = v14;
  v20 = v16;
  v21 = &v22;
  [v15 coordinateReadingItemAtURL:v12 options:a4 error:a6 byAccessor:v19];
  v17 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v17;
}

+ (uint64_t)tsp_coordinateReadingItemAtURL:()TSPersistence options:writingItemAtURL:options:filePresenter:error:byAccessor:
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v19 = [[a1 alloc] initWithFilePresenter:v17];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __131__NSFileCoordinator_TSPersistence__tsp_coordinateReadingItemAtURL_options_writingItemAtURL_options_filePresenter_error_byAccessor___block_invoke;
  v23[3] = &unk_279D472E8;
  v20 = v18;
  v24 = v20;
  v25 = &v26;
  [v19 coordinateReadingItemAtURL:v15 options:a4 writingItemAtURL:v16 options:a6 error:a8 byAccessor:v23];
  v21 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v21;
}

+ (uint64_t)tsp_coordinateWritingItemAtURL:()TSPersistence options:filePresenter:error:byAccessor:
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v15 = [[a1 alloc] initWithFilePresenter:v13];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__NSFileCoordinator_TSPersistence__tsp_coordinateWritingItemAtURL_options_filePresenter_error_byAccessor___block_invoke;
  v19[3] = &unk_279D472C0;
  v16 = v14;
  v20 = v16;
  v21 = &v22;
  [v15 coordinateWritingItemAtURL:v12 options:a4 error:a6 byAccessor:v19];
  v17 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v17;
}

+ (uint64_t)tsp_coordinateWritingItemAtURL:()TSPersistence options:writingItemAtURL:options:filePresenter:error:byAccessor:
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v19 = [[a1 alloc] initWithFilePresenter:v17];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __131__NSFileCoordinator_TSPersistence__tsp_coordinateWritingItemAtURL_options_writingItemAtURL_options_filePresenter_error_byAccessor___block_invoke;
  v24[3] = &unk_279D47310;
  v20 = v18;
  v26 = v20;
  v21 = v19;
  v25 = v21;
  v27 = &v28;
  [v21 coordinateWritingItemAtURL:v15 options:a4 writingItemAtURL:v16 options:a6 error:a8 byAccessor:v24];
  v22 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return v22;
}

@end