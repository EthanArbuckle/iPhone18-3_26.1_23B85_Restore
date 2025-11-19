@interface TIKeyEventMap
- (BOOL)isEqual:(id)a3;
- (TIKeyEventMap)initWithCoder:(id)a3;
- (unint64_t)hash;
@end

@implementation TIKeyEventMap

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = objc_opt_class();

  return [(TIKeyEventMap *)self isMemberOfClass:v4];
}

- (TIKeyEventMap)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyEventMap;
  return [(TIKeyEventMap *)&v4 init];
}

void __42__TIKeyEventMap_zh_punctuationMap_zh_Hant__block_invoke()
{
  v0 = punctuationMap_zh_Hant___punctuationMap;
  punctuationMap_zh_Hant___punctuationMap = &unk_1EF7CF5C8;
}

void __42__TIKeyEventMap_zh_punctuationMap_zh_Hans__block_invoke()
{
  v0 = punctuationMap_zh_Hans___punctuationMap;
  punctuationMap_zh_Hans___punctuationMap = &unk_1EF7CF5A0;
}

uint64_t __46__TIKeyEventMap_zh_Hans_Pinyin_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__TIKeyEventMap_zh_Hant_Pinyin_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_194 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__TIKeyEventMap_zh_Hant_Zhuyin_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_200 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __61__TIKeyEventMap_zh_Hant_Zhuyin_LiveConversion_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_209 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __66__TIKeyEventMap_zh_Hant_Zhuyin_LiveConversion_candidateNumberKey___block_invoke()
{
  v0 = candidateNumberKey____numberKeys;
  candidateNumberKey____numberKeys = &unk_1EF7CB308;
}

void __41__TIKeyEventMap_zh_Stroke_wubiFromASCII___block_invoke()
{
  v0 = wubiFromASCII__asciiToWubiMap;
  wubiFromASCII__asciiToWubiMap = &unk_1EF7CF5F0;
}

uint64_t __46__TIKeyEventMap_zh_Hans_Stroke_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_299 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__TIKeyEventMap_zh_Hant_Stroke_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_304 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__TIKeyEventMap_zh_Hant_Cangjie_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_310 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__TIKeyEventMap_zh_Hans_Wubixing_sharedInstance__block_invoke()
{
  objc_opt_class();
  sharedInstance___keyEventMap_316 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __33__TIKeyEventMap_ja_optionMap_JIS__block_invoke()
{
  v0 = optionMap_JIS_optionMap;
  optionMap_JIS_optionMap = &unk_1EF7CF640;
}

void __38__TIKeyEventMap_ja_shiftOptionMap_JIS__block_invoke()
{
  v0 = shiftOptionMap_JIS_optionMap;
  shiftOptionMap_JIS_optionMap = &unk_1EF7CF618;
}

@end