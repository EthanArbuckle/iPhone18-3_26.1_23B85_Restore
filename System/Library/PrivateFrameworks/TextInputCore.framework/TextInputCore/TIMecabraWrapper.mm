@interface TIMecabraWrapper
- (TIMecabraWrapper)initWithInputMethodType:(int)a3 learningDictionaryDirectoryURL:(__CFURL *)a4 creationOptions:(unint64_t)a5;
- (TIMecabraWrapper)initWithInputMethodType:(int)a3 learningDictionaryDirectoryURL:(id)a4 creationOptionsDictionary:(id)a5;
- (void)dealloc;
@end

@implementation TIMecabraWrapper

- (void)dealloc
{
  if (self->_mecabraRef)
  {
    v3 = mecabraCreationQueue();
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __27__TIMecabraWrapper_dealloc__block_invoke;
    v8 = &unk_278733308;
    v9 = self;
    TIDispatchSync();
  }

  v4.receiver = self;
  v4.super_class = TIMecabraWrapper;
  [(TIMecabraWrapper *)&v4 dealloc];
}

- (TIMecabraWrapper)initWithInputMethodType:(int)a3 learningDictionaryDirectoryURL:(id)a4 creationOptionsDictionary:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = TIMecabraWrapper;
  v10 = [(TIMecabraWrapper *)&v20 init];
  if (!v10)
  {
    goto LABEL_4;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11 = mecabraCreationQueue();
  v14 = v9;
  v15 = v8;
  TIDispatchSync();

  v12 = v17[3];
  if (v12)
  {
    v10->_inputMethodType = a3;
    v10->_mecabraRef = v12;

    _Block_object_dispose(&v16, 8);
LABEL_4:

    return v10;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void __101__TIMecabraWrapper_initWithInputMethodType_learningDictionaryDirectoryURL_creationOptionsDictionary___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 56)];
  [v4 setObject:v2 forKeyedSubscript:*MEMORY[0x277D82A60]];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277D82A50]];
  }

  *(*(*(a1 + 48) + 8) + 24) = MecabraCreate();
}

- (TIMecabraWrapper)initWithInputMethodType:(int)a3 learningDictionaryDirectoryURL:(__CFURL *)a4 creationOptions:(unint64_t)a5
{
  v14.receiver = self;
  v14.super_class = TIMecabraWrapper;
  v6 = [(TIMecabraWrapper *)&v14 init];
  if (!v6)
  {
    return v6;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = mecabraCreationQueue();
  TIDispatchSync();

  v8 = v11[3];
  if (v8)
  {
    v6->_inputMethodType = a3;
    v6->_mecabraRef = v8;
    _Block_object_dispose(&v10, 8);
    return v6;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t __91__TIMecabraWrapper_initWithInputMethodType_learningDictionaryDirectoryURL_creationOptions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  result = MecabraCreateWithOptions();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end