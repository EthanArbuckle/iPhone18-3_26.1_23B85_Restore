@interface NSMutableString
- (void)tsu_appendSeparator:(id)separator format:(id)format;
- (void)tsu_indentBy:(unint64_t)by;
@end

@implementation NSMutableString

- (void)tsu_appendSeparator:(id)separator format:(id)format
{
  if ([(NSMutableString *)self length])
  {
    [(NSMutableString *)self appendString:separator];
  }

  [(NSMutableString *)self appendString:[NSString tsu_stringWithFormat:format arguments:&v7]];
}

- (void)tsu_indentBy:(unint64_t)by
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < by)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{by, objc_msgSend(v7, "length") - by}];
  [(NSMutableString *)self insertString:v7 atIndex:0];
  v6 = [NSString stringWithFormat:@"\n%@", v7];
  [(NSMutableString *)self replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:0, [(NSMutableString *)self length]];
}

@end