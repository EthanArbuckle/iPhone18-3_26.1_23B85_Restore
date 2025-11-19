@interface UIDefinitionDictionary
@end

@implementation UIDefinitionDictionary

void __68___UIDefinitionDictionary__normalizedLanguageStringForLanguageCode___block_invoke()
{
  if (!_MergedGlobals_1056)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [v0 objectForKey:@"AppleLanguages"];
    v2 = [v1 objectAtIndex:0];

    [v2 UTF8String];
    _MergedGlobals_1056 = uldn_openForContext();
  }
}

@end