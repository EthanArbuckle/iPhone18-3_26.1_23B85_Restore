@interface WBSPasswordImportCSVHeaderChecker
- (id)columnIndicesForHeaderFields:(id)a3;
@end

@implementation WBSPasswordImportCSVHeaderChecker

- (id)columnIndicesForHeaderFields:(id)a3
{
  v3 = a3;
  if (columnIndicesForHeaderFields__onceToken != -1)
  {
    [WBSPasswordImportCSVHeaderChecker columnIndicesForHeaderFields:];
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__WBSPasswordImportCSVHeaderChecker_columnIndicesForHeaderFields___block_invoke_2;
  v11[3] = &unk_1E7FC9278;
  v11[4] = &v32;
  v11[5] = &v28;
  v11[6] = &v24;
  v11[7] = &v20;
  v11[8] = &v16;
  v11[9] = &v12;
  [v3 enumerateObjectsUsingBlock:v11];
  if (v33[3] == 0x7FFFFFFFFFFFFFFFLL || v29[3] == 0x7FFFFFFFFFFFFFFFLL || v25[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21[3]];
    [v6 setObject:v7 forKeyedSubscript:@"otpAuthURLIndex"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17[3]];
    [v6 setObject:v8 forKeyedSubscript:@"notesEntryIndex"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13[3]];
    [v6 setObject:v9 forKeyedSubscript:@"titleIndex"];

    v10 = [WBSPasswordImportCSVColumnIndices alloc];
    v4 = [(WBSPasswordImportCSVColumnIndices *)v10 initWithURLIndex:v33[3] usernameIndex:v29[3] passwordIndex:v25[3] sidecarDataIndices:v6];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return v4;
}

void __66__WBSPasswordImportCSVHeaderChecker_columnIndicesForHeaderFields___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B2D0];
  v1 = columnIndicesForHeaderFields__urlKeywords;
  columnIndicesForHeaderFields__urlKeywords = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B2E8];
  v3 = columnIndicesForHeaderFields__usernameKeywords;
  columnIndicesForHeaderFields__usernameKeywords = v2;

  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B300];
  v5 = columnIndicesForHeaderFields__passwordKeywords;
  columnIndicesForHeaderFields__passwordKeywords = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B318];
  v7 = columnIndicesForHeaderFields__otpAuthURLKeywords;
  columnIndicesForHeaderFields__otpAuthURLKeywords = v6;

  v8 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B330];
  v9 = columnIndicesForHeaderFields__notesEntryKeywords;
  columnIndicesForHeaderFields__notesEntryKeywords = v8;

  v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3A9B348];
  v11 = columnIndicesForHeaderFields__titleKeywords;
  columnIndicesForHeaderFields__titleKeywords = v10;
}

void __66__WBSPasswordImportCSVHeaderChecker_columnIndicesForHeaderFields___block_invoke_2(void *a1, void *a2, uint64_t a3)
{
  v5 = [a2 lowercaseString];
  v6 = a1 + 4;
  v15 = v5;
  if (*(*(a1[4] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && (v7 = [columnIndicesForHeaderFields__urlKeywords containsObject:v5], v5 = v15, (v7 & 1) != 0) || (v6 = a1 + 5, *(*(a1[5] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v8 = objc_msgSend(columnIndicesForHeaderFields__usernameKeywords, "containsObject:", v15), v5 = v15, (v8 & 1) != 0) || (v6 = a1 + 6, *(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v9 = objc_msgSend(columnIndicesForHeaderFields__passwordKeywords, "containsObject:", v15), v5 = v15, (v9 & 1) != 0) || (v6 = a1 + 7, *(*(a1[7] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v10 = objc_msgSend(columnIndicesForHeaderFields__otpAuthURLKeywords, "containsObject:", v15), v5 = v15, (v10 & 1) != 0) || (v6 = a1 + 8, *(*(a1[8] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v11 = objc_msgSend(columnIndicesForHeaderFields__notesEntryKeywords, "containsObject:", v15), v5 = v15, (v11 & 1) != 0) || (v13 = a1[9], v12 = a1 + 9, *(*(v13 + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL) && (v14 = objc_msgSend(columnIndicesForHeaderFields__titleKeywords, "containsObject:", v15), v5 = v15, v6 = v12, v14))
  {
    *(*(*v6 + 8) + 24) = a3;
  }
}

@end