@interface NSCharacterSet
@end

@implementation NSCharacterSet

void __62__NSCharacterSet_CRCharacterSet___crUnknownScriptCharacterSet__block_invoke()
{
  v4 = [MEMORY[0x1E696AD60] string];
  v0 = unicodeToNSString(57345);
  [v4 appendString:v0];

  v1 = unicodeToNSString(57346);
  [v4 appendString:v1];

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v4];
  v3 = qword_1ED95FF10;
  qword_1ED95FF10 = v2;
}

void __78__NSCharacterSet_CRCharacterSet___crJapaneseKoreanAsUnknownScriptCharacterSet__block_invoke()
{
  v3 = [MEMORY[0x1E696AD60] string];
  v0 = unicodeToNSString(57346);
  [v3 appendString:v0];

  v1 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v3];
  v2 = qword_1ED95FF20;
  qword_1ED95FF20 = v1;
}

void __61__NSCharacterSet_CRCharacterSet___crBiDiMirroredCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"()<>{}[]«»"];
  v1 = qword_1ED95FF30;
  qword_1ED95FF30 = v0;
}

void __60__NSCharacterSet_CRCharacterSet___crBasicArabicCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [&unk_1F2BF88A8 componentsJoinedByString:&stru_1F2BB4348];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = qword_1ED95FF40;
  qword_1ED95FF40 = v1;
}

void __60__NSCharacterSet_CRCharacterSet___crArabicDigitCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"٠١٢٣٤٥٦٧٨٩"];
  v1 = qword_1ED95FF50;
  qword_1ED95FF50 = v0;
}

void __64__NSCharacterSet_CRCharacterSet___crArabicDiacriticCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [&unk_1F2BF88C0 componentsJoinedByString:&stru_1F2BB4348];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = qword_1ED95FF60;
  qword_1ED95FF60 = v1;
}

void __71__NSCharacterSet_CRCharacterSet___crArabicTanweenDiacriticCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [&unk_1F2BF88D8 componentsJoinedByString:&stru_1F2BB4348];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = qword_1ED95FF70;
  qword_1ED95FF70 = v1;
}

void __73__NSCharacterSet_CRCharacterSet___crArabicCombiningDiacriticCharacterSet__block_invoke()
{
  v0 = MEMORY[0x1E696AB08];
  v3 = [&unk_1F2BF88F0 componentsJoinedByString:&stru_1F2BB4348];
  v1 = [v0 characterSetWithCharactersInString:v3];
  v2 = qword_1ED95FF80;
  qword_1ED95FF80 = v1;
}

void __61__NSCharacterSet_CRLineWrappingUtilities___crBOSCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"¿'¡§"];
  v1 = _MergedGlobals_24;
  _MergedGlobals_24 = v0;
}

void __61__NSCharacterSet_CRLineWrappingUtilities___crEOSCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".．。｡?？!！:：；"];;
  v1 = qword_1ED960158;
  qword_1ED960158 = v0;
}

void __76__NSCharacterSet_CRLineWrappingUtilities___crClosingPunctuationCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"»）】]"]);
  v1 = qword_1ED960168;
  qword_1ED960168 = v0;
}

@end