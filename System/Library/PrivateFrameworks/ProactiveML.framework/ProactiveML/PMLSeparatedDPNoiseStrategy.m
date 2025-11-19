@interface PMLSeparatedDPNoiseStrategy
+ (id)getPFLIdentifier:(id)a3;
- (BOOL)scaleAndAddNoiseToDenseVector:(id)a3 usingNorm:(BOOL)a4 scaleFactor:(float *)a5;
- (PMLSeparatedDPNoiseStrategy)initWithPFLIdentifier:(const char *)a3;
- (PMLSeparatedDPNoiseStrategy)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
@end

@implementation PMLSeparatedDPNoiseStrategy

- (PMLSeparatedDPNoiseStrategy)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = [v7 objectForKeyedSubscript:@"PFL_ID"];

  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PMLSeparatedDPNoiseStrategy.m" lineNumber:85 description:{@"Can't instantiate %@. Missing %@ dependency.", v14, @"PFL_ID"}];
  }

  v9 = [v7 objectForKeyedSubscript:@"PFL_ID"];
  v10 = -[PMLSeparatedDPNoiseStrategy initWithPFLIdentifier:](self, "initWithPFLIdentifier:", [v9 UTF8String]);

  return v10;
}

- (BOOL)scaleAndAddNoiseToDenseVector:(id)a3 usingNorm:(BOOL)a4 scaleFactor:(float *)a5
{
  v7 = a3;
  v8 = [v7 mutablePtr];
  v9 = [v7 count];
  pflIdentifier = self->_pflIdentifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v11 = getPFLPrivatizeSymbolLoc_ptr;
  v25 = getPFLPrivatizeSymbolLoc_ptr;
  if (!getPFLPrivatizeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getPFLPrivatizeSymbolLoc_block_invoke;
    v20 = &unk_279AC0308;
    v21 = &v22;
    __getPFLPrivatizeSymbolLoc_block_invoke(buf);
    v11 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v11)
  {
    v12 = v11(v8, v9, pflIdentifier);
    if (v12)
    {
      *a5 = 1.0;
    }

    else
    {
      v13 = PML_LogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_260D68000, v13, OS_LOG_TYPE_ERROR, "PFLPrivatize call failed", buf, 2u);
      }
    }

    return v12;
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_PFLPrivatize(float *, size_t, const char *)"}];
    [v15 handleFailureInFunction:v16 file:@"PMLSeparatedDPNoiseStrategy.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (PMLSeparatedDPNoiseStrategy)initWithPFLIdentifier:(const char *)a3
{
  v5.receiver = self;
  v5.super_class = PMLSeparatedDPNoiseStrategy;
  result = [(PMLSeparatedDPNoiseStrategy *)&v5 init];
  if (result)
  {
    result->_pflIdentifier = a3;
  }

  return result;
}

+ (id)getPFLIdentifier:(id)a3
{
  if ([@"QuickResponsesClassification" isEqualToString:a3])
  {
    return @"com.apple.proactive.responses";
  }

  else
  {
    return @"com.apple.proactive.fia.phone.en";
  }
}

@end