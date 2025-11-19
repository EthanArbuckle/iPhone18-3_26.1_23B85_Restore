@interface SSTonePurchase
- (BOOL)shouldMakeDefaultRingtone;
- (BOOL)shouldMakeDefaultTextTone;
- (NSArray)allowedToneStyles;
- (NSNumber)assigneeIdentifier;
- (NSString)assigneeContactIdentifier;
- (NSString)assigneeToneStyle;
- (SSTonePurchase)initWithCoder:(id)a3;
- (SSTonePurchase)initWithItem:(id)a3 offer:(id)a4;
- (SSTonePurchase)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)_addEntriesToDatabaseEncoding:(id)a3;
- (void)_setValuesUsingDatabaseEncoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAllowedToneStyles:(id)a3;
- (void)setAssigneeContactIdentifier:(id)a3;
- (void)setAssigneeIdentifier:(id)a3;
- (void)setAssigneeToneStyle:(id)a3;
- (void)setShouldMakeDefaultRingtone:(BOOL)a3;
- (void)setShouldMakeDefaultTextTone:(BOOL)a3;
@end

@implementation SSTonePurchase

- (SSTonePurchase)initWithItem:(id)a3 offer:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SSTonePurchase;
  v7 = [(SSPurchase *)&v12 initWithItem:a3 offer:v6];
  if (v7)
  {
    v8 = [v6 allowedToneStyles];
    v9 = [v8 copy];
    allowedToneStyles = v7->_allowedToneStyles;
    v7->_allowedToneStyles = v9;
  }

  return v7;
}

- (NSArray)allowedToneStyles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSTonePurchase_allowedToneStyles__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSNumber)assigneeIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SSTonePurchase_assigneeIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)assigneeContactIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSTonePurchase_assigneeContactIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)assigneeToneStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSTonePurchase_assigneeToneStyle__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__SSTonePurchase_assigneeToneStyle__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 288) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setAllowedToneStyles:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SSTonePurchase_setAllowedToneStyles___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __39__SSTonePurchase_setAllowedToneStyles___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 264) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 264);
    *(v5 + 264) = v4;
  }
}

- (void)setAssigneeIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SSTonePurchase_setAssigneeIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __40__SSTonePurchase_setAssigneeIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 272) != v1)
  {
    objc_storeStrong((v2 + 272), v1);
  }
}

- (void)setAssigneeContactIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SSTonePurchase_setAssigneeContactIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __47__SSTonePurchase_setAssigneeContactIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 280) != v1)
  {
    objc_storeStrong((v2 + 280), v1);
  }
}

- (void)setAssigneeToneStyle:(id)a3
{
  v4 = a3;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SSTonePurchase_setAssigneeToneStyle___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __39__SSTonePurchase_setAssigneeToneStyle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 288) != v1)
  {
    objc_storeStrong((v2 + 288), v1);
  }
}

- (void)setShouldMakeDefaultRingtone:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSTonePurchase_setShouldMakeDefaultRingtone___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setShouldMakeDefaultTextTone:(BOOL)a3
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSTonePurchase_setShouldMakeDefaultTextTone___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (BOOL)shouldMakeDefaultRingtone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSTonePurchase_shouldMakeDefaultRingtone__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldMakeDefaultTextTone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSTonePurchase_shouldMakeDefaultTextTone__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addEntriesToDatabaseEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  allowedToneStyles = self->_allowedToneStyles;
  if (allowedToneStyles)
  {
    [v4 setObject:allowedToneStyles forKey:@"00"];
  }

  assigneeIdentifier = self->_assigneeIdentifier;
  if (assigneeIdentifier)
  {
    [v5 setObject:assigneeIdentifier forKey:@"01"];
  }

  assigneeContactIdentifier = self->_assigneeContactIdentifier;
  if (assigneeContactIdentifier)
  {
    [v5 setObject:assigneeContactIdentifier forKey:@"06"];
  }

  assigneeToneStyle = self->_assigneeToneStyle;
  if (assigneeToneStyle)
  {
    [v5 setObject:assigneeToneStyle forKey:@"02"];
  }

  [v5 setObject:MEMORY[0x1E695E118] forKey:@"03"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldMakeDefaultRingtone];
  [v5 setObject:v10 forKey:@"04"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldMakeDefaultTextTone];
  [v5 setObject:v11 forKey:@"05"];

  v12.receiver = self;
  v12.super_class = SSTonePurchase;
  [(SSPurchase *)&v12 _addEntriesToDatabaseEncoding:v5];
}

- (void)_setValuesUsingDatabaseEncoding:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"00"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 copy];
    allowedToneStyles = self->_allowedToneStyles;
    self->_allowedToneStyles = v6;
  }

  v8 = [v4 objectForKey:@"01"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 copy];
    assigneeIdentifier = self->_assigneeIdentifier;
    self->_assigneeIdentifier = v9;
  }

  v11 = [v4 objectForKey:@"06"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 copy];
    assigneeContactIdentifier = self->_assigneeContactIdentifier;
    self->_assigneeContactIdentifier = v12;
  }

  v14 = [v4 objectForKey:@"02"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 copy];
    assigneeToneStyle = self->_assigneeToneStyle;
    self->_assigneeToneStyle = v15;
  }

  v17 = [v4 objectForKey:@"04"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v17 BOOLValue])
  {
    self->_shouldMakeDefaultRingtone = 1;
  }

  v18 = [v4 objectForKey:@"05"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
  {
    self->_shouldMakeDefaultTextTone = 1;
  }

  v19.receiver = self;
  v19.super_class = SSTonePurchase;
  [(SSPurchase *)&v19 _setValuesUsingDatabaseEncoding:v4];
}

- (SSTonePurchase)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [SSTonePurchase initWithCoder:];
  }

  v18.receiver = self;
  v18.super_class = SSTonePurchase;
  v5 = [(SSPurchase *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"tonestyles"];
    allowedToneStyles = v5->_allowedToneStyles;
    v5->_allowedToneStyles = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assignee"];
    assigneeIdentifier = v5->_assigneeIdentifier;
    v5->_assigneeIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    assigneeContactIdentifier = v5->_assigneeContactIdentifier;
    v5->_assigneeContactIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tonestyle"];
    assigneeToneStyle = v5->_assigneeToneStyle;
    v5->_assigneeToneStyle = v15;

    v5->_shouldMakeDefaultRingtone = [v4 decodeBoolForKey:@"makedefault"];
    v5->_shouldMakeDefaultTextTone = [v4 decodeBoolForKey:@"makedefaulttext"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [SSTonePurchase encodeWithCoder:];
  }

  v10.receiver = self;
  v10.super_class = SSTonePurchase;
  [(SSPurchase *)&v10 encodeWithCoder:v4];
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SSTonePurchase_encodeWithCoder___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

uint64_t __34__SSTonePurchase_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 264) forKey:@"tonestyles"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 272) forKey:@"assignee"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 280) forKey:@"contact"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 288) forKey:@"tonestyle"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 296) forKey:@"makedefault"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 297);

  return [v2 encodeBool:v3 forKey:@"makedefaulttext"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SSTonePurchase;
  v4 = [(SSPurchase *)&v12 copyWithZone:a3];
  dispatchQueue = self->super._dispatchQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__SSTonePurchase_copyWithZone___block_invoke;
  v9[3] = &unk_1E84AC028;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(dispatchQueue, v9);
  v7 = v6;

  return v7;
}

uint64_t __31__SSTonePurchase_copyWithZone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAllowedToneStyles:*(*(a1 + 40) + 264)];
  [*(a1 + 32) setAssigneeIdentifier:*(*(a1 + 40) + 272)];
  [*(a1 + 32) setAssigneeContactIdentifier:*(*(a1 + 40) + 280)];
  [*(a1 + 32) setAssigneeToneStyle:*(*(a1 + 40) + 288)];
  [*(a1 + 32) setShouldMakeDefaultRingtone:*(*(a1 + 40) + 296)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 297);

  return [v2 setShouldMakeDefaultTextTone:v3];
}

- (id)copyXPCEncoding
{
  v11.receiver = self;
  v11.super_class = SSTonePurchase;
  v3 = [(SSPurchase *)&v11 copyXPCEncoding];
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__SSTonePurchase_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

void __33__SSTonePurchase_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "50", *(*(a1 + 40) + 264));
  SSXPCDictionarySetObject(*(a1 + 32), "51", *(*(a1 + 40) + 272));
  SSXPCDictionarySetObject(*(a1 + 32), "56", *(*(a1 + 40) + 280));
  SSXPCDictionarySetObject(*(a1 + 32), "52", *(*(a1 + 40) + 288));
  xpc_dictionary_set_BOOL(*(a1 + 32), "53", *(*(a1 + 40) + 296));
  xpc_dictionary_set_BOOL(*(a1 + 32), "54", *(*(a1 + 40) + 297));
  v2 = *(a1 + 32);

  xpc_dictionary_set_BOOL(v2, "55", 1);
}

- (SSTonePurchase)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SSTonePurchase;
  v5 = [(SSPurchase *)&v19 initWithXPCEncoding:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v4, "50", v6);
    allowedToneStyles = v5->_allowedToneStyles;
    v5->_allowedToneStyles = v7;

    v9 = objc_opt_class();
    v10 = SSXPCDictionaryCopyObjectWithClass(v4, "51", v9);
    assigneeIdentifier = v5->_assigneeIdentifier;
    v5->_assigneeIdentifier = v10;

    v12 = objc_opt_class();
    v13 = SSXPCDictionaryCopyObjectWithClass(v4, "56", v12);
    assigneeContactIdentifier = v5->_assigneeContactIdentifier;
    v5->_assigneeContactIdentifier = v13;

    v15 = objc_opt_class();
    v16 = SSXPCDictionaryCopyObjectWithClass(v4, "52", v15);
    assigneeToneStyle = v5->_assigneeToneStyle;
    v5->_assigneeToneStyle = v16;

    v5->_shouldMakeDefaultRingtone = xpc_dictionary_get_BOOL(v4, "53");
    v5->_shouldMakeDefaultTextTone = xpc_dictionary_get_BOOL(v4, "54");
  }

  return v5;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end