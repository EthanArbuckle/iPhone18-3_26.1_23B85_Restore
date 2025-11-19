@interface NSMutableString
- (void)tsu_appendSeparator:(id)a3 format:(id)a4;
- (void)tsu_indentBy:(unint64_t)a3;
@end

@implementation NSMutableString

- (void)tsu_appendSeparator:(id)a3 format:(id)a4
{
  if ([(NSMutableString *)self length])
  {
    [(NSMutableString *)self appendString:a3];
  }

  [(NSMutableString *)self appendString:[NSString tsu_stringWithFormat:a4 arguments:&v7]];
}

- (void)tsu_indentBy:(unint64_t)a3
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < a3)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{a3, objc_msgSend(v7, "length") - a3}];
  [(NSMutableString *)self insertString:v7 atIndex:0];
  v6 = [NSString stringWithFormat:@"\n%@", v7];
  [(NSMutableString *)self replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:0, [(NSMutableString *)self length]];
}

@end