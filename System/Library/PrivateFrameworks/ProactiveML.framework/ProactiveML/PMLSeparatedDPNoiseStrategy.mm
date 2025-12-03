@interface PMLSeparatedDPNoiseStrategy
+ (id)getPFLIdentifier:(id)identifier;
- (BOOL)scaleAndAddNoiseToDenseVector:(id)vector usingNorm:(BOOL)norm scaleFactor:(float *)factor;
- (PMLSeparatedDPNoiseStrategy)initWithPFLIdentifier:(const char *)identifier;
- (PMLSeparatedDPNoiseStrategy)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
@end

@implementation PMLSeparatedDPNoiseStrategy

- (PMLSeparatedDPNoiseStrategy)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  contextCopy = context;
  v8 = [contextCopy objectForKeyedSubscript:@"PFL_ID"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLSeparatedDPNoiseStrategy.m" lineNumber:85 description:{@"Can't instantiate %@. Missing %@ dependency.", v14, @"PFL_ID"}];
  }

  v9 = [contextCopy objectForKeyedSubscript:@"PFL_ID"];
  v10 = -[PMLSeparatedDPNoiseStrategy initWithPFLIdentifier:](self, "initWithPFLIdentifier:", [v9 UTF8String]);

  return v10;
}

- (BOOL)scaleAndAddNoiseToDenseVector:(id)vector usingNorm:(BOOL)norm scaleFactor:(float *)factor
{
  vectorCopy = vector;
  mutablePtr = [vectorCopy mutablePtr];
  v9 = [vectorCopy count];
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
    v12 = v11(mutablePtr, v9, pflIdentifier);
    if (v12)
    {
      *factor = 1.0;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_PFLPrivatize(float *, size_t, const char *)"}];
    [currentHandler handleFailureInFunction:v16 file:@"PMLSeparatedDPNoiseStrategy.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (PMLSeparatedDPNoiseStrategy)initWithPFLIdentifier:(const char *)identifier
{
  v5.receiver = self;
  v5.super_class = PMLSeparatedDPNoiseStrategy;
  result = [(PMLSeparatedDPNoiseStrategy *)&v5 init];
  if (result)
  {
    result->_pflIdentifier = identifier;
  }

  return result;
}

+ (id)getPFLIdentifier:(id)identifier
{
  if ([@"QuickResponsesClassification" isEqualToString:identifier])
  {
    return @"com.apple.proactive.responses";
  }

  else
  {
    return @"com.apple.proactive.fia.phone.en";
  }
}

@end