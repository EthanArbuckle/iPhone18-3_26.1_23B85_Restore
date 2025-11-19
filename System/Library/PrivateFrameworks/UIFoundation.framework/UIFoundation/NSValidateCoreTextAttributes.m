@interface NSValidateCoreTextAttributes
@end

@implementation NSValidateCoreTextAttributes

CFSetRef ____NSValidateCoreTextAttributes_block_invoke()
{
  values[4] = *MEMORY[0x1E69E9840];
  values[0] = @"NSExpansion";
  values[1] = @"NSObliqueness";
  values[2] = @"NSSuperScript";
  values[3] = @"CTVerticalForms";
  v0 = MEMORY[0x1E695E530];
  __NSValidateCoreTextAttributes_disallowedKeysForMeasurement = CFSetCreate(0, values, 4, MEMORY[0x1E695E530]);
  v2[0] = NSMarkedClauseSegmentAttributeName;
  v2[1] = @"NSTextAlternatives";
  v2[2] = @"NSTextAlternativesDisplayStyle";
  v2[3] = @"NSSpellingState";
  v2[4] = NSTemporaryTextCorrectionAttributeName;
  v2[5] = @"NSTextEffect";
  result = CFSetCreate(0, v2, 6, v0);
  __NSValidateCoreTextAttributes_disallowedKeysForDrawing = result;
  return result;
}

@end