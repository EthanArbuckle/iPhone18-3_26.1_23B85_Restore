@interface RMIProgramDelegate
- (BOOL)parseGlobalOptions:(id)a3;
@end

@implementation RMIProgramDelegate

- (BOOL)parseGlobalOptions:(id)a3
{
  v3 = [a3 dictionaryWithOptionsAndValues];
  [CLIProgram handleFormatOptionInDictionary:v3];

  return 1;
}

@end