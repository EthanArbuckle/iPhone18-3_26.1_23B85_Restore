@interface RMIProgramDelegate
- (BOOL)parseGlobalOptions:(id)options;
@end

@implementation RMIProgramDelegate

- (BOOL)parseGlobalOptions:(id)options
{
  dictionaryWithOptionsAndValues = [options dictionaryWithOptionsAndValues];
  [CLIProgram handleFormatOptionInDictionary:dictionaryWithOptionsAndValues];

  return 1;
}

@end