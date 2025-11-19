@interface VMUMutableClassInfo
- (void)addComplexAction:(id)a3 withEvaluator:(id)a4;
- (void)addVariant:(id)a3 forField:(id)a4 withEvaluator:(id)a5;
- (void)addVariantRecursively:(id)a3 forField:(id)a4 atOffset:(unsigned int)a5 withEvaluator:(id)a6;
- (void)mutateTypeFieldsRecursivelyWithBlock:(id)a3;
- (void)mutateTypeFieldsWithBlock:(id)a3;
- (void)setBinaryPath:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setSuperclassInfo:(id)a3;
- (void)setVariantScanType:(unsigned int)a3 withEvaluator:(id)a4;
@end

@implementation VMUMutableClassInfo

- (void)setDisplayName:(id)a3
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setDisplayName:a3];
}

- (void)setBinaryPath:(id)a3
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setBinaryPath:a3 sanitize:1];
}

- (void)setSuperclassInfo:(id)a3
{
  v3.receiver = self;
  v3.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v3 _setSuperclassInfo:a3];
}

- (void)mutateTypeFieldsWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__VMUMutableClassInfo_mutateTypeFieldsWithBlock___block_invoke;
  v6[3] = &unk_1E8278BA8;
  v7 = v4;
  v5 = v4;
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:v6];
}

- (void)mutateTypeFieldsRecursivelyWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VMUMutableClassInfo_mutateTypeFieldsRecursivelyWithBlock___block_invoke;
  v6[3] = &unk_1E8278BA8;
  v7 = v4;
  v5 = v4;
  [(VMUClassInfo *)self enumerateTypeFieldsWithBlock:v6];
}

void __60__VMUMutableClassInfo_mutateTypeFieldsRecursivelyWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  [v3 mutateTypeFieldsRecursivelyWithBlock:*(a1 + 32) parentOffset:{objc_msgSend(v3, "offset")}];
}

- (void)addVariant:(id)a3 forField:(id)a4 withEvaluator:(id)a5
{
  v8 = a3;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__VMUMutableClassInfo_addVariant_forField_withEvaluator___block_invoke;
  aBlock[3] = &unk_1E8278BD0;
  v10 = v9;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v12 = a5;
  v13 = _Block_copy(aBlock);
  v14.receiver = self;
  v14.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v14 _addVariantAction:v13 withEvaluator:v12];
}

void __57__VMUMutableClassInfo_addVariant_forField_withEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5)
  {
    v9[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v3 replaceField:v5 withFields:v6];
  }

  else
  {
    v8 = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [v3 addFields:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addVariantRecursively:(id)a3 forField:(id)a4 atOffset:(unsigned int)a5 withEvaluator:(id)a6
{
  v10 = a3;
  v11 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__VMUMutableClassInfo_addVariantRecursively_forField_atOffset_withEvaluator___block_invoke;
  aBlock[3] = &unk_1E8278BF8;
  v12 = v11;
  v18 = v12;
  v20 = a5;
  v13 = v10;
  v19 = v13;
  v14 = a6;
  v15 = _Block_copy(aBlock);
  v16.receiver = self;
  v16.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v16 _addVariantAction:v15 withEvaluator:v14];
}

void __77__VMUMutableClassInfo_addVariantRecursively_forField_atOffset_withEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    [v3 _replaceFieldRecursively:v5 atOffset:*(a1 + 48) withField:*(a1 + 40)];
  }

  else
  {
    v8[0] = *(a1 + 40);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v4 addFields:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addComplexAction:(id)a3 withEvaluator:(id)a4
{
  v4.receiver = self;
  v4.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v4 _addComplexAction:a3 withEvaluator:a4];
}

- (void)setVariantScanType:(unsigned int)a3 withEvaluator:(id)a4
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VMUMutableClassInfo_setVariantScanType_withEvaluator___block_invoke;
  aBlock[3] = &__block_descriptor_36_e29_v16__0__VMUMutableClassInfo_8l;
  v9 = a3;
  v5 = a4;
  v6 = _Block_copy(aBlock);
  v7.receiver = self;
  v7.super_class = VMUMutableClassInfo;
  [(VMUClassInfo *)&v7 _addVariantAction:v6 withEvaluator:v5];
}

@end