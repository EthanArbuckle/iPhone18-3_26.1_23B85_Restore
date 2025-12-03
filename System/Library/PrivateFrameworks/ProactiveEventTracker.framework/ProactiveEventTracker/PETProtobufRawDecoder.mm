@interface PETProtobufRawDecoder
+ (id)filterProtobufData:(id)data onField:(id)field onNestedMessageEnd:(id)end;
+ (id)filterProtobufData:(id)data withWhitelist:(id)whitelist;
@end

@implementation PETProtobufRawDecoder

+ (id)filterProtobufData:(id)data withWhitelist:(id)whitelist
{
  dataCopy = data;
  whitelistCopy = whitelist;
  v8 = objc_opt_new();
  [v8 addObject:whitelistCopy];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v9 = whitelistCopy;
  v20 = v9;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__PETProtobufRawDecoder_filterProtobufData_withWhitelist___block_invoke;
  v16[3] = &unk_1E86C27D0;
  v18 = v19;
  v17 = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__PETProtobufRawDecoder_filterProtobufData_withWhitelist___block_invoke_2;
  v13[3] = &unk_1E86C27F8;
  v10 = v17;
  v14 = v10;
  v15 = v19;
  v11 = [self filterProtobufData:dataCopy onField:v16 onNestedMessageEnd:v13];

  _Block_object_dispose(v19, 8);

  return v11;
}

uint64_t __58__PETProtobufRawDecoder_filterProtobufData_withWhitelist___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 BOOLValue])
    {
      v8 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  [*(a1 + 32) addObject:v7];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  v8 = 1;
  *a3 = 1;
LABEL_8:

  return v8;
}

uint64_t __58__PETProtobufRawDecoder_filterProtobufData_withWhitelist___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeLastObject];
  v2 = [*(a1 + 32) lastObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)filterProtobufData:(id)data onField:(id)field onNestedMessageEnd:(id)end
{
  dataCopy = data;
  endCopy = end;
  fieldCopy = field;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  Mutable = CFDataCreateMutable(0, 0);
  v17 = 0;
  v14 = [dataCopy2 length];

  v16[1] = bytes + v14;
  v16[2] = bytes;
  v16[3] = bytes;
  v16[4] = Mutable;
  parse(v16, fieldCopy, endCopy);

  if (v17 == 1)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  return Mutable;
}

@end